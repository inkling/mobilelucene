//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/tr/TurkishLowerCaseFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tr/TurkishLowerCaseFilter.h"
#include "org/apache/lucene/analysis/tr/TurkishLowerCaseFilterFactory.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@implementation OrgApacheLuceneAnalysisTrTurkishLowerCaseFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisTrTurkishLowerCaseFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  return create_OrgApacheLuceneAnalysisTrTurkishLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(input);
}

- (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *)getMultiTermComponent {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "TurkishLowerCaseFilterFactory", NULL, 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.TokenStream;", 0x1, NULL, NULL },
    { "getMultiTermComponent", NULL, "Lorg.apache.lucene.analysis.util.AbstractAnalysisFactory;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTrTurkishLowerCaseFilterFactory = { 2, "TurkishLowerCaseFilterFactory", "org.apache.lucene.analysis.tr", NULL, 0x1, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisTrTurkishLowerCaseFilterFactory;
}

@end

void OrgApacheLuceneAnalysisTrTurkishLowerCaseFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisTrTurkishLowerCaseFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisTrTurkishLowerCaseFilterFactory *new_OrgApacheLuceneAnalysisTrTurkishLowerCaseFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisTrTurkishLowerCaseFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisTrTurkishLowerCaseFilterFactory *create_OrgApacheLuceneAnalysisTrTurkishLowerCaseFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisTrTurkishLowerCaseFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTrTurkishLowerCaseFilterFactory)
