; Auto-generated. Do not edit!


(cl:in-package srs_decision_making-msg)


;//! \htmlinclude ExecutionGoal.msg.html

(cl:defclass <ExecutionGoal> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:string
    :initform "")
   (parameter
    :reader parameter
    :initarg :parameter
    :type cl:string
    :initform "")
   (priority
    :reader priority
    :initarg :priority
    :type cl:integer
    :initform 0)
   (json_parameters
    :reader json_parameters
    :initarg :json_parameters
    :type cl:string
    :initform ""))
)

(cl:defclass ExecutionGoal (<ExecutionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecutionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecutionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srs_decision_making-msg:<ExecutionGoal> is deprecated: use srs_decision_making-msg:ExecutionGoal instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <ExecutionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:action-val is deprecated.  Use srs_decision_making-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <ExecutionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:parameter-val is deprecated.  Use srs_decision_making-msg:parameter instead.")
  (parameter m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <ExecutionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:priority-val is deprecated.  Use srs_decision_making-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'json_parameters-val :lambda-list '(m))
(cl:defmethod json_parameters-val ((m <ExecutionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:json_parameters-val is deprecated.  Use srs_decision_making-msg:json_parameters instead.")
  (json_parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecutionGoal>) ostream)
  "Serializes a message object of type '<ExecutionGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parameter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parameter))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'priority)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'json_parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'json_parameters))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecutionGoal>) istream)
  "Deserializes a message object of type '<ExecutionGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameter) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parameter) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'json_parameters) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'json_parameters) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecutionGoal>)))
  "Returns string type for a message object of type '<ExecutionGoal>"
  "srs_decision_making/ExecutionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecutionGoal)))
  "Returns string type for a message object of type 'ExecutionGoal"
  "srs_decision_making/ExecutionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecutionGoal>)))
  "Returns md5sum for a message object of type '<ExecutionGoal>"
  "17ace6d839845ba28d596f5bde7e89f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecutionGoal)))
  "Returns md5sum for a message object of type 'ExecutionGoal"
  "17ace6d839845ba28d596f5bde7e89f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecutionGoal>)))
  "Returns full string definition for message of type '<ExecutionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#define the goal, srs_msgs/srs_action[] action_sequence	#Specify what action sequence to be applied~%string action         # to deprecate, replaced by json_parameters. Kept for backward compatibility~%string parameter      # to deprecate, replaced by json_parameters~%uint32 priority       # to deprecate~%string json_parameters   # new added parameter in json (test by Ze)~%# string[] parameters   # to deprecate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecutionGoal)))
  "Returns full string definition for message of type 'ExecutionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#define the goal, srs_msgs/srs_action[] action_sequence	#Specify what action sequence to be applied~%string action         # to deprecate, replaced by json_parameters. Kept for backward compatibility~%string parameter      # to deprecate, replaced by json_parameters~%uint32 priority       # to deprecate~%string json_parameters   # new added parameter in json (test by Ze)~%# string[] parameters   # to deprecate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecutionGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action))
     4 (cl:length (cl:slot-value msg 'parameter))
     4
     4 (cl:length (cl:slot-value msg 'json_parameters))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecutionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecutionGoal
    (cl:cons ':action (action msg))
    (cl:cons ':parameter (parameter msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':json_parameters (json_parameters msg))
))
