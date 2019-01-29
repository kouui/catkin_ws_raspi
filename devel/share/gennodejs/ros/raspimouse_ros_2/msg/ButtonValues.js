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

class ButtonValues {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.front = null;
      this.mid = null;
      this.rear = null;
      this.front_toggle = null;
      this.mid_toggle = null;
      this.rear_toggle = null;
    }
    else {
      if (initObj.hasOwnProperty('front')) {
        this.front = initObj.front
      }
      else {
        this.front = false;
      }
      if (initObj.hasOwnProperty('mid')) {
        this.mid = initObj.mid
      }
      else {
        this.mid = false;
      }
      if (initObj.hasOwnProperty('rear')) {
        this.rear = initObj.rear
      }
      else {
        this.rear = false;
      }
      if (initObj.hasOwnProperty('front_toggle')) {
        this.front_toggle = initObj.front_toggle
      }
      else {
        this.front_toggle = false;
      }
      if (initObj.hasOwnProperty('mid_toggle')) {
        this.mid_toggle = initObj.mid_toggle
      }
      else {
        this.mid_toggle = false;
      }
      if (initObj.hasOwnProperty('rear_toggle')) {
        this.rear_toggle = initObj.rear_toggle
      }
      else {
        this.rear_toggle = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ButtonValues
    // Serialize message field [front]
    bufferOffset = _serializer.bool(obj.front, buffer, bufferOffset);
    // Serialize message field [mid]
    bufferOffset = _serializer.bool(obj.mid, buffer, bufferOffset);
    // Serialize message field [rear]
    bufferOffset = _serializer.bool(obj.rear, buffer, bufferOffset);
    // Serialize message field [front_toggle]
    bufferOffset = _serializer.bool(obj.front_toggle, buffer, bufferOffset);
    // Serialize message field [mid_toggle]
    bufferOffset = _serializer.bool(obj.mid_toggle, buffer, bufferOffset);
    // Serialize message field [rear_toggle]
    bufferOffset = _serializer.bool(obj.rear_toggle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonValues
    let len;
    let data = new ButtonValues(null);
    // Deserialize message field [front]
    data.front = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mid]
    data.mid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear]
    data.rear = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [front_toggle]
    data.front_toggle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mid_toggle]
    data.mid_toggle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear_toggle]
    data.rear_toggle = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'raspimouse_ros_2/ButtonValues';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a4d235e22ff7d8affc3de7deb89cb505';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool front
    bool mid
    bool rear
    bool front_toggle
    bool mid_toggle
    bool rear_toggle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ButtonValues(null);
    if (msg.front !== undefined) {
      resolved.front = msg.front;
    }
    else {
      resolved.front = false
    }

    if (msg.mid !== undefined) {
      resolved.mid = msg.mid;
    }
    else {
      resolved.mid = false
    }

    if (msg.rear !== undefined) {
      resolved.rear = msg.rear;
    }
    else {
      resolved.rear = false
    }

    if (msg.front_toggle !== undefined) {
      resolved.front_toggle = msg.front_toggle;
    }
    else {
      resolved.front_toggle = false
    }

    if (msg.mid_toggle !== undefined) {
      resolved.mid_toggle = msg.mid_toggle;
    }
    else {
      resolved.mid_toggle = false
    }

    if (msg.rear_toggle !== undefined) {
      resolved.rear_toggle = msg.rear_toggle;
    }
    else {
      resolved.rear_toggle = false
    }

    return resolved;
    }
};

module.exports = ButtonValues;
