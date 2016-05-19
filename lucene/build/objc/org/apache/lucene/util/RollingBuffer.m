//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/RollingBuffer.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/RollingBuffer.h"

@interface OrgApacheLuceneUtilRollingBuffer () {
 @public
  IOSObjectArray *buffer_;
  jint nextWrite_;
  jint nextPos_;
  jint count_;
}

- (jboolean)inBoundsWithInt:(jint)pos;

- (jint)getIndexWithInt:(jint)pos;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilRollingBuffer, buffer_, IOSObjectArray *)

__attribute__((unused)) static jboolean OrgApacheLuceneUtilRollingBuffer_inBoundsWithInt_(OrgApacheLuceneUtilRollingBuffer *self, jint pos);

__attribute__((unused)) static jint OrgApacheLuceneUtilRollingBuffer_getIndexWithInt_(OrgApacheLuceneUtilRollingBuffer *self, jint pos);

@interface OrgApacheLuceneUtilRollingBuffer_Resettable : NSObject

@end

@implementation OrgApacheLuceneUtilRollingBuffer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilRollingBuffer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id)newInstance {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)reset {
  nextWrite_--;
  while (count_ > 0) {
    if (nextWrite_ == -1) {
      nextWrite_ = ((IOSObjectArray *) nil_chk(buffer_))->size_ - 1;
    }
    [((id<OrgApacheLuceneUtilRollingBuffer_Resettable>) nil_chk(IOSObjectArray_Get(nil_chk(buffer_), nextWrite_--))) reset];
    count_--;
  }
  nextWrite_ = 0;
  nextPos_ = 0;
  count_ = 0;
}

- (jboolean)inBoundsWithInt:(jint)pos {
  return OrgApacheLuceneUtilRollingBuffer_inBoundsWithInt_(self, pos);
}

- (jint)getIndexWithInt:(jint)pos {
  return OrgApacheLuceneUtilRollingBuffer_getIndexWithInt_(self, pos);
}

- (id)getWithInt:(jint)pos {
  while (pos >= nextPos_) {
    if (count_ == ((IOSObjectArray *) nil_chk(buffer_))->size_) {
      IOSObjectArray *newBuffer = [IOSObjectArray arrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(1 + count_, JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF)) type:OrgApacheLuceneUtilRollingBuffer_Resettable_class_()];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer_, nextWrite_, newBuffer, 0, ((IOSObjectArray *) nil_chk(buffer_))->size_ - nextWrite_);
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer_, 0, newBuffer, ((IOSObjectArray *) nil_chk(buffer_))->size_ - nextWrite_, nextWrite_);
      for (jint i = ((IOSObjectArray *) nil_chk(buffer_))->size_; i < newBuffer->size_; i++) {
        IOSObjectArray_Set(newBuffer, i, [self newInstance]);
      }
      nextWrite_ = ((IOSObjectArray *) nil_chk(buffer_))->size_;
      JreStrongAssign(&buffer_, newBuffer);
    }
    if (nextWrite_ == buffer_->size_) {
      nextWrite_ = 0;
    }
    nextWrite_++;
    nextPos_++;
    count_++;
  }
  JreAssert((OrgApacheLuceneUtilRollingBuffer_inBoundsWithInt_(self, pos)), (@"org/apache/lucene/util/RollingBuffer.java:105 condition failed: assert inBounds(pos);"));
  jint index = OrgApacheLuceneUtilRollingBuffer_getIndexWithInt_(self, pos);
  return IOSObjectArray_Get(nil_chk(buffer_), index);
}

- (jint)getMaxPos {
  return nextPos_ - 1;
}

- (void)freeBeforeWithInt:(jint)pos {
  jint toFree = count_ - (nextPos_ - pos);
  JreAssert((toFree >= 0), (@"org/apache/lucene/util/RollingBuffer.java:120 condition failed: assert toFree >= 0;"));
  JreAssert((toFree <= count_), (JreStrcat("$I$I", @"toFree=", toFree, @" count=", count_)));
  jint index = nextWrite_ - count_;
  if (index < 0) {
    index += ((IOSObjectArray *) nil_chk(buffer_))->size_;
  }
  for (jint i = 0; i < toFree; i++) {
    if (index == ((IOSObjectArray *) nil_chk(buffer_))->size_) {
      index = 0;
    }
    [((id<OrgApacheLuceneUtilRollingBuffer_Resettable>) nil_chk(IOSObjectArray_Get(buffer_, index))) reset];
    index++;
  }
  count_ -= toFree;
}

- (void)dealloc {
  RELEASE_(buffer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "RollingBuffer", NULL, 0x1, NULL, NULL },
    { "newInstance", NULL, "TT;", 0x404, NULL, "()TT;" },
    { "reset", NULL, "V", 0x1, NULL, NULL },
    { "inBoundsWithInt:", "inBounds", "Z", 0x2, NULL, NULL },
    { "getIndexWithInt:", "getIndex", "I", 0x2, NULL, NULL },
    { "getWithInt:", "get", "TT;", 0x1, NULL, "(I)TT;" },
    { "getMaxPos", NULL, "I", 0x1, NULL, NULL },
    { "freeBeforeWithInt:", "freeBefore", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "buffer_", NULL, 0x2, "[Lorg.apache.lucene.util.RollingBuffer$Resettable;", NULL, "[TT;", .constantValue.asLong = 0 },
    { "nextWrite_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "nextPos_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "count_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.util.RollingBuffer$Resettable;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilRollingBuffer = { 2, "RollingBuffer", "org.apache.lucene.util", NULL, 0x401, 8, methods, 4, fields, 0, NULL, 1, inner_classes, NULL, "<T::Lorg/apache/lucene/util/RollingBuffer$Resettable;>Ljava/lang/Object;" };
  return &_OrgApacheLuceneUtilRollingBuffer;
}

@end

void OrgApacheLuceneUtilRollingBuffer_init(OrgApacheLuceneUtilRollingBuffer *self) {
  NSObject_init(self);
  JreStrongAssign(&self->buffer_, [IOSObjectArray arrayWithLength:8 type:OrgApacheLuceneUtilRollingBuffer_Resettable_class_()]);
  for (jint idx = 0; idx < ((IOSObjectArray *) nil_chk(self->buffer_))->size_; idx++) {
    IOSObjectArray_Set(self->buffer_, idx, [self newInstance]);
  }
}

jboolean OrgApacheLuceneUtilRollingBuffer_inBoundsWithInt_(OrgApacheLuceneUtilRollingBuffer *self, jint pos) {
  return pos < self->nextPos_ && pos >= self->nextPos_ - self->count_;
}

jint OrgApacheLuceneUtilRollingBuffer_getIndexWithInt_(OrgApacheLuceneUtilRollingBuffer *self, jint pos) {
  jint index = self->nextWrite_ - (self->nextPos_ - pos);
  if (index < 0) {
    index += ((IOSObjectArray *) nil_chk(self->buffer_))->size_;
  }
  return index;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilRollingBuffer)

@implementation OrgApacheLuceneUtilRollingBuffer_Resettable

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "reset", NULL, "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilRollingBuffer_Resettable = { 2, "Resettable", "org.apache.lucene.util", "RollingBuffer", 0x609, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilRollingBuffer_Resettable;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilRollingBuffer_Resettable)
