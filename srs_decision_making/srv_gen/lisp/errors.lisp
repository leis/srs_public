; Auto-generated. Do not edit!


(cl:in-package srs_decision_making-srv)


;//! \htmlinclude errors-request.msg.html

(cl:defclass <errors-request> (roslisp-msg-protocol:ros-message)
  ((current_state
    :reader current_state
    :initarg :current_state
    :type cl:string
    :initform "")
   (exceptional_case_id
    :reader exceptional_case_id
    :initarg :exceptional_case_id
    :type cl:integer
    :initform 0))
)

(cl:defclass errors-request (<errors-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <errors-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'errors-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srs_decision_making-srv:<errors-request> is deprecated: use srs_decision_making-srv:errors-request instead.")))

(cl:ensure-generic-function 'current_state-val :lambda-list '(m))
(cl:defmethod current_state-val ((m <errors-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-srv:current_state-val is deprecated.  Use srs_decision_making-srv:current_state instead.")
  (current_state m))

(cl:ensure-generic-function 'exceptional_case_id-val :lambda-list '(m))
(cl:defmethod exceptional_case_id-val ((m <errors-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-srv:exceptional_case_id-val is deprecated.  Use srs_decision_making-srv:exceptional_case_id instead.")
  (exceptional_case_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <errors-request>) ostream)
  "Serializes a message object of type '<errors-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_state))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exceptional_case_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'exceptional_case_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'exceptional_case_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'exceptional_case_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <errors-request>) istream)
  "Deserializes a message object of type '<errors-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exceptional_case_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'exceptional_case_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'exceptional_case_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'exceptional_case_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<errors-request>)))
  "Returns string type for a service object of type '<errors-request>"
  "srs_decision_making/errorsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'errors-request)))
  "Returns string type for a service object of type 'errors-request"
  "srs_decision_making/errorsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<errors-request>)))
  "Returns md5sum for a message object of type '<errors-request>"
  "ccaba201faaec4cd64bde7d7b8be1d57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'errors-request)))
  "Returns md5sum for a message object of type 'errors-request"
  "ccaba201faaec4cd64bde7d7b8be1d57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<errors-request>)))
  "Returns full string definition for message of type '<errors-request>"
  (cl:format cl:nil "string current_state~%uint32 exceptional_case_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'errors-request)))
  "Returns full string definition for message of type 'errors-request"
  (cl:format cl:nil "string current_state~%uint32 exceptional_case_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <errors-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'current_state))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <errors-request>))
  "Converts a ROS message object to a list"
  (cl:list 'errors-request
    (cl:cons ':current_state (current_state msg))
    (cl:cons ':exceptional_case_id (exceptional_case_id msg))
))
;//! \htmlinclude errors-response.msg.html

(cl:defclass <errors-response> (roslisp-msg-protocol:ros-message)
  ((solution
    :reader solution
    :initarg :solution
    :type cl:string
    :initform "")
   (giveup
    :reader giveup
    :initarg :giveup
    :type cl:fixnum
    :initform 0))
)

(cl:defclass errors-response (<errors-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <errors-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'errors-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srs_decision_making-srv:<errors-response> is deprecated: use srs_decision_making-srv:errors-response instead.")))

(cl:ensure-generic-function 'solution-val :lambda-list '(m))
(cl:defmethod solution-val ((m <errors-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-srv:solution-val is deprecated.  Use srs_decision_making-srv:solution instead.")
  (solution m))

(cl:ensure-generic-function 'giveup-val :lambda-list '(m))
(cl:defmethod giveup-val ((m <errors-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srs_decision_making-srv:giveup-val is deprecated.  Use srs_decision_making-srv:giveup instead.")
  (giveup m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <errors-response>) ostream)
  "Serializes a message object of type '<errors-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'solution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'solution))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'giveup)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <errors-response>) istream)
  "Deserializes a message object of type '<errors-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'solution) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'solution) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'giveup)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<errors-response>)))
  "Returns string type for a service object of type '<errors-response>"
  "srs_decision_making/errorsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'errors-response)))
  "Returns string type for a service object of type 'errors-response"
  "srs_decision_making/errorsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<errors-response>)))
  "Returns md5sum for a message object of type '<errors-response>"
  "ccaba201faaec4cd64bde7d7b8be1d57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'errors-response)))
  "Returns md5sum for a message object of type 'errors-response"
  "ccaba201faaec4cd64bde7d7b8be1d57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<errors-response>)))
  "Returns full string definition for message of type '<errors-response>"
  (cl:format cl:nil "string solution~%uint8 giveup~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'errors-response)))
  "Returns full string definition for message of type 'errors-response"
  (cl:format cl:nil "string solution~%uint8 giveup~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <errors-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'solution))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <errors-response>))
  "Converts a ROS message object to a list"
  (cl:list 'errors-response
    (cl:cons ':solution (solution msg))
    (cl:cons ':giveup (giveup msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'errors)))
  'errors-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'errors)))
  'errors-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'errors)))
  "Returns string type for a service object of type '<errors>"
  "srs_decision_making/errors")