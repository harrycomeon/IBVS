// Auto-generated. Do not edit!

// (in-package object_detection.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class image_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.detected_point_x = null;
      this.detected_point_y = null;
      this.detected_point_depth = null;
      this.detected_point_0 = null;
      this.detected_point_1 = null;
      this.detected_point_2 = null;
      this.detected_point_3 = null;
      this.detected_point_4 = null;
      this.detected_point_5 = null;
      this.detected_point_6 = null;
      this.detected_point_7 = null;
      this.area = null;
    }
    else {
      if (initObj.hasOwnProperty('detected_point_x')) {
        this.detected_point_x = initObj.detected_point_x
      }
      else {
        this.detected_point_x = new std_msgs.msg.Int64();
      }
      if (initObj.hasOwnProperty('detected_point_y')) {
        this.detected_point_y = initObj.detected_point_y
      }
      else {
        this.detected_point_y = new std_msgs.msg.Int64();
      }
      if (initObj.hasOwnProperty('detected_point_depth')) {
        this.detected_point_depth = initObj.detected_point_depth
      }
      else {
        this.detected_point_depth = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('detected_point_0')) {
        this.detected_point_0 = initObj.detected_point_0
      }
      else {
        this.detected_point_0 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('detected_point_1')) {
        this.detected_point_1 = initObj.detected_point_1
      }
      else {
        this.detected_point_1 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('detected_point_2')) {
        this.detected_point_2 = initObj.detected_point_2
      }
      else {
        this.detected_point_2 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('detected_point_3')) {
        this.detected_point_3 = initObj.detected_point_3
      }
      else {
        this.detected_point_3 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('detected_point_4')) {
        this.detected_point_4 = initObj.detected_point_4
      }
      else {
        this.detected_point_4 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('detected_point_5')) {
        this.detected_point_5 = initObj.detected_point_5
      }
      else {
        this.detected_point_5 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('detected_point_6')) {
        this.detected_point_6 = initObj.detected_point_6
      }
      else {
        this.detected_point_6 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('detected_point_7')) {
        this.detected_point_7 = initObj.detected_point_7
      }
      else {
        this.detected_point_7 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('area')) {
        this.area = initObj.area
      }
      else {
        this.area = new std_msgs.msg.Float64();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type image_data
    // Serialize message field [detected_point_x]
    bufferOffset = std_msgs.msg.Int64.serialize(obj.detected_point_x, buffer, bufferOffset);
    // Serialize message field [detected_point_y]
    bufferOffset = std_msgs.msg.Int64.serialize(obj.detected_point_y, buffer, bufferOffset);
    // Serialize message field [detected_point_depth]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.detected_point_depth, buffer, bufferOffset);
    // Serialize message field [detected_point_0]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.detected_point_0, buffer, bufferOffset);
    // Serialize message field [detected_point_1]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.detected_point_1, buffer, bufferOffset);
    // Serialize message field [detected_point_2]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.detected_point_2, buffer, bufferOffset);
    // Serialize message field [detected_point_3]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.detected_point_3, buffer, bufferOffset);
    // Serialize message field [detected_point_4]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.detected_point_4, buffer, bufferOffset);
    // Serialize message field [detected_point_5]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.detected_point_5, buffer, bufferOffset);
    // Serialize message field [detected_point_6]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.detected_point_6, buffer, bufferOffset);
    // Serialize message field [detected_point_7]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.detected_point_7, buffer, bufferOffset);
    // Serialize message field [area]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.area, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type image_data
    let len;
    let data = new image_data(null);
    // Deserialize message field [detected_point_x]
    data.detected_point_x = std_msgs.msg.Int64.deserialize(buffer, bufferOffset);
    // Deserialize message field [detected_point_y]
    data.detected_point_y = std_msgs.msg.Int64.deserialize(buffer, bufferOffset);
    // Deserialize message field [detected_point_depth]
    data.detected_point_depth = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [detected_point_0]
    data.detected_point_0 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [detected_point_1]
    data.detected_point_1 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [detected_point_2]
    data.detected_point_2 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [detected_point_3]
    data.detected_point_3 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [detected_point_4]
    data.detected_point_4 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [detected_point_5]
    data.detected_point_5 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [detected_point_6]
    data.detected_point_6 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [detected_point_7]
    data.detected_point_7 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [area]
    data.area = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'object_detection/image_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0116699c5958c8f60e7002f588d8e852';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Int64 detected_point_x
    std_msgs/Int64 detected_point_y
    std_msgs/Float64 detected_point_depth
    std_msgs/Float64 detected_point_0
    std_msgs/Float64 detected_point_1
    std_msgs/Float64 detected_point_2
    std_msgs/Float64 detected_point_3
    std_msgs/Float64 detected_point_4
    std_msgs/Float64 detected_point_5
    std_msgs/Float64 detected_point_6
    std_msgs/Float64 detected_point_7
    std_msgs/Float64 area
    
    ================================================================================
    MSG: std_msgs/Int64
    int64 data
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
    const resolved = new image_data(null);
    if (msg.detected_point_x !== undefined) {
      resolved.detected_point_x = std_msgs.msg.Int64.Resolve(msg.detected_point_x)
    }
    else {
      resolved.detected_point_x = new std_msgs.msg.Int64()
    }

    if (msg.detected_point_y !== undefined) {
      resolved.detected_point_y = std_msgs.msg.Int64.Resolve(msg.detected_point_y)
    }
    else {
      resolved.detected_point_y = new std_msgs.msg.Int64()
    }

    if (msg.detected_point_depth !== undefined) {
      resolved.detected_point_depth = std_msgs.msg.Float64.Resolve(msg.detected_point_depth)
    }
    else {
      resolved.detected_point_depth = new std_msgs.msg.Float64()
    }

    if (msg.detected_point_0 !== undefined) {
      resolved.detected_point_0 = std_msgs.msg.Float64.Resolve(msg.detected_point_0)
    }
    else {
      resolved.detected_point_0 = new std_msgs.msg.Float64()
    }

    if (msg.detected_point_1 !== undefined) {
      resolved.detected_point_1 = std_msgs.msg.Float64.Resolve(msg.detected_point_1)
    }
    else {
      resolved.detected_point_1 = new std_msgs.msg.Float64()
    }

    if (msg.detected_point_2 !== undefined) {
      resolved.detected_point_2 = std_msgs.msg.Float64.Resolve(msg.detected_point_2)
    }
    else {
      resolved.detected_point_2 = new std_msgs.msg.Float64()
    }

    if (msg.detected_point_3 !== undefined) {
      resolved.detected_point_3 = std_msgs.msg.Float64.Resolve(msg.detected_point_3)
    }
    else {
      resolved.detected_point_3 = new std_msgs.msg.Float64()
    }

    if (msg.detected_point_4 !== undefined) {
      resolved.detected_point_4 = std_msgs.msg.Float64.Resolve(msg.detected_point_4)
    }
    else {
      resolved.detected_point_4 = new std_msgs.msg.Float64()
    }

    if (msg.detected_point_5 !== undefined) {
      resolved.detected_point_5 = std_msgs.msg.Float64.Resolve(msg.detected_point_5)
    }
    else {
      resolved.detected_point_5 = new std_msgs.msg.Float64()
    }

    if (msg.detected_point_6 !== undefined) {
      resolved.detected_point_6 = std_msgs.msg.Float64.Resolve(msg.detected_point_6)
    }
    else {
      resolved.detected_point_6 = new std_msgs.msg.Float64()
    }

    if (msg.detected_point_7 !== undefined) {
      resolved.detected_point_7 = std_msgs.msg.Float64.Resolve(msg.detected_point_7)
    }
    else {
      resolved.detected_point_7 = new std_msgs.msg.Float64()
    }

    if (msg.area !== undefined) {
      resolved.area = std_msgs.msg.Float64.Resolve(msg.area)
    }
    else {
      resolved.area = new std_msgs.msg.Float64()
    }

    return resolved;
    }
};

module.exports = image_data;
