//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/TermStatistics.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchTermStatistics")
#ifdef RESTRICT_OrgApacheLuceneSearchTermStatistics
#define INCLUDE_ALL_OrgApacheLuceneSearchTermStatistics 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchTermStatistics 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchTermStatistics

#if !defined (OrgApacheLuceneSearchTermStatistics_) && (INCLUDE_ALL_OrgApacheLuceneSearchTermStatistics || defined(INCLUDE_OrgApacheLuceneSearchTermStatistics))
#define OrgApacheLuceneSearchTermStatistics_

@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Contains statistics for a specific term
 */
@interface OrgApacheLuceneSearchTermStatistics : NSObject

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
                                           withLong:(jlong)docFreq
                                           withLong:(jlong)totalTermFreq;

/*!
 @brief returns the number of documents this term occurs in
 - seealso: TermsEnum#docFreq()
 */
- (jlong)docFreq;

/*!
 @brief returns the term text
 */
- (OrgApacheLuceneUtilBytesRef *)term;

/*!
 @brief returns the total number of occurrences of this term
 - seealso: TermsEnum#totalTermFreq()
 */
- (jlong)totalTermFreq;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTermStatistics)

FOUNDATION_EXPORT void OrgApacheLuceneSearchTermStatistics_initWithOrgApacheLuceneUtilBytesRef_withLong_withLong_(OrgApacheLuceneSearchTermStatistics *self, OrgApacheLuceneUtilBytesRef *term, jlong docFreq, jlong totalTermFreq);

FOUNDATION_EXPORT OrgApacheLuceneSearchTermStatistics *new_OrgApacheLuceneSearchTermStatistics_initWithOrgApacheLuceneUtilBytesRef_withLong_withLong_(OrgApacheLuceneUtilBytesRef *term, jlong docFreq, jlong totalTermFreq) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchTermStatistics *create_OrgApacheLuceneSearchTermStatistics_initWithOrgApacheLuceneUtilBytesRef_withLong_withLong_(OrgApacheLuceneUtilBytesRef *term, jlong docFreq, jlong totalTermFreq);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTermStatistics)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchTermStatistics")
