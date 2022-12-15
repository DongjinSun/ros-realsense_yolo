#!/usr/bin/python

import rospy
from std_msgs.msg import Int32
from yolov3_pytorch_ros.msg import BoundingBox, BoundingBoxes
from bin_msgs.msg import Target
from sensor_msgs.msg import Image, CameraInfo
from cv_bridge import CvBridge, CvBridgeError
from datetime import datetime
import cv2
import pyrealsense2 as rs

class image:
    def __init__(self):
        self.img = None
        self.bridge = CvBridge()
        self.xc = None
        self.yc = None
        self._class = None
        self.intrinsics = rs.intrinsics()
        self.pub = rospy.Publisher('target',Target, queue_size=1)
    def callback(self,msg):
        if self.xc and self.intrinsics.width:
            x = self.xc[:]
            y = self.yc[:]
            _class = self._class[:]

            send = Target()
            cv_image = self.bridge.imgmsg_to_cv2(msg, "16UC1")
            min_depth = float("inf")
            for i in range(len(x)):
                depth = cv_image[y[i]][x[i]]
                if min_depth > depth:
                    min_depth = depth
                    min_index = i

            pixel = [y[min_index],x[min_index]]
            depth_point = rs.rs2_deproject_pixel_to_point(self.intrinsics, pixel,min_depth)
            print(depth_point, _class[min_index])
            send.y, send.x, send.z, send.type = depth_point[0],depth_point[1],depth_point[2], _class[min_index]
            self.pub.publish(send)
            # depth_point = rs.rs2_deproject_pixel_to_point(, , )
            # print(cv_image.shape)
        else:
            send = Target()
            send.y, send.x, send.z, send.type = 0,0,0,"None"
            self.pub.publish(send)
    def callback_range(self,msg):
        try:
            min=999
            min_index=0
            n=len(msg.bounding_boxes)
            self.xc = [(msg.bounding_boxes[k].xmin+msg.bounding_boxes[k].xmax)//2 for k in range(n)]
            self.yc = [(msg.bounding_boxes[k].ymin+msg.bounding_boxes[k].ymax)//2 for k in range(n)]
            self._class = [msg.bounding_boxes[k].Class for k in range(n)]
        except:
            self.xc = None
            self.yc = None
            print("Not detected")
    
    def callback_info(self,msg):
        if self.xc:
            self.intrinsics.width = msg.width
            self.intrinsics.height = msg.height
            self.intrinsics.ppx = msg.K[2]
            self.intrinsics.ppy = msg.K[5]
            self.intrinsics.fx = msg.K[0]
            self.intrinsics.fy = msg.K[4]
            self.intrinsics.model = rs.distortion.brown_conrady
            for i in range(len(msg.D)):
                self.intrinsics.coeffs[i] = msg.D[i]
                # test
            # print(self.intrinsics.ppx)
        # self.xc = (msg.bounding_boxes[0].xmin+msg.bounding_boxes[0].xmax)/2
        # self.yc = (msg.bounding_boxes[0].ymin+msg.bounding_boxes[0].ymax)/2



# pipeline = rs.pipeline()
# pipe_profile = pipeline.start()
# frames = pipeline.wait_for_frames()
# depth_frame = frames.get_depth_frame()
# color_frame = frames.get_color_frame()
# depth_intrin = depth_frame.profile.as_video_stream_profile().intrinsics
# color_intrin = color_frame.profile.as_video_stream_profile().intrinsics
# depth_to_color_extrin = depth_frame.profile.get_extrinsics_to(color_frame.profile)
# depth_sensor = pipe_profile.get_device().first_depth_sensor()
# depth_scale = depth_sensor.get_depth_scale()
# depth_pixel = [200, 200]
# depth_point = rs.rs2_deproject_pixel_to_point(depth_intrin, depth_pixel, depth_scale)



if __name__ == '__main__':
    imgs = image()
    rospy.init_node("sublisher_test")
    rospy.Subscriber('camera/aligned_depth_to_color/image_raw', Image, imgs.callback)
    rospy.Subscriber('detected_objects_in_image', BoundingBoxes, imgs.callback_range)
    rospy.Subscriber('camera/aligned_depth_to_color/camera_info', CameraInfo,imgs.callback_info)
    rospy.spin()
    ##test
    # pipeline = rs.pipeline()
    # pipe_profile = pipeline.start()
    # frames = pipeline.wait_for_frames()
    # depth_frame = frames.get_depth_frame()
    # color_frame = frames.get_color_frame()
    # depth_intrin = depth_frame.profile.as_video_stream_profile().intrinsics
    # print(depth_intrin.model)
    # color_intrin = color_frame.profile.as_video_stream_profile().intrinsics
    # depth_to_color_extrin = depth_frame.profile.get_extrinsics_to(color_frame.profile)
    # depth_sensor = pipe_profile.get_device().first_depth_sensor()
    # depth_scale = depth_sensor.get_depth_scale()
    # depth_pixel = [200, 200]
    # depth_point = rs.rs2_deproject_pixel_to_point(depth_intrin, depth_pixel, depth_scale)

