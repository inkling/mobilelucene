//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/commongrams/CommonGramsQueryFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilterFactory

#if !defined (OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilterFactory))
#define OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory 1
#include "org/apache/lucene/analysis/commongrams/CommonGramsFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

/*!
 @brief Construct <code>CommonGramsQueryFilter</code>.
 <pre class="prettyprint">
 &lt;fieldType name="text_cmmngrmsqry" class="solr.TextField" positionIncrementGap="100"&gt;
 &lt;analyzer&gt;
 &lt;tokenizer class="solr.WhitespaceTokenizerFactory"/&gt;
 &lt;filter class="solr.CommonGramsQueryFilterFactory" words="commongramsquerystopwords.txt" ignoreCase="false"/&gt;
 &lt;/analyzer&gt;
 
@endcode
 */
@interface OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilterFactory : OrgApacheLuceneAnalysisCommongramsCommonGramsFilterFactory

#pragma mark Public

/*!
 @brief Creates a new CommonGramsQueryFilterFactory
 */
- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

/*!
 @brief Create a CommonGramsFilter and wrap it with a CommonGramsQueryFilter
 */
- (OrgApacheLuceneAnalysisTokenFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilterFactory *new_OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilterFactory *create_OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilterFactory)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilterFactory")
