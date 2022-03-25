;; Auto-generated. Do not edit!


(when (boundp 'ur5_vs::joint_vel)
  (if (not (find-package "UR5_VS"))
    (make-package "UR5_VS"))
  (shadow 'joint_vel (find-package "UR5_VS")))
(unless (find-package "UR5_VS::JOINT_VEL")
  (make-package "UR5_VS::JOINT_VEL"))

(in-package "ROS")
;;//! \htmlinclude joint_vel.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ur5_vs::joint_vel
  :super ros::object
  :slots (_vel0 _vel1 _vel2 _vel3 _vel4 _vel5 ))

(defmethod ur5_vs::joint_vel
  (:init
   (&key
    ((:vel0 __vel0) (instance std_msgs::Float64 :init))
    ((:vel1 __vel1) (instance std_msgs::Float64 :init))
    ((:vel2 __vel2) (instance std_msgs::Float64 :init))
    ((:vel3 __vel3) (instance std_msgs::Float64 :init))
    ((:vel4 __vel4) (instance std_msgs::Float64 :init))
    ((:vel5 __vel5) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _vel0 __vel0)
   (setq _vel1 __vel1)
   (setq _vel2 __vel2)
   (setq _vel3 __vel3)
   (setq _vel4 __vel4)
   (setq _vel5 __vel5)
   self)
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

(setf (get ur5_vs::joint_vel :md5sum-) "ab1015cffe235c76cd0840caa87e35b0")
(setf (get ur5_vs::joint_vel :datatype-) "ur5_vs/joint_vel")
(setf (get ur5_vs::joint_vel :definition-)
      "std_msgs/Float64 vel0
std_msgs/Float64 vel1
std_msgs/Float64 vel2
std_msgs/Float64 vel3
std_msgs/Float64 vel4
std_msgs/Float64 vel5

================================================================================
MSG: std_msgs/Float64
float64 data
")



(provide :ur5_vs/joint_vel "ab1015cffe235c76cd0840caa87e35b0")


