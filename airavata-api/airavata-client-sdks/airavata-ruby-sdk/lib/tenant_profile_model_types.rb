#
# Autogenerated by Thrift Compiler (0.10.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'airavata_commons_types'


module TenantApprovalStatus
  REQUESTED = 0
  APPROVED = 1
  ACTIVE = 2
  DEACTIVATED = 3
  CANCELLED = 4
  DENIED = 5
  CREATED = 6
  DEPLOYED = 7
  VALUE_MAP = {0 => "REQUESTED", 1 => "APPROVED", 2 => "ACTIVE", 3 => "DEACTIVATED", 4 => "CANCELLED", 5 => "DENIED", 6 => "CREATED", 7 => "DEPLOYED"}
  VALID_VALUES = Set.new([REQUESTED, APPROVED, ACTIVE, DEACTIVATED, CANCELLED, DENIED, CREATED, DEPLOYED]).freeze
end

class TenantPreferences
  include ::Thrift::Struct, ::Thrift::Struct_Union
  TENANTADMINFIRSTNAME = 10
  TENANTADMINLASTNAME = 11
  TENANTADMINEMAIL = 12

  FIELDS = {
    TENANTADMINFIRSTNAME => {:type => ::Thrift::Types::STRING, :name => 'tenantAdminFirstName', :optional => true},
    TENANTADMINLASTNAME => {:type => ::Thrift::Types::STRING, :name => 'tenantAdminLastName', :optional => true},
    TENANTADMINEMAIL => {:type => ::Thrift::Types::STRING, :name => 'tenantAdminEmail', :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class TenantConfig
  include ::Thrift::Struct, ::Thrift::Struct_Union
  OAUTHCLIENTID = 16
  OAUTHCLIENTSECRET = 17
  IDENTITYSERVERUSERNAME = 13
  IDENTITYSERVERPASSWORDTOKEN = 14

  FIELDS = {
    OAUTHCLIENTID => {:type => ::Thrift::Types::STRING, :name => 'oauthClientId', :optional => true},
    OAUTHCLIENTSECRET => {:type => ::Thrift::Types::STRING, :name => 'oauthClientSecret', :optional => true},
    IDENTITYSERVERUSERNAME => {:type => ::Thrift::Types::STRING, :name => 'identityServerUserName', :optional => true},
    IDENTITYSERVERPASSWORDTOKEN => {:type => ::Thrift::Types::STRING, :name => 'identityServerPasswordToken', :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class Tenant
  include ::Thrift::Struct, ::Thrift::Struct_Union
  TENANTID = 1
  TENANTAPPROVALSTATUS = 2
  TENANTNAME = 3
  DOMAIN = 4
  EMAILADDRESS = 5
  TENANTACRONYM = 6
  TENANTURL = 7
  TENANTPUBLICABSTRACT = 8
  REVIEWPROPOSALDESCRIPTION = 9
  DECLINEDREASON = 15
  REQUESTCREATIONTIME = 18
  REQUESTERUSERNAME = 19

  FIELDS = {
    TENANTID => {:type => ::Thrift::Types::STRING, :name => 'tenantId'},
    TENANTAPPROVALSTATUS => {:type => ::Thrift::Types::I32, :name => 'tenantApprovalStatus', :enum_class => ::TenantApprovalStatus},
    TENANTNAME => {:type => ::Thrift::Types::STRING, :name => 'tenantName', :optional => true},
    DOMAIN => {:type => ::Thrift::Types::STRING, :name => 'domain', :optional => true},
    EMAILADDRESS => {:type => ::Thrift::Types::STRING, :name => 'emailAddress', :optional => true},
    TENANTACRONYM => {:type => ::Thrift::Types::STRING, :name => 'tenantAcronym', :optional => true},
    TENANTURL => {:type => ::Thrift::Types::STRING, :name => 'tenantURL', :optional => true},
    TENANTPUBLICABSTRACT => {:type => ::Thrift::Types::STRING, :name => 'tenantPublicAbstract', :optional => true},
    REVIEWPROPOSALDESCRIPTION => {:type => ::Thrift::Types::STRING, :name => 'reviewProposalDescription', :optional => true},
    DECLINEDREASON => {:type => ::Thrift::Types::STRING, :name => 'declinedReason', :optional => true},
    REQUESTCREATIONTIME => {:type => ::Thrift::Types::I64, :name => 'requestCreationTime', :optional => true},
    REQUESTERUSERNAME => {:type => ::Thrift::Types::STRING, :name => 'requesterUsername', :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field tenantId is unset!') unless @tenantId
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field tenantApprovalStatus is unset!') unless @tenantApprovalStatus
    unless @tenantApprovalStatus.nil? || ::TenantApprovalStatus::VALID_VALUES.include?(@tenantApprovalStatus)
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field tenantApprovalStatus!')
    end
  end

  ::Thrift::Struct.generate_accessors self
end
