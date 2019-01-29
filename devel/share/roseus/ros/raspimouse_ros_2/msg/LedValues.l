;; Auto-generated. Do not edit!


(when (boundp 'raspimouse_ros_2::LedValues)
  (if (not (find-package "RASPIMOUSE_ROS_2"))
    (make-package "RASPIMOUSE_ROS_2"))
  (shadow 'LedValues (find-package "RASPIMOUSE_ROS_2")))
(unless (find-package "RASPIMOUSE_ROS_2::LEDVALUES")
  (make-package "RASPIMOUSE_ROS_2::LEDVALUES"))

(in-package "ROS")
;;//! \htmlinclude LedValues.msg.html


(defclass raspimouse_ros_2::LedValues
  :super ros::object
  :slots (_left_side _left_forward _right_forward _right_side ))

(defmethod raspimouse_ros_2::LedValues
  (:init
   (&key
    ((:left_side __left_side) nil)
    ((:left_forward __left_forward) nil)
    ((:right_forward __right_forward) nil)
    ((:right_side __right_side) nil)
    )
   (send-super :init)
   (setq _left_side __left_side)
   (setq _left_forward __left_forward)
   (setq _right_forward __right_forward)
   (setq _right_side __right_side)
   self)
  (:left_side
   (&optional __left_side)
   (if __left_side (setq _left_side __left_side)) _left_side)
  (:left_forward
   (&optional __left_forward)
   (if __left_forward (setq _left_forward __left_forward)) _left_forward)
  (:right_forward
   (&optional __right_forward)
   (if __right_forward (setq _right_forward __right_forward)) _right_forward)
  (:right_side
   (&optional __right_side)
   (if __right_side (setq _right_side __right_side)) _right_side)
  (:serialization-length
   ()
   (+
    ;; bool _left_side
    1
    ;; bool _left_forward
    1
    ;; bool _right_forward
    1
    ;; bool _right_side
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _left_side
       (if _left_side (write-byte -1 s) (write-byte 0 s))
     ;; bool _left_forward
       (if _left_forward (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_forward
       (if _right_forward (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_side
       (if _right_side (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _left_side
     (setq _left_side (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _left_forward
     (setq _left_forward (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_forward
     (setq _right_forward (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_side
     (setq _right_side (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get raspimouse_ros_2::LedValues :md5sum-) "2adb2361511085e78133ae99bfd5484a")
(setf (get raspimouse_ros_2::LedValues :datatype-) "raspimouse_ros_2/LedValues")
(setf (get raspimouse_ros_2::LedValues :definition-)
      "bool left_side
bool left_forward
bool right_forward
bool right_side

")



(provide :raspimouse_ros_2/LedValues "2adb2361511085e78133ae99bfd5484a")


