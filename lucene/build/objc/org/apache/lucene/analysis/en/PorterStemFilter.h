//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/en/PorterStemFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisEnPorterStemFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisEnPorterStemFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisEnPorterStemFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisEnPorterStemFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisEnPorterStemFilter

#if !defined (OrgApacheLuceneAnalysisEnPorterStemFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisEnPorterStemFilter || defined(INCLUDE_OrgApacheLuceneAnalysisEnPorterStemFilter))
#define OrgApacheLuceneAnalysisEnPorterStemFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief Transforms the token stream as per the Porter stemming algorithm.
 Note: the input to the stemming filter must already be in lower case,
 so you will need to use LowerCaseFilter or LowerCaseTokenizer farther
 down the Tokenizer chain in order for this to work properly!
 <P>
 To use this filter with other analyzers, you'll want to write an
 Analyzer class that sets up the TokenStream chain as you want it.
 To use this with LowerCaseTokenizer, for example, you'd write an
 analyzer like this:
 <br>
 <PRE class="prettyprint">
 class MyAnalyzer extends Analyzer {
 &commat;&commat;Override
 protected TokenStreamComponents createComponents(String fieldName) {
 Tokenizer source = new LowerCaseTokenizer(version, reader);
 return new TokenStreamComponents(source, new PorterStemFilter(source));
 }
 }
 
@endcode
 <p>
 Note: This filter is aware of the <code>KeywordAttribute</code>. To prevent
 certain terms from being passed to the stemmer
 <code>KeywordAttribute.isKeyword()</code> should be set to <code>true</code>
 in a previous <code>TokenStream</code>.
 Note: For including the original term as well as the stemmed version, see
 <code>org.apache.lucene.analysis.miscellaneous.KeywordRepeatFilterFactory</code>
 </p>
 */
@interface OrgApacheLuceneAnalysisEnPorterStemFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisEnPorterStemFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisEnPorterStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisEnPorterStemFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisEnPorterStemFilter *new_OrgApacheLuceneAnalysisEnPorterStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisEnPorterStemFilter *create_OrgApacheLuceneAnalysisEnPorterStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisEnPorterStemFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisEnPorterStemFilter")
