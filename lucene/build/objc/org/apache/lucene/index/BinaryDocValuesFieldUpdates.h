//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/BinaryDocValuesFieldUpdates.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexBinaryDocValuesFieldUpdates")
#ifdef RESTRICT_OrgApacheLuceneIndexBinaryDocValuesFieldUpdates
#define INCLUDE_ALL_OrgApacheLuceneIndexBinaryDocValuesFieldUpdates 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexBinaryDocValuesFieldUpdates 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexBinaryDocValuesFieldUpdates

#if !defined (OrgApacheLuceneIndexBinaryDocValuesFieldUpdates_) && (INCLUDE_ALL_OrgApacheLuceneIndexBinaryDocValuesFieldUpdates || defined(INCLUDE_OrgApacheLuceneIndexBinaryDocValuesFieldUpdates))
#define OrgApacheLuceneIndexBinaryDocValuesFieldUpdates_

#define RESTRICT_OrgApacheLuceneIndexDocValuesFieldUpdates 1
#define INCLUDE_OrgApacheLuceneIndexDocValuesFieldUpdates 1
#include "org/apache/lucene/index/DocValuesFieldUpdates.h"

@class OrgApacheLuceneIndexBinaryDocValuesFieldUpdates_Iterator;

/*!
 @brief A <code>DocValuesFieldUpdates</code> which holds updates of documents, of a single
 <code>BinaryDocValuesField</code>.
 */
@interface OrgApacheLuceneIndexBinaryDocValuesFieldUpdates : OrgApacheLuceneIndexDocValuesFieldUpdates

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
                         withInt:(jint)maxDoc;

- (void)addWithInt:(jint)doc
            withId:(id)value;

- (jboolean)any;

- (OrgApacheLuceneIndexBinaryDocValuesFieldUpdates_Iterator *)iterator;

- (void)mergeWithOrgApacheLuceneIndexDocValuesFieldUpdates:(OrgApacheLuceneIndexDocValuesFieldUpdates *)other;

- (jlong)ramBytesPerDoc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexBinaryDocValuesFieldUpdates)

FOUNDATION_EXPORT void OrgApacheLuceneIndexBinaryDocValuesFieldUpdates_initWithNSString_withInt_(OrgApacheLuceneIndexBinaryDocValuesFieldUpdates *self, NSString *field, jint maxDoc);

FOUNDATION_EXPORT OrgApacheLuceneIndexBinaryDocValuesFieldUpdates *new_OrgApacheLuceneIndexBinaryDocValuesFieldUpdates_initWithNSString_withInt_(NSString *field, jint maxDoc) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexBinaryDocValuesFieldUpdates *create_OrgApacheLuceneIndexBinaryDocValuesFieldUpdates_initWithNSString_withInt_(NSString *field, jint maxDoc);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexBinaryDocValuesFieldUpdates)

#endif

#if !defined (OrgApacheLuceneIndexBinaryDocValuesFieldUpdates_Iterator_) && (INCLUDE_ALL_OrgApacheLuceneIndexBinaryDocValuesFieldUpdates || defined(INCLUDE_OrgApacheLuceneIndexBinaryDocValuesFieldUpdates_Iterator))
#define OrgApacheLuceneIndexBinaryDocValuesFieldUpdates_Iterator_

#define RESTRICT_OrgApacheLuceneIndexDocValuesFieldUpdates 1
#define INCLUDE_OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator 1
#include "org/apache/lucene/index/DocValuesFieldUpdates.h"

@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilPackedPagedGrowableWriter;
@class OrgApacheLuceneUtilPackedPagedMutable;

@interface OrgApacheLuceneIndexBinaryDocValuesFieldUpdates_Iterator : OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)size
withOrgApacheLuceneUtilPackedPagedGrowableWriter:(OrgApacheLuceneUtilPackedPagedGrowableWriter *)offsets
withOrgApacheLuceneUtilPackedPagedGrowableWriter:(OrgApacheLuceneUtilPackedPagedGrowableWriter *)lengths
withOrgApacheLuceneUtilPackedPagedMutable:(OrgApacheLuceneUtilPackedPagedMutable *)docs
withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)values;

- (jint)doc;

- (jint)nextDoc;

- (void)reset;

- (OrgApacheLuceneUtilBytesRef *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexBinaryDocValuesFieldUpdates_Iterator)

FOUNDATION_EXPORT void OrgApacheLuceneIndexBinaryDocValuesFieldUpdates_Iterator_initWithInt_withOrgApacheLuceneUtilPackedPagedGrowableWriter_withOrgApacheLuceneUtilPackedPagedGrowableWriter_withOrgApacheLuceneUtilPackedPagedMutable_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneIndexBinaryDocValuesFieldUpdates_Iterator *self, jint size, OrgApacheLuceneUtilPackedPagedGrowableWriter *offsets, OrgApacheLuceneUtilPackedPagedGrowableWriter *lengths, OrgApacheLuceneUtilPackedPagedMutable *docs, OrgApacheLuceneUtilBytesRef *values);

FOUNDATION_EXPORT OrgApacheLuceneIndexBinaryDocValuesFieldUpdates_Iterator *new_OrgApacheLuceneIndexBinaryDocValuesFieldUpdates_Iterator_initWithInt_withOrgApacheLuceneUtilPackedPagedGrowableWriter_withOrgApacheLuceneUtilPackedPagedGrowableWriter_withOrgApacheLuceneUtilPackedPagedMutable_withOrgApacheLuceneUtilBytesRef_(jint size, OrgApacheLuceneUtilPackedPagedGrowableWriter *offsets, OrgApacheLuceneUtilPackedPagedGrowableWriter *lengths, OrgApacheLuceneUtilPackedPagedMutable *docs, OrgApacheLuceneUtilBytesRef *values) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexBinaryDocValuesFieldUpdates_Iterator *create_OrgApacheLuceneIndexBinaryDocValuesFieldUpdates_Iterator_initWithInt_withOrgApacheLuceneUtilPackedPagedGrowableWriter_withOrgApacheLuceneUtilPackedPagedGrowableWriter_withOrgApacheLuceneUtilPackedPagedMutable_withOrgApacheLuceneUtilBytesRef_(jint size, OrgApacheLuceneUtilPackedPagedGrowableWriter *offsets, OrgApacheLuceneUtilPackedPagedGrowableWriter *lengths, OrgApacheLuceneUtilPackedPagedMutable *docs, OrgApacheLuceneUtilBytesRef *values);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexBinaryDocValuesFieldUpdates_Iterator)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexBinaryDocValuesFieldUpdates")
