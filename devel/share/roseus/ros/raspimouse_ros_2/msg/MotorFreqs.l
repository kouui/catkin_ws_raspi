;; Auto-generated. Do not edit!


(when (boundp 'raspimouse_ros_2::MotorFreqs)
  (if (not (find-package "RASPIMOUSE_ROS_2"))
    (make-package "RASPIMOUSE_ROS_2"))
  (shadow 'MotorFreqs (find-package "RASPIMOUSE_ROS_2")))
(unless (find-package "RASPIMOUSE_ROS_2::MOTORFREQS")
  (make-package "RASPIMOUSE_ROS_2::MOTORFREQS"))

(in-package "ROS")
;;//! \htmlinclude MotorFreqs.msg.html


(defclass raspimouse_ros_2::MotorFreqs
  :super ros::object
  :slots (_left_hz _right_hz ))

(defmethod raspimouse_ros_2::MotorFreqs
  (:init
   (&key
    ((:left_hz __left_hz) 0)
    ((:right_hz __right_hz) 0)
    )
   (send-super :init)
   (setq _left_hz (round __left_hz))
   (setq _right_hz (round __right_hz))
   self)
  (:left_hz
   (&optional __left_hz)
   (if __left_hz (setq _left_hz __left_hz)) _left_hz)
  (:right_hz
   (&optional __right_hz)
   (if __right_hz (setq _right_hz __right_hz)) _right_hz)
  (:serialization-length
   ()
   (+
    ;; int16 _left_hz
    2
    ;; int16 _right_hz
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _left_hz
       (write-word _left_hz s)
     ;; int16 _right_hz
       (write-word _right_hz s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _left_hz
     (setq _left_hz (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _right_hz
     (setq _right_hz (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get raspimouse_ros_2::MotorFreqs :md5sum-) "921a8bc2b9eda90f5d3ca620a3549e13")
(setf (get raspimouse_ros_2::MotorFreqs :datatype-) "raspimouse_ros_2/MotorFreqs")
(setf (get raspimouse_ros_2::MotorFreqs :definition-)
      "int16 left_hz
int16 right_hz

")



(provide :raspimouse_ros_2/MotorFreqs "921a8bc2b9eda90f5d3ca620a3549e13")


