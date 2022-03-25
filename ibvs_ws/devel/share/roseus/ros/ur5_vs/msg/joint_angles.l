;; Auto-generated. Do not edit!


(when (boundp 'ur5_vs::joint_angles)
  (if (not (find-package "UR5_VS"))
    (make-package "UR5_VS"))
  (shadow 'joint_angles (find-package "UR5_VS")))
(unless (find-package "UR5_VS::JOINT_ANGLES")
  (make-package "UR5_VS::JOINT_ANGLES"))

(in-package "ROS")
;;//! \htmlinclude joint_angles.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ur5_vs::joint_angles
  :super ros::object
  :slots (_ang0 _ang1 _ang2 _ang3 _ang4 _ang5 ))

(defmethod ur5_vs::joint_angles
  (:init
   (&key
    ((:ang0 __ang0) (instance std_msgs::Float64 :init))
    ((:ang1 __ang1) (instance std_msgs::Float64 :init))
    ((:ang2 __ang2) (instance std_msgs::Float64 :init))
    ((:ang3 __ang3) (instance std_msgs::Float64 :init))
    ((:ang4 __ang4) (instance std_msgs::Float64 :init))
    ((:ang5 __ang5) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _ang0 __ang0)
   (setq _ang1 __ang1)
   (setq _ang2 __ang2)
   (setq _ang3 __ang3)
   (setq _ang4 __ang4)
   (setq _ang5 __ang5)
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
   ;;
   self)
  )

(setf (get ur5_vs::joint_angles :md5sum-) "64ff27ecf58f5c4afd7b139766a662b7")
(setf (get ur5_vs::joint_angles :datatype-) "ur5_vs/joint_angles")
(setf (get ur5_vs::joint_angles :definition-)
      "std_msgs/Float64 ang0
std_msgs/Float64 ang1
std_msgs/Float64 ang2
std_msgs/Float64 ang3
std_msgs/Float64 ang4
std_msgs/Float64 ang5


================================================================================
MSG: std_msgs/Float64
float64 data
")



(provide :ur5_vs/joint_angles "64ff27ecf58f5c4afd7b139766a662b7")


