;; Auto-generated. Do not edit!


(when (boundp 'yolov3_pytorch_ros::target)
  (if (not (find-package "YOLOV3_PYTORCH_ROS"))
    (make-package "YOLOV3_PYTORCH_ROS"))
  (shadow 'target (find-package "YOLOV3_PYTORCH_ROS")))
(unless (find-package "YOLOV3_PYTORCH_ROS::TARGET")
  (make-package "YOLOV3_PYTORCH_ROS::TARGET"))

(in-package "ROS")
;;//! \htmlinclude target.msg.html


(defclass yolov3_pytorch_ros::target
  :super ros::object
  :slots (_y _x _z _type ))

(defmethod yolov3_pytorch_ros::target
  (:init
   (&key
    ((:y __y) 0)
    ((:x __x) 0)
    ((:z __z) 0)
    ((:type __type) "")
    )
   (send-super :init)
   (setq _y (round __y))
   (setq _x (round __x))
   (setq _z (round __z))
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
    ;; uint16 _y
    2
    ;; uint16 _x
    2
    ;; uint16 _z
    2
    ;; string _type
    4 (length _type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _y
       (write-word _y s)
     ;; uint16 _x
       (write-word _x s)
     ;; uint16 _z
       (write-word _z s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _y
     (setq _y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _x
     (setq _x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _z
     (setq _z (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get yolov3_pytorch_ros::target :md5sum-) "9c02c663e73d4d8954e2848abf519bef")
(setf (get yolov3_pytorch_ros::target :datatype-) "yolov3_pytorch_ros/target")
(setf (get yolov3_pytorch_ros::target :definition-)
      "uint16 y
uint16 x
uint16 z
string type



")



(provide :yolov3_pytorch_ros/target "9c02c663e73d4d8954e2848abf519bef")


