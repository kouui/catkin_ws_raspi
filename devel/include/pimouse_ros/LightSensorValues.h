// Generated by gencpp from file pimouse_ros/LightSensorValues.msg
// DO NOT EDIT!


#ifndef PIMOUSE_ROS_MESSAGE_LIGHTSENSORVALUES_H
#define PIMOUSE_ROS_MESSAGE_LIGHTSENSORVALUES_H


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
struct LightSensorValues_
{
  typedef LightSensorValues_<ContainerAllocator> Type;

  LightSensorValues_()
    : right_forward(0)
    , right_side(0)
    , left_side(0)
    , left_forward(0)
    , sum_all(0)
    , sum_forward(0)  {
    }
  LightSensorValues_(const ContainerAllocator& _alloc)
    : right_forward(0)
    , right_side(0)
    , left_side(0)
    , left_forward(0)
    , sum_all(0)
    , sum_forward(0)  {
  (void)_alloc;
    }



   typedef int16_t _right_forward_type;
  _right_forward_type right_forward;

   typedef int16_t _right_side_type;
  _right_side_type right_side;

   typedef int16_t _left_side_type;
  _left_side_type left_side;

   typedef int16_t _left_forward_type;
  _left_forward_type left_forward;

   typedef int16_t _sum_all_type;
  _sum_all_type sum_all;

   typedef int16_t _sum_forward_type;
  _sum_forward_type sum_forward;





  typedef boost::shared_ptr< ::pimouse_ros::LightSensorValues_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pimouse_ros::LightSensorValues_<ContainerAllocator> const> ConstPtr;

}; // struct LightSensorValues_

typedef ::pimouse_ros::LightSensorValues_<std::allocator<void> > LightSensorValues;

typedef boost::shared_ptr< ::pimouse_ros::LightSensorValues > LightSensorValuesPtr;
typedef boost::shared_ptr< ::pimouse_ros::LightSensorValues const> LightSensorValuesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pimouse_ros::LightSensorValues_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pimouse_ros::LightSensorValues_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::pimouse_ros::LightSensorValues_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pimouse_ros::LightSensorValues_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pimouse_ros::LightSensorValues_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pimouse_ros::LightSensorValues_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pimouse_ros::LightSensorValues_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pimouse_ros::LightSensorValues_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pimouse_ros::LightSensorValues_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c174e6891a013b1ba6a929fcc020e0a3";
  }

  static const char* value(const ::pimouse_ros::LightSensorValues_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc174e6891a013b1bULL;
  static const uint64_t static_value2 = 0xa6a929fcc020e0a3ULL;
};

template<class ContainerAllocator>
struct DataType< ::pimouse_ros::LightSensorValues_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pimouse_ros/LightSensorValues";
  }

  static const char* value(const ::pimouse_ros::LightSensorValues_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pimouse_ros::LightSensorValues_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 right_forward\n\
int16 right_side\n\
int16 left_side\n\
int16 left_forward\n\
int16 sum_all\n\
int16 sum_forward\n\
";
  }

  static const char* value(const ::pimouse_ros::LightSensorValues_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pimouse_ros::LightSensorValues_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.right_forward);
      stream.next(m.right_side);
      stream.next(m.left_side);
      stream.next(m.left_forward);
      stream.next(m.sum_all);
      stream.next(m.sum_forward);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LightSensorValues_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pimouse_ros::LightSensorValues_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pimouse_ros::LightSensorValues_<ContainerAllocator>& v)
  {
    s << indent << "right_forward: ";
    Printer<int16_t>::stream(s, indent + "  ", v.right_forward);
    s << indent << "right_side: ";
    Printer<int16_t>::stream(s, indent + "  ", v.right_side);
    s << indent << "left_side: ";
    Printer<int16_t>::stream(s, indent + "  ", v.left_side);
    s << indent << "left_forward: ";
    Printer<int16_t>::stream(s, indent + "  ", v.left_forward);
    s << indent << "sum_all: ";
    Printer<int16_t>::stream(s, indent + "  ", v.sum_all);
    s << indent << "sum_forward: ";
    Printer<int16_t>::stream(s, indent + "  ", v.sum_forward);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PIMOUSE_ROS_MESSAGE_LIGHTSENSORVALUES_H
