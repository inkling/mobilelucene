//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/sv/SwedishLightStemFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/sv/SwedishLightStemFilter.h"
#include "org/apache/lucene/analysis/sv/SwedishLightStemmer.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/KeywordAttribute.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisSvSwedishLightStemFilter () {
 @public
  OrgApacheLuceneAnalysisSvSwedishLightStemmer *stemmer_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute> keywordAttr_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisSvSwedishLightStemFilter, stemmer_, OrgApacheLuceneAnalysisSvSwedishLightStemmer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisSvSwedishLightStemFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisSvSwedishLightStemFilter, keywordAttr_, id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>)

@implementation OrgApacheLuceneAnalysisSvSwedishLightStemFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisSvSwedishLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

- (jboolean)incrementToken {
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    if (![((id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>) nil_chk(keywordAttr_)) isKeyword]) {
      jint newlen = [((OrgApacheLuceneAnalysisSvSwedishLightStemmer *) nil_chk(stemmer_)) stemWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer] withInt:[termAtt_ length]];
      [termAtt_ setLengthWithInt:newlen];
    }
    return true;
  }
  else {
    return false;
  }
}

- (void)dealloc {
  RELEASE_(stemmer_);
  RELEASE_(termAtt_);
  RELEASE_(keywordAttr_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:", "SwedishLightStemFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "stemmer_", NULL, 0x12, "Lorg.apache.lucene.analysis.sv.SwedishLightStemmer;", NULL, NULL, .constantValue.asLong = 0 },
    { "termAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "keywordAttr_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.KeywordAttribute;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisSvSwedishLightStemFilter = { 2, "SwedishLightStemFilter", "org.apache.lucene.analysis.sv", NULL, 0x11, 2, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisSvSwedishLightStemFilter;
}

@end

void OrgApacheLuceneAnalysisSvSwedishLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisSvSwedishLightStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssignAndConsume(&self->stemmer_, new_OrgApacheLuceneAnalysisSvSwedishLightStemmer_init());
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->keywordAttr_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesKeywordAttribute_class_()]);
}

OrgApacheLuceneAnalysisSvSwedishLightStemFilter *new_OrgApacheLuceneAnalysisSvSwedishLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisSvSwedishLightStemFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

OrgApacheLuceneAnalysisSvSwedishLightStemFilter *create_OrgApacheLuceneAnalysisSvSwedishLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisSvSwedishLightStemFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisSvSwedishLightStemFilter)
