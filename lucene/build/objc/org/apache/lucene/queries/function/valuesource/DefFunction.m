//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/DefFunction.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/valuesource/DefFunction.h"
#include "org/apache/lucene/queries/function/valuesource/MultiFunction.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"

@interface OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1 : OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_Values {
 @public
  jint upto_;
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getWithInt:(jint)doc;

- (jbyte)byteValWithInt:(jint)doc;

- (jshort)shortValWithInt:(jint)doc;

- (jfloat)floatValWithInt:(jint)doc;

- (jint)intValWithInt:(jint)doc;

- (jlong)longValWithInt:(jint)doc;

- (jdouble)doubleValWithInt:(jint)doc;

- (NSString *)strValWithInt:(jint)doc;

- (jboolean)boolValWithInt:(jint)doc;

- (jboolean)bytesValWithInt:(jint)doc
withOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)target;

- (id)objectValWithInt:(jint)doc;

- (jboolean)existsWithInt:(jint)doc;

- (OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller *)getValueFiller;

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction:(OrgApacheLuceneQueriesFunctionValuesourceDefFunction *)outer$
                       withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1)

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionFunctionValues *OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_getWithInt_(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1 *self, jint doc);

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1 *self, OrgApacheLuceneQueriesFunctionValuesourceDefFunction *outer$, IOSObjectArray *arg$0);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1 *new_OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(OrgApacheLuceneQueriesFunctionValuesourceDefFunction *outer$, IOSObjectArray *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1 *create_OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(OrgApacheLuceneQueriesFunctionValuesourceDefFunction *outer$, IOSObjectArray *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1)

@implementation OrgApacheLuceneQueriesFunctionValuesourceDefFunction

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)sources {
  OrgApacheLuceneQueriesFunctionValuesourceDefFunction_initWithJavaUtilList_(self, sources);
  return self;
}

- (NSString *)name {
  return @"def";
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)fcontext
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  return create_OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(self, OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_valsArrWithJavaUtilList_withJavaUtilMap_withOrgApacheLuceneIndexLeafReaderContext_(sources_, fcontext, readerContext));
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilList:", "DefFunction", NULL, 0x1, NULL, "(Ljava/util/List<Lorg/apache/lucene/queries/function/ValueSource;>;)V" },
    { "name", NULL, "Ljava.lang.String;", 0x4, NULL, NULL },
    { "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:", "getValues", "Lorg.apache.lucene.queries.function.FunctionValues;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceDefFunction = { 2, "DefFunction", "org.apache.lucene.queries.function.valuesource", NULL, 0x1, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceDefFunction;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceDefFunction_initWithJavaUtilList_(OrgApacheLuceneQueriesFunctionValuesourceDefFunction *self, id<JavaUtilList> sources) {
  OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_initWithJavaUtilList_(self, sources);
}

OrgApacheLuceneQueriesFunctionValuesourceDefFunction *new_OrgApacheLuceneQueriesFunctionValuesourceDefFunction_initWithJavaUtilList_(id<JavaUtilList> sources) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceDefFunction, initWithJavaUtilList_, sources)
}

OrgApacheLuceneQueriesFunctionValuesourceDefFunction *create_OrgApacheLuceneQueriesFunctionValuesourceDefFunction_initWithJavaUtilList_(id<JavaUtilList> sources) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceDefFunction, initWithJavaUtilList_, sources)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceDefFunction)

@implementation OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getWithInt:(jint)doc {
  return OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_getWithInt_(self, doc);
}

- (jbyte)byteValWithInt:(jint)doc {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_getWithInt_(self, doc))) byteValWithInt:doc];
}

- (jshort)shortValWithInt:(jint)doc {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_getWithInt_(self, doc))) shortValWithInt:doc];
}

- (jfloat)floatValWithInt:(jint)doc {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_getWithInt_(self, doc))) floatValWithInt:doc];
}

- (jint)intValWithInt:(jint)doc {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_getWithInt_(self, doc))) intValWithInt:doc];
}

- (jlong)longValWithInt:(jint)doc {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_getWithInt_(self, doc))) longValWithInt:doc];
}

- (jdouble)doubleValWithInt:(jint)doc {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_getWithInt_(self, doc))) doubleValWithInt:doc];
}

- (NSString *)strValWithInt:(jint)doc {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_getWithInt_(self, doc))) strValWithInt:doc];
}

- (jboolean)boolValWithInt:(jint)doc {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_getWithInt_(self, doc))) boolValWithInt:doc];
}

- (jboolean)bytesValWithInt:(jint)doc
withOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)target {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_getWithInt_(self, doc))) bytesValWithInt:doc withOrgApacheLuceneUtilBytesRefBuilder:target];
}

- (id)objectValWithInt:(jint)doc {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_getWithInt_(self, doc))) objectValWithInt:doc];
}

- (jboolean)existsWithInt:(jint)doc {
  {
    IOSObjectArray *a__ = valsArr_;
    OrgApacheLuceneQueriesFunctionFunctionValues * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneQueriesFunctionFunctionValues * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneQueriesFunctionFunctionValues *vals = *b__++;
      if ([((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(vals)) existsWithInt:doc]) {
        return true;
      }
    }
  }
  return false;
}

- (OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller *)getValueFiller {
  return [super getValueFiller];
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction:(OrgApacheLuceneQueriesFunctionValuesourceDefFunction *)outer$
                       withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)arg$0 {
  OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(self, outer$, arg$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getWithInt:", "get", "Lorg.apache.lucene.queries.function.FunctionValues;", 0x2, NULL, NULL },
    { "byteValWithInt:", "byteVal", "B", 0x1, NULL, NULL },
    { "shortValWithInt:", "shortVal", "S", 0x1, NULL, NULL },
    { "floatValWithInt:", "floatVal", "F", 0x1, NULL, NULL },
    { "intValWithInt:", "intVal", "I", 0x1, NULL, NULL },
    { "longValWithInt:", "longVal", "J", 0x1, NULL, NULL },
    { "doubleValWithInt:", "doubleVal", "D", 0x1, NULL, NULL },
    { "strValWithInt:", "strVal", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "boolValWithInt:", "boolVal", "Z", 0x1, NULL, NULL },
    { "bytesValWithInt:withOrgApacheLuceneUtilBytesRefBuilder:", "bytesVal", "Z", 0x1, NULL, NULL },
    { "objectValWithInt:", "objectVal", "Ljava.lang.Object;", 0x1, NULL, NULL },
    { "existsWithInt:", "exists", "Z", 0x1, NULL, NULL },
    { "getValueFiller", NULL, "Lorg.apache.lucene.queries.function.FunctionValues$ValueFiller;", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction:withOrgApacheLuceneQueriesFunctionFunctionValuesArray:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "upto_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneQueriesFunctionValuesourceDefFunction", "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1 = { 2, "", "org.apache.lucene.queries.function.valuesource", "DefFunction", 0x8008, 14, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1;
}

@end

OrgApacheLuceneQueriesFunctionFunctionValues *OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_getWithInt_(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1 *self, jint doc) {
  for (jint i = 0; i < self->upto_; i++) {
    OrgApacheLuceneQueriesFunctionFunctionValues *vals = IOSObjectArray_Get(nil_chk(self->valsArr_), i);
    if ([((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(vals)) existsWithInt:doc]) {
      return vals;
    }
  }
  return IOSObjectArray_Get(nil_chk(self->valsArr_), self->upto_);
}

void OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1 *self, OrgApacheLuceneQueriesFunctionValuesourceDefFunction *outer$, IOSObjectArray *arg$0) {
  OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_Values_initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(self, outer$, arg$0);
  self->upto_ = ((IOSObjectArray *) nil_chk(self->valsArr_))->size_ - 1;
}

OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1 *new_OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(OrgApacheLuceneQueriesFunctionValuesourceDefFunction *outer$, IOSObjectArray *arg$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1, initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_, outer$, arg$0)
}

OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1 *create_OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(OrgApacheLuceneQueriesFunctionValuesourceDefFunction *outer$, IOSObjectArray *arg$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1, initWithOrgApacheLuceneQueriesFunctionValuesourceDefFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_, outer$, arg$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceDefFunction_$1)
