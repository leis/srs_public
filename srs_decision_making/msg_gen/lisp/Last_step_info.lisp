; Auto-generated. Do not edit!


(cl:in-package srs_decision_making-msg)


;//! \htmlinclude Last_step_info.msg.html

(cl:defclass <Last_step_info> (roslisp-msg-protocol:ros-message)
  ((step_name
    :reader step_name
    :initarg :step_name
    :type cl:string
    :initform "")
   (outcome
    :reader outcome
    :initarg :outcome
    :type cl:string
    :initform "")
   (semi_autonomous_mode
    :reader semi_autonomous_mode
    :initarg :semi_autonomous_mode
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Last_step_info (<Last_step_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Last_step_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Last_step_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srs_decision_making-msg:<Last_step_info> is deprecated: use srs_decision_making-msg:Last_step_info instead.")))

(cl:ensure-generic-function 'step_name-val :lambda-list '(m))
(cl:defmethod step_name-val ((m <Last_step_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:step_name-val is deprecated.  Use srs_decision_making-msg:step_name instead.")
  (step_name m))

(cl:ensure-generic-function 'outcome-val :lambda-list '(m))
(cl:defmethod outcome-val ((m <Last_step_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:outcome-val is deprecated.  Use srs_decision_making-msg:outcome instead.")
  (outcome m))

(cl:ensure-generic-function 'semi_autonomous_mode-val :lambda-list '(m))
(cl:defmethod semi_autonomous_mode-val ((m <Last_step_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-msg:semi_autonomous_mode-val is deprecated.  Use srs_decision_making-msg:semi_autonomous_mode instead.")
  (semi_autonomous_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Last_step_info>) ostream)
  "Serializes a message object of type '<Last_step_info>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'step_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'step_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'outcome))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'outcome))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'semi_autonomous_mode) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Last_step_info>) istream)
  "Deserializes a message object of type '<Last_step_info>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'step_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'step_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'outcome) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'outcome) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'semi_autonomous_mode) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Last_step_info>)))
  "Returns string type for a message object of type '<Last_step_info>"
  "srs_decision_making/Last_step_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Last_step_info)))
  "Returns string type for a message object of type 'Last_step_info"
  "srs_decision_making/Last_step_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Last_step_info>)))
  "Returns md5sum for a message object of type '<Last_step_info>"
  "d3e1336fdd2e5ea9111bd37f49150507")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Last_step_info)))
  "Returns md5sum for a message object of type 'Last_step_info"
  "d3e1336fdd2e5ea9111bd37f49150507")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Last_step_info>)))
  "Returns full string definition for message of type '<Last_step_info>"
  (cl:format cl:nil "string step_name~%string outcome~%bool semi_autonomous_mode~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Last_step_info)))
  "Returns full string definition for message of type 'Last_step_info"
  (cl:format cl:nil "string step_name~%string outcome~%bool semi_autonomous_mode~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Last_step_info>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'step_name))
     4 (cl:length (cl:slot-value msg 'outcome))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Last_step_info>))
  "Converts a ROS message object to a list"
  (cl:list 'Last_step_info
    (cl:cons ':step_name (step_name msg))
    (cl:cons ':outcome (outcome msg))
    (cl:cons ':semi_autonomous_mode (semi_autonomous_mode msg))
))
