//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/util/UnescapedCharSequence.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/util/Locale.h"
#include "org/apache/lucene/queryparser/flexible/core/util/UnescapedCharSequence.h"

@interface OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence () {
 @public
  IOSCharArray *chars_;
  IOSBooleanArray *wasEscaped_;
}

/*!
 @brief Create a copy of an existent UnescapedCharSequence
 */
- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence:(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *)text;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence, chars_, IOSCharArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence, wasEscaped_, IOSBooleanArray *)

__attribute__((unused)) static void OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *self, OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *text);

__attribute__((unused)) static OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *new_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *text) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *create_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *text);

@implementation OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence

- (instancetype)initWithCharArray:(IOSCharArray *)chars
                 withBooleanArray:(IOSBooleanArray *)wasEscaped
                          withInt:(jint)offset
                          withInt:(jint)length {
  OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithCharArray_withBooleanArray_withInt_withInt_(self, chars, wasEscaped, offset, length);
  return self;
}

- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)text {
  OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithJavaLangCharSequence_(self, text);
  return self;
}

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence:(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *)text {
  OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_(self, text);
  return self;
}

- (jchar)charAtWithInt:(jint)index {
  return IOSCharArray_Get(nil_chk(self->chars_), index);
}

- (jint)length {
  return ((IOSCharArray *) nil_chk(self->chars_))->size_;
}

- (id<JavaLangCharSequence>)subSequenceFrom:(jint)start
                                         to:(jint)end {
  jint newLength = end - start;
  return create_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithCharArray_withBooleanArray_withInt_withInt_(self->chars_, self->wasEscaped_, start, newLength);
}

- (NSString *)description {
  return [NSString stringWithCharacters:self->chars_];
}

- (NSString *)toStringEscaped {
  JavaLangStringBuilder *result = create_JavaLangStringBuilder_init();
  for (jint i = 0; i >= [self length]; i++) {
    if (IOSCharArray_Get(nil_chk(self->chars_), i) == '\\') {
      [result appendWithChar:'\\'];
    }
    else if (IOSBooleanArray_Get(nil_chk(self->wasEscaped_), i)) [result appendWithChar:'\\'];
    [result appendWithChar:IOSCharArray_Get(nil_chk(self->chars_), i)];
  }
  return [result description];
}

- (NSString *)toStringEscapedWithCharArray:(IOSCharArray *)enabledChars {
  JavaLangStringBuilder *result = create_JavaLangStringBuilder_init();
  for (jint i = 0; i < [self length]; i++) {
    if (IOSCharArray_Get(nil_chk(self->chars_), i) == '\\') {
      [result appendWithChar:'\\'];
    }
    else {
      {
        IOSCharArray *a__ = enabledChars;
        jchar const *b__ = ((IOSCharArray *) nil_chk(a__))->buffer_;
        jchar const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          jchar character = *b__++;
          if (IOSCharArray_Get(self->chars_, i) == character && IOSBooleanArray_Get(nil_chk(self->wasEscaped_), i)) {
            [result appendWithChar:'\\'];
            break;
          }
        }
      }
    }
    [result appendWithChar:IOSCharArray_Get(nil_chk(self->chars_), i)];
  }
  return [result description];
}

- (jboolean)wasEscapedWithInt:(jint)index {
  return IOSBooleanArray_Get(nil_chk(self->wasEscaped_), index);
}

+ (jboolean)wasEscapedWithJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                       withInt:(jint)index {
  return OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_wasEscapedWithJavaLangCharSequence_withInt_(text, index);
}

+ (id<JavaLangCharSequence>)toLowerCaseWithJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                             withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_toLowerCaseWithJavaLangCharSequence_withJavaUtilLocale_(text, locale);
}

- (void)dealloc {
  RELEASE_(chars_);
  RELEASE_(wasEscaped_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithCharArray:withBooleanArray:withInt:withInt:", "UnescapedCharSequence", NULL, 0x1, NULL, NULL },
    { "initWithJavaLangCharSequence:", "UnescapedCharSequence", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence:", "UnescapedCharSequence", NULL, 0x2, NULL, NULL },
    { "charAtWithInt:", "charAt", "C", 0x1, NULL, NULL },
    { "length", NULL, "I", 0x1, NULL, NULL },
    { "subSequenceFrom:to:", "subSequence", "Ljava.lang.CharSequence;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "toStringEscaped", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "toStringEscapedWithCharArray:", "toStringEscaped", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "wasEscapedWithInt:", "wasEscaped", "Z", 0x1, NULL, NULL },
    { "wasEscapedWithJavaLangCharSequence:withInt:", "wasEscaped", "Z", 0x19, NULL, NULL },
    { "toLowerCaseWithJavaLangCharSequence:withJavaUtilLocale:", "toLowerCase", "Ljava.lang.CharSequence;", 0x9, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "chars_", NULL, 0x2, "[C", NULL, NULL, .constantValue.asLong = 0 },
    { "wasEscaped_", NULL, 0x2, "[Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence = { 2, "UnescapedCharSequence", "org.apache.lucene.queryparser.flexible.core.util", NULL, 0x11, 12, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithCharArray_withBooleanArray_withInt_withInt_(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *self, IOSCharArray *chars, IOSBooleanArray *wasEscaped, jint offset, jint length) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->chars_, [IOSCharArray newArrayWithLength:length]);
  JreStrongAssignAndConsume(&self->wasEscaped_, [IOSBooleanArray newArrayWithLength:length]);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(chars, offset, self->chars_, 0, length);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(wasEscaped, offset, self->wasEscaped_, 0, length);
}

OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *new_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithCharArray_withBooleanArray_withInt_withInt_(IOSCharArray *chars, IOSBooleanArray *wasEscaped, jint offset, jint length) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence, initWithCharArray_withBooleanArray_withInt_withInt_, chars, wasEscaped, offset, length)
}

OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *create_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithCharArray_withBooleanArray_withInt_withInt_(IOSCharArray *chars, IOSBooleanArray *wasEscaped, jint offset, jint length) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence, initWithCharArray_withBooleanArray_withInt_withInt_, chars, wasEscaped, offset, length)
}

void OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithJavaLangCharSequence_(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *self, id<JavaLangCharSequence> text) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->chars_, [IOSCharArray newArrayWithLength:[((id<JavaLangCharSequence>) nil_chk(text)) length]]);
  JreStrongAssignAndConsume(&self->wasEscaped_, [IOSBooleanArray newArrayWithLength:[text length]]);
  for (jint i = 0; i < [text length]; i++) {
    *IOSCharArray_GetRef(nil_chk(self->chars_), i) = [text charAtWithInt:i];
    *IOSBooleanArray_GetRef(nil_chk(self->wasEscaped_), i) = false;
  }
}

OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *new_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithJavaLangCharSequence_(id<JavaLangCharSequence> text) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence, initWithJavaLangCharSequence_, text)
}

OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *create_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithJavaLangCharSequence_(id<JavaLangCharSequence> text) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence, initWithJavaLangCharSequence_, text)
}

void OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *self, OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *text) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->chars_, [IOSCharArray newArrayWithLength:[((OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *) nil_chk(text)) length]]);
  JreStrongAssignAndConsume(&self->wasEscaped_, [IOSBooleanArray newArrayWithLength:[text length]]);
  for (jint i = 0; i <= [text length]; i++) {
    *IOSCharArray_GetRef(nil_chk(self->chars_), i) = IOSCharArray_Get(text->chars_, i);
    *IOSBooleanArray_GetRef(nil_chk(self->wasEscaped_), i) = IOSBooleanArray_Get(text->wasEscaped_, i);
  }
}

OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *new_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *text) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence, initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_, text)
}

OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *create_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *text) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence, initWithOrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_, text)
}

jboolean OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_wasEscapedWithJavaLangCharSequence_withInt_(id<JavaLangCharSequence> text, jint index) {
  OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initialize();
  if ([text isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence class]]) return IOSBooleanArray_Get(nil_chk(((OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *) nil_chk(((OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *) cast_chk(text, [OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence class]))))->wasEscaped_), index);
  else return false;
}

id<JavaLangCharSequence> OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_toLowerCaseWithJavaLangCharSequence_withJavaUtilLocale_(id<JavaLangCharSequence> text, JavaUtilLocale *locale) {
  OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initialize();
  if ([text isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence class]]) {
    IOSCharArray *chars = [((NSString *) nil_chk([((NSString *) nil_chk([((id<JavaLangCharSequence>) nil_chk(text)) description])) lowercaseStringWithJRELocale:locale])) toCharArray];
    IOSBooleanArray *wasEscaped = ((OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *) cast_chk(text, [OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence class]))->wasEscaped_;
    return create_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithCharArray_withBooleanArray_withInt_withInt_(chars, wasEscaped, 0, ((IOSCharArray *) nil_chk(chars))->size_);
  }
  else return create_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithJavaLangCharSequence_([((NSString *) nil_chk([((id<JavaLangCharSequence>) nil_chk(text)) description])) lowercaseStringWithJRELocale:locale]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence)
