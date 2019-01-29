// Auto-generated. Do not edit!

// (in-package raspimouse_ros_2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LedValues {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_side = null;
      this.left_forward = null;
      this.right_forward = null;
      this.right_side = null;
    }
    else {
      if (initObj.hasOwnProperty('left_side')) {
        this.left_side = initObj.left_side
      }
      else {
        this.left_side = false;
      }
      if (initObj.hasOwnProperty('left_forward')) {
        this.left_forward = initObj.left_forward
      }
      else {
        this.left_forward = false;
      }
      if (initObj.hasOwnProperty('right_forward')) {
        this.right_forward = initObj.right_forward
      }
      else {
        this.right_forward = false;
      }
      if (initObj.hasOwnProperty('right_side')) {
        this.right_side = initObj.right_side
      }
      else {
        this.right_side = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedValues
    // Serialize message field [left_side]
    bufferOffset = _serializer.bool(obj.left_side, buffer, bufferOffset);
    // Serialize message field [left_forward]
    bufferOffset = _serializer.bool(obj.left_forward, buffer, bufferOffset);
    // Serialize message field [right_forward]
    bufferOffset = _serializer.bool(obj.right_forward, buffer, bufferOffset);
    // Serialize message field [right_side]
    bufferOffset = _serializer.bool(obj.right_side, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedValues
    let len;
    let data = new LedValues(null);
    // Deserialize message field [left_side]
    data.left_side = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [left_forward]
    data.left_forward = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_forward]
    data.right_forward = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_side]
    data.right_side = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'raspimouse_ros_2/LedValues';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2adb2361511085e78133ae99bfd5484a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool left_side
    bool left_forward
    bool right_forward
    bool right_side
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedValues(null);
    if (msg.left_side !== undefined) {
      resolved.left_side = msg.left_side;
    }
    else {
      resolved.left_side = false
    }

    if (msg.left_forward !== undefined) {
      resolved.left_forward = msg.left_forward;
    }
    else {
      resolved.left_forward = false
    }

    if (msg.right_forward !== undefined) {
      resolved.right_forward = msg.right_forward;
    }
    else {
      resolved.right_forward = false
    }

    if (msg.right_side !== undefined) {
      resolved.right_side = msg.right_side;
    }
    else {
      resolved.right_side = false
    }

    return resolved;
    }
};

module.exports = LedValues;
