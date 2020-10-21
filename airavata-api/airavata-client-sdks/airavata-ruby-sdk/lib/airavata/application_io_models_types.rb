#
# Autogenerated by Thrift Compiler (0.10.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'compute_resource_model_types'


module DataType
  STRING = 0
  INTEGER = 1
  FLOAT = 2
  URI = 3
  URI_COLLECTION = 4
  STDOUT = 5
  STDERR = 6
  VALUE_MAP = {0 => "STRING", 1 => "INTEGER", 2 => "FLOAT", 3 => "URI", 4 => "URI_COLLECTION", 5 => "STDOUT", 6 => "STDERR"}
  VALID_VALUES = Set.new([STRING, INTEGER, FLOAT, URI, URI_COLLECTION, STDOUT, STDERR]).freeze
end

# Application Inputs. The paramters describe how inputs are passed to the application.
# 
# name:
#   Name of the parameter.
# 
# value:
#   Value of the parameter. A default value could be set during registration.
# 
# type:
#   Data type of the parameter
# 
# applicationArguement:
#   The argument flag sent to the application. Such as -p pressure.
# 
# standardInput:
#   When this value is set, the parameter is sent as standard input rather than a parameter.
#   Typically this is passed using redirection operator ">".
# 
# userFriendlyDescription:
#   Description to be displayed at the user interface.
# 
# metaData:
#   Any metadat. This is typically ignore by Airavata and is used by gateways for application configuration.
# 
# overrideFilename:
#   Rename input file to given value when staging to compute resource.
class InputDataObjectType
  include ::Thrift::Struct, ::Thrift::Struct_Union
  NAME = 1
  VALUE = 2
  TYPE = 3
  APPLICATIONARGUMENT = 4
  STANDARDINPUT = 5
  USERFRIENDLYDESCRIPTION = 6
  METADATA = 7
  INPUTORDER = 8
  ISREQUIRED = 9
  REQUIREDTOADDEDTOCOMMANDLINE = 10
  DATASTAGED = 11
  STORAGERESOURCEID = 12
  ISREADONLY = 13
  OVERRIDEFILENAME = 14

  FIELDS = {
    NAME => {:type => ::Thrift::Types::STRING, :name => 'name'},
    VALUE => {:type => ::Thrift::Types::STRING, :name => 'value', :optional => true},
    TYPE => {:type => ::Thrift::Types::I32, :name => 'type', :optional => true, :enum_class => ::DataType},
    APPLICATIONARGUMENT => {:type => ::Thrift::Types::STRING, :name => 'applicationArgument', :optional => true},
    STANDARDINPUT => {:type => ::Thrift::Types::BOOL, :name => 'standardInput', :optional => true},
    USERFRIENDLYDESCRIPTION => {:type => ::Thrift::Types::STRING, :name => 'userFriendlyDescription', :optional => true},
    METADATA => {:type => ::Thrift::Types::STRING, :name => 'metaData', :optional => true},
    INPUTORDER => {:type => ::Thrift::Types::I32, :name => 'inputOrder', :optional => true},
    ISREQUIRED => {:type => ::Thrift::Types::BOOL, :name => 'isRequired', :optional => true},
    REQUIREDTOADDEDTOCOMMANDLINE => {:type => ::Thrift::Types::BOOL, :name => 'requiredToAddedToCommandLine', :optional => true},
    DATASTAGED => {:type => ::Thrift::Types::BOOL, :name => 'dataStaged', :optional => true},
    STORAGERESOURCEID => {:type => ::Thrift::Types::STRING, :name => 'storageResourceId', :optional => true},
    ISREADONLY => {:type => ::Thrift::Types::BOOL, :name => 'isReadOnly', :optional => true},
    OVERRIDEFILENAME => {:type => ::Thrift::Types::STRING, :name => 'overrideFilename', :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field name is unset!') unless @name
    unless @type.nil? || ::DataType::VALID_VALUES.include?(@type)
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field type!')
    end
  end

  ::Thrift::Struct.generate_accessors self
end

# Application Outputs. The paramters describe how outputs generated by the application.
# 
# name:
#   Name of the parameter.
# 
# value:
#   Value of the parameter.
# 
# type:
#   Data type of the parameter
# 
# applicationArguement:
#   The argument flag sent to the application. Such as -p pressure.
# 
# standardInput:
#   When this value is set, the parameter is sent as standard input rather than a parameter.
#   Typically this is passed using redirection operator ">".
# 
# userFriendlyDescription:
#   Description to be displayed at the user interface.
# 
# metaData:
#   Any metadat. This is typically ignore by Airavata and is used by gateways for application configuration.
# 
class OutputDataObjectType
  include ::Thrift::Struct, ::Thrift::Struct_Union
  NAME = 1
  VALUE = 2
  TYPE = 3
  APPLICATIONARGUMENT = 4
  ISREQUIRED = 5
  REQUIREDTOADDEDTOCOMMANDLINE = 6
  DATAMOVEMENT = 7
  LOCATION = 8
  SEARCHQUERY = 9
  OUTPUTSTREAMING = 10
  STORAGERESOURCEID = 11
  METADATA = 12

  FIELDS = {
    NAME => {:type => ::Thrift::Types::STRING, :name => 'name'},
    VALUE => {:type => ::Thrift::Types::STRING, :name => 'value', :optional => true},
    TYPE => {:type => ::Thrift::Types::I32, :name => 'type', :optional => true, :enum_class => ::DataType},
    APPLICATIONARGUMENT => {:type => ::Thrift::Types::STRING, :name => 'applicationArgument', :optional => true},
    ISREQUIRED => {:type => ::Thrift::Types::BOOL, :name => 'isRequired', :optional => true},
    REQUIREDTOADDEDTOCOMMANDLINE => {:type => ::Thrift::Types::BOOL, :name => 'requiredToAddedToCommandLine', :optional => true},
    DATAMOVEMENT => {:type => ::Thrift::Types::BOOL, :name => 'dataMovement', :optional => true},
    LOCATION => {:type => ::Thrift::Types::STRING, :name => 'location', :optional => true},
    SEARCHQUERY => {:type => ::Thrift::Types::STRING, :name => 'searchQuery', :optional => true},
    OUTPUTSTREAMING => {:type => ::Thrift::Types::BOOL, :name => 'outputStreaming', :optional => true},
    STORAGERESOURCEID => {:type => ::Thrift::Types::STRING, :name => 'storageResourceId', :optional => true},
    METADATA => {:type => ::Thrift::Types::STRING, :name => 'metaData', :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field name is unset!') unless @name
    unless @type.nil? || ::DataType::VALID_VALUES.include?(@type)
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field type!')
    end
  end

  ::Thrift::Struct.generate_accessors self
end

