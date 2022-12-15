; Auto-generated. Do not edit!


(cl:in-package yolov3_pytorch_ros-msg)


;//! \htmlinclude xyrange.msg.html

(cl:defclass <xyrange> (roslisp-msg-protocol:ros-message)
  ((xmin
    :reader xmin
    :initarg :xmin
    :type cl:fixnum
    :initform 0)
   (ymin
    :reader ymin
    :initarg :ymin
    :type cl:fixnum
    :initform 0)
   (xmax
    :reader xmax
    :initarg :xmax
    :type cl:fixnum
    :initform 0)
   (ymax
    :reader ymax
    :initarg :ymax
    :type cl:fixnum
    :initform 0))
)

(cl:defclass xyrange (<xyrange>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <xyrange>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'xyrange)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yolov3_pytorch_ros-msg:<xyrange> is deprecated: use yolov3_pytorch_ros-msg:xyrange instead.")))

(cl:ensure-generic-function 'xmin-val :lambda-list '(m))
(cl:defmethod xmin-val ((m <xyrange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov3_pytorch_ros-msg:xmin-val is deprecated.  Use yolov3_pytorch_ros-msg:xmin instead.")
  (xmin m))

(cl:ensure-generic-function 'ymin-val :lambda-list '(m))
(cl:defmethod ymin-val ((m <xyrange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov3_pytorch_ros-msg:ymin-val is deprecated.  Use yolov3_pytorch_ros-msg:ymin instead.")
  (ymin m))

(cl:ensure-generic-function 'xmax-val :lambda-list '(m))
(cl:defmethod xmax-val ((m <xyrange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov3_pytorch_ros-msg:xmax-val is deprecated.  Use yolov3_pytorch_ros-msg:xmax instead.")
  (xmax m))

(cl:ensure-generic-function 'ymax-val :lambda-list '(m))
(cl:defmethod ymax-val ((m <xyrange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov3_pytorch_ros-msg:ymax-val is deprecated.  Use yolov3_pytorch_ros-msg:ymax instead.")
  (ymax m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <xyrange>) ostream)
  "Serializes a message object of type '<xyrange>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'xmin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'xmin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ymin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ymin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'xmax)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'xmax)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ymax)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ymax)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <xyrange>) istream)
  "Deserializes a message object of type '<xyrange>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'xmin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'xmin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ymin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ymin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'xmax)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'xmax)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ymax)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ymax)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<xyrange>)))
  "Returns string type for a message object of type '<xyrange>"
  "yolov3_pytorch_ros/xyrange")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'xyrange)))
  "Returns string type for a message object of type 'xyrange"
  "yolov3_pytorch_ros/xyrange")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<xyrange>)))
  "Returns md5sum for a message object of type '<xyrange>"
  "44036a17ac3e93c59e9c4fb4fbc536ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'xyrange)))
  "Returns md5sum for a message object of type 'xyrange"
  "44036a17ac3e93c59e9c4fb4fbc536ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<xyrange>)))
  "Returns full string definition for message of type '<xyrange>"
  (cl:format cl:nil "uint16 xmin~%uint16 ymin~%uint16 xmax~%uint16 ymax~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'xyrange)))
  "Returns full string definition for message of type 'xyrange"
  (cl:format cl:nil "uint16 xmin~%uint16 ymin~%uint16 xmax~%uint16 ymax~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <xyrange>))
  (cl:+ 0
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <xyrange>))
  "Converts a ROS message object to a list"
  (cl:list 'xyrange
    (cl:cons ':xmin (xmin msg))
    (cl:cons ':ymin (ymin msg))
    (cl:cons ':xmax (xmax msg))
    (cl:cons ':ymax (ymax msg))
))
