// Generated by gencpp from file yolov3_pytorch_ros/BoundingBox.msg
// DO NOT EDIT!


#ifndef YOLOV3_PYTORCH_ROS_MESSAGE_BOUNDINGBOX_H
#define YOLOV3_PYTORCH_ROS_MESSAGE_BOUNDINGBOX_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace yolov3_pytorch_ros
{
template <class ContainerAllocator>
struct BoundingBox_
{
  typedef BoundingBox_<ContainerAllocator> Type;

  BoundingBox_()
    : Class()
    , probability(0.0)
    , xmin(0)
    , ymin(0)
    , xmax(0)
    , ymax(0)  {
    }
  BoundingBox_(const ContainerAllocator& _alloc)
    : Class(_alloc)
    , probability(0.0)
    , xmin(0)
    , ymin(0)
    , xmax(0)
    , ymax(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _Class_type;
  _Class_type Class;

   typedef double _probability_type;
  _probability_type probability;

   typedef int64_t _xmin_type;
  _xmin_type xmin;

   typedef int64_t _ymin_type;
  _ymin_type ymin;

   typedef int64_t _xmax_type;
  _xmax_type xmax;

   typedef int64_t _ymax_type;
  _ymax_type ymax;





  typedef boost::shared_ptr< ::yolov3_pytorch_ros::BoundingBox_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yolov3_pytorch_ros::BoundingBox_<ContainerAllocator> const> ConstPtr;

}; // struct BoundingBox_

typedef ::yolov3_pytorch_ros::BoundingBox_<std::allocator<void> > BoundingBox;

typedef boost::shared_ptr< ::yolov3_pytorch_ros::BoundingBox > BoundingBoxPtr;
typedef boost::shared_ptr< ::yolov3_pytorch_ros::BoundingBox const> BoundingBoxConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yolov3_pytorch_ros::BoundingBox_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yolov3_pytorch_ros::BoundingBox_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace yolov3_pytorch_ros

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'yolov3_pytorch_ros': ['/home/sun/ros_ws/src/yolov3_pytorch_ros/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::yolov3_pytorch_ros::BoundingBox_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yolov3_pytorch_ros::BoundingBox_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yolov3_pytorch_ros::BoundingBox_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yolov3_pytorch_ros::BoundingBox_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yolov3_pytorch_ros::BoundingBox_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yolov3_pytorch_ros::BoundingBox_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yolov3_pytorch_ros::BoundingBox_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8434cf5c7ed632005efa1b05bb45ca2a";
  }

  static const char* value(const ::yolov3_pytorch_ros::BoundingBox_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8434cf5c7ed63200ULL;
  static const uint64_t static_value2 = 0x5efa1b05bb45ca2aULL;
};

template<class ContainerAllocator>
struct DataType< ::yolov3_pytorch_ros::BoundingBox_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yolov3_pytorch_ros/BoundingBox";
  }

  static const char* value(const ::yolov3_pytorch_ros::BoundingBox_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yolov3_pytorch_ros::BoundingBox_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Copyright (c) 2017, Marko Bjelonic, Robotic Systems Lab, ETH Zurich\n\
# All rights reserved.\n\
\n\
# Redistribution and use in source and binary forms, with or without\n\
# modification, are permitted provided that the following conditions are met:\n\
#     * Redistributions of source code must retain the above copyright\n\
#       notice, this list of conditions and the following disclaimer.\n\
#     * Redistributions in binary form must reproduce the above copyright\n\
#       notice, this list of conditions and the following disclaimer in the\n\
#       documentation and/or other materials provided with the distribution.\n\
#     * Neither the name of the copyright holder nor the names of its\n\
#       contributors may be used to endorse or promote products derived\n\
#       from this software without specific prior written permission.\n\
\n\
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND\n\
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED\n\
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE\n\
# DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY\n\
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES\n\
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;\n\
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND\n\
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n\
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS\n\
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\n\
\n\
string Class\n\
float64 probability\n\
int64 xmin\n\
int64 ymin\n\
int64 xmax\n\
int64 ymax\n\
\n\
";
  }

  static const char* value(const ::yolov3_pytorch_ros::BoundingBox_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yolov3_pytorch_ros::BoundingBox_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Class);
      stream.next(m.probability);
      stream.next(m.xmin);
      stream.next(m.ymin);
      stream.next(m.xmax);
      stream.next(m.ymax);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BoundingBox_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yolov3_pytorch_ros::BoundingBox_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yolov3_pytorch_ros::BoundingBox_<ContainerAllocator>& v)
  {
    s << indent << "Class: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.Class);
    s << indent << "probability: ";
    Printer<double>::stream(s, indent + "  ", v.probability);
    s << indent << "xmin: ";
    Printer<int64_t>::stream(s, indent + "  ", v.xmin);
    s << indent << "ymin: ";
    Printer<int64_t>::stream(s, indent + "  ", v.ymin);
    s << indent << "xmax: ";
    Printer<int64_t>::stream(s, indent + "  ", v.xmax);
    s << indent << "ymax: ";
    Printer<int64_t>::stream(s, indent + "  ", v.ymax);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YOLOV3_PYTORCH_ROS_MESSAGE_BOUNDINGBOX_H
