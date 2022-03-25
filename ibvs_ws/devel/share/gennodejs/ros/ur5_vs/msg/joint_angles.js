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

class joint_angles {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ang0 = null;
      this.ang1 = null;
      this.ang2 = null;
      this.ang3 = null;
      this.ang4 = null;
      this.ang5 = null;
    }
    else {
      if (initObj.hasOwnProperty('ang0')) {
        this.ang0 = initObj.ang0
      }
      else {
        this.ang0 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('ang1')) {
        this.ang1 = initObj.ang1
      }
      else {
        this.ang1 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('ang2')) {
        this.ang2 = initObj.ang2
      }
      else {
        this.ang2 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('ang3')) {
        this.ang3 = initObj.ang3
      }
      else {
        this.ang3 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('ang4')) {
        this.ang4 = initObj.ang4
      }
      else {
        this.ang4 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('ang5')) {
        this.ang5 = initObj.ang5
      }
      else {
        this.ang5 = new std_msgs.msg.Float64();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type joint_angles
    // Serialize message field [ang0]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.ang0, buffer, bufferOffset);
    // Serialize message field [ang1]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.ang1, buffer, bufferOffset);
    // Serialize message field [ang2]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.ang2, buffer, bufferOffset);
    // Serialize message field [ang3]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.ang3, buffer, bufferOffset);
    // Serialize message field [ang4]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.ang4, buffer, bufferOffset);
    // Serialize message field [ang5]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.ang5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type joint_angles
    let len;
    let data = new joint_angles(null);
    // Deserialize message field [ang0]
    data.ang0 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [ang1]
    data.ang1 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [ang2]
    data.ang2 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [ang3]
    data.ang3 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [ang4]
    data.ang4 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [ang5]
    data.ang5 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur5_vs/joint_angles';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64ff27ecf58f5c4afd7b139766a662b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float64 ang0
    std_msgs/Float64 ang1
    std_msgs/Float64 ang2
    std_msgs/Float64 ang3
    std_msgs/Float64 ang4
    std_msgs/Float64 ang5
    
    
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
    const resolved = new joint_angles(null);
    if (msg.ang0 !== undefined) {
      resolved.ang0 = std_msgs.msg.Float64.Resolve(msg.ang0)
    }
    else {
      resolved.ang0 = new std_msgs.msg.Float64()
    }

    if (msg.ang1 !== undefined) {
      resolved.ang1 = std_msgs.msg.Float64.Resolve(msg.ang1)
    }
    else {
      resolved.ang1 = new std_msgs.msg.Float64()
    }

    if (msg.ang2 !== undefined) {
      resolved.ang2 = std_msgs.msg.Float64.Resolve(msg.ang2)
    }
    else {
      resolved.ang2 = new std_msgs.msg.Float64()
    }

    if (msg.ang3 !== undefined) {
      resolved.ang3 = std_msgs.msg.Float64.Resolve(msg.ang3)
    }
    else {
      resolved.ang3 = new std_msgs.msg.Float64()
    }

    if (msg.ang4 !== undefined) {
      resolved.ang4 = std_msgs.msg.Float64.Resolve(msg.ang4)
    }
    else {
      resolved.ang4 = new std_msgs.msg.Float64()
    }

    if (msg.ang5 !== undefined) {
      resolved.ang5 = std_msgs.msg.Float64.Resolve(msg.ang5)
    }
    else {
      resolved.ang5 = new std_msgs.msg.Float64()
    }

    return resolved;
    }
};

module.exports = joint_angles;
