//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/RAMOutputStream.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/System.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/Set.h"
#include "java/util/zip/CRC32.h"
#include "java/util/zip/Checksum.h"
#include "org/apache/lucene/store/BufferedChecksum.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/store/IndexOutput.h"
#include "org/apache/lucene/store/RAMFile.h"
#include "org/apache/lucene/store/RAMOutputStream.h"
#include "org/apache/lucene/util/Accountable.h"
#include "org/apache/lucene/util/Accountables.h"

@interface OrgApacheLuceneStoreRAMOutputStream () {
 @public
  OrgApacheLuceneStoreRAMFile *file_;
  IOSByteArray *currentBuffer_;
  jint currentBufferIndex_;
  jint bufferPosition_;
  jlong bufferStart_;
  jint bufferLength_;
  id<JavaUtilZipChecksum> crc_;
}

- (void)switchCurrentBuffer;

- (void)setFileLength;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreRAMOutputStream, file_, OrgApacheLuceneStoreRAMFile *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreRAMOutputStream, currentBuffer_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreRAMOutputStream, crc_, id<JavaUtilZipChecksum>)

__attribute__((unused)) static void OrgApacheLuceneStoreRAMOutputStream_switchCurrentBuffer(OrgApacheLuceneStoreRAMOutputStream *self);

__attribute__((unused)) static void OrgApacheLuceneStoreRAMOutputStream_setFileLength(OrgApacheLuceneStoreRAMOutputStream *self);

@implementation OrgApacheLuceneStoreRAMOutputStream

+ (jint)BUFFER_SIZE {
  return OrgApacheLuceneStoreRAMOutputStream_BUFFER_SIZE;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneStoreRAMOutputStream_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneStoreRAMFile:(OrgApacheLuceneStoreRAMFile *)f
                                        withBoolean:(jboolean)checksum {
  OrgApacheLuceneStoreRAMOutputStream_initWithOrgApacheLuceneStoreRAMFile_withBoolean_(self, f, checksum);
  return self;
}

- (instancetype)initWithNSString:(NSString *)name
 withOrgApacheLuceneStoreRAMFile:(OrgApacheLuceneStoreRAMFile *)f
                     withBoolean:(jboolean)checksum {
  OrgApacheLuceneStoreRAMOutputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withBoolean_(self, name, f, checksum);
  return self;
}

- (void)writeToWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg {
  [self flush];
  jlong end = ((OrgApacheLuceneStoreRAMFile *) nil_chk(file_))->length_;
  jlong pos = 0;
  jint buffer = 0;
  while (pos < end) {
    jint length = OrgApacheLuceneStoreRAMOutputStream_BUFFER_SIZE;
    jlong nextPos = pos + length;
    if (nextPos > end) {
      length = (jint) (end - pos);
    }
    [((OrgApacheLuceneStoreDataOutput *) nil_chk(outArg)) writeBytesWithByteArray:[file_ getBufferWithInt:buffer++] withInt:length];
    pos = nextPos;
  }
}

- (void)writeToWithByteArray:(IOSByteArray *)bytes
                     withInt:(jint)offset {
  [self flush];
  jlong end = ((OrgApacheLuceneStoreRAMFile *) nil_chk(file_))->length_;
  jlong pos = 0;
  jint buffer = 0;
  jint bytesUpto = offset;
  while (pos < end) {
    jint length = OrgApacheLuceneStoreRAMOutputStream_BUFFER_SIZE;
    jlong nextPos = pos + length;
    if (nextPos > end) {
      length = (jint) (end - pos);
    }
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([file_ getBufferWithInt:buffer++], 0, bytes, bytesUpto, length);
    bytesUpto += length;
    pos = nextPos;
  }
}

- (void)reset {
  JreStrongAssign(&currentBuffer_, nil);
  currentBufferIndex_ = -1;
  bufferPosition_ = 0;
  bufferStart_ = 0;
  bufferLength_ = 0;
  [((OrgApacheLuceneStoreRAMFile *) nil_chk(file_)) setLengthWithLong:0];
  if (crc_ != nil) {
    [crc_ reset];
  }
}

- (void)close {
  [self flush];
}

- (void)writeByteWithByte:(jbyte)b {
  if (bufferPosition_ == bufferLength_) {
    currentBufferIndex_++;
    OrgApacheLuceneStoreRAMOutputStream_switchCurrentBuffer(self);
  }
  if (crc_ != nil) {
    [crc_ updateWithInt:b];
  }
  *IOSByteArray_GetRef(nil_chk(currentBuffer_), bufferPosition_++) = b;
}

- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)offset
                        withInt:(jint)len {
  JreAssert((b != nil), (@"org/apache/lucene/store/RAMOutputStream.java:143 condition failed: assert b != null;"));
  if (crc_ != nil) {
    [crc_ updateWithByteArray:b withInt:offset withInt:len];
  }
  while (len > 0) {
    if (bufferPosition_ == bufferLength_) {
      currentBufferIndex_++;
      OrgApacheLuceneStoreRAMOutputStream_switchCurrentBuffer(self);
    }
    jint remainInBuffer = ((IOSByteArray *) nil_chk(currentBuffer_))->size_ - bufferPosition_;
    jint bytesToCopy = len < remainInBuffer ? len : remainInBuffer;
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(b, offset, currentBuffer_, bufferPosition_, bytesToCopy);
    offset += bytesToCopy;
    len -= bytesToCopy;
    bufferPosition_ += bytesToCopy;
  }
}

- (void)switchCurrentBuffer {
  OrgApacheLuceneStoreRAMOutputStream_switchCurrentBuffer(self);
}

- (void)setFileLength {
  OrgApacheLuceneStoreRAMOutputStream_setFileLength(self);
}

- (void)flush {
  OrgApacheLuceneStoreRAMOutputStream_setFileLength(self);
}

- (jlong)getFilePointer {
  return currentBufferIndex_ < 0 ? 0 : bufferStart_ + bufferPosition_;
}

- (jlong)ramBytesUsed {
  return (jlong) [((OrgApacheLuceneStoreRAMFile *) nil_chk(file_)) numBuffers] * (jlong) OrgApacheLuceneStoreRAMOutputStream_BUFFER_SIZE;
}

- (id<JavaUtilCollection>)getChildResources {
  return JavaUtilCollections_singletonWithId_(OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"file", file_));
}

- (jlong)getChecksum {
  if (crc_ == nil) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(@"internal RAMOutputStream created with checksum disabled");
  }
  else {
    return [crc_ getValue];
  }
}

- (void)dealloc {
  RELEASE_(file_);
  RELEASE_(currentBuffer_);
  RELEASE_(crc_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "RAMOutputStream", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneStoreRAMFile:withBoolean:", "RAMOutputStream", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withOrgApacheLuceneStoreRAMFile:withBoolean:", "RAMOutputStream", NULL, 0x1, NULL, NULL },
    { "writeToWithOrgApacheLuceneStoreDataOutput:", "writeTo", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "writeToWithByteArray:withInt:", "writeTo", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "reset", NULL, "V", 0x1, NULL, NULL },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "writeByteWithByte:", "writeByte", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "writeBytesWithByteArray:withInt:withInt:", "writeBytes", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "switchCurrentBuffer", NULL, "V", 0x12, NULL, NULL },
    { "setFileLength", NULL, "V", 0x2, NULL, NULL },
    { "flush", NULL, "V", 0x4, "Ljava.io.IOException;", NULL },
    { "getFilePointer", NULL, "J", 0x1, NULL, NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "getChildResources", NULL, "Ljava.util.Collection;", 0x1, NULL, "()Ljava/util/Collection<Lorg/apache/lucene/util/Accountable;>;" },
    { "getChecksum", NULL, "J", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BUFFER_SIZE", "BUFFER_SIZE", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneStoreRAMOutputStream_BUFFER_SIZE },
    { "file_", NULL, 0x12, "Lorg.apache.lucene.store.RAMFile;", NULL, NULL, .constantValue.asLong = 0 },
    { "currentBuffer_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "currentBufferIndex_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "bufferPosition_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "bufferStart_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "bufferLength_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "crc_", NULL, 0x12, "Ljava.util.zip.Checksum;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreRAMOutputStream = { 2, "RAMOutputStream", "org.apache.lucene.store", NULL, 0x1, 16, methods, 8, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneStoreRAMOutputStream;
}

@end

void OrgApacheLuceneStoreRAMOutputStream_init(OrgApacheLuceneStoreRAMOutputStream *self) {
  OrgApacheLuceneStoreRAMOutputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withBoolean_(self, @"noname", create_OrgApacheLuceneStoreRAMFile_init(), false);
}

OrgApacheLuceneStoreRAMOutputStream *new_OrgApacheLuceneStoreRAMOutputStream_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreRAMOutputStream, init)
}

OrgApacheLuceneStoreRAMOutputStream *create_OrgApacheLuceneStoreRAMOutputStream_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreRAMOutputStream, init)
}

void OrgApacheLuceneStoreRAMOutputStream_initWithOrgApacheLuceneStoreRAMFile_withBoolean_(OrgApacheLuceneStoreRAMOutputStream *self, OrgApacheLuceneStoreRAMFile *f, jboolean checksum) {
  OrgApacheLuceneStoreRAMOutputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withBoolean_(self, @"noname", f, checksum);
}

OrgApacheLuceneStoreRAMOutputStream *new_OrgApacheLuceneStoreRAMOutputStream_initWithOrgApacheLuceneStoreRAMFile_withBoolean_(OrgApacheLuceneStoreRAMFile *f, jboolean checksum) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreRAMOutputStream, initWithOrgApacheLuceneStoreRAMFile_withBoolean_, f, checksum)
}

OrgApacheLuceneStoreRAMOutputStream *create_OrgApacheLuceneStoreRAMOutputStream_initWithOrgApacheLuceneStoreRAMFile_withBoolean_(OrgApacheLuceneStoreRAMFile *f, jboolean checksum) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreRAMOutputStream, initWithOrgApacheLuceneStoreRAMFile_withBoolean_, f, checksum)
}

void OrgApacheLuceneStoreRAMOutputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withBoolean_(OrgApacheLuceneStoreRAMOutputStream *self, NSString *name, OrgApacheLuceneStoreRAMFile *f, jboolean checksum) {
  OrgApacheLuceneStoreIndexOutput_initWithNSString_(self, JreStrcat("$$$", @"RAMOutputStream(name=\"", name, @"\")"));
  JreStrongAssign(&self->file_, f);
  self->currentBufferIndex_ = -1;
  JreStrongAssign(&self->currentBuffer_, nil);
  if (checksum) {
    JreStrongAssignAndConsume(&self->crc_, new_OrgApacheLuceneStoreBufferedChecksum_initWithJavaUtilZipChecksum_(create_JavaUtilZipCRC32_init()));
  }
  else {
    JreStrongAssign(&self->crc_, nil);
  }
}

OrgApacheLuceneStoreRAMOutputStream *new_OrgApacheLuceneStoreRAMOutputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withBoolean_(NSString *name, OrgApacheLuceneStoreRAMFile *f, jboolean checksum) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreRAMOutputStream, initWithNSString_withOrgApacheLuceneStoreRAMFile_withBoolean_, name, f, checksum)
}

OrgApacheLuceneStoreRAMOutputStream *create_OrgApacheLuceneStoreRAMOutputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withBoolean_(NSString *name, OrgApacheLuceneStoreRAMFile *f, jboolean checksum) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreRAMOutputStream, initWithNSString_withOrgApacheLuceneStoreRAMFile_withBoolean_, name, f, checksum)
}

void OrgApacheLuceneStoreRAMOutputStream_switchCurrentBuffer(OrgApacheLuceneStoreRAMOutputStream *self) {
  if (self->currentBufferIndex_ == [((OrgApacheLuceneStoreRAMFile *) nil_chk(self->file_)) numBuffers]) {
    JreStrongAssign(&self->currentBuffer_, [self->file_ addBufferWithInt:OrgApacheLuceneStoreRAMOutputStream_BUFFER_SIZE]);
  }
  else {
    JreStrongAssign(&self->currentBuffer_, [self->file_ getBufferWithInt:self->currentBufferIndex_]);
  }
  self->bufferPosition_ = 0;
  self->bufferStart_ = (jlong) OrgApacheLuceneStoreRAMOutputStream_BUFFER_SIZE * (jlong) self->currentBufferIndex_;
  self->bufferLength_ = ((IOSByteArray *) nil_chk(self->currentBuffer_))->size_;
}

void OrgApacheLuceneStoreRAMOutputStream_setFileLength(OrgApacheLuceneStoreRAMOutputStream *self) {
  jlong pointer = self->bufferStart_ + self->bufferPosition_;
  if (pointer > ((OrgApacheLuceneStoreRAMFile *) nil_chk(self->file_))->length_) {
    [self->file_ setLengthWithLong:pointer];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreRAMOutputStream)
