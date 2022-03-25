;; Auto-generated. Do not edit!


(when (boundp 'ur5_vs::states)
  (if (not (find-package "UR5_VS"))
    (make-package "UR5_VS"))
  (shadow 'states (find-package "UR5_VS")))
(unless (find-package "UR5_VS::STATES")
  (make-package "UR5_VS::STATES"))

(in-package "ROS")
;;//! \htmlinclude states.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ur5_vs::states
  :super ros::object
  :slots (_p0 _p1 _i0 _i1 _d0 _d1 ))

(defmethod ur5_vs::states
  (:init
   (&key
    ((:p0 __p0) (instance std_msgs::Float64 :init))
    ((:p1 __p1) (instance std_msgs::Float64 :init))
    ((:i0 __i0) (instance std_msgs::Float64 :init))
    ((:i1 __i1) (instance std_msgs::Float64 :init))
    ((:d0 __d0) (instance std_msgs::Float64 :init))
    ((:d1 __d1) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _p0 __p0)
   (setq _p1 __p1)
   (setq _i0 __i0)
   (setq _i1 __i1)
   (setq _d0 __d0)
   (setq _d1 __d1)
   self)
  (:p0
   (&rest __p0)
   (if (keywordp (car __p0))
       (send* _p0 __p0)
     (progn
       (if __p0 (setq _p0 (car __p0)))
       _p0)))
  (:p1
   (&rest __p1)
   (if (keywordp (car __p1))
       (send* _p1 __p1)
     (progn
       (if __p1 (setq _p1 (car __p1)))
       _p1)))
  (:i0
   (&rest __i0)
   (if (keywordp (car __i0))
       (send* _i0 __i0)
     (progn
       (if __i0 (setq _i0 (car __i0)))
       _i0)))
  (:i1
   (&rest __i1)
   (if (keywordp (car __i1))
       (send* _i1 __i1)
     (progn
       (if __i1 (setq _i1 (car __i1)))
       _i1)))
  (:d0
   (&rest __d0)
   (if (keywordp (car __d0))
       (send* _d0 __d0)
     (progn
       (if __d0 (setq _d0 (car __d0)))
       _d0)))
  (:d1
   (&rest __d1)
   (if (keywordp (car __d1))
       (send* _d1 __d1)
     (progn
       (if __d1 (setq _d1 (car __d1)))
       _d1)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64 _p0
    (send _p0 :serialization-length)
    ;; std_msgs/Float64 _p1
    (send _p1 :serialization-length)
    ;; std_msgs/Float64 _i0
    (send _i0 :serialization-length)
    ;; std_msgs/Float64 _i1
    (send _i1 :serialization-length)
    ;; std_msgs/Float64 _d0
    (send _d0 :serialization-length)
    ;; std_msgs/Float64 _d1
    (send _d1 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64 _p0
       (send _p0 :serialize s)
     ;; std_msgs/Float64 _p1
       (send _p1 :serialize s)
     ;; std_msgs/Float64 _i0
       (send _i0 :serialize s)
     ;; std_msgs/Float64 _i1
       (send _i1 :serialize s)
     ;; std_msgs/Float64 _d0
       (send _d0 :serialize s)
     ;; std_msgs/Float64 _d1
       (send _d1 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64 _p0
     (send _p0 :deserialize buf ptr-) (incf ptr- (send _p0 :serialization-length))
   ;; std_msgs/Float64 _p1
     (send _p1 :deserialize buf ptr-) (incf ptr- (send _p1 :serialization-length))
   ;; std_msgs/Float64 _i0
     (send _i0 :deserialize buf ptr-) (incf ptr- (send _i0 :serialization-length))
   ;; std_msgs/Float64 _i1
     (send _i1 :deserialize buf ptr-) (incf ptr- (send _i1 :serialization-length))
   ;; std_msgs/Float64 _d0
     (send _d0 :deserialize buf ptr-) (incf ptr- (send _d0 :serialization-length))
   ;; std_msgs/Float64 _d1
     (send _d1 :deserialize buf ptr-) (incf ptr- (send _d1 :serialization-length))
   ;;
   self)
  )

(setf (get ur5_vs::states :md5sum-) "2ad1edff9a04bf37f717ceef18902369")
(setf (get ur5_vs::states :datatype-) "ur5_vs/states")
(setf (get ur5_vs::states :definition-)
      "std_msgs/Float64 p0
std_msgs/Float64 p1
std_msgs/Float64 i0
std_msgs/Float64 i1
std_msgs/Float64 d0
std_msgs/Float64 d1


================================================================================
MSG: std_msgs/Float64
float64 data
")



(provide :ur5_vs/states "2ad1edff9a04bf37f717ceef18902369")


