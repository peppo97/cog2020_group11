; Auto-generated. Do not edit!


(cl:in-package naoqi_bridge_msgs-msg)


;//! \htmlinclude RunBehaviorResult.msg.html

(cl:defclass <RunBehaviorResult> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RunBehaviorResult (<RunBehaviorResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RunBehaviorResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RunBehaviorResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name naoqi_bridge_msgs-msg:<RunBehaviorResult> is deprecated: use naoqi_bridge_msgs-msg:RunBehaviorResult instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RunBehaviorResult>) ostream)
  "Serializes a message object of type '<RunBehaviorResult>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RunBehaviorResult>) istream)
  "Deserializes a message object of type '<RunBehaviorResult>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RunBehaviorResult>)))
  "Returns string type for a message object of type '<RunBehaviorResult>"
  "naoqi_bridge_msgs/RunBehaviorResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunBehaviorResult)))
  "Returns string type for a message object of type 'RunBehaviorResult"
  "naoqi_bridge_msgs/RunBehaviorResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RunBehaviorResult>)))
  "Returns md5sum for a message object of type '<RunBehaviorResult>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RunBehaviorResult)))
  "Returns md5sum for a message object of type 'RunBehaviorResult"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RunBehaviorResult>)))
  "Returns full string definition for message of type '<RunBehaviorResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RunBehaviorResult)))
  "Returns full string definition for message of type 'RunBehaviorResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RunBehaviorResult>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RunBehaviorResult>))
  "Converts a ROS message object to a list"
  (cl:list 'RunBehaviorResult
))
