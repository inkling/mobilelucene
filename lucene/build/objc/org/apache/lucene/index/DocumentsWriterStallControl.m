//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DocumentsWriterStallControl.java
//

#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/util/IdentityHashMap.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/DocumentsWriterStallControl.h"
#include "org/apache/lucene/index/LiveIndexWriterConfig.h"
#include "org/apache/lucene/util/InfoStream.h"
#include "org/apache/lucene/util/ThreadInterruptedException.h"

@interface OrgApacheLuceneIndexDocumentsWriterStallControl () {
 @public
  volatile_jboolean stalled_;
  jint numWaiting_;
  jboolean wasStalled_;
  id<JavaUtilMap> waiting_;
  OrgApacheLuceneUtilInfoStream *infoStream_;
}

- (void)incWaiters;

- (void)decrWaiters;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterStallControl, waiting_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterStallControl, infoStream_, OrgApacheLuceneUtilInfoStream *)

__attribute__((unused)) static void OrgApacheLuceneIndexDocumentsWriterStallControl_incWaiters(OrgApacheLuceneIndexDocumentsWriterStallControl *self);

__attribute__((unused)) static void OrgApacheLuceneIndexDocumentsWriterStallControl_decrWaiters(OrgApacheLuceneIndexDocumentsWriterStallControl *self);

@implementation OrgApacheLuceneIndexDocumentsWriterStallControl

- (instancetype)initWithOrgApacheLuceneIndexLiveIndexWriterConfig:(OrgApacheLuceneIndexLiveIndexWriterConfig *)iwc {
  OrgApacheLuceneIndexDocumentsWriterStallControl_initWithOrgApacheLuceneIndexLiveIndexWriterConfig_(self, iwc);
  return self;
}

- (void)updateStalledWithBoolean:(jboolean)stalled {
  @synchronized(self) {
    JreAssignVolatileBoolean(&self->stalled_, stalled);
    if (stalled) {
      wasStalled_ = true;
    }
    [self notifyAll];
  }
}

- (void)waitIfStalled {
  if (JreLoadVolatileBoolean(&stalled_)) {
    @synchronized(self) {
      if (JreLoadVolatileBoolean(&stalled_)) {
        @try {
          OrgApacheLuceneIndexDocumentsWriterStallControl_incWaiters(self);
          [self waitWithLong:1000];
          OrgApacheLuceneIndexDocumentsWriterStallControl_decrWaiters(self);
        }
        @catch (JavaLangInterruptedException *e) {
          @throw create_OrgApacheLuceneUtilThreadInterruptedException_initWithJavaLangInterruptedException_(e);
        }
      }
    }
  }
}

- (jboolean)anyStalledThreads {
  return JreLoadVolatileBoolean(&stalled_);
}

- (void)incWaiters {
  OrgApacheLuceneIndexDocumentsWriterStallControl_incWaiters(self);
}

- (void)decrWaiters {
  OrgApacheLuceneIndexDocumentsWriterStallControl_decrWaiters(self);
}

- (jboolean)hasBlocked {
  @synchronized(self) {
    return numWaiting_ > 0;
  }
}

- (jboolean)isHealthy {
  return !JreLoadVolatileBoolean(&stalled_);
}

- (jboolean)isThreadQueuedWithJavaLangThread:(JavaLangThread *)t {
  @synchronized(self) {
    return [((id<JavaUtilMap>) nil_chk(waiting_)) containsKeyWithId:t];
  }
}

- (jboolean)wasStalled {
  @synchronized(self) {
    return wasStalled_;
  }
}

- (void)dealloc {
  RELEASE_(waiting_);
  RELEASE_(infoStream_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexLiveIndexWriterConfig:", "DocumentsWriterStallControl", NULL, 0x0, NULL, NULL },
    { "updateStalledWithBoolean:", "updateStalled", "V", 0x20, NULL, NULL },
    { "waitIfStalled", NULL, "V", 0x0, NULL, NULL },
    { "anyStalledThreads", NULL, "Z", 0x0, NULL, NULL },
    { "incWaiters", NULL, "V", 0x2, NULL, NULL },
    { "decrWaiters", NULL, "V", 0x2, NULL, NULL },
    { "hasBlocked", NULL, "Z", 0x20, NULL, NULL },
    { "isHealthy", NULL, "Z", 0x0, NULL, NULL },
    { "isThreadQueuedWithJavaLangThread:", "isThreadQueued", "Z", 0x20, NULL, NULL },
    { "wasStalled", NULL, "Z", 0x20, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "stalled_", NULL, 0x42, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "numWaiting_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "wasStalled_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "waiting_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Thread;Ljava/lang/Boolean;>;", .constantValue.asLong = 0 },
    { "infoStream_", NULL, 0x12, "Lorg.apache.lucene.util.InfoStream;", NULL, NULL, .constantValue.asLong = 0 },
    { "stallStartNS_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexDocumentsWriterStallControl = { 2, "DocumentsWriterStallControl", "org.apache.lucene.index", NULL, 0x10, 10, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexDocumentsWriterStallControl;
}

@end

void OrgApacheLuceneIndexDocumentsWriterStallControl_initWithOrgApacheLuceneIndexLiveIndexWriterConfig_(OrgApacheLuceneIndexDocumentsWriterStallControl *self, OrgApacheLuceneIndexLiveIndexWriterConfig *iwc) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->waiting_, new_JavaUtilIdentityHashMap_init());
  JreStrongAssign(&self->infoStream_, [((OrgApacheLuceneIndexLiveIndexWriterConfig *) nil_chk(iwc)) getInfoStream]);
}

OrgApacheLuceneIndexDocumentsWriterStallControl *new_OrgApacheLuceneIndexDocumentsWriterStallControl_initWithOrgApacheLuceneIndexLiveIndexWriterConfig_(OrgApacheLuceneIndexLiveIndexWriterConfig *iwc) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexDocumentsWriterStallControl, initWithOrgApacheLuceneIndexLiveIndexWriterConfig_, iwc)
}

OrgApacheLuceneIndexDocumentsWriterStallControl *create_OrgApacheLuceneIndexDocumentsWriterStallControl_initWithOrgApacheLuceneIndexLiveIndexWriterConfig_(OrgApacheLuceneIndexLiveIndexWriterConfig *iwc) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexDocumentsWriterStallControl, initWithOrgApacheLuceneIndexLiveIndexWriterConfig_, iwc)
}

void OrgApacheLuceneIndexDocumentsWriterStallControl_incWaiters(OrgApacheLuceneIndexDocumentsWriterStallControl *self) {
  self->stallStartNS_ = JavaLangSystem_nanoTime();
  if ([((OrgApacheLuceneUtilInfoStream *) nil_chk(self->infoStream_)) isEnabledWithNSString:@"DW"] && self->numWaiting_ == 0) {
    [self->infoStream_ messageWithNSString:@"DW" withNSString:@"now stalling flushes"];
  }
  self->numWaiting_++;
  JreAssert(([((id<JavaUtilMap>) nil_chk(self->waiting_)) putWithId:JavaLangThread_currentThread() withId:JreLoadStatic(JavaLangBoolean, TRUE)] == nil), (@"org/apache/lucene/index/DocumentsWriterStallControl.java:104 condition failed: assert waiting.put(Thread.currentThread(), Boolean.TRUE) == null;"));
  JreAssert((self->numWaiting_ > 0), (@"org/apache/lucene/index/DocumentsWriterStallControl.java:105 condition failed: assert numWaiting > 0;"));
}

void OrgApacheLuceneIndexDocumentsWriterStallControl_decrWaiters(OrgApacheLuceneIndexDocumentsWriterStallControl *self) {
  self->numWaiting_--;
  JreAssert(([((id<JavaUtilMap>) nil_chk(self->waiting_)) removeWithId:JavaLangThread_currentThread()] != nil), (@"org/apache/lucene/index/DocumentsWriterStallControl.java:110 condition failed: assert waiting.remove(Thread.currentThread()) != null;"));
  JreAssert((self->numWaiting_ >= 0), (@"org/apache/lucene/index/DocumentsWriterStallControl.java:111 condition failed: assert numWaiting >= 0;"));
  if ([((OrgApacheLuceneUtilInfoStream *) nil_chk(self->infoStream_)) isEnabledWithNSString:@"DW"] && self->numWaiting_ == 0) {
    jlong stallEndNS = JavaLangSystem_nanoTime();
    [self->infoStream_ messageWithNSString:@"DW" withNSString:JreStrcat("$D$", @"done stalling flushes for ", ((stallEndNS - self->stallStartNS_) / 1000000.0), @" ms")];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexDocumentsWriterStallControl)
