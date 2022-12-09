#!/usr/bin/python

import rospy
from std_msgs.msg import Int32
from yolov3_pytorch_ros.msg import BoundingBox, BoundingBoxes

data = None

def callback(msg):
    global data
    data = msg.bounding_boxes[0].xmin
    print(data)



if __name__ == '__main__':
    rospy.init_node("sublisher_test")
    r = rospy.Rate(1)
    rospy.Subscriber('detected_objects_in_image', BoundingBoxes ,callback = callback)
    rospy.spin()



