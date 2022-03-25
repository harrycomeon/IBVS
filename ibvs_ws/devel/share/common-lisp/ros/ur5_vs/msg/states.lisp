; Auto-generated. Do not edit!


(cl:in-package ur5_vs-msg)


;//! \htmlinclude states.msg.html

(cl:defclass <states> (roslisp-msg-protocol:ros-message)
  ((p0
    :reader p0
    :initarg :p0
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (p1
    :reader p1
    :initarg :p1
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (i0
    :reader i0
    :initarg :i0
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (i1
    :reader i1
    :initarg :i1
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (d0
    :reader d0
    :initarg :d0
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (d1
    :reader d1
    :initarg :d1
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass states (<states>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <states>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'states)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur5_vs-msg:<states> is deprecated: use ur5_vs-msg:states instead.")))

(cl:ensure-generic-function 'p0-val :lambda-list '(m))
(cl:defmethod p0-val ((m <states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:p0-val is deprecated.  Use ur5_vs-msg:p0 instead.")
  (p0 m))

(cl:ensure-generic-function 'p1-val :lambda-list '(m))
(cl:defmethod p1-val ((m <states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:p1-val is deprecated.  Use ur5_vs-msg:p1 instead.")
  (p1 m))

(cl:ensure-generic-function 'i0-val :lambda-list '(m))
(cl:defmethod i0-val ((m <states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:i0-val is deprecated.  Use ur5_vs-msg:i0 instead.")
  (i0 m))

(cl:ensure-generic-function 'i1-val :lambda-list '(m))
(cl:defmethod i1-val ((m <states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:i1-val is deprecated.  Use ur5_vs-msg:i1 instead.")
  (i1 m))

(cl:ensure-generic-function 'd0-val :lambda-list '(m))
(cl:defmethod d0-val ((m <states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:d0-val is deprecated.  Use ur5_vs-msg:d0 instead.")
  (d0 m))

(cl:ensure-generic-function 'd1-val :lambda-list '(m))
(cl:defmethod d1-val ((m <states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:d1-val is deprecated.  Use ur5_vs-msg:d1 instead.")
  (d1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <states>) ostream)
  "Serializes a message object of type '<states>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'i0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'i1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'd0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'd1) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <states>) istream)
  "Deserializes a message object of type '<states>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'i0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'i1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'd0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'd1) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<states>)))
  "Returns string type for a message object of type '<states>"
  "ur5_vs/states")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'states)))
  "Returns string type for a message object of type 'states"
  "ur5_vs/states")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<states>)))
  "Returns md5sum for a message object of type '<states>"
  "2ad1edff9a04bf37f717ceef18902369")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'states)))
  "Returns md5sum for a message object of type 'states"
  "2ad1edff9a04bf37f717ceef18902369")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<states>)))
  "Returns full string definition for message of type '<states>"
  (cl:format cl:nil "std_msgs/Float64 p0~%std_msgs/Float64 p1~%std_msgs/Float64 i0~%std_msgs/Float64 i1~%std_msgs/Float64 d0~%std_msgs/Float64 d1~%~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'states)))
  "Returns full string definition for message of type 'states"
  (cl:format cl:nil "std_msgs/Float64 p0~%std_msgs/Float64 p1~%std_msgs/Float64 i0~%std_msgs/Float64 i1~%std_msgs/Float64 d0~%std_msgs/Float64 d1~%~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <states>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'i0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'i1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'd0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'd1))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <states>))
  "Converts a ROS message object to a list"
  (cl:list 'states
    (cl:cons ':p0 (p0 msg))
    (cl:cons ':p1 (p1 msg))
    (cl:cons ':i0 (i0 msg))
    (cl:cons ':i1 (i1 msg))
    (cl:cons ':d0 (d0 msg))
    (cl:cons ':d1 (d1 msg))
))
