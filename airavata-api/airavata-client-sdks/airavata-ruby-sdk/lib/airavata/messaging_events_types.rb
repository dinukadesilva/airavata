#
# Autogenerated by Thrift Compiler (0.10.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'status_models_types'
require 'application_io_models_types'
require 'airavata_commons_types'


module MessageLevel
  INFO = 0
  DEBUG = 1
  ERROR = 2
  ACK = 3
  VALUE_MAP = {0 => "INFO", 1 => "DEBUG", 2 => "ERROR", 3 => "ACK"}
  VALID_VALUES = Set.new([INFO, DEBUG, ERROR, ACK]).freeze
end

module MessageType
  EXPERIMENT = 0
  EXPERIMENT_CANCEL = 1
  TASK = 2
  PROCESS = 3
  JOB = 4
  LAUNCHPROCESS = 5
  TERMINATEPROCESS = 6
  PROCESSOUTPUT = 7
  DB_EVENT = 8
  VALUE_MAP = {0 => "EXPERIMENT", 1 => "EXPERIMENT_CANCEL", 2 => "TASK", 3 => "PROCESS", 4 => "JOB", 5 => "LAUNCHPROCESS", 6 => "TERMINATEPROCESS", 7 => "PROCESSOUTPUT", 8 => "DB_EVENT"}
  VALID_VALUES = Set.new([EXPERIMENT, EXPERIMENT_CANCEL, TASK, PROCESS, JOB, LAUNCHPROCESS, TERMINATEPROCESS, PROCESSOUTPUT, DB_EVENT]).freeze
end

class ExperimentStatusChangeEvent
  include ::Thrift::Struct, ::Thrift::Struct_Union
  STATE = 1
  EXPERIMENTID = 2
  GATEWAYID = 3

  FIELDS = {
    STATE => {:type => ::Thrift::Types::I32, :name => 'state', :enum_class => ::ExperimentState},
    EXPERIMENTID => {:type => ::Thrift::Types::STRING, :name => 'experimentId'},
    GATEWAYID => {:type => ::Thrift::Types::STRING, :name => 'gatewayId'}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field state is unset!') unless @state
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field experimentId is unset!') unless @experimentId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field gatewayId is unset!') unless @gatewayId
    unless @state.nil? || ::ExperimentState::VALID_VALUES.include?(@state)
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field state!')
    end
  end

  ::Thrift::Struct.generate_accessors self
end

class ProcessIdentifier
  include ::Thrift::Struct, ::Thrift::Struct_Union
  PROCESSID = 1
  EXPERIMENTID = 2
  GATEWAYID = 3

  FIELDS = {
    PROCESSID => {:type => ::Thrift::Types::STRING, :name => 'processId'},
    EXPERIMENTID => {:type => ::Thrift::Types::STRING, :name => 'experimentId'},
    GATEWAYID => {:type => ::Thrift::Types::STRING, :name => 'gatewayId'}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field processId is unset!') unless @processId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field experimentId is unset!') unless @experimentId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field gatewayId is unset!') unless @gatewayId
  end

  ::Thrift::Struct.generate_accessors self
end

class TaskIdentifier
  include ::Thrift::Struct, ::Thrift::Struct_Union
  TASKID = 1
  PROCESSID = 2
  EXPERIMENTID = 3
  GATEWAYID = 4

  FIELDS = {
    TASKID => {:type => ::Thrift::Types::STRING, :name => 'taskId'},
    PROCESSID => {:type => ::Thrift::Types::STRING, :name => 'processId'},
    EXPERIMENTID => {:type => ::Thrift::Types::STRING, :name => 'experimentId'},
    GATEWAYID => {:type => ::Thrift::Types::STRING, :name => 'gatewayId'}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field taskId is unset!') unless @taskId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field processId is unset!') unless @processId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field experimentId is unset!') unless @experimentId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field gatewayId is unset!') unless @gatewayId
  end

  ::Thrift::Struct.generate_accessors self
end

class TaskStatusChangeEvent
  include ::Thrift::Struct, ::Thrift::Struct_Union
  STATE = 1
  TASKIDENTITY = 2

  FIELDS = {
    STATE => {:type => ::Thrift::Types::I32, :name => 'state', :enum_class => ::TaskState},
    TASKIDENTITY => {:type => ::Thrift::Types::STRUCT, :name => 'taskIdentity', :class => ::TaskIdentifier}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field state is unset!') unless @state
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field taskIdentity is unset!') unless @taskIdentity
    unless @state.nil? || ::TaskState::VALID_VALUES.include?(@state)
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field state!')
    end
  end

  ::Thrift::Struct.generate_accessors self
end

class TaskStatusChangeRequestEvent
  include ::Thrift::Struct, ::Thrift::Struct_Union
  STATE = 1
  TASKIDENTITY = 2

  FIELDS = {
    STATE => {:type => ::Thrift::Types::I32, :name => 'state', :enum_class => ::TaskState},
    TASKIDENTITY => {:type => ::Thrift::Types::STRUCT, :name => 'taskIdentity', :class => ::TaskIdentifier}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field state is unset!') unless @state
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field taskIdentity is unset!') unless @taskIdentity
    unless @state.nil? || ::TaskState::VALID_VALUES.include?(@state)
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field state!')
    end
  end

  ::Thrift::Struct.generate_accessors self
end

class ProcessStatusChangeEvent
  include ::Thrift::Struct, ::Thrift::Struct_Union
  STATE = 1
  PROCESSIDENTITY = 2

  FIELDS = {
    STATE => {:type => ::Thrift::Types::I32, :name => 'state', :enum_class => ::ProcessState},
    PROCESSIDENTITY => {:type => ::Thrift::Types::STRUCT, :name => 'processIdentity', :class => ::ProcessIdentifier}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field state is unset!') unless @state
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field processIdentity is unset!') unless @processIdentity
    unless @state.nil? || ::ProcessState::VALID_VALUES.include?(@state)
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field state!')
    end
  end

  ::Thrift::Struct.generate_accessors self
end

class ProcessStatusChangeRequestEvent
  include ::Thrift::Struct, ::Thrift::Struct_Union
  STATE = 1
  PROCESSIDENTITY = 2

  FIELDS = {
    STATE => {:type => ::Thrift::Types::I32, :name => 'state', :enum_class => ::ProcessState},
    PROCESSIDENTITY => {:type => ::Thrift::Types::STRUCT, :name => 'processIdentity', :class => ::ProcessIdentifier}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field state is unset!') unless @state
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field processIdentity is unset!') unless @processIdentity
    unless @state.nil? || ::ProcessState::VALID_VALUES.include?(@state)
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field state!')
    end
  end

  ::Thrift::Struct.generate_accessors self
end

class TaskOutputChangeEvent
  include ::Thrift::Struct, ::Thrift::Struct_Union
  OUTPUT = 1
  TASKIDENTITY = 2

  FIELDS = {
    OUTPUT => {:type => ::Thrift::Types::LIST, :name => 'output', :element => {:type => ::Thrift::Types::STRUCT, :class => ::OutputDataObjectType}},
    TASKIDENTITY => {:type => ::Thrift::Types::STRUCT, :name => 'taskIdentity', :class => ::TaskIdentifier}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field output is unset!') unless @output
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field taskIdentity is unset!') unless @taskIdentity
  end

  ::Thrift::Struct.generate_accessors self
end

class JobIdentifier
  include ::Thrift::Struct, ::Thrift::Struct_Union
  JOBID = 1
  TASKID = 2
  PROCESSID = 3
  EXPERIMENTID = 4
  GATEWAYID = 5

  FIELDS = {
    JOBID => {:type => ::Thrift::Types::STRING, :name => 'jobId'},
    TASKID => {:type => ::Thrift::Types::STRING, :name => 'taskId'},
    PROCESSID => {:type => ::Thrift::Types::STRING, :name => 'processId'},
    EXPERIMENTID => {:type => ::Thrift::Types::STRING, :name => 'experimentId'},
    GATEWAYID => {:type => ::Thrift::Types::STRING, :name => 'gatewayId'}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field jobId is unset!') unless @jobId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field taskId is unset!') unless @taskId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field processId is unset!') unless @processId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field experimentId is unset!') unless @experimentId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field gatewayId is unset!') unless @gatewayId
  end

  ::Thrift::Struct.generate_accessors self
end

class ExperimentSubmitEvent
  include ::Thrift::Struct, ::Thrift::Struct_Union
  EXPERIMENTID = 1
  GATEWAYID = 2

  FIELDS = {
    EXPERIMENTID => {:type => ::Thrift::Types::STRING, :name => 'experimentId'},
    GATEWAYID => {:type => ::Thrift::Types::STRING, :name => 'gatewayId'}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field experimentId is unset!') unless @experimentId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field gatewayId is unset!') unless @gatewayId
  end

  ::Thrift::Struct.generate_accessors self
end

class ProcessSubmitEvent
  include ::Thrift::Struct, ::Thrift::Struct_Union
  PROCESSID = 1
  GATEWAYID = 2
  EXPERIMENTID = 3
  TOKENID = 4

  FIELDS = {
    PROCESSID => {:type => ::Thrift::Types::STRING, :name => 'processId'},
    GATEWAYID => {:type => ::Thrift::Types::STRING, :name => 'gatewayId'},
    EXPERIMENTID => {:type => ::Thrift::Types::STRING, :name => 'experimentId'},
    TOKENID => {:type => ::Thrift::Types::STRING, :name => 'tokenId'}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field processId is unset!') unless @processId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field gatewayId is unset!') unless @gatewayId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field experimentId is unset!') unless @experimentId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field tokenId is unset!') unless @tokenId
  end

  ::Thrift::Struct.generate_accessors self
end

class ProcessTerminateEvent
  include ::Thrift::Struct, ::Thrift::Struct_Union
  PROCESSID = 1
  GATEWAYID = 2
  TOKENID = 3

  FIELDS = {
    PROCESSID => {:type => ::Thrift::Types::STRING, :name => 'processId'},
    GATEWAYID => {:type => ::Thrift::Types::STRING, :name => 'gatewayId'},
    TOKENID => {:type => ::Thrift::Types::STRING, :name => 'tokenId'}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field processId is unset!') unless @processId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field gatewayId is unset!') unless @gatewayId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field tokenId is unset!') unless @tokenId
  end

  ::Thrift::Struct.generate_accessors self
end

class JobStatusChangeEvent
  include ::Thrift::Struct, ::Thrift::Struct_Union
  STATE = 1
  JOBIDENTITY = 2

  FIELDS = {
    STATE => {:type => ::Thrift::Types::I32, :name => 'state', :enum_class => ::JobState},
    JOBIDENTITY => {:type => ::Thrift::Types::STRUCT, :name => 'jobIdentity', :class => ::JobIdentifier}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field state is unset!') unless @state
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field jobIdentity is unset!') unless @jobIdentity
    unless @state.nil? || ::JobState::VALID_VALUES.include?(@state)
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field state!')
    end
  end

  ::Thrift::Struct.generate_accessors self
end

class JobStatusChangeRequestEvent
  include ::Thrift::Struct, ::Thrift::Struct_Union
  STATE = 1
  JOBIDENTITY = 2

  FIELDS = {
    STATE => {:type => ::Thrift::Types::I32, :name => 'state', :enum_class => ::JobState},
    JOBIDENTITY => {:type => ::Thrift::Types::STRUCT, :name => 'jobIdentity', :class => ::JobIdentifier}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field state is unset!') unless @state
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field jobIdentity is unset!') unless @jobIdentity
    unless @state.nil? || ::JobState::VALID_VALUES.include?(@state)
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field state!')
    end
  end

  ::Thrift::Struct.generate_accessors self
end

class Message
  include ::Thrift::Struct, ::Thrift::Struct_Union
  EVENT = 1
  MESSAGEID = 2
  MESSAGETYPE = 3
  UPDATEDTIME = 4
  MESSAGELEVEL = 5

  FIELDS = {
    EVENT => {:type => ::Thrift::Types::STRING, :name => 'event', :binary => true},
    MESSAGEID => {:type => ::Thrift::Types::STRING, :name => 'messageId', :default => %q"DO_NOT_SET_AT_CLIENTS"},
    MESSAGETYPE => {:type => ::Thrift::Types::I32, :name => 'messageType', :enum_class => ::MessageType},
    UPDATEDTIME => {:type => ::Thrift::Types::I64, :name => 'updatedTime', :optional => true},
    MESSAGELEVEL => {:type => ::Thrift::Types::I32, :name => 'messageLevel', :optional => true, :enum_class => ::MessageLevel}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field event is unset!') unless @event
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field messageId is unset!') unless @messageId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field messageType is unset!') unless @messageType
    unless @messageType.nil? || ::MessageType::VALID_VALUES.include?(@messageType)
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field messageType!')
    end
    unless @messageLevel.nil? || ::MessageLevel::VALID_VALUES.include?(@messageLevel)
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field messageLevel!')
    end
  end

  ::Thrift::Struct.generate_accessors self
end

