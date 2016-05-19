//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/RAMInputStream.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/EOFException.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/System.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/store/RAMFile.h"
#include "org/apache/lucene/store/RAMInputStream.h"
#include "org/apache/lucene/store/RAMOutputStream.h"

@interface OrgApacheLuceneStoreRAMInputStream () {
 @public
  OrgApacheLuceneStoreRAMFile *file_;
  jlong length_;
  IOSByteArray *currentBuffer_;
  jint currentBufferIndex_;
  jint bufferPosition_;
  jlong bufferStart_;
  jint bufferLength_;
}

- (void)switchCurrentBufferWithBoolean:(jboolean)enforceEOF;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreRAMInputStream, file_, OrgApacheLuceneStoreRAMFile *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreRAMInputStream, currentBuffer_, IOSByteArray *)

__attribute__((unused)) static void OrgApacheLuceneStoreRAMInputStream_switchCurrentBufferWithBoolean_(OrgApacheLuceneStoreRAMInputStream *self, jboolean enforceEOF);

@interface OrgApacheLuceneStoreRAMInputStream_$1 : OrgApacheLuceneStoreRAMInputStream {
 @public
  jlong val$offset_;
}

- (void)seekWithLong:(jlong)pos;

- (jlong)getFilePointer;

- (jlong)length;

- (OrgApacheLuceneStoreIndexInput *)sliceWithNSString:(NSString *)sliceDescription
                                             withLong:(jlong)ofs
                                             withLong:(jlong)len;

- (instancetype)initWithLong:(jlong)capture$0
                withNSString:(NSString *)arg$0
withOrgApacheLuceneStoreRAMFile:(OrgApacheLuceneStoreRAMFile *)arg$1
                    withLong:(jlong)arg$2;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreRAMInputStream_$1)

__attribute__((unused)) static void OrgApacheLuceneStoreRAMInputStream_$1_initWithLong_withNSString_withOrgApacheLuceneStoreRAMFile_withLong_(OrgApacheLuceneStoreRAMInputStream_$1 *self, jlong capture$0, NSString *arg$0, OrgApacheLuceneStoreRAMFile *arg$1, jlong arg$2);

__attribute__((unused)) static OrgApacheLuceneStoreRAMInputStream_$1 *new_OrgApacheLuceneStoreRAMInputStream_$1_initWithLong_withNSString_withOrgApacheLuceneStoreRAMFile_withLong_(jlong capture$0, NSString *arg$0, OrgApacheLuceneStoreRAMFile *arg$1, jlong arg$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneStoreRAMInputStream_$1 *create_OrgApacheLuceneStoreRAMInputStream_$1_initWithLong_withNSString_withOrgApacheLuceneStoreRAMFile_withLong_(jlong capture$0, NSString *arg$0, OrgApacheLuceneStoreRAMFile *arg$1, jlong arg$2);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreRAMInputStream_$1)

@implementation OrgApacheLuceneStoreRAMInputStream

+ (jint)BUFFER_SIZE {
  return OrgApacheLuceneStoreRAMInputStream_BUFFER_SIZE;
}

- (instancetype)initWithNSString:(NSString *)name
 withOrgApacheLuceneStoreRAMFile:(OrgApacheLuceneStoreRAMFile *)f {
  OrgApacheLuceneStoreRAMInputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_(self, name, f);
  return self;
}

- (instancetype)initWithNSString:(NSString *)name
 withOrgApacheLuceneStoreRAMFile:(OrgApacheLuceneStoreRAMFile *)f
                        withLong:(jlong)length {
  OrgApacheLuceneStoreRAMInputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withLong_(self, name, f, length);
  return self;
}

- (void)close {
}

- (jlong)length {
  return length_;
}

- (jbyte)readByte {
  if (bufferPosition_ >= bufferLength_) {
    currentBufferIndex_++;
    OrgApacheLuceneStoreRAMInputStream_switchCurrentBufferWithBoolean_(self, true);
  }
  return IOSByteArray_Get(nil_chk(currentBuffer_), bufferPosition_++);
}

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len {
  while (len > 0) {
    if (bufferPosition_ >= bufferLength_) {
      currentBufferIndex_++;
      OrgApacheLuceneStoreRAMInputStream_switchCurrentBufferWithBoolean_(self, true);
    }
    jint remainInBuffer = bufferLength_ - bufferPosition_;
    jint bytesToCopy = len < remainInBuffer ? len : remainInBuffer;
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(currentBuffer_, bufferPosition_, b, offset, bytesToCopy);
    offset += bytesToCopy;
    len -= bytesToCopy;
    bufferPosition_ += bytesToCopy;
  }
}

- (void)switchCurrentBufferWithBoolean:(jboolean)enforceEOF {
  OrgApacheLuceneStoreRAMInputStream_switchCurrentBufferWithBoolean_(self, enforceEOF);
}

- (jlong)getFilePointer {
  return currentBufferIndex_ < 0 ? 0 : bufferStart_ + bufferPosition_;
}

- (void)seekWithLong:(jlong)pos {
  if (currentBuffer_ == nil || pos < bufferStart_ || pos >= bufferStart_ + OrgApacheLuceneStoreRAMInputStream_BUFFER_SIZE) {
    currentBufferIndex_ = (jint) (pos / OrgApacheLuceneStoreRAMInputStream_BUFFER_SIZE);
    OrgApacheLuceneStoreRAMInputStream_switchCurrentBufferWithBoolean_(self, false);
  }
  bufferPosition_ = (jint) (pos % OrgApacheLuceneStoreRAMInputStream_BUFFER_SIZE);
}

- (OrgApacheLuceneStoreIndexInput *)sliceWithNSString:(NSString *)sliceDescription
                                             withLong:(jlong)offset
                                             withLong:(jlong)length {
  if (offset < 0 || length < 0 || offset + length > self->length_) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$@", @"slice() ", sliceDescription, @" out of bounds: ", self));
  }
  return create_OrgApacheLuceneStoreRAMInputStream_$1_initWithLong_withNSString_withOrgApacheLuceneStoreRAMFile_withLong_(offset, [self getFullSliceDescriptionWithNSString:sliceDescription], file_, offset + length);
}

- (void)dealloc {
  RELEASE_(file_);
  RELEASE_(currentBuffer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withOrgApacheLuceneStoreRAMFile:", "RAMInputStream", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "initWithNSString:withOrgApacheLuceneStoreRAMFile:withLong:", "RAMInputStream", NULL, 0x0, "Ljava.io.IOException;", NULL },
    { "close", NULL, "V", 0x1, NULL, NULL },
    { "length", NULL, "J", 0x1, NULL, NULL },
    { "readByte", NULL, "B", 0x1, "Ljava.io.IOException;", NULL },
    { "readBytesWithByteArray:withInt:withInt:", "readBytes", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "switchCurrentBufferWithBoolean:", "switchCurrentBuffer", "V", 0x12, "Ljava.io.IOException;", NULL },
    { "getFilePointer", NULL, "J", 0x1, NULL, NULL },
    { "seekWithLong:", "seek", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "sliceWithNSString:withLong:withLong:", "slice", "Lorg.apache.lucene.store.IndexInput;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BUFFER_SIZE", "BUFFER_SIZE", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneStoreRAMInputStream_BUFFER_SIZE },
    { "file_", NULL, 0x12, "Lorg.apache.lucene.store.RAMFile;", NULL, NULL, .constantValue.asLong = 0 },
    { "length_", NULL, 0x12, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "currentBuffer_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "currentBufferIndex_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "bufferPosition_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "bufferStart_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "bufferLength_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreRAMInputStream = { 2, "RAMInputStream", "org.apache.lucene.store", NULL, 0x1, 10, methods, 8, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneStoreRAMInputStream;
}

@end

void OrgApacheLuceneStoreRAMInputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_(OrgApacheLuceneStoreRAMInputStream *self, NSString *name, OrgApacheLuceneStoreRAMFile *f) {
  OrgApacheLuceneStoreRAMInputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withLong_(self, name, f, ((OrgApacheLuceneStoreRAMFile *) nil_chk(f))->length_);
}

OrgApacheLuceneStoreRAMInputStream *new_OrgApacheLuceneStoreRAMInputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_(NSString *name, OrgApacheLuceneStoreRAMFile *f) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreRAMInputStream, initWithNSString_withOrgApacheLuceneStoreRAMFile_, name, f)
}

OrgApacheLuceneStoreRAMInputStream *create_OrgApacheLuceneStoreRAMInputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_(NSString *name, OrgApacheLuceneStoreRAMFile *f) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreRAMInputStream, initWithNSString_withOrgApacheLuceneStoreRAMFile_, name, f)
}

void OrgApacheLuceneStoreRAMInputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withLong_(OrgApacheLuceneStoreRAMInputStream *self, NSString *name, OrgApacheLuceneStoreRAMFile *f, jlong length) {
  OrgApacheLuceneStoreIndexInput_initWithNSString_(self, JreStrcat("$$C", @"RAMInputStream(name=", name, ')'));
  JreStrongAssign(&self->file_, f);
  self->length_ = length;
  if (length / OrgApacheLuceneStoreRAMInputStream_BUFFER_SIZE >= JavaLangInteger_MAX_VALUE) {
    @throw create_JavaIoIOException_initWithNSString_(JreStrcat("$J$$", @"RAMInputStream too large length=", length, @": ", name));
  }
  self->currentBufferIndex_ = -1;
  JreStrongAssign(&self->currentBuffer_, nil);
}

OrgApacheLuceneStoreRAMInputStream *new_OrgApacheLuceneStoreRAMInputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withLong_(NSString *name, OrgApacheLuceneStoreRAMFile *f, jlong length) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreRAMInputStream, initWithNSString_withOrgApacheLuceneStoreRAMFile_withLong_, name, f, length)
}

OrgApacheLuceneStoreRAMInputStream *create_OrgApacheLuceneStoreRAMInputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withLong_(NSString *name, OrgApacheLuceneStoreRAMFile *f, jlong length) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreRAMInputStream, initWithNSString_withOrgApacheLuceneStoreRAMFile_withLong_, name, f, length)
}

void OrgApacheLuceneStoreRAMInputStream_switchCurrentBufferWithBoolean_(OrgApacheLuceneStoreRAMInputStream *self, jboolean enforceEOF) {
  self->bufferStart_ = (jlong) OrgApacheLuceneStoreRAMInputStream_BUFFER_SIZE * (jlong) self->currentBufferIndex_;
  if (self->bufferStart_ > self->length_ || self->currentBufferIndex_ >= [((OrgApacheLuceneStoreRAMFile *) nil_chk(self->file_)) numBuffers]) {
    if (enforceEOF) {
      @throw create_JavaIoEOFException_initWithNSString_(JreStrcat("$@", @"read past EOF: ", self));
    }
    else {
      self->currentBufferIndex_--;
      self->bufferPosition_ = OrgApacheLuceneStoreRAMInputStream_BUFFER_SIZE;
    }
  }
  else {
    JreStrongAssign(&self->currentBuffer_, [((OrgApacheLuceneStoreRAMFile *) nil_chk(self->file_)) getBufferWithInt:self->currentBufferIndex_]);
    self->bufferPosition_ = 0;
    jlong buflen = self->length_ - self->bufferStart_;
    self->bufferLength_ = buflen > OrgApacheLuceneStoreRAMInputStream_BUFFER_SIZE ? OrgApacheLuceneStoreRAMInputStream_BUFFER_SIZE : (jint) buflen;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreRAMInputStream)

@implementation OrgApacheLuceneStoreRAMInputStream_$1

- (void)seekWithLong:(jlong)pos {
  if (pos < 0LL) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Seeking to negative position: ", self));
  }
  [super seekWithLong:pos + val$offset_];
}

- (jlong)getFilePointer {
  return [super getFilePointer] - val$offset_;
}

- (jlong)length {
  return [super length] - val$offset_;
}

- (OrgApacheLuceneStoreIndexInput *)sliceWithNSString:(NSString *)sliceDescription
                                             withLong:(jlong)ofs
                                             withLong:(jlong)len {
  return [super sliceWithNSString:sliceDescription withLong:val$offset_ + ofs withLong:len];
}

- (instancetype)initWithLong:(jlong)capture$0
                withNSString:(NSString *)arg$0
withOrgApacheLuceneStoreRAMFile:(OrgApacheLuceneStoreRAMFile *)arg$1
                    withLong:(jlong)arg$2 {
  OrgApacheLuceneStoreRAMInputStream_$1_initWithLong_withNSString_withOrgApacheLuceneStoreRAMFile_withLong_(self, capture$0, arg$0, arg$1, arg$2);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "seekWithLong:", "seek", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getFilePointer", NULL, "J", 0x1, NULL, NULL },
    { "length", NULL, "J", 0x1, NULL, NULL },
    { "sliceWithNSString:withLong:withLong:", "slice", "Lorg.apache.lucene.store.IndexInput;", 0x1, "Ljava.io.IOException;", NULL },
    { "initWithLong:withNSString:withOrgApacheLuceneStoreRAMFile:withLong:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$offset_", NULL, 0x1012, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneStoreRAMInputStream", "sliceWithNSString:withLong:withLong:" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreRAMInputStream_$1 = { 2, "", "org.apache.lucene.store", "RAMInputStream", 0x8008, 5, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneStoreRAMInputStream_$1;
}

@end

void OrgApacheLuceneStoreRAMInputStream_$1_initWithLong_withNSString_withOrgApacheLuceneStoreRAMFile_withLong_(OrgApacheLuceneStoreRAMInputStream_$1 *self, jlong capture$0, NSString *arg$0, OrgApacheLuceneStoreRAMFile *arg$1, jlong arg$2) {
  self->val$offset_ = capture$0;
  OrgApacheLuceneStoreRAMInputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withLong_(self, arg$0, arg$1, arg$2);
  {
    [self seekWithLong:0LL];
  }
}

OrgApacheLuceneStoreRAMInputStream_$1 *new_OrgApacheLuceneStoreRAMInputStream_$1_initWithLong_withNSString_withOrgApacheLuceneStoreRAMFile_withLong_(jlong capture$0, NSString *arg$0, OrgApacheLuceneStoreRAMFile *arg$1, jlong arg$2) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreRAMInputStream_$1, initWithLong_withNSString_withOrgApacheLuceneStoreRAMFile_withLong_, capture$0, arg$0, arg$1, arg$2)
}

OrgApacheLuceneStoreRAMInputStream_$1 *create_OrgApacheLuceneStoreRAMInputStream_$1_initWithLong_withNSString_withOrgApacheLuceneStoreRAMFile_withLong_(jlong capture$0, NSString *arg$0, OrgApacheLuceneStoreRAMFile *arg$1, jlong arg$2) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreRAMInputStream_$1, initWithLong_withNSString_withOrgApacheLuceneStoreRAMFile_withLong_, capture$0, arg$0, arg$1, arg$2)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreRAMInputStream_$1)
