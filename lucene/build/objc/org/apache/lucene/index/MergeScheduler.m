//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/MergeScheduler.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/index/MergeScheduler.h"
#include "org/apache/lucene/index/MergeTrigger.h"
#include "org/apache/lucene/util/InfoStream.h"

@implementation OrgApacheLuceneIndexMergeScheduler

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexMergeScheduler_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)mergeWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
            withOrgApacheLuceneIndexMergeTrigger:(OrgApacheLuceneIndexMergeTrigger *)trigger
                                     withBoolean:(jboolean)newMergesFound {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)close {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)setInfoStreamWithOrgApacheLuceneUtilInfoStream:(OrgApacheLuceneUtilInfoStream *)infoStream {
  JreStrongAssign(&self->infoStream_, infoStream);
}

- (jboolean)verbose {
  return infoStream_ != nil && [infoStream_ isEnabledWithNSString:@"MS"];
}

- (void)messageWithNSString:(NSString *)message {
  [((OrgApacheLuceneUtilInfoStream *) nil_chk(infoStream_)) messageWithNSString:@"MS" withNSString:message];
}

- (void)dealloc {
  RELEASE_(infoStream_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "MergeScheduler", NULL, 0x4, NULL, NULL },
    { "mergeWithOrgApacheLuceneIndexIndexWriter:withOrgApacheLuceneIndexMergeTrigger:withBoolean:", "merge", "V", 0x401, "Ljava.io.IOException;", NULL },
    { "close", NULL, "V", 0x401, "Ljava.io.IOException;", NULL },
    { "setInfoStreamWithOrgApacheLuceneUtilInfoStream:", "setInfoStream", "V", 0x10, NULL, NULL },
    { "verbose", NULL, "Z", 0x4, NULL, NULL },
    { "messageWithNSString:", "message", "V", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "infoStream_", NULL, 0x4, "Lorg.apache.lucene.util.InfoStream;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexMergeScheduler = { 2, "MergeScheduler", "org.apache.lucene.index", NULL, 0x401, 6, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexMergeScheduler;
}

@end

void OrgApacheLuceneIndexMergeScheduler_init(OrgApacheLuceneIndexMergeScheduler *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexMergeScheduler)
