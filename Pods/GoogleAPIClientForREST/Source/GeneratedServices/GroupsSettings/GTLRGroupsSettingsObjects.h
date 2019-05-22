// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Groups Settings API (groupssettings/v1)
// Description:
//   Manages permission levels and related settings of a group.
// Documentation:
//   https://developers.google.com/google-apps/groups-settings/get_started

#if GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRObject.h"
#else
  #import "GTLRObject.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  JSON template for Group resource
 */
@interface GTLRGroupsSettings_Groups : GTLRObject

/** Are external members allowed to join the group. */
@property(nonatomic, copy, nullable) NSString *allowExternalMembers;

/** Is google allowed to contact admins. */
@property(nonatomic, copy, nullable) NSString *allowGoogleCommunication;

/** If posting from web is allowed. */
@property(nonatomic, copy, nullable) NSString *allowWebPosting;

/** If the group is archive only */
@property(nonatomic, copy, nullable) NSString *archiveOnly;

/** Custom footer text. */
@property(nonatomic, copy, nullable) NSString *customFooterText;

/** Default email to which reply to any message should go. */
@property(nonatomic, copy, nullable) NSString *customReplyTo;

/**
 *  If any of the settings that will be merged have custom roles which is
 *  anything other than owners, managers, or group scopes.
 */
@property(nonatomic, copy, nullable) NSString *customRolesEnabledForSettingsToBeMerged;

/** Default message deny notification message */
@property(nonatomic, copy, nullable) NSString *defaultMessageDenyNotificationText;

/**
 *  Description of the group
 *
 *  Remapped to 'descriptionProperty' to avoid NSObject's 'description'.
 */
@property(nonatomic, copy, nullable) NSString *descriptionProperty;

/** Email id of the group */
@property(nonatomic, copy, nullable) NSString *email;

/** If a primary Collab Inbox feature is enabled. */
@property(nonatomic, copy, nullable) NSString *enableCollaborativeInbox;

/** If favorite replies should be displayed above other replies. */
@property(nonatomic, copy, nullable) NSString *favoriteRepliesOnTop;

/** Whether to include custom footer. */
@property(nonatomic, copy, nullable) NSString *includeCustomFooter;

/** If this groups should be included in global address list or not. */
@property(nonatomic, copy, nullable) NSString *includeInGlobalAddressList;

/** If the contents of the group are archived. */
@property(nonatomic, copy, nullable) NSString *isArchived;

/** The type of the resource. */
@property(nonatomic, copy, nullable) NSString *kind;

/**
 *  Maximum message size allowed.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *maxMessageBytes;

/** Can members post using the group email address. */
@property(nonatomic, copy, nullable) NSString *membersCanPostAsTheGroup;

/**
 *  Default message display font. Possible values are: DEFAULT_FONT
 *  FIXED_WIDTH_FONT
 */
@property(nonatomic, copy, nullable) NSString *messageDisplayFont;

/**
 *  Moderation level for messages. Possible values are: MODERATE_ALL_MESSAGES
 *  MODERATE_NON_MEMBERS MODERATE_NEW_MEMBERS MODERATE_NONE
 */
@property(nonatomic, copy, nullable) NSString *messageModerationLevel;

/** Name of the Group */
@property(nonatomic, copy, nullable) NSString *name;

/** Primary language for the group. */
@property(nonatomic, copy, nullable) NSString *primaryLanguage;

/**
 *  Whome should the default reply to a message go to. Possible values are:
 *  REPLY_TO_CUSTOM REPLY_TO_SENDER REPLY_TO_LIST REPLY_TO_OWNER REPLY_TO_IGNORE
 *  REPLY_TO_MANAGERS
 */
@property(nonatomic, copy, nullable) NSString *replyTo;

/** Should the member be notified if his message is denied by owner. */
@property(nonatomic, copy, nullable) NSString *sendMessageDenyNotification;

/** Is the group listed in groups directory */
@property(nonatomic, copy, nullable) NSString *showInGroupDirectory;

/**
 *  Moderation level for messages detected as spam. Possible values are: ALLOW
 *  MODERATE SILENTLY_MODERATE REJECT
 */
@property(nonatomic, copy, nullable) NSString *spamModerationLevel;

/**
 *  Permissions to add members. Possible values are: ALL_MANAGERS_CAN_ADD
 *  ALL_OWNERS_CAN_ADD ALL_MEMBERS_CAN_ADD NONE_CAN_ADD
 */
@property(nonatomic, copy, nullable) NSString *whoCanAdd;

/**
 *  Permission to add references to a topic. Possible values are: NONE
 *  OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanAddReferences;

/**
 *  Permission to approve members. Possible values are: ALL_OWNERS_CAN_APPROVE
 *  ALL_MANAGERS_CAN_APPROVE ALL_MEMBERS_CAN_APPROVE NONE_CAN_APPROVE
 */
@property(nonatomic, copy, nullable) NSString *whoCanApproveMembers;

/**
 *  Permission to approve pending messages in the moderation queue. Possible
 *  values are: NONE OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanApproveMessages;

/**
 *  Permission to assign topics in a forum to another user. Possible values are:
 *  NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanAssignTopics;

/**
 *  Permission for content assistants. Possible values are: Possible values are:
 *  NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanAssistContent;

/**
 *  Permission to ban users. Possible values are: NONE OWNERS_ONLY
 *  OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanBanUsers;

/**
 *  Permission to contact owner of the group via web UI. Possible values are:
 *  ANYONE_CAN_CONTACT ALL_IN_DOMAIN_CAN_CONTACT ALL_MEMBERS_CAN_CONTACT
 *  ALL_MANAGERS_CAN_CONTACT
 */
@property(nonatomic, copy, nullable) NSString *whoCanContactOwner;

/**
 *  Permission to delete replies to topics. Possible values are: NONE
 *  OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanDeleteAnyPost;

/**
 *  Permission to delete topics. Possible values are: NONE OWNERS_ONLY
 *  OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanDeleteTopics;

/**
 *  Permission for who can discover the group. Possible values are:
 *  ALL_MEMBERS_CAN_DISCOVER ALL_IN_DOMAIN_CAN_DISCOVER ANYONE_CAN_DISCOVER
 */
@property(nonatomic, copy, nullable) NSString *whoCanDiscoverGroup;

/**
 *  Permission to enter free form tags for topics in a forum. Possible values
 *  are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanEnterFreeFormTags;

/**
 *  Permission to hide posts by reporting them as abuse. Possible values are:
 *  NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanHideAbuse;

/**
 *  Permissions to invite members. Possible values are: ALL_MEMBERS_CAN_INVITE
 *  ALL_MANAGERS_CAN_INVITE ALL_OWNERS_CAN_INVITE NONE_CAN_INVITE
 */
@property(nonatomic, copy, nullable) NSString *whoCanInvite;

/**
 *  Permissions to join the group. Possible values are: ANYONE_CAN_JOIN
 *  ALL_IN_DOMAIN_CAN_JOIN INVITED_CAN_JOIN CAN_REQUEST_TO_JOIN
 */
@property(nonatomic, copy, nullable) NSString *whoCanJoin;

/**
 *  Permission to leave the group. Possible values are: ALL_MANAGERS_CAN_LEAVE
 *  ALL_OWNERS_CAN_LEAVE ALL_MEMBERS_CAN_LEAVE NONE_CAN_LEAVE
 */
@property(nonatomic, copy, nullable) NSString *whoCanLeaveGroup;

/**
 *  Permission to lock topics. Possible values are: NONE OWNERS_ONLY
 *  OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanLockTopics;

/**
 *  Permission to make topics appear at the top of the topic list. Possible
 *  values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanMakeTopicsSticky;

/**
 *  Permission to mark a topic as a duplicate of another topic. Possible values
 *  are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanMarkDuplicate;

/**
 *  Permission to mark any other user's post as a favorite reply. Possible
 *  values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanMarkFavoriteReplyOnAnyTopic;

/**
 *  Permission to mark a post for a topic they started as a favorite reply.
 *  Possible values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS
 *  ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanMarkFavoriteReplyOnOwnTopic;

/**
 *  Permission to mark a topic as not needing a response. Possible values are:
 *  NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanMarkNoResponseNeeded;

/**
 *  Permission for content moderation. Possible values are: NONE OWNERS_ONLY
 *  OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanModerateContent;

/**
 *  Permission for membership moderation. Possible values are: NONE OWNERS_ONLY
 *  OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanModerateMembers;

/**
 *  Permission to modify members (change member roles). Possible values are:
 *  NONE OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanModifyMembers;

/**
 *  Permission to change tags and categories. Possible values are: NONE
 *  OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanModifyTagsAndCategories;

/**
 *  Permission to move topics into the group or forum. Possible values are: NONE
 *  OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanMoveTopicsIn;

/**
 *  Permission to move topics out of the group or forum. Possible values are:
 *  NONE OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanMoveTopicsOut;

/**
 *  Permission to post announcements, a special topic type. Possible values are:
 *  NONE OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanPostAnnouncements;

/**
 *  Permissions to post messages to the group. Possible values are:
 *  NONE_CAN_POST ALL_MANAGERS_CAN_POST ALL_MEMBERS_CAN_POST ALL_OWNERS_CAN_POST
 *  ALL_IN_DOMAIN_CAN_POST ANYONE_CAN_POST
 */
@property(nonatomic, copy, nullable) NSString *whoCanPostMessage;

/**
 *  Permission to take topics in a forum. Possible values are: NONE OWNERS_ONLY
 *  MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanTakeTopics;

/**
 *  Permission to unassign any topic in a forum. Possible values are: NONE
 *  OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanUnassignTopic;

/**
 *  Permission to unmark any post from a favorite reply. Possible values are:
 *  NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
 */
@property(nonatomic, copy, nullable) NSString *whoCanUnmarkFavoriteReplyOnAnyTopic;

/**
 *  Permissions to view group. Possible values are: ANYONE_CAN_VIEW
 *  ALL_IN_DOMAIN_CAN_VIEW ALL_MEMBERS_CAN_VIEW ALL_MANAGERS_CAN_VIEW
 *  ALL_OWNERS_CAN_VIEW
 */
@property(nonatomic, copy, nullable) NSString *whoCanViewGroup;

/**
 *  Permissions to view membership. Possible values are: ALL_IN_DOMAIN_CAN_VIEW
 *  ALL_MEMBERS_CAN_VIEW ALL_MANAGERS_CAN_VIEW ALL_OWNERS_CAN_VIEW
 */
@property(nonatomic, copy, nullable) NSString *whoCanViewMembership;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop