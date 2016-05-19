//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/query/QueryAutoStopWordAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer

#if !defined (OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer || defined(INCLUDE_OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer))
#define OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer_

#define RESTRICT_OrgApacheLuceneAnalysisAnalyzerWrapper 1
#define INCLUDE_OrgApacheLuceneAnalysisAnalyzerWrapper 1
#include "org/apache/lucene/analysis/AnalyzerWrapper.h"

@class IOSObjectArray;
@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;
@class OrgApacheLuceneIndexIndexReader;
@protocol JavaUtilCollection;

/*!
 @brief An <code>Analyzer</code> used primarily at query time to wrap another analyzer and provide a layer of protection
 which prevents very common words from being passed into queries.
 <p>
 For very large indexes the cost
 of reading TermDocs for a very common word can be  high. This analyzer was created after experience with
 a 38 million doc index which had a term in around 50% of docs and was causing TermQueries for 
 this term to take 2 seconds.
 </p>
 */
@interface OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer : OrgApacheLuceneAnalysisAnalyzerWrapper

+ (jfloat)defaultMaxDocFreqPercent;

#pragma mark Public

/*!
 @brief Creates a new QueryAutoStopWordAnalyzer with stopwords calculated for all
 indexed fields from terms with a document frequency percentage greater than
 <code>defaultMaxDocFreqPercent</code>
 @param delegate Analyzer whose TokenStream will be filtered
 @param indexReader IndexReader to identify the stopwords from
 @throws IOException Can be thrown while reading from the IndexReader
 */
- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)delegate
                    withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)indexReader;

/*!
 @brief Creates a new QueryAutoStopWordAnalyzer with stopwords calculated for the
 given selection of fields from terms with a document frequency percentage
 greater than the given maxPercentDocs
 @param delegate Analyzer whose TokenStream will be filtered
 @param indexReader IndexReader to identify the stopwords from
 @param fields Selection of fields to calculate stopwords for
 @param maxPercentDocs The maximum percentage (between 0.0 and 1.0) of index documents which
 contain a term, after which the word is considered to be a stop word
 @throws IOException Can be thrown while reading from the IndexReader
 */
- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)delegate
                    withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)indexReader
                                 withJavaUtilCollection:(id<JavaUtilCollection>)fields
                                              withFloat:(jfloat)maxPercentDocs;

/*!
 @brief Creates a new QueryAutoStopWordAnalyzer with stopwords calculated for the
 given selection of fields from terms with a document frequency greater than
 the given maxDocFreq
 @param delegate Analyzer whose TokenStream will be filtered
 @param indexReader IndexReader to identify the stopwords from
 @param fields Selection of fields to calculate stopwords for
 @param maxDocFreq Document frequency terms should be above in order to be stopwords
 @throws IOException Can be thrown while reading from the IndexReader
 */
- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)delegate
                    withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)indexReader
                                 withJavaUtilCollection:(id<JavaUtilCollection>)fields
                                                withInt:(jint)maxDocFreq;

/*!
 @brief Creates a new QueryAutoStopWordAnalyzer with stopwords calculated for all
 indexed fields from terms with a document frequency percentage greater than
 the given maxPercentDocs
 @param delegate Analyzer whose TokenStream will be filtered
 @param indexReader IndexReader to identify the stopwords from
 @param maxPercentDocs The maximum percentage (between 0.0 and 1.0) of index documents which
 contain a term, after which the word is considered to be a stop word
 @throws IOException Can be thrown while reading from the IndexReader
 */
- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)delegate
                    withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)indexReader
                                              withFloat:(jfloat)maxPercentDocs;

/*!
 @brief Creates a new QueryAutoStopWordAnalyzer with stopwords calculated for all
 indexed fields from terms with a document frequency greater than the given
 maxDocFreq
 @param delegate Analyzer whose TokenStream will be filtered
 @param indexReader IndexReader to identify the stopwords from
 @param maxDocFreq Document frequency terms should be above in order to be stopwords
 @throws IOException Can be thrown while reading from the IndexReader
 */
- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)delegate
                    withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)indexReader
                                                withInt:(jint)maxDocFreq;

/*!
 @brief Provides information on which stop words have been identified for all fields
 @return the stop words (as terms)
 */
- (IOSObjectArray *)getStopWords;

/*!
 @brief Provides information on which stop words have been identified for a field
 @param fieldName The field for which stop words identified in "addStopWords"
 method calls will be returned
 @return the stop words identified for a field
 */
- (IOSObjectArray *)getStopWordsWithNSString:(NSString *)fieldName;

#pragma mark Protected

- (OrgApacheLuceneAnalysisAnalyzer *)getWrappedAnalyzerWithNSString:(NSString *)fieldName;

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)wrapComponentsWithNSString:(NSString *)fieldName
                            withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:(OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)components;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer)

inline jfloat OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer_get_defaultMaxDocFreqPercent();
#define OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer_defaultMaxDocFreqPercent 0.4f
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer, defaultMaxDocFreqPercent, jfloat)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer *self, OrgApacheLuceneAnalysisAnalyzer *delegate, OrgApacheLuceneIndexIndexReader *indexReader);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer *new_OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneAnalysisAnalyzer *delegate, OrgApacheLuceneIndexIndexReader *indexReader) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer *create_OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneAnalysisAnalyzer *delegate, OrgApacheLuceneIndexIndexReader *indexReader);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexReader_withInt_(OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer *self, OrgApacheLuceneAnalysisAnalyzer *delegate, OrgApacheLuceneIndexIndexReader *indexReader, jint maxDocFreq);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer *new_OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexReader_withInt_(OrgApacheLuceneAnalysisAnalyzer *delegate, OrgApacheLuceneIndexIndexReader *indexReader, jint maxDocFreq) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer *create_OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexReader_withInt_(OrgApacheLuceneAnalysisAnalyzer *delegate, OrgApacheLuceneIndexIndexReader *indexReader, jint maxDocFreq);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexReader_withFloat_(OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer *self, OrgApacheLuceneAnalysisAnalyzer *delegate, OrgApacheLuceneIndexIndexReader *indexReader, jfloat maxPercentDocs);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer *new_OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexReader_withFloat_(OrgApacheLuceneAnalysisAnalyzer *delegate, OrgApacheLuceneIndexIndexReader *indexReader, jfloat maxPercentDocs) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer *create_OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexReader_withFloat_(OrgApacheLuceneAnalysisAnalyzer *delegate, OrgApacheLuceneIndexIndexReader *indexReader, jfloat maxPercentDocs);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexReader_withJavaUtilCollection_withFloat_(OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer *self, OrgApacheLuceneAnalysisAnalyzer *delegate, OrgApacheLuceneIndexIndexReader *indexReader, id<JavaUtilCollection> fields, jfloat maxPercentDocs);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer *new_OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexReader_withJavaUtilCollection_withFloat_(OrgApacheLuceneAnalysisAnalyzer *delegate, OrgApacheLuceneIndexIndexReader *indexReader, id<JavaUtilCollection> fields, jfloat maxPercentDocs) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer *create_OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexReader_withJavaUtilCollection_withFloat_(OrgApacheLuceneAnalysisAnalyzer *delegate, OrgApacheLuceneIndexIndexReader *indexReader, id<JavaUtilCollection> fields, jfloat maxPercentDocs);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexReader_withJavaUtilCollection_withInt_(OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer *self, OrgApacheLuceneAnalysisAnalyzer *delegate, OrgApacheLuceneIndexIndexReader *indexReader, id<JavaUtilCollection> fields, jint maxDocFreq);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer *new_OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexReader_withJavaUtilCollection_withInt_(OrgApacheLuceneAnalysisAnalyzer *delegate, OrgApacheLuceneIndexIndexReader *indexReader, id<JavaUtilCollection> fields, jint maxDocFreq) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer *create_OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexReader_withJavaUtilCollection_withInt_(OrgApacheLuceneAnalysisAnalyzer *delegate, OrgApacheLuceneIndexIndexReader *indexReader, id<JavaUtilCollection> fields, jint maxDocFreq);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisQueryQueryAutoStopWordAnalyzer")
