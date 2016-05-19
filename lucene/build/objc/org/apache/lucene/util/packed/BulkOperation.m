//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperation.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/AssertionError.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/util/packed/BulkOperation.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked1.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked10.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked11.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked12.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked13.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked14.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked15.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked16.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked17.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked18.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked19.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked2.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked20.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked21.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked22.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked23.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked24.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked3.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked4.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked5.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked6.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked7.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked8.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked9.h"
#include "org/apache/lucene/util/packed/BulkOperationPackedSingleBlock.h"
#include "org/apache/lucene/util/packed/PackedInts.h"

#pragma clang diagnostic ignored "-Wprotocol"

inline IOSObjectArray *OrgApacheLuceneUtilPackedBulkOperation_get_packedBulkOps();
static IOSObjectArray *OrgApacheLuceneUtilPackedBulkOperation_packedBulkOps;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilPackedBulkOperation, packedBulkOps, IOSObjectArray *)

inline IOSObjectArray *OrgApacheLuceneUtilPackedBulkOperation_get_packedSingleBlockBulkOps();
static IOSObjectArray *OrgApacheLuceneUtilPackedBulkOperation_packedSingleBlockBulkOps;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilPackedBulkOperation, packedSingleBlockBulkOps, IOSObjectArray *)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilPackedBulkOperation)

@implementation OrgApacheLuceneUtilPackedBulkOperation

+ (OrgApacheLuceneUtilPackedBulkOperation *)ofWithOrgApacheLuceneUtilPackedPackedInts_Format:(OrgApacheLuceneUtilPackedPackedInts_Format *)format
                                                                                     withInt:(jint)bitsPerValue {
  return OrgApacheLuceneUtilPackedBulkOperation_ofWithOrgApacheLuceneUtilPackedPackedInts_Format_withInt_(format, bitsPerValue);
}

- (jint)writeLongWithLong:(jlong)block
            withByteArray:(IOSByteArray *)blocks
                  withInt:(jint)blocksOffset {
  for (jint j = 1; j <= 8; ++j) {
    *IOSByteArray_GetRef(nil_chk(blocks), blocksOffset++) = (jbyte) (JreURShift64(block, (64 - (JreLShift32(j, 3)))));
  }
  return blocksOffset;
}

- (jint)computeIterationsWithInt:(jint)valueCount
                         withInt:(jint)ramBudget {
  jint iterations = ramBudget / ([self byteBlockCount] + 8 * [self byteValueCount]);
  if (iterations == 0) {
    return 1;
  }
  else if ((iterations - 1) * [self byteValueCount] >= valueCount) {
    return JreFpToInt(JavaLangMath_ceilWithDouble_((jdouble) valueCount / [self byteValueCount]));
  }
  else {
    return iterations;
  }
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilPackedBulkOperation_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilPackedBulkOperation class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilPackedBulkOperation_packedBulkOps, [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgApacheLuceneUtilPackedBulkOperationPacked1_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked2_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked3_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked4_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked5_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked6_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked7_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked8_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked9_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked10_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked11_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked12_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked13_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked14_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked15_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked16_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked17_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked18_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked19_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked20_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked21_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked22_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked23_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked24_init(), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(25), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(26), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(27), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(28), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(29), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(30), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(31), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(32), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(33), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(34), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(35), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(36), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(37), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(38), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(39), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(40), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(41), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(42), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(43), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(44), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(45), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(46), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(47), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(48), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(49), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(50), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(51), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(52), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(53), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(54), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(55), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(56), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(57), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(58), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(59), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(60), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(61), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(62), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(63), create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(64) } count:64 type:OrgApacheLuceneUtilPackedBulkOperation_class_()]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilPackedBulkOperation_packedSingleBlockBulkOps, [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(1), create_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(2), create_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(3), create_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(4), create_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(5), create_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(6), create_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(7), create_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(8), create_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(9), create_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(10), nil, create_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(12), nil, nil, nil, create_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(16), nil, nil, nil, nil, create_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(21), nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, create_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(32) } count:32 type:OrgApacheLuceneUtilPackedBulkOperation_class_()]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilPackedBulkOperation)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "ofWithOrgApacheLuceneUtilPackedPackedInts_Format:withInt:", "of", "Lorg.apache.lucene.util.packed.BulkOperation;", 0x9, NULL, NULL },
    { "writeLongWithLong:withByteArray:withInt:", "writeLong", "I", 0x4, NULL, NULL },
    { "computeIterationsWithInt:withInt:", "computeIterations", "I", 0x11, NULL, NULL },
    { "init", "BulkOperation", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "packedBulkOps", "packedBulkOps", 0x1a, "[Lorg.apache.lucene.util.packed.BulkOperation;", &OrgApacheLuceneUtilPackedBulkOperation_packedBulkOps, NULL, .constantValue.asLong = 0 },
    { "packedSingleBlockBulkOps", "packedSingleBlockBulkOps", 0x1a, "[Lorg.apache.lucene.util.packed.BulkOperation;", &OrgApacheLuceneUtilPackedBulkOperation_packedSingleBlockBulkOps, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedBulkOperation = { 2, "BulkOperation", "org.apache.lucene.util.packed", NULL, 0x400, 4, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedBulkOperation;
}

@end

OrgApacheLuceneUtilPackedBulkOperation *OrgApacheLuceneUtilPackedBulkOperation_ofWithOrgApacheLuceneUtilPackedPackedInts_Format_withInt_(OrgApacheLuceneUtilPackedPackedInts_Format *format, jint bitsPerValue) {
  OrgApacheLuceneUtilPackedBulkOperation_initialize();
  switch ([format ordinal]) {
    case OrgApacheLuceneUtilPackedPackedInts_Format_Enum_PACKED:
    JreAssert((IOSObjectArray_Get(nil_chk(OrgApacheLuceneUtilPackedBulkOperation_packedBulkOps), bitsPerValue - 1) != nil), (@"org/apache/lucene/util/packed/BulkOperation.java:134 condition failed: assert packedBulkOps[bitsPerValue - 1] != null;"));
    return IOSObjectArray_Get(OrgApacheLuceneUtilPackedBulkOperation_packedBulkOps, bitsPerValue - 1);
    case OrgApacheLuceneUtilPackedPackedInts_Format_Enum_PACKED_SINGLE_BLOCK:
    JreAssert((IOSObjectArray_Get(nil_chk(OrgApacheLuceneUtilPackedBulkOperation_packedSingleBlockBulkOps), bitsPerValue - 1) != nil), (@"org/apache/lucene/util/packed/BulkOperation.java:137 condition failed: assert packedSingleBlockBulkOps[bitsPerValue - 1] != null;"));
    return IOSObjectArray_Get(OrgApacheLuceneUtilPackedBulkOperation_packedSingleBlockBulkOps, bitsPerValue - 1);
    default:
    @throw create_JavaLangAssertionError_init();
  }
}

void OrgApacheLuceneUtilPackedBulkOperation_init(OrgApacheLuceneUtilPackedBulkOperation *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedBulkOperation)
