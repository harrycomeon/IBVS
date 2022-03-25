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

class joint_vel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vel0 = null;
      this.vel1 = null;
      this.vel2 = null;
      this.vel3 = null;
      this.vel4 = null;
      this.vel5 = null;
    }
    else {
      if (initObj.hasOwnProperty('vel0')) {
        this.vel0 = initObj.vel0
      }
      else {
        this.vel0 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('vel1')) {
        this.vel1 = initObj.vel1
      }
      else {
        this.vel1 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('vel2')) {
        this.vel2 = initObj.vel2
      }
      else {
        this.vel2 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('vel3')) {
        this.vel3 = initObj.vel3
      }
      else {
        this.vel3 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('vel4')) {
        this.vel4 = initObj.vel4
      }
      else {
        this.vel4 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('vel5')) {
        this.vel5 = initObj.vel5
      }
      else {
        this.vel5 = new std_msgs.msg.Float64();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type joint_vel
    // Serialize message field [vel0]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.vel0, buffer, bufferOffset);
    // Serialize message field [vel1]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.vel1, buffer, bufferOffset);
    // Serialize message field [vel2]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.vel2, buffer, bufferOffset);
    // Serialize message field [vel3]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.vel3, buffer, bufferOffset);
    // Serialize message field [vel4]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.vel4, buffer, bufferOffset);
    // Serialize message field [vel5]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.vel5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type joint_vel
    let len;
    let data = new joint_vel(null);
    // Deserialize message field [vel0]
    data.vel0 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel1]
    data.vel1 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel2]
    data.vel2 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel3]
    data.vel3 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel4]
    data.vel4 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel5]
    data.vel5 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur5_vs/joint_vel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab1015cffe235c76cd0840caa87e35b0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float64 vel0
    std_msgs/Float64 vel1
    std_msgs/Float64 vel2
    std_msgs/Float64 vel3
    std_msgs/Float64 vel4
    std_msgs/Float64 vel5
    
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new joint_vel(null);
    if (msg.vel0 !== undefined) {
      resolved.vel0 = std_msgs.msg.Float64.Resolve(msg.vel0)
    }
    else {
      resolved.vel0 = new std_msgs.msg.Float64()
    }

    if (msg.vel1 !== undefined) {
      resolved.vel1 = std_msgs.msg.Float64.Resolve(msg.vel1)
    }
    else {
      resolved.vel1 = new std_msgs.msg.Float64()
    }

    if (msg.vel2 !== undefined) {
      resolved.vel2 = std_msgs.msg.Float64.Resolve(msg.vel2)
    }
    else {
      resolved.vel2 = new std_msgs.msg.Float64()
    }

    if (msg.vel3 !== undefined) {
      resolved.vel3 = std_msgs.msg.Float64.Resolve(msg.vel3)
    }
    else {
      resolved.vel3 = new std_msgs.msg.Float64()
    }

    if (msg.vel4 !== undefined) {
      resolved.vel4 = std_msgs.msg.Float64.Resolve(msg.vel4)
    }
    else {
      resolved.vel4 = new std_msgs.msg.Float64()
    }

    if (msg.vel5 !== undefined) {
      resolved.vel5 = std_msgs.msg.Float64.Resolve(msg.vel5)
    }
    else {
      resolved.vel5 = new std_msgs.msg.Float64()
    }

    return resolved;
    }
};

module.exports = joint_vel;
