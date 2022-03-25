;; Auto-generated. Do not edit!


(when (boundp 'object_detection::image_data)
  (if (not (find-package "OBJECT_DETECTION"))
    (make-package "OBJECT_DETECTION"))
  (shadow 'image_data (find-package "OBJECT_DETECTION")))
(unless (find-package "OBJECT_DETECTION::IMAGE_DATA")
  (make-package "OBJECT_DETECTION::IMAGE_DATA"))

(in-package "ROS")
;;//! \htmlinclude image_data.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass object_detection::image_data
  :super ros::object
  :slots (_detected_point_x _detected_point_y _detected_point_depth _detected_point_0 _detected_point_1 _detected_point_2 _detected_point_3 _detected_point_4 _detected_point_5 _detected_point_6 _detected_point_7 _area ))

(defmethod object_detection::image_data
  (:init
   (&key
    ((:detected_point_x __detected_point_x) (instance std_msgs::Int64 :init))
    ((:detected_point_y __detected_point_y) (instance std_msgs::Int64 :init))
    ((:detected_point_depth __detected_point_depth) (instance std_msgs::Float64 :init))
    ((:detected_point_0 __detected_point_0) (instance std_msgs::Float64 :init))
    ((:detected_point_1 __detected_point_1) (instance std_msgs::Float64 :init))
    ((:detected_point_2 __detected_point_2) (instance std_msgs::Float64 :init))
    ((:detected_point_3 __detected_point_3) (instance std_msgs::Float64 :init))
    ((:detected_point_4 __detected_point_4) (instance std_msgs::Float64 :init))
    ((:detected_point_5 __detected_point_5) (instance std_msgs::Float64 :init))
    ((:detected_point_6 __detected_point_6) (instance std_msgs::Float64 :init))
    ((:detected_point_7 __detected_point_7) (instance std_msgs::Float64 :init))
    ((:area __area) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _detected_point_x __detected_point_x)
   (setq _detected_point_y __detected_point_y)
   (setq _detected_point_depth __detected_point_depth)
   (setq _detected_point_0 __detected_point_0)
   (setq _detected_point_1 __detected_point_1)
   (setq _detected_point_2 __detected_point_2)
   (setq _detected_point_3 __detected_point_3)
   (setq _detected_point_4 __detected_point_4)
   (setq _detected_point_5 __detected_point_5)
   (setq _detected_point_6 __detected_point_6)
   (setq _detected_point_7 __detected_point_7)
   (setq _area __area)
   self)
  (:detected_point_x
   (&rest __detected_point_x)
   (if (keywordp (car __detected_point_x))
       (send* _detected_point_x __detected_point_x)
     (progn
       (if __detected_point_x (setq _detected_point_x (car __detected_point_x)))
       _detected_point_x)))
  (:detected_point_y
   (&rest __detected_point_y)
   (if (keywordp (car __detected_point_y))
       (send* _detected_point_y __detected_point_y)
     (progn
       (if __detected_point_y (setq _detected_point_y (car __detected_point_y)))
       _detected_point_y)))
  (:detected_point_depth
   (&rest __detected_point_depth)
   (if (keywordp (car __detected_point_depth))
       (send* _detected_point_depth __detected_point_depth)
     (progn
       (if __detected_point_depth (setq _detected_point_depth (car __detected_point_depth)))
       _detected_point_depth)))
  (:detected_point_0
   (&rest __detected_point_0)
   (if (keywordp (car __detected_point_0))
       (send* _detected_point_0 __detected_point_0)
     (progn
       (if __detected_point_0 (setq _detected_point_0 (car __detected_point_0)))
       _detected_point_0)))
  (:detected_point_1
   (&rest __detected_point_1)
   (if (keywordp (car __detected_point_1))
       (send* _detected_point_1 __detected_point_1)
     (progn
       (if __detected_point_1 (setq _detected_point_1 (car __detected_point_1)))
       _detected_point_1)))
  (:detected_point_2
   (&rest __detected_point_2)
   (if (keywordp (car __detected_point_2))
       (send* _detected_point_2 __detected_point_2)
     (progn
       (if __detected_point_2 (setq _detected_point_2 (car __detected_point_2)))
       _detected_point_2)))
  (:detected_point_3
   (&rest __detected_point_3)
   (if (keywordp (car __detected_point_3))
       (send* _detected_point_3 __detected_point_3)
     (progn
       (if __detected_point_3 (setq _detected_point_3 (car __detected_point_3)))
       _detected_point_3)))
  (:detected_point_4
   (&rest __detected_point_4)
   (if (keywordp (car __detected_point_4))
       (send* _detected_point_4 __detected_point_4)
     (progn
       (if __detected_point_4 (setq _detected_point_4 (car __detected_point_4)))
       _detected_point_4)))
  (:detected_point_5
   (&rest __detected_point_5)
   (if (keywordp (car __detected_point_5))
       (send* _detected_point_5 __detected_point_5)
     (progn
       (if __detected_point_5 (setq _detected_point_5 (car __detected_point_5)))
       _detected_point_5)))
  (:detected_point_6
   (&rest __detected_point_6)
   (if (keywordp (car __detected_point_6))
       (send* _detected_point_6 __detected_point_6)
     (progn
       (if __detected_point_6 (setq _detected_point_6 (car __detected_point_6)))
       _detected_point_6)))
  (:detected_point_7
   (&rest __detected_point_7)
   (if (keywordp (car __detected_point_7))
       (send* _detected_point_7 __detected_point_7)
     (progn
       (if __detected_point_7 (setq _detected_point_7 (car __detected_point_7)))
       _detected_point_7)))
  (:area
   (&rest __area)
   (if (keywordp (car __area))
       (send* _area __area)
     (progn
       (if __area (setq _area (car __area)))
       _area)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int64 _detected_point_x
    (send _detected_point_x :serialization-length)
    ;; std_msgs/Int64 _detected_point_y
    (send _detected_point_y :serialization-length)
    ;; std_msgs/Float64 _detected_point_depth
    (send _detected_point_depth :serialization-length)
    ;; std_msgs/Float64 _detected_point_0
    (send _detected_point_0 :serialization-length)
    ;; std_msgs/Float64 _detected_point_1
    (send _detected_point_1 :serialization-length)
    ;; std_msgs/Float64 _detected_point_2
    (send _detected_point_2 :serialization-length)
    ;; std_msgs/Float64 _detected_point_3
    (send _detected_point_3 :serialization-length)
    ;; std_msgs/Float64 _detected_point_4
    (send _detected_point_4 :serialization-length)
    ;; std_msgs/Float64 _detected_point_5
    (send _detected_point_5 :serialization-length)
    ;; std_msgs/Float64 _detected_point_6
    (send _detected_point_6 :serialization-length)
    ;; std_msgs/Float64 _detected_point_7
    (send _detected_point_7 :serialization-length)
    ;; std_msgs/Float64 _area
    (send _area :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int64 _detected_point_x
       (send _detected_point_x :serialize s)
     ;; std_msgs/Int64 _detected_point_y
       (send _detected_point_y :serialize s)
     ;; std_msgs/Float64 _detected_point_depth
       (send _detected_point_depth :serialize s)
     ;; std_msgs/Float64 _detected_point_0
       (send _detected_point_0 :serialize s)
     ;; std_msgs/Float64 _detected_point_1
       (send _detected_point_1 :serialize s)
     ;; std_msgs/Float64 _detected_point_2
       (send _detected_point_2 :serialize s)
     ;; std_msgs/Float64 _detected_point_3
       (send _detected_point_3 :serialize s)
     ;; std_msgs/Float64 _detected_point_4
       (send _detected_point_4 :serialize s)
     ;; std_msgs/Float64 _detected_point_5
       (send _detected_point_5 :serialize s)
     ;; std_msgs/Float64 _detected_point_6
       (send _detected_point_6 :serialize s)
     ;; std_msgs/Float64 _detected_point_7
       (send _detected_point_7 :serialize s)
     ;; std_msgs/Float64 _area
       (send _area :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int64 _detected_point_x
     (send _detected_point_x :deserialize buf ptr-) (incf ptr- (send _detected_point_x :serialization-length))
   ;; std_msgs/Int64 _detected_point_y
     (send _detected_point_y :deserialize buf ptr-) (incf ptr- (send _detected_point_y :serialization-length))
   ;; std_msgs/Float64 _detected_point_depth
     (send _detected_point_depth :deserialize buf ptr-) (incf ptr- (send _detected_point_depth :serialization-length))
   ;; std_msgs/Float64 _detected_point_0
     (send _detected_point_0 :deserialize buf ptr-) (incf ptr- (send _detected_point_0 :serialization-length))
   ;; std_msgs/Float64 _detected_point_1
     (send _detected_point_1 :deserialize buf ptr-) (incf ptr- (send _detected_point_1 :serialization-length))
   ;; std_msgs/Float64 _detected_point_2
     (send _detected_point_2 :deserialize buf ptr-) (incf ptr- (send _detected_point_2 :serialization-length))
   ;; std_msgs/Float64 _detected_point_3
     (send _detected_point_3 :deserialize buf ptr-) (incf ptr- (send _detected_point_3 :serialization-length))
   ;; std_msgs/Float64 _detected_point_4
     (send _detected_point_4 :deserialize buf ptr-) (incf ptr- (send _detected_point_4 :serialization-length))
   ;; std_msgs/Float64 _detected_point_5
     (send _detected_point_5 :deserialize buf ptr-) (incf ptr- (send _detected_point_5 :serialization-length))
   ;; std_msgs/Float64 _detected_point_6
     (send _detected_point_6 :deserialize buf ptr-) (incf ptr- (send _detected_point_6 :serialization-length))
   ;; std_msgs/Float64 _detected_point_7
     (send _detected_point_7 :deserialize buf ptr-) (incf ptr- (send _detected_point_7 :serialization-length))
   ;; std_msgs/Float64 _area
     (send _area :deserialize buf ptr-) (incf ptr- (send _area :serialization-length))
   ;;
   self)
  )

(setf (get object_detection::image_data :md5sum-) "0116699c5958c8f60e7002f588d8e852")
(setf (get object_detection::image_data :datatype-) "object_detection/image_data")
(setf (get object_detection::image_data :definition-)
      "std_msgs/Int64 detected_point_x
std_msgs/Int64 detected_point_y
std_msgs/Float64 detected_point_depth
std_msgs/Float64 detected_point_0
std_msgs/Float64 detected_point_1
std_msgs/Float64 detected_point_2
std_msgs/Float64 detected_point_3
std_msgs/Float64 detected_point_4
std_msgs/Float64 detected_point_5
std_msgs/Float64 detected_point_6
std_msgs/Float64 detected_point_7
std_msgs/Float64 area

================================================================================
MSG: std_msgs/Int64
int64 data
================================================================================
MSG: std_msgs/Float64
float64 data
")



(provide :object_detection/image_data "0116699c5958c8f60e7002f588d8e852")


