//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/compound/CompoundWordTokenFilterBase.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/CharSequence.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/LinkedList.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/compound/CompoundWordTokenFilterBase.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncAtt_;
  OrgApacheLuceneUtilAttributeSource_State *current_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase, posIncAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase, current_, OrgApacheLuceneUtilAttributeSource_State *)

@implementation OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase

+ (jint)DEFAULT_MIN_WORD_SIZE {
  return OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MIN_WORD_SIZE;
}

+ (jint)DEFAULT_MIN_SUBWORD_SIZE {
  return OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MIN_SUBWORD_SIZE;
}

+ (jint)DEFAULT_MAX_SUBWORD_SIZE {
  return OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MAX_SUBWORD_SIZE;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)dictionary
                                               withBoolean:(jboolean)onlyLongestMatch {
  OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withBoolean_(self, input, dictionary, onlyLongestMatch);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)dictionary {
  OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, input, dictionary);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)dictionary
                                                   withInt:(jint)minWordSize
                                                   withInt:(jint)minSubwordSize
                                                   withInt:(jint)maxSubwordSize
                                               withBoolean:(jboolean)onlyLongestMatch {
  OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(self, input, dictionary, minWordSize, minSubwordSize, maxSubwordSize, onlyLongestMatch);
  return self;
}

- (jboolean)incrementToken {
  if (![((JavaUtilLinkedList *) nil_chk(tokens_)) isEmpty]) {
    JreAssert((current_ != nil), (@"org/apache/lucene/analysis/compound/CompoundWordTokenFilterBase.java:92 condition failed: assert current != null;"));
    OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken *token = [tokens_ removeFirst];
    [self restoreStateWithOrgApacheLuceneUtilAttributeSource_State:current_];
    [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk([((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) setEmpty])) appendWithJavaLangCharSequence:((OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken *) nil_chk(token))->txt_];
    [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) setOffsetWithInt:token->startOffset_ withInt:token->endOffset_];
    [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncAtt_)) setPositionIncrementWithInt:0];
    return true;
  }
  JreStrongAssign(&current_, nil);
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    if ([((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) length] >= self->minWordSize_) {
      [self decompose];
      if (![tokens_ isEmpty]) {
        JreStrongAssign(&current_, [self captureState]);
      }
    }
    return true;
  }
  else {
    return false;
  }
}

- (void)decompose {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)reset {
  [super reset];
  [((JavaUtilLinkedList *) nil_chk(tokens_)) clear];
  JreStrongAssign(&current_, nil);
}

- (void)dealloc {
  RELEASE_(dictionary_);
  RELEASE_(tokens_);
  RELEASE_(termAtt_);
  RELEASE_(offsetAtt_);
  RELEASE_(posIncAtt_);
  RELEASE_(current_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneAnalysisUtilCharArraySet:withBoolean:", "CompoundWordTokenFilterBase", NULL, 0x4, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneAnalysisUtilCharArraySet:", "CompoundWordTokenFilterBase", NULL, 0x4, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneAnalysisUtilCharArraySet:withInt:withInt:withInt:withBoolean:", "CompoundWordTokenFilterBase", NULL, 0x4, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x11, "Ljava.io.IOException;", NULL },
    { "decompose", NULL, "V", 0x404, NULL, NULL },
    { "reset", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_MIN_WORD_SIZE", "DEFAULT_MIN_WORD_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MIN_WORD_SIZE },
    { "DEFAULT_MIN_SUBWORD_SIZE", "DEFAULT_MIN_SUBWORD_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MIN_SUBWORD_SIZE },
    { "DEFAULT_MAX_SUBWORD_SIZE", "DEFAULT_MAX_SUBWORD_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MAX_SUBWORD_SIZE },
    { "dictionary_", NULL, 0x14, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
    { "tokens_", NULL, 0x14, "Ljava.util.LinkedList;", NULL, "Ljava/util/LinkedList<Lorg/apache/lucene/analysis/compound/CompoundWordTokenFilterBase$CompoundToken;>;", .constantValue.asLong = 0 },
    { "minWordSize_", NULL, 0x14, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "minSubwordSize_", NULL, 0x14, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxSubwordSize_", NULL, 0x14, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "onlyLongestMatch_", NULL, 0x14, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "termAtt_", NULL, 0x14, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "offsetAtt_", NULL, 0x14, "Lorg.apache.lucene.analysis.tokenattributes.OffsetAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "posIncAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.PositionIncrementAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "current_", NULL, 0x2, "Lorg.apache.lucene.util.AttributeSource$State;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.analysis.compound.CompoundWordTokenFilterBase$CompoundToken;"};
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase = { 2, "CompoundWordTokenFilterBase", "org.apache.lucene.analysis.compound", NULL, 0x401, 6, methods, 13, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase;
}

@end

void OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withBoolean_(OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary, jboolean onlyLongestMatch) {
  OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(self, input, dictionary, OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MIN_WORD_SIZE, OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MIN_SUBWORD_SIZE, OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MAX_SUBWORD_SIZE, onlyLongestMatch);
}

void OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary) {
  OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(self, input, dictionary, OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MIN_WORD_SIZE, OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MIN_SUBWORD_SIZE, OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MAX_SUBWORD_SIZE, false);
}

void OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary, jint minWordSize, jint minSubwordSize, jint maxSubwordSize, jboolean onlyLongestMatch) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  JreStrongAssign(&self->posIncAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  JreStrongAssignAndConsume(&self->tokens_, new_JavaUtilLinkedList_init());
  if (minWordSize < 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"minWordSize cannot be negative");
  }
  self->minWordSize_ = minWordSize;
  if (minSubwordSize < 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"minSubwordSize cannot be negative");
  }
  self->minSubwordSize_ = minSubwordSize;
  if (maxSubwordSize < 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"maxSubwordSize cannot be negative");
  }
  self->maxSubwordSize_ = maxSubwordSize;
  self->onlyLongestMatch_ = onlyLongestMatch;
  JreStrongAssign(&self->dictionary_, dictionary);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase)

@implementation OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken

- (instancetype)initWithOrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase:(OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase *)outer$
                                                                           withInt:(jint)offset
                                                                           withInt:(jint)length {
  OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken_initWithOrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_withInt_withInt_(self, outer$, offset, length);
  return self;
}

- (void)dealloc {
  RELEASE_(txt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase:withInt:withInt:", "CompoundToken", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "txt_", NULL, 0x11, "Ljava.lang.CharSequence;", NULL, NULL, .constantValue.asLong = 0 },
    { "startOffset_", NULL, 0x11, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "endOffset_", NULL, 0x11, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken = { 2, "CompoundToken", "org.apache.lucene.analysis.compound", "CompoundWordTokenFilterBase", 0x4, 1, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken;
}

@end

void OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken_initWithOrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_withInt_withInt_(OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken *self, OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase *outer$, jint offset, jint length) {
  NSObject_init(self);
  JreStrongAssign(&self->txt_, [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(outer$->termAtt_)) subSequenceFrom:offset to:offset + length]);
  self->startOffset_ = [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(outer$->offsetAtt_)) startOffset];
  self->endOffset_ = [outer$->offsetAtt_ endOffset];
}

OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken *new_OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken_initWithOrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_withInt_withInt_(OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase *outer$, jint offset, jint length) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken, initWithOrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_withInt_withInt_, outer$, offset, length)
}

OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken *create_OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken_initWithOrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_withInt_withInt_(OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase *outer$, jint offset, jint length) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken, initWithOrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_withInt_withInt_, outer$, offset, length)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_CompoundToken)
