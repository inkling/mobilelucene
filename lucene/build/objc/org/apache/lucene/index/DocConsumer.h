//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DocConsumer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexDocConsumer")
#ifdef RESTRICT_OrgApacheLuceneIndexDocConsumer
#define INCLUDE_ALL_OrgApacheLuceneIndexDocConsumer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexDocConsumer 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexDocConsumer

#if !defined (OrgApacheLuceneIndexDocConsumer_) && (INCLUDE_ALL_OrgApacheLuceneIndexDocConsumer || defined(INCLUDE_OrgApacheLuceneIndexDocConsumer))
#define OrgApacheLuceneIndexDocConsumer_

@class OrgApacheLuceneIndexSegmentWriteState;

@interface OrgApacheLuceneIndexDocConsumer : NSObject

#pragma mark Package-Private

- (instancetype)init;

- (void)abort;

- (void)flushWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state;

- (void)processDocument;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexDocConsumer)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocConsumer_init(OrgApacheLuceneIndexDocConsumer *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocConsumer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexDocConsumer")
