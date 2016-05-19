//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/QueryNodeException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException

#if !defined (OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException))
#define OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException_

#define RESTRICT_JavaLangException 1
#define INCLUDE_JavaLangException 1
#include "java/lang/Exception.h"

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleMessagesNLSException 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleMessagesNLSException 1
#include "org/apache/lucene/queryparser/flexible/messages/NLSException.h"

@class JavaUtilLocale;
@protocol OrgApacheLuceneQueryparserFlexibleMessagesMessage;

/*!
 @brief <p>
 This exception should be thrown if something wrong happens when dealing with
 <code>QueryNode</code>s.
 </p>
 <p>
 It also supports NLS messages.
 </p>
 - seealso: Message
 - seealso: NLS
 - seealso: NLSException
 - seealso: QueryNode
 */
@interface OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException : JavaLangException < OrgApacheLuceneQueryparserFlexibleMessagesNLSException > {
 @public
  id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage:(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage>)message;

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage:(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage>)message
                                                          withNSException:(NSException *)throwable;

- (instancetype)initWithNSException:(NSException *)throwable;

- (NSString *)getLocalizedMessage;

- (NSString *)getLocalizedMessageWithJavaUtilLocale:(JavaUtilLocale *)locale;

- (NSString *)getMessage;

- (id<OrgApacheLuceneQueryparserFlexibleMessagesMessage>)getMessageObject;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException, message_, id<OrgApacheLuceneQueryparserFlexibleMessagesMessage>)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException *self, id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException *new_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException *create_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException_initWithNSException_(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException *self, NSException *throwable);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException *new_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException_initWithNSException_(NSException *throwable) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException *create_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException_initWithNSException_(NSException *throwable);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_withNSException_(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException *self, id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message, NSException *throwable);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException *new_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_withNSException_(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message, NSException *throwable) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException *create_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_withNSException_(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message, NSException *throwable);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException")
