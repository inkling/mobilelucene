//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/AttributeSource.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/Iterator.h"
#include "java/util/LinkedHashMap.h"
#include "java/util/LinkedHashSet.h"
#include "java/util/Map.h"
#include "java/util/NoSuchElementException.h"
#include "java/util/Set.h"
#include "org/apache/lucene/util/Attribute.h"
#include "org/apache/lucene/util/AttributeFactory.h"
#include "org/apache/lucene/util/AttributeImpl.h"
#include "org/apache/lucene/util/AttributeReflector.h"
#include "org/apache/lucene/util/AttributeSource.h"
#include "org/lukhnos/portmobile/lang/ClassValue.h"

@interface OrgApacheLuceneUtilAttributeSource () {
 @public
  id<JavaUtilMap> attributes_;
  id<JavaUtilMap> attributeImpls_;
  IOSObjectArray *currentState_;
  OrgApacheLuceneUtilAttributeFactory *factory_;
}

- (OrgApacheLuceneUtilAttributeSource_State *)getCurrentState;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAttributeSource, attributes_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAttributeSource, attributeImpls_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAttributeSource, currentState_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAttributeSource, factory_, OrgApacheLuceneUtilAttributeFactory *)

/*!
 @brief a cache that stores all interfaces for known implementation classes for performance (slow reflection)
 */
inline OrgLukhnosPortmobileLangClassValue *OrgApacheLuceneUtilAttributeSource_get_implInterfaces();
static OrgLukhnosPortmobileLangClassValue *OrgApacheLuceneUtilAttributeSource_implInterfaces;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAttributeSource, implInterfaces, OrgLukhnosPortmobileLangClassValue *)

__attribute__((unused)) static void OrgApacheLuceneUtilAttributeSource_addAttributeImplWithOrgApacheLuceneUtilAttributeImpl_(OrgApacheLuceneUtilAttributeSource *self, OrgApacheLuceneUtilAttributeImpl *att);

__attribute__((unused)) static jboolean OrgApacheLuceneUtilAttributeSource_hasAttributes(OrgApacheLuceneUtilAttributeSource *self);

__attribute__((unused)) static OrgApacheLuceneUtilAttributeSource_State *OrgApacheLuceneUtilAttributeSource_getCurrentState(OrgApacheLuceneUtilAttributeSource *self);

__attribute__((unused)) static NSString *OrgApacheLuceneUtilAttributeSource_reflectAsStringWithBoolean_(OrgApacheLuceneUtilAttributeSource *self, jboolean prependAttClass);

__attribute__((unused)) static void OrgApacheLuceneUtilAttributeSource_reflectWithWithOrgApacheLuceneUtilAttributeReflector_(OrgApacheLuceneUtilAttributeSource *self, id<OrgApacheLuceneUtilAttributeReflector> reflector);

@interface OrgApacheLuceneUtilAttributeSource_$2 : NSObject < JavaUtilIterator > {
 @public
  OrgApacheLuceneUtilAttributeSource_State *state_;
  OrgApacheLuceneUtilAttributeSource_State *val$initState_;
}

- (void)remove;

- (OrgApacheLuceneUtilAttributeImpl *)next;

- (jboolean)hasNext;

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource_State:(OrgApacheLuceneUtilAttributeSource_State *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAttributeSource_$2)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAttributeSource_$2, state_, OrgApacheLuceneUtilAttributeSource_State *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAttributeSource_$2, val$initState_, OrgApacheLuceneUtilAttributeSource_State *)

__attribute__((unused)) static void OrgApacheLuceneUtilAttributeSource_$2_initWithOrgApacheLuceneUtilAttributeSource_State_(OrgApacheLuceneUtilAttributeSource_$2 *self, OrgApacheLuceneUtilAttributeSource_State *capture$0);

__attribute__((unused)) static OrgApacheLuceneUtilAttributeSource_$2 *new_OrgApacheLuceneUtilAttributeSource_$2_initWithOrgApacheLuceneUtilAttributeSource_State_(OrgApacheLuceneUtilAttributeSource_State *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAttributeSource_$2 *create_OrgApacheLuceneUtilAttributeSource_$2_initWithOrgApacheLuceneUtilAttributeSource_State_(OrgApacheLuceneUtilAttributeSource_State *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAttributeSource_$2)

@interface OrgApacheLuceneUtilAttributeSource_$1 : OrgLukhnosPortmobileLangClassValue

- (IOSObjectArray *)computeValueWithIOSClass:(IOSClass *)clazz;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAttributeSource_$1)

__attribute__((unused)) static void OrgApacheLuceneUtilAttributeSource_$1_init(OrgApacheLuceneUtilAttributeSource_$1 *self);

__attribute__((unused)) static OrgApacheLuceneUtilAttributeSource_$1 *new_OrgApacheLuceneUtilAttributeSource_$1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAttributeSource_$1 *create_OrgApacheLuceneUtilAttributeSource_$1_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAttributeSource_$1)

@interface OrgApacheLuceneUtilAttributeSource_$3 : NSObject < OrgApacheLuceneUtilAttributeReflector > {
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

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAttributeSource_$3)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAttributeSource_$3, val$buffer_, JavaLangStringBuilder *)

__attribute__((unused)) static void OrgApacheLuceneUtilAttributeSource_$3_initWithJavaLangStringBuilder_withBoolean_(OrgApacheLuceneUtilAttributeSource_$3 *self, JavaLangStringBuilder *capture$0, jboolean capture$1);

__attribute__((unused)) static OrgApacheLuceneUtilAttributeSource_$3 *new_OrgApacheLuceneUtilAttributeSource_$3_initWithJavaLangStringBuilder_withBoolean_(JavaLangStringBuilder *capture$0, jboolean capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAttributeSource_$3 *create_OrgApacheLuceneUtilAttributeSource_$3_initWithJavaLangStringBuilder_withBoolean_(JavaLangStringBuilder *capture$0, jboolean capture$1);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAttributeSource_$3)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilAttributeSource)

@implementation OrgApacheLuceneUtilAttributeSource

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilAttributeSource_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)input {
  OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeSource_(self, input);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory {
  OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeFactory_(self, factory);
  return self;
}

- (OrgApacheLuceneUtilAttributeFactory *)getAttributeFactory {
  return self->factory_;
}

- (id<JavaUtilIterator>)getAttributeClassesIterator {
  return [((id<JavaUtilSet>) nil_chk(JavaUtilCollections_unmodifiableSetWithJavaUtilSet_([((id<JavaUtilMap>) nil_chk(attributes_)) keySet]))) iterator];
}

- (id<JavaUtilIterator>)getAttributeImplsIterator {
  OrgApacheLuceneUtilAttributeSource_State *initState = OrgApacheLuceneUtilAttributeSource_getCurrentState(self);
  if (initState != nil) {
    return create_OrgApacheLuceneUtilAttributeSource_$2_initWithOrgApacheLuceneUtilAttributeSource_State_(initState);
  }
  else {
    return [((id<JavaUtilSet>) nil_chk(JavaUtilCollections_emptySet())) iterator];
  }
}

+ (IOSObjectArray *)getAttributeInterfacesWithIOSClass:(IOSClass *)clazz {
  return OrgApacheLuceneUtilAttributeSource_getAttributeInterfacesWithIOSClass_(clazz);
}

- (void)addAttributeImplWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)att {
  OrgApacheLuceneUtilAttributeSource_addAttributeImplWithOrgApacheLuceneUtilAttributeImpl_(self, att);
}

- (id)addAttributeWithIOSClass:(IOSClass *)attClass {
  OrgApacheLuceneUtilAttributeImpl *attImpl = [((id<JavaUtilMap>) nil_chk(attributes_)) getWithId:attClass];
  if (attImpl == nil) {
    if (!([((IOSClass *) nil_chk(attClass)) isInterface] && [OrgApacheLuceneUtilAttribute_class_() isAssignableFrom:attClass])) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$", @"addAttribute() only accepts an interface that extends Attribute, but ", [attClass getName], @" does not fulfil this contract."));
    }
    OrgApacheLuceneUtilAttributeSource_addAttributeImplWithOrgApacheLuceneUtilAttributeImpl_(self, attImpl = [((OrgApacheLuceneUtilAttributeFactory *) nil_chk(self->factory_)) createAttributeInstanceWithIOSClass:attClass]);
  }
  return [((IOSClass *) nil_chk(attClass)) cast:attImpl];
}

- (jboolean)hasAttributes {
  return OrgApacheLuceneUtilAttributeSource_hasAttributes(self);
}

- (jboolean)hasAttributeWithIOSClass:(IOSClass *)attClass {
  return [((id<JavaUtilMap>) nil_chk(self->attributes_)) containsKeyWithId:attClass];
}

- (id)getAttributeWithIOSClass:(IOSClass *)attClass {
  return [((IOSClass *) nil_chk(attClass)) cast:[((id<JavaUtilMap>) nil_chk(attributes_)) getWithId:attClass]];
}

- (OrgApacheLuceneUtilAttributeSource_State *)getCurrentState {
  return OrgApacheLuceneUtilAttributeSource_getCurrentState(self);
}

- (void)clearAttributes {
  for (OrgApacheLuceneUtilAttributeSource_State *state = OrgApacheLuceneUtilAttributeSource_getCurrentState(self); state != nil; state = state->next_) {
    [((OrgApacheLuceneUtilAttributeImpl *) nil_chk(state->attribute_)) clear];
  }
}

- (OrgApacheLuceneUtilAttributeSource_State *)captureState {
  OrgApacheLuceneUtilAttributeSource_State *state = OrgApacheLuceneUtilAttributeSource_getCurrentState(self);
  return (state == nil) ? nil : [((OrgApacheLuceneUtilAttributeSource_State *) nil_chk(state)) clone];
}

- (void)restoreStateWithOrgApacheLuceneUtilAttributeSource_State:(OrgApacheLuceneUtilAttributeSource_State *)state {
  if (state == nil) return;
  do {
    OrgApacheLuceneUtilAttributeImpl *targetImpl = [((id<JavaUtilMap>) nil_chk(attributeImpls_)) getWithId:[((OrgApacheLuceneUtilAttributeImpl *) nil_chk(state->attribute_)) getClass]];
    if (targetImpl == nil) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$", @"State contains AttributeImpl of type ", [[((OrgApacheLuceneUtilAttributeImpl *) nil_chk(state->attribute_)) getClass] getName], @" that is not in in this AttributeSource"));
    }
    [((OrgApacheLuceneUtilAttributeImpl *) nil_chk(state->attribute_)) copyToWithOrgApacheLuceneUtilAttributeImpl:targetImpl];
    state = state->next_;
  }
  while (state != nil);
}

- (NSUInteger)hash {
  jint code = 0;
  for (OrgApacheLuceneUtilAttributeSource_State *state = OrgApacheLuceneUtilAttributeSource_getCurrentState(self); state != nil; state = state->next_) {
    code = code * 31 + ((jint) [((OrgApacheLuceneUtilAttributeImpl *) nil_chk(state->attribute_)) hash]);
  }
  return code;
}

- (jboolean)isEqual:(id)obj {
  if (obj == self) {
    return true;
  }
  if ([obj isKindOfClass:[OrgApacheLuceneUtilAttributeSource class]]) {
    OrgApacheLuceneUtilAttributeSource *other = (OrgApacheLuceneUtilAttributeSource *) cast_chk(obj, [OrgApacheLuceneUtilAttributeSource class]);
    if (OrgApacheLuceneUtilAttributeSource_hasAttributes(self)) {
      if (!OrgApacheLuceneUtilAttributeSource_hasAttributes(nil_chk(other))) {
        return false;
      }
      if ([((id<JavaUtilMap>) nil_chk(self->attributeImpls_)) size] != [other->attributeImpls_ size]) {
        return false;
      }
      OrgApacheLuceneUtilAttributeSource_State *thisState = OrgApacheLuceneUtilAttributeSource_getCurrentState(self);
      OrgApacheLuceneUtilAttributeSource_State *otherState = OrgApacheLuceneUtilAttributeSource_getCurrentState(other);
      while (thisState != nil && otherState != nil) {
        if ([((OrgApacheLuceneUtilAttributeImpl *) nil_chk(otherState->attribute_)) getClass] != (id) [((OrgApacheLuceneUtilAttributeImpl *) nil_chk(thisState->attribute_)) getClass] || ![((OrgApacheLuceneUtilAttributeImpl *) nil_chk(otherState->attribute_)) isEqual:thisState->attribute_]) {
          return false;
        }
        thisState = thisState->next_;
        otherState = otherState->next_;
      }
      return true;
    }
    else {
      return !OrgApacheLuceneUtilAttributeSource_hasAttributes(nil_chk(other));
    }
  }
  else return false;
}

- (NSString *)reflectAsStringWithBoolean:(jboolean)prependAttClass {
  return OrgApacheLuceneUtilAttributeSource_reflectAsStringWithBoolean_(self, prependAttClass);
}

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id<OrgApacheLuceneUtilAttributeReflector>)reflector {
  OrgApacheLuceneUtilAttributeSource_reflectWithWithOrgApacheLuceneUtilAttributeReflector_(self, reflector);
}

- (OrgApacheLuceneUtilAttributeSource *)cloneAttributes {
  OrgApacheLuceneUtilAttributeSource *clone = create_OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeFactory_(self->factory_);
  if (OrgApacheLuceneUtilAttributeSource_hasAttributes(self)) {
    for (OrgApacheLuceneUtilAttributeSource_State *state = OrgApacheLuceneUtilAttributeSource_getCurrentState(self); state != nil; state = state->next_) {
      [((id<JavaUtilMap>) nil_chk(clone->attributeImpls_)) putWithId:[((OrgApacheLuceneUtilAttributeImpl *) nil_chk(state->attribute_)) getClass] withId:[((OrgApacheLuceneUtilAttributeImpl *) nil_chk(state->attribute_)) clone]];
    }
    for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((id<JavaUtilMap>) nil_chk(self->attributes_)) entrySet])) {
      [clone->attributes_ putWithId:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey] withId:[((id<JavaUtilMap>) nil_chk(clone->attributeImpls_)) getWithId:[((OrgApacheLuceneUtilAttributeImpl *) nil_chk([entry_ getValue])) getClass]]];
    }
  }
  return clone;
}

- (void)copyToWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)target {
  for (OrgApacheLuceneUtilAttributeSource_State *state = OrgApacheLuceneUtilAttributeSource_getCurrentState(self); state != nil; state = state->next_) {
    OrgApacheLuceneUtilAttributeImpl *targetImpl = [((id<JavaUtilMap>) nil_chk(((OrgApacheLuceneUtilAttributeSource *) nil_chk(target))->attributeImpls_)) getWithId:[((OrgApacheLuceneUtilAttributeImpl *) nil_chk(state->attribute_)) getClass]];
    if (targetImpl == nil) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$", @"This AttributeSource contains AttributeImpl of type ", [[((OrgApacheLuceneUtilAttributeImpl *) nil_chk(state->attribute_)) getClass] getName], @" that is not in the target"));
    }
    [((OrgApacheLuceneUtilAttributeImpl *) nil_chk(state->attribute_)) copyToWithOrgApacheLuceneUtilAttributeImpl:targetImpl];
  }
}

- (NSString *)description {
  return JreStrcat("$C$C$", [[self getClass] getSimpleName], '@', JavaLangInteger_toHexStringWithInt_(JavaLangSystem_identityHashCodeWithId_(self)), ' ', OrgApacheLuceneUtilAttributeSource_reflectAsStringWithBoolean_(self, false));
}

- (void)dealloc {
  RELEASE_(attributes_);
  RELEASE_(attributeImpls_);
  RELEASE_(currentState_);
  RELEASE_(factory_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilAttributeSource class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAttributeSource_implInterfaces, new_OrgApacheLuceneUtilAttributeSource_$1_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilAttributeSource)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "AttributeSource", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilAttributeSource:", "AttributeSource", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilAttributeFactory:", "AttributeSource", NULL, 0x1, NULL, NULL },
    { "getAttributeFactory", NULL, "Lorg.apache.lucene.util.AttributeFactory;", 0x11, NULL, NULL },
    { "getAttributeClassesIterator", NULL, "Ljava.util.Iterator;", 0x11, NULL, "()Ljava/util/Iterator<Ljava/lang/Class<+Lorg/apache/lucene/util/Attribute;>;>;" },
    { "getAttributeImplsIterator", NULL, "Ljava.util.Iterator;", 0x11, NULL, "()Ljava/util/Iterator<Lorg/apache/lucene/util/AttributeImpl;>;" },
    { "getAttributeInterfacesWithIOSClass:", "getAttributeInterfaces", "[Ljava.lang.Class;", 0x8, NULL, "(Ljava/lang/Class<+Lorg/apache/lucene/util/AttributeImpl;>;)[Ljava/lang/Class<+Lorg/apache/lucene/util/Attribute;>;" },
    { "addAttributeImplWithOrgApacheLuceneUtilAttributeImpl:", "addAttributeImpl", "V", 0x11, NULL, NULL },
    { "addAttributeWithIOSClass:", "addAttribute", "TT;", 0x11, NULL, "<T::Lorg/apache/lucene/util/Attribute;>(Ljava/lang/Class<TT;>;)TT;" },
    { "hasAttributes", NULL, "Z", 0x11, NULL, NULL },
    { "hasAttributeWithIOSClass:", "hasAttribute", "Z", 0x11, NULL, "(Ljava/lang/Class<+Lorg/apache/lucene/util/Attribute;>;)Z" },
    { "getAttributeWithIOSClass:", "getAttribute", "TT;", 0x11, NULL, "<T::Lorg/apache/lucene/util/Attribute;>(Ljava/lang/Class<TT;>;)TT;" },
    { "getCurrentState", NULL, "Lorg.apache.lucene.util.AttributeSource$State;", 0x2, NULL, NULL },
    { "clearAttributes", NULL, "V", 0x11, NULL, NULL },
    { "captureState", NULL, "Lorg.apache.lucene.util.AttributeSource$State;", 0x11, NULL, NULL },
    { "restoreStateWithOrgApacheLuceneUtilAttributeSource_State:", "restoreState", "V", 0x11, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "reflectAsStringWithBoolean:", "reflectAsString", "Ljava.lang.String;", 0x11, NULL, NULL },
    { "reflectWithWithOrgApacheLuceneUtilAttributeReflector:", "reflectWith", "V", 0x11, NULL, NULL },
    { "cloneAttributes", NULL, "Lorg.apache.lucene.util.AttributeSource;", 0x11, NULL, NULL },
    { "copyToWithOrgApacheLuceneUtilAttributeSource:", "copyTo", "V", 0x11, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "attributes_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Class<+Lorg/apache/lucene/util/Attribute;>;Lorg/apache/lucene/util/AttributeImpl;>;", .constantValue.asLong = 0 },
    { "attributeImpls_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Class<+Lorg/apache/lucene/util/AttributeImpl;>;Lorg/apache/lucene/util/AttributeImpl;>;", .constantValue.asLong = 0 },
    { "currentState_", NULL, 0x12, "[Lorg.apache.lucene.util.AttributeSource$State;", NULL, NULL, .constantValue.asLong = 0 },
    { "factory_", NULL, 0x12, "Lorg.apache.lucene.util.AttributeFactory;", NULL, NULL, .constantValue.asLong = 0 },
    { "implInterfaces", "implInterfaces", 0x1a, "Lorg.lukhnos.portmobile.lang.ClassValue;", &OrgApacheLuceneUtilAttributeSource_implInterfaces, "Lorg/lukhnos/portmobile/lang/ClassValue<[Ljava/lang/Class<+Lorg/apache/lucene/util/Attribute;>;>;", .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.util.AttributeSource$State;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAttributeSource = { 2, "AttributeSource", "org.apache.lucene.util", NULL, 0x1, 23, methods, 5, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneUtilAttributeSource;
}

@end

void OrgApacheLuceneUtilAttributeSource_init(OrgApacheLuceneUtilAttributeSource *self) {
  OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeFactory_(self, JreLoadStatic(OrgApacheLuceneUtilAttributeFactory, DEFAULT_ATTRIBUTE_FACTORY));
}

OrgApacheLuceneUtilAttributeSource *new_OrgApacheLuceneUtilAttributeSource_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAttributeSource, init)
}

OrgApacheLuceneUtilAttributeSource *create_OrgApacheLuceneUtilAttributeSource_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAttributeSource, init)
}

void OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeSource_(OrgApacheLuceneUtilAttributeSource *self, OrgApacheLuceneUtilAttributeSource *input) {
  NSObject_init(self);
  if (input == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"input AttributeSource must not be null");
  }
  JreStrongAssign(&self->attributes_, input->attributes_);
  JreStrongAssign(&self->attributeImpls_, input->attributeImpls_);
  JreStrongAssign(&self->currentState_, input->currentState_);
  JreStrongAssign(&self->factory_, input->factory_);
}

OrgApacheLuceneUtilAttributeSource *new_OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeSource_(OrgApacheLuceneUtilAttributeSource *input) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAttributeSource, initWithOrgApacheLuceneUtilAttributeSource_, input)
}

OrgApacheLuceneUtilAttributeSource *create_OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeSource_(OrgApacheLuceneUtilAttributeSource *input) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAttributeSource, initWithOrgApacheLuceneUtilAttributeSource_, input)
}

void OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneUtilAttributeSource *self, OrgApacheLuceneUtilAttributeFactory *factory) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->attributes_, new_JavaUtilLinkedHashMap_init());
  JreStrongAssignAndConsume(&self->attributeImpls_, new_JavaUtilLinkedHashMap_init());
  JreStrongAssignAndConsume(&self->currentState_, [IOSObjectArray newArrayWithLength:1 type:OrgApacheLuceneUtilAttributeSource_State_class_()]);
  JreStrongAssign(&self->factory_, factory);
}

OrgApacheLuceneUtilAttributeSource *new_OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneUtilAttributeFactory *factory) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAttributeSource, initWithOrgApacheLuceneUtilAttributeFactory_, factory)
}

OrgApacheLuceneUtilAttributeSource *create_OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneUtilAttributeFactory *factory) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAttributeSource, initWithOrgApacheLuceneUtilAttributeFactory_, factory)
}

IOSObjectArray *OrgApacheLuceneUtilAttributeSource_getAttributeInterfacesWithIOSClass_(IOSClass *clazz) {
  OrgApacheLuceneUtilAttributeSource_initialize();
  return [((OrgLukhnosPortmobileLangClassValue *) nil_chk(OrgApacheLuceneUtilAttributeSource_implInterfaces)) getWithIOSClass:clazz];
}

void OrgApacheLuceneUtilAttributeSource_addAttributeImplWithOrgApacheLuceneUtilAttributeImpl_(OrgApacheLuceneUtilAttributeSource *self, OrgApacheLuceneUtilAttributeImpl *att) {
  IOSClass *clazz = [((OrgApacheLuceneUtilAttributeImpl *) nil_chk(att)) getClass];
  if ([((id<JavaUtilMap>) nil_chk(self->attributeImpls_)) containsKeyWithId:clazz]) return;
  {
    IOSObjectArray *a__ = OrgApacheLuceneUtilAttributeSource_getAttributeInterfacesWithIOSClass_(clazz);
    IOSClass * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    IOSClass * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      IOSClass *curInterface = *b__++;
      if (![((id<JavaUtilMap>) nil_chk(self->attributes_)) containsKeyWithId:curInterface]) {
        IOSObjectArray_Set(nil_chk(self->currentState_), 0, nil);
        [self->attributes_ putWithId:curInterface withId:att];
        [self->attributeImpls_ putWithId:clazz withId:att];
      }
    }
  }
}

jboolean OrgApacheLuceneUtilAttributeSource_hasAttributes(OrgApacheLuceneUtilAttributeSource *self) {
  return ![((id<JavaUtilMap>) nil_chk(self->attributes_)) isEmpty];
}

OrgApacheLuceneUtilAttributeSource_State *OrgApacheLuceneUtilAttributeSource_getCurrentState(OrgApacheLuceneUtilAttributeSource *self) {
  OrgApacheLuceneUtilAttributeSource_State *s = IOSObjectArray_Get(nil_chk(self->currentState_), 0);
  if (s != nil || !OrgApacheLuceneUtilAttributeSource_hasAttributes(self)) {
    return s;
  }
  OrgApacheLuceneUtilAttributeSource_State *c = s = IOSObjectArray_SetAndConsume(self->currentState_, 0, new_OrgApacheLuceneUtilAttributeSource_State_init());
  id<JavaUtilIterator> it = [((id<JavaUtilCollection>) nil_chk([((id<JavaUtilMap>) nil_chk(self->attributeImpls_)) values])) iterator];
  JreStrongAssign(&c->attribute_, [((id<JavaUtilIterator>) nil_chk(it)) next]);
  while ([it hasNext]) {
    JreStrongAssignAndConsume(&c->next_, new_OrgApacheLuceneUtilAttributeSource_State_init());
    c = c->next_;
    JreStrongAssign(&c->attribute_, [it next]);
  }
  return s;
}

NSString *OrgApacheLuceneUtilAttributeSource_reflectAsStringWithBoolean_(OrgApacheLuceneUtilAttributeSource *self, jboolean prependAttClass) {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  OrgApacheLuceneUtilAttributeSource_reflectWithWithOrgApacheLuceneUtilAttributeReflector_(self, create_OrgApacheLuceneUtilAttributeSource_$3_initWithJavaLangStringBuilder_withBoolean_(buffer, prependAttClass));
  return [buffer description];
}

void OrgApacheLuceneUtilAttributeSource_reflectWithWithOrgApacheLuceneUtilAttributeReflector_(OrgApacheLuceneUtilAttributeSource *self, id<OrgApacheLuceneUtilAttributeReflector> reflector) {
  for (OrgApacheLuceneUtilAttributeSource_State *state = OrgApacheLuceneUtilAttributeSource_getCurrentState(self); state != nil; state = state->next_) {
    [((OrgApacheLuceneUtilAttributeImpl *) nil_chk(state->attribute_)) reflectWithWithOrgApacheLuceneUtilAttributeReflector:reflector];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAttributeSource)

@implementation OrgApacheLuceneUtilAttributeSource_State

- (OrgApacheLuceneUtilAttributeSource_State *)clone {
  OrgApacheLuceneUtilAttributeSource_State *clone = create_OrgApacheLuceneUtilAttributeSource_State_init();
  JreStrongAssign(&clone->attribute_, [((OrgApacheLuceneUtilAttributeImpl *) nil_chk(attribute_)) clone]);
  if (next_ != nil) {
    JreStrongAssign(&clone->next_, [next_ clone]);
  }
  return clone;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilAttributeSource_State_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(attribute_);
  RELEASE_(next_);
  [super dealloc];
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "clone", NULL, "Lorg.apache.lucene.util.AttributeSource$State;", 0x1, NULL, NULL },
    { "init", "State", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "attribute_", NULL, 0x0, "Lorg.apache.lucene.util.AttributeImpl;", NULL, NULL, .constantValue.asLong = 0 },
    { "next_", NULL, 0x0, "Lorg.apache.lucene.util.AttributeSource$State;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAttributeSource_State = { 2, "State", "org.apache.lucene.util", "AttributeSource", 0x19, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilAttributeSource_State;
}

@end

void OrgApacheLuceneUtilAttributeSource_State_init(OrgApacheLuceneUtilAttributeSource_State *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilAttributeSource_State *new_OrgApacheLuceneUtilAttributeSource_State_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAttributeSource_State, init)
}

OrgApacheLuceneUtilAttributeSource_State *create_OrgApacheLuceneUtilAttributeSource_State_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAttributeSource_State, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAttributeSource_State)

@implementation OrgApacheLuceneUtilAttributeSource_$2

- (void)remove {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (OrgApacheLuceneUtilAttributeImpl *)next {
  if (state_ == nil) @throw create_JavaUtilNoSuchElementException_init();
  OrgApacheLuceneUtilAttributeImpl *att = state_->attribute_;
  JreStrongAssign(&state_, state_->next_);
  return att;
}

- (jboolean)hasNext {
  return state_ != nil;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource_State:(OrgApacheLuceneUtilAttributeSource_State *)capture$0 {
  OrgApacheLuceneUtilAttributeSource_$2_initWithOrgApacheLuceneUtilAttributeSource_State_(self, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(state_);
  RELEASE_(val$initState_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "remove", NULL, "V", 0x1, NULL, NULL },
    { "next", NULL, "Lorg.apache.lucene.util.AttributeImpl;", 0x1, NULL, NULL },
    { "hasNext", NULL, "Z", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilAttributeSource_State:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "state_", NULL, 0x2, "Lorg.apache.lucene.util.AttributeSource$State;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$initState_", NULL, 0x1012, "Lorg.apache.lucene.util.AttributeSource$State;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneUtilAttributeSource", "getAttributeImplsIterator" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAttributeSource_$2 = { 2, "", "org.apache.lucene.util", "AttributeSource", 0x8008, 4, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Ljava/util/Iterator<Lorg/apache/lucene/util/AttributeImpl;>;" };
  return &_OrgApacheLuceneUtilAttributeSource_$2;
}

@end

void OrgApacheLuceneUtilAttributeSource_$2_initWithOrgApacheLuceneUtilAttributeSource_State_(OrgApacheLuceneUtilAttributeSource_$2 *self, OrgApacheLuceneUtilAttributeSource_State *capture$0) {
  JreStrongAssign(&self->val$initState_, capture$0);
  NSObject_init(self);
  JreStrongAssign(&self->state_, self->val$initState_);
}

OrgApacheLuceneUtilAttributeSource_$2 *new_OrgApacheLuceneUtilAttributeSource_$2_initWithOrgApacheLuceneUtilAttributeSource_State_(OrgApacheLuceneUtilAttributeSource_State *capture$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAttributeSource_$2, initWithOrgApacheLuceneUtilAttributeSource_State_, capture$0)
}

OrgApacheLuceneUtilAttributeSource_$2 *create_OrgApacheLuceneUtilAttributeSource_$2_initWithOrgApacheLuceneUtilAttributeSource_State_(OrgApacheLuceneUtilAttributeSource_State *capture$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAttributeSource_$2, initWithOrgApacheLuceneUtilAttributeSource_State_, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAttributeSource_$2)

@implementation OrgApacheLuceneUtilAttributeSource_$1

- (IOSObjectArray *)computeValueWithIOSClass:(IOSClass *)clazz {
  id<JavaUtilSet> intfSet = create_JavaUtilLinkedHashSet_init();
  do {
    {
      IOSObjectArray *a__ = [((IOSClass *) nil_chk(clazz)) getInterfaces];
      IOSClass * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      IOSClass * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        IOSClass *curInterface = *b__++;
        if (curInterface != OrgApacheLuceneUtilAttribute_class_() && [OrgApacheLuceneUtilAttribute_class_() isAssignableFrom:curInterface]) {
          [intfSet addWithId:[((IOSClass *) nil_chk(curInterface)) asSubclass:OrgApacheLuceneUtilAttribute_class_()]];
        }
      }
    }
    clazz = [clazz getSuperclass];
  }
  while (clazz != nil);
  IOSObjectArray *a = [intfSet toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[intfSet size] type:IOSClass_class_()]];
  return a;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilAttributeSource_$1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "computeValueWithIOSClass:", "computeValue", "[Ljava.lang.Class;", 0x4, NULL, "(Ljava/lang/Class<*>;)[Ljava/lang/Class<+Lorg/apache/lucene/util/Attribute;>;" },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"[Ljava.lang.Class;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAttributeSource_$1 = { 2, "", "org.apache.lucene.util", "AttributeSource", 0x8008, 2, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Lorg/lukhnos/portmobile/lang/ClassValue<[Ljava/lang/Class<+Lorg/apache/lucene/util/Attribute;>;>;" };
  return &_OrgApacheLuceneUtilAttributeSource_$1;
}

@end

void OrgApacheLuceneUtilAttributeSource_$1_init(OrgApacheLuceneUtilAttributeSource_$1 *self) {
  OrgLukhnosPortmobileLangClassValue_init(self);
}

OrgApacheLuceneUtilAttributeSource_$1 *new_OrgApacheLuceneUtilAttributeSource_$1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAttributeSource_$1, init)
}

OrgApacheLuceneUtilAttributeSource_$1 *create_OrgApacheLuceneUtilAttributeSource_$1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAttributeSource_$1, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAttributeSource_$1)

@implementation OrgApacheLuceneUtilAttributeSource_$3

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
  OrgApacheLuceneUtilAttributeSource_$3_initWithJavaLangStringBuilder_withBoolean_(self, capture$0, capture$1);
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
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneUtilAttributeSource", "reflectAsStringWithBoolean:" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAttributeSource_$3 = { 2, "", "org.apache.lucene.util", "AttributeSource", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneUtilAttributeSource_$3;
}

@end

void OrgApacheLuceneUtilAttributeSource_$3_initWithJavaLangStringBuilder_withBoolean_(OrgApacheLuceneUtilAttributeSource_$3 *self, JavaLangStringBuilder *capture$0, jboolean capture$1) {
  JreStrongAssign(&self->val$buffer_, capture$0);
  self->val$prependAttClass_ = capture$1;
  NSObject_init(self);
}

OrgApacheLuceneUtilAttributeSource_$3 *new_OrgApacheLuceneUtilAttributeSource_$3_initWithJavaLangStringBuilder_withBoolean_(JavaLangStringBuilder *capture$0, jboolean capture$1) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAttributeSource_$3, initWithJavaLangStringBuilder_withBoolean_, capture$0, capture$1)
}

OrgApacheLuceneUtilAttributeSource_$3 *create_OrgApacheLuceneUtilAttributeSource_$3_initWithJavaLangStringBuilder_withBoolean_(JavaLangStringBuilder *capture$0, jboolean capture$1) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAttributeSource_$3, initWithJavaLangStringBuilder_withBoolean_, capture$0, capture$1)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAttributeSource_$3)
