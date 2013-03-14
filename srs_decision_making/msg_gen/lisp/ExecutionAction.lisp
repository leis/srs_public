; Auto-generated. Do not edit!


(cl:in-package srs_decision_making-msg)


;//! \htmlinclude ExecutionAction.msg.html

(cl:defclass <ExecutionAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type srs_decision_making-msg:ExecutionActionGoal
    :initform (cl:make-instance 'srs_decision_making-msg:ExecutionActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type srs_decision_making-msg:ExecutionActionResult
    :initform (cl:make-instance 'srs_decision_making-msg:ExecutionActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type srs_decision_making-msg:ExecutionActionFeedback
    :initform (cl:make-instance 'srs_decision_making-msg:ExecutionActionFeedback)))
)

(cl:defclass ExecutionAction (<ExecutionAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecutionAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecutionAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srs_decision_making-msg:<ExecutionAction> is deprecated: use srs_decision_making-msg:ExecutionAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <ExecutionAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:action_goal-val is deprecated.  Use srs_decision_making-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <ExecutionAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:action_result-val is deprecated.  Use srs_decision_making-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <ExecutionAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:action_feedback-val is deprecated.  Use srs_decision_making-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecutionAction>) ostream)
  "Serializes a message object of type '<ExecutionAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecutionAction>) istream)
  "Deserializes a message object of type '<ExecutionAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecutionAction>)))
  "Returns string type for a message object of type '<ExecutionAction>"
  "srs_decision_making/ExecutionAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecutionAction)))
  "Returns string type for a message object of type 'ExecutionAction"
  "srs_decision_making/ExecutionAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecutionAction>)))
  "Returns md5sum for a message object of type '<ExecutionAction>"
  "7a2b9b0f6e9547ef64a37ec111611476")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecutionAction)))
  "Returns md5sum for a message object of type 'ExecutionAction"
  "7a2b9b0f6e9547ef64a37ec111611476")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecutionAction>)))
  "Returns full string definition for message of type '<ExecutionAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%ExecutionActionGoal action_goal~%ExecutionActionResult action_result~%ExecutionActionFeedback action_feedback~%~%================================================================================~%MSG: srs_decision_making/ExecutionActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%ExecutionGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: srs_decision_making/ExecutionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#define the goal, srs_msgs/srs_action[] action_sequence	#Specify what action sequence to be applied~%string action         # to deprecate, replaced by json_parameters. Kept for backward compatibility~%string parameter      # to deprecate, replaced by json_parameters~%uint32 priority       # to deprecate~%string json_parameters   # new added parameter in json (test by Ze)~%# string[] parameters   # to deprecate~%~%================================================================================~%MSG: srs_decision_making/ExecutionActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%ExecutionResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: srs_decision_making/ExecutionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#define the result~%uint32 return_value~%~%================================================================================~%MSG: srs_decision_making/ExecutionActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%ExecutionFeedback feedback~%~%================================================================================~%MSG: srs_decision_making/ExecutionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#define a feedback message~%string current_state         # to deprecate~%bool solution_required       # to deprecate~%uint32 exceptional_case_id   # to deprecate~%string json_feedback         # new added feedback in json (test by ze)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecutionAction)))
  "Returns full string definition for message of type 'ExecutionAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%ExecutionActionGoal action_goal~%ExecutionActionResult action_result~%ExecutionActionFeedback action_feedback~%~%================================================================================~%MSG: srs_decision_making/ExecutionActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%ExecutionGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: srs_decision_making/ExecutionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#define the goal, srs_msgs/srs_action[] action_sequence	#Specify what action sequence to be applied~%string action         # to deprecate, replaced by json_parameters. Kept for backward compatibility~%string parameter      # to deprecate, replaced by json_parameters~%uint32 priority       # to deprecate~%string json_parameters   # new added parameter in json (test by Ze)~%# string[] parameters   # to deprecate~%~%================================================================================~%MSG: srs_decision_making/ExecutionActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%ExecutionResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: srs_decision_making/ExecutionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#define the result~%uint32 return_value~%~%================================================================================~%MSG: srs_decision_making/ExecutionActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%ExecutionFeedback feedback~%~%================================================================================~%MSG: srs_decision_making/ExecutionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#define a feedback message~%string current_state         # to deprecate~%bool solution_required       # to deprecate~%uint32 exceptional_case_id   # to deprecate~%string json_feedback         # new added feedback in json (test by ze)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecutionAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecutionAction>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecutionAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
