; Auto-generated. Do not edit!


(cl:in-package srs_decision_making-msg)


;//! \htmlinclude UserFeedback.msg.html

(cl:defclass <UserFeedback> (roslisp-msg-protocol:ros-message)
  ((currentState
    :reader currentState
    :initarg :currentState
    :type cl:string
    :initform "")
   (solutionRequired
    :reader solutionRequired
    :initarg :solutionRequired
    :type cl:boolean
    :initform cl:nil)
   (exceptionalCase_id
    :reader exceptionalCase_id
    :initarg :exceptionalCase_id
    :type cl:integer
    :initform 0))
)

(cl:defclass UserFeedback (<UserFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UserFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UserFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srs_decision_making-msg:<UserFeedback> is deprecated: use srs_decision_making-msg:UserFeedback instead.")))

(cl:ensure-generic-function 'currentState-val :lambda-list '(m))
(cl:defmethod currentState-val ((m <UserFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:currentState-val is deprecated.  Use srs_decision_making-msg:currentState instead.")
  (currentState m))

(cl:ensure-generic-function 'solutionRequired-val :lambda-list '(m))
(cl:defmethod solutionRequired-val ((m <UserFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:solutionRequired-val is deprecated.  Use srs_decision_making-msg:solutionRequired instead.")
  (solutionRequired m))

(cl:ensure-generic-function 'exceptionalCase_id-val :lambda-list '(m))
(cl:defmethod exceptionalCase_id-val ((m <UserFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:exceptionalCase_id-val is deprecated.  Use srs_decision_making-msg:exceptionalCase_id instead.")
  (exceptionalCase_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UserFeedback>) ostream)
  "Serializes a message object of type '<UserFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'currentState))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'currentState))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'solutionRequired) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exceptionalCase_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'exceptionalCase_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'exceptionalCase_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'exceptionalCase_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UserFeedback>) istream)
  "Deserializes a message object of type '<UserFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'currentState) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'currentState) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'solutionRequired) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exceptionalCase_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'exceptionalCase_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'exceptionalCase_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'exceptionalCase_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UserFeedback>)))
  "Returns string type for a message object of type '<UserFeedback>"
  "srs_decision_making/UserFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UserFeedback)))
  "Returns string type for a message object of type 'UserFeedback"
  "srs_decision_making/UserFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UserFeedback>)))
  "Returns md5sum for a message object of type '<UserFeedback>"
  "acf8a34fbff89b074eef6dd5f9a86b7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UserFeedback)))
  "Returns md5sum for a message object of type 'UserFeedback"
  "acf8a34fbff89b074eef6dd5f9a86b7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UserFeedback>)))
  "Returns full string definition for message of type '<UserFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%string currentState~%bool solutionRequired~%uint32 exceptionalCase_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UserFeedback)))
  "Returns full string definition for message of type 'UserFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%string currentState~%bool solutionRequired~%uint32 exceptionalCase_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UserFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'currentState))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UserFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'UserFeedback
    (cl:cons ':currentState (currentState msg))
    (cl:cons ':solutionRequired (solutionRequired msg))
    (cl:cons ':exceptionalCase_id (exceptionalCase_id msg))
))
