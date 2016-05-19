//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/rangetree/RangeTreeWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneRangetreeRangeTreeWriter")
#ifdef RESTRICT_OrgApacheLuceneRangetreeRangeTreeWriter
#define INCLUDE_ALL_OrgApacheLuceneRangetreeRangeTreeWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneRangetreeRangeTreeWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneRangetreeRangeTreeWriter

#if !defined (OrgApacheLuceneRangetreeRangeTreeWriter_) && (INCLUDE_ALL_OrgApacheLuceneRangetreeRangeTreeWriter || defined(INCLUDE_OrgApacheLuceneRangetreeRangeTreeWriter))
#define OrgApacheLuceneRangetreeRangeTreeWriter_

@class OrgApacheLuceneStoreIndexOutput;
@protocol OrgApacheLuceneRangetreeSliceWriter;

/*!
 @brief Recursively builds a 1d BKD tree to assign all incoming <code>long</code> values to smaller
 and smaller ranges until the number of points in a given
 range is &lt= the <code>maxPointsInLeafNode</code>.
 The tree is
 fully balanced, which means the leaf nodes will have between 50% and 100% of
 the requested <code>maxPointsInLeafNode</code>, except for the adversarial case
 of indexing exactly the same value many times.
 <p>
 See <a href="https://www.cs.duke.edu/~pankaj/publications/papers/bkd-sstd.pdf">this paper</a> for details.
 <p>This consumes heap during writing: for any nodes with fewer than <code>maxPointsSortInHeap</code>, it holds
 the points in memory as simple java arrays.
 <p>
 <b>NOTE</b>: This can write at most Integer.MAX_VALUE * <code>maxPointsInLeafNode</code> total values,
 which should be plenty since a Lucene index can have at most Integer.MAX_VALUE-1 documents.
  
 */
@interface OrgApacheLuceneRangetreeRangeTreeWriter : NSObject

+ (jint)BYTES_PER_DOC;

+ (jint)DEFAULT_MAX_VALUES_IN_LEAF_NODE;

+ (jint)DEFAULT_MAX_VALUES_SORT_IN_HEAP;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)maxValuesInLeafNode
                    withInt:(jint)maxValuesSortInHeap;

/*!
 @brief Writes the 1d BKD tree to the provided <code>IndexOutput</code> and returns the file offset where index was written.
 */
- (jlong)finishWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)outArg;

+ (void)verifyParamsWithInt:(jint)maxValuesInLeafNode
                    withInt:(jint)maxValuesSortInHeap;

#pragma mark Package-Private

- (void)addWithLong:(jlong)value
            withInt:(jint)docID;

- (id<OrgApacheLuceneRangetreeSliceWriter>)getWriterWithLong:(jlong)count;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneRangetreeRangeTreeWriter)

inline jint OrgApacheLuceneRangetreeRangeTreeWriter_get_BYTES_PER_DOC();
#define OrgApacheLuceneRangetreeRangeTreeWriter_BYTES_PER_DOC 20
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneRangetreeRangeTreeWriter, BYTES_PER_DOC, jint)

inline jint OrgApacheLuceneRangetreeRangeTreeWriter_get_DEFAULT_MAX_VALUES_IN_LEAF_NODE();
#define OrgApacheLuceneRangetreeRangeTreeWriter_DEFAULT_MAX_VALUES_IN_LEAF_NODE 1024
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneRangetreeRangeTreeWriter, DEFAULT_MAX_VALUES_IN_LEAF_NODE, jint)

/*!
 @brief This works out to max of ~10 MB peak heap tied up during writing:
 */
inline jint OrgApacheLuceneRangetreeRangeTreeWriter_get_DEFAULT_MAX_VALUES_SORT_IN_HEAP();
#define OrgApacheLuceneRangetreeRangeTreeWriter_DEFAULT_MAX_VALUES_SORT_IN_HEAP 131072
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneRangetreeRangeTreeWriter, DEFAULT_MAX_VALUES_SORT_IN_HEAP, jint)

FOUNDATION_EXPORT void OrgApacheLuceneRangetreeRangeTreeWriter_init(OrgApacheLuceneRangetreeRangeTreeWriter *self);

FOUNDATION_EXPORT OrgApacheLuceneRangetreeRangeTreeWriter *new_OrgApacheLuceneRangetreeRangeTreeWriter_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneRangetreeRangeTreeWriter *create_OrgApacheLuceneRangetreeRangeTreeWriter_init();

FOUNDATION_EXPORT void OrgApacheLuceneRangetreeRangeTreeWriter_initWithInt_withInt_(OrgApacheLuceneRangetreeRangeTreeWriter *self, jint maxValuesInLeafNode, jint maxValuesSortInHeap);

FOUNDATION_EXPORT OrgApacheLuceneRangetreeRangeTreeWriter *new_OrgApacheLuceneRangetreeRangeTreeWriter_initWithInt_withInt_(jint maxValuesInLeafNode, jint maxValuesSortInHeap) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneRangetreeRangeTreeWriter *create_OrgApacheLuceneRangetreeRangeTreeWriter_initWithInt_withInt_(jint maxValuesInLeafNode, jint maxValuesSortInHeap);

FOUNDATION_EXPORT void OrgApacheLuceneRangetreeRangeTreeWriter_verifyParamsWithInt_withInt_(jint maxValuesInLeafNode, jint maxValuesSortInHeap);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneRangetreeRangeTreeWriter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneRangetreeRangeTreeWriter")
