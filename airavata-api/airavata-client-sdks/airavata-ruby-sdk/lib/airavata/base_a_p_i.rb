#
# Autogenerated by Thrift Compiler (0.10.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'base_api_types'

module BaseAPI
  class Client
    include ::Thrift::Client

    def getAPIVersion()
      send_getAPIVersion()
      return recv_getAPIVersion()
    end

    def send_getAPIVersion()
      send_message('getAPIVersion', GetAPIVersion_args)
    end

    def recv_getAPIVersion()
      result = receive_message(GetAPIVersion_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'getAPIVersion failed: unknown result')
    end

  end

  class Processor
    include ::Thrift::Processor

    def process_getAPIVersion(seqid, iprot, oprot)
      args = read_args(iprot, GetAPIVersion_args)
      result = GetAPIVersion_result.new()
      result.success = @handler.getAPIVersion()
      write_result(result, oprot, 'getAPIVersion', seqid)
    end

  end

  # HELPER FUNCTIONS AND STRUCTURES

  class GetAPIVersion_args
    include ::Thrift::Struct, ::Thrift::Struct_Union

    FIELDS = {

    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class GetAPIVersion_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRING, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

end

