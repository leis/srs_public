/* Auto-generated by genmsg_cpp for file /home/lei/git/care-o-bot/srs_public/srs_decision_making/msg/ExecutionActionGoal.msg */
#ifndef SRS_DECISION_MAKING_MESSAGE_EXECUTIONACTIONGOAL_H
#define SRS_DECISION_MAKING_MESSAGE_EXECUTIONACTIONGOAL_H
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

#include "std_msgs/Header.h"
#include "actionlib_msgs/GoalID.h"
#include "srs_decision_making/ExecutionGoal.h"

namespace srs_decision_making
{
template <class ContainerAllocator>
struct ExecutionActionGoal_ {
  typedef ExecutionActionGoal_<ContainerAllocator> Type;

  ExecutionActionGoal_()
  : header()
  , goal_id()
  , goal()
  {
  }

  ExecutionActionGoal_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , goal_id(_alloc)
  , goal(_alloc)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
   ::actionlib_msgs::GoalID_<ContainerAllocator>  goal_id;

  typedef  ::srs_decision_making::ExecutionGoal_<ContainerAllocator>  _goal_type;
   ::srs_decision_making::ExecutionGoal_<ContainerAllocator>  goal;


private:
  static const char* __s_getDataType_() { return "srs_decision_making/ExecutionActionGoal"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "737236406c3b3bfcfb2c891968cca746"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
ExecutionGoal goal\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.secs: seconds (stamp_secs) since epoch\n\
# * stamp.nsecs: nanoseconds since stamp_secs\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: srs_decision_making/ExecutionGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#define the goal, srs_msgs/srs_action[] action_sequence	#Specify what action sequence to be applied\n\
string action         # to deprecate, replaced by json_parameters. Kept for backward compatibility\n\
string parameter      # to deprecate, replaced by json_parameters\n\
uint32 priority       # to deprecate\n\
string json_parameters   # new added parameter in json (test by Ze)\n\
# string[] parameters   # to deprecate\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, header);
    ros::serialization::serialize(stream, goal_id);
    ros::serialization::serialize(stream, goal);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, header);
    ros::serialization::deserialize(stream, goal_id);
    ros::serialization::deserialize(stream, goal);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(header);
    size += ros::serialization::serializationLength(goal_id);
    size += ros::serialization::serializationLength(goal);
    return size;
  }

  typedef boost::shared_ptr< ::srs_decision_making::ExecutionActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::srs_decision_making::ExecutionActionGoal_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct ExecutionActionGoal
typedef  ::srs_decision_making::ExecutionActionGoal_<std::allocator<void> > ExecutionActionGoal;

typedef boost::shared_ptr< ::srs_decision_making::ExecutionActionGoal> ExecutionActionGoalPtr;
typedef boost::shared_ptr< ::srs_decision_making::ExecutionActionGoal const> ExecutionActionGoalConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::srs_decision_making::ExecutionActionGoal_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::srs_decision_making::ExecutionActionGoal_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace srs_decision_making

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::srs_decision_making::ExecutionActionGoal_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::srs_decision_making::ExecutionActionGoal_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::srs_decision_making::ExecutionActionGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "737236406c3b3bfcfb2c891968cca746";
  }

  static const char* value(const  ::srs_decision_making::ExecutionActionGoal_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x737236406c3b3bfcULL;
  static const uint64_t static_value2 = 0xfb2c891968cca746ULL;
};

template<class ContainerAllocator>
struct DataType< ::srs_decision_making::ExecutionActionGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "srs_decision_making/ExecutionActionGoal";
  }

  static const char* value(const  ::srs_decision_making::ExecutionActionGoal_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::srs_decision_making::ExecutionActionGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
ExecutionGoal goal\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.secs: seconds (stamp_secs) since epoch\n\
# * stamp.nsecs: nanoseconds since stamp_secs\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: srs_decision_making/ExecutionGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#define the goal, srs_msgs/srs_action[] action_sequence	#Specify what action sequence to be applied\n\
string action         # to deprecate, replaced by json_parameters. Kept for backward compatibility\n\
string parameter      # to deprecate, replaced by json_parameters\n\
uint32 priority       # to deprecate\n\
string json_parameters   # new added parameter in json (test by Ze)\n\
# string[] parameters   # to deprecate\n\
\n\
";
  }

  static const char* value(const  ::srs_decision_making::ExecutionActionGoal_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::srs_decision_making::ExecutionActionGoal_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::srs_decision_making::ExecutionActionGoal_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::srs_decision_making::ExecutionActionGoal_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.goal_id);
    stream.next(m.goal);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct ExecutionActionGoal_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::srs_decision_making::ExecutionActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::srs_decision_making::ExecutionActionGoal_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
s << std::endl;
    Printer< ::srs_decision_making::ExecutionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};


} // namespace message_operations
} // namespace ros

#endif // SRS_DECISION_MAKING_MESSAGE_EXECUTIONACTIONGOAL_H

