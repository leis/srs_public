/* Auto-generated by genmsg_cpp for file /home/lei/git/care-o-bot/srs_public/srs_decision_making/msg/UserGoal.msg */
#ifndef SRS_DECISION_MAKING_MESSAGE_USERGOAL_H
#define SRS_DECISION_MAKING_MESSAGE_USERGOAL_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"


namespace srs_decision_making
{
template <class ContainerAllocator>
struct UserGoal_ {
  typedef UserGoal_<ContainerAllocator> Type;

  UserGoal_()
  : actionName()
  , parameter()
  , solution()
  {
  }

  UserGoal_(const ContainerAllocator& _alloc)
  : actionName(_alloc)
  , parameter(_alloc)
  , solution(_alloc)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _actionName_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  actionName;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _parameter_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  parameter;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _solution_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  solution;


private:
  static const char* __s_getDataType_() { return "srs_decision_making/UserGoal"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "188a4af8bd9d84c0c8afdac336654ba9"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#goal definition\n\
string actionName\n\
string parameter\n\
string solution\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, actionName);
    ros::serialization::serialize(stream, parameter);
    ros::serialization::serialize(stream, solution);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, actionName);
    ros::serialization::deserialize(stream, parameter);
    ros::serialization::deserialize(stream, solution);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(actionName);
    size += ros::serialization::serializationLength(parameter);
    size += ros::serialization::serializationLength(solution);
    return size;
  }

  typedef boost::shared_ptr< ::srs_decision_making::UserGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::srs_decision_making::UserGoal_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct UserGoal
typedef  ::srs_decision_making::UserGoal_<std::allocator<void> > UserGoal;

typedef boost::shared_ptr< ::srs_decision_making::UserGoal> UserGoalPtr;
typedef boost::shared_ptr< ::srs_decision_making::UserGoal const> UserGoalConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::srs_decision_making::UserGoal_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::srs_decision_making::UserGoal_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace srs_decision_making

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::srs_decision_making::UserGoal_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::srs_decision_making::UserGoal_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::srs_decision_making::UserGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "188a4af8bd9d84c0c8afdac336654ba9";
  }

  static const char* value(const  ::srs_decision_making::UserGoal_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x188a4af8bd9d84c0ULL;
  static const uint64_t static_value2 = 0xc8afdac336654ba9ULL;
};

template<class ContainerAllocator>
struct DataType< ::srs_decision_making::UserGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "srs_decision_making/UserGoal";
  }

  static const char* value(const  ::srs_decision_making::UserGoal_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::srs_decision_making::UserGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#goal definition\n\
string actionName\n\
string parameter\n\
string solution\n\
\n\
";
  }

  static const char* value(const  ::srs_decision_making::UserGoal_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::srs_decision_making::UserGoal_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.actionName);
    stream.next(m.parameter);
    stream.next(m.solution);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct UserGoal_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::srs_decision_making::UserGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::srs_decision_making::UserGoal_<ContainerAllocator> & v) 
  {
    s << indent << "actionName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.actionName);
    s << indent << "parameter: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.parameter);
    s << indent << "solution: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.solution);
  }
};


} // namespace message_operations
} // namespace ros

#endif // SRS_DECISION_MAKING_MESSAGE_USERGOAL_H

