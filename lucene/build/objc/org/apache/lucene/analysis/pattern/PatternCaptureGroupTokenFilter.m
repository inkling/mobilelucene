//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/pattern/PatternCaptureGroupTokenFilter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Integer.h"
#include "java/util/regex/Matcher.h"
#include "java/util/regex/Pattern.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/pattern/PatternCaptureGroupTokenFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/util/AttributeSource.h"
#include "org/apache/lucene/util/CharsRef.h"
#include "org/apache/lucene/util/CharsRefBuilder.h"

@interface OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> charTermAttr_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posAttr_;
  OrgApacheLuceneUtilAttributeSource_State *state_;
  IOSObjectArray *matchers_;
  OrgApacheLuceneUtilCharsRefBuilder *spare_;
  IOSIntArray *groupCounts_;
  jboolean preserveOriginal_;
  IOSIntArray *currentGroup_;
  jint currentMatcher_;
}

- (jboolean)nextCapture;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter, charTermAttr_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter, posAttr_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter, state_, OrgApacheLuceneUtilAttributeSource_State *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter, matchers_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter, spare_, OrgApacheLuceneUtilCharsRefBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter, groupCounts_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter, currentGroup_, IOSIntArray *)

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter_nextCapture(OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter *self);

@implementation OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                               withBoolean:(jboolean)preserveOriginal
                             withJavaUtilRegexPatternArray:(IOSObjectArray *)patterns {
  OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_withJavaUtilRegexPatternArray_(self, input, preserveOriginal, patterns);
  return self;
}

- (jboolean)nextCapture {
  return OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter_nextCapture(self);
}

- (jboolean)incrementToken {
  if (currentMatcher_ != -1 && OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter_nextCapture(self)) {
    JreAssert((state_ != nil), (@"org/apache/lucene/analysis/pattern/PatternCaptureGroupTokenFilter.java:146 condition failed: assert state != null;"));
    [self clearAttributes];
    [self restoreStateWithOrgApacheLuceneUtilAttributeSource_State:state_];
    jint start = [((JavaUtilRegexMatcher *) nil_chk(IOSObjectArray_Get(nil_chk(matchers_), currentMatcher_))) startWithInt:IOSIntArray_Get(nil_chk(currentGroup_), currentMatcher_)];
    jint end = [((JavaUtilRegexMatcher *) nil_chk(IOSObjectArray_Get(matchers_, currentMatcher_))) endWithInt:IOSIntArray_Get(nil_chk(currentGroup_), currentMatcher_)];
    [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posAttr_)) setPositionIncrementWithInt:0];
    [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(charTermAttr_)) copyBufferWithCharArray:[((OrgApacheLuceneUtilCharsRefBuilder *) nil_chk(spare_)) chars] withInt:start withInt:end - start];
    (*IOSIntArray_GetRef(nil_chk(currentGroup_), currentMatcher_))++;
    return true;
  }
  if (![((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    return false;
  }
  IOSCharArray *buffer = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(charTermAttr_)) buffer];
  jint length = [charTermAttr_ length];
  [((OrgApacheLuceneUtilCharsRefBuilder *) nil_chk(spare_)) copyCharsWithCharArray:buffer withInt:0 withInt:length];
  JreStrongAssign(&state_, [self captureState]);
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(matchers_))->size_; i++) {
    [((JavaUtilRegexMatcher *) nil_chk(IOSObjectArray_Get(matchers_, i))) resetWithJavaLangCharSequence:[spare_ get]];
    *IOSIntArray_GetRef(nil_chk(currentGroup_), i) = -1;
  }
  if (preserveOriginal_) {
    currentMatcher_ = 0;
  }
  else if (OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter_nextCapture(self)) {
    jint start = [((JavaUtilRegexMatcher *) nil_chk(IOSObjectArray_Get(matchers_, currentMatcher_))) startWithInt:IOSIntArray_Get(nil_chk(currentGroup_), currentMatcher_)];
    jint end = [((JavaUtilRegexMatcher *) nil_chk(IOSObjectArray_Get(matchers_, currentMatcher_))) endWithInt:IOSIntArray_Get(nil_chk(currentGroup_), currentMatcher_)];
    if (start == 0) {
      [charTermAttr_ setLengthWithInt:end];
    }
    else {
      [charTermAttr_ copyBufferWithCharArray:[spare_ chars] withInt:start withInt:end - start];
    }
    (*IOSIntArray_GetRef(nil_chk(currentGroup_), currentMatcher_))++;
  }
  return true;
}

- (void)reset {
  [super reset];
  JreStrongAssign(&state_, nil);
  currentMatcher_ = -1;
}

- (void)dealloc {
  RELEASE_(charTermAttr_);
  RELEASE_(posAttr_);
  RELEASE_(state_);
  RELEASE_(matchers_);
  RELEASE_(spare_);
  RELEASE_(groupCounts_);
  RELEASE_(currentGroup_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:withBoolean:withJavaUtilRegexPatternArray:", "PatternCaptureGroupTokenFilter", NULL, 0x81, NULL, NULL },
    { "nextCapture", NULL, "Z", 0x2, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "reset", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "charTermAttr_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "posAttr_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.PositionIncrementAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "state_", NULL, 0x2, "Lorg.apache.lucene.util.AttributeSource$State;", NULL, NULL, .constantValue.asLong = 0 },
    { "matchers_", NULL, 0x12, "[Ljava.util.regex.Matcher;", NULL, NULL, .constantValue.asLong = 0 },
    { "spare_", NULL, 0x12, "Lorg.apache.lucene.util.CharsRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "groupCounts_", NULL, 0x12, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "preserveOriginal_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "currentGroup_", NULL, 0x2, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "currentMatcher_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter = { 2, "PatternCaptureGroupTokenFilter", "org.apache.lucene.analysis.pattern", NULL, 0x11, 4, methods, 9, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter;
}

@end

void OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_withJavaUtilRegexPatternArray_(OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input, jboolean preserveOriginal, IOSObjectArray *patterns) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssign(&self->charTermAttr_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->posAttr_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  JreStrongAssignAndConsume(&self->spare_, new_OrgApacheLuceneUtilCharsRefBuilder_init());
  self->preserveOriginal_ = preserveOriginal;
  JreStrongAssignAndConsume(&self->matchers_, [IOSObjectArray newArrayWithLength:((IOSObjectArray *) nil_chk(patterns))->size_ type:JavaUtilRegexMatcher_class_()]);
  JreStrongAssignAndConsume(&self->groupCounts_, [IOSIntArray newArrayWithLength:patterns->size_]);
  JreStrongAssignAndConsume(&self->currentGroup_, [IOSIntArray newArrayWithLength:patterns->size_]);
  for (jint i = 0; i < patterns->size_; i++) {
    IOSObjectArray_Set(self->matchers_, i, [((JavaUtilRegexPattern *) nil_chk(IOSObjectArray_Get(patterns, i))) matcherWithJavaLangCharSequence:@""]);
    *IOSIntArray_GetRef(self->groupCounts_, i) = [((JavaUtilRegexMatcher *) nil_chk(IOSObjectArray_Get(self->matchers_, i))) groupCount];
    *IOSIntArray_GetRef(nil_chk(self->currentGroup_), i) = -1;
  }
}

OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter *new_OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_withJavaUtilRegexPatternArray_(OrgApacheLuceneAnalysisTokenStream *input, jboolean preserveOriginal, IOSObjectArray *patterns) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter, initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_withJavaUtilRegexPatternArray_, input, preserveOriginal, patterns)
}

OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter *create_OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_withJavaUtilRegexPatternArray_(OrgApacheLuceneAnalysisTokenStream *input, jboolean preserveOriginal, IOSObjectArray *patterns) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter, initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_withJavaUtilRegexPatternArray_, input, preserveOriginal, patterns)
}

jboolean OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter_nextCapture(OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter *self) {
  jint min_offset = JavaLangInteger_MAX_VALUE;
  self->currentMatcher_ = -1;
  JavaUtilRegexMatcher *matcher;
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(self->matchers_))->size_; i++) {
    matcher = IOSObjectArray_Get(self->matchers_, i);
    if (IOSIntArray_Get(nil_chk(self->currentGroup_), i) == -1) {
      *IOSIntArray_GetRef(self->currentGroup_, i) = [((JavaUtilRegexMatcher *) nil_chk(matcher)) find] ? 1 : 0;
    }
    if (IOSIntArray_Get(nil_chk(self->currentGroup_), i) != 0) {
      while (IOSIntArray_Get(self->currentGroup_, i) < IOSIntArray_Get(nil_chk(self->groupCounts_), i) + 1) {
        jint start = [((JavaUtilRegexMatcher *) nil_chk(matcher)) startWithInt:IOSIntArray_Get(self->currentGroup_, i)];
        jint end = [matcher endWithInt:IOSIntArray_Get(nil_chk(self->currentGroup_), i)];
        if (start == end || (self->preserveOriginal_ && start == 0 && [((OrgApacheLuceneUtilCharsRefBuilder *) nil_chk(self->spare_)) length] == end)) {
          (*IOSIntArray_GetRef(nil_chk(self->currentGroup_), i))++;
          continue;
        }
        if (start < min_offset) {
          min_offset = start;
          self->currentMatcher_ = i;
        }
        break;
      }
      if (IOSIntArray_Get(nil_chk(self->currentGroup_), i) == IOSIntArray_Get(self->groupCounts_, i) + 1) {
        *IOSIntArray_GetRef(self->currentGroup_, i) = -1;
        i--;
      }
    }
  }
  return self->currentMatcher_ != -1;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPatternPatternCaptureGroupTokenFilter)
