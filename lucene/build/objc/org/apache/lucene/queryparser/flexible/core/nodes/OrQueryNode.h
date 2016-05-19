//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/OrQueryNode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode

#if !defined (OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode))
#define OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/BooleanQueryNode.h"

@protocol JavaLangCharSequence;
@protocol JavaUtilList;
@protocol OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax;

/*!
 @brief A <code>OrQueryNode</code> represents an OR boolean operation performed on a list
 of nodes.
 */
@interface OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode : OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode

#pragma mark Public

/*!
 @param clauses
 - the query nodes to be or'ed
 */
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)clauses;

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escapeSyntaxParser;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode_initWithJavaUtilList_(OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode *self, id<JavaUtilList> clauses);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode_initWithJavaUtilList_(id<JavaUtilList> clauses) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode *create_OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode_initWithJavaUtilList_(id<JavaUtilList> clauses);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode")
