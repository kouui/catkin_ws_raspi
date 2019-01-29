;; Auto-generated. Do not edit!


(when (boundp 'raspimouse_ros_2::ButtonValues)
  (if (not (find-package "RASPIMOUSE_ROS_2"))
    (make-package "RASPIMOUSE_ROS_2"))
  (shadow 'ButtonValues (find-package "RASPIMOUSE_ROS_2")))
(unless (find-package "RASPIMOUSE_ROS_2::BUTTONVALUES")
  (make-package "RASPIMOUSE_ROS_2::BUTTONVALUES"))

(in-package "ROS")
;;//! \htmlinclude ButtonValues.msg.html


(defclass raspimouse_ros_2::ButtonValues
  :super ros::object
  :slots (_front _mid _rear _front_toggle _mid_toggle _rear_toggle ))

(defmethod raspimouse_ros_2::ButtonValues
  (:init
   (&key
    ((:front __front) nil)
    ((:mid __mid) nil)
    ((:rear __rear) nil)
    ((:front_toggle __front_toggle) nil)
    ((:mid_toggle __mid_toggle) nil)
    ((:rear_toggle __rear_toggle) nil)
    )
   (send-super :init)
   (setq _front __front)
   (setq _mid __mid)
   (setq _rear __rear)
   (setq _front_toggle __front_toggle)
   (setq _mid_toggle __mid_toggle)
   (setq _rear_toggle __rear_toggle)
   self)
  (:front
   (&optional __front)
   (if __front (setq _front __front)) _front)
  (:mid
   (&optional __mid)
   (if __mid (setq _mid __mid)) _mid)
  (:rear
   (&optional __rear)
   (if __rear (setq _rear __rear)) _rear)
  (:front_toggle
   (&optional __front_toggle)
   (if __front_toggle (setq _front_toggle __front_toggle)) _front_toggle)
  (:mid_toggle
   (&optional __mid_toggle)
   (if __mid_toggle (setq _mid_toggle __mid_toggle)) _mid_toggle)
  (:rear_toggle
   (&optional __rear_toggle)
   (if __rear_toggle (setq _rear_toggle __rear_toggle)) _rear_toggle)
  (:serialization-length
   ()
   (+
    ;; bool _front
    1
    ;; bool _mid
    1
    ;; bool _rear
    1
    ;; bool _front_toggle
    1
    ;; bool _mid_toggle
    1
    ;; bool _rear_toggle
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _front
       (if _front (write-byte -1 s) (write-byte 0 s))
     ;; bool _mid
       (if _mid (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear
       (if _rear (write-byte -1 s) (write-byte 0 s))
     ;; bool _front_toggle
       (if _front_toggle (write-byte -1 s) (write-byte 0 s))
     ;; bool _mid_toggle
       (if _mid_toggle (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_toggle
       (if _rear_toggle (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _front
     (setq _front (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mid
     (setq _mid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear
     (setq _rear (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _front_toggle
     (setq _front_toggle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mid_toggle
     (setq _mid_toggle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_toggle
     (setq _rear_toggle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get raspimouse_ros_2::ButtonValues :md5sum-) "a4d235e22ff7d8affc3de7deb89cb505")
(setf (get raspimouse_ros_2::ButtonValues :datatype-) "raspimouse_ros_2/ButtonValues")
(setf (get raspimouse_ros_2::ButtonValues :definition-)
      "bool front
bool mid
bool rear
bool front_toggle
bool mid_toggle
bool rear_toggle

")



(provide :raspimouse_ros_2/ButtonValues "a4d235e22ff7d8affc3de7deb89cb505")


