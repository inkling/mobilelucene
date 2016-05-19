//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DocumentsWriterDeleteQueue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexDocumentsWriterDeleteQueue")
#ifdef RESTRICT_OrgApacheLuceneIndexDocumentsWriterDeleteQueue
#define INCLUDE_ALL_OrgApacheLuceneIndexDocumentsWriterDeleteQueue 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexDocumentsWriterDeleteQueue 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexDocumentsWriterDeleteQueue

#if !defined (OrgApacheLuceneIndexDocumentsWriterDeleteQueue_) && (INCLUDE_ALL_OrgApacheLuceneIndexDocumentsWriterDeleteQueue || defined(INCLUDE_OrgApacheLuceneIndexDocumentsWriterDeleteQueue))
#define OrgApacheLuceneIndexDocumentsWriterDeleteQueue_

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexBufferedUpdates;
@class OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice;
@class OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node;
@class OrgApacheLuceneIndexFrozenBufferedUpdates;
@class OrgApacheLuceneIndexTerm;
@protocol JavaUtilCollection;

/*!
 @brief <code>DocumentsWriterDeleteQueue</code> is a non-blocking linked pending deletes
 queue.
 In contrast to other queue implementation we only maintain the
 tail of the queue. A delete queue is always used in a context of a set of
 DWPTs and a global delete pool. Each of the DWPT and the global pool need to
 maintain their 'own' head of the queue (as a DeleteSlice instance per DWPT).
 The difference between the DWPT and the global pool is that the DWPT starts
 maintaining a head once it has added its first document since for its segments
 private deletes only the deletes after that document are relevant. The global
 pool instead starts maintaining the head once this instance is created by
 taking the sentinel instance as its initial head.
 <p>
 Since each <code>DeleteSlice</code> maintains its own head and the list is only
 single linked the garbage collector takes care of pruning the list for us.
 All nodes in the list that are still relevant should be either directly or
 indirectly referenced by one of the DWPT's private <code>DeleteSlice</code> or by
 the global <code>BufferedUpdates</code> slice.
 <p>
 Each DWPT as well as the global delete pool maintain their private
 DeleteSlice instance. In the DWPT case updating a slice is equivalent to
 atomically finishing the document. The slice update guarantees a "happens
 before" relationship to all other updates in the same indexing session. When a
 DWPT updates a document it:
 <ol>
 <li>consumes a document and finishes its processing</li>
 <li>updates its private <code>DeleteSlice</code> either by calling
 <code>updateSlice(DeleteSlice)</code> or <code>add(Term,DeleteSlice)</code> (if the
 document has a delTerm)</li>
 <li>applies all deletes in the slice to its private <code>BufferedUpdates</code>
 and resets it</li>
 <li>increments its internal document id</li>
 </ol>
 The DWPT also doesn't apply its current documents delete term until it has
 updated its delete slice which ensures the consistency of the update. If the
 update fails before the DeleteSlice could have been updated the deleteTerm
 will also not be added to its private deletes neither to the global deletes.
 */
@interface OrgApacheLuceneIndexDocumentsWriterDeleteQueue : NSObject < OrgApacheLuceneUtilAccountable > {
 @public
  jlong generation_;
}

#pragma mark Public

- (jint)getBufferedUpdatesTermsSize;

- (id<JavaUtilCollection>)getChildResources;

- (jint)numGlobalTermDeletes;

- (jlong)ramBytesUsed;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)init;

- (instancetype)initWithOrgApacheLuceneIndexBufferedUpdates:(OrgApacheLuceneIndexBufferedUpdates *)globalBufferedUpdates
                                                   withLong:(jlong)generation;

- (instancetype)initWithLong:(jlong)generation;

- (void)addWithOrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node:(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *)item;

/*!
 @brief invariant for document update
 */
- (void)addWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
withOrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice:(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice *)slice;

- (void)addDeleteWithOrgApacheLuceneSearchQueryArray:(IOSObjectArray *)queries;

- (void)addDeleteWithOrgApacheLuceneIndexTermArray:(IOSObjectArray *)terms;

- (void)addDocValuesUpdatesWithOrgApacheLuceneIndexDocValuesUpdateArray:(IOSObjectArray *)updates;

- (jboolean)anyChanges;

- (void)clear;

- (OrgApacheLuceneIndexFrozenBufferedUpdates *)freezeGlobalBufferWithOrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice:(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice *)callerSlice;

- (OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice *)newSlice OBJC_METHOD_FAMILY_NONE;

- (void)tryApplyGlobalSlice;

- (jboolean)updateSliceWithOrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice:(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice *)slice;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexDocumentsWriterDeleteQueue)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocumentsWriterDeleteQueue_init(OrgApacheLuceneIndexDocumentsWriterDeleteQueue *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterDeleteQueue *new_OrgApacheLuceneIndexDocumentsWriterDeleteQueue_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterDeleteQueue *create_OrgApacheLuceneIndexDocumentsWriterDeleteQueue_init();

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocumentsWriterDeleteQueue_initWithLong_(OrgApacheLuceneIndexDocumentsWriterDeleteQueue *self, jlong generation);

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterDeleteQueue *new_OrgApacheLuceneIndexDocumentsWriterDeleteQueue_initWithLong_(jlong generation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterDeleteQueue *create_OrgApacheLuceneIndexDocumentsWriterDeleteQueue_initWithLong_(jlong generation);

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocumentsWriterDeleteQueue_initWithOrgApacheLuceneIndexBufferedUpdates_withLong_(OrgApacheLuceneIndexDocumentsWriterDeleteQueue *self, OrgApacheLuceneIndexBufferedUpdates *globalBufferedUpdates, jlong generation);

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterDeleteQueue *new_OrgApacheLuceneIndexDocumentsWriterDeleteQueue_initWithOrgApacheLuceneIndexBufferedUpdates_withLong_(OrgApacheLuceneIndexBufferedUpdates *globalBufferedUpdates, jlong generation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterDeleteQueue *create_OrgApacheLuceneIndexDocumentsWriterDeleteQueue_initWithOrgApacheLuceneIndexBufferedUpdates_withLong_(OrgApacheLuceneIndexBufferedUpdates *globalBufferedUpdates, jlong generation);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocumentsWriterDeleteQueue)

#endif

#if !defined (OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice_) && (INCLUDE_ALL_OrgApacheLuceneIndexDocumentsWriterDeleteQueue || defined(INCLUDE_OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice))
#define OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice_

@class OrgApacheLuceneIndexBufferedUpdates;
@class OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node;

@interface OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice : NSObject {
 @public
  OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *sliceHead_;
  OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *sliceTail_;
}

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node:(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *)currentTail;

- (void)applyWithOrgApacheLuceneIndexBufferedUpdates:(OrgApacheLuceneIndexBufferedUpdates *)del
                                             withInt:(jint)docIDUpto;

- (jboolean)isEmpty;

/*!
 @brief Returns <code>true</code> iff the given item is identical to the item
 hold by the slices tail, otherwise <code>false</code>.
 */
- (jboolean)isTailItemWithId:(id)item;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice, sliceHead_, OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice, sliceTail_, OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice_initWithOrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node_(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice *self, OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *currentTail);

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice *new_OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice_initWithOrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node_(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *currentTail) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice *create_OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice_initWithOrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node_(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *currentTail);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice)

#endif

#if !defined (OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node_) && (INCLUDE_ALL_OrgApacheLuceneIndexDocumentsWriterDeleteQueue || defined(INCLUDE_OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node))
#define OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node_

@class JavaUtilConcurrentAtomicAtomicReferenceFieldUpdater;
@class OrgApacheLuceneIndexBufferedUpdates;

@interface OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node : NSObject {
 @public
  volatile_id next_;
  id item_;
}

+ (JavaUtilConcurrentAtomicAtomicReferenceFieldUpdater *)nextUpdater;

#pragma mark Package-Private

- (instancetype)initWithId:(id)item;

- (void)applyWithOrgApacheLuceneIndexBufferedUpdates:(OrgApacheLuceneIndexBufferedUpdates *)bufferedDeletes
                                             withInt:(jint)docIDUpto;

- (jboolean)casNextWithOrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node:(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *)cmp
                   withOrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node:(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *)val;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node)

J2OBJC_VOLATILE_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node, next_, OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node, item_, id)

inline JavaUtilConcurrentAtomicAtomicReferenceFieldUpdater *OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node_get_nextUpdater();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilConcurrentAtomicAtomicReferenceFieldUpdater *OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node_nextUpdater;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node, nextUpdater, JavaUtilConcurrentAtomicAtomicReferenceFieldUpdater *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node_initWithId_(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *self, id item);

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *new_OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node_initWithId_(id item) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node *create_OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node_initWithId_(id item);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocumentsWriterDeleteQueue_Node)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexDocumentsWriterDeleteQueue")
