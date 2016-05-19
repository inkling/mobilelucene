//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/BooleanSingleChildOptimizationQueryNodeProcessor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor))
#define OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl 1
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"

@protocol JavaUtilList;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

/*!
 @brief This processor removes every <code>BooleanQueryNode</code> that contains only one
 child and returns this child.
 If this child is <code>ModifierQueryNode</code> that
 was defined by the user. A modifier is not defined by the user when it's a
 <code>BooleanModifierNode</code>
 - seealso: ModifierQueryNode
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor : OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl

#pragma mark Public

- (instancetype)init;

#pragma mark Protected

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor_init(OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor *create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor")
