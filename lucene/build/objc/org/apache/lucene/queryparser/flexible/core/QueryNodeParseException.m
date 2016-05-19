//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/QueryNodeParseException.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeException.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeParseException.h"
#include "org/apache/lucene/queryparser/flexible/core/messages/QueryParserMessages.h"
#include "org/apache/lucene/queryparser/flexible/messages/Message.h"
#include "org/apache/lucene/queryparser/flexible/messages/MessageImpl.h"

@interface OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException () {
 @public
  id<JavaLangCharSequence> query_;
  jint beginColumn_;
  jint beginLine_;
  NSString *errorToken_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException, query_, id<JavaLangCharSequence>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException, errorToken_, NSString *)

@implementation OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage:(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage>)message {
  OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(self, message);
  return self;
}

- (instancetype)initWithNSException:(NSException *)throwable {
  OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException_initWithNSException_(self, throwable);
  return self;
}

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage:(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage>)message
                                                          withNSException:(NSException *)throwable {
  OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_withNSException_(self, message, throwable);
  return self;
}

- (void)setQueryWithJavaLangCharSequence:(id<JavaLangCharSequence>)query {
  JreStrongAssign(&self->query_, query);
  JreStrongAssignAndConsume(&self->message_, new_OrgApacheLuceneQueryparserFlexibleMessagesMessageImpl_initWithNSString_withNSObjectArray_(JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreMessagesQueryParserMessages, INVALID_SYNTAX_CANNOT_PARSE), [IOSObjectArray arrayWithObjects:(id[]){ query, @"" } count:2 type:NSObject_class_()]));
}

- (id<JavaLangCharSequence>)getQuery {
  return self->query_;
}

- (void)setErrorTokenWithNSString:(NSString *)errorToken {
  JreStrongAssign(&self->errorToken_, errorToken);
}

- (NSString *)getErrorToken {
  return self->errorToken_;
}

- (void)setNonLocalizedMessageWithOrgApacheLuceneQueryparserFlexibleMessagesMessage:(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage>)message {
  JreStrongAssign(&self->message_, message);
}

- (jint)getBeginLine {
  return self->beginLine_;
}

- (jint)getBeginColumn {
  return self->beginColumn_;
}

- (void)setBeginLineWithInt:(jint)beginLine {
  self->beginLine_ = beginLine;
}

- (void)setBeginColumnWithInt:(jint)beginColumn {
  self->beginColumn_ = beginColumn;
}

- (void)dealloc {
  RELEASE_(query_);
  RELEASE_(errorToken_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage:", "QueryNodeParseException", NULL, 0x1, NULL, NULL },
    { "initWithNSException:", "QueryNodeParseException", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage:withNSException:", "QueryNodeParseException", NULL, 0x1, NULL, NULL },
    { "setQueryWithJavaLangCharSequence:", "setQuery", "V", 0x1, NULL, NULL },
    { "getQuery", NULL, "Ljava.lang.CharSequence;", 0x1, NULL, NULL },
    { "setErrorTokenWithNSString:", "setErrorToken", "V", 0x4, NULL, NULL },
    { "getErrorToken", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "setNonLocalizedMessageWithOrgApacheLuceneQueryparserFlexibleMessagesMessage:", "setNonLocalizedMessage", "V", 0x1, NULL, NULL },
    { "getBeginLine", NULL, "I", 0x1, NULL, NULL },
    { "getBeginColumn", NULL, "I", 0x1, NULL, NULL },
    { "setBeginLineWithInt:", "setBeginLine", "V", 0x4, NULL, NULL },
    { "setBeginColumnWithInt:", "setBeginColumn", "V", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "query_", NULL, 0x2, "Ljava.lang.CharSequence;", NULL, NULL, .constantValue.asLong = 0 },
    { "beginColumn_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "beginLine_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "errorToken_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException = { 2, "QueryNodeParseException", "org.apache.lucene.queryparser.flexible.core", NULL, 0x1, 12, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException *self, id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message) {
  OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(self, message);
  self->beginColumn_ = -1;
  self->beginLine_ = -1;
  JreStrongAssign(&self->errorToken_, @"");
}

OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException *new_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException, initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_, message)
}

OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException *create_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException, initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_, message)
}

void OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException_initWithNSException_(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException *self, NSException *throwable) {
  OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException_initWithNSException_(self, throwable);
  self->beginColumn_ = -1;
  self->beginLine_ = -1;
  JreStrongAssign(&self->errorToken_, @"");
}

OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException *new_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException_initWithNSException_(NSException *throwable) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException, initWithNSException_, throwable)
}

OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException *create_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException_initWithNSException_(NSException *throwable) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException, initWithNSException_, throwable)
}

void OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_withNSException_(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException *self, id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message, NSException *throwable) {
  OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_withNSException_(self, message, throwable);
  self->beginColumn_ = -1;
  self->beginLine_ = -1;
  JreStrongAssign(&self->errorToken_, @"");
}

OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException *new_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_withNSException_(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message, NSException *throwable) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException, initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_withNSException_, message, throwable)
}

OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException *create_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_withNSException_(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message, NSException *throwable) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException, initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_withNSException_, message, throwable)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException)
