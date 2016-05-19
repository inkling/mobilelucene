//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/FuzzyCompletionQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery

#if !defined (OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery || defined(INCLUDE_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery))
#define OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_

#define RESTRICT_OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery 1
#define INCLUDE_OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery 1
#include "org/apache/lucene/search/suggest/document/PrefixCompletionQuery.h"

@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchSuggestBitsProducer;
@class OrgApacheLuceneSearchWeight;

/*!
 @brief A <code>CompletionQuery</code> that match documents containing terms
 within an edit distance of the specified prefix.
 <p>
 This query boost documents relative to how similar the indexed terms are to the
 provided prefix.
 <p>
 Example usage of querying an analyzed prefix within an edit distance of 1 of 'subg'
 against a field 'suggest_field' is as follows:
 <pre class="prettyprint">
 CompletionQuery query = new FuzzyCompletionQuery(analyzer, new Term("suggest_field", "subg"));
 
@endcode
 */
@interface OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery : OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery

+ (jboolean)DEFAULT_UNICODE_AWARE;

+ (jint)DEFAULT_MIN_FUZZY_LENGTH;

+ (jint)DEFAULT_NON_FUZZY_PREFIX;

+ (jint)DEFAULT_MAX_EDITS;

+ (jboolean)DEFAULT_TRANSPOSITIONS;

#pragma mark Public

/*!
 @brief Calls <code>FuzzyCompletionQuery.FuzzyCompletionQuery(Analyzer,Term,BitsProducer)</code>
 with no filter
 */
- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                           withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

/*!
 @brief Calls <code>FuzzyCompletionQuery.FuzzyCompletionQuery(Analyzer,Term,BitsProducer,int,boolean,int,int,boolean,int)</code>
 with defaults for <code>maxEdits</code>, <code>transpositions</code>,
 <code>nonFuzzyPrefix</code>, <code>minFuzzyLength</code>,
 <code>unicodeAware</code> and <code>maxDeterminizedStates</code>
 See <code>DEFAULT_MAX_EDITS</code>, <code>DEFAULT_TRANSPOSITIONS</code>,
 <code>DEFAULT_NON_FUZZY_PREFIX</code>, <code>DEFAULT_MIN_FUZZY_LENGTH</code>,
 <code>DEFAULT_UNICODE_AWARE</code> and <code>Operations.DEFAULT_MAX_DETERMINIZED_STATES</code>
 for defaults
 */
- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                           withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
           withOrgApacheLuceneSearchSuggestBitsProducer:(OrgApacheLuceneSearchSuggestBitsProducer *)filter;

/*!
 @brief Constructs an analyzed fuzzy prefix completion query
 @param analyzer used to analyze the provided <code>Term.text()</code>
 @param term query is run against <code>Term.field()</code> and <code>Term.text()</code>
 is analyzed with <code>analyzer</code>
 @param filter used to query on a sub set of documents
 @param maxEdits maximum number of acceptable edits
 @param transpositions value passed to <code>LevenshteinAutomata</code>
 @param nonFuzzyPrefix prefix length where edits are not allowed
 @param minFuzzyLength minimum prefix length before any edits are allowed
 @param unicodeAware treat prefix as unicode rather than bytes
 @param maxDeterminizedStates maximum automaton states allowed for <code>LevenshteinAutomata</code>
 */
- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                           withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
           withOrgApacheLuceneSearchSuggestBitsProducer:(OrgApacheLuceneSearchSuggestBitsProducer *)filter
                                                withInt:(jint)maxEdits
                                            withBoolean:(jboolean)transpositions
                                                withInt:(jint)nonFuzzyPrefix
                                                withInt:(jint)minFuzzyLength
                                            withBoolean:(jboolean)unicodeAware
                                                withInt:(jint)maxDeterminizedStates;

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores;

- (NSString *)toStringWithNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery)

/*!
 @brief Measure maxEdits, minFuzzyLength, transpositions and nonFuzzyPrefix
 parameters in Unicode code points (actual letters)
 instead of bytes.
 */
inline jboolean OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_get_DEFAULT_UNICODE_AWARE();
#define OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_DEFAULT_UNICODE_AWARE false
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery, DEFAULT_UNICODE_AWARE, jboolean)

/*!
 @brief The default minimum length of the key before any edits are allowed.
 */
inline jint OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_get_DEFAULT_MIN_FUZZY_LENGTH();
#define OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_DEFAULT_MIN_FUZZY_LENGTH 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery, DEFAULT_MIN_FUZZY_LENGTH, jint)

/*!
 @brief The default prefix length where edits are not allowed.
 */
inline jint OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_get_DEFAULT_NON_FUZZY_PREFIX();
#define OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_DEFAULT_NON_FUZZY_PREFIX 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery, DEFAULT_NON_FUZZY_PREFIX, jint)

/*!
 @brief The default maximum number of edits for fuzzy
 suggestions.
 */
inline jint OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_get_DEFAULT_MAX_EDITS();
#define OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_DEFAULT_MAX_EDITS 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery, DEFAULT_MAX_EDITS, jint)

/*!
 @brief The default transposition value passed to <code>LevenshteinAutomata</code>
 */
inline jboolean OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_get_DEFAULT_TRANSPOSITIONS();
#define OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_DEFAULT_TRANSPOSITIONS true
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery, DEFAULT_TRANSPOSITIONS, jboolean)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery *new_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery *create_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchSuggestBitsProducer *filter);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery *new_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchSuggestBitsProducer *filter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery *create_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchSuggestBitsProducer *filter);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_withInt_withBoolean_withInt_withInt_withBoolean_withInt_(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchSuggestBitsProducer *filter, jint maxEdits, jboolean transpositions, jint nonFuzzyPrefix, jint minFuzzyLength, jboolean unicodeAware, jint maxDeterminizedStates);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery *new_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_withInt_withBoolean_withInt_withInt_withBoolean_withInt_(OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchSuggestBitsProducer *filter, jint maxEdits, jboolean transpositions, jint nonFuzzyPrefix, jint minFuzzyLength, jboolean unicodeAware, jint maxDeterminizedStates) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery *create_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_withInt_withBoolean_withInt_withInt_withBoolean_withInt_(OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchSuggestBitsProducer *filter, jint maxEdits, jboolean transpositions, jint nonFuzzyPrefix, jint minFuzzyLength, jboolean unicodeAware, jint maxDeterminizedStates);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentFuzzyCompletionQuery")
