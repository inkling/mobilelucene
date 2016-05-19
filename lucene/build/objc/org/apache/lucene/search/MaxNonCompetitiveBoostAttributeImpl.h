//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/MaxNonCompetitiveBoostAttributeImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl")
#ifdef RESTRICT_OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl
#define INCLUDE_ALL_OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl

#if !defined (OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl_) && (INCLUDE_ALL_OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl || defined(INCLUDE_OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl))
#define OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl_

#define RESTRICT_OrgApacheLuceneUtilAttributeImpl 1
#define INCLUDE_OrgApacheLuceneUtilAttributeImpl 1
#include "org/apache/lucene/util/AttributeImpl.h"

#define RESTRICT_OrgApacheLuceneSearchMaxNonCompetitiveBoostAttribute 1
#define INCLUDE_OrgApacheLuceneSearchMaxNonCompetitiveBoostAttribute 1
#include "org/apache/lucene/search/MaxNonCompetitiveBoostAttribute.h"

@class OrgApacheLuceneUtilBytesRef;
@protocol OrgApacheLuceneUtilAttributeReflector;

/*!
 @brief Implementation class for <code>MaxNonCompetitiveBoostAttribute</code>.
 */
@interface OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl : OrgApacheLuceneUtilAttributeImpl < OrgApacheLuceneSearchMaxNonCompetitiveBoostAttribute >

#pragma mark Public

- (instancetype)init;

- (void)clear;

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneUtilBytesRef *)getCompetitiveTerm;

- (jfloat)getMaxNonCompetitiveBoost;

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id<OrgApacheLuceneUtilAttributeReflector>)reflector;

- (void)setCompetitiveTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)competitiveTerm;

- (void)setMaxNonCompetitiveBoostWithFloat:(jfloat)maxNonCompetitiveBoost;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl)

FOUNDATION_EXPORT void OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl_init(OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl *new_OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl *create_OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchMaxNonCompetitiveBoostAttributeImpl")
