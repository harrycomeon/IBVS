;; Auto-generated. Do not edit!


(when (boundp 'ur5_vs::joint_states)
  (if (not (find-package "UR5_VS"))
    (make-package "UR5_VS"))
  (shadow 'joint_states (find-package "UR5_VS")))
(unless (find-package "UR5_VS::JOINT_STATES")
  (make-package "UR5_VS::JOINT_STATES"))

(in-package "ROS")
;;//! \htmlinclude joint_states.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ur5_vs::joint_states
  :super ros::object
  :slots (_ang0 _ang1 _ang2 _ang3 _ang4 _ang5 _vel0 _vel1 _vel2 _vel3 _vel4 _vel5 ))

(defmethod ur5_vs::joint_states
  (:init
   (&key
    ((:ang0 __ang0) (instance std_msgs::Float64 :init))
    ((:ang1 __ang1) (instance std_msgs::Float64 :init))
    ((:ang2 __ang2) (instance std_msgs::Float64 :init))
    ((:ang3 __ang3) (instance std_msgs::Float64 :init))
    ((:ang4 __ang4) (instance std_msgs::Float64 :init))
    ((:ang5 __ang5) (instance std_msgs::Float64 :init))
    ((:vel0 __vel0) (instance std_msgs::Float64 :init))
    ((:vel1 __vel1) (instance std_msgs::Float64 :init))
    ((:vel2 __vel2) (instance std_msgs::Float64 :init))
    ((:vel3 __vel3) (instance std_msgs::Float64 :init))
    ((:vel4 __vel4) (instance std_msgs::Float64 :init))
    ((:vel5 __vel5) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _ang0 __ang0)
   (setq _ang1 __ang1)
   (setq _ang2 __ang2)
   (setq _ang3 __ang3)
   (setq _ang4 __ang4)
   (setq _ang5 __ang5)
   (setq _vel0 __vel0)
   (setq _vel1 __vel1)
   (setq _vel2 __vel2)
   (setq _vel3 __vel3)
   (setq _vel4 __vel4)
   (setq _vel5 __vel5)
   self)
  (:ang0
   (&rest __ang0)
   (if (keywordp (car __ang0))
       (send* _ang0 __ang0)
     (progn
       (if __ang0 (setq _ang0 (car __ang0)))
       _ang0)))
  (:ang1
   (&rest __ang1)
   (if (keywordp (car __ang1))
       (send* _ang1 __ang1)
     (progn
       (if __ang1 (setq _ang1 (car __ang1)))
       _ang1)))
  (:ang2
   (&rest __ang2)
   (if (keywordp (car __ang2))
       (send* _ang2 __ang2)
     (progn
       (if __ang2 (setq _ang2 (car __ang2)))
       _ang2)))
  (:ang3
   (&rest __ang3)
   (if (keywordp (car __ang3))
       (send* _ang3 __ang3)
     (progn
       (if __ang3 (setq _ang3 (car __ang3)))
       _ang3)))
  (:ang4
   (&rest __ang4)
   (if (keywordp (car __ang4))
       (send* _ang4 __ang4)
     (progn
       (if __ang4 (setq _ang4 (car __ang4)))
       _ang4)))
  (:ang5
   (&rest __ang5)
   (if (keywordp (car __ang5))
       (send* _ang5 __ang5)
     (progn
       (if __ang5 (setq _ang5 (car __ang5)))
       _ang5)))
  (:vel0
   (&rest __vel0)
   (if (keywordp (car __vel0))
       (send* _vel0 __vel0)
     (progn
       (if __vel0 (setq _vel0 (car __vel0)))
       _vel0)))
  (:vel1
   (&rest __vel1)
   (if (keywordp (car __vel1))
       (send* _vel1 __vel1)
     (progn
       (if __vel1 (setq _vel1 (car __vel1)))
       _vel1)))
  (:vel2
   (&rest __vel2)
   (if (keywordp (car __vel2))
       (send* _vel2 __vel2)
     (progn
       (if __vel2 (setq _vel2 (car __vel2)))
       _vel2)))
  (:vel3
   (&rest __vel3)
   (if (keywordp (car __vel3))
       (send* _vel3 __vel3)
     (progn
       (if __vel3 (setq _vel3 (car __vel3)))
       _vel3)))
  (:vel4
   (&rest __vel4)
   (if (keywordp (car __vel4))
       (send* _vel4 __vel4)
     (progn
       (if __vel4 (setq _vel4 (car __vel4)))
       _vel4)))
  (:vel5
   (&rest __vel5)
   (if (keywordp (car __vel5))
       (send* _vel5 __vel5)
     (progn
       (if __vel5 (setq _vel5 (car __vel5)))
       _vel5)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64 _ang0
    (send _ang0 :serialization-length)
    ;; std_msgs/Float64 _ang1
    (send _ang1 :serialization-length)
    ;; std_msgs/Float64 _ang2
    (send _ang2 :serialization-length)
    ;; std_msgs/Float64 _ang3
    (send _ang3 :serialization-length)
    ;; std_msgs/Float64 _ang4
    (send _ang4 :serialization-length)
    ;; std_msgs/Float64 _ang5
    (send _ang5 :serialization-length)
    ;; std_msgs/Float64 _vel0
    (send _vel0 :serialization-length)
    ;; std_msgs/Float64 _vel1
    (send _vel1 :serialization-length)
    ;; std_msgs/Float64 _vel2
    (send _vel2 :serialization-length)
    ;; std_msgs/Float64 _vel3
    (send _vel3 :serialization-length)
    ;; std_msgs/Float64 _vel4
    (send _vel4 :serialization-length)
    ;; std_msgs/Float64 _vel5
    (send _vel5 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64 _ang0
       (send _ang0 :serialize s)
     ;; std_msgs/Float64 _ang1
       (send _ang1 :serialize s)
     ;; std_msgs/Float64 _ang2
       (send _ang2 :serialize s)
     ;; std_msgs/Float64 _ang3
       (send _ang3 :serialize s)
     ;; std_msgs/Float64 _ang4
       (send _ang4 :serialize s)
     ;; std_msgs/Float64 _ang5
       (send _ang5 :serialize s)
     ;; std_msgs/Float64 _vel0
       (send _vel0 :serialize s)
     ;; std_msgs/Float64 _vel1
       (send _vel1 :serialize s)
     ;; std_msgs/Float64 _vel2
       (send _vel2 :serialize s)
     ;; std_msgs/Float64 _vel3
       (send _vel3 :serialize s)
     ;; std_msgs/Float64 _vel4
       (send _vel4 :serialize s)
     ;; std_msgs/Float64 _vel5
       (send _vel5 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64 _ang0
     (send _ang0 :deserialize buf ptr-) (incf ptr- (send _ang0 :serialization-length))
   ;; std_msgs/Float64 _ang1
     (send _ang1 :deserialize buf ptr-) (incf ptr- (send _ang1 :serialization-length))
   ;; std_msgs/Float64 _ang2
     (send _ang2 :deserialize buf ptr-) (incf ptr- (send _ang2 :serialization-length))
   ;; std_msgs/Float64 _ang3
     (send _ang3 :deserialize buf ptr-) (incf ptr- (send _ang3 :serialization-length))
   ;; std_msgs/Float64 _ang4
     (send _ang4 :deserialize buf ptr-) (incf ptr- (send _ang4 :serialization-length))
   ;; std_msgs/Float64 _ang5
     (send _ang5 :deserialize buf ptr-) (incf ptr- (send _ang5 :serialization-length))
   ;; std_msgs/Float64 _vel0
     (send _vel0 :deserialize buf ptr-) (incf ptr- (send _vel0 :serialization-length))
   ;; std_msgs/Float64 _vel1
     (send _vel1 :deserialize buf ptr-) (incf ptr- (send _vel1 :serialization-length))
   ;; std_msgs/Float64 _vel2
     (send _vel2 :deserialize buf ptr-) (incf ptr- (send _vel2 :serialization-length))
   ;; std_msgs/Float64 _vel3
     (send _vel3 :deserialize buf ptr-) (incf ptr- (send _vel3 :serialization-length))
   ;; std_msgs/Float64 _vel4
     (send _vel4 :deserialize buf ptr-) (incf ptr- (send _vel4 :serialization-length))
   ;; std_msgs/Float64 _vel5
     (send _vel5 :deserialize buf ptr-) (incf ptr- (send _vel5 :serialization-length))
   ;;
   self)
  )

(setf (get ur5_vs::joint_states :md5sum-) "24777d71e1429a865a561f091df16fc4")
(setf (get ur5_vs::joint_states :datatype-) "ur5_vs/joint_states")
(setf (get ur5_vs::joint_states :definition-)
      "std_msgs/Float64 ang0
std_msgs/Float64 ang1
std_msgs/Float64 ang2
std_msgs/Float64 ang3
std_msgs/Float64 ang4
std_msgs/Float64 ang5

std_msgs/Float64 vel0
std_msgs/Float64 vel1
std_msgs/Float64 vel2
std_msgs/Float64 vel3
std_msgs/Float64 vel4
std_msgs/Float64 vel5


================================================================================
MSG: std_msgs/Float64
float64 data
")



(provide :ur5_vs/joint_states "24777d71e1429a865a561f091df16fc4")


