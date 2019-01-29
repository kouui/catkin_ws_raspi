// Generated by gencpp from file raspimouse_ros_2/MotorFreqs.msg
// DO NOT EDIT!


#ifndef RASPIMOUSE_ROS_2_MESSAGE_MOTORFREQS_H
#define RASPIMOUSE_ROS_2_MESSAGE_MOTORFREQS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace raspimouse_ros_2
{
template <class ContainerAllocator>
struct MotorFreqs_
{
  typedef MotorFreqs_<ContainerAllocator> Type;

  MotorFreqs_()
    : left_hz(0)
    , right_hz(0)  {
    }
  MotorFreqs_(const ContainerAllocator& _alloc)
    : left_hz(0)
    , right_hz(0)  {
  (void)_alloc;
    }



   typedef int16_t _left_hz_type;
  _left_hz_type left_hz;

   typedef int16_t _right_hz_type;
  _right_hz_type right_hz;





  typedef boost::shared_ptr< ::raspimouse_ros_2::MotorFreqs_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::raspimouse_ros_2::MotorFreqs_<ContainerAllocator> const> ConstPtr;

}; // struct MotorFreqs_

typedef ::raspimouse_ros_2::MotorFreqs_<std::allocator<void> > MotorFreqs;

typedef boost::shared_ptr< ::raspimouse_ros_2::MotorFreqs > MotorFreqsPtr;
typedef boost::shared_ptr< ::raspimouse_ros_2::MotorFreqs const> MotorFreqsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::raspimouse_ros_2::MotorFreqs_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::raspimouse_ros_2::MotorFreqs_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace raspimouse_ros_2

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'raspimouse_ros_2': ['/home/ubuntu/catkin_ws/src/raspimouse_ros_2/msg', '/home/ubuntu/catkin_ws/devel/share/raspimouse_ros_2/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::raspimouse_ros_2::MotorFreqs_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::raspimouse_ros_2::MotorFreqs_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::raspimouse_ros_2::MotorFreqs_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::raspimouse_ros_2::MotorFreqs_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::raspimouse_ros_2::MotorFreqs_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::raspimouse_ros_2::MotorFreqs_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::raspimouse_ros_2::MotorFreqs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "921a8bc2b9eda90f5d3ca620a3549e13";
  }

  static const char* value(const ::raspimouse_ros_2::MotorFreqs_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x921a8bc2b9eda90fULL;
  static const uint64_t static_value2 = 0x5d3ca620a3549e13ULL;
};

template<class ContainerAllocator>
struct DataType< ::raspimouse_ros_2::MotorFreqs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "raspimouse_ros_2/MotorFreqs";
  }

  static const char* value(const ::raspimouse_ros_2::MotorFreqs_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::raspimouse_ros_2::MotorFreqs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 left_hz\n\
int16 right_hz\n\
";
  }

  static const char* value(const ::raspimouse_ros_2::MotorFreqs_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::raspimouse_ros_2::MotorFreqs_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.left_hz);
      stream.next(m.right_hz);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MotorFreqs_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::raspimouse_ros_2::MotorFreqs_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::raspimouse_ros_2::MotorFreqs_<ContainerAllocator>& v)
  {
    s << indent << "left_hz: ";
    Printer<int16_t>::stream(s, indent + "  ", v.left_hz);
    s << indent << "right_hz: ";
    Printer<int16_t>::stream(s, indent + "  ", v.right_hz);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RASPIMOUSE_ROS_2_MESSAGE_MOTORFREQS_H
