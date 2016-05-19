//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/AndQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryAndQuery")
#ifdef RESTRICT_OrgApacheLuceneQueryparserSurroundQueryAndQuery
#define INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryAndQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryAndQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserSurroundQueryAndQuery

#if !defined (OrgApacheLuceneQueryparserSurroundQueryAndQuery_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryAndQuery || defined(INCLUDE_OrgApacheLuceneQueryparserSurroundQueryAndQuery))
#define OrgApacheLuceneQueryparserSurroundQueryAndQuery_

#define RESTRICT_OrgApacheLuceneQueryparserSurroundQueryComposedQuery 1
#define INCLUDE_OrgApacheLuceneQueryparserSurroundQueryComposedQuery 1
#include "org/apache/lucene/queryparser/surround/query/ComposedQuery.h"

@class OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory;
@class OrgApacheLuceneSearchQuery;
@protocol JavaUtilList;

/*!
 @brief Factory for conjunctions
 */
@interface OrgApacheLuceneQueryparserSurroundQueryAndQuery : OrgApacheLuceneQueryparserSurroundQueryComposedQuery

#pragma mark Public

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)queries
                         withBoolean:(jboolean)inf
                        withNSString:(NSString *)opName;

- (OrgApacheLuceneSearchQuery *)makeLuceneQueryFieldNoBoostWithNSString:(NSString *)fieldName
           withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *)qf;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserSurroundQueryAndQuery)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundQueryAndQuery_initWithJavaUtilList_withBoolean_withNSString_(OrgApacheLuceneQueryparserSurroundQueryAndQuery *self, id<JavaUtilList> queries, jboolean inf, NSString *opName);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundQueryAndQuery *new_OrgApacheLuceneQueryparserSurroundQueryAndQuery_initWithJavaUtilList_withBoolean_withNSString_(id<JavaUtilList> queries, jboolean inf, NSString *opName) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundQueryAndQuery *create_OrgApacheLuceneQueryparserSurroundQueryAndQuery_initWithJavaUtilList_withBoolean_withNSString_(id<JavaUtilList> queries, jboolean inf, NSString *opName);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserSurroundQueryAndQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQueryAndQuery")
