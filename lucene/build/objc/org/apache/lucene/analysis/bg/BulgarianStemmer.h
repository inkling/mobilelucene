//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/bg/BulgarianStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisBgBulgarianStemmer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisBgBulgarianStemmer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisBgBulgarianStemmer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisBgBulgarianStemmer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisBgBulgarianStemmer

#if !defined (OrgApacheLuceneAnalysisBgBulgarianStemmer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisBgBulgarianStemmer || defined(INCLUDE_OrgApacheLuceneAnalysisBgBulgarianStemmer))
#define OrgApacheLuceneAnalysisBgBulgarianStemmer_

@class IOSCharArray;

/*!
 @brief Light Stemmer for Bulgarian.
 <p>
 Implements the algorithm described in:  
 <i>
 Searching Strategies for the Bulgarian Language
 </i>
 http://members.unine.ch/jacques.savoy/Papers/BUIR.pdf
 */
@interface OrgApacheLuceneAnalysisBgBulgarianStemmer : NSObject

#pragma mark Public

- (instancetype)init;

/*!
 @brief Stem an input buffer of Bulgarian text.
 @param s input buffer
 @param len length of input buffer
 @return length of input buffer after normalization
 */
- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisBgBulgarianStemmer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisBgBulgarianStemmer_init(OrgApacheLuceneAnalysisBgBulgarianStemmer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisBgBulgarianStemmer *new_OrgApacheLuceneAnalysisBgBulgarianStemmer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisBgBulgarianStemmer *create_OrgApacheLuceneAnalysisBgBulgarianStemmer_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisBgBulgarianStemmer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisBgBulgarianStemmer")
