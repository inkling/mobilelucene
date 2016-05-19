//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/BoostAttribute.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchBoostAttribute")
#ifdef RESTRICT_OrgApacheLuceneSearchBoostAttribute
#define INCLUDE_ALL_OrgApacheLuceneSearchBoostAttribute 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchBoostAttribute 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchBoostAttribute

#if !defined (OrgApacheLuceneSearchBoostAttribute_) && (INCLUDE_ALL_OrgApacheLuceneSearchBoostAttribute || defined(INCLUDE_OrgApacheLuceneSearchBoostAttribute))
#define OrgApacheLuceneSearchBoostAttribute_

#define RESTRICT_OrgApacheLuceneUtilAttribute 1
#define INCLUDE_OrgApacheLuceneUtilAttribute 1
#include "org/apache/lucene/util/Attribute.h"

/*!
 @brief Add this <code>Attribute</code> to a <code>TermsEnum</code> returned by <code>MultiTermQuery.getTermsEnum(Terms,AttributeSource)</code>
 and update the boost on each returned term.
 This enables to control the boost factor
 for each matching term in <code>MultiTermQuery.SCORING_BOOLEAN_REWRITE</code> or
 <code>TopTermsRewrite</code> mode.
 <code>FuzzyQuery</code> is using this to take the edit distance into account.
 <p><b>Please note:</b> This attribute is intended to be added only by the TermsEnum
 to itself in its constructor and consumed by the <code>MultiTermQuery.RewriteMethod</code>.
 */
@protocol OrgApacheLuceneSearchBoostAttribute < OrgApacheLuceneUtilAttribute, NSObject, JavaObject >

/*!
 @brief Sets the boost in this attribute
 */
- (void)setBoostWithFloat:(jfloat)boost;

/*!
 @brief Retrieves the boost, default is <code>1.0f</code>.
 */
- (jfloat)getBoost;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBoostAttribute)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBoostAttribute)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchBoostAttribute")
