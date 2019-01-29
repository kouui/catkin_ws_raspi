// Generated by gencpp from file raspimouse_ros_2/ButtonValues.msg
// DO NOT EDIT!


#ifndef RASPIMOUSE_ROS_2_MESSAGE_BUTTONVALUES_H
#define RASPIMOUSE_ROS_2_MESSAGE_BUTTONVALUES_H


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
struct ButtonValues_
{
  typedef ButtonValues_<ContainerAllocator> Type;

  ButtonValues_()
    : front(false)
    , mid(false)
    , rear(false)
    , front_toggle(false)
    , mid_toggle(false)
    , rear_toggle(false)  {
    }
  ButtonValues_(const ContainerAllocator& _alloc)
    : front(false)
    , mid(false)
    , rear(false)
    , front_toggle(false)
    , mid_toggle(false)
    , rear_toggle(false)  {
  (void)_alloc;
    }



   typedef uint8_t _front_type;
  _front_type front;

   typedef uint8_t _mid_type;
  _mid_type mid;

   typedef uint8_t _rear_type;
  _rear_type rear;

   typedef uint8_t _front_toggle_type;
  _front_toggle_type front_toggle;

   typedef uint8_t _mid_toggle_type;
  _mid_toggle_type mid_toggle;

   typedef uint8_t _rear_toggle_type;
  _rear_toggle_type rear_toggle;





  typedef boost::shared_ptr< ::raspimouse_ros_2::ButtonValues_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::raspimouse_ros_2::ButtonValues_<ContainerAllocator> const> ConstPtr;

}; // struct ButtonValues_

typedef ::raspimouse_ros_2::ButtonValues_<std::allocator<void> > ButtonValues;

typedef boost::shared_ptr< ::raspimouse_ros_2::ButtonValues > ButtonValuesPtr;
typedef boost::shared_ptr< ::raspimouse_ros_2::ButtonValues const> ButtonValuesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::raspimouse_ros_2::ButtonValues_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::raspimouse_ros_2::ButtonValues_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::raspimouse_ros_2::ButtonValues_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::raspimouse_ros_2::ButtonValues_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::raspimouse_ros_2::ButtonValues_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::raspimouse_ros_2::ButtonValues_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::raspimouse_ros_2::ButtonValues_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::raspimouse_ros_2::ButtonValues_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::raspimouse_ros_2::ButtonValues_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a4d235e22ff7d8affc3de7deb89cb505";
  }

  static const char* value(const ::raspimouse_ros_2::ButtonValues_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa4d235e22ff7d8afULL;
  static const uint64_t static_value2 = 0xfc3de7deb89cb505ULL;
};

template<class ContainerAllocator>
struct DataType< ::raspimouse_ros_2::ButtonValues_<ContainerAllocator> >
{
  static const char* value()
  {
    return "raspimouse_ros_2/ButtonValues";
  }

  static const char* value(const ::raspimouse_ros_2::ButtonValues_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::raspimouse_ros_2::ButtonValues_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool front\n\
bool mid\n\
bool rear\n\
bool front_toggle\n\
bool mid_toggle\n\
bool rear_toggle\n\
";
  }

  static const char* value(const ::raspimouse_ros_2::ButtonValues_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::raspimouse_ros_2::ButtonValues_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.front);
      stream.next(m.mid);
      stream.next(m.rear);
      stream.next(m.front_toggle);
      stream.next(m.mid_toggle);
      stream.next(m.rear_toggle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ButtonValues_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::raspimouse_ros_2::ButtonValues_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::raspimouse_ros_2::ButtonValues_<ContainerAllocator>& v)
  {
    s << indent << "front: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.front);
    s << indent << "mid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mid);
    s << indent << "rear: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.rear);
    s << indent << "front_toggle: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.front_toggle);
    s << indent << "mid_toggle: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mid_toggle);
    s << indent << "rear_toggle: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.rear_toggle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RASPIMOUSE_ROS_2_MESSAGE_BUTTONVALUES_H