#
# Autogenerated by Thrift Compiler (0.10.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require_relative 'airavata_commons_types'
require_relative 'parallelism_model_types'


# Key Value pairs to be used to set environments
# 
# name:
#   Name of the environment variable such as PATH, LD_LIBRARY_PATH, NETCDF_HOME.
# 
# value:
#   Value of the environment variable to set
# 
# envPathOrder:
#   The order of the setting of the env variables when there are multiple env variables
class SetEnvPaths
  include ::Thrift::Struct, ::Thrift::Struct_Union
  NAME = 1
  VALUE = 2
  ENVPATHORDER = 3

  FIELDS = {
    NAME => {:type => ::Thrift::Types::STRING, :name => 'name'},
    VALUE => {:type => ::Thrift::Types::STRING, :name => 'value'},
    ENVPATHORDER => {:type => ::Thrift::Types::I32, :name => 'envPathOrder', :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field name is unset!') unless @name
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field value is unset!') unless @value
  end

  ::Thrift::Struct.generate_accessors self
end

# Job commands to be used in Pre Job, Post Job and Module Load Commands
# 
# command:
#   The actual command in string format
# 
# commandOrder:
#   Order of the command in the multiple command situation
class CommandObject
  include ::Thrift::Struct, ::Thrift::Struct_Union
  COMMAND = 1
  COMMANDORDER = 2

  FIELDS = {
    COMMAND => {:type => ::Thrift::Types::STRING, :name => 'command'},
    COMMANDORDER => {:type => ::Thrift::Types::I32, :name => 'commandOrder', :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field command is unset!') unless @command
  end

  ::Thrift::Struct.generate_accessors self
end

# Application Module Information. A module has to be registered before registering a deployment.
# 
# appModuleId: Airavata Internal Unique Job ID. This is set by the registry.
# 
# appModuleName:
#   Name of the application module.
# 
# appModuleVersion:
#   Version of the application.
# 
# appModuleDescription:
#    Descriprion of the Module
# 
class ApplicationModule
  include ::Thrift::Struct, ::Thrift::Struct_Union
  APPMODULEID = 1
  APPMODULENAME = 2
  APPMODULEVERSION = 3
  APPMODULEDESCRIPTION = 4

  FIELDS = {
    APPMODULEID => {:type => ::Thrift::Types::STRING, :name => 'appModuleId', :default => %q"DO_NOT_SET_AT_CLIENTS"},
    APPMODULENAME => {:type => ::Thrift::Types::STRING, :name => 'appModuleName'},
    APPMODULEVERSION => {:type => ::Thrift::Types::STRING, :name => 'appModuleVersion', :optional => true},
    APPMODULEDESCRIPTION => {:type => ::Thrift::Types::STRING, :name => 'appModuleDescription', :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field appModuleId is unset!') unless @appModuleId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field appModuleName is unset!') unless @appModuleName
  end

  ::Thrift::Struct.generate_accessors self
end

# Application Deployment Description
# 
# appDeploymentId: Airavata Internal Unique Job ID. This is set by the registry.
# 
# appModuleName:
#   Application Module Name. This has to be precise describing the binary.
# 
# computeHostId:
#   This ID maps application deployment to a particular resource previously described within Airavata.
#   Example: Stampede is first registered and refered when registering WRF.
# 
# moduleLoadCmd:
#  Command string to load modules. This will be placed in the job submisison
#  Ex: module load amber
# 
# libPrependPaths:
#  prepend to a path variable the value
# 
# libAppendPaths:
#  append to a path variable the value
# 
# setEnvironment:
#  assigns to the environment variable "NAME" the value
# 
class ApplicationDeploymentDescription
  include ::Thrift::Struct, ::Thrift::Struct_Union
  APPDEPLOYMENTID = 1
  APPMODULEID = 2
  COMPUTEHOSTID = 3
  EXECUTABLEPATH = 4
  PARALLELISM = 5
  APPDEPLOYMENTDESCRIPTION = 6
  MODULELOADCMDS = 7
  LIBPREPENDPATHS = 8
  LIBAPPENDPATHS = 9
  SETENVIRONMENT = 10
  PREJOBCOMMANDS = 11
  POSTJOBCOMMANDS = 12
  DEFAULTQUEUENAME = 13
  DEFAULTNODECOUNT = 14
  DEFAULTCPUCOUNT = 15
  DEFAULTWALLTIME = 16
  EDITABLEBYUSER = 17

  FIELDS = {
    APPDEPLOYMENTID => {:type => ::Thrift::Types::STRING, :name => 'appDeploymentId', :default => %q"DO_NOT_SET_AT_CLIENTS"},
    APPMODULEID => {:type => ::Thrift::Types::STRING, :name => 'appModuleId'},
    COMPUTEHOSTID => {:type => ::Thrift::Types::STRING, :name => 'computeHostId'},
    EXECUTABLEPATH => {:type => ::Thrift::Types::STRING, :name => 'executablePath'},
    PARALLELISM => {:type => ::Thrift::Types::I32, :name => 'parallelism', :default =>     0, :enum_class => ::ApplicationParallelismType},
    APPDEPLOYMENTDESCRIPTION => {:type => ::Thrift::Types::STRING, :name => 'appDeploymentDescription', :optional => true},
    MODULELOADCMDS => {:type => ::Thrift::Types::LIST, :name => 'moduleLoadCmds', :element => {:type => ::Thrift::Types::STRUCT, :class => ::CommandObject}, :optional => true},
    LIBPREPENDPATHS => {:type => ::Thrift::Types::LIST, :name => 'libPrependPaths', :element => {:type => ::Thrift::Types::STRUCT, :class => ::SetEnvPaths}, :optional => true},
    LIBAPPENDPATHS => {:type => ::Thrift::Types::LIST, :name => 'libAppendPaths', :element => {:type => ::Thrift::Types::STRUCT, :class => ::SetEnvPaths}, :optional => true},
    SETENVIRONMENT => {:type => ::Thrift::Types::LIST, :name => 'setEnvironment', :element => {:type => ::Thrift::Types::STRUCT, :class => ::SetEnvPaths}, :optional => true},
    PREJOBCOMMANDS => {:type => ::Thrift::Types::LIST, :name => 'preJobCommands', :element => {:type => ::Thrift::Types::STRUCT, :class => ::CommandObject}, :optional => true},
    POSTJOBCOMMANDS => {:type => ::Thrift::Types::LIST, :name => 'postJobCommands', :element => {:type => ::Thrift::Types::STRUCT, :class => ::CommandObject}, :optional => true},
    DEFAULTQUEUENAME => {:type => ::Thrift::Types::STRING, :name => 'defaultQueueName', :optional => true},
    DEFAULTNODECOUNT => {:type => ::Thrift::Types::I32, :name => 'defaultNodeCount', :optional => true},
    DEFAULTCPUCOUNT => {:type => ::Thrift::Types::I32, :name => 'defaultCPUCount', :optional => true},
    DEFAULTWALLTIME => {:type => ::Thrift::Types::I32, :name => 'defaultWalltime', :optional => true},
    EDITABLEBYUSER => {:type => ::Thrift::Types::BOOL, :name => 'editableByUser', :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field appDeploymentId is unset!') unless @appDeploymentId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field appModuleId is unset!') unless @appModuleId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field computeHostId is unset!') unless @computeHostId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field executablePath is unset!') unless @executablePath
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field parallelism is unset!') unless @parallelism
    unless @parallelism.nil? || ::ApplicationParallelismType::VALID_VALUES.include?(@parallelism)
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field parallelism!')
    end
  end

  ::Thrift::Struct.generate_accessors self
end

