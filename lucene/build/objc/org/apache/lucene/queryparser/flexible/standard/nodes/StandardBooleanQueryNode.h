//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/nodes/StandardBooleanQueryNode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode))
#define OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/BooleanQueryNode.h"

@protocol JavaUtilList;

/*!
 @brief A <code>StandardBooleanQueryNode</code> has the same behavior as
 <code>BooleanQueryNode</code>.
 It only indicates if the coord should be enabled or
 not for this boolean query.
 - seealso: Similarity#coord(int,int)
 - seealso: BooleanQuery
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode : OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode

#pragma mark Public

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)clauses
                         withBoolean:(jboolean)disableCoord;

- (jboolean)isDisableCoord;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode_initWithJavaUtilList_withBoolean_(OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode *self, id<JavaUtilList> clauses, jboolean disableCoord);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode *new_OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode_initWithJavaUtilList_withBoolean_(id<JavaUtilList> clauses, jboolean disableCoord) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode *create_OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode_initWithJavaUtilList_withBoolean_(id<JavaUtilList> clauses, jboolean disableCoord);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode")
