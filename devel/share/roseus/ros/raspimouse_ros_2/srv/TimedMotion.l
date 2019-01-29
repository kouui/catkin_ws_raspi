;; Auto-generated. Do not edit!


(when (boundp 'raspimouse_ros_2::TimedMotion)
  (if (not (find-package "RASPIMOUSE_ROS_2"))
    (make-package "RASPIMOUSE_ROS_2"))
  (shadow 'TimedMotion (find-package "RASPIMOUSE_ROS_2")))
(unless (find-package "RASPIMOUSE_ROS_2::TIMEDMOTION")
  (make-package "RASPIMOUSE_ROS_2::TIMEDMOTION"))
(unless (find-package "RASPIMOUSE_ROS_2::TIMEDMOTIONREQUEST")
  (make-package "RASPIMOUSE_ROS_2::TIMEDMOTIONREQUEST"))
(unless (find-package "RASPIMOUSE_ROS_2::TIMEDMOTIONRESPONSE")
  (make-package "RASPIMOUSE_ROS_2::TIMEDMOTIONRESPONSE"))

(in-package "ROS")





(defclass raspimouse_ros_2::TimedMotionRequest
  :super ros::object
  :slots (_left_hz _right_hz _duration_ms ))

(defmethod raspimouse_ros_2::TimedMotionRequest
  (:init
   (&key
    ((:left_hz __left_hz) 0)
    ((:right_hz __right_hz) 0)
    ((:duration_ms __duration_ms) 0)
    )
   (send-super :init)
   (setq _left_hz (round __left_hz))
   (setq _right_hz (round __right_hz))
   (setq _duration_ms (round __duration_ms))
   self)
  (:left_hz
   (&optional __left_hz)
   (if __left_hz (setq _left_hz __left_hz)) _left_hz)
  (:right_hz
   (&optional __right_hz)
   (if __right_hz (setq _right_hz __right_hz)) _right_hz)
  (:duration_ms
   (&optional __duration_ms)
   (if __duration_ms (setq _duration_ms __duration_ms)) _duration_ms)
  (:serialization-length
   ()
   (+
    ;; int16 _left_hz
    2
    ;; int16 _right_hz
    2
    ;; uint32 _duration_ms
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _left_hz
       (write-word _left_hz s)
     ;; int16 _right_hz
       (write-word _right_hz s)
     ;; uint32 _duration_ms
       (write-long _duration_ms s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _left_hz
     (setq _left_hz (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _right_hz
     (setq _right_hz (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _duration_ms
     (setq _duration_ms (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass raspimouse_ros_2::TimedMotionResponse
  :super ros::object
  :slots (_success ))

(defmethod raspimouse_ros_2::TimedMotionResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass raspimouse_ros_2::TimedMotion
  :super ros::object
  :slots ())

(setf (get raspimouse_ros_2::TimedMotion :md5sum-) "d80c56ffd8662963140a2b3157f57615")
(setf (get raspimouse_ros_2::TimedMotion :datatype-) "raspimouse_ros_2/TimedMotion")
(setf (get raspimouse_ros_2::TimedMotion :request) raspimouse_ros_2::TimedMotionRequest)
(setf (get raspimouse_ros_2::TimedMotion :response) raspimouse_ros_2::TimedMotionResponse)

(defmethod raspimouse_ros_2::TimedMotionRequest
  (:response () (instance raspimouse_ros_2::TimedMotionResponse :init)))

(setf (get raspimouse_ros_2::TimedMotionRequest :md5sum-) "d80c56ffd8662963140a2b3157f57615")
(setf (get raspimouse_ros_2::TimedMotionRequest :datatype-) "raspimouse_ros_2/TimedMotionRequest")
(setf (get raspimouse_ros_2::TimedMotionRequest :definition-)
      "int16 left_hz
int16 right_hz
uint32 duration_ms
---
bool success

")

(setf (get raspimouse_ros_2::TimedMotionResponse :md5sum-) "d80c56ffd8662963140a2b3157f57615")
(setf (get raspimouse_ros_2::TimedMotionResponse :datatype-) "raspimouse_ros_2/TimedMotionResponse")
(setf (get raspimouse_ros_2::TimedMotionResponse :definition-)
      "int16 left_hz
int16 right_hz
uint32 duration_ms
---
bool success

")



(provide :raspimouse_ros_2/TimedMotion "d80c56ffd8662963140a2b3157f57615")


