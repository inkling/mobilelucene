//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/TokenStreamFromTermVector.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/Short.h"
#include "java/lang/System.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PackedTokenAttributeImpl.h"
#include "org/apache/lucene/analysis/tokenattributes/PayloadAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/search/highlight/TokenStreamFromTermVector.h"
#include "org/apache/lucene/util/AttributeFactory.h"
#include "org/apache/lucene/util/AttributeSource.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefArray.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"
#include "org/apache/lucene/util/CharsRefBuilder.h"
#include "org/apache/lucene/util/Counter.h"
#include "org/apache/lucene/util/UnicodeUtil.h"

@class OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL;

@interface OrgApacheLuceneSearchHighlightTokenStreamFromTermVector () {
 @public
  OrgApacheLuceneIndexTerms *vector_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAttribute_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> positionIncrementAttribute_;
  jint maxStartOffset_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAttribute_;
  id<OrgApacheLuceneAnalysisTokenattributesPayloadAttribute> payloadAttribute_;
  OrgApacheLuceneUtilCharsRefBuilder *termCharsBuilder_;
  OrgApacheLuceneUtilBytesRefArray *payloadsBytesRefArray_;
  OrgApacheLuceneUtilBytesRefBuilder *spareBytesRefBuilder_;
  OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *firstToken_;
  OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *incrementToken_;
  jboolean initialized_;
}

- (void)init__ OBJC_METHOD_FAMILY_NONE;

- (IOSObjectArray *)initTokensArray OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector, vector_, OrgApacheLuceneIndexTerms *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector, termAttribute_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector, positionIncrementAttribute_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector, offsetAttribute_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector, payloadAttribute_, id<OrgApacheLuceneAnalysisTokenattributesPayloadAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector, termCharsBuilder_, OrgApacheLuceneUtilCharsRefBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector, payloadsBytesRefArray_, OrgApacheLuceneUtilBytesRefArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector, spareBytesRefBuilder_, OrgApacheLuceneUtilBytesRefBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector, firstToken_, OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector, incrementToken_, OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *)

__attribute__((unused)) static void OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_init__(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector *self);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_initTokensArray(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector *self);

@interface OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL : NSObject {
 @public
  jint termCharsOff_;
  jshort termCharsLen_;
  jint positionIncrement_;
  jint startOffset_;
  jshort endOffsetInc_;
  jint payloadIndex_;
  OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *next_;
}

/*!
 @brief Given the head of a linked-list (possibly null) this inserts the token at the correct
 spot to maintain the desired order, and returns the head (which could be this token if it's the smallest).
 O(N^2) complexity but N should be a handful at most.
 */
- (OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *)insertIntoSortedLinkedListWithOrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL:(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *)head;

/*!
 @brief by startOffset then endOffset
 */
- (jint)compareOffsetsWithOrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL:(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *)tokenB;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL, next_, OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *)

__attribute__((unused)) static void OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL_init(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *self);

__attribute__((unused)) static OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *new_OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *create_OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector)

OrgApacheLuceneUtilAttributeFactory *OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_ATTRIBUTE_FACTORY;

@implementation OrgApacheLuceneSearchHighlightTokenStreamFromTermVector

+ (OrgApacheLuceneUtilAttributeFactory *)ATTRIBUTE_FACTORY {
  return OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_ATTRIBUTE_FACTORY;
}

- (instancetype)initWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)vector
                                          withInt:(jint)maxStartOffset {
  OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_initWithOrgApacheLuceneIndexTerms_withInt_(self, vector, maxStartOffset);
  return self;
}

- (OrgApacheLuceneIndexTerms *)getTermVectorTerms {
  return vector_;
}

- (void)reset {
  JreStrongAssign(&incrementToken_, nil);
  [super reset];
}

- (void)init__ {
  OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_init__(self);
}

- (IOSObjectArray *)initTokensArray {
  return OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_initTokensArray(self);
}

- (jboolean)incrementToken {
  if (incrementToken_ == nil) {
    if (!initialized_) {
      OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_init__(self);
      JreAssert((initialized_), (@"org/apache/lucene/search/highlight/TokenStreamFromTermVector.java:263 condition failed: assert initialized;"));
    }
    JreStrongAssign(&incrementToken_, firstToken_);
    if (incrementToken_ == nil) {
      return false;
    }
  }
  else if (incrementToken_->next_ != nil) {
    JreStrongAssign(&incrementToken_, incrementToken_->next_);
  }
  else {
    return false;
  }
  [self clearAttributes];
  [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAttribute_)) copyBufferWithCharArray:[((OrgApacheLuceneUtilCharsRefBuilder *) nil_chk(termCharsBuilder_)) chars] withInt:((OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *) nil_chk(incrementToken_))->termCharsOff_ withInt:incrementToken_->termCharsLen_];
  [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(positionIncrementAttribute_)) setPositionIncrementWithInt:((OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *) nil_chk(incrementToken_))->positionIncrement_];
  if (offsetAttribute_ != nil) {
    [offsetAttribute_ setOffsetWithInt:((OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *) nil_chk(incrementToken_))->startOffset_ withInt:incrementToken_->startOffset_ + incrementToken_->endOffsetInc_];
  }
  if (payloadAttribute_ != nil) {
    if (((OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *) nil_chk(incrementToken_))->payloadIndex_ == -1) {
      [payloadAttribute_ setPayloadWithOrgApacheLuceneUtilBytesRef:nil];
    }
    else {
      [payloadAttribute_ setPayloadWithOrgApacheLuceneUtilBytesRef:[((OrgApacheLuceneUtilBytesRefArray *) nil_chk(payloadsBytesRefArray_)) getWithOrgApacheLuceneUtilBytesRefBuilder:spareBytesRefBuilder_ withInt:incrementToken_->payloadIndex_]];
    }
  }
  return true;
}

- (void)dealloc {
  RELEASE_(vector_);
  RELEASE_(termAttribute_);
  RELEASE_(positionIncrementAttribute_);
  RELEASE_(offsetAttribute_);
  RELEASE_(payloadAttribute_);
  RELEASE_(termCharsBuilder_);
  RELEASE_(payloadsBytesRefArray_);
  RELEASE_(spareBytesRefBuilder_);
  RELEASE_(firstToken_);
  RELEASE_(incrementToken_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchHighlightTokenStreamFromTermVector class]) {
    JreStrongAssign(&OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_ATTRIBUTE_FACTORY, OrgApacheLuceneUtilAttributeFactory_getStaticImplementationWithOrgApacheLuceneUtilAttributeFactory_withIOSClass_(JreLoadStatic(OrgApacheLuceneUtilAttributeFactory, DEFAULT_ATTRIBUTE_FACTORY), OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl_class_()));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexTerms:withInt:", "TokenStreamFromTermVector", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "getTermVectorTerms", NULL, "Lorg.apache.lucene.index.Terms;", 0x1, NULL, NULL },
    { "reset", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "init__", "init", "V", 0x2, "Ljava.io.IOException;", NULL },
    { "initTokensArray", NULL, "[Lorg.apache.lucene.search.highlight.TokenStreamFromTermVector$TokenLL;", 0x2, "Ljava.io.IOException;", NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ATTRIBUTE_FACTORY", "ATTRIBUTE_FACTORY", 0x19, "Lorg.apache.lucene.util.AttributeFactory;", &OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_ATTRIBUTE_FACTORY, NULL, .constantValue.asLong = 0 },
    { "vector_", NULL, 0x12, "Lorg.apache.lucene.index.Terms;", NULL, NULL, .constantValue.asLong = 0 },
    { "termAttribute_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "positionIncrementAttribute_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.PositionIncrementAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "maxStartOffset_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "offsetAttribute_", NULL, 0x2, "Lorg.apache.lucene.analysis.tokenattributes.OffsetAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "payloadAttribute_", NULL, 0x2, "Lorg.apache.lucene.analysis.tokenattributes.PayloadAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "termCharsBuilder_", NULL, 0x2, "Lorg.apache.lucene.util.CharsRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "payloadsBytesRefArray_", NULL, 0x2, "Lorg.apache.lucene.util.BytesRefArray;", NULL, NULL, .constantValue.asLong = 0 },
    { "spareBytesRefBuilder_", NULL, 0x2, "Lorg.apache.lucene.util.BytesRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "firstToken_", NULL, 0x2, "Lorg.apache.lucene.search.highlight.TokenStreamFromTermVector$TokenLL;", NULL, NULL, .constantValue.asLong = 0 },
    { "incrementToken_", NULL, 0x2, "Lorg.apache.lucene.search.highlight.TokenStreamFromTermVector$TokenLL;", NULL, NULL, .constantValue.asLong = 0 },
    { "initialized_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.highlight.TokenStreamFromTermVector$TokenLL;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightTokenStreamFromTermVector = { 2, "TokenStreamFromTermVector", "org.apache.lucene.search.highlight", NULL, 0x11, 6, methods, 13, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchHighlightTokenStreamFromTermVector;
}

@end

void OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_initWithOrgApacheLuceneIndexTerms_withInt_(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector *self, OrgApacheLuceneIndexTerms *vector, jint maxStartOffset) {
  OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeFactory_(self, OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_ATTRIBUTE_FACTORY);
  JreStrongAssign(&self->firstToken_, nil);
  JreStrongAssign(&self->incrementToken_, nil);
  self->initialized_ = false;
  self->maxStartOffset_ = maxStartOffset < 0 ? JavaLangInteger_MAX_VALUE : maxStartOffset;
  JreAssert((![self hasAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPayloadAttribute_class_()]), (@"AttributeFactory shouldn't have payloads *yet*"));
  if (![((OrgApacheLuceneIndexTerms *) nil_chk(vector)) hasPositions] && ![vector hasOffsets]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"The term vector needs positions and/or offsets.");
  }
  JreAssert(([vector hasFreqs]), (@"org/apache/lucene/search/highlight/TokenStreamFromTermVector.java:99 condition failed: assert vector.hasFreqs();"));
  JreStrongAssign(&self->vector_, vector);
  JreStrongAssign(&self->termAttribute_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->positionIncrementAttribute_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
}

OrgApacheLuceneSearchHighlightTokenStreamFromTermVector *new_OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_initWithOrgApacheLuceneIndexTerms_withInt_(OrgApacheLuceneIndexTerms *vector, jint maxStartOffset) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector, initWithOrgApacheLuceneIndexTerms_withInt_, vector, maxStartOffset)
}

OrgApacheLuceneSearchHighlightTokenStreamFromTermVector *create_OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_initWithOrgApacheLuceneIndexTerms_withInt_(OrgApacheLuceneIndexTerms *vector, jint maxStartOffset) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector, initWithOrgApacheLuceneIndexTerms_withInt_, vector, maxStartOffset)
}

void OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_init__(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector *self) {
  JreAssert((!self->initialized_), (@"org/apache/lucene/search/highlight/TokenStreamFromTermVector.java:115 condition failed: assert !initialized;"));
  jshort dpEnumFlags = OrgApacheLuceneIndexPostingsEnum_POSITIONS;
  if ([((OrgApacheLuceneIndexTerms *) nil_chk(self->vector_)) hasOffsets]) {
    dpEnumFlags |= OrgApacheLuceneIndexPostingsEnum_OFFSETS;
    JreStrongAssign(&self->offsetAttribute_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  }
  if ([self->vector_ hasPayloads] && [self hasAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPayloadAttribute_class_()]) {
    dpEnumFlags |= (OrgApacheLuceneIndexPostingsEnum_OFFSETS | OrgApacheLuceneIndexPostingsEnum_PAYLOADS);
    JreStrongAssign(&self->payloadAttribute_, [self getAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPayloadAttribute_class_()]);
    JreStrongAssignAndConsume(&self->payloadsBytesRefArray_, new_OrgApacheLuceneUtilBytesRefArray_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilCounter_newCounter()));
    JreStrongAssignAndConsume(&self->spareBytesRefBuilder_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
  }
  JreStrongAssignAndConsume(&self->termCharsBuilder_, new_OrgApacheLuceneUtilCharsRefBuilder_init());
  [self->termCharsBuilder_ growWithInt:(jint) ([self->vector_ size] * 7)];
  IOSObjectArray *positionedTokens = OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_initTokensArray(self);
  jint lastPosition = -1;
  OrgApacheLuceneIndexTermsEnum *termsEnum = [self->vector_ iterator];
  OrgApacheLuceneUtilBytesRef *termBytesRef;
  OrgApacheLuceneIndexPostingsEnum *dpEnum = nil;
  OrgApacheLuceneUtilCharsRefBuilder *tempCharsRefBuilder = create_OrgApacheLuceneUtilCharsRefBuilder_init();
  while ((termBytesRef = [((OrgApacheLuceneIndexTermsEnum *) nil_chk(termsEnum)) next]) != nil) {
    [tempCharsRefBuilder growWithInt:((OrgApacheLuceneUtilBytesRef *) nil_chk(termBytesRef))->length_];
    jint termCharsLen = OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF16WithOrgApacheLuceneUtilBytesRef_withCharArray_(termBytesRef, [tempCharsRefBuilder chars]);
    jint termCharsOff = [((OrgApacheLuceneUtilCharsRefBuilder *) nil_chk(self->termCharsBuilder_)) length];
    [((OrgApacheLuceneUtilCharsRefBuilder *) nil_chk(self->termCharsBuilder_)) appendWithCharArray:[tempCharsRefBuilder chars] withInt:0 withInt:termCharsLen];
    dpEnum = [termsEnum postingsWithOrgApacheLuceneIndexPostingsEnum:dpEnum withInt:dpEnumFlags];
    JreAssert((dpEnum != nil), (@"org/apache/lucene/search/highlight/TokenStreamFromTermVector.java:152 condition failed: assert dpEnum != null;"));
    [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(dpEnum)) nextDoc];
    jint freq = [dpEnum freq];
    for (jint j = 0; j < freq; j++) {
      jint pos = [dpEnum nextPosition];
      OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *token = create_OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL_init();
      token->termCharsOff_ = termCharsOff;
      token->termCharsLen_ = (jshort) JavaLangMath_minWithInt_withInt_(termCharsLen, JavaLangShort_MAX_VALUE);
      if (self->offsetAttribute_ != nil) {
        token->startOffset_ = [dpEnum startOffset];
        if (token->startOffset_ > self->maxStartOffset_) {
          continue;
        }
        token->endOffsetInc_ = (jshort) JavaLangMath_minWithInt_withInt_([dpEnum endOffset] - token->startOffset_, JavaLangShort_MAX_VALUE);
        if (pos == -1) {
          pos = JreRShift32(token->startOffset_, 3);
        }
      }
      if (self->payloadAttribute_ != nil) {
        OrgApacheLuceneUtilBytesRef *payload = [dpEnum getPayload];
        token->payloadIndex_ = payload == nil ? -1 : [((OrgApacheLuceneUtilBytesRefArray *) nil_chk(self->payloadsBytesRefArray_)) appendWithOrgApacheLuceneUtilBytesRef:payload];
      }
      if (((IOSObjectArray *) nil_chk(positionedTokens))->size_ <= pos) {
        IOSObjectArray *newPositionedTokens = [IOSObjectArray arrayWithLength:JreFpToInt(((pos + 1) * 1.5f)) type:OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL_class_()];
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(positionedTokens, 0, newPositionedTokens, 0, lastPosition + 1);
        positionedTokens = newPositionedTokens;
      }
      IOSObjectArray_Set(positionedTokens, pos, [token insertIntoSortedLinkedListWithOrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL:IOSObjectArray_Get(positionedTokens, pos)]);
      lastPosition = JavaLangMath_maxWithInt_withInt_(lastPosition, pos);
    }
  }
  jint prevTokenPos = -1;
  OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *prevToken = nil;
  for (jint pos = 0; pos <= lastPosition; pos++) {
    OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *token = IOSObjectArray_Get(nil_chk(positionedTokens), pos);
    if (token == nil) {
      continue;
    }
    if (prevToken != nil) {
      JreAssert((prevToken->next_ == nil), (@"org/apache/lucene/search/highlight/TokenStreamFromTermVector.java:206 condition failed: assert prevToken.next == null;"));
      JreStrongAssign(&prevToken->next_, token);
    }
    else {
      JreAssert((self->firstToken_ == nil), (@"org/apache/lucene/search/highlight/TokenStreamFromTermVector.java:209 condition failed: assert firstToken == null;"));
      JreStrongAssign(&self->firstToken_, token);
    }
    if ([self->vector_ hasPositions]) {
      token->positionIncrement_ = pos - prevTokenPos;
      while (token->next_ != nil) {
        token = token->next_;
        token->positionIncrement_ = 0;
      }
    }
    else {
      token->positionIncrement_ = 1;
      while (token->next_ != nil) {
        prevToken = token;
        token = token->next_;
        if (prevToken->startOffset_ == token->startOffset_) {
          token->positionIncrement_ = 0;
        }
        else {
          token->positionIncrement_ = 1;
        }
      }
    }
    prevTokenPos = pos;
    prevToken = token;
  }
  self->initialized_ = true;
}

IOSObjectArray *OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_initTokensArray(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector *self) {
  jint sumTotalTermFreq = (jint) [((OrgApacheLuceneIndexTerms *) nil_chk(self->vector_)) getSumTotalTermFreq];
  if (sumTotalTermFreq == -1) {
    jint size = (jint) [self->vector_ size];
    if (size == -1) {
      size = 128;
    }
    sumTotalTermFreq = JreFpToInt((size * 2.4));
  }
  jint originalPositionEstimate = JreFpToInt((sumTotalTermFreq * 1.5));
  jint offsetLimitPositionEstimate = JreFpToInt((self->maxStartOffset_ / 5.0));
  return [IOSObjectArray arrayWithLength:JavaLangMath_maxWithInt_withInt_(64, JavaLangMath_minWithInt_withInt_(originalPositionEstimate, offsetLimitPositionEstimate)) type:OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector)

@implementation OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL

- (OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *)insertIntoSortedLinkedListWithOrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL:(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *)head {
  JreAssert((next_ == nil), (@"org/apache/lucene/search/highlight/TokenStreamFromTermVector.java:308 condition failed: assert next == null;"));
  if (head == nil) {
    return self;
  }
  else if ([self compareOffsetsWithOrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL:head] <= 0) {
    JreStrongAssign(&self->next_, head);
    return self;
  }
  OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *prev = head;
  while (prev->next_ != nil && [self compareOffsetsWithOrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL:prev->next_] > 0) {
    prev = prev->next_;
  }
  JreStrongAssign(&self->next_, prev->next_);
  JreStrongAssign(&prev->next_, self);
  return head;
}

- (jint)compareOffsetsWithOrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL:(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *)tokenB {
  jint cmp = JavaLangInteger_compareWithInt_withInt_(self->startOffset_, ((OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *) nil_chk(tokenB))->startOffset_);
  if (cmp == 0) {
    cmp = JavaLangShort_compareWithShort_withShort_(self->endOffsetInc_, tokenB->endOffsetInc_);
  }
  return cmp;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(next_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "insertIntoSortedLinkedListWithOrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL:", "insertIntoSortedLinkedList", "Lorg.apache.lucene.search.highlight.TokenStreamFromTermVector$TokenLL;", 0x0, NULL, NULL },
    { "compareOffsetsWithOrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL:", "compareOffsets", "I", 0x0, NULL, NULL },
    { "init", "TokenLL", NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "termCharsOff_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "termCharsLen_", NULL, 0x0, "S", NULL, NULL, .constantValue.asLong = 0 },
    { "positionIncrement_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "startOffset_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "endOffsetInc_", NULL, 0x0, "S", NULL, NULL, .constantValue.asLong = 0 },
    { "payloadIndex_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "next_", NULL, 0x0, "Lorg.apache.lucene.search.highlight.TokenStreamFromTermVector$TokenLL;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL = { 2, "TokenLL", "org.apache.lucene.search.highlight", "TokenStreamFromTermVector", 0xa, 3, methods, 7, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL;
}

@end

void OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL_init(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *new_OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL, init)
}

OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL *create_OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_TokenLL)
