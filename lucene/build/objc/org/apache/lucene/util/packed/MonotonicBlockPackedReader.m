//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/MonotonicBlockPackedReader.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Float.h"
#include "java/lang/Math.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/util/BitUtil.h"
#include "org/apache/lucene/util/LongValues.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/packed/AbstractBlockPackedWriter.h"
#include "org/apache/lucene/util/packed/MonotonicBlockPackedReader.h"
#include "org/apache/lucene/util/packed/PackedInts.h"

@interface OrgApacheLuceneUtilPackedMonotonicBlockPackedReader ()

- (instancetype)initWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg
                                               withInt:(jint)packedIntsVersion
                                               withInt:(jint)blockSize
                                              withLong:(jlong)valueCount
                                           withBoolean:(jboolean)direct;

@end

__attribute__((unused)) static void OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *self, OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct);

__attribute__((unused)) static OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *new_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *create_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct);

@interface OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1 : OrgApacheLuceneUtilPackedMonotonicBlockPackedReader

- (jlong)decodeDeltaWithLong:(jlong)delta;

- (instancetype)initWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)arg$0
                                               withInt:(jint)arg$1
                                               withInt:(jint)arg$2
                                              withLong:(jlong)arg$3
                                           withBoolean:(jboolean)arg$4;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1)

__attribute__((unused)) static void OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1 *self, OrgApacheLuceneStoreIndexInput *arg$0, jint arg$1, jint arg$2, jlong arg$3, jboolean arg$4);

__attribute__((unused)) static OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1 *new_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneStoreIndexInput *arg$0, jint arg$1, jint arg$2, jlong arg$3, jboolean arg$4) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1 *create_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneStoreIndexInput *arg$0, jint arg$1, jint arg$2, jlong arg$3, jboolean arg$4);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1)

@implementation OrgApacheLuceneUtilPackedMonotonicBlockPackedReader

+ (jlong)expectedWithLong:(jlong)origin
                withFloat:(jfloat)average
                  withInt:(jint)index {
  return OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_expectedWithLong_withFloat_withInt_(origin, average, index);
}

+ (OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *)ofWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg
                                                                                      withInt:(jint)packedIntsVersion
                                                                                      withInt:(jint)blockSize
                                                                                     withLong:(jlong)valueCount
                                                                                  withBoolean:(jboolean)direct {
  return OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_ofWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(inArg, packedIntsVersion, blockSize, valueCount, direct);
}

- (instancetype)initWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg
                                               withInt:(jint)packedIntsVersion
                                               withInt:(jint)blockSize
                                              withLong:(jlong)valueCount
                                           withBoolean:(jboolean)direct {
  OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(self, inArg, packedIntsVersion, blockSize, valueCount, direct);
  return self;
}

- (jlong)getWithLong:(jlong)index {
  JreAssert((index >= 0 && index < valueCount_), (@"org/apache/lucene/util/packed/MonotonicBlockPackedReader.java:105 condition failed: assert index >= 0 && index < valueCount;"));
  jint block = (jint) (JreURShift64(index, blockShift_));
  jint idx = (jint) (index & blockMask_);
  return OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_expectedWithLong_withFloat_withInt_(IOSLongArray_Get(nil_chk(minValues_), block), IOSFloatArray_Get(nil_chk(averages_), block), idx) + [self decodeDeltaWithLong:[((OrgApacheLuceneUtilPackedPackedInts_Reader *) nil_chk(IOSObjectArray_Get(nil_chk(subReaders_), block))) getWithInt:idx]];
}

- (jlong)decodeDeltaWithLong:(jlong)delta {
  return delta;
}

- (jlong)size {
  return valueCount_;
}

- (jlong)ramBytesUsed {
  jlong sizeInBytes = 0;
  sizeInBytes += OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(minValues_);
  sizeInBytes += OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithFloatArray_(averages_);
  {
    IOSObjectArray *a__ = subReaders_;
    OrgApacheLuceneUtilPackedPackedInts_Reader * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneUtilPackedPackedInts_Reader * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneUtilPackedPackedInts_Reader *reader = *b__++;
      sizeInBytes += [((OrgApacheLuceneUtilPackedPackedInts_Reader *) nil_chk(reader)) ramBytesUsed];
    }
  }
  return sizeInBytes;
}

- (id<JavaUtilCollection>)getChildResources {
  return JavaUtilCollections_emptyList();
}

- (NSString *)description {
  jlong avgBPV = ((IOSObjectArray *) nil_chk(subReaders_))->size_ == 0 ? 0 : sumBPV_ / subReaders_->size_;
  return JreStrcat("$$I$J$JC", [[self getClass] getSimpleName], @"(blocksize=", (JreLShift32(1, blockShift_)), @",size=", valueCount_, @",avgBPV=", avgBPV, ')');
}

- (void)dealloc {
  RELEASE_(minValues_);
  RELEASE_(averages_);
  RELEASE_(subReaders_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "expectedWithLong:withFloat:withInt:", "expected", "J", 0x8, NULL, NULL },
    { "ofWithOrgApacheLuceneStoreIndexInput:withInt:withInt:withLong:withBoolean:", "of", "Lorg.apache.lucene.util.packed.MonotonicBlockPackedReader;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneStoreIndexInput:withInt:withInt:withLong:withBoolean:", "MonotonicBlockPackedReader", NULL, 0x2, "Ljava.io.IOException;", NULL },
    { "getWithLong:", "get", "J", 0x1, NULL, NULL },
    { "decodeDeltaWithLong:", "decodeDelta", "J", 0x4, NULL, NULL },
    { "size", NULL, "J", 0x1, NULL, NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "getChildResources", NULL, "Ljava.util.Collection;", 0x1, NULL, "()Ljava/util/Collection<Lorg/apache/lucene/util/Accountable;>;" },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "blockShift_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "blockMask_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "valueCount_", NULL, 0x10, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "minValues_", NULL, 0x10, "[J", NULL, NULL, .constantValue.asLong = 0 },
    { "averages_", NULL, 0x10, "[F", NULL, NULL, .constantValue.asLong = 0 },
    { "subReaders_", NULL, 0x10, "[Lorg.apache.lucene.util.packed.PackedInts$Reader;", NULL, NULL, .constantValue.asLong = 0 },
    { "sumBPV_", NULL, 0x10, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedMonotonicBlockPackedReader = { 2, "MonotonicBlockPackedReader", "org.apache.lucene.util.packed", NULL, 0x1, 9, methods, 7, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader;
}

@end

jlong OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_expectedWithLong_withFloat_withInt_(jlong origin, jfloat average, jint index) {
  OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initialize();
  return origin + JreFpToLong((average * (jlong) index));
}

OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_ofWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct) {
  OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initialize();
  if (packedIntsVersion < OrgApacheLuceneUtilPackedPackedInts_VERSION_MONOTONIC_WITHOUT_ZIGZAG) {
    return create_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(inArg, packedIntsVersion, blockSize, valueCount, direct);
  }
  return create_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(inArg, packedIntsVersion, blockSize, valueCount, direct);
}

void OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *self, OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct) {
  OrgApacheLuceneUtilLongValues_init(self);
  self->valueCount_ = valueCount;
  self->blockShift_ = OrgApacheLuceneUtilPackedPackedInts_checkBlockSizeWithInt_withInt_withInt_(blockSize, OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_MIN_BLOCK_SIZE, OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_MAX_BLOCK_SIZE);
  self->blockMask_ = blockSize - 1;
  jint numBlocks = OrgApacheLuceneUtilPackedPackedInts_numBlocksWithLong_withInt_(valueCount, blockSize);
  JreStrongAssignAndConsume(&self->minValues_, [IOSLongArray newArrayWithLength:numBlocks]);
  JreStrongAssignAndConsume(&self->averages_, [IOSFloatArray newArrayWithLength:numBlocks]);
  JreStrongAssignAndConsume(&self->subReaders_, [IOSObjectArray newArrayWithLength:numBlocks type:OrgApacheLuceneUtilPackedPackedInts_Reader_class_()]);
  jlong sumBPV = 0;
  for (jint i = 0; i < numBlocks; ++i) {
    if (packedIntsVersion < OrgApacheLuceneUtilPackedPackedInts_VERSION_MONOTONIC_WITHOUT_ZIGZAG) {
      *IOSLongArray_GetRef(self->minValues_, i) = [((OrgApacheLuceneStoreIndexInput *) nil_chk(inArg)) readVLong];
    }
    else {
      *IOSLongArray_GetRef(self->minValues_, i) = [((OrgApacheLuceneStoreIndexInput *) nil_chk(inArg)) readZLong];
    }
    *IOSFloatArray_GetRef(self->averages_, i) = JavaLangFloat_intBitsToFloatWithInt_([inArg readInt]);
    jint bitsPerValue = [inArg readVInt];
    sumBPV += bitsPerValue;
    if (bitsPerValue > 64) {
      @throw create_JavaIoIOException_initWithNSString_(@"Corrupted");
    }
    if (bitsPerValue == 0) {
      IOSObjectArray_SetAndConsume(self->subReaders_, i, new_OrgApacheLuceneUtilPackedPackedInts_NullReader_initWithInt_(blockSize));
    }
    else {
      jint size = (jint) JavaLangMath_minWithLong_withLong_(blockSize, valueCount - (jlong) i * blockSize);
      if (direct) {
        jlong pointer = [inArg getFilePointer];
        IOSObjectArray_Set(self->subReaders_, i, OrgApacheLuceneUtilPackedPackedInts_getDirectReaderNoHeaderWithOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilPackedPackedInts_Format_withInt_withInt_withInt_(inArg, JreLoadEnum(OrgApacheLuceneUtilPackedPackedInts_Format, PACKED), packedIntsVersion, size, bitsPerValue));
        [inArg seekWithLong:pointer + [((OrgApacheLuceneUtilPackedPackedInts_Format *) nil_chk(JreLoadEnum(OrgApacheLuceneUtilPackedPackedInts_Format, PACKED))) byteCountWithInt:packedIntsVersion withInt:size withInt:bitsPerValue]];
      }
      else {
        IOSObjectArray_Set(self->subReaders_, i, OrgApacheLuceneUtilPackedPackedInts_getReaderNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_Format_withInt_withInt_withInt_(inArg, JreLoadEnum(OrgApacheLuceneUtilPackedPackedInts_Format, PACKED), packedIntsVersion, size, bitsPerValue));
      }
    }
  }
  self->sumBPV_ = sumBPV;
}

OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *new_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader, initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_, inArg, packedIntsVersion, blockSize, valueCount, direct)
}

OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *create_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader, initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_, inArg, packedIntsVersion, blockSize, valueCount, direct)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader)

@implementation OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1

- (jlong)decodeDeltaWithLong:(jlong)delta {
  return OrgApacheLuceneUtilBitUtil_zigZagDecodeWithLong_(delta);
}

- (instancetype)initWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)arg$0
                                               withInt:(jint)arg$1
                                               withInt:(jint)arg$2
                                              withLong:(jlong)arg$3
                                           withBoolean:(jboolean)arg$4 {
  OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(self, arg$0, arg$1, arg$2, arg$3, arg$4);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "decodeDeltaWithLong:", "decodeDelta", "J", 0x4, NULL, NULL },
    { "initWithOrgApacheLuceneStoreIndexInput:withInt:withInt:withLong:withBoolean:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneUtilPackedMonotonicBlockPackedReader", "ofWithOrgApacheLuceneStoreIndexInput:withInt:withInt:withLong:withBoolean:" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1 = { 2, "", "org.apache.lucene.util.packed", "MonotonicBlockPackedReader", 0x8008, 2, methods, 0, NULL, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1;
}

@end

void OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1 *self, OrgApacheLuceneStoreIndexInput *arg$0, jint arg$1, jint arg$2, jlong arg$3, jboolean arg$4) {
  OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(self, arg$0, arg$1, arg$2, arg$3, arg$4);
}

OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1 *new_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneStoreIndexInput *arg$0, jint arg$1, jint arg$2, jlong arg$3, jboolean arg$4) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1, initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_, arg$0, arg$1, arg$2, arg$3, arg$4)
}

OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1 *create_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneStoreIndexInput *arg$0, jint arg$1, jint arg$2, jlong arg$3, jboolean arg$4) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1, initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_, arg$0, arg$1, arg$2, arg$3, arg$4)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_$1)
