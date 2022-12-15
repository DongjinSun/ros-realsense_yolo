#!/usr/bin/python

import rospy
from std_msgs.msg import Int32
from yolov3_pytorch_ros.msg import BoundingBox, BoundingBoxes
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
from datetime import datetime
import cv2
data = None

class image:
    def __init__(self):
        self.img = None
        self.bridge = CvBridge()

    def callback(self,msg):
        global data
        cv_image = self.bridge.imgmsg_to_cv2(msg, "rgb8")
        self.img = cv_image



if __name__ == '__main__':
    imgs = image()
    rospy.init_node("sublisher_test")
    rospy.Subscriber('camera/color/image_raw', Image, imgs.callback)
    while not rospy.is_shutdown():
        n = datetime.now()
        cv2.imwrite("./image/target"+str(n.minute)+str(n.second)+".jpg", imgs.img)
        # cv2.imwrite("target.jpg", imgs.img)
        print("Imsaved")
        rospy.sleep(1)




