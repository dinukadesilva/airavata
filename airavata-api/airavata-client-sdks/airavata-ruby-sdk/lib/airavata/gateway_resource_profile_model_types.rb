#
# Autogenerated by Thrift Compiler (0.10.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'compute_resource_model_types'
require 'data_movement_models_types'
require 'account_provisioning_model_types'


# Gateway specific preferences for a Computer Resource
# 
# computeResourceId:
#   Corelate the preference to a compute resource.
# 
# overridebyAiravata:
#   If turned true, Airavata will override the preferences of better alternatives exist.
# 
# loginUserName:
#   If turned true, Airavata will override the preferences of better alternatives exist.
# 
# preferredJobSubmissionProtocol:
#   For resources with multiple job submission protocols, the gateway can pick a preferred option.
# 
# preferredDataMovementProtocol:
#   For resources with multiple data movement protocols, the gateway can pick a preferred option.
# 
# preferredBatchQueue:
#  Gateways can choose a defualt batch queue based on average job dimention, reservations or other metrics.
# 
# scratchLocation:
#  Path to the local scratch space on a HPC cluster. Typically used to create working directory for job execution.
# 
# allocationProjectNumber:
#  Typically used on HPC machines to charge computing usage to a account number. For instance, on XSEDE once an
#    allocation is approved, an allocation number is assigned. Before passing this number with job submittions, the
#    account to be used has to be added to the allocation.
# 
# resourceSpecificCredentialStoreToken:
#  Resource specific credential store token. If this token is specified, then it is superceeded by the gateway's
#   default credential store.
# 
class ComputeResourcePreference
  include ::Thrift::Struct, ::Thrift::Struct_Union
  COMPUTERESOURCEID = 1
  OVERRIDEBYAIRAVATA = 2
  LOGINUSERNAME = 3
  PREFERREDJOBSUBMISSIONPROTOCOL = 4
  PREFERREDDATAMOVEMENTPROTOCOL = 5
  PREFERREDBATCHQUEUE = 6
  SCRATCHLOCATION = 7
  ALLOCATIONPROJECTNUMBER = 8
  RESOURCESPECIFICCREDENTIALSTORETOKEN = 9
  USAGEREPORTINGGATEWAYID = 10
  QUALITYOFSERVICE = 11
  RESERVATION = 12
  RESERVATIONSTARTTIME = 13
  RESERVATIONENDTIME = 14
  SSHACCOUNTPROVISIONER = 15
  SSHACCOUNTPROVISIONERCONFIG = 16
  SSHACCOUNTPROVISIONERADDITIONALINFO = 17

  FIELDS = {
    COMPUTERESOURCEID => {:type => ::Thrift::Types::STRING, :name => 'computeResourceId'},
    OVERRIDEBYAIRAVATA => {:type => ::Thrift::Types::BOOL, :name => 'overridebyAiravata', :default => true},
    LOGINUSERNAME => {:type => ::Thrift::Types::STRING, :name => 'loginUserName', :optional => true},
    PREFERREDJOBSUBMISSIONPROTOCOL => {:type => ::Thrift::Types::I32, :name => 'preferredJobSubmissionProtocol', :optional => true, :enum_class => ::JobSubmissionProtocol},
    PREFERREDDATAMOVEMENTPROTOCOL => {:type => ::Thrift::Types::I32, :name => 'preferredDataMovementProtocol', :optional => true, :enum_class => ::DataMovementProtocol},
    PREFERREDBATCHQUEUE => {:type => ::Thrift::Types::STRING, :name => 'preferredBatchQueue', :optional => true},
    SCRATCHLOCATION => {:type => ::Thrift::Types::STRING, :name => 'scratchLocation', :optional => true},
    ALLOCATIONPROJECTNUMBER => {:type => ::Thrift::Types::STRING, :name => 'allocationProjectNumber', :optional => true},
    RESOURCESPECIFICCREDENTIALSTORETOKEN => {:type => ::Thrift::Types::STRING, :name => 'resourceSpecificCredentialStoreToken', :optional => true},
    USAGEREPORTINGGATEWAYID => {:type => ::Thrift::Types::STRING, :name => 'usageReportingGatewayId', :optional => true},
    QUALITYOFSERVICE => {:type => ::Thrift::Types::STRING, :name => 'qualityOfService', :optional => true},
    RESERVATION => {:type => ::Thrift::Types::STRING, :name => 'reservation', :optional => true},
    RESERVATIONSTARTTIME => {:type => ::Thrift::Types::I64, :name => 'reservationStartTime', :optional => true},
    RESERVATIONENDTIME => {:type => ::Thrift::Types::I64, :name => 'reservationEndTime', :optional => true},
    SSHACCOUNTPROVISIONER => {:type => ::Thrift::Types::STRING, :name => 'sshAccountProvisioner', :optional => true},
    SSHACCOUNTPROVISIONERCONFIG => {:type => ::Thrift::Types::MAP, :name => 'sshAccountProvisionerConfig', :key => {:type => ::Thrift::Types::STRING}, :value => {:type => ::Thrift::Types::STRING}, :optional => true},
    SSHACCOUNTPROVISIONERADDITIONALINFO => {:type => ::Thrift::Types::STRING, :name => 'sshAccountProvisionerAdditionalInfo', :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field computeResourceId is unset!') unless @computeResourceId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field overridebyAiravata is unset!') if @overridebyAiravata.nil?
    unless @preferredJobSubmissionProtocol.nil? || ::JobSubmissionProtocol::VALID_VALUES.include?(@preferredJobSubmissionProtocol)
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field preferredJobSubmissionProtocol!')
    end
    unless @preferredDataMovementProtocol.nil? || ::DataMovementProtocol::VALID_VALUES.include?(@preferredDataMovementProtocol)
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field preferredDataMovementProtocol!')
    end
  end

  ::Thrift::Struct.generate_accessors self
end

class StoragePreference
  include ::Thrift::Struct, ::Thrift::Struct_Union
  STORAGERESOURCEID = 1
  LOGINUSERNAME = 2
  FILESYSTEMROOTLOCATION = 3
  RESOURCESPECIFICCREDENTIALSTORETOKEN = 4

  FIELDS = {
    STORAGERESOURCEID => {:type => ::Thrift::Types::STRING, :name => 'storageResourceId'},
    LOGINUSERNAME => {:type => ::Thrift::Types::STRING, :name => 'loginUserName', :optional => true},
    FILESYSTEMROOTLOCATION => {:type => ::Thrift::Types::STRING, :name => 'fileSystemRootLocation', :optional => true},
    RESOURCESPECIFICCREDENTIALSTORETOKEN => {:type => ::Thrift::Types::STRING, :name => 'resourceSpecificCredentialStoreToken', :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field storageResourceId is unset!') unless @storageResourceId
  end

  ::Thrift::Struct.generate_accessors self
end

# Gateway Resource Profile
# 
# gatewayID:
#  Unique identifier for the gateway assigned by Airavata. Corelate this to Airavata Admin API Gateway Registration.
# 
# credentialStoreToken:
#  Gateway's defualt credential store token.
# 
# computeResourcePreferences:
#  List of resource preferences for each of the registered compute resources.
# 
#  identityServerTenant:
# 
#  identityServerPwdCredToken:
# 
class GatewayResourceProfile
  include ::Thrift::Struct, ::Thrift::Struct_Union
  GATEWAYID = 1
  CREDENTIALSTORETOKEN = 2
  COMPUTERESOURCEPREFERENCES = 3
  STORAGEPREFERENCES = 4
  IDENTITYSERVERTENANT = 5
  IDENTITYSERVERPWDCREDTOKEN = 6

  FIELDS = {
    GATEWAYID => {:type => ::Thrift::Types::STRING, :name => 'gatewayID'},
    CREDENTIALSTORETOKEN => {:type => ::Thrift::Types::STRING, :name => 'credentialStoreToken', :optional => true},
    COMPUTERESOURCEPREFERENCES => {:type => ::Thrift::Types::LIST, :name => 'computeResourcePreferences', :element => {:type => ::Thrift::Types::STRUCT, :class => ::ComputeResourcePreference}, :optional => true},
    STORAGEPREFERENCES => {:type => ::Thrift::Types::LIST, :name => 'storagePreferences', :element => {:type => ::Thrift::Types::STRUCT, :class => ::StoragePreference}, :optional => true},
    IDENTITYSERVERTENANT => {:type => ::Thrift::Types::STRING, :name => 'identityServerTenant', :optional => true},
    IDENTITYSERVERPWDCREDTOKEN => {:type => ::Thrift::Types::STRING, :name => 'identityServerPwdCredToken', :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field gatewayID is unset!') unless @gatewayID
  end

  ::Thrift::Struct.generate_accessors self
end

