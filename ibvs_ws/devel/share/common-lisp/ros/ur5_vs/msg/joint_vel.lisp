; Auto-generated. Do not edit!


(cl:in-package ur5_vs-msg)


;//! \htmlinclude joint_vel.msg.html

(cl:defclass <joint_vel> (roslisp-msg-protocol:ros-message)
  ((vel0
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

(cl:defclass joint_vel (<joint_vel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <joint_vel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'joint_vel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur5_vs-msg:<joint_vel> is deprecated: use ur5_vs-msg:joint_vel instead.")))

(cl:ensure-generic-function 'vel0-val :lambda-list '(m))
(cl:defmethod vel0-val ((m <joint_vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:vel0-val is deprecated.  Use ur5_vs-msg:vel0 instead.")
  (vel0 m))

(cl:ensure-generic-function 'vel1-val :lambda-list '(m))
(cl:defmethod vel1-val ((m <joint_vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:vel1-val is deprecated.  Use ur5_vs-msg:vel1 instead.")
  (vel1 m))

(cl:ensure-generic-function 'vel2-val :lambda-list '(m))
(cl:defmethod vel2-val ((m <joint_vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:vel2-val is deprecated.  Use ur5_vs-msg:vel2 instead.")
  (vel2 m))

(cl:ensure-generic-function 'vel3-val :lambda-list '(m))
(cl:defmethod vel3-val ((m <joint_vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:vel3-val is deprecated.  Use ur5_vs-msg:vel3 instead.")
  (vel3 m))

(cl:ensure-generic-function 'vel4-val :lambda-list '(m))
(cl:defmethod vel4-val ((m <joint_vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:vel4-val is deprecated.  Use ur5_vs-msg:vel4 instead.")
  (vel4 m))

(cl:ensure-generic-function 'vel5-val :lambda-list '(m))
(cl:defmethod vel5-val ((m <joint_vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:vel5-val is deprecated.  Use ur5_vs-msg:vel5 instead.")
  (vel5 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <joint_vel>) ostream)
  "Serializes a message object of type '<joint_vel>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel3) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel4) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel5) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <joint_vel>) istream)
  "Deserializes a message object of type '<joint_vel>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel3) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel4) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel5) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<joint_vel>)))
  "Returns string type for a message object of type '<joint_vel>"
  "ur5_vs/joint_vel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'joint_vel)))
  "Returns string type for a message object of type 'joint_vel"
  "ur5_vs/joint_vel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<joint_vel>)))
  "Returns md5sum for a message object of type '<joint_vel>"
  "ab1015cffe235c76cd0840caa87e35b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'joint_vel)))
  "Returns md5sum for a message object of type 'joint_vel"
  "ab1015cffe235c76cd0840caa87e35b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<joint_vel>)))
  "Returns full string definition for message of type '<joint_vel>"
  (cl:format cl:nil "std_msgs/Float64 vel0~%std_msgs/Float64 vel1~%std_msgs/Float64 vel2~%std_msgs/Float64 vel3~%std_msgs/Float64 vel4~%std_msgs/Float64 vel5~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'joint_vel)))
  "Returns full string definition for message of type 'joint_vel"
  (cl:format cl:nil "std_msgs/Float64 vel0~%std_msgs/Float64 vel1~%std_msgs/Float64 vel2~%std_msgs/Float64 vel3~%std_msgs/Float64 vel4~%std_msgs/Float64 vel5~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <joint_vel>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel3))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel4))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel5))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <joint_vel>))
  "Converts a ROS message object to a list"
  (cl:list 'joint_vel
    (cl:cons ':vel0 (vel0 msg))
    (cl:cons ':vel1 (vel1 msg))
    (cl:cons ':vel2 (vel2 msg))
    (cl:cons ':vel3 (vel3 msg))
    (cl:cons ':vel4 (vel4 msg))
    (cl:cons ':vel5 (vel5 msg))
))
