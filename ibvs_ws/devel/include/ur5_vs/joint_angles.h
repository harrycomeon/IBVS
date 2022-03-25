// Generated by gencpp from file ur5_vs/joint_angles.msg
// DO NOT EDIT!


#ifndef UR5_VS_MESSAGE_JOINT_ANGLES_H
#define UR5_VS_MESSAGE_JOINT_ANGLES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float64.h>
#include <std_msgs/Float64.h>
#include <std_msgs/Float64.h>
#include <std_msgs/Float64.h>
#include <std_msgs/Float64.h>
#include <std_msgs/Float64.h>

namespace ur5_vs
{
template <class ContainerAllocator>
struct joint_angles_
{
  typedef joint_angles_<ContainerAllocator> Type;

  joint_angles_()
    : ang0()
    , ang1()
    , ang2()
    , ang3()
    , ang4()
    , ang5()  {
    }
  joint_angles_(const ContainerAllocator& _alloc)
    : ang0(_alloc)
    , ang1(_alloc)
    , ang2(_alloc)
    , ang3(_alloc)
    , ang4(_alloc)
    , ang5(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float64_<ContainerAllocator>  _ang0_type;
  _ang0_type ang0;

   typedef  ::std_msgs::Float64_<ContainerAllocator>  _ang1_type;
  _ang1_type ang1;

   typedef  ::std_msgs::Float64_<ContainerAllocator>  _ang2_type;
  _ang2_type ang2;

   typedef  ::std_msgs::Float64_<ContainerAllocator>  _ang3_type;
  _ang3_type ang3;

   typedef  ::std_msgs::Float64_<ContainerAllocator>  _ang4_type;
  _ang4_type ang4;

   typedef  ::std_msgs::Float64_<ContainerAllocator>  _ang5_type;
  _ang5_type ang5;





  typedef boost::shared_ptr< ::ur5_vs::joint_angles_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ur5_vs::joint_angles_<ContainerAllocator> const> ConstPtr;

}; // struct joint_angles_

typedef ::ur5_vs::joint_angles_<std::allocator<void> > joint_angles;

typedef boost::shared_ptr< ::ur5_vs::joint_angles > joint_anglesPtr;
typedef boost::shared_ptr< ::ur5_vs::joint_angles const> joint_anglesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ur5_vs::joint_angles_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ur5_vs::joint_angles_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ur5_vs::joint_angles_<ContainerAllocator1> & lhs, const ::ur5_vs::joint_angles_<ContainerAllocator2> & rhs)
{
  return lhs.ang0 == rhs.ang0 &&
    lhs.ang1 == rhs.ang1 &&
    lhs.ang2 == rhs.ang2 &&
    lhs.ang3 == rhs.ang3 &&
    lhs.ang4 == rhs.ang4 &&
    lhs.ang5 == rhs.ang5;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ur5_vs::joint_angles_<ContainerAllocator1> & lhs, const ::ur5_vs::joint_angles_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ur5_vs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ur5_vs::joint_angles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur5_vs::joint_angles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur5_vs::joint_angles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur5_vs::joint_angles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur5_vs::joint_angles_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur5_vs::joint_angles_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ur5_vs::joint_angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "64ff27ecf58f5c4afd7b139766a662b7";
  }

  static const char* value(const ::ur5_vs::joint_angles_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x64ff27ecf58f5c4aULL;
  static const uint64_t static_value2 = 0xfd7b139766a662b7ULL;
};

template<class ContainerAllocator>
struct DataType< ::ur5_vs::joint_angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ur5_vs/joint_angles";
  }

  static const char* value(const ::ur5_vs::joint_angles_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ur5_vs::joint_angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float64 ang0\n"
"std_msgs/Float64 ang1\n"
"std_msgs/Float64 ang2\n"
"std_msgs/Float64 ang3\n"
"std_msgs/Float64 ang4\n"
"std_msgs/Float64 ang5\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float64\n"
"float64 data\n"
;
  }

  static const char* value(const ::ur5_vs::joint_angles_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ur5_vs::joint_angles_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ang0);
      stream.next(m.ang1);
      stream.next(m.ang2);
      stream.next(m.ang3);
      stream.next(m.ang4);
      stream.next(m.ang5);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct joint_angles_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ur5_vs::joint_angles_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ur5_vs::joint_angles_<ContainerAllocator>& v)
  {
    s << indent << "ang0: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.ang0);
    s << indent << "ang1: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.ang1);
    s << indent << "ang2: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.ang2);
    s << indent << "ang3: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.ang3);
    s << indent << "ang4: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.ang4);
    s << indent << "ang5: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.ang5);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UR5_VS_MESSAGE_JOINT_ANGLES_H