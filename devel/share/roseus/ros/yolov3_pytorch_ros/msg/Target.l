;; Auto-generated. Do not edit!


(when (boundp 'yolov3_pytorch_ros::Target)
  (if (not (find-package "YOLOV3_PYTORCH_ROS"))
    (make-package "YOLOV3_PYTORCH_ROS"))
  (shadow 'Target (find-package "YOLOV3_PYTORCH_ROS")))
(unless (find-package "YOLOV3_PYTORCH_ROS::TARGET")
  (make-package "YOLOV3_PYTORCH_ROS::TARGET"))

(in-package "ROS")
;;//! \htmlinclude Target.msg.html


(defclass yolov3_pytorch_ros::Target
  :super ros::object
  :slots (_y _x _z _type ))

(defmethod yolov3_pytorch_ros::Target
  (:init
   (&key
    ((:y __y) 0.0)
    ((:x __x) 0.0)
    ((:z __z) 0.0)
    ((:type __type) "")
    )
   (send-super :init)
   (setq _y (float __y))
   (setq _x (float __x))
   (setq _z (float __z))
   (setq _type (string __type))
   self)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; float32 _y
    4
    ;; float32 _x
    4
    ;; float32 _z
    4
    ;; string _type
    4 (length _type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get yolov3_pytorch_ros::Target :md5sum-) "15a8c8b2c16edc6cef4ab72559107ff9")
(setf (get yolov3_pytorch_ros::Target :datatype-) "yolov3_pytorch_ros/Target")
(setf (get yolov3_pytorch_ros::Target :definition-)
      "float32 y
float32 x
float32 z
string type



")



(provide :yolov3_pytorch_ros/Target "15a8c8b2c16edc6cef4ab72559107ff9")


