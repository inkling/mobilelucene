//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked9.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked9")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked9
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked9 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked9 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked9

#if !defined (OrgApacheLuceneUtilPackedBulkOperationPacked9_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked9 || defined(INCLUDE_OrgApacheLuceneUtilPackedBulkOperationPacked9))
#define OrgApacheLuceneUtilPackedBulkOperationPacked9_

#define RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked 1
#define INCLUDE_OrgApacheLuceneUtilPackedBulkOperationPacked 1
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"

@class IOSByteArray;
@class IOSIntArray;
@class IOSLongArray;

/*!
 @brief Efficient sequential read/write of packed integers.
 */
@interface OrgApacheLuceneUtilPackedBulkOperationPacked9 : OrgApacheLuceneUtilPackedBulkOperationPacked

#pragma mark Public

- (instancetype)init;

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedBulkOperationPacked9)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedBulkOperationPacked9_init(OrgApacheLuceneUtilPackedBulkOperationPacked9 *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked9 *new_OrgApacheLuceneUtilPackedBulkOperationPacked9_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked9 *create_OrgApacheLuceneUtilPackedBulkOperationPacked9_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedBulkOperationPacked9)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked9")
