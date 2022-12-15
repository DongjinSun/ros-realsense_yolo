;; Auto-generated. Do not edit!


(when (boundp 'yolov3_pytorch_ros::xyrange)
  (if (not (find-package "YOLOV3_PYTORCH_ROS"))
    (make-package "YOLOV3_PYTORCH_ROS"))
  (shadow 'xyrange (find-package "YOLOV3_PYTORCH_ROS")))
(unless (find-package "YOLOV3_PYTORCH_ROS::XYRANGE")
  (make-package "YOLOV3_PYTORCH_ROS::XYRANGE"))

(in-package "ROS")
;;//! \htmlinclude xyrange.msg.html


(defclass yolov3_pytorch_ros::xyrange
  :super ros::object
  :slots (_xmin _ymin _xmax _ymax ))

(defmethod yolov3_pytorch_ros::xyrange
  (:init
   (&key
    ((:xmin __xmin) 0)
    ((:ymin __ymin) 0)
    ((:xmax __xmax) 0)
    ((:ymax __ymax) 0)
    )
   (send-super :init)
   (setq _xmin (round __xmin))
   (setq _ymin (round __ymin))
   (setq _xmax (round __xmax))
   (setq _ymax (round __ymax))
   self)
  (:xmin
   (&optional __xmin)
   (if __xmin (setq _xmin __xmin)) _xmin)
  (:ymin
   (&optional __ymin)
   (if __ymin (setq _ymin __ymin)) _ymin)
  (:xmax
   (&optional __xmax)
   (if __xmax (setq _xmax __xmax)) _xmax)
  (:ymax
   (&optional __ymax)
   (if __ymax (setq _ymax __ymax)) _ymax)
  (:serialization-length
   ()
   (+
    ;; uint16 _xmin
    2
    ;; uint16 _ymin
    2
    ;; uint16 _xmax
    2
    ;; uint16 _ymax
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _xmin
       (write-word _xmin s)
     ;; uint16 _ymin
       (write-word _ymin s)
     ;; uint16 _xmax
       (write-word _xmax s)
     ;; uint16 _ymax
       (write-word _ymax s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _xmin
     (setq _xmin (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ymin
     (setq _ymin (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _xmax
     (setq _xmax (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ymax
     (setq _ymax (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get yolov3_pytorch_ros::xyrange :md5sum-) "44036a17ac3e93c59e9c4fb4fbc536ff")
(setf (get yolov3_pytorch_ros::xyrange :datatype-) "yolov3_pytorch_ros/xyrange")
(setf (get yolov3_pytorch_ros::xyrange :definition-)
      "uint16 xmin
uint16 ymin
uint16 xmax
uint16 ymax



")



(provide :yolov3_pytorch_ros/xyrange "44036a17ac3e93c59e9c4fb4fbc536ff")


