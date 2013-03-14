; Auto-generated. Do not edit!


(cl:in-package srs_decision_making-msg)


;//! \htmlinclude ExecutionActionGoal.msg.html

(cl:defclass <ExecutionActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type srs_decision_making-msg:ExecutionGoal
    :initform (cl:make-instance 'srs_decision_making-msg:ExecutionGoal)))
)

(cl:defclass ExecutionActionGoal (<ExecutionActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecutionActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecutionActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srs_decision_making-msg:<ExecutionActionGoal> is deprecated: use srs_decision_making-msg:ExecutionActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ExecutionActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:header-val is deprecated.  Use srs_decision_making-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <ExecutionActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:goal_id-val is deprecated.  Use srs_decision_making-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <ExecutionActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:goal-val is deprecated.  Use srs_decision_making-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecutionActionGoal>) ostream)
  "Serializes a message object of type '<ExecutionActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecutionActionGoal>) istream)
  "Deserializes a message object of type '<ExecutionActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecutionActionGoal>)))
  "Returns string type for a message object of type '<ExecutionActionGoal>"
  "srs_decision_making/ExecutionActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecutionActionGoal)))
  "Returns string type for a message object of type 'ExecutionActionGoal"
  "srs_decision_making/ExecutionActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecutionActionGoal>)))
  "Returns md5sum for a message object of type '<ExecutionActionGoal>"
  "737236406c3b3bfcfb2c891968cca746")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecutionActionGoal)))
  "Returns md5sum for a message object of type 'ExecutionActionGoal"
  "737236406c3b3bfcfb2c891968cca746")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecutionActionGoal>)))
  "Returns full string definition for message of type '<ExecutionActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%ExecutionGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: srs_decision_making/ExecutionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#define the goal, srs_msgs/srs_action[] action_sequence	#Specify what action sequence to be applied~%string action         # to deprecate, replaced by json_parameters. Kept for backward compatibility~%string parameter      # to deprecate, replaced by json_parameters~%uint32 priority       # to deprecate~%string json_parameters   # new added parameter in json (test by Ze)~%# string[] parameters   # to deprecate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecutionActionGoal)))
  "Returns full string definition for message of type 'ExecutionActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%ExecutionGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: srs_decision_making/ExecutionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#define the goal, srs_msgs/srs_action[] action_sequence	#Specify what action sequence to be applied~%string action         # to deprecate, replaced by json_parameters. Kept for backward compatibility~%string parameter      # to deprecate, replaced by json_parameters~%uint32 priority       # to deprecate~%string json_parameters   # new added parameter in json (test by Ze)~%# string[] parameters   # to deprecate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecutionActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecutionActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecutionActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
