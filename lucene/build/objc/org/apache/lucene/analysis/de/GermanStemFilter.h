//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/de/GermanStemFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisDeGermanStemFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisDeGermanStemFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisDeGermanStemFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisDeGermanStemFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisDeGermanStemFilter

#if !defined (OrgApacheLuceneAnalysisDeGermanStemFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisDeGermanStemFilter || defined(INCLUDE_OrgApacheLuceneAnalysisDeGermanStemFilter))
#define OrgApacheLuceneAnalysisDeGermanStemFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisDeGermanStemmer;
@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief A <code>TokenFilter</code> that stems German words.
 <p>
 It supports a table of words that should
 not be stemmed at all. The stemmer used can be changed at runtime after the
 filter object is created (as long as it is a <code>GermanStemmer</code>).
 </p>
 <p>
 To prevent terms from being stemmed use an instance of
 <code>SetKeywordMarkerFilter</code> or a custom <code>TokenFilter</code> that sets
 the <code>KeywordAttribute</code> before this <code>TokenStream</code>.
 </p>
 - seealso: SetKeywordMarkerFilter
 */
@interface OrgApacheLuceneAnalysisDeGermanStemFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

/*!
 @brief Creates a <code>GermanStemFilter</code> instance
 @param inArg the source <code>TokenStream</code>
 */
- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg;

/*!
 @return Returns true for next token in the stream, or false at EOS
 */
- (jboolean)incrementToken;

/*!
 @brief Set a alternative/custom <code>GermanStemmer</code> for this filter.
 */
- (void)setStemmerWithOrgApacheLuceneAnalysisDeGermanStemmer:(OrgApacheLuceneAnalysisDeGermanStemmer *)stemmer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisDeGermanStemFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisDeGermanStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisDeGermanStemFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisDeGermanStemFilter *new_OrgApacheLuceneAnalysisDeGermanStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisDeGermanStemFilter *create_OrgApacheLuceneAnalysisDeGermanStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisDeGermanStemFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisDeGermanStemFilter")
