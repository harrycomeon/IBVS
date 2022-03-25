;; Auto-generated. Do not edit!


(when (boundp 'ur5_vs::sim_variables)
  (if (not (find-package "UR5_VS"))
    (make-package "UR5_VS"))
  (shadow 'sim_variables (find-package "UR5_VS")))
(unless (find-package "UR5_VS::SIM_VARIABLES")
  (make-package "UR5_VS::SIM_VARIABLES"))

(in-package "ROS")
;;//! \htmlinclude sim_variables.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ur5_vs::sim_variables
  :super ros::object
  :slots (_sim_enable _reconfigure ))

(defmethod ur5_vs::sim_variables
  (:init
   (&key
    ((:sim_enable __sim_enable) (instance std_msgs::Bool :init))
    ((:reconfigure __reconfigure) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _sim_enable __sim_enable)
   (setq _reconfigure __reconfigure)
   self)
  (:sim_enable
   (&rest __sim_enable)
   (if (keywordp (car __sim_enable))
       (send* _sim_enable __sim_enable)
     (progn
       (if __sim_enable (setq _sim_enable (car __sim_enable)))
       _sim_enable)))
  (:reconfigure
   (&rest __reconfigure)
   (if (keywordp (car __reconfigure))
       (send* _reconfigure __reconfigure)
     (progn
       (if __reconfigure (setq _reconfigure (car __reconfigure)))
       _reconfigure)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _sim_enable
    (send _sim_enable :serialization-length)
    ;; std_msgs/Bool _reconfigure
    (send _reconfigure :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _sim_enable
       (send _sim_enable :serialize s)
     ;; std_msgs/Bool _reconfigure
       (send _reconfigure :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _sim_enable
     (send _sim_enable :deserialize buf ptr-) (incf ptr- (send _sim_enable :serialization-length))
   ;; std_msgs/Bool _reconfigure
     (send _reconfigure :deserialize buf ptr-) (incf ptr- (send _reconfigure :serialization-length))
   ;;
   self)
  )

(setf (get ur5_vs::sim_variables :md5sum-) "ee6670fc044bef98d1a25a214ff7cacc")
(setf (get ur5_vs::sim_variables :datatype-) "ur5_vs/sim_variables")
(setf (get ur5_vs::sim_variables :definition-)
      "std_msgs/Bool sim_enable
std_msgs/Bool reconfigure


================================================================================
MSG: std_msgs/Bool
bool data
")



(provide :ur5_vs/sim_variables "ee6670fc044bef98d1a25a214ff7cacc")


