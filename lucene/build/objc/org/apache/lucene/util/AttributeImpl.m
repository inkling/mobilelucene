//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/AttributeImpl.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/IllegalAccessException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/lang/reflect/Field.h"
#include "java/lang/reflect/Modifier.h"
#include "java/security/AccessController.h"
#include "java/security/PrivilegedAction.h"
#include "org/apache/lucene/util/AttributeImpl.h"
#include "org/apache/lucene/util/AttributeReflector.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneUtilAttributeImpl_$1 : NSObject < OrgApacheLuceneUtilAttributeReflector > {
 @public
  JavaLangStringBuilder *val$buffer_;
  jboolean val$prependAttClass_;
}

- (void)reflectWithIOSClass:(IOSClass *)attClass
               withNSString:(NSString *)key
                     withId:(id)value;

- (instancetype)initWithJavaLangStringBuilder:(JavaLangStringBuilder *)capture$0
                                  withBoolean:(jboolean)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAttributeImpl_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAttributeImpl_$1, val$buffer_, JavaLangStringBuilder *)

__attribute__((unused)) static void OrgApacheLuceneUtilAttributeImpl_$1_initWithJavaLangStringBuilder_withBoolean_(OrgApacheLuceneUtilAttributeImpl_$1 *self, JavaLangStringBuilder *capture$0, jboolean capture$1);

__attribute__((unused)) static OrgApacheLuceneUtilAttributeImpl_$1 *new_OrgApacheLuceneUtilAttributeImpl_$1_initWithJavaLangStringBuilder_withBoolean_(JavaLangStringBuilder *capture$0, jboolean capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAttributeImpl_$1 *create_OrgApacheLuceneUtilAttributeImpl_$1_initWithJavaLangStringBuilder_withBoolean_(JavaLangStringBuilder *capture$0, jboolean capture$1);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAttributeImpl_$1)

@interface OrgApacheLuceneUtilAttributeImpl_$2 : NSObject < JavaSecurityPrivilegedAction > {
 @public
  OrgApacheLuceneUtilAttributeImpl *this$0_;
  JavaLangReflectField *val$f_;
}

- (id)run;

- (instancetype)initWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)outer$
                                withJavaLangReflectField:(JavaLangReflectField *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAttributeImpl_$2)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAttributeImpl_$2, this$0_, OrgApacheLuceneUtilAttributeImpl *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAttributeImpl_$2, val$f_, JavaLangReflectField *)

__attribute__((unused)) static void OrgApacheLuceneUtilAttributeImpl_$2_initWithOrgApacheLuceneUtilAttributeImpl_withJavaLangReflectField_(OrgApacheLuceneUtilAttributeImpl_$2 *self, OrgApacheLuceneUtilAttributeImpl *outer$, JavaLangReflectField *capture$0);

__attribute__((unused)) static OrgApacheLuceneUtilAttributeImpl_$2 *new_OrgApacheLuceneUtilAttributeImpl_$2_initWithOrgApacheLuceneUtilAttributeImpl_withJavaLangReflectField_(OrgApacheLuceneUtilAttributeImpl *outer$, JavaLangReflectField *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAttributeImpl_$2 *create_OrgApacheLuceneUtilAttributeImpl_$2_initWithOrgApacheLuceneUtilAttributeImpl_withJavaLangReflectField_(OrgApacheLuceneUtilAttributeImpl *outer$, JavaLangReflectField *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAttributeImpl_$2)

@implementation OrgApacheLuceneUtilAttributeImpl

- (void)clear {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (NSString *)reflectAsStringWithBoolean:(jboolean)prependAttClass {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  [self reflectWithWithOrgApacheLuceneUtilAttributeReflector:create_OrgApacheLuceneUtilAttributeImpl_$1_initWithJavaLangStringBuilder_withBoolean_(buffer, prependAttClass)];
  return [buffer description];
}

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id<OrgApacheLuceneUtilAttributeReflector>)reflector {
  IOSClass *clazz = [self getClass];
  IOSObjectArray *interfaces = OrgApacheLuceneUtilAttributeSource_getAttributeInterfacesWithIOSClass_(clazz);
  if (((IOSObjectArray *) nil_chk(interfaces))->size_ != 1) {
    @throw create_JavaLangUnsupportedOperationException_initWithNSString_(JreStrcat("$$", [clazz getName], @" implements more than one Attribute interface, the default reflectWith() implementation cannot handle this."));
  }
  IOSClass *interf = IOSObjectArray_Get(interfaces, 0);
  IOSObjectArray *fields = [clazz getDeclaredFields];
  {
    IOSObjectArray *a__ = fields;
    JavaLangReflectField * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    JavaLangReflectField * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      JavaLangReflectField *f = *b__++;
      if (JavaLangReflectModifier_isStaticWithInt_([((JavaLangReflectField *) nil_chk(f)) getModifiers])) continue;
      [((id<OrgApacheLuceneUtilAttributeReflector>) nil_chk(reflector)) reflectWithIOSClass:interf withNSString:[f getName] withId:JavaSecurityAccessController_doPrivilegedWithJavaSecurityPrivilegedAction_(create_OrgApacheLuceneUtilAttributeImpl_$2_initWithOrgApacheLuceneUtilAttributeImpl_withJavaLangReflectField_(self, f))];
    }
  }
}

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneUtilAttributeImpl *)clone {
  OrgApacheLuceneUtilAttributeImpl *clone = nil;
  @try {
    clone = (OrgApacheLuceneUtilAttributeImpl *) cast_chk([super clone], [OrgApacheLuceneUtilAttributeImpl class]);
  }
  @catch (JavaLangCloneNotSupportedException *e) {
    @throw create_JavaLangRuntimeException_initWithNSException_(e);
  }
  return clone;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilAttributeImpl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "clear", NULL, "V", 0x401, NULL, NULL },
    { "reflectAsStringWithBoolean:", "reflectAsString", "Ljava.lang.String;", 0x11, NULL, NULL },
    { "reflectWithWithOrgApacheLuceneUtilAttributeReflector:", "reflectWith", "V", 0x1, NULL, NULL },
    { "copyToWithOrgApacheLuceneUtilAttributeImpl:", "copyTo", "V", 0x401, NULL, NULL },
    { "clone", NULL, "Lorg.apache.lucene.util.AttributeImpl;", 0x1, NULL, NULL },
    { "init", "AttributeImpl", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAttributeImpl = { 2, "AttributeImpl", "org.apache.lucene.util", NULL, 0x401, 6, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilAttributeImpl;
}

@end

void OrgApacheLuceneUtilAttributeImpl_init(OrgApacheLuceneUtilAttributeImpl *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAttributeImpl)

@implementation OrgApacheLuceneUtilAttributeImpl_$1

- (void)reflectWithIOSClass:(IOSClass *)attClass
               withNSString:(NSString *)key
                     withId:(id)value {
  if ([((JavaLangStringBuilder *) nil_chk(val$buffer_)) length] > 0) {
    [val$buffer_ appendWithChar:','];
  }
  if (val$prependAttClass_) {
    [((JavaLangStringBuilder *) nil_chk([val$buffer_ appendWithNSString:[((IOSClass *) nil_chk(attClass)) getName]])) appendWithChar:'#'];
  }
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([val$buffer_ appendWithNSString:key])) appendWithChar:'='])) appendWithId:(value == nil) ? @"null" : value];
}

- (instancetype)initWithJavaLangStringBuilder:(JavaLangStringBuilder *)capture$0
                                  withBoolean:(jboolean)capture$1 {
  OrgApacheLuceneUtilAttributeImpl_$1_initWithJavaLangStringBuilder_withBoolean_(self, capture$0, capture$1);
  return self;
}

- (void)dealloc {
  RELEASE_(val$buffer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "reflectWithIOSClass:withNSString:withId:", "reflect", "V", 0x1, NULL, "(Ljava/lang/Class<+Lorg/apache/lucene/util/Attribute;>;Ljava/lang/String;Ljava/lang/Object;)V" },
    { "initWithJavaLangStringBuilder:withBoolean:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$buffer_", NULL, 0x1012, "Ljava.lang.StringBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$prependAttClass_", NULL, 0x1012, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneUtilAttributeImpl", "reflectAsStringWithBoolean:" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAttributeImpl_$1 = { 2, "", "org.apache.lucene.util", "AttributeImpl", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneUtilAttributeImpl_$1;
}

@end

void OrgApacheLuceneUtilAttributeImpl_$1_initWithJavaLangStringBuilder_withBoolean_(OrgApacheLuceneUtilAttributeImpl_$1 *self, JavaLangStringBuilder *capture$0, jboolean capture$1) {
  JreStrongAssign(&self->val$buffer_, capture$0);
  self->val$prependAttClass_ = capture$1;
  NSObject_init(self);
}

OrgApacheLuceneUtilAttributeImpl_$1 *new_OrgApacheLuceneUtilAttributeImpl_$1_initWithJavaLangStringBuilder_withBoolean_(JavaLangStringBuilder *capture$0, jboolean capture$1) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAttributeImpl_$1, initWithJavaLangStringBuilder_withBoolean_, capture$0, capture$1)
}

OrgApacheLuceneUtilAttributeImpl_$1 *create_OrgApacheLuceneUtilAttributeImpl_$1_initWithJavaLangStringBuilder_withBoolean_(JavaLangStringBuilder *capture$0, jboolean capture$1) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAttributeImpl_$1, initWithJavaLangStringBuilder_withBoolean_, capture$0, capture$1)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAttributeImpl_$1)

@implementation OrgApacheLuceneUtilAttributeImpl_$2

- (id)run {
  @try {
    [((JavaLangReflectField *) nil_chk(val$f_)) setAccessibleWithBoolean:true];
    return [val$f_ getWithId:this$0_];
  }
  @catch (JavaLangIllegalAccessException *e) {
    @throw create_JavaLangRuntimeException_initWithNSString_withNSException_(@"Cannot access private fields.", e);
  }
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)outer$
                                withJavaLangReflectField:(JavaLangReflectField *)capture$0 {
  OrgApacheLuceneUtilAttributeImpl_$2_initWithOrgApacheLuceneUtilAttributeImpl_withJavaLangReflectField_(self, outer$, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$f_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "Ljava.lang.Object;", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilAttributeImpl:withJavaLangReflectField:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.util.AttributeImpl;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$f_", NULL, 0x1012, "Ljava.lang.reflect.Field;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneUtilAttributeImpl", "reflectWithWithOrgApacheLuceneUtilAttributeReflector:" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAttributeImpl_$2 = { 2, "", "org.apache.lucene.util", "AttributeImpl", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Ljava/security/PrivilegedAction<Ljava/lang/Object;>;" };
  return &_OrgApacheLuceneUtilAttributeImpl_$2;
}

@end

void OrgApacheLuceneUtilAttributeImpl_$2_initWithOrgApacheLuceneUtilAttributeImpl_withJavaLangReflectField_(OrgApacheLuceneUtilAttributeImpl_$2 *self, OrgApacheLuceneUtilAttributeImpl *outer$, JavaLangReflectField *capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$f_, capture$0);
  NSObject_init(self);
}

OrgApacheLuceneUtilAttributeImpl_$2 *new_OrgApacheLuceneUtilAttributeImpl_$2_initWithOrgApacheLuceneUtilAttributeImpl_withJavaLangReflectField_(OrgApacheLuceneUtilAttributeImpl *outer$, JavaLangReflectField *capture$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAttributeImpl_$2, initWithOrgApacheLuceneUtilAttributeImpl_withJavaLangReflectField_, outer$, capture$0)
}

OrgApacheLuceneUtilAttributeImpl_$2 *create_OrgApacheLuceneUtilAttributeImpl_$2_initWithOrgApacheLuceneUtilAttributeImpl_withJavaLangReflectField_(OrgApacheLuceneUtilAttributeImpl *outer$, JavaLangReflectField *capture$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAttributeImpl_$2, initWithOrgApacheLuceneUtilAttributeImpl_withJavaLangReflectField_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAttributeImpl_$2)
