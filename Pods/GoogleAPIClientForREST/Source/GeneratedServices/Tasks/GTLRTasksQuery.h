// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Tasks API (tasks/v1)
// Description:
//   Manages your tasks and task lists.
// Documentation:
//   https://developers.google.com/google-apps/tasks/firstapp

#if GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRQuery.h"
#else
  #import "GTLRQuery.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRTasks_Task;
@class GTLRTasks_TaskList;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  Parent class for other Tasks query classes.
 */
@interface GTLRTasksQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Deletes the authenticated user's specified task list.
 *
 *  Method: tasks.tasklists.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeTasks
 */
@interface GTLRTasksQuery_TasklistsDelete : GTLRTasksQuery
// Previous library name was
//   +[GTLQueryTasks queryForTasklistsDeleteWithtasklist:]

/** Task list identifier. */
@property(nonatomic, copy, nullable) NSString *tasklist;

/**
 *  Upon successful completion, the callback's object and error parameters will
 *  be nil. This query does not fetch an object.
 *
 *  Deletes the authenticated user's specified task list.
 *
 *  @param tasklist Task list identifier.
 *
 *  @return GTLRTasksQuery_TasklistsDelete
 */
+ (instancetype)queryWithTasklist:(NSString *)tasklist;

@end

/**
 *  Returns the authenticated user's specified task list.
 *
 *  Method: tasks.tasklists.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeTasks
 *    @c kGTLRAuthScopeTasksReadonly
 */
@interface GTLRTasksQuery_TasklistsGet : GTLRTasksQuery
// Previous library name was
//   +[GTLQueryTasks queryForTasklistsGetWithtasklist:]

/** Task list identifier. */
@property(nonatomic, copy, nullable) NSString *tasklist;

/**
 *  Fetches a @c GTLRTasks_TaskList.
 *
 *  Returns the authenticated user's specified task list.
 *
 *  @param tasklist Task list identifier.
 *
 *  @return GTLRTasksQuery_TasklistsGet
 */
+ (instancetype)queryWithTasklist:(NSString *)tasklist;

@end

/**
 *  Creates a new task list and adds it to the authenticated user's task lists.
 *
 *  Method: tasks.tasklists.insert
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeTasks
 */
@interface GTLRTasksQuery_TasklistsInsert : GTLRTasksQuery
// Previous library name was
//   +[GTLQueryTasks queryForTasklistsInsertWithObject:]

/**
 *  Fetches a @c GTLRTasks_TaskList.
 *
 *  Creates a new task list and adds it to the authenticated user's task lists.
 *
 *  @param object The @c GTLRTasks_TaskList to include in the query.
 *
 *  @return GTLRTasksQuery_TasklistsInsert
 */
+ (instancetype)queryWithObject:(GTLRTasks_TaskList *)object;

@end

/**
 *  Returns all the authenticated user's task lists.
 *
 *  Method: tasks.tasklists.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeTasks
 *    @c kGTLRAuthScopeTasksReadonly
 */
@interface GTLRTasksQuery_TasklistsList : GTLRTasksQuery
// Previous library name was
//   +[GTLQueryTasks queryForTasklistsList]

/**
 *  Maximum number of task lists returned on one page. Optional. The default is
 *  20 (max allowed: 100).
 */
@property(nonatomic, assign) long long maxResults;

/** Token specifying the result page to return. Optional. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Fetches a @c GTLRTasks_TaskLists.
 *
 *  Returns all the authenticated user's task lists.
 *
 *  @return GTLRTasksQuery_TasklistsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)query;

@end

/**
 *  Updates the authenticated user's specified task list. This method supports
 *  patch semantics.
 *
 *  Method: tasks.tasklists.patch
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeTasks
 */
@interface GTLRTasksQuery_TasklistsPatch : GTLRTasksQuery
// Previous library name was
//   +[GTLQueryTasks queryForTasklistsPatchWithObject:tasklist:]

/** Task list identifier. */
@property(nonatomic, copy, nullable) NSString *tasklist;

/**
 *  Fetches a @c GTLRTasks_TaskList.
 *
 *  Updates the authenticated user's specified task list. This method supports
 *  patch semantics.
 *
 *  @param object The @c GTLRTasks_TaskList to include in the query.
 *  @param tasklist Task list identifier.
 *
 *  @return GTLRTasksQuery_TasklistsPatch
 */
+ (instancetype)queryWithObject:(GTLRTasks_TaskList *)object
                       tasklist:(NSString *)tasklist;

@end

/**
 *  Updates the authenticated user's specified task list.
 *
 *  Method: tasks.tasklists.update
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeTasks
 */
@interface GTLRTasksQuery_TasklistsUpdate : GTLRTasksQuery
// Previous library name was
//   +[GTLQueryTasks queryForTasklistsUpdateWithObject:tasklist:]

/** Task list identifier. */
@property(nonatomic, copy, nullable) NSString *tasklist;

/**
 *  Fetches a @c GTLRTasks_TaskList.
 *
 *  Updates the authenticated user's specified task list.
 *
 *  @param object The @c GTLRTasks_TaskList to include in the query.
 *  @param tasklist Task list identifier.
 *
 *  @return GTLRTasksQuery_TasklistsUpdate
 */
+ (instancetype)queryWithObject:(GTLRTasks_TaskList *)object
                       tasklist:(NSString *)tasklist;

@end

/**
 *  Clears all completed tasks from the specified task list. The affected tasks
 *  will be marked as 'hidden' and no longer be returned by default when
 *  retrieving all tasks for a task list.
 *
 *  Method: tasks.tasks.clear
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeTasks
 */
@interface GTLRTasksQuery_TasksClear : GTLRTasksQuery
// Previous library name was
//   +[GTLQueryTasks queryForTasksClearWithtasklist:]

/** Task list identifier. */
@property(nonatomic, copy, nullable) NSString *tasklist;

/**
 *  Upon successful completion, the callback's object and error parameters will
 *  be nil. This query does not fetch an object.
 *
 *  Clears all completed tasks from the specified task list. The affected tasks
 *  will be marked as 'hidden' and no longer be returned by default when
 *  retrieving all tasks for a task list.
 *
 *  @param tasklist Task list identifier.
 *
 *  @return GTLRTasksQuery_TasksClear
 */
+ (instancetype)queryWithTasklist:(NSString *)tasklist;

@end

/**
 *  Deletes the specified task from the task list.
 *
 *  Method: tasks.tasks.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeTasks
 */
@interface GTLRTasksQuery_TasksDelete : GTLRTasksQuery
// Previous library name was
//   +[GTLQueryTasks queryForTasksDeleteWithtasklist:task:]

/** Task identifier. */
@property(nonatomic, copy, nullable) NSString *task;

/** Task list identifier. */
@property(nonatomic, copy, nullable) NSString *tasklist;

/**
 *  Upon successful completion, the callback's object and error parameters will
 *  be nil. This query does not fetch an object.
 *
 *  Deletes the specified task from the task list.
 *
 *  @param tasklist Task list identifier.
 *  @param task Task identifier.
 *
 *  @return GTLRTasksQuery_TasksDelete
 */
+ (instancetype)queryWithTasklist:(NSString *)tasklist
                             task:(NSString *)task;

@end

/**
 *  Returns the specified task.
 *
 *  Method: tasks.tasks.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeTasks
 *    @c kGTLRAuthScopeTasksReadonly
 */
@interface GTLRTasksQuery_TasksGet : GTLRTasksQuery
// Previous library name was
//   +[GTLQueryTasks queryForTasksGetWithtasklist:task:]

/** Task identifier. */
@property(nonatomic, copy, nullable) NSString *task;

/** Task list identifier. */
@property(nonatomic, copy, nullable) NSString *tasklist;

/**
 *  Fetches a @c GTLRTasks_Task.
 *
 *  Returns the specified task.
 *
 *  @param tasklist Task list identifier.
 *  @param task Task identifier.
 *
 *  @return GTLRTasksQuery_TasksGet
 */
+ (instancetype)queryWithTasklist:(NSString *)tasklist
                             task:(NSString *)task;

@end

/**
 *  Creates a new task on the specified task list.
 *
 *  Method: tasks.tasks.insert
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeTasks
 */
@interface GTLRTasksQuery_TasksInsert : GTLRTasksQuery
// Previous library name was
//   +[GTLQueryTasks queryForTasksInsertWithObject:tasklist:]

/**
 *  Parent task identifier. If the task is created at the top level, this
 *  parameter is omitted. Optional.
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Previous sibling task identifier. If the task is created at the first
 *  position among its siblings, this parameter is omitted. Optional.
 */
@property(nonatomic, copy, nullable) NSString *previous;

/** Task list identifier. */
@property(nonatomic, copy, nullable) NSString *tasklist;

/**
 *  Fetches a @c GTLRTasks_Task.
 *
 *  Creates a new task on the specified task list.
 *
 *  @param object The @c GTLRTasks_Task to include in the query.
 *  @param tasklist Task list identifier.
 *
 *  @return GTLRTasksQuery_TasksInsert
 */
+ (instancetype)queryWithObject:(GTLRTasks_Task *)object
                       tasklist:(NSString *)tasklist;

@end

/**
 *  Returns all tasks in the specified task list.
 *
 *  Method: tasks.tasks.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeTasks
 *    @c kGTLRAuthScopeTasksReadonly
 */
@interface GTLRTasksQuery_TasksList : GTLRTasksQuery
// Previous library name was
//   +[GTLQueryTasks queryForTasksListWithtasklist:]

/**
 *  Upper bound for a task's completion date (as a RFC 3339 timestamp) to filter
 *  by. Optional. The default is not to filter by completion date.
 */
@property(nonatomic, copy, nullable) NSString *completedMax;

/**
 *  Lower bound for a task's completion date (as a RFC 3339 timestamp) to filter
 *  by. Optional. The default is not to filter by completion date.
 */
@property(nonatomic, copy, nullable) NSString *completedMin;

/**
 *  Upper bound for a task's due date (as a RFC 3339 timestamp) to filter by.
 *  Optional. The default is not to filter by due date.
 */
@property(nonatomic, copy, nullable) NSString *dueMax;

/**
 *  Lower bound for a task's due date (as a RFC 3339 timestamp) to filter by.
 *  Optional. The default is not to filter by due date.
 */
@property(nonatomic, copy, nullable) NSString *dueMin;

/**
 *  Maximum number of task lists returned on one page. Optional. The default is
 *  20 (max allowed: 100).
 */
@property(nonatomic, assign) long long maxResults;

/** Token specifying the result page to return. Optional. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Flag indicating whether completed tasks are returned in the result.
 *  Optional. The default is True.
 */
@property(nonatomic, assign) BOOL showCompleted;

/**
 *  Flag indicating whether deleted tasks are returned in the result. Optional.
 *  The default is False.
 */
@property(nonatomic, assign) BOOL showDeleted;

/**
 *  Flag indicating whether hidden tasks are returned in the result. Optional.
 *  The default is False.
 */
@property(nonatomic, assign) BOOL showHidden;

/** Task list identifier. */
@property(nonatomic, copy, nullable) NSString *tasklist;

/**
 *  Lower bound for a task's last modification time (as a RFC 3339 timestamp) to
 *  filter by. Optional. The default is not to filter by last modification time.
 */
@property(nonatomic, copy, nullable) NSString *updatedMin;

/**
 *  Fetches a @c GTLRTasks_Tasks.
 *
 *  Returns all tasks in the specified task list.
 *
 *  @param tasklist Task list identifier.
 *
 *  @return GTLRTasksQuery_TasksList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithTasklist:(NSString *)tasklist;

@end

/**
 *  Moves the specified task to another position in the task list. This can
 *  include putting it as a child task under a new parent and/or move it to a
 *  different position among its sibling tasks.
 *
 *  Method: tasks.tasks.move
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeTasks
 */
@interface GTLRTasksQuery_TasksMove : GTLRTasksQuery
// Previous library name was
//   +[GTLQueryTasks queryForTasksMoveWithtasklist:task:]

/**
 *  New parent task identifier. If the task is moved to the top level, this
 *  parameter is omitted. Optional.
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  New previous sibling task identifier. If the task is moved to the first
 *  position among its siblings, this parameter is omitted. Optional.
 */
@property(nonatomic, copy, nullable) NSString *previous;

/** Task identifier. */
@property(nonatomic, copy, nullable) NSString *task;

/** Task list identifier. */
@property(nonatomic, copy, nullable) NSString *tasklist;

/**
 *  Fetches a @c GTLRTasks_Task.
 *
 *  Moves the specified task to another position in the task list. This can
 *  include putting it as a child task under a new parent and/or move it to a
 *  different position among its sibling tasks.
 *
 *  @param tasklist Task list identifier.
 *  @param task Task identifier.
 *
 *  @return GTLRTasksQuery_TasksMove
 */
+ (instancetype)queryWithTasklist:(NSString *)tasklist
                             task:(NSString *)task;

@end

/**
 *  Updates the specified task. This method supports patch semantics.
 *
 *  Method: tasks.tasks.patch
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeTasks
 */
@interface GTLRTasksQuery_TasksPatch : GTLRTasksQuery
// Previous library name was
//   +[GTLQueryTasks queryForTasksPatchWithObject:tasklist:task:]

/** Task identifier. */
@property(nonatomic, copy, nullable) NSString *task;

/** Task list identifier. */
@property(nonatomic, copy, nullable) NSString *tasklist;

/**
 *  Fetches a @c GTLRTasks_Task.
 *
 *  Updates the specified task. This method supports patch semantics.
 *
 *  @param object The @c GTLRTasks_Task to include in the query.
 *  @param tasklist Task list identifier.
 *  @param task Task identifier.
 *
 *  @return GTLRTasksQuery_TasksPatch
 */
+ (instancetype)queryWithObject:(GTLRTasks_Task *)object
                       tasklist:(NSString *)tasklist
                           task:(NSString *)task;

@end

/**
 *  Updates the specified task.
 *
 *  Method: tasks.tasks.update
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeTasks
 */
@interface GTLRTasksQuery_TasksUpdate : GTLRTasksQuery
// Previous library name was
//   +[GTLQueryTasks queryForTasksUpdateWithObject:tasklist:task:]

/** Task identifier. */
@property(nonatomic, copy, nullable) NSString *task;

/** Task list identifier. */
@property(nonatomic, copy, nullable) NSString *tasklist;

/**
 *  Fetches a @c GTLRTasks_Task.
 *
 *  Updates the specified task.
 *
 *  @param object The @c GTLRTasks_Task to include in the query.
 *  @param tasklist Task list identifier.
 *  @param task Task identifier.
 *
 *  @return GTLRTasksQuery_TasksUpdate
 */
+ (instancetype)queryWithObject:(GTLRTasks_Task *)object
                       tasklist:(NSString *)tasklist
                           task:(NSString *)task;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop