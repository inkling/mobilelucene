//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/PhraseQueryNodeBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder))
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder 1
#include "org/apache/lucene/queryparser/flexible/standard/builders/StandardQueryBuilder.h"

@class OrgApacheLuceneSearchQuery;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

/*!
 @brief Builds a <code>PhraseQuery</code> object from a <code>TokenizedPhraseQueryNode</code>
 object.
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder : NSObject < OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder >

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneSearchQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder_init(OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder *new_OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder *create_OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder")
