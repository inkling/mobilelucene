//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/parser/ParseException.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeParseException.h"
#include "org/apache/lucene/queryparser/flexible/core/messages/QueryParserMessages.h"
#include "org/apache/lucene/queryparser/flexible/messages/Message.h"
#include "org/apache/lucene/queryparser/flexible/messages/MessageImpl.h"
#include "org/apache/lucene/queryparser/flexible/standard/parser/ParseException.h"
#include "org/apache/lucene/queryparser/flexible/standard/parser/Token.h"

@interface OrgApacheLuceneQueryparserFlexibleStandardParserParseException ()

/*!
 @brief It uses "currentToken" and "expectedTokenSequences" to generate a parse
 error message and returns it.
 If this object has been created
 due to a parse error, and you do not catch it (it gets thrown
 from the parser) the correct error message
 gets displayed.
 */
+ (NSString *)initialiseWithOrgApacheLuceneQueryparserFlexibleStandardParserToken:(OrgApacheLuceneQueryparserFlexibleStandardParserToken *)currentToken
                                                                    withIntArray2:(IOSObjectArray *)expectedTokenSequences
                                                                withNSStringArray:(IOSObjectArray *)tokenImage OBJC_METHOD_FAMILY_NONE;

@end

/*!
 @brief The version identifier for this Serializable class.
 Increment only if the <i>serialized</i> form of the
 class changes.
 */
inline jlong OrgApacheLuceneQueryparserFlexibleStandardParserParseException_get_serialVersionUID();
#define OrgApacheLuceneQueryparserFlexibleStandardParserParseException_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryparserFlexibleStandardParserParseException, serialVersionUID, jlong)

__attribute__((unused)) static NSString *OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initialiseWithOrgApacheLuceneQueryparserFlexibleStandardParserToken_withIntArray2_withNSStringArray_(OrgApacheLuceneQueryparserFlexibleStandardParserToken *currentToken, IOSObjectArray *expectedTokenSequences, IOSObjectArray *tokenImage);

@implementation OrgApacheLuceneQueryparserFlexibleStandardParserParseException

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleStandardParserToken:(OrgApacheLuceneQueryparserFlexibleStandardParserToken *)currentTokenVal
                                                                withIntArray2:(IOSObjectArray *)expectedTokenSequencesVal
                                                            withNSStringArray:(IOSObjectArray *)tokenImageVal {
  OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleStandardParserToken_withIntArray2_withNSStringArray_(self, currentTokenVal, expectedTokenSequencesVal, tokenImageVal);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardParserParseException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage:(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage>)message {
  OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(self, message);
  return self;
}

+ (NSString *)initialiseWithOrgApacheLuceneQueryparserFlexibleStandardParserToken:(OrgApacheLuceneQueryparserFlexibleStandardParserToken *)currentToken
                                                                    withIntArray2:(IOSObjectArray *)expectedTokenSequences
                                                                withNSStringArray:(IOSObjectArray *)tokenImage {
  return OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initialiseWithOrgApacheLuceneQueryparserFlexibleStandardParserToken_withIntArray2_withNSStringArray_(currentToken, expectedTokenSequences, tokenImage);
}

+ (NSString *)add_escapesWithNSString:(NSString *)str {
  return OrgApacheLuceneQueryparserFlexibleStandardParserParseException_add_escapesWithNSString_(str);
}

- (void)dealloc {
  RELEASE_(currentToken_);
  RELEASE_(expectedTokenSequences_);
  RELEASE_(tokenImage_);
  RELEASE_(eol_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueryparserFlexibleStandardParserToken:withIntArray2:withNSStringArray:", "ParseException", NULL, 0x1, NULL, NULL },
    { "init", "ParseException", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage:", "ParseException", NULL, 0x1, NULL, NULL },
    { "initialiseWithOrgApacheLuceneQueryparserFlexibleStandardParserToken:withIntArray2:withNSStringArray:", "initialise", "Ljava.lang.String;", 0xa, NULL, NULL },
    { "add_escapesWithNSString:", "add_escapes", "Ljava.lang.String;", 0x8, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgApacheLuceneQueryparserFlexibleStandardParserParseException_serialVersionUID },
    { "currentToken_", NULL, 0x1, "Lorg.apache.lucene.queryparser.flexible.standard.parser.Token;", NULL, NULL, .constantValue.asLong = 0 },
    { "expectedTokenSequences_", NULL, 0x1, "[[I", NULL, NULL, .constantValue.asLong = 0 },
    { "tokenImage_", NULL, 0x1, "[Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "eol_", NULL, 0x4, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardParserParseException = { 2, "ParseException", "org.apache.lucene.queryparser.flexible.standard.parser", NULL, 0x1, 5, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardParserParseException;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleStandardParserToken_withIntArray2_withNSStringArray_(OrgApacheLuceneQueryparserFlexibleStandardParserParseException *self, OrgApacheLuceneQueryparserFlexibleStandardParserToken *currentTokenVal, IOSObjectArray *expectedTokenSequencesVal, IOSObjectArray *tokenImageVal) {
  OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(self, create_OrgApacheLuceneQueryparserFlexibleMessagesMessageImpl_initWithNSString_withNSObjectArray_(JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreMessagesQueryParserMessages, INVALID_SYNTAX), [IOSObjectArray arrayWithObjects:(id[]){ OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initialiseWithOrgApacheLuceneQueryparserFlexibleStandardParserToken_withIntArray2_withNSStringArray_(currentTokenVal, expectedTokenSequencesVal, tokenImageVal) } count:1 type:NSObject_class_()]));
  JreStrongAssign(&self->eol_, JavaLangSystem_getPropertyWithNSString_withNSString_(@"line.separator", @"\n"));
  JreStrongAssign(&self->currentToken_, currentTokenVal);
  JreStrongAssign(&self->expectedTokenSequences_, expectedTokenSequencesVal);
  JreStrongAssign(&self->tokenImage_, tokenImageVal);
}

OrgApacheLuceneQueryparserFlexibleStandardParserParseException *new_OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleStandardParserToken_withIntArray2_withNSStringArray_(OrgApacheLuceneQueryparserFlexibleStandardParserToken *currentTokenVal, IOSObjectArray *expectedTokenSequencesVal, IOSObjectArray *tokenImageVal) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardParserParseException, initWithOrgApacheLuceneQueryparserFlexibleStandardParserToken_withIntArray2_withNSStringArray_, currentTokenVal, expectedTokenSequencesVal, tokenImageVal)
}

OrgApacheLuceneQueryparserFlexibleStandardParserParseException *create_OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleStandardParserToken_withIntArray2_withNSStringArray_(OrgApacheLuceneQueryparserFlexibleStandardParserToken *currentTokenVal, IOSObjectArray *expectedTokenSequencesVal, IOSObjectArray *tokenImageVal) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardParserParseException, initWithOrgApacheLuceneQueryparserFlexibleStandardParserToken_withIntArray2_withNSStringArray_, currentTokenVal, expectedTokenSequencesVal, tokenImageVal)
}

void OrgApacheLuceneQueryparserFlexibleStandardParserParseException_init(OrgApacheLuceneQueryparserFlexibleStandardParserParseException *self) {
  OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(self, create_OrgApacheLuceneQueryparserFlexibleMessagesMessageImpl_initWithNSString_withNSObjectArray_(JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreMessagesQueryParserMessages, INVALID_SYNTAX), [IOSObjectArray arrayWithObjects:(id[]){ @"Error" } count:1 type:NSObject_class_()]));
  JreStrongAssign(&self->eol_, JavaLangSystem_getPropertyWithNSString_withNSString_(@"line.separator", @"\n"));
}

OrgApacheLuceneQueryparserFlexibleStandardParserParseException *new_OrgApacheLuceneQueryparserFlexibleStandardParserParseException_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardParserParseException, init)
}

OrgApacheLuceneQueryparserFlexibleStandardParserParseException *create_OrgApacheLuceneQueryparserFlexibleStandardParserParseException_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardParserParseException, init)
}

void OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(OrgApacheLuceneQueryparserFlexibleStandardParserParseException *self, id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message) {
  OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(self, message);
  JreStrongAssign(&self->eol_, JavaLangSystem_getPropertyWithNSString_withNSString_(@"line.separator", @"\n"));
}

OrgApacheLuceneQueryparserFlexibleStandardParserParseException *new_OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardParserParseException, initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_, message)
}

OrgApacheLuceneQueryparserFlexibleStandardParserParseException *create_OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardParserParseException, initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_, message)
}

NSString *OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initialiseWithOrgApacheLuceneQueryparserFlexibleStandardParserToken_withIntArray2_withNSStringArray_(OrgApacheLuceneQueryparserFlexibleStandardParserToken *currentToken, IOSObjectArray *expectedTokenSequences, IOSObjectArray *tokenImage) {
  OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initialize();
  NSString *eol = JavaLangSystem_getPropertyWithNSString_withNSString_(@"line.separator", @"\n");
  JavaLangStringBuilder *expected = create_JavaLangStringBuilder_init();
  jint maxSize = 0;
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(expectedTokenSequences))->size_; i++) {
    if (maxSize < ((IOSIntArray *) nil_chk(IOSObjectArray_Get(expectedTokenSequences, i)))->size_) {
      maxSize = ((IOSIntArray *) nil_chk(IOSObjectArray_Get(expectedTokenSequences, i)))->size_;
    }
    for (jint j = 0; j < ((IOSIntArray *) nil_chk(IOSObjectArray_Get(expectedTokenSequences, i)))->size_; j++) {
      [((JavaLangStringBuilder *) nil_chk([expected appendWithNSString:IOSObjectArray_Get(nil_chk(tokenImage), IOSIntArray_Get(nil_chk(IOSObjectArray_Get(expectedTokenSequences, i)), j))])) appendWithChar:' '];
    }
    if (IOSIntArray_Get(nil_chk(IOSObjectArray_Get(expectedTokenSequences, i)), ((IOSIntArray *) nil_chk(IOSObjectArray_Get(expectedTokenSequences, i)))->size_ - 1) != 0) {
      [expected appendWithNSString:@"..."];
    }
    [((JavaLangStringBuilder *) nil_chk([expected appendWithNSString:eol])) appendWithNSString:@"    "];
  }
  NSString *retval = @"Encountered \"";
  OrgApacheLuceneQueryparserFlexibleStandardParserToken *tok = ((OrgApacheLuceneQueryparserFlexibleStandardParserToken *) nil_chk(currentToken))->next_;
  for (jint i = 0; i < maxSize; i++) {
    if (i != 0) JreStrAppend(&retval, "$", @" ");
    if (((OrgApacheLuceneQueryparserFlexibleStandardParserToken *) nil_chk(tok))->kind_ == 0) {
      JreStrAppend(&retval, "$", IOSObjectArray_Get(nil_chk(tokenImage), 0));
      break;
    }
    JreStrAppend(&retval, "C$", ' ', IOSObjectArray_Get(nil_chk(tokenImage), tok->kind_));
    JreStrAppend(&retval, "$", @" \"");
    JreStrAppend(&retval, "$", OrgApacheLuceneQueryparserFlexibleStandardParserParseException_add_escapesWithNSString_(tok->image_));
    JreStrAppend(&retval, "$", @" \"");
    tok = tok->next_;
  }
  JreStrAppend(&retval, "$I$I", @"\" at line ", ((OrgApacheLuceneQueryparserFlexibleStandardParserToken *) nil_chk(currentToken->next_))->beginLine_, @", column ", currentToken->next_->beginColumn_);
  JreStrAppend(&retval, "C$", '.', eol);
  if (expectedTokenSequences->size_ == 1) {
    JreStrAppend(&retval, "$$$", @"Was expecting:", eol, @"    ");
  }
  else {
    JreStrAppend(&retval, "$$$", @"Was expecting one of:", eol, @"    ");
  }
  JreStrAppend(&retval, "$", [expected description]);
  return retval;
}

NSString *OrgApacheLuceneQueryparserFlexibleStandardParserParseException_add_escapesWithNSString_(NSString *str) {
  OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initialize();
  JavaLangStringBuilder *retval = create_JavaLangStringBuilder_init();
  jchar ch;
  for (jint i = 0; i < ((jint) [((NSString *) nil_chk(str)) length]); i++) {
    switch ([str charAtWithInt:i]) {
      case 0:
      continue;
      case 0x0008:
      [retval appendWithNSString:@"\\b"];
      continue;
      case 0x0009:
      [retval appendWithNSString:@"\\t"];
      continue;
      case 0x000a:
      [retval appendWithNSString:@"\\n"];
      continue;
      case 0x000c:
      [retval appendWithNSString:@"\\f"];
      continue;
      case 0x000d:
      [retval appendWithNSString:@"\\r"];
      continue;
      case '"':
      [retval appendWithNSString:@"\\\""];
      continue;
      case '\'':
      [retval appendWithNSString:@"\\'"];
      continue;
      case '\\':
      [retval appendWithNSString:@"\\\\"];
      continue;
      default:
      if ((ch = [str charAtWithInt:i]) < (jint) 0x20 || ch > (jint) 0x7e) {
        NSString *s = JreStrcat("$$", @"0000", JavaLangInteger_toStringWithInt_withInt_(ch, 16));
        [retval appendWithNSString:JreStrcat("$$", @"\\u", [s substring:((jint) [s length]) - 4 endIndex:((jint) [s length])])];
      }
      else {
        [retval appendWithChar:ch];
      }
      continue;
    }
  }
  return [retval description];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardParserParseException)
