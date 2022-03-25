; Auto-generated. Do not edit!


(cl:in-package ur5_vs-msg)


;//! \htmlinclude joint_angles.msg.html

(cl:defclass <joint_angles> (roslisp-msg-protocol:ros-message)
  ((ang0
    :reader ang0
    :initarg :ang0
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (ang1
    :reader ang1
    :initarg :ang1
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (ang2
    :reader ang2
    :initarg :ang2
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (ang3
    :reader ang3
    :initarg :ang3
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (ang4
    :reader ang4
    :initarg :ang4
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (ang5
    :reader ang5
    :initarg :ang5
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass joint_angles (<joint_angles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <joint_angles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'joint_angles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur5_vs-msg:<joint_angles> is deprecated: use ur5_vs-msg:joint_angles instead.")))

(cl:ensure-generic-function 'ang0-val :lambda-list '(m))
(cl:defmethod ang0-val ((m <joint_angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:ang0-val is deprecated.  Use ur5_vs-msg:ang0 instead.")
  (ang0 m))

(cl:ensure-generic-function 'ang1-val :lambda-list '(m))
(cl:defmethod ang1-val ((m <joint_angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:ang1-val is deprecated.  Use ur5_vs-msg:ang1 instead.")
  (ang1 m))

(cl:ensure-generic-function 'ang2-val :lambda-list '(m))
(cl:defmethod ang2-val ((m <joint_angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:ang2-val is deprecated.  Use ur5_vs-msg:ang2 instead.")
  (ang2 m))

(cl:ensure-generic-function 'ang3-val :lambda-list '(m))
(cl:defmethod ang3-val ((m <joint_angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:ang3-val is deprecated.  Use ur5_vs-msg:ang3 instead.")
  (ang3 m))

(cl:ensure-generic-function 'ang4-val :lambda-list '(m))
(cl:defmethod ang4-val ((m <joint_angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:ang4-val is deprecated.  Use ur5_vs-msg:ang4 instead.")
  (ang4 m))

(cl:ensure-generic-function 'ang5-val :lambda-list '(m))
(cl:defmethod ang5-val ((m <joint_angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:ang5-val is deprecated.  Use ur5_vs-msg:ang5 instead.")
  (ang5 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <joint_angles>) ostream)
  "Serializes a message object of type '<joint_angles>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ang0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ang1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ang2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ang3) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ang4) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ang5) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <joint_angles>) istream)
  "Deserializes a message object of type '<joint_angles>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ang0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ang1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ang2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ang3) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ang4) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ang5) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<joint_angles>)))
  "Returns string type for a message object of type '<joint_angles>"
  "ur5_vs/joint_angles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'joint_angles)))
  "Returns string type for a message object of type 'joint_angles"
  "ur5_vs/joint_angles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<joint_angles>)))
  "Returns md5sum for a message object of type '<joint_angles>"
  "64ff27ecf58f5c4afd7b139766a662b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'joint_angles)))
  "Returns md5sum for a message object of type 'joint_angles"
  "64ff27ecf58f5c4afd7b139766a662b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<joint_angles>)))
  "Returns full string definition for message of type '<joint_angles>"
  (cl:format cl:nil "std_msgs/Float64 ang0~%std_msgs/Float64 ang1~%std_msgs/Float64 ang2~%std_msgs/Float64 ang3~%std_msgs/Float64 ang4~%std_msgs/Float64 ang5~%~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'joint_angles)))
  "Returns full string definition for message of type 'joint_angles"
  (cl:format cl:nil "std_msgs/Float64 ang0~%std_msgs/Float64 ang1~%std_msgs/Float64 ang2~%std_msgs/Float64 ang3~%std_msgs/Float64 ang4~%std_msgs/Float64 ang5~%~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <joint_angles>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ang0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ang1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ang2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ang3))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ang4))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ang5))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <joint_angles>))
  "Converts a ROS message object to a list"
  (cl:list 'joint_angles
    (cl:cons ':ang0 (ang0 msg))
    (cl:cons ':ang1 (ang1 msg))
    (cl:cons ':ang2 (ang2 msg))
    (cl:cons ':ang3 (ang3 msg))
    (cl:cons ':ang4 (ang4 msg))
    (cl:cons ':ang5 (ang5 msg))
))
