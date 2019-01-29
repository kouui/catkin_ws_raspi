; Auto-generated. Do not edit!


(cl:in-package raspimouse_ros_2-msg)


;//! \htmlinclude LedValues.msg.html

(cl:defclass <LedValues> (roslisp-msg-protocol:ros-message)
  ((left_side
    :reader left_side
    :initarg :left_side
    :type cl:boolean
    :initform cl:nil)
   (left_forward
    :reader left_forward
    :initarg :left_forward
    :type cl:boolean
    :initform cl:nil)
   (right_forward
    :reader right_forward
    :initarg :right_forward
    :type cl:boolean
    :initform cl:nil)
   (right_side
    :reader right_side
    :initarg :right_side
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LedValues (<LedValues>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedValues>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedValues)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name raspimouse_ros_2-msg:<LedValues> is deprecated: use raspimouse_ros_2-msg:LedValues instead.")))

(cl:ensure-generic-function 'left_side-val :lambda-list '(m))
(cl:defmethod left_side-val ((m <LedValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raspimouse_ros_2-msg:left_side-val is deprecated.  Use raspimouse_ros_2-msg:left_side instead.")
  (left_side m))

(cl:ensure-generic-function 'left_forward-val :lambda-list '(m))
(cl:defmethod left_forward-val ((m <LedValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raspimouse_ros_2-msg:left_forward-val is deprecated.  Use raspimouse_ros_2-msg:left_forward instead.")
  (left_forward m))

(cl:ensure-generic-function 'right_forward-val :lambda-list '(m))
(cl:defmethod right_forward-val ((m <LedValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raspimouse_ros_2-msg:right_forward-val is deprecated.  Use raspimouse_ros_2-msg:right_forward instead.")
  (right_forward m))

(cl:ensure-generic-function 'right_side-val :lambda-list '(m))
(cl:defmethod right_side-val ((m <LedValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raspimouse_ros_2-msg:right_side-val is deprecated.  Use raspimouse_ros_2-msg:right_side instead.")
  (right_side m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedValues>) ostream)
  "Serializes a message object of type '<LedValues>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_side) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_forward) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_forward) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_side) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedValues>) istream)
  "Deserializes a message object of type '<LedValues>"
    (cl:setf (cl:slot-value msg 'left_side) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'left_forward) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_forward) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_side) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedValues>)))
  "Returns string type for a message object of type '<LedValues>"
  "raspimouse_ros_2/LedValues")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedValues)))
  "Returns string type for a message object of type 'LedValues"
  "raspimouse_ros_2/LedValues")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedValues>)))
  "Returns md5sum for a message object of type '<LedValues>"
  "2adb2361511085e78133ae99bfd5484a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedValues)))
  "Returns md5sum for a message object of type 'LedValues"
  "2adb2361511085e78133ae99bfd5484a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedValues>)))
  "Returns full string definition for message of type '<LedValues>"
  (cl:format cl:nil "bool left_side~%bool left_forward~%bool right_forward~%bool right_side~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedValues)))
  "Returns full string definition for message of type 'LedValues"
  (cl:format cl:nil "bool left_side~%bool left_forward~%bool right_forward~%bool right_side~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedValues>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedValues>))
  "Converts a ROS message object to a list"
  (cl:list 'LedValues
    (cl:cons ':left_side (left_side msg))
    (cl:cons ':left_forward (left_forward msg))
    (cl:cons ':right_forward (right_forward msg))
    (cl:cons ':right_side (right_side msg))
))
