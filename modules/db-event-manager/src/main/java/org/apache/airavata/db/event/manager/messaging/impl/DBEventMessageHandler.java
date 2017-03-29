package org.apache.airavata.db.event.manager.messaging.impl;

import org.apache.airavata.common.utils.AiravataUtils;
import org.apache.airavata.common.utils.ThriftUtils;
import org.apache.airavata.db.event.manager.messaging.DBEventManagerException;
import org.apache.airavata.db.event.manager.messaging.DBEventManagerMessagingFactory;
import org.apache.airavata.db.event.manager.utils.DbEventManagerZkUtils;
import org.apache.airavata.messaging.core.MessageContext;
import org.apache.airavata.messaging.core.MessageHandler;
import org.apache.airavata.messaging.core.Publisher;
import org.apache.airavata.model.dbevent.DBEventMessage;
import org.apache.airavata.model.dbevent.DBEventMessageContext;
import org.apache.airavata.model.dbevent.DBEventType;
import org.apache.airavata.model.messaging.event.MessageType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/**
 * Created by Ajinkya on 3/14/17.
 */
public class DBEventMessageHandler implements MessageHandler {

    private final static Logger log = LoggerFactory.getLogger(DBEventMessageHandler.class);

    @Override
    public void onMessage(MessageContext messageContext) {

        log.info("Incoming DB event message. Message Id : " + messageContext.getMessageId());

        try {

            byte[] bytes = ThriftUtils.serializeThriftObject(messageContext.getEvent());

            DBEventMessage dbEventMessage = new DBEventMessage();
            ThriftUtils.createThriftFromBytes(bytes, dbEventMessage);

            DBEventMessageContext dBEventMessageContext = dbEventMessage.getMessageContext();

            switch (dbEventMessage.getDbEventType()){

                case SUBSCRIBER:
                    log.info("Registering " + dBEventMessageContext.getSubscriber().getSubscriberService() + " subscriber for " + dbEventMessage.getPublisherService());
                    DbEventManagerZkUtils.createDBEventMgrZkNode(DbEventManagerZkUtils.getCuratorClient(), dbEventMessage.getPublisherService(), dBEventMessageContext.getSubscriber().getSubscriberService());

                case PUBLISHER:
                    List<String> subscribers = DbEventManagerZkUtils.getSubscribersForPublisher(DbEventManagerZkUtils.getCuratorClient(), dbEventMessage.getPublisherService());
                    if(subscribers.isEmpty()){
                        log.error("No Subscribers registered for the service");
                        throw new DBEventManagerException("No Subscribers registered for the service");
                    }
                    String routingKey = getRoutingKeyFromList(subscribers);
                    log.info("Publishing " + dbEventMessage.getPublisherService() + " db event to " + subscribers.toString());
                    MessageContext messageCtx = new MessageContext(dBEventMessageContext.getPublisher().getPublisherContext(), MessageType.DB_EVENT, "", "");
                    messageCtx.setUpdatedTime(AiravataUtils.getCurrentTimestamp());
                    DBEventManagerMessagingFactory.getDBEventPublisher().publish(messageCtx, routingKey);

            }

        } catch (Exception e) {
            log.error("Error processing message.", e);
        }
    }

    private String getRoutingKeyFromList(final List<String> subscribers){
        StringBuilder sb = new StringBuilder();
        String separator = ".";
        Collections.sort(subscribers);
        for(String subscriber : subscribers){
            sb.append(subscriber).append(separator);
        }
        return sb.substring(0, sb.length() - 1);
    }
}
