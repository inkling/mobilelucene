//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/GroupQueryNodeBuilder.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeException.h"
#include "org/apache/lucene/queryparser/flexible/core/builders/QueryTreeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/GroupQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/GroupQueryNodeBuilder.h"
#include "org/apache/lucene/search/Query.h"

@implementation OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode {
  OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode *groupNode = (OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode *) cast_chk(queryNode, [OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode class]);
  return (OrgApacheLuceneSearchQuery *) cast_chk([((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk([((OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode *) nil_chk((groupNode))) getChild])) getTagWithNSString:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder, QUERY_TREE_BUILDER_TAGID)], [OrgApacheLuceneSearchQuery class]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "GroupQueryNodeBuilder", NULL, 0x1, NULL, NULL },
    { "buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "build", "Lorg.apache.lucene.search.Query;", 0x1, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder = { 2, "GroupQueryNodeBuilder", "org.apache.lucene.queryparser.flexible.standard.builders", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder_init(OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder *new_OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder, init)
}

OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder *create_OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder)
