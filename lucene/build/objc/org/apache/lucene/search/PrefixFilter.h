//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/PrefixFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchPrefixFilter")
#ifdef RESTRICT_OrgApacheLuceneSearchPrefixFilter
#define INCLUDE_ALL_OrgApacheLuceneSearchPrefixFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchPrefixFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchPrefixFilter

#if !defined (OrgApacheLuceneSearchPrefixFilter_) && (INCLUDE_ALL_OrgApacheLuceneSearchPrefixFilter || defined(INCLUDE_OrgApacheLuceneSearchPrefixFilter))
#define OrgApacheLuceneSearchPrefixFilter_

#define RESTRICT_OrgApacheLuceneSearchMultiTermQueryWrapperFilter 1
#define INCLUDE_OrgApacheLuceneSearchMultiTermQueryWrapperFilter 1
#include "org/apache/lucene/search/MultiTermQueryWrapperFilter.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexTerm;

/*!
 @brief A Filter that restricts search results to values that have a matching prefix in a given
 field.
 */
@interface OrgApacheLuceneSearchPrefixFilter : OrgApacheLuceneSearchMultiTermQueryWrapperFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)prefix;

- (OrgApacheLuceneIndexTerm *)getPrefix;

/*!
 @brief Prints a user-readable version of this filter.
 */
- (NSString *)toStringWithNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchPrefixFilter)

FOUNDATION_EXPORT void OrgApacheLuceneSearchPrefixFilter_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchPrefixFilter *self, OrgApacheLuceneIndexTerm *prefix);

FOUNDATION_EXPORT OrgApacheLuceneSearchPrefixFilter *new_OrgApacheLuceneSearchPrefixFilter_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *prefix) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchPrefixFilter *create_OrgApacheLuceneSearchPrefixFilter_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *prefix);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchPrefixFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchPrefixFilter")
