FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/srs_decision_making/msg"
  "../src/srs_decision_making/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genaction_msgs"
  "../msg/ExecutionAction.msg"
  "../msg/ExecutionGoal.msg"
  "../msg/ExecutionActionGoal.msg"
  "../msg/ExecutionResult.msg"
  "../msg/ExecutionActionResult.msg"
  "../msg/ExecutionFeedback.msg"
  "../msg/ExecutionActionFeedback.msg"
  "../msg/UserAction.msg"
  "../msg/UserGoal.msg"
  "../msg/UserActionGoal.msg"
  "../msg/UserResult.msg"
  "../msg/UserActionResult.msg"
  "../msg/UserFeedback.msg"
  "../msg/UserActionFeedback.msg"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genaction_msgs.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
