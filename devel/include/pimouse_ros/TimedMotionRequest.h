// Generated by gencpp from file pimouse_ros/TimedMotionRequest.msg
// DO NOT EDIT!


#ifndef PIMOUSE_ROS_MESSAGE_TIMEDMOTIONREQUEST_H
#define PIMOUSE_ROS_MESSAGE_TIMEDMOTIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pimouse_ros
{
template <class ContainerAllocator>
struct TimedMotionRequest_
{
  typedef TimedMotionRequest_<ContainerAllocator> Type;

  TimedMotionRequest_()
    : left_hz(0)
    , right_hz(0)
    , duration_ms(0)  {
    }
  TimedMotionRequest_(const ContainerAllocator& _alloc)
    : left_hz(0)
    , right_hz(0)
    , duration_ms(0)  {
  (void)_alloc;
    }



   typedef int16_t _left_hz_type;
  _left_hz_type left_hz;

   typedef int16_t _right_hz_type;
  _right_hz_type right_hz;

   typedef uint32_t _duration_ms_type;
  _duration_ms_type duration_ms;





  typedef boost::shared_ptr< ::pimouse_ros::TimedMotionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pimouse_ros::TimedMotionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TimedMotionRequest_

typedef ::pimouse_ros::TimedMotionRequest_<std::allocator<void> > TimedMotionRequest;

typedef boost::shared_ptr< ::pimouse_ros::TimedMotionRequest > TimedMotionRequestPtr;
typedef boost::shared_ptr< ::pimouse_ros::TimedMotionRequest const> TimedMotionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pimouse_ros::TimedMotionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pimouse_ros::TimedMotionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pimouse_ros

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg'], 'pimouse_ros': ['/home/ubuntu/catkin_ws/src/pimouse_ros/msg', '/home/ubuntu/catkin_ws/devel/share/pimouse_ros/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pimouse_ros::TimedMotionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pimouse_ros::TimedMotionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pimouse_ros::TimedMotionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pimouse_ros::TimedMotionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pimouse_ros::TimedMotionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pimouse_ros::TimedMotionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pimouse_ros::TimedMotionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d70b1c52f947559f961bed5aa1647139";
  }

  static const char* value(const ::pimouse_ros::TimedMotionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd70b1c52f947559fULL;
  static const uint64_t static_value2 = 0x961bed5aa1647139ULL;
};

template<class ContainerAllocator>
struct DataType< ::pimouse_ros::TimedMotionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pimouse_ros/TimedMotionRequest";
  }

  static const char* value(const ::pimouse_ros::TimedMotionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pimouse_ros::TimedMotionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 left_hz\n\
int16 right_hz\n\
uint32 duration_ms\n\
";
  }

  static const char* value(const ::pimouse_ros::TimedMotionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pimouse_ros::TimedMotionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.left_hz);
      stream.next(m.right_hz);
      stream.next(m.duration_ms);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TimedMotionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pimouse_ros::TimedMotionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pimouse_ros::TimedMotionRequest_<ContainerAllocator>& v)
  {
    s << indent << "left_hz: ";
    Printer<int16_t>::stream(s, indent + "  ", v.left_hz);
    s << indent << "right_hz: ";
    Printer<int16_t>::stream(s, indent + "  ", v.right_hz);
    s << indent << "duration_ms: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.duration_ms);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PIMOUSE_ROS_MESSAGE_TIMEDMOTIONREQUEST_H
