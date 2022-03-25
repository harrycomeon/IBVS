
(cl:in-package :asdf)

(defsystem "ur5_vs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "joint_angles" :depends-on ("_package_joint_angles"))
    (:file "_package_joint_angles" :depends-on ("_package"))
    (:file "joint_states" :depends-on ("_package_joint_states"))
    (:file "_package_joint_states" :depends-on ("_package"))
    (:file "joint_vel" :depends-on ("_package_joint_vel"))
    (:file "_package_joint_vel" :depends-on ("_package"))
    (:file "sim_variables" :depends-on ("_package_sim_variables"))
    (:file "_package_sim_variables" :depends-on ("_package"))
    (:file "sim_variables2" :depends-on ("_package_sim_variables2"))
    (:file "_package_sim_variables2" :depends-on ("_package"))
    (:file "states" :depends-on ("_package_states"))
    (:file "_package_states" :depends-on ("_package"))
  ))