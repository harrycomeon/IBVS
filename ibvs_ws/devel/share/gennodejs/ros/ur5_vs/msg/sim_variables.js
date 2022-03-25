// Auto-generated. Do not edit!

// (in-package ur5_vs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class sim_variables {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sim_enable = null;
      this.reconfigure = null;
    }
    else {
      if (initObj.hasOwnProperty('sim_enable')) {
        this.sim_enable = initObj.sim_enable
      }
      else {
        this.sim_enable = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('reconfigure')) {
        this.reconfigure = initObj.reconfigure
      }
      else {
        this.reconfigure = new std_msgs.msg.Bool();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sim_variables
    // Serialize message field [sim_enable]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.sim_enable, buffer, bufferOffset);
    // Serialize message field [reconfigure]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.reconfigure, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sim_variables
    let len;
    let data = new sim_variables(null);
    // Deserialize message field [sim_enable]
    data.sim_enable = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [reconfigure]
    data.reconfigure = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur5_vs/sim_variables';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee6670fc044bef98d1a25a214ff7cacc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Bool sim_enable
    std_msgs/Bool reconfigure
    
    
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sim_variables(null);
    if (msg.sim_enable !== undefined) {
      resolved.sim_enable = std_msgs.msg.Bool.Resolve(msg.sim_enable)
    }
    else {
      resolved.sim_enable = new std_msgs.msg.Bool()
    }

    if (msg.reconfigure !== undefined) {
      resolved.reconfigure = std_msgs.msg.Bool.Resolve(msg.reconfigure)
    }
    else {
      resolved.reconfigure = new std_msgs.msg.Bool()
    }

    return resolved;
    }
};

module.exports = sim_variables;
