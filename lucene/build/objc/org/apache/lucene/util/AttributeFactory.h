//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/AttributeFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilAttributeFactory")
#ifdef RESTRICT_OrgApacheLuceneUtilAttributeFactory
#define INCLUDE_ALL_OrgApacheLuceneUtilAttributeFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilAttributeFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilAttributeFactory
#ifdef INCLUDE_OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory
#define INCLUDE_OrgApacheLuceneUtilAttributeFactory 1
#endif

#if !defined (OrgApacheLuceneUtilAttributeFactory_) && (INCLUDE_ALL_OrgApacheLuceneUtilAttributeFactory || defined(INCLUDE_OrgApacheLuceneUtilAttributeFactory))
#define OrgApacheLuceneUtilAttributeFactory_

@class IOSClass;
@class OrgApacheLuceneUtilAttributeImpl;
@class OrgLukhnosPortmobileInvokeMethodHandle;

/*!
 @brief An AttributeFactory creates instances of <code>AttributeImpl</code>s.
 */
@interface OrgApacheLuceneUtilAttributeFactory : NSObject

+ (OrgApacheLuceneUtilAttributeFactory *)DEFAULT_ATTRIBUTE_FACTORY;

#pragma mark Public

- (instancetype)init;

/*!
 @brief Returns an <code>AttributeImpl</code> for the supplied <code>Attribute</code> interface class.
 */
- (OrgApacheLuceneUtilAttributeImpl *)createAttributeInstanceWithIOSClass:(IOSClass *)attClass;

/*!
 @brief Returns an AttributeFactory returning an instance of the given <code>clazz</code> for the
 attributes it implements.
 The given <code>clazz</code> must have a public no-arg constructor.
 For all other attributes it calls the given delegate factory as fallback.
 This method can be used to prefer a specific <code>AttributeImpl</code> which combines
 multiple attributes over separate classes.
 <p>Please save instances created by this method in a static final field, because
 on each call, this does reflection for creating a <code>MethodHandle</code>.
 */
+ (OrgApacheLuceneUtilAttributeFactory *)getStaticImplementationWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)delegate
                                                                                           withIOSClass:(IOSClass *)clazz;

#pragma mark Package-Private

/*!
 @brief Returns a correctly typed <code>MethodHandle</code> for the no-arg ctor of the given class.
 */
+ (OrgLukhnosPortmobileInvokeMethodHandle *)findAttributeImplCtorWithIOSClass:(IOSClass *)clazz;

+ (void)rethrowWithNSException:(NSException *)t;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilAttributeFactory)

/*!
 @brief This is the default factory that creates <code>AttributeImpl</code>s using the
 class name of the supplied <code>Attribute</code> interface class by appending <code>Impl</code> to it.
 */
inline OrgApacheLuceneUtilAttributeFactory *OrgApacheLuceneUtilAttributeFactory_get_DEFAULT_ATTRIBUTE_FACTORY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilAttributeFactory *OrgApacheLuceneUtilAttributeFactory_DEFAULT_ATTRIBUTE_FACTORY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAttributeFactory, DEFAULT_ATTRIBUTE_FACTORY, OrgApacheLuceneUtilAttributeFactory *)

FOUNDATION_EXPORT OrgLukhnosPortmobileInvokeMethodHandle *OrgApacheLuceneUtilAttributeFactory_findAttributeImplCtorWithIOSClass_(IOSClass *clazz);

FOUNDATION_EXPORT OrgApacheLuceneUtilAttributeFactory *OrgApacheLuceneUtilAttributeFactory_getStaticImplementationWithOrgApacheLuceneUtilAttributeFactory_withIOSClass_(OrgApacheLuceneUtilAttributeFactory *delegate, IOSClass *clazz);

FOUNDATION_EXPORT void OrgApacheLuceneUtilAttributeFactory_rethrowWithNSException_(NSException *t);

FOUNDATION_EXPORT void OrgApacheLuceneUtilAttributeFactory_init(OrgApacheLuceneUtilAttributeFactory *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAttributeFactory)

#endif

#if !defined (OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory_) && (INCLUDE_ALL_OrgApacheLuceneUtilAttributeFactory || defined(INCLUDE_OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory))
#define OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory_

@class IOSClass;
@class OrgApacheLuceneUtilAttributeFactory;
@class OrgApacheLuceneUtilAttributeImpl;

/*!
 @brief <b>Expert</b>: AttributeFactory returning an instance of the given <code>clazz</code> for the
 attributes it implements.
 For all other attributes it calls the given delegate factory
 as fallback. This class can be used to prefer a specific <code>AttributeImpl</code> which
 combines multiple attributes over separate classes.
 */
@interface OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory : OrgApacheLuceneUtilAttributeFactory

#pragma mark Public

/*!
 @brief <b>Expert</b>: Creates an AttributeFactory returning <code>clazz</code> as instance for the
 attributes it implements and for all other attributes calls the given delegate factory.
 */
- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)delegate
                                               withIOSClass:(IOSClass *)clazz;

- (OrgApacheLuceneUtilAttributeImpl *)createAttributeInstanceWithIOSClass:(IOSClass *)attClass;

- (jboolean)isEqual:(id)other;

- (NSUInteger)hash;

#pragma mark Protected

/*!
 @brief Creates an instance of <code>A</code>.
 */
- (id)createInstance;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory)

FOUNDATION_EXPORT void OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory_initWithOrgApacheLuceneUtilAttributeFactory_withIOSClass_(OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory *self, OrgApacheLuceneUtilAttributeFactory *delegate, IOSClass *clazz);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilAttributeFactory")
