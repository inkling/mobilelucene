//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/SumFloatFunction.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/valuesource/MultiFloatFunction.h"
#include "org/apache/lucene/queries/function/valuesource/SumFloatFunction.h"

@implementation OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSourceArray:(IOSObjectArray *)sources {
  OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(self, sources);
  return self;
}

- (NSString *)name {
  return @"sum";
}

- (jfloat)funcWithInt:(jint)doc
withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)valsArr {
  jfloat val = 0.0f;
  {
    IOSObjectArray *a__ = valsArr;
    OrgApacheLuceneQueriesFunctionFunctionValues * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneQueriesFunctionFunctionValues * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneQueriesFunctionFunctionValues *vals = *b__++;
      JrePlusAssignFloatF(&val, [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(vals)) floatValWithInt:doc]);
    }
  }
  return val;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueriesFunctionValueSourceArray:", "SumFloatFunction", NULL, 0x1, NULL, NULL },
    { "name", NULL, "Ljava.lang.String;", 0x4, NULL, NULL },
    { "funcWithInt:withOrgApacheLuceneQueriesFunctionFunctionValuesArray:", "func", "F", 0x4, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction = { 2, "SumFloatFunction", "org.apache.lucene.queries.function.valuesource", NULL, 0x1, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction *self, IOSObjectArray *sources) {
  OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(self, sources);
}

OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction *new_OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(IOSObjectArray *sources) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction, initWithOrgApacheLuceneQueriesFunctionValueSourceArray_, sources)
}

OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction *create_OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(IOSObjectArray *sources) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction, initWithOrgApacheLuceneQueriesFunctionValueSourceArray_, sources)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceSumFloatFunction)
