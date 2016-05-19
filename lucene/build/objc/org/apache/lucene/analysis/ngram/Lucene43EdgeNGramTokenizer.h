//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ngram/Lucene43EdgeNGramTokenizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer

#if !defined (OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer || defined(INCLUDE_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer))
#define OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_

#define RESTRICT_OrgApacheLuceneAnalysisTokenizer 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenizer 1
#include "org/apache/lucene/analysis/Tokenizer.h"

@class IOSObjectArray;
@class OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side;
@class OrgApacheLuceneUtilAttributeFactory;

/*!
 @brief Old version of <code>EdgeNGramTokenizer</code> which doesn't handle correctly
 supplementary characters.
 */
@interface OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer : OrgApacheLuceneAnalysisTokenizer

+ (OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *)DEFAULT_SIDE;

+ (jint)DEFAULT_MAX_GRAM_SIZE;

+ (jint)DEFAULT_MIN_GRAM_SIZE;

#pragma mark Public

/*!
 @brief Creates EdgeNGramTokenizer that can generate n-grams in the sizes of the given range
 @param factory <code>org.apache.lucene.util.AttributeFactory</code> to use
 @param minGram the smallest n-gram to generate
 @param maxGram the largest n-gram to generate
 */
- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory
                                                    withInt:(jint)minGram
                                                    withInt:(jint)maxGram;

/*!
 @brief Creates EdgeNGramTokenizer that can generate n-grams in the sizes of the given range
 @param factory <code>org.apache.lucene.util.AttributeFactory</code> to use
 @param side the <code>Side</code> from which to chop off an n-gram
 @param minGram the smallest n-gram to generate
 @param maxGram the largest n-gram to generate
 */
- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory
withOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side:(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *)side
                                                    withInt:(jint)minGram
                                                    withInt:(jint)maxGram;

/*!
 @brief Creates EdgeNGramTokenizer that can generate n-grams in the sizes of the given range
 @param factory <code>org.apache.lucene.util.AttributeFactory</code> to use
 @param sideLabel the <code>Side</code> from which to chop off an n-gram
 @param minGram the smallest n-gram to generate
 @param maxGram the largest n-gram to generate
 */
- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory
                                               withNSString:(NSString *)sideLabel
                                                    withInt:(jint)minGram
                                                    withInt:(jint)maxGram;

/*!
 @brief Creates EdgeNGramTokenizer that can generate n-grams in the sizes of the given range
 @param minGram the smallest n-gram to generate
 @param maxGram the largest n-gram to generate
 */
- (instancetype)initWithInt:(jint)minGram
                    withInt:(jint)maxGram;

/*!
 @brief Creates EdgeNGramTokenizer that can generate n-grams in the sizes of the given range
 @param side the <code>Side</code> from which to chop off an n-gram
 @param minGram the smallest n-gram to generate
 @param maxGram the largest n-gram to generate
 */
- (instancetype)initWithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side:(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *)side
                                                                            withInt:(jint)minGram
                                                                            withInt:(jint)maxGram;

/*!
 @brief Creates EdgeNGramTokenizer that can generate n-grams in the sizes of the given range
 @param sideLabel the name of the <code>Side</code> from which to chop off an n-gram
 @param minGram the smallest n-gram to generate
 @param maxGram the largest n-gram to generate
 */
- (instancetype)initWithNSString:(NSString *)sideLabel
                         withInt:(jint)minGram
                         withInt:(jint)maxGram;

- (void)end;

/*!
 @brief Returns the next token in the stream, or null at EOS.
 */
- (jboolean)incrementToken;

- (void)reset;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer)

inline OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_get_DEFAULT_SIDE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_DEFAULT_SIDE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, DEFAULT_SIDE, OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *)

inline jint OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_get_DEFAULT_MAX_GRAM_SIZE();
#define OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_DEFAULT_MAX_GRAM_SIZE 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, DEFAULT_MAX_GRAM_SIZE, jint)

inline jint OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_get_DEFAULT_MIN_GRAM_SIZE();
#define OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_DEFAULT_MIN_GRAM_SIZE 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer, DEFAULT_MIN_GRAM_SIZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *self, OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *side, jint minGram, jint maxGram);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *side, jint minGram, jint maxGram) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *create_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *side, jint minGram, jint maxGram);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory, OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *side, jint minGram, jint maxGram);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *side, jint minGram, jint maxGram) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *create_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withOrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *side, jint minGram, jint maxGram);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withNSString_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory, NSString *sideLabel, jint minGram, jint maxGram);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withNSString_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, NSString *sideLabel, jint minGram, jint maxGram) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *create_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withNSString_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, NSString *sideLabel, jint minGram, jint maxGram);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *self, jint minGram, jint maxGram);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithInt_withInt_(jint minGram, jint maxGram) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *create_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithInt_withInt_(jint minGram, jint maxGram);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithNSString_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *self, NSString *sideLabel, jint minGram, jint maxGram);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithNSString_withInt_withInt_(NSString *sideLabel, jint minGram, jint maxGram) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *create_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithNSString_withInt_withInt_(NSString *sideLabel, jint minGram, jint maxGram);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer *create_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer)

#endif

#if !defined (OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer || defined(INCLUDE_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side))
#define OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_Enum) {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_Enum_FRONT = 0,
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_Enum_BACK = 1,
};

/*!
 @brief Specifies which side of the input the n-gram should be generated from
 */
@interface OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side : JavaLangEnum < NSCopying >

+ (OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *)FRONT;

+ (OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *)BACK;

#pragma mark Public

- (NSString *)getLabel;

+ (OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *)getSideWithNSString:(NSString *)sideName;

#pragma mark Package-Private

+ (IOSObjectArray *)values;

+ (OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *)valueOfWithNSString:(NSString *)name;

- (id)copyWithZone:(NSZone *)zone;
- (OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_values_[];

/*!
 @brief Get the n-gram from the front of the input
 */
inline OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_get_FRONT();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side, FRONT)

/*!
 @brief Get the n-gram from the end of the input
 */
inline OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_get_BACK();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side, BACK)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_getSideWithNSString_(NSString *sideName);

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_values();

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side *OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer_Side)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenizer")
