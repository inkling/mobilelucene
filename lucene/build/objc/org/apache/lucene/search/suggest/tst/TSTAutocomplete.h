//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/tst/TSTAutocomplete.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestTstTSTAutocomplete")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestTstTSTAutocomplete
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestTstTSTAutocomplete 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestTstTSTAutocomplete 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestTstTSTAutocomplete

#if !defined (OrgApacheLuceneSearchSuggestTstTSTAutocomplete_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestTstTSTAutocomplete || defined(INCLUDE_OrgApacheLuceneSearchSuggestTstTSTAutocomplete))
#define OrgApacheLuceneSearchSuggestTstTSTAutocomplete_

@class IOSObjectArray;
@class JavaUtilArrayList;
@class OrgApacheLuceneSearchSuggestTstTernaryTreeNode;
@protocol JavaLangCharSequence;

/*!
 @brief Ternary Search Trie implementation.
 - seealso: TernaryTreeNode
 */
@interface OrgApacheLuceneSearchSuggestTstTSTAutocomplete : NSObject

#pragma mark Public

/*!
 @brief Inserting keys in TST in the order middle,small,big (lexicographic measure)
 recursively creates a balanced tree which reduces insertion and search
 times significantly.
 @param tokens
 Sorted list of keys to be inserted in TST.
 @param lo
 stores the lower index of current list.
 @param hi
 stores the higher index of current list.
 @param root
 a reference object to root of TST.
 */
- (void)balancedTreeWithNSObjectArray:(IOSObjectArray *)tokens
                    withNSObjectArray:(IOSObjectArray *)vals
                              withInt:(jint)lo
                              withInt:(jint)hi
withOrgApacheLuceneSearchSuggestTstTernaryTreeNode:(OrgApacheLuceneSearchSuggestTstTernaryTreeNode *)root;

/*!
 @brief Inserts a key in TST creating a series of Binary Search Trees at each node.
 The key is actually stored across the eqKid of each node in a successive
 manner.
 @param currentNode
 a reference node where the insertion will take currently.
 @param s
 key to be inserted in TST.
 @param x
 index of character in key to be inserted currently.
 @return currentNode The new reference to root node of TST
 */
- (OrgApacheLuceneSearchSuggestTstTernaryTreeNode *)insertWithOrgApacheLuceneSearchSuggestTstTernaryTreeNode:(OrgApacheLuceneSearchSuggestTstTernaryTreeNode *)currentNode
                                                                                    withJavaLangCharSequence:(id<JavaLangCharSequence>)s
                                                                                                      withId:(id)val
                                                                                                     withInt:(jint)x;

/*!
 @brief Auto-completes a given prefix query using Depth-First Search with the end
 of prefix as source node each time finding a new leaf to get a complete key
 to be added in the suggest list.
 @param root
 a reference to root node of TST.
 @param s
 prefix query to be auto-completed.
 @param x
 index of current character to be searched while traversing through
 the prefix in TST.
 @return suggest list of auto-completed keys for the given prefix query.
 */
- (JavaUtilArrayList *)prefixCompletionWithOrgApacheLuceneSearchSuggestTstTernaryTreeNode:(OrgApacheLuceneSearchSuggestTstTernaryTreeNode *)root
                                                                 withJavaLangCharSequence:(id<JavaLangCharSequence>)s
                                                                                  withInt:(jint)x;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestTstTSTAutocomplete)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestTstTSTAutocomplete_init(OrgApacheLuceneSearchSuggestTstTSTAutocomplete *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestTstTSTAutocomplete *new_OrgApacheLuceneSearchSuggestTstTSTAutocomplete_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestTstTSTAutocomplete *create_OrgApacheLuceneSearchSuggestTstTSTAutocomplete_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestTstTSTAutocomplete)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestTstTSTAutocomplete")
