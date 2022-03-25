
(cl:in-package :asdf)

(defsystem "object_detection-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "image_data" :depends-on ("_package_image_data"))
    (:file "_package_image_data" :depends-on ("_package"))
  ))