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

class states {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.p0 = null;
      this.p1 = null;
      this.i0 = null;
      this.i1 = null;
      this.d0 = null;
      this.d1 = null;
    }
    else {
      if (initObj.hasOwnProperty('p0')) {
        this.p0 = initObj.p0
      }
      else {
        this.p0 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('p1')) {
        this.p1 = initObj.p1
      }
      else {
        this.p1 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('i0')) {
        this.i0 = initObj.i0
      }
      else {
        this.i0 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('i1')) {
        this.i1 = initObj.i1
      }
      else {
        this.i1 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('d0')) {
        this.d0 = initObj.d0
      }
      else {
        this.d0 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('d1')) {
        this.d1 = initObj.d1
      }
      else {
        this.d1 = new std_msgs.msg.Float64();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type states
    // Serialize message field [p0]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.p0, buffer, bufferOffset);
    // Serialize message field [p1]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.p1, buffer, bufferOffset);
    // Serialize message field [i0]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.i0, buffer, bufferOffset);
    // Serialize message field [i1]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.i1, buffer, bufferOffset);
    // Serialize message field [d0]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.d0, buffer, bufferOffset);
    // Serialize message field [d1]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.d1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type states
    let len;
    let data = new states(null);
    // Deserialize message field [p0]
    data.p0 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [p1]
    data.p1 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [i0]
    data.i0 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [i1]
    data.i1 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [d0]
    data.d0 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [d1]
    data.d1 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur5_vs/states';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ad1edff9a04bf37f717ceef18902369';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float64 p0
    std_msgs/Float64 p1
    std_msgs/Float64 i0
    std_msgs/Float64 i1
    std_msgs/Float64 d0
    std_msgs/Float64 d1
    
    
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
    const resolved = new states(null);
    if (msg.p0 !== undefined) {
      resolved.p0 = std_msgs.msg.Float64.Resolve(msg.p0)
    }
    else {
      resolved.p0 = new std_msgs.msg.Float64()
    }

    if (msg.p1 !== undefined) {
      resolved.p1 = std_msgs.msg.Float64.Resolve(msg.p1)
    }
    else {
      resolved.p1 = new std_msgs.msg.Float64()
    }

    if (msg.i0 !== undefined) {
      resolved.i0 = std_msgs.msg.Float64.Resolve(msg.i0)
    }
    else {
      resolved.i0 = new std_msgs.msg.Float64()
    }

    if (msg.i1 !== undefined) {
      resolved.i1 = std_msgs.msg.Float64.Resolve(msg.i1)
    }
    else {
      resolved.i1 = new std_msgs.msg.Float64()
    }

    if (msg.d0 !== undefined) {
      resolved.d0 = std_msgs.msg.Float64.Resolve(msg.d0)
    }
    else {
      resolved.d0 = new std_msgs.msg.Float64()
    }

    if (msg.d1 !== undefined) {
      resolved.d1 = std_msgs.msg.Float64.Resolve(msg.d1)
    }
    else {
      resolved.d1 = new std_msgs.msg.Float64()
    }

    return resolved;
    }
};

module.exports = states;
