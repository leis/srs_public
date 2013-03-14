; Auto-generated. Do not edit!


(cl:in-package srs_decision_making-msg)


;//! \htmlinclude UserGoal.msg.html

(cl:defclass <UserGoal> (roslisp-msg-protocol:ros-message)
  ((actionName
    :reader actionName
    :initarg :actionName
    :type cl:string
    :initform "")
   (parameter
    :reader parameter
    :initarg :parameter
    :type cl:string
    :initform "")
   (solution
    :reader solution
    :initarg :solution
    :type cl:string
    :initform ""))
)

(cl:defclass UserGoal (<UserGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UserGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UserGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srs_decision_making-msg:<UserGoal> is deprecated: use srs_decision_making-msg:UserGoal instead.")))

(cl:ensure-generic-function 'actionName-val :lambda-list '(m))
(cl:defmethod actionName-val ((m <UserGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:actionName-val is deprecated.  Use srs_decision_making-msg:actionName instead.")
  (actionName m))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <UserGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:parameter-val is deprecated.  Use srs_decision_making-msg:parameter instead.")
  (parameter m))

(cl:ensure-generic-function 'solution-val :lambda-list '(m))
(cl:defmethod solution-val ((m <UserGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:solution-val is deprecated.  Use srs_decision_making-msg:solution instead.")
  (solution m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UserGoal>) ostream)
  "Serializes a message object of type '<UserGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'actionName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'actionName))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parameter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parameter))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'solution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'solution))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UserGoal>) istream)
  "Deserializes a message object of type '<UserGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'actionName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'actionName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameter) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parameter) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'solution) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'solution) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UserGoal>)))
  "Returns string type for a message object of type '<UserGoal>"
  "srs_decision_making/UserGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UserGoal)))
  "Returns string type for a message object of type 'UserGoal"
  "srs_decision_making/UserGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UserGoal>)))
  "Returns md5sum for a message object of type '<UserGoal>"
  "188a4af8bd9d84c0c8afdac336654ba9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UserGoal)))
  "Returns md5sum for a message object of type 'UserGoal"
  "188a4af8bd9d84c0c8afdac336654ba9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UserGoal>)))
  "Returns full string definition for message of type '<UserGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%string actionName~%string parameter~%string solution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UserGoal)))
  "Returns full string definition for message of type 'UserGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%string actionName~%string parameter~%string solution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UserGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'actionName))
     4 (cl:length (cl:slot-value msg 'parameter))
     4 (cl:length (cl:slot-value msg 'solution))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UserGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'UserGoal
    (cl:cons ':actionName (actionName msg))
    (cl:cons ':parameter (parameter msg))
    (cl:cons ':solution (solution msg))
))
