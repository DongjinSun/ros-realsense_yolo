// Auto-generated. Do not edit!

// (in-package yolov3_pytorch_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class xyrange {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xmin = null;
      this.ymin = null;
      this.xmax = null;
      this.ymax = null;
    }
    else {
      if (initObj.hasOwnProperty('xmin')) {
        this.xmin = initObj.xmin
      }
      else {
        this.xmin = 0;
      }
      if (initObj.hasOwnProperty('ymin')) {
        this.ymin = initObj.ymin
      }
      else {
        this.ymin = 0;
      }
      if (initObj.hasOwnProperty('xmax')) {
        this.xmax = initObj.xmax
      }
      else {
        this.xmax = 0;
      }
      if (initObj.hasOwnProperty('ymax')) {
        this.ymax = initObj.ymax
      }
      else {
        this.ymax = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type xyrange
    // Serialize message field [xmin]
    bufferOffset = _serializer.uint16(obj.xmin, buffer, bufferOffset);
    // Serialize message field [ymin]
    bufferOffset = _serializer.uint16(obj.ymin, buffer, bufferOffset);
    // Serialize message field [xmax]
    bufferOffset = _serializer.uint16(obj.xmax, buffer, bufferOffset);
    // Serialize message field [ymax]
    bufferOffset = _serializer.uint16(obj.ymax, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type xyrange
    let len;
    let data = new xyrange(null);
    // Deserialize message field [xmin]
    data.xmin = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ymin]
    data.ymin = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [xmax]
    data.xmax = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ymax]
    data.ymax = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yolov3_pytorch_ros/xyrange';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44036a17ac3e93c59e9c4fb4fbc536ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 xmin
    uint16 ymin
    uint16 xmax
    uint16 ymax
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new xyrange(null);
    if (msg.xmin !== undefined) {
      resolved.xmin = msg.xmin;
    }
    else {
      resolved.xmin = 0
    }

    if (msg.ymin !== undefined) {
      resolved.ymin = msg.ymin;
    }
    else {
      resolved.ymin = 0
    }

    if (msg.xmax !== undefined) {
      resolved.xmax = msg.xmax;
    }
    else {
      resolved.xmax = 0
    }

    if (msg.ymax !== undefined) {
      resolved.ymax = msg.ymax;
    }
    else {
      resolved.ymax = 0
    }

    return resolved;
    }
};

module.exports = xyrange;
