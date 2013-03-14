; Auto-generated. Do not edit!


(cl:in-package srs_decision_making-msg)


;//! \htmlinclude ExecutionFeedback.msg.html

(cl:defclass <ExecutionFeedback> (roslisp-msg-protocol:ros-message)
  ((current_state
    :reader current_state
    :initarg :current_state
    :type cl:string
    :initform "")
   (solution_required
    :reader solution_required
    :initarg :solution_required
    :type cl:boolean
    :initform cl:nil)
   (exceptional_case_id
    :reader exceptional_case_id
    :initarg :exceptional_case_id
    :type cl:integer
    :initform 0)
   (json_feedback
    :reader json_feedback
    :initarg :json_feedback
    :type cl:string
    :initform ""))
)

(cl:defclass ExecutionFeedback (<ExecutionFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecutionFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecutionFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srs_decision_making-msg:<ExecutionFeedback> is deprecated: use srs_decision_making-msg:ExecutionFeedback instead.")))

(cl:ensure-generic-function 'current_state-val :lambda-list '(m))
(cl:defmethod current_state-val ((m <ExecutionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:current_state-val is deprecated.  Use srs_decision_making-msg:current_state instead.")
  (current_state m))

(cl:ensure-generic-function 'solution_required-val :lambda-list '(m))
(cl:defmethod solution_required-val ((m <ExecutionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:solution_required-val is deprecated.  Use srs_decision_making-msg:solution_required instead.")
  (solution_required m))

(cl:ensure-generic-function 'exceptional_case_id-val :lambda-list '(m))
(cl:defmethod exceptional_case_id-val ((m <ExecutionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:exceptional_case_id-val is deprecated.  Use srs_decision_making-msg:exceptional_case_id instead.")
  (exceptional_case_id m))

(cl:ensure-generic-function 'json_feedback-val :lambda-list '(m))
(cl:defmethod json_feedback-val ((m <ExecutionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:json_feedback-val is deprecated.  Use srs_decision_making-msg:json_feedback instead.")
  (json_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecutionFeedback>) ostream)
  "Serializes a message object of type '<ExecutionFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_state))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'solution_required) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exceptional_case_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'exceptional_case_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'exceptional_case_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'exceptional_case_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'json_feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'json_feedback))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecutionFeedback>) istream)
  "Deserializes a message object of type '<ExecutionFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'solution_required) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exceptional_case_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'exceptional_case_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'exceptional_case_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'exceptional_case_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'json_feedback) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'json_feedback) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecutionFeedback>)))
  "Returns string type for a message object of type '<ExecutionFeedback>"
  "srs_decision_making/ExecutionFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecutionFeedback)))
  "Returns string type for a message object of type 'ExecutionFeedback"
  "srs_decision_making/ExecutionFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecutionFeedback>)))
  "Returns md5sum for a message object of type '<ExecutionFeedback>"
  "0e36b97f48749b0648782cf298eb80be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecutionFeedback)))
  "Returns md5sum for a message object of type 'ExecutionFeedback"
  "0e36b97f48749b0648782cf298eb80be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecutionFeedback>)))
  "Returns full string definition for message of type '<ExecutionFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#define a feedback message~%string current_state         # to deprecate~%bool solution_required       # to deprecate~%uint32 exceptional_case_id   # to deprecate~%string json_feedback         # new added feedback in json (test by ze)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecutionFeedback)))
  "Returns full string definition for message of type 'ExecutionFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#define a feedback message~%string current_state         # to deprecate~%bool solution_required       # to deprecate~%uint32 exceptional_case_id   # to deprecate~%string json_feedback         # new added feedback in json (test by ze)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecutionFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'current_state))
     1
     4
     4 (cl:length (cl:slot-value msg 'json_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecutionFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecutionFeedback
    (cl:cons ':current_state (current_state msg))
    (cl:cons ':solution_required (solution_required msg))
    (cl:cons ':exceptional_case_id (exceptional_case_id msg))
    (cl:cons ':json_feedback (json_feedback msg))
))
