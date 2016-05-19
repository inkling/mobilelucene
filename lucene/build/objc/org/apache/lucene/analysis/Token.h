//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/Token.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisToken")
#ifdef RESTRICT_OrgApacheLuceneAnalysisToken
#define INCLUDE_ALL_OrgApacheLuceneAnalysisToken 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisToken 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisToken

#if !defined (OrgApacheLuceneAnalysisToken_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisToken || defined(INCLUDE_OrgApacheLuceneAnalysisToken))
#define OrgApacheLuceneAnalysisToken_

#define RESTRICT_OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl 1
#include "org/apache/lucene/analysis/tokenattributes/PackedTokenAttributeImpl.h"

#define RESTRICT_OrgApacheLuceneAnalysisTokenattributesFlagsAttribute 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenattributesFlagsAttribute 1
#include "org/apache/lucene/analysis/tokenattributes/FlagsAttribute.h"

#define RESTRICT_OrgApacheLuceneAnalysisTokenattributesPayloadAttribute 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenattributesPayloadAttribute 1
#include "org/apache/lucene/analysis/tokenattributes/PayloadAttribute.h"

@class IOSObjectArray;
@class OrgApacheLuceneUtilAttributeFactory;
@class OrgApacheLuceneUtilAttributeImpl;
@class OrgApacheLuceneUtilBytesRef;
@protocol JavaLangCharSequence;
@protocol OrgApacheLuceneUtilAttributeReflector;

/*!
 @brief A Token is an occurrence of a term from the text of a field.
 It consists of
 a term's text, the start and end offset of the term in the text of the field,
 and a type string.
 <p>
 The start and end offsets permit applications to re-associate a token with
 its source text, e.g., to display highlighted query terms in a document
 browser, or to show matching text fragments in a <a href="http://en.wikipedia.org/wiki/Key_Word_in_Context">KWIC</a>
 display, etc.
 <p>
 The type is a string, assigned by a lexical analyzer
 (a.k.a. tokenizer), naming the lexical or syntactic class that the token
 belongs to.  For example an end of sentence marker token might be implemented
 with type "eos".  The default token type is "word".  
 <p>
 A Token can optionally have metadata (a.k.a. payload) in the form of a variable
 length byte array. Use <code>org.apache.lucene.index.PostingsEnum.getPayload()</code> to retrieve the
 payloads from the index.
 <br><br>
 <p><b>NOTE:</b> As of 2.9, Token implements all <code>Attribute</code> interfaces
 that are part of core Lucene and can be found in the <code>tokenattributes</code> subpackage.
 Even though it is not necessary to use Token anymore, with the new TokenStream API it can
 be used as convenience class that implements all <code>Attribute</code>s, which is especially useful
 to easily switch from the old to the new TokenStream API.
 A few things to note:
 <ul>
 <li>clear() initializes all of the fields to default values. This was changed in contrast to Lucene 2.4, but should affect no one.</li>
 <li>Because <code>TokenStreams</code> can be chained, one cannot assume that the <code>Token's</code> current type is correct.</li>
 <li>The startOffset and endOffset represent the start and offset in the source text, so be careful in adjusting them.</li>
 <li>When caching a reusable token, clone it. When injecting a cached token into a stream that can be reset, clone it again.</li>
 </ul>
 <p>
 <b>Please note:</b> With Lucene 3.1, the <code>toString()</code> method had to be changed to match the
 <code>CharSequence</code> interface introduced by the interface <code>org.apache.lucene.analysis.tokenattributes.CharTermAttribute</code>.
 This method now only prints the term text, no additional information anymore.
 */
@interface OrgApacheLuceneAnalysisToken : OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl < OrgApacheLuceneAnalysisTokenattributesFlagsAttribute, OrgApacheLuceneAnalysisTokenattributesPayloadAttribute >

+ (OrgApacheLuceneUtilAttributeFactory *)TOKEN_ATTRIBUTE_FACTORY;

#pragma mark Public

/*!
 @brief Constructs a Token will null text.
 */
- (instancetype)init;

/*!
 @brief Constructs a Token with the given term text, start
 and end offsets.
 The type defaults to "word."
 <b>NOTE:</b> for better indexing speed you should
 instead use the char[] termBuffer methods to set the
 term text.
 @param text term text
 @param start start offset in the source text
 @param end end offset in the source text
 */
- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                     withInt:(jint)start
                                     withInt:(jint)end;

/*!
 @brief Resets the term text, payload, flags, positionIncrement, positionLength,
 startOffset, endOffset and token type to default.
 */
- (void)clear;

- (OrgApacheLuceneAnalysisToken *)clone;

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target OBJC_METHOD_FAMILY_NONE;

- (jboolean)isEqual:(id)obj;

/*!
 
 - seealso: FlagsAttribute
 */
- (jint)getFlags;

/*!
 
 - seealso: PayloadAttribute
 */
- (OrgApacheLuceneUtilBytesRef *)getPayload;

- (NSUInteger)hash;

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id<OrgApacheLuceneUtilAttributeReflector>)reflector;

/*!
 @brief Copy the prototype token's fields into this one.
 Note: Payloads are shared.
 @param prototype source Token to copy fields from
 */
- (void)reinitWithOrgApacheLuceneAnalysisToken:(OrgApacheLuceneAnalysisToken *)prototype;

/*!
 
 - seealso: FlagsAttribute
 */
- (void)setFlagsWithInt:(jint)flags;

/*!
 
 - seealso: PayloadAttribute
 */
- (void)setPayloadWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)payload;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisToken)

/*!
 @brief Convenience factory that returns <code>Token</code> as implementation for the basic
 attributes and return the default impl (with &quot;Impl&quot; appended) for all other
 attributes.
 @since 3.0
 */
inline OrgApacheLuceneUtilAttributeFactory *OrgApacheLuceneAnalysisToken_get_TOKEN_ATTRIBUTE_FACTORY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilAttributeFactory *OrgApacheLuceneAnalysisToken_TOKEN_ATTRIBUTE_FACTORY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisToken, TOKEN_ATTRIBUTE_FACTORY, OrgApacheLuceneUtilAttributeFactory *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisToken_init(OrgApacheLuceneAnalysisToken *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisToken *new_OrgApacheLuceneAnalysisToken_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisToken *create_OrgApacheLuceneAnalysisToken_init();

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisToken_initWithJavaLangCharSequence_withInt_withInt_(OrgApacheLuceneAnalysisToken *self, id<JavaLangCharSequence> text, jint start, jint end);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisToken *new_OrgApacheLuceneAnalysisToken_initWithJavaLangCharSequence_withInt_withInt_(id<JavaLangCharSequence> text, jint start, jint end) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisToken *create_OrgApacheLuceneAnalysisToken_initWithJavaLangCharSequence_withInt_withInt_(id<JavaLangCharSequence> text, jint start, jint end);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisToken)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisToken")
