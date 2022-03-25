; Auto-generated. Do not edit!


(cl:in-package ur5_vs-msg)


;//! \htmlinclude sim_variables.msg.html

(cl:defclass <sim_variables> (roslisp-msg-protocol:ros-message)
  ((sim_enable
    :reader sim_enable
    :initarg :sim_enable
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (reconfigure
    :reader reconfigure
    :initarg :reconfigure
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass sim_variables (<sim_variables>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sim_variables>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sim_variables)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur5_vs-msg:<sim_variables> is deprecated: use ur5_vs-msg:sim_variables instead.")))

(cl:ensure-generic-function 'sim_enable-val :lambda-list '(m))
(cl:defmethod sim_enable-val ((m <sim_variables>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:sim_enable-val is deprecated.  Use ur5_vs-msg:sim_enable instead.")
  (sim_enable m))

(cl:ensure-generic-function 'reconfigure-val :lambda-list '(m))
(cl:defmethod reconfigure-val ((m <sim_variables>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5_vs-msg:reconfigure-val is deprecated.  Use ur5_vs-msg:reconfigure instead.")
  (reconfigure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sim_variables>) ostream)
  "Serializes a message object of type '<sim_variables>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sim_enable) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reconfigure) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sim_variables>) istream)
  "Deserializes a message object of type '<sim_variables>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sim_enable) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reconfigure) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sim_variables>)))
  "Returns string type for a message object of type '<sim_variables>"
  "ur5_vs/sim_variables")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sim_variables)))
  "Returns string type for a message object of type 'sim_variables"
  "ur5_vs/sim_variables")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sim_variables>)))
  "Returns md5sum for a message object of type '<sim_variables>"
  "ee6670fc044bef98d1a25a214ff7cacc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sim_variables)))
  "Returns md5sum for a message object of type 'sim_variables"
  "ee6670fc044bef98d1a25a214ff7cacc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sim_variables>)))
  "Returns full string definition for message of type '<sim_variables>"
  (cl:format cl:nil "std_msgs/Bool sim_enable~%std_msgs/Bool reconfigure~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sim_variables)))
  "Returns full string definition for message of type 'sim_variables"
  (cl:format cl:nil "std_msgs/Bool sim_enable~%std_msgs/Bool reconfigure~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sim_variables>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sim_enable))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reconfigure))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sim_variables>))
  "Converts a ROS message object to a list"
  (cl:list 'sim_variables
    (cl:cons ':sim_enable (sim_enable msg))
    (cl:cons ':reconfigure (reconfigure msg))
))
