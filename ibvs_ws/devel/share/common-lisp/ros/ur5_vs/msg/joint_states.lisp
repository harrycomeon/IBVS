; Auto-generated. Do not edit!


(cl:in-package ur5_vs-msg)


;//! \htmlinclude joint_states.msg.html

(cl:defclass <joint_states> (roslisp-msg-protocol:ros-message)
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
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (vel0
    :reader vel0
    :initarg :vel0
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (vel1
    :reader vel1
    :initarg :vel1
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (vel2
    :reader vel2
    :initarg :vel2
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (vel3
    :reader vel3
    :initarg :vel3
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (vel4
    :reader vel4
    :initarg :vel4
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (vel5
    :reader vel5
    :initarg :vel5
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass joint_states (<joint_states>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <joint_states>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'joint_states)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur5_vs-msg:<joint_states> is deprecated: use ur5_vs-msg:joint_states instead.")))

(cl:ensure-generic-function 'ang0-val :lambda-list '(m))
(cl:defmethod ang0-val ((m <joint_states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:ang0-val is deprecated.  Use ur5_vs-msg:ang0 instead.")
  (ang0 m))

(cl:ensure-generic-function 'ang1-val :lambda-list '(m))
(cl:defmethod ang1-val ((m <joint_states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:ang1-val is deprecated.  Use ur5_vs-msg:ang1 instead.")
  (ang1 m))

(cl:ensure-generic-function 'ang2-val :lambda-list '(m))
(cl:defmethod ang2-val ((m <joint_states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:ang2-val is deprecated.  Use ur5_vs-msg:ang2 instead.")
  (ang2 m))

(cl:ensure-generic-function 'ang3-val :lambda-list '(m))
(cl:defmethod ang3-val ((m <joint_states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:ang3-val is deprecated.  Use ur5_vs-msg:ang3 instead.")
  (ang3 m))

(cl:ensure-generic-function 'ang4-val :lambda-list '(m))
(cl:defmethod ang4-val ((m <joint_states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:ang4-val is deprecated.  Use ur5_vs-msg:ang4 instead.")
  (ang4 m))

(cl:ensure-generic-function 'ang5-val :lambda-list '(m))
(cl:defmethod ang5-val ((m <joint_states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:ang5-val is deprecated.  Use ur5_vs-msg:ang5 instead.")
  (ang5 m))

(cl:ensure-generic-function 'vel0-val :lambda-list '(m))
(cl:defmethod vel0-val ((m <joint_states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:vel0-val is deprecated.  Use ur5_vs-msg:vel0 instead.")
  (vel0 m))

(cl:ensure-generic-function 'vel1-val :lambda-list '(m))
(cl:defmethod vel1-val ((m <joint_states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:vel1-val is deprecated.  Use ur5_vs-msg:vel1 instead.")
  (vel1 m))

(cl:ensure-generic-function 'vel2-val :lambda-list '(m))
(cl:defmethod vel2-val ((m <joint_states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:vel2-val is deprecated.  Use ur5_vs-msg:vel2 instead.")
  (vel2 m))

(cl:ensure-generic-function 'vel3-val :lambda-list '(m))
(cl:defmethod vel3-val ((m <joint_states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:vel3-val is deprecated.  Use ur5_vs-msg:vel3 instead.")
  (vel3 m))

(cl:ensure-generic-function 'vel4-val :lambda-list '(m))
(cl:defmethod vel4-val ((m <joint_states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:vel4-val is deprecated.  Use ur5_vs-msg:vel4 instead.")
  (vel4 m))

(cl:ensure-generic-function 'vel5-val :lambda-list '(m))
(cl:defmethod vel5-val ((m <joint_states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:vel5-val is deprecated.  Use ur5_vs-msg:vel5 instead.")
  (vel5 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <joint_states>) ostream)
  "Serializes a message object of type '<joint_states>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ang0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ang1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ang2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ang3) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ang4) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ang5) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel3) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel4) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel5) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <joint_states>) istream)
  "Deserializes a message object of type '<joint_states>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ang0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ang1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ang2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ang3) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ang4) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ang5) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel3) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel4) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel5) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<joint_states>)))
  "Returns string type for a message object of type '<joint_states>"
  "ur5_vs/joint_states")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'joint_states)))
  "Returns string type for a message object of type 'joint_states"
  "ur5_vs/joint_states")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<joint_states>)))
  "Returns md5sum for a message object of type '<joint_states>"
  "24777d71e1429a865a561f091df16fc4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'joint_states)))
  "Returns md5sum for a message object of type 'joint_states"
  "24777d71e1429a865a561f091df16fc4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<joint_states>)))
  "Returns full string definition for message of type '<joint_states>"
  (cl:format cl:nil "std_msgs/Float64 ang0~%std_msgs/Float64 ang1~%std_msgs/Float64 ang2~%std_msgs/Float64 ang3~%std_msgs/Float64 ang4~%std_msgs/Float64 ang5~%~%std_msgs/Float64 vel0~%std_msgs/Float64 vel1~%std_msgs/Float64 vel2~%std_msgs/Float64 vel3~%std_msgs/Float64 vel4~%std_msgs/Float64 vel5~%~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'joint_states)))
  "Returns full string definition for message of type 'joint_states"
  (cl:format cl:nil "std_msgs/Float64 ang0~%std_msgs/Float64 ang1~%std_msgs/Float64 ang2~%std_msgs/Float64 ang3~%std_msgs/Float64 ang4~%std_msgs/Float64 ang5~%~%std_msgs/Float64 vel0~%std_msgs/Float64 vel1~%std_msgs/Float64 vel2~%std_msgs/Float64 vel3~%std_msgs/Float64 vel4~%std_msgs/Float64 vel5~%~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <joint_states>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ang0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ang1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ang2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ang3))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ang4))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ang5))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel3))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel4))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel5))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <joint_states>))
  "Converts a ROS message object to a list"
  (cl:list 'joint_states
    (cl:cons ':ang0 (ang0 msg))
    (cl:cons ':ang1 (ang1 msg))
    (cl:cons ':ang2 (ang2 msg))
    (cl:cons ':ang3 (ang3 msg))
    (cl:cons ':ang4 (ang4 msg))
    (cl:cons ':ang5 (ang5 msg))
    (cl:cons ':vel0 (vel0 msg))
    (cl:cons ':vel1 (vel1 msg))
    (cl:cons ':vel2 (vel2 msg))
    (cl:cons ':vel3 (vel3 msg))
    (cl:cons ':vel4 (vel4 msg))
    (cl:cons ':vel5 (vel5 msg))
))
