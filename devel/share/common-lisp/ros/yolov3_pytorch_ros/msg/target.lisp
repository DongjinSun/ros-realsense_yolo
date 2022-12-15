; Auto-generated. Do not edit!


(cl:in-package yolov3_pytorch_ros-msg)


;//! \htmlinclude target.msg.html

(cl:defclass <target> (roslisp-msg-protocol:ros-message)
  ((y
    :reader y
    :initarg :y
    :type cl:fixnum
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:fixnum
    :initform 0)
   (z
    :reader z
    :initarg :z
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform ""))
)

(cl:defclass target (<target>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <target>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'target)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yolov3_pytorch_ros-msg:<target> is deprecated: use yolov3_pytorch_ros-msg:target instead.")))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov3_pytorch_ros-msg:y-val is deprecated.  Use yolov3_pytorch_ros-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov3_pytorch_ros-msg:x-val is deprecated.  Use yolov3_pytorch_ros-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov3_pytorch_ros-msg:z-val is deprecated.  Use yolov3_pytorch_ros-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov3_pytorch_ros-msg:type-val is deprecated.  Use yolov3_pytorch_ros-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <target>) ostream)
  "Serializes a message object of type '<target>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'z)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <target>) istream)
  "Deserializes a message object of type '<target>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'z)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<target>)))
  "Returns string type for a message object of type '<target>"
  "yolov3_pytorch_ros/target")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'target)))
  "Returns string type for a message object of type 'target"
  "yolov3_pytorch_ros/target")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<target>)))
  "Returns md5sum for a message object of type '<target>"
  "9c02c663e73d4d8954e2848abf519bef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'target)))
  "Returns md5sum for a message object of type 'target"
  "9c02c663e73d4d8954e2848abf519bef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<target>)))
  "Returns full string definition for message of type '<target>"
  (cl:format cl:nil "uint16 y~%uint16 x~%uint16 z~%string type~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'target)))
  "Returns full string definition for message of type 'target"
  (cl:format cl:nil "uint16 y~%uint16 x~%uint16 z~%string type~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <target>))
  (cl:+ 0
     2
     2
     2
     4 (cl:length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <target>))
  "Converts a ROS message object to a list"
  (cl:list 'target
    (cl:cons ':y (y msg))
    (cl:cons ':x (x msg))
    (cl:cons ':z (z msg))
    (cl:cons ':type (type msg))
))
