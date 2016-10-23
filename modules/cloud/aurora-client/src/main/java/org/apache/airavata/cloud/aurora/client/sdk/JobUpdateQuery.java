/**
 * Autogenerated by Thrift Compiler (0.9.3)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package org.apache.airavata.cloud.aurora.client.sdk;

import org.apache.thrift.scheme.IScheme;
import org.apache.thrift.scheme.SchemeFactory;
import org.apache.thrift.scheme.StandardScheme;

import org.apache.thrift.scheme.TupleScheme;
import org.apache.thrift.protocol.TTupleProtocol;
import org.apache.thrift.protocol.TProtocolException;
import org.apache.thrift.EncodingUtils;
import org.apache.thrift.TException;
import org.apache.thrift.async.AsyncMethodCallback;
import org.apache.thrift.server.AbstractNonblockingServer.*;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.util.EnumMap;
import java.util.Set;
import java.util.HashSet;
import java.util.EnumSet;
import java.util.Collections;
import java.util.BitSet;
import java.nio.ByteBuffer;
import java.util.Arrays;
import javax.annotation.Generated;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@SuppressWarnings({"cast", "rawtypes", "serial", "unchecked"})
/**
 * Contains a set of restrictions on matching job updates where all restrictions must be met
 * (terms are AND'ed together).
 */
@Generated(value = "Autogenerated by Thrift Compiler (0.9.3)", date = "2016-10-21")
public class JobUpdateQuery implements org.apache.thrift.TBase<JobUpdateQuery, JobUpdateQuery._Fields>, java.io.Serializable, Cloneable, Comparable<JobUpdateQuery> {
  private static final org.apache.thrift.protocol.TStruct STRUCT_DESC = new org.apache.thrift.protocol.TStruct("JobUpdateQuery");

  private static final org.apache.thrift.protocol.TField ROLE_FIELD_DESC = new org.apache.thrift.protocol.TField("role", org.apache.thrift.protocol.TType.STRING, (short)2);
  private static final org.apache.thrift.protocol.TField KEY_FIELD_DESC = new org.apache.thrift.protocol.TField("key", org.apache.thrift.protocol.TType.STRUCT, (short)8);
  private static final org.apache.thrift.protocol.TField JOB_KEY_FIELD_DESC = new org.apache.thrift.protocol.TField("jobKey", org.apache.thrift.protocol.TType.STRUCT, (short)3);
  private static final org.apache.thrift.protocol.TField USER_FIELD_DESC = new org.apache.thrift.protocol.TField("user", org.apache.thrift.protocol.TType.STRING, (short)4);
  private static final org.apache.thrift.protocol.TField UPDATE_STATUSES_FIELD_DESC = new org.apache.thrift.protocol.TField("updateStatuses", org.apache.thrift.protocol.TType.SET, (short)5);
  private static final org.apache.thrift.protocol.TField OFFSET_FIELD_DESC = new org.apache.thrift.protocol.TField("offset", org.apache.thrift.protocol.TType.I32, (short)6);
  private static final org.apache.thrift.protocol.TField LIMIT_FIELD_DESC = new org.apache.thrift.protocol.TField("limit", org.apache.thrift.protocol.TType.I32, (short)7);

  private static final Map<Class<? extends IScheme>, SchemeFactory> schemes = new HashMap<Class<? extends IScheme>, SchemeFactory>();
  static {
    schemes.put(StandardScheme.class, new JobUpdateQueryStandardSchemeFactory());
    schemes.put(TupleScheme.class, new JobUpdateQueryTupleSchemeFactory());
  }

  /**
   * Job role.
   */
  public String role; // required
  /**
   * Unique identifier for a job update.
   */
  public JobUpdateKey key; // required
  /**
   * Job key.
   */
  public JobKey jobKey; // required
  /**
   * User who created the update.
   */
  public String user; // required
  /**
   * Set of update statuses.
   */
  public Set<JobUpdateStatus> updateStatuses; // required
  /**
   * Offset to serve data from. Used by pagination.
   */
  public int offset; // required
  /**
   * Number or records to serve. Used by pagination.
   */
  public int limit; // required

  /** The set of fields this struct contains, along with convenience methods for finding and manipulating them. */
  public enum _Fields implements org.apache.thrift.TFieldIdEnum {
    /**
     * Job role.
     */
    ROLE((short)2, "role"),
    /**
     * Unique identifier for a job update.
     */
    KEY((short)8, "key"),
    /**
     * Job key.
     */
    JOB_KEY((short)3, "jobKey"),
    /**
     * User who created the update.
     */
    USER((short)4, "user"),
    /**
     * Set of update statuses.
     */
    UPDATE_STATUSES((short)5, "updateStatuses"),
    /**
     * Offset to serve data from. Used by pagination.
     */
    OFFSET((short)6, "offset"),
    /**
     * Number or records to serve. Used by pagination.
     */
    LIMIT((short)7, "limit");

    private static final Map<String, _Fields> byName = new HashMap<String, _Fields>();

    static {
      for (_Fields field : EnumSet.allOf(_Fields.class)) {
        byName.put(field.getFieldName(), field);
      }
    }

    /**
     * Find the _Fields constant that matches fieldId, or null if its not found.
     */
    public static _Fields findByThriftId(int fieldId) {
      switch(fieldId) {
        case 2: // ROLE
          return ROLE;
        case 8: // KEY
          return KEY;
        case 3: // JOB_KEY
          return JOB_KEY;
        case 4: // USER
          return USER;
        case 5: // UPDATE_STATUSES
          return UPDATE_STATUSES;
        case 6: // OFFSET
          return OFFSET;
        case 7: // LIMIT
          return LIMIT;
        default:
          return null;
      }
    }

    /**
     * Find the _Fields constant that matches fieldId, throwing an exception
     * if it is not found.
     */
    public static _Fields findByThriftIdOrThrow(int fieldId) {
      _Fields fields = findByThriftId(fieldId);
      if (fields == null) throw new IllegalArgumentException("Field " + fieldId + " doesn't exist!");
      return fields;
    }

    /**
     * Find the _Fields constant that matches name, or null if its not found.
     */
    public static _Fields findByName(String name) {
      return byName.get(name);
    }

    private final short _thriftId;
    private final String _fieldName;

    _Fields(short thriftId, String fieldName) {
      _thriftId = thriftId;
      _fieldName = fieldName;
    }

    public short getThriftFieldId() {
      return _thriftId;
    }

    public String getFieldName() {
      return _fieldName;
    }
  }

  // isset id assignments
  private static final int __OFFSET_ISSET_ID = 0;
  private static final int __LIMIT_ISSET_ID = 1;
  private byte __isset_bitfield = 0;
  public static final Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> metaDataMap;
  static {
    Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> tmpMap = new EnumMap<_Fields, org.apache.thrift.meta_data.FieldMetaData>(_Fields.class);
    tmpMap.put(_Fields.ROLE, new org.apache.thrift.meta_data.FieldMetaData("role", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.KEY, new org.apache.thrift.meta_data.FieldMetaData("key", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.StructMetaData(org.apache.thrift.protocol.TType.STRUCT, JobUpdateKey.class)));
    tmpMap.put(_Fields.JOB_KEY, new org.apache.thrift.meta_data.FieldMetaData("jobKey", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.StructMetaData(org.apache.thrift.protocol.TType.STRUCT, JobKey.class)));
    tmpMap.put(_Fields.USER, new org.apache.thrift.meta_data.FieldMetaData("user", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.UPDATE_STATUSES, new org.apache.thrift.meta_data.FieldMetaData("updateStatuses", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.SetMetaData(org.apache.thrift.protocol.TType.SET, 
            new org.apache.thrift.meta_data.EnumMetaData(org.apache.thrift.protocol.TType.ENUM, JobUpdateStatus.class))));
    tmpMap.put(_Fields.OFFSET, new org.apache.thrift.meta_data.FieldMetaData("offset", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.I32)));
    tmpMap.put(_Fields.LIMIT, new org.apache.thrift.meta_data.FieldMetaData("limit", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.I32)));
    metaDataMap = Collections.unmodifiableMap(tmpMap);
    org.apache.thrift.meta_data.FieldMetaData.addStructMetaDataMap(JobUpdateQuery.class, metaDataMap);
  }

  public JobUpdateQuery() {
  }

  public JobUpdateQuery(
    String role,
    JobUpdateKey key,
    JobKey jobKey,
    String user,
    Set<JobUpdateStatus> updateStatuses,
    int offset,
    int limit)
  {
    this();
    this.role = role;
    this.key = key;
    this.jobKey = jobKey;
    this.user = user;
    this.updateStatuses = updateStatuses;
    this.offset = offset;
    setOffsetIsSet(true);
    this.limit = limit;
    setLimitIsSet(true);
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public JobUpdateQuery(JobUpdateQuery other) {
    __isset_bitfield = other.__isset_bitfield;
    if (other.isSetRole()) {
      this.role = other.role;
    }
    if (other.isSetKey()) {
      this.key = new JobUpdateKey(other.key);
    }
    if (other.isSetJobKey()) {
      this.jobKey = new JobKey(other.jobKey);
    }
    if (other.isSetUser()) {
      this.user = other.user;
    }
    if (other.isSetUpdateStatuses()) {
      Set<JobUpdateStatus> __this__updateStatuses = new HashSet<JobUpdateStatus>(other.updateStatuses.size());
      for (JobUpdateStatus other_element : other.updateStatuses) {
        __this__updateStatuses.add(other_element);
      }
      this.updateStatuses = __this__updateStatuses;
    }
    this.offset = other.offset;
    this.limit = other.limit;
  }

  public JobUpdateQuery deepCopy() {
    return new JobUpdateQuery(this);
  }

  @Override
  public void clear() {
    this.role = null;
    this.key = null;
    this.jobKey = null;
    this.user = null;
    this.updateStatuses = null;
    setOffsetIsSet(false);
    this.offset = 0;
    setLimitIsSet(false);
    this.limit = 0;
  }

  /**
   * Job role.
   */
  public String getRole() {
    return this.role;
  }

  /**
   * Job role.
   */
  public JobUpdateQuery setRole(String role) {
    this.role = role;
    return this;
  }

  public void unsetRole() {
    this.role = null;
  }

  /** Returns true if field role is set (has been assigned a value) and false otherwise */
  public boolean isSetRole() {
    return this.role != null;
  }

  public void setRoleIsSet(boolean value) {
    if (!value) {
      this.role = null;
    }
  }

  /**
   * Unique identifier for a job update.
   */
  public JobUpdateKey getKey() {
    return this.key;
  }

  /**
   * Unique identifier for a job update.
   */
  public JobUpdateQuery setKey(JobUpdateKey key) {
    this.key = key;
    return this;
  }

  public void unsetKey() {
    this.key = null;
  }

  /** Returns true if field key is set (has been assigned a value) and false otherwise */
  public boolean isSetKey() {
    return this.key != null;
  }

  public void setKeyIsSet(boolean value) {
    if (!value) {
      this.key = null;
    }
  }

  /**
   * Job key.
   */
  public JobKey getJobKey() {
    return this.jobKey;
  }

  /**
   * Job key.
   */
  public JobUpdateQuery setJobKey(JobKey jobKey) {
    this.jobKey = jobKey;
    return this;
  }

  public void unsetJobKey() {
    this.jobKey = null;
  }

  /** Returns true if field jobKey is set (has been assigned a value) and false otherwise */
  public boolean isSetJobKey() {
    return this.jobKey != null;
  }

  public void setJobKeyIsSet(boolean value) {
    if (!value) {
      this.jobKey = null;
    }
  }

  /**
   * User who created the update.
   */
  public String getUser() {
    return this.user;
  }

  /**
   * User who created the update.
   */
  public JobUpdateQuery setUser(String user) {
    this.user = user;
    return this;
  }

  public void unsetUser() {
    this.user = null;
  }

  /** Returns true if field user is set (has been assigned a value) and false otherwise */
  public boolean isSetUser() {
    return this.user != null;
  }

  public void setUserIsSet(boolean value) {
    if (!value) {
      this.user = null;
    }
  }

  public int getUpdateStatusesSize() {
    return (this.updateStatuses == null) ? 0 : this.updateStatuses.size();
  }

  public java.util.Iterator<JobUpdateStatus> getUpdateStatusesIterator() {
    return (this.updateStatuses == null) ? null : this.updateStatuses.iterator();
  }

  public void addToUpdateStatuses(JobUpdateStatus elem) {
    if (this.updateStatuses == null) {
      this.updateStatuses = new HashSet<JobUpdateStatus>();
    }
    this.updateStatuses.add(elem);
  }

  /**
   * Set of update statuses.
   */
  public Set<JobUpdateStatus> getUpdateStatuses() {
    return this.updateStatuses;
  }

  /**
   * Set of update statuses.
   */
  public JobUpdateQuery setUpdateStatuses(Set<JobUpdateStatus> updateStatuses) {
    this.updateStatuses = updateStatuses;
    return this;
  }

  public void unsetUpdateStatuses() {
    this.updateStatuses = null;
  }

  /** Returns true if field updateStatuses is set (has been assigned a value) and false otherwise */
  public boolean isSetUpdateStatuses() {
    return this.updateStatuses != null;
  }

  public void setUpdateStatusesIsSet(boolean value) {
    if (!value) {
      this.updateStatuses = null;
    }
  }

  /**
   * Offset to serve data from. Used by pagination.
   */
  public int getOffset() {
    return this.offset;
  }

  /**
   * Offset to serve data from. Used by pagination.
   */
  public JobUpdateQuery setOffset(int offset) {
    this.offset = offset;
    setOffsetIsSet(true);
    return this;
  }

  public void unsetOffset() {
    __isset_bitfield = EncodingUtils.clearBit(__isset_bitfield, __OFFSET_ISSET_ID);
  }

  /** Returns true if field offset is set (has been assigned a value) and false otherwise */
  public boolean isSetOffset() {
    return EncodingUtils.testBit(__isset_bitfield, __OFFSET_ISSET_ID);
  }

  public void setOffsetIsSet(boolean value) {
    __isset_bitfield = EncodingUtils.setBit(__isset_bitfield, __OFFSET_ISSET_ID, value);
  }

  /**
   * Number or records to serve. Used by pagination.
   */
  public int getLimit() {
    return this.limit;
  }

  /**
   * Number or records to serve. Used by pagination.
   */
  public JobUpdateQuery setLimit(int limit) {
    this.limit = limit;
    setLimitIsSet(true);
    return this;
  }

  public void unsetLimit() {
    __isset_bitfield = EncodingUtils.clearBit(__isset_bitfield, __LIMIT_ISSET_ID);
  }

  /** Returns true if field limit is set (has been assigned a value) and false otherwise */
  public boolean isSetLimit() {
    return EncodingUtils.testBit(__isset_bitfield, __LIMIT_ISSET_ID);
  }

  public void setLimitIsSet(boolean value) {
    __isset_bitfield = EncodingUtils.setBit(__isset_bitfield, __LIMIT_ISSET_ID, value);
  }

  public void setFieldValue(_Fields field, Object value) {
    switch (field) {
    case ROLE:
      if (value == null) {
        unsetRole();
      } else {
        setRole((String)value);
      }
      break;

    case KEY:
      if (value == null) {
        unsetKey();
      } else {
        setKey((JobUpdateKey)value);
      }
      break;

    case JOB_KEY:
      if (value == null) {
        unsetJobKey();
      } else {
        setJobKey((JobKey)value);
      }
      break;

    case USER:
      if (value == null) {
        unsetUser();
      } else {
        setUser((String)value);
      }
      break;

    case UPDATE_STATUSES:
      if (value == null) {
        unsetUpdateStatuses();
      } else {
        setUpdateStatuses((Set<JobUpdateStatus>)value);
      }
      break;

    case OFFSET:
      if (value == null) {
        unsetOffset();
      } else {
        setOffset((Integer)value);
      }
      break;

    case LIMIT:
      if (value == null) {
        unsetLimit();
      } else {
        setLimit((Integer)value);
      }
      break;

    }
  }

  public Object getFieldValue(_Fields field) {
    switch (field) {
    case ROLE:
      return getRole();

    case KEY:
      return getKey();

    case JOB_KEY:
      return getJobKey();

    case USER:
      return getUser();

    case UPDATE_STATUSES:
      return getUpdateStatuses();

    case OFFSET:
      return getOffset();

    case LIMIT:
      return getLimit();

    }
    throw new IllegalStateException();
  }

  /** Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise */
  public boolean isSet(_Fields field) {
    if (field == null) {
      throw new IllegalArgumentException();
    }

    switch (field) {
    case ROLE:
      return isSetRole();
    case KEY:
      return isSetKey();
    case JOB_KEY:
      return isSetJobKey();
    case USER:
      return isSetUser();
    case UPDATE_STATUSES:
      return isSetUpdateStatuses();
    case OFFSET:
      return isSetOffset();
    case LIMIT:
      return isSetLimit();
    }
    throw new IllegalStateException();
  }

  @Override
  public boolean equals(Object that) {
    if (that == null)
      return false;
    if (that instanceof JobUpdateQuery)
      return this.equals((JobUpdateQuery)that);
    return false;
  }

  public boolean equals(JobUpdateQuery that) {
    if (that == null)
      return false;

    boolean this_present_role = true && this.isSetRole();
    boolean that_present_role = true && that.isSetRole();
    if (this_present_role || that_present_role) {
      if (!(this_present_role && that_present_role))
        return false;
      if (!this.role.equals(that.role))
        return false;
    }

    boolean this_present_key = true && this.isSetKey();
    boolean that_present_key = true && that.isSetKey();
    if (this_present_key || that_present_key) {
      if (!(this_present_key && that_present_key))
        return false;
      if (!this.key.equals(that.key))
        return false;
    }

    boolean this_present_jobKey = true && this.isSetJobKey();
    boolean that_present_jobKey = true && that.isSetJobKey();
    if (this_present_jobKey || that_present_jobKey) {
      if (!(this_present_jobKey && that_present_jobKey))
        return false;
      if (!this.jobKey.equals(that.jobKey))
        return false;
    }

    boolean this_present_user = true && this.isSetUser();
    boolean that_present_user = true && that.isSetUser();
    if (this_present_user || that_present_user) {
      if (!(this_present_user && that_present_user))
        return false;
      if (!this.user.equals(that.user))
        return false;
    }

    boolean this_present_updateStatuses = true && this.isSetUpdateStatuses();
    boolean that_present_updateStatuses = true && that.isSetUpdateStatuses();
    if (this_present_updateStatuses || that_present_updateStatuses) {
      if (!(this_present_updateStatuses && that_present_updateStatuses))
        return false;
      if (!this.updateStatuses.equals(that.updateStatuses))
        return false;
    }

    boolean this_present_offset = true;
    boolean that_present_offset = true;
    if (this_present_offset || that_present_offset) {
      if (!(this_present_offset && that_present_offset))
        return false;
      if (this.offset != that.offset)
        return false;
    }

    boolean this_present_limit = true;
    boolean that_present_limit = true;
    if (this_present_limit || that_present_limit) {
      if (!(this_present_limit && that_present_limit))
        return false;
      if (this.limit != that.limit)
        return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    List<Object> list = new ArrayList<Object>();

    boolean present_role = true && (isSetRole());
    list.add(present_role);
    if (present_role)
      list.add(role);

    boolean present_key = true && (isSetKey());
    list.add(present_key);
    if (present_key)
      list.add(key);

    boolean present_jobKey = true && (isSetJobKey());
    list.add(present_jobKey);
    if (present_jobKey)
      list.add(jobKey);

    boolean present_user = true && (isSetUser());
    list.add(present_user);
    if (present_user)
      list.add(user);

    boolean present_updateStatuses = true && (isSetUpdateStatuses());
    list.add(present_updateStatuses);
    if (present_updateStatuses)
      list.add(updateStatuses);

    boolean present_offset = true;
    list.add(present_offset);
    if (present_offset)
      list.add(offset);

    boolean present_limit = true;
    list.add(present_limit);
    if (present_limit)
      list.add(limit);

    return list.hashCode();
  }

  @Override
  public int compareTo(JobUpdateQuery other) {
    if (!getClass().equals(other.getClass())) {
      return getClass().getName().compareTo(other.getClass().getName());
    }

    int lastComparison = 0;

    lastComparison = Boolean.valueOf(isSetRole()).compareTo(other.isSetRole());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetRole()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.role, other.role);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = Boolean.valueOf(isSetKey()).compareTo(other.isSetKey());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetKey()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.key, other.key);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = Boolean.valueOf(isSetJobKey()).compareTo(other.isSetJobKey());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetJobKey()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.jobKey, other.jobKey);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = Boolean.valueOf(isSetUser()).compareTo(other.isSetUser());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetUser()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.user, other.user);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = Boolean.valueOf(isSetUpdateStatuses()).compareTo(other.isSetUpdateStatuses());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetUpdateStatuses()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.updateStatuses, other.updateStatuses);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = Boolean.valueOf(isSetOffset()).compareTo(other.isSetOffset());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetOffset()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.offset, other.offset);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = Boolean.valueOf(isSetLimit()).compareTo(other.isSetLimit());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetLimit()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.limit, other.limit);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    return 0;
  }

  public _Fields fieldForId(int fieldId) {
    return _Fields.findByThriftId(fieldId);
  }

  public void read(org.apache.thrift.protocol.TProtocol iprot) throws org.apache.thrift.TException {
    schemes.get(iprot.getScheme()).getScheme().read(iprot, this);
  }

  public void write(org.apache.thrift.protocol.TProtocol oprot) throws org.apache.thrift.TException {
    schemes.get(oprot.getScheme()).getScheme().write(oprot, this);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder("JobUpdateQuery(");
    boolean first = true;

    sb.append("role:");
    if (this.role == null) {
      sb.append("null");
    } else {
      sb.append(this.role);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("key:");
    if (this.key == null) {
      sb.append("null");
    } else {
      sb.append(this.key);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("jobKey:");
    if (this.jobKey == null) {
      sb.append("null");
    } else {
      sb.append(this.jobKey);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("user:");
    if (this.user == null) {
      sb.append("null");
    } else {
      sb.append(this.user);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("updateStatuses:");
    if (this.updateStatuses == null) {
      sb.append("null");
    } else {
      sb.append(this.updateStatuses);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("offset:");
    sb.append(this.offset);
    first = false;
    if (!first) sb.append(", ");
    sb.append("limit:");
    sb.append(this.limit);
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws org.apache.thrift.TException {
    // check for required fields
    // check for sub-struct validity
    if (key != null) {
      key.validate();
    }
    if (jobKey != null) {
      jobKey.validate();
    }
  }

  private void writeObject(java.io.ObjectOutputStream out) throws java.io.IOException {
    try {
      write(new org.apache.thrift.protocol.TCompactProtocol(new org.apache.thrift.transport.TIOStreamTransport(out)));
    } catch (org.apache.thrift.TException te) {
      throw new java.io.IOException(te);
    }
  }

  private void readObject(java.io.ObjectInputStream in) throws java.io.IOException, ClassNotFoundException {
    try {
      // it doesn't seem like you should have to do this, but java serialization is wacky, and doesn't call the default constructor.
      __isset_bitfield = 0;
      read(new org.apache.thrift.protocol.TCompactProtocol(new org.apache.thrift.transport.TIOStreamTransport(in)));
    } catch (org.apache.thrift.TException te) {
      throw new java.io.IOException(te);
    }
  }

  private static class JobUpdateQueryStandardSchemeFactory implements SchemeFactory {
    public JobUpdateQueryStandardScheme getScheme() {
      return new JobUpdateQueryStandardScheme();
    }
  }

  private static class JobUpdateQueryStandardScheme extends StandardScheme<JobUpdateQuery> {

    public void read(org.apache.thrift.protocol.TProtocol iprot, JobUpdateQuery struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TField schemeField;
      iprot.readStructBegin();
      while (true)
      {
        schemeField = iprot.readFieldBegin();
        if (schemeField.type == org.apache.thrift.protocol.TType.STOP) { 
          break;
        }
        switch (schemeField.id) {
          case 2: // ROLE
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.role = iprot.readString();
              struct.setRoleIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 8: // KEY
            if (schemeField.type == org.apache.thrift.protocol.TType.STRUCT) {
              struct.key = new JobUpdateKey();
              struct.key.read(iprot);
              struct.setKeyIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 3: // JOB_KEY
            if (schemeField.type == org.apache.thrift.protocol.TType.STRUCT) {
              struct.jobKey = new JobKey();
              struct.jobKey.read(iprot);
              struct.setJobKeyIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 4: // USER
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.user = iprot.readString();
              struct.setUserIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 5: // UPDATE_STATUSES
            if (schemeField.type == org.apache.thrift.protocol.TType.SET) {
              {
                org.apache.thrift.protocol.TSet _set246 = iprot.readSetBegin();
                struct.updateStatuses = new HashSet<JobUpdateStatus>(2*_set246.size);
                JobUpdateStatus _elem247;
                for (int _i248 = 0; _i248 < _set246.size; ++_i248)
                {
                  _elem247 = org.apache.airavata.cloud.aurora.client.sdk.JobUpdateStatus.findByValue(iprot.readI32());
                  struct.updateStatuses.add(_elem247);
                }
                iprot.readSetEnd();
              }
              struct.setUpdateStatusesIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 6: // OFFSET
            if (schemeField.type == org.apache.thrift.protocol.TType.I32) {
              struct.offset = iprot.readI32();
              struct.setOffsetIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 7: // LIMIT
            if (schemeField.type == org.apache.thrift.protocol.TType.I32) {
              struct.limit = iprot.readI32();
              struct.setLimitIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          default:
            org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
        }
        iprot.readFieldEnd();
      }
      iprot.readStructEnd();

      // check for required fields of primitive type, which can't be checked in the validate method
      struct.validate();
    }

    public void write(org.apache.thrift.protocol.TProtocol oprot, JobUpdateQuery struct) throws org.apache.thrift.TException {
      struct.validate();

      oprot.writeStructBegin(STRUCT_DESC);
      if (struct.role != null) {
        oprot.writeFieldBegin(ROLE_FIELD_DESC);
        oprot.writeString(struct.role);
        oprot.writeFieldEnd();
      }
      if (struct.jobKey != null) {
        oprot.writeFieldBegin(JOB_KEY_FIELD_DESC);
        struct.jobKey.write(oprot);
        oprot.writeFieldEnd();
      }
      if (struct.user != null) {
        oprot.writeFieldBegin(USER_FIELD_DESC);
        oprot.writeString(struct.user);
        oprot.writeFieldEnd();
      }
      if (struct.updateStatuses != null) {
        oprot.writeFieldBegin(UPDATE_STATUSES_FIELD_DESC);
        {
          oprot.writeSetBegin(new org.apache.thrift.protocol.TSet(org.apache.thrift.protocol.TType.I32, struct.updateStatuses.size()));
          for (JobUpdateStatus _iter249 : struct.updateStatuses)
          {
            oprot.writeI32(_iter249.getValue());
          }
          oprot.writeSetEnd();
        }
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(OFFSET_FIELD_DESC);
      oprot.writeI32(struct.offset);
      oprot.writeFieldEnd();
      oprot.writeFieldBegin(LIMIT_FIELD_DESC);
      oprot.writeI32(struct.limit);
      oprot.writeFieldEnd();
      if (struct.key != null) {
        oprot.writeFieldBegin(KEY_FIELD_DESC);
        struct.key.write(oprot);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

  }

  private static class JobUpdateQueryTupleSchemeFactory implements SchemeFactory {
    public JobUpdateQueryTupleScheme getScheme() {
      return new JobUpdateQueryTupleScheme();
    }
  }

  private static class JobUpdateQueryTupleScheme extends TupleScheme<JobUpdateQuery> {

    @Override
    public void write(org.apache.thrift.protocol.TProtocol prot, JobUpdateQuery struct) throws org.apache.thrift.TException {
      TTupleProtocol oprot = (TTupleProtocol) prot;
      BitSet optionals = new BitSet();
      if (struct.isSetRole()) {
        optionals.set(0);
      }
      if (struct.isSetKey()) {
        optionals.set(1);
      }
      if (struct.isSetJobKey()) {
        optionals.set(2);
      }
      if (struct.isSetUser()) {
        optionals.set(3);
      }
      if (struct.isSetUpdateStatuses()) {
        optionals.set(4);
      }
      if (struct.isSetOffset()) {
        optionals.set(5);
      }
      if (struct.isSetLimit()) {
        optionals.set(6);
      }
      oprot.writeBitSet(optionals, 7);
      if (struct.isSetRole()) {
        oprot.writeString(struct.role);
      }
      if (struct.isSetKey()) {
        struct.key.write(oprot);
      }
      if (struct.isSetJobKey()) {
        struct.jobKey.write(oprot);
      }
      if (struct.isSetUser()) {
        oprot.writeString(struct.user);
      }
      if (struct.isSetUpdateStatuses()) {
        {
          oprot.writeI32(struct.updateStatuses.size());
          for (JobUpdateStatus _iter250 : struct.updateStatuses)
          {
            oprot.writeI32(_iter250.getValue());
          }
        }
      }
      if (struct.isSetOffset()) {
        oprot.writeI32(struct.offset);
      }
      if (struct.isSetLimit()) {
        oprot.writeI32(struct.limit);
      }
    }

    @Override
    public void read(org.apache.thrift.protocol.TProtocol prot, JobUpdateQuery struct) throws org.apache.thrift.TException {
      TTupleProtocol iprot = (TTupleProtocol) prot;
      BitSet incoming = iprot.readBitSet(7);
      if (incoming.get(0)) {
        struct.role = iprot.readString();
        struct.setRoleIsSet(true);
      }
      if (incoming.get(1)) {
        struct.key = new JobUpdateKey();
        struct.key.read(iprot);
        struct.setKeyIsSet(true);
      }
      if (incoming.get(2)) {
        struct.jobKey = new JobKey();
        struct.jobKey.read(iprot);
        struct.setJobKeyIsSet(true);
      }
      if (incoming.get(3)) {
        struct.user = iprot.readString();
        struct.setUserIsSet(true);
      }
      if (incoming.get(4)) {
        {
          org.apache.thrift.protocol.TSet _set251 = new org.apache.thrift.protocol.TSet(org.apache.thrift.protocol.TType.I32, iprot.readI32());
          struct.updateStatuses = new HashSet<JobUpdateStatus>(2*_set251.size);
          JobUpdateStatus _elem252;
          for (int _i253 = 0; _i253 < _set251.size; ++_i253)
          {
            _elem252 = org.apache.airavata.cloud.aurora.client.sdk.JobUpdateStatus.findByValue(iprot.readI32());
            struct.updateStatuses.add(_elem252);
          }
        }
        struct.setUpdateStatusesIsSet(true);
      }
      if (incoming.get(5)) {
        struct.offset = iprot.readI32();
        struct.setOffsetIsSet(true);
      }
      if (incoming.get(6)) {
        struct.limit = iprot.readI32();
        struct.setLimitIsSet(true);
      }
    }
  }

}
