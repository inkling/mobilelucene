//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/FilterCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchFilterCollector")
#ifdef RESTRICT_OrgApacheLuceneSearchFilterCollector
#define INCLUDE_ALL_OrgApacheLuceneSearchFilterCollector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchFilterCollector 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchFilterCollector

#if !defined (OrgApacheLuceneSearchFilterCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchFilterCollector || defined(INCLUDE_OrgApacheLuceneSearchFilterCollector))
#define OrgApacheLuceneSearchFilterCollector_

#define RESTRICT_OrgApacheLuceneSearchCollector 1
#define INCLUDE_OrgApacheLuceneSearchCollector 1
#include "org/apache/lucene/search/Collector.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@protocol OrgApacheLuceneSearchLeafCollector;

/*!
 @brief <code>Collector</code> delegator.
 */
@interface OrgApacheLuceneSearchFilterCollector : NSObject < OrgApacheLuceneSearchCollector > {
 @public
  id<OrgApacheLuceneSearchCollector> in_;
}

#pragma mark Public

/*!
 @brief Sole constructor.
 */
- (instancetype)initWithOrgApacheLuceneSearchCollector:(id<OrgApacheLuceneSearchCollector>)inArg;

- (id<OrgApacheLuceneSearchLeafCollector>)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (jboolean)needsScores;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFilterCollector)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFilterCollector, in_, id<OrgApacheLuceneSearchCollector>)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFilterCollector_initWithOrgApacheLuceneSearchCollector_(OrgApacheLuceneSearchFilterCollector *self, id<OrgApacheLuceneSearchCollector> inArg);

FOUNDATION_EXPORT OrgApacheLuceneSearchFilterCollector *new_OrgApacheLuceneSearchFilterCollector_initWithOrgApacheLuceneSearchCollector_(id<OrgApacheLuceneSearchCollector> inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFilterCollector *create_OrgApacheLuceneSearchFilterCollector_initWithOrgApacheLuceneSearchCollector_(id<OrgApacheLuceneSearchCollector> inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFilterCollector)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchFilterCollector")
