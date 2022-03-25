; Auto-generated. Do not edit!


(cl:in-package object_detection-msg)


;//! \htmlinclude image_data.msg.html

(cl:defclass <image_data> (roslisp-msg-protocol:ros-message)
  ((detected_point_x
    :reader detected_point_x
    :initarg :detected_point_x
    :type std_msgs-msg:Int64
    :initform (cl:make-instance 'std_msgs-msg:Int64))
   (detected_point_y
    :reader detected_point_y
    :initarg :detected_point_y
    :type std_msgs-msg:Int64
    :initform (cl:make-instance 'std_msgs-msg:Int64))
   (detected_point_depth
    :reader detected_point_depth
    :initarg :detected_point_depth
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (detected_point_0
    :reader detected_point_0
    :initarg :detected_point_0
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (detected_point_1
    :reader detected_point_1
    :initarg :detected_point_1
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (detected_point_2
    :reader detected_point_2
    :initarg :detected_point_2
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (detected_point_3
    :reader detected_point_3
    :initarg :detected_point_3
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (detected_point_4
    :reader detected_point_4
    :initarg :detected_point_4
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (detected_point_5
    :reader detected_point_5
    :initarg :detected_point_5
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (detected_point_6
    :reader detected_point_6
    :initarg :detected_point_6
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (detected_point_7
    :reader detected_point_7
    :initarg :detected_point_7
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (area
    :reader area
    :initarg :area
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass image_data (<image_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <image_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'image_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_detection-msg:<image_data> is deprecated: use object_detection-msg:image_data instead.")))

(cl:ensure-generic-function 'detected_point_x-val :lambda-list '(m))
(cl:defmethod detected_point_x-val ((m <image_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection-msg:detected_point_x-val is deprecated.  Use object_detection-msg:detected_point_x instead.")
  (detected_point_x m))

(cl:ensure-generic-function 'detected_point_y-val :lambda-list '(m))
(cl:defmethod detected_point_y-val ((m <image_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection-msg:detected_point_y-val is deprecated.  Use object_detection-msg:detected_point_y instead.")
  (detected_point_y m))

(cl:ensure-generic-function 'detected_point_depth-val :lambda-list '(m))
(cl:defmethod detected_point_depth-val ((m <image_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection-msg:detected_point_depth-val is deprecated.  Use object_detection-msg:detected_point_depth instead.")
  (detected_point_depth m))

(cl:ensure-generic-function 'detected_point_0-val :lambda-list '(m))
(cl:defmethod detected_point_0-val ((m <image_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection-msg:detected_point_0-val is deprecated.  Use object_detection-msg:detected_point_0 instead.")
  (detected_point_0 m))

(cl:ensure-generic-function 'detected_point_1-val :lambda-list '(m))
(cl:defmethod detected_point_1-val ((m <image_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection-msg:detected_point_1-val is deprecated.  Use object_detection-msg:detected_point_1 instead.")
  (detected_point_1 m))

(cl:ensure-generic-function 'detected_point_2-val :lambda-list '(m))
(cl:defmethod detected_point_2-val ((m <image_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection-msg:detected_point_2-val is deprecated.  Use object_detection-msg:detected_point_2 instead.")
  (detected_point_2 m))

(cl:ensure-generic-function 'detected_point_3-val :lambda-list '(m))
(cl:defmethod detected_point_3-val ((m <image_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection-msg:detected_point_3-val is deprecated.  Use object_detection-msg:detected_point_3 instead.")
  (detected_point_3 m))

(cl:ensure-generic-function 'detected_point_4-val :lambda-list '(m))
(cl:defmethod detected_point_4-val ((m <image_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection-msg:detected_point_4-val is deprecated.  Use object_detection-msg:detected_point_4 instead.")
  (detected_point_4 m))

(cl:ensure-generic-function 'detected_point_5-val :lambda-list '(m))
(cl:defmethod detected_point_5-val ((m <image_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection-msg:detected_point_5-val is deprecated.  Use object_detection-msg:detected_point_5 instead.")
  (detected_point_5 m))

(cl:ensure-generic-function 'detected_point_6-val :lambda-list '(m))
(cl:defmethod detected_point_6-val ((m <image_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection-msg:detected_point_6-val is deprecated.  Use object_detection-msg:detected_point_6 instead.")
  (detected_point_6 m))

(cl:ensure-generic-function 'detected_point_7-val :lambda-list '(m))
(cl:defmethod detected_point_7-val ((m <image_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection-msg:detected_point_7-val is deprecated.  Use object_detection-msg:detected_point_7 instead.")
  (detected_point_7 m))

(cl:ensure-generic-function 'area-val :lambda-list '(m))
(cl:defmethod area-val ((m <image_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection-msg:area-val is deprecated.  Use object_detection-msg:area instead.")
  (area m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <image_data>) ostream)
  "Serializes a message object of type '<image_data>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'detected_point_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'detected_point_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'detected_point_depth) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'detected_point_0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'detected_point_1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'detected_point_2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'detected_point_3) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'detected_point_4) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'detected_point_5) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'detected_point_6) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'detected_point_7) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'area) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <image_data>) istream)
  "Deserializes a message object of type '<image_data>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'detected_point_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'detected_point_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'detected_point_depth) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'detected_point_0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'detected_point_1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'detected_point_2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'detected_point_3) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'detected_point_4) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'detected_point_5) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'detected_point_6) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'detected_point_7) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'area) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<image_data>)))
  "Returns string type for a message object of type '<image_data>"
  "object_detection/image_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'image_data)))
  "Returns string type for a message object of type 'image_data"
  "object_detection/image_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<image_data>)))
  "Returns md5sum for a message object of type '<image_data>"
  "0116699c5958c8f60e7002f588d8e852")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'image_data)))
  "Returns md5sum for a message object of type 'image_data"
  "0116699c5958c8f60e7002f588d8e852")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<image_data>)))
  "Returns full string definition for message of type '<image_data>"
  (cl:format cl:nil "std_msgs/Int64 detected_point_x~%std_msgs/Int64 detected_point_y~%std_msgs/Float64 detected_point_depth~%std_msgs/Float64 detected_point_0~%std_msgs/Float64 detected_point_1~%std_msgs/Float64 detected_point_2~%std_msgs/Float64 detected_point_3~%std_msgs/Float64 detected_point_4~%std_msgs/Float64 detected_point_5~%std_msgs/Float64 detected_point_6~%std_msgs/Float64 detected_point_7~%std_msgs/Float64 area~%~%================================================================================~%MSG: std_msgs/Int64~%int64 data~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'image_data)))
  "Returns full string definition for message of type 'image_data"
  (cl:format cl:nil "std_msgs/Int64 detected_point_x~%std_msgs/Int64 detected_point_y~%std_msgs/Float64 detected_point_depth~%std_msgs/Float64 detected_point_0~%std_msgs/Float64 detected_point_1~%std_msgs/Float64 detected_point_2~%std_msgs/Float64 detected_point_3~%std_msgs/Float64 detected_point_4~%std_msgs/Float64 detected_point_5~%std_msgs/Float64 detected_point_6~%std_msgs/Float64 detected_point_7~%std_msgs/Float64 area~%~%================================================================================~%MSG: std_msgs/Int64~%int64 data~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <image_data>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'detected_point_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'detected_point_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'detected_point_depth))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'detected_point_0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'detected_point_1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'detected_point_2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'detected_point_3))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'detected_point_4))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'detected_point_5))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'detected_point_6))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'detected_point_7))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'area))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <image_data>))
  "Converts a ROS message object to a list"
  (cl:list 'image_data
    (cl:cons ':detected_point_x (detected_point_x msg))
    (cl:cons ':detected_point_y (detected_point_y msg))
    (cl:cons ':detected_point_depth (detected_point_depth msg))
    (cl:cons ':detected_point_0 (detected_point_0 msg))
    (cl:cons ':detected_point_1 (detected_point_1 msg))
    (cl:cons ':detected_point_2 (detected_point_2 msg))
    (cl:cons ':detected_point_3 (detected_point_3 msg))
    (cl:cons ':detected_point_4 (detected_point_4 msg))
    (cl:cons ':detected_point_5 (detected_point_5 msg))
    (cl:cons ':detected_point_6 (detected_point_6 msg))
    (cl:cons ':detected_point_7 (detected_point_7 msg))
    (cl:cons ':area (area msg))
))
