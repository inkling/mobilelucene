//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/DocValuesProducer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/codecs/DocValuesProducer.h"
#include "org/apache/lucene/index/BinaryDocValues.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/NumericDocValues.h"
#include "org/apache/lucene/index/SortedDocValues.h"
#include "org/apache/lucene/index/SortedNumericDocValues.h"
#include "org/apache/lucene/index/SortedSetDocValues.h"
#include "org/apache/lucene/util/Bits.h"

#pragma clang diagnostic ignored "-Wprotocol"

@implementation OrgApacheLuceneCodecsDocValuesProducer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsDocValuesProducer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneIndexNumericDocValues *)getNumericWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneIndexBinaryDocValues *)getBinaryWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneIndexSortedDocValues *)getSortedWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneIndexSortedNumericDocValues *)getSortedNumericWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneIndexSortedSetDocValues *)getSortedSetWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<OrgApacheLuceneUtilBits>)getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)checkIntegrity {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneCodecsDocValuesProducer *)getMergeInstance {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "DocValuesProducer", NULL, 0x4, NULL, NULL },
    { "getNumericWithOrgApacheLuceneIndexFieldInfo:", "getNumeric", "Lorg.apache.lucene.index.NumericDocValues;", 0x401, "Ljava.io.IOException;", NULL },
    { "getBinaryWithOrgApacheLuceneIndexFieldInfo:", "getBinary", "Lorg.apache.lucene.index.BinaryDocValues;", 0x401, "Ljava.io.IOException;", NULL },
    { "getSortedWithOrgApacheLuceneIndexFieldInfo:", "getSorted", "Lorg.apache.lucene.index.SortedDocValues;", 0x401, "Ljava.io.IOException;", NULL },
    { "getSortedNumericWithOrgApacheLuceneIndexFieldInfo:", "getSortedNumeric", "Lorg.apache.lucene.index.SortedNumericDocValues;", 0x401, "Ljava.io.IOException;", NULL },
    { "getSortedSetWithOrgApacheLuceneIndexFieldInfo:", "getSortedSet", "Lorg.apache.lucene.index.SortedSetDocValues;", 0x401, "Ljava.io.IOException;", NULL },
    { "getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:", "getDocsWithField", "Lorg.apache.lucene.util.Bits;", 0x401, "Ljava.io.IOException;", NULL },
    { "checkIntegrity", NULL, "V", 0x401, "Ljava.io.IOException;", NULL },
    { "getMergeInstance", NULL, "Lorg.apache.lucene.codecs.DocValuesProducer;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsDocValuesProducer = { 2, "DocValuesProducer", "org.apache.lucene.codecs", NULL, 0x401, 9, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsDocValuesProducer;
}

@end

void OrgApacheLuceneCodecsDocValuesProducer_init(OrgApacheLuceneCodecsDocValuesProducer *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsDocValuesProducer)
