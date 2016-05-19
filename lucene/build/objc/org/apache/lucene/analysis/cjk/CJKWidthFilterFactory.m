//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/cjk/CJKWidthFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/cjk/CJKWidthFilter.h"
#include "org/apache/lucene/analysis/cjk/CJKWidthFilterFactory.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@implementation OrgApacheLuceneAnalysisCjkCJKWidthFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisCjkCJKWidthFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  return create_OrgApacheLuceneAnalysisCjkCJKWidthFilter_initWithOrgApacheLuceneAnalysisTokenStream_(input);
}

- (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *)getMultiTermComponent {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "CJKWidthFilterFactory", NULL, 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.TokenStream;", 0x1, NULL, NULL },
    { "getMultiTermComponent", NULL, "Lorg.apache.lucene.analysis.util.AbstractAnalysisFactory;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCjkCJKWidthFilterFactory = { 2, "CJKWidthFilterFactory", "org.apache.lucene.analysis.cjk", NULL, 0x1, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCjkCJKWidthFilterFactory;
}

@end

void OrgApacheLuceneAnalysisCjkCJKWidthFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCjkCJKWidthFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisCjkCJKWidthFilterFactory *new_OrgApacheLuceneAnalysisCjkCJKWidthFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCjkCJKWidthFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisCjkCJKWidthFilterFactory *create_OrgApacheLuceneAnalysisCjkCJKWidthFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCjkCJKWidthFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCjkCJKWidthFilterFactory)
