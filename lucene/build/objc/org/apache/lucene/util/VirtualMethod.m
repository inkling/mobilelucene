//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/VirtualMethod.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/NoSuchMethodException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/lang/reflect/Method.h"
#include "java/util/Collections.h"
#include "java/util/HashSet.h"
#include "java/util/Set.h"
#include "org/apache/lucene/util/VirtualMethod.h"
#include "org/lukhnos/portmobile/lang/ClassValue.h"

@interface OrgApacheLuceneUtilVirtualMethod () {
 @public
  IOSClass *baseClass_;
  NSString *method_;
  IOSObjectArray *parameters_;
  OrgLukhnosPortmobileLangClassValue *distanceOfClass_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilVirtualMethod, baseClass_, IOSClass *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilVirtualMethod, method_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilVirtualMethod, parameters_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilVirtualMethod, distanceOfClass_, OrgLukhnosPortmobileLangClassValue *)

inline id<JavaUtilSet> OrgApacheLuceneUtilVirtualMethod_get_singletonSet();
static id<JavaUtilSet> OrgApacheLuceneUtilVirtualMethod_singletonSet;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVirtualMethod, singletonSet, id<JavaUtilSet>)

@interface OrgApacheLuceneUtilVirtualMethod_$1 : OrgLukhnosPortmobileLangClassValue {
 @public
  OrgApacheLuceneUtilVirtualMethod *this$0_;
}

- (JavaLangInteger *)computeValueWithIOSClass:(IOSClass *)subclazz;

- (instancetype)initWithOrgApacheLuceneUtilVirtualMethod:(OrgApacheLuceneUtilVirtualMethod *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilVirtualMethod_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilVirtualMethod_$1, this$0_, OrgApacheLuceneUtilVirtualMethod *)

__attribute__((unused)) static void OrgApacheLuceneUtilVirtualMethod_$1_initWithOrgApacheLuceneUtilVirtualMethod_(OrgApacheLuceneUtilVirtualMethod_$1 *self, OrgApacheLuceneUtilVirtualMethod *outer$);

__attribute__((unused)) static OrgApacheLuceneUtilVirtualMethod_$1 *new_OrgApacheLuceneUtilVirtualMethod_$1_initWithOrgApacheLuceneUtilVirtualMethod_(OrgApacheLuceneUtilVirtualMethod *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilVirtualMethod_$1 *create_OrgApacheLuceneUtilVirtualMethod_$1_initWithOrgApacheLuceneUtilVirtualMethod_(OrgApacheLuceneUtilVirtualMethod *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilVirtualMethod_$1)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilVirtualMethod)

@implementation OrgApacheLuceneUtilVirtualMethod

- (instancetype)initWithIOSClass:(IOSClass *)baseClass
                    withNSString:(NSString *)method
               withIOSClassArray:(IOSObjectArray *)parameters {
  OrgApacheLuceneUtilVirtualMethod_initWithIOSClass_withNSString_withIOSClassArray_(self, baseClass, method, parameters);
  return self;
}

- (jint)getImplementationDistanceWithIOSClass:(IOSClass *)subclazz {
  return [((JavaLangInteger *) nil_chk([((OrgLukhnosPortmobileLangClassValue *) nil_chk(distanceOfClass_)) getWithIOSClass:subclazz])) intValue];
}

- (jboolean)isOverriddenAsOfWithIOSClass:(IOSClass *)subclazz {
  return [self getImplementationDistanceWithIOSClass:subclazz] > 0;
}

- (jint)reflectImplementationDistanceWithIOSClass:(IOSClass *)subclazz {
  if (![((IOSClass *) nil_chk(baseClass_)) isAssignableFrom:subclazz]) @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$", [((IOSClass *) nil_chk(subclazz)) getName], @" is not a subclass of ", [baseClass_ getName]));
  jboolean overridden = false;
  jint distance = 0;
  for (IOSClass *clazz = subclazz; clazz != baseClass_ && clazz != nil; clazz = [clazz getSuperclass]) {
    if (!overridden) {
      @try {
        [clazz getDeclaredMethod:method_ parameterTypes:parameters_];
        overridden = true;
      }
      @catch (JavaLangNoSuchMethodException *nsme) {
      }
    }
    if (overridden) distance++;
  }
  return distance;
}

+ (jint)compareImplementationDistanceWithIOSClass:(IOSClass *)clazz
             withOrgApacheLuceneUtilVirtualMethod:(OrgApacheLuceneUtilVirtualMethod *)m1
             withOrgApacheLuceneUtilVirtualMethod:(OrgApacheLuceneUtilVirtualMethod *)m2 {
  return OrgApacheLuceneUtilVirtualMethod_compareImplementationDistanceWithIOSClass_withOrgApacheLuceneUtilVirtualMethod_withOrgApacheLuceneUtilVirtualMethod_(clazz, m1, m2);
}

- (void)dealloc {
  RELEASE_(baseClass_);
  RELEASE_(method_);
  RELEASE_(parameters_);
  RELEASE_(distanceOfClass_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilVirtualMethod class]) {
    JreStrongAssign(&OrgApacheLuceneUtilVirtualMethod_singletonSet, JavaUtilCollections_synchronizedSetWithJavaUtilSet_(create_JavaUtilHashSet_init()));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilVirtualMethod)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithIOSClass:withNSString:withIOSClassArray:", "VirtualMethod", NULL, 0x81, NULL, "(Ljava/lang/Class<TC;>;Ljava/lang/String;[Ljava/lang/Class<*>;)V" },
    { "getImplementationDistanceWithIOSClass:", "getImplementationDistance", "I", 0x1, NULL, "(Ljava/lang/Class<+TC;>;)I" },
    { "isOverriddenAsOfWithIOSClass:", "isOverriddenAsOf", "Z", 0x1, NULL, "(Ljava/lang/Class<+TC;>;)Z" },
    { "reflectImplementationDistanceWithIOSClass:", "reflectImplementationDistance", "I", 0x0, NULL, "(Ljava/lang/Class<*>;)I" },
    { "compareImplementationDistanceWithIOSClass:withOrgApacheLuceneUtilVirtualMethod:withOrgApacheLuceneUtilVirtualMethod:", "compareImplementationDistance", "I", 0x9, NULL, "<C:Ljava/lang/Object;>(Ljava/lang/Class<+TC;>;Lorg/apache/lucene/util/VirtualMethod<TC;>;Lorg/apache/lucene/util/VirtualMethod<TC;>;)I" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "singletonSet", "singletonSet", 0x1a, "Ljava.util.Set;", &OrgApacheLuceneUtilVirtualMethod_singletonSet, "Ljava/util/Set<Ljava/lang/reflect/Method;>;", .constantValue.asLong = 0 },
    { "baseClass_", NULL, 0x12, "Ljava.lang.Class;", NULL, "Ljava/lang/Class<TC;>;", .constantValue.asLong = 0 },
    { "method_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "parameters_", NULL, 0x12, "[Ljava.lang.Class;", NULL, "[Ljava/lang/Class<*>;", .constantValue.asLong = 0 },
    { "distanceOfClass_", NULL, 0x12, "Lorg.lukhnos.portmobile.lang.ClassValue;", NULL, "Lorg/lukhnos/portmobile/lang/ClassValue<Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilVirtualMethod = { 2, "VirtualMethod", "org.apache.lucene.util", NULL, 0x11, 5, methods, 5, fields, 0, NULL, 0, NULL, NULL, "<C:Ljava/lang/Object;>Ljava/lang/Object;" };
  return &_OrgApacheLuceneUtilVirtualMethod;
}

@end

void OrgApacheLuceneUtilVirtualMethod_initWithIOSClass_withNSString_withIOSClassArray_(OrgApacheLuceneUtilVirtualMethod *self, IOSClass *baseClass, NSString *method, IOSObjectArray *parameters) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->distanceOfClass_, new_OrgApacheLuceneUtilVirtualMethod_$1_initWithOrgApacheLuceneUtilVirtualMethod_(self));
  JreStrongAssign(&self->baseClass_, baseClass);
  JreStrongAssign(&self->method_, method);
  JreStrongAssign(&self->parameters_, parameters);
  @try {
    if (![((id<JavaUtilSet>) nil_chk(OrgApacheLuceneUtilVirtualMethod_singletonSet)) addWithId:[((IOSClass *) nil_chk(baseClass)) getDeclaredMethod:method parameterTypes:parameters]]) @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"VirtualMethod instances must be singletons and therefore assigned to static final members in the same class, they use as baseClass ctor param.");
  }
  @catch (JavaLangNoSuchMethodException *nsme) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$", [baseClass getName], @" has no such method: ", [((JavaLangNoSuchMethodException *) nil_chk(nsme)) getMessage]));
  }
}

OrgApacheLuceneUtilVirtualMethod *new_OrgApacheLuceneUtilVirtualMethod_initWithIOSClass_withNSString_withIOSClassArray_(IOSClass *baseClass, NSString *method, IOSObjectArray *parameters) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilVirtualMethod, initWithIOSClass_withNSString_withIOSClassArray_, baseClass, method, parameters)
}

OrgApacheLuceneUtilVirtualMethod *create_OrgApacheLuceneUtilVirtualMethod_initWithIOSClass_withNSString_withIOSClassArray_(IOSClass *baseClass, NSString *method, IOSObjectArray *parameters) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilVirtualMethod, initWithIOSClass_withNSString_withIOSClassArray_, baseClass, method, parameters)
}

jint OrgApacheLuceneUtilVirtualMethod_compareImplementationDistanceWithIOSClass_withOrgApacheLuceneUtilVirtualMethod_withOrgApacheLuceneUtilVirtualMethod_(IOSClass *clazz, OrgApacheLuceneUtilVirtualMethod *m1, OrgApacheLuceneUtilVirtualMethod *m2) {
  OrgApacheLuceneUtilVirtualMethod_initialize();
  return [JavaLangInteger_valueOfWithInt_([((OrgApacheLuceneUtilVirtualMethod *) nil_chk(m1)) getImplementationDistanceWithIOSClass:clazz]) compareToWithId:JavaLangInteger_valueOfWithInt_([((OrgApacheLuceneUtilVirtualMethod *) nil_chk(m2)) getImplementationDistanceWithIOSClass:clazz])];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilVirtualMethod)

@implementation OrgApacheLuceneUtilVirtualMethod_$1

- (JavaLangInteger *)computeValueWithIOSClass:(IOSClass *)subclazz {
  return JavaLangInteger_valueOfWithInt_([this$0_ reflectImplementationDistanceWithIOSClass:subclazz]);
}

- (instancetype)initWithOrgApacheLuceneUtilVirtualMethod:(OrgApacheLuceneUtilVirtualMethod *)outer$ {
  OrgApacheLuceneUtilVirtualMethod_$1_initWithOrgApacheLuceneUtilVirtualMethod_(self, outer$);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "computeValueWithIOSClass:", "computeValue", "Ljava.lang.Integer;", 0x4, NULL, "(Ljava/lang/Class<*>;)Ljava/lang/Integer;" },
    { "initWithOrgApacheLuceneUtilVirtualMethod:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.util.VirtualMethod;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Ljava.lang.Integer;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilVirtualMethod_$1 = { 2, "", "org.apache.lucene.util", "VirtualMethod", 0x8008, 2, methods, 1, fields, 1, superclass_type_args, 0, NULL, NULL, "Lorg/lukhnos/portmobile/lang/ClassValue<Ljava/lang/Integer;>;" };
  return &_OrgApacheLuceneUtilVirtualMethod_$1;
}

@end

void OrgApacheLuceneUtilVirtualMethod_$1_initWithOrgApacheLuceneUtilVirtualMethod_(OrgApacheLuceneUtilVirtualMethod_$1 *self, OrgApacheLuceneUtilVirtualMethod *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgLukhnosPortmobileLangClassValue_init(self);
}

OrgApacheLuceneUtilVirtualMethod_$1 *new_OrgApacheLuceneUtilVirtualMethod_$1_initWithOrgApacheLuceneUtilVirtualMethod_(OrgApacheLuceneUtilVirtualMethod *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilVirtualMethod_$1, initWithOrgApacheLuceneUtilVirtualMethod_, outer$)
}

OrgApacheLuceneUtilVirtualMethod_$1 *create_OrgApacheLuceneUtilVirtualMethod_$1_initWithOrgApacheLuceneUtilVirtualMethod_(OrgApacheLuceneUtilVirtualMethod *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilVirtualMethod_$1, initWithOrgApacheLuceneUtilVirtualMethod_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilVirtualMethod_$1)
