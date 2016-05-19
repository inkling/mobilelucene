//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/AnalyzerWrapper.java
//

#include "J2ObjC_source.h"
#include "java/io/Reader.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/AnalyzerWrapper.h"

@implementation OrgApacheLuceneAnalysisAnalyzerWrapper

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer_ReuseStrategy:(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *)reuseStrategy {
  OrgApacheLuceneAnalysisAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_(self, reuseStrategy);
  return self;
}

- (OrgApacheLuceneAnalysisAnalyzer *)getWrappedAnalyzerWithNSString:(NSString *)fieldName {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)wrapComponentsWithNSString:(NSString *)fieldName
                            withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:(OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)components {
  return components;
}

- (JavaIoReader *)wrapReaderWithNSString:(NSString *)fieldName
                        withJavaIoReader:(JavaIoReader *)reader {
  return reader;
}

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName {
  return [self wrapComponentsWithNSString:fieldName withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:[((OrgApacheLuceneAnalysisAnalyzer *) nil_chk([self getWrappedAnalyzerWithNSString:fieldName])) createComponentsWithNSString:fieldName]];
}

- (jint)getPositionIncrementGapWithNSString:(NSString *)fieldName {
  return [((OrgApacheLuceneAnalysisAnalyzer *) nil_chk([self getWrappedAnalyzerWithNSString:fieldName])) getPositionIncrementGapWithNSString:fieldName];
}

- (jint)getOffsetGapWithNSString:(NSString *)fieldName {
  return [((OrgApacheLuceneAnalysisAnalyzer *) nil_chk([self getWrappedAnalyzerWithNSString:fieldName])) getOffsetGapWithNSString:fieldName];
}

- (JavaIoReader *)initReaderWithNSString:(NSString *)fieldName
                        withJavaIoReader:(JavaIoReader *)reader {
  return [((OrgApacheLuceneAnalysisAnalyzer *) nil_chk([self getWrappedAnalyzerWithNSString:fieldName])) initReaderWithNSString:fieldName withJavaIoReader:[self wrapReaderWithNSString:fieldName withJavaIoReader:reader]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisAnalyzer_ReuseStrategy:", "AnalyzerWrapper", NULL, 0x4, NULL, NULL },
    { "getWrappedAnalyzerWithNSString:", "getWrappedAnalyzer", "Lorg.apache.lucene.analysis.Analyzer;", 0x404, NULL, NULL },
    { "wrapComponentsWithNSString:withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:", "wrapComponents", "Lorg.apache.lucene.analysis.Analyzer$TokenStreamComponents;", 0x4, NULL, NULL },
    { "wrapReaderWithNSString:withJavaIoReader:", "wrapReader", "Ljava.io.Reader;", 0x4, NULL, NULL },
    { "createComponentsWithNSString:", "createComponents", "Lorg.apache.lucene.analysis.Analyzer$TokenStreamComponents;", 0x14, NULL, NULL },
    { "getPositionIncrementGapWithNSString:", "getPositionIncrementGap", "I", 0x1, NULL, NULL },
    { "getOffsetGapWithNSString:", "getOffsetGap", "I", 0x1, NULL, NULL },
    { "initReaderWithNSString:withJavaIoReader:", "initReader", "Ljava.io.Reader;", 0x11, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisAnalyzerWrapper = { 2, "AnalyzerWrapper", "org.apache.lucene.analysis", NULL, 0x401, 8, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisAnalyzerWrapper;
}

@end

void OrgApacheLuceneAnalysisAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_(OrgApacheLuceneAnalysisAnalyzerWrapper *self, OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *reuseStrategy) {
  OrgApacheLuceneAnalysisAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_(self, reuseStrategy);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisAnalyzerWrapper)
