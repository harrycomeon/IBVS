// Generated by gencpp from file ur5_vs/states.msg
// DO NOT EDIT!


#ifndef UR5_VS_MESSAGE_STATES_H
#define UR5_VS_MESSAGE_STATES_H


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
struct states_
{
  typedef states_<ContainerAllocator> Type;

  states_()
    : p0()
    , p1()
    , i0()
    , i1()
    , d0()
    , d1()  {
    }
  states_(const ContainerAllocator& _alloc)
    : p0(_alloc)
    , p1(_alloc)
    , i0(_alloc)
    , i1(_alloc)
    , d0(_alloc)
    , d1(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float64_<ContainerAllocator>  _p0_type;
  _p0_type p0;

   typedef  ::std_msgs::Float64_<ContainerAllocator>  _p1_type;
  _p1_type p1;

   typedef  ::std_msgs::Float64_<ContainerAllocator>  _i0_type;
  _i0_type i0;

   typedef  ::std_msgs::Float64_<ContainerAllocator>  _i1_type;
  _i1_type i1;

   typedef  ::std_msgs::Float64_<ContainerAllocator>  _d0_type;
  _d0_type d0;

   typedef  ::std_msgs::Float64_<ContainerAllocator>  _d1_type;
  _d1_type d1;





  typedef boost::shared_ptr< ::ur5_vs::states_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ur5_vs::states_<ContainerAllocator> const> ConstPtr;

}; // struct states_

typedef ::ur5_vs::states_<std::allocator<void> > states;

typedef boost::shared_ptr< ::ur5_vs::states > statesPtr;
typedef boost::shared_ptr< ::ur5_vs::states const> statesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ur5_vs::states_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ur5_vs::states_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ur5_vs::states_<ContainerAllocator1> & lhs, const ::ur5_vs::states_<ContainerAllocator2> & rhs)
{
  return lhs.p0 == rhs.p0 &&
    lhs.p1 == rhs.p1 &&
    lhs.i0 == rhs.i0 &&
    lhs.i1 == rhs.i1 &&
    lhs.d0 == rhs.d0 &&
    lhs.d1 == rhs.d1;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ur5_vs::states_<ContainerAllocator1> & lhs, const ::ur5_vs::states_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ur5_vs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ur5_vs::states_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur5_vs::states_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur5_vs::states_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur5_vs::states_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur5_vs::states_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur5_vs::states_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ur5_vs::states_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2ad1edff9a04bf37f717ceef18902369";
  }

  static const char* value(const ::ur5_vs::states_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2ad1edff9a04bf37ULL;
  static const uint64_t static_value2 = 0xf717ceef18902369ULL;
};

template<class ContainerAllocator>
struct DataType< ::ur5_vs::states_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ur5_vs/states";
  }

  static const char* value(const ::ur5_vs::states_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ur5_vs::states_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float64 p0\n"
"std_msgs/Float64 p1\n"
"std_msgs/Float64 i0\n"
"std_msgs/Float64 i1\n"
"std_msgs/Float64 d0\n"
"std_msgs/Float64 d1\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float64\n"
"float64 data\n"
;
  }

  static const char* value(const ::ur5_vs::states_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ur5_vs::states_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.p0);
      stream.next(m.p1);
      stream.next(m.i0);
      stream.next(m.i1);
      stream.next(m.d0);
      stream.next(m.d1);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct states_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ur5_vs::states_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ur5_vs::states_<ContainerAllocator>& v)
  {
    s << indent << "p0: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.p0);
    s << indent << "p1: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.p1);
    s << indent << "i0: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.i0);
    s << indent << "i1: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.i1);
    s << indent << "d0: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.d0);
    s << indent << "d1: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.d1);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UR5_VS_MESSAGE_STATES_H
