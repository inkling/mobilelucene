//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/cjk/CJKWidthFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCjkCJKWidthFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCjkCJKWidthFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCjkCJKWidthFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCjkCJKWidthFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCjkCJKWidthFilter

#if !defined (OrgApacheLuceneAnalysisCjkCJKWidthFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCjkCJKWidthFilter || defined(INCLUDE_OrgApacheLuceneAnalysisCjkCJKWidthFilter))
#define OrgApacheLuceneAnalysisCjkCJKWidthFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief A <code>TokenFilter</code> that normalizes CJK width differences:
 <ul>
 <li>Folds fullwidth ASCII variants into the equivalent basic latin
 <li>Folds halfwidth Katakana variants into the equivalent kana
 </ul>
 <p>
 NOTE: this filter can be viewed as a (practical) subset of NFKC/NFKD
 Unicode normalization.
 See the normalization support in the ICU package
 for full normalization.
 */
@interface OrgApacheLuceneAnalysisCjkCJKWidthFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisCjkCJKWidthFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCjkCJKWidthFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisCjkCJKWidthFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCjkCJKWidthFilter *new_OrgApacheLuceneAnalysisCjkCJKWidthFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCjkCJKWidthFilter *create_OrgApacheLuceneAnalysisCjkCJKWidthFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCjkCJKWidthFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCjkCJKWidthFilter")
