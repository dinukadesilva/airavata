#
# Autogenerated by Thrift Compiler (0.10.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'application_io_models_types'
require 'airavata_commons_types'


# Application Interface Description
# 
# applicationModules:
#   Associate all application modules with versions which interface is applicable to.
# 
# applicationInputs:
#   Inputs to be passed to the application
# 
# applicationOutputs:
#   Outputs generated from the application
# 
class ApplicationInterfaceDescription
  include ::Thrift::Struct, ::Thrift::Struct_Union
  APPLICATIONINTERFACEID = 1
  APPLICATIONNAME = 2
  APPLICATIONDESCRIPTION = 3
  APPLICATIONMODULES = 4
  APPLICATIONINPUTS = 5
  APPLICATIONOUTPUTS = 6
  ARCHIVEWORKINGDIRECTORY = 7
  HASOPTIONALFILEINPUTS = 8

  FIELDS = {
    APPLICATIONINTERFACEID => {:type => ::Thrift::Types::STRING, :name => 'applicationInterfaceId', :default => %q"DO_NOT_SET_AT_CLIENTS"},
    APPLICATIONNAME => {:type => ::Thrift::Types::STRING, :name => 'applicationName'},
    APPLICATIONDESCRIPTION => {:type => ::Thrift::Types::STRING, :name => 'applicationDescription', :optional => true},
    APPLICATIONMODULES => {:type => ::Thrift::Types::LIST, :name => 'applicationModules', :element => {:type => ::Thrift::Types::STRING}, :optional => true},
    APPLICATIONINPUTS => {:type => ::Thrift::Types::LIST, :name => 'applicationInputs', :element => {:type => ::Thrift::Types::STRUCT, :class => ::InputDataObjectType}, :optional => true},
    APPLICATIONOUTPUTS => {:type => ::Thrift::Types::LIST, :name => 'applicationOutputs', :element => {:type => ::Thrift::Types::STRUCT, :class => ::OutputDataObjectType}, :optional => true},
    ARCHIVEWORKINGDIRECTORY => {:type => ::Thrift::Types::BOOL, :name => 'archiveWorkingDirectory', :default => false, :optional => true},
    HASOPTIONALFILEINPUTS => {:type => ::Thrift::Types::BOOL, :name => 'hasOptionalFileInputs', :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field applicationInterfaceId is unset!') unless @applicationInterfaceId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field applicationName is unset!') unless @applicationName
  end

  ::Thrift::Struct.generate_accessors self
end

