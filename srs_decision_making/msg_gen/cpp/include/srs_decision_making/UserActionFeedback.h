/* Auto-generated by genmsg_cpp for file /home/lei/git/care-o-bot/srs_public/srs_decision_making/msg/UserActionFeedback.msg */
#ifndef SRS_DECISION_MAKING_MESSAGE_USERACTIONFEEDBACK_H
#define SRS_DECISION_MAKING_MESSAGE_USERACTIONFEEDBACK_H
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
#include "actionlib_msgs/GoalStatus.h"
#include "srs_decision_making/UserFeedback.h"

namespace srs_decision_making
{
template <class ContainerAllocator>
struct UserActionFeedback_ {
  typedef UserActionFeedback_<ContainerAllocator> Type;

  UserActionFeedback_()
  : header()
  , status()
  , feedback()
  {
  }

  UserActionFeedback_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , status(_alloc)
  , feedback(_alloc)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef  ::actionlib_msgs::GoalStatus_<ContainerAllocator>  _status_type;
   ::actionlib_msgs::GoalStatus_<ContainerAllocator>  status;

  typedef  ::srs_decision_making::UserFeedback_<ContainerAllocator>  _feedback_type;
   ::srs_decision_making::UserFeedback_<ContainerAllocator>  feedback;


private:
  static const char* __s_getDataType_() { return "srs_decision_making/UserActionFeedback"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "c4fa092034754b2501b5f5fa03399968"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
UserFeedback feedback\n\
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
MSG: actionlib_msgs/GoalStatus\n\
GoalID goal_id\n\
uint8 status\n\
uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n\
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n\
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n\
                            #   and has since completed its execution (Terminal State)\n\
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n\
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n\
                            #    to some failure (Terminal State)\n\
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n\
                            #    because the goal was unattainable or invalid (Terminal State)\n\
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n\
                            #    and has not yet completed execution\n\
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n\
                            #    but the action server has not yet confirmed that the goal is canceled\n\
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n\
                            #    and was successfully cancelled (Terminal State)\n\
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n\
                            #    sent over the wire by an action server\n\
\n\
#Allow for the user to associate a string with GoalStatus for debugging\n\
string text\n\
\n\
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
MSG: srs_decision_making/UserFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#feedback\n\
string currentState\n\
bool solutionRequired\n\
uint32 exceptionalCase_id\n\
\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, header);
    ros::serialization::serialize(stream, status);
    ros::serialization::serialize(stream, feedback);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, header);
    ros::serialization::deserialize(stream, status);
    ros::serialization::deserialize(stream, feedback);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(header);
    size += ros::serialization::serializationLength(status);
    size += ros::serialization::serializationLength(feedback);
    return size;
  }

  typedef boost::shared_ptr< ::srs_decision_making::UserActionFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::srs_decision_making::UserActionFeedback_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct UserActionFeedback
typedef  ::srs_decision_making::UserActionFeedback_<std::allocator<void> > UserActionFeedback;

typedef boost::shared_ptr< ::srs_decision_making::UserActionFeedback> UserActionFeedbackPtr;
typedef boost::shared_ptr< ::srs_decision_making::UserActionFeedback const> UserActionFeedbackConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::srs_decision_making::UserActionFeedback_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::srs_decision_making::UserActionFeedback_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace srs_decision_making

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::srs_decision_making::UserActionFeedback_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::srs_decision_making::UserActionFeedback_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::srs_decision_making::UserActionFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "c4fa092034754b2501b5f5fa03399968";
  }

  static const char* value(const  ::srs_decision_making::UserActionFeedback_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xc4fa092034754b25ULL;
  static const uint64_t static_value2 = 0x01b5f5fa03399968ULL;
};

template<class ContainerAllocator>
struct DataType< ::srs_decision_making::UserActionFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "srs_decision_making/UserActionFeedback";
  }

  static const char* value(const  ::srs_decision_making::UserActionFeedback_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::srs_decision_making::UserActionFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
UserFeedback feedback\n\
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
MSG: actionlib_msgs/GoalStatus\n\
GoalID goal_id\n\
uint8 status\n\
uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n\
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n\
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n\
                            #   and has since completed its execution (Terminal State)\n\
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n\
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n\
                            #    to some failure (Terminal State)\n\
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n\
                            #    because the goal was unattainable or invalid (Terminal State)\n\
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n\
                            #    and has not yet completed execution\n\
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n\
                            #    but the action server has not yet confirmed that the goal is canceled\n\
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n\
                            #    and was successfully cancelled (Terminal State)\n\
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n\
                            #    sent over the wire by an action server\n\
\n\
#Allow for the user to associate a string with GoalStatus for debugging\n\
string text\n\
\n\
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
MSG: srs_decision_making/UserFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#feedback\n\
string currentState\n\
bool solutionRequired\n\
uint32 exceptionalCase_id\n\
\n\
\n\
";
  }

  static const char* value(const  ::srs_decision_making::UserActionFeedback_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::srs_decision_making::UserActionFeedback_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::srs_decision_making::UserActionFeedback_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::srs_decision_making::UserActionFeedback_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.status);
    stream.next(m.feedback);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct UserActionFeedback_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::srs_decision_making::UserActionFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::srs_decision_making::UserActionFeedback_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "status: ";
s << std::endl;
    Printer< ::actionlib_msgs::GoalStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.status);
    s << indent << "feedback: ";
s << std::endl;
    Printer< ::srs_decision_making::UserFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.feedback);
  }
};


} // namespace message_operations
} // namespace ros

#endif // SRS_DECISION_MAKING_MESSAGE_USERACTIONFEEDBACK_H

