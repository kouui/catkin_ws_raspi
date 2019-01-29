; Auto-generated. Do not edit!


(cl:in-package raspimouse_ros_2-msg)


;//! \htmlinclude ButtonValues.msg.html

(cl:defclass <ButtonValues> (roslisp-msg-protocol:ros-message)
  ((front
    :reader front
    :initarg :front
    :type cl:boolean
    :initform cl:nil)
   (mid
    :reader mid
    :initarg :mid
    :type cl:boolean
    :initform cl:nil)
   (rear
    :reader rear
    :initarg :rear
    :type cl:boolean
    :initform cl:nil)
   (front_toggle
    :reader front_toggle
    :initarg :front_toggle
    :type cl:boolean
    :initform cl:nil)
   (mid_toggle
    :reader mid_toggle
    :initarg :mid_toggle
    :type cl:boolean
    :initform cl:nil)
   (rear_toggle
    :reader rear_toggle
    :initarg :rear_toggle
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ButtonValues (<ButtonValues>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonValues>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonValues)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name raspimouse_ros_2-msg:<ButtonValues> is deprecated: use raspimouse_ros_2-msg:ButtonValues instead.")))

(cl:ensure-generic-function 'front-val :lambda-list '(m))
(cl:defmethod front-val ((m <ButtonValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raspimouse_ros_2-msg:front-val is deprecated.  Use raspimouse_ros_2-msg:front instead.")
  (front m))

(cl:ensure-generic-function 'mid-val :lambda-list '(m))
(cl:defmethod mid-val ((m <ButtonValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raspimouse_ros_2-msg:mid-val is deprecated.  Use raspimouse_ros_2-msg:mid instead.")
  (mid m))

(cl:ensure-generic-function 'rear-val :lambda-list '(m))
(cl:defmethod rear-val ((m <ButtonValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raspimouse_ros_2-msg:rear-val is deprecated.  Use raspimouse_ros_2-msg:rear instead.")
  (rear m))

(cl:ensure-generic-function 'front_toggle-val :lambda-list '(m))
(cl:defmethod front_toggle-val ((m <ButtonValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raspimouse_ros_2-msg:front_toggle-val is deprecated.  Use raspimouse_ros_2-msg:front_toggle instead.")
  (front_toggle m))

(cl:ensure-generic-function 'mid_toggle-val :lambda-list '(m))
(cl:defmethod mid_toggle-val ((m <ButtonValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raspimouse_ros_2-msg:mid_toggle-val is deprecated.  Use raspimouse_ros_2-msg:mid_toggle instead.")
  (mid_toggle m))

(cl:ensure-generic-function 'rear_toggle-val :lambda-list '(m))
(cl:defmethod rear_toggle-val ((m <ButtonValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raspimouse_ros_2-msg:rear_toggle-val is deprecated.  Use raspimouse_ros_2-msg:rear_toggle instead.")
  (rear_toggle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonValues>) ostream)
  "Serializes a message object of type '<ButtonValues>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_toggle) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mid_toggle) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_toggle) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonValues>) istream)
  "Deserializes a message object of type '<ButtonValues>"
    (cl:setf (cl:slot-value msg 'front) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'front_toggle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mid_toggle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_toggle) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonValues>)))
  "Returns string type for a message object of type '<ButtonValues>"
  "raspimouse_ros_2/ButtonValues")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonValues)))
  "Returns string type for a message object of type 'ButtonValues"
  "raspimouse_ros_2/ButtonValues")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonValues>)))
  "Returns md5sum for a message object of type '<ButtonValues>"
  "a4d235e22ff7d8affc3de7deb89cb505")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonValues)))
  "Returns md5sum for a message object of type 'ButtonValues"
  "a4d235e22ff7d8affc3de7deb89cb505")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonValues>)))
  "Returns full string definition for message of type '<ButtonValues>"
  (cl:format cl:nil "bool front~%bool mid~%bool rear~%bool front_toggle~%bool mid_toggle~%bool rear_toggle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonValues)))
  "Returns full string definition for message of type 'ButtonValues"
  (cl:format cl:nil "bool front~%bool mid~%bool rear~%bool front_toggle~%bool mid_toggle~%bool rear_toggle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonValues>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonValues>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonValues
    (cl:cons ':front (front msg))
    (cl:cons ':mid (mid msg))
    (cl:cons ':rear (rear msg))
    (cl:cons ':front_toggle (front_toggle msg))
    (cl:cons ':mid_toggle (mid_toggle msg))
    (cl:cons ':rear_toggle (rear_toggle msg))
))
