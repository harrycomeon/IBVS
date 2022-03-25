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

class joint_states {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ang0 = null;
      this.ang1 = null;
      this.ang2 = null;
      this.ang3 = null;
      this.ang4 = null;
      this.ang5 = null;
      this.vel0 = null;
      this.vel1 = null;
      this.vel2 = null;
      this.vel3 = null;
      this.vel4 = null;
      this.vel5 = null;
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
    // Serializes a message object of type joint_states
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
    //deserializes a message object of type joint_states
    let len;
    let data = new joint_states(null);
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
    return 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur5_vs/joint_states';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24777d71e1429a865a561f091df16fc4';
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
    const resolved = new joint_states(null);
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

module.exports = joint_states;
