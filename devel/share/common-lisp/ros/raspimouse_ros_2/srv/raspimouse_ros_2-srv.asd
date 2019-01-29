
(cl:in-package :asdf)

(defsystem "raspimouse_ros_2-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TimedMotion" :depends-on ("_package_TimedMotion"))
    (:file "_package_TimedMotion" :depends-on ("_package"))
  ))