//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/ConstantScoreQuery.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/BulkScorer.h"
#include "org/apache/lucene/search/ConstantScoreQuery.h"
#include "org/apache/lucene/search/ConstantScoreWeight.h"
#include "org/apache/lucene/search/FilterLeafCollector.h"
#include "org/apache/lucene/search/FilterScorer.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/LeafCollector.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/apache/lucene/util/ToStringUtils.h"
#include "org/lukhnos/portmobile/util/Objects.h"

@interface OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer ()

- (id<OrgApacheLuceneSearchLeafCollector>)wrapCollectorWithOrgApacheLuceneSearchLeafCollector:(id<OrgApacheLuceneSearchLeafCollector>)collector;

@end

__attribute__((unused)) static id<OrgApacheLuceneSearchLeafCollector> OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_wrapCollectorWithOrgApacheLuceneSearchLeafCollector_(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer *self, id<OrgApacheLuceneSearchLeafCollector> collector);

@interface OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1 : OrgApacheLuceneSearchFilterLeafCollector {
 @public
  OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer *this$0_;
}

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

- (instancetype)initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer:(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer *)outer$
                                            withOrgApacheLuceneSearchLeafCollector:(id<OrgApacheLuceneSearchLeafCollector>)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1, this$0_, OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer *)

__attribute__((unused)) static void OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_withOrgApacheLuceneSearchLeafCollector_(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1 *self, OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer *outer$, id<OrgApacheLuceneSearchLeafCollector> arg$0);

__attribute__((unused)) static OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1 *new_OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_withOrgApacheLuceneSearchLeafCollector_(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer *outer$, id<OrgApacheLuceneSearchLeafCollector> arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1 *create_OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_withOrgApacheLuceneSearchLeafCollector_(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer *outer$, id<OrgApacheLuceneSearchLeafCollector> arg$0);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1)

@interface OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1 : OrgApacheLuceneSearchFilterScorer {
 @public
  OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1 *this$0_;
}

- (jfloat)score;

- (jint)freq;

- (instancetype)initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1:(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1 *)outer$
                                                      withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1, this$0_, OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1 *)

__attribute__((unused)) static void OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1 *self, OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1 *outer$, OrgApacheLuceneSearchScorer *arg$0);

__attribute__((unused)) static OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1 *new_OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1 *outer$, OrgApacheLuceneSearchScorer *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1 *create_OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1 *outer$, OrgApacheLuceneSearchScorer *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1)

@interface OrgApacheLuceneSearchConstantScoreQuery_$1 : OrgApacheLuceneSearchConstantScoreWeight {
 @public
  OrgApacheLuceneSearchConstantScoreQuery *this$0_;
  OrgApacheLuceneSearchWeight *val$innerWeight_;
}

- (OrgApacheLuceneSearchBulkScorer *)bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (instancetype)initWithOrgApacheLuceneSearchConstantScoreQuery:(OrgApacheLuceneSearchConstantScoreQuery *)outer$
                                withOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)capture$0
                                 withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchConstantScoreQuery_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchConstantScoreQuery_$1, this$0_, OrgApacheLuceneSearchConstantScoreQuery *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchConstantScoreQuery_$1, val$innerWeight_, OrgApacheLuceneSearchWeight *)

__attribute__((unused)) static void OrgApacheLuceneSearchConstantScoreQuery_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchConstantScoreQuery_$1 *self, OrgApacheLuceneSearchConstantScoreQuery *outer$, OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneSearchQuery *arg$0);

__attribute__((unused)) static OrgApacheLuceneSearchConstantScoreQuery_$1 *new_OrgApacheLuceneSearchConstantScoreQuery_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchConstantScoreQuery *outer$, OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneSearchQuery *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchConstantScoreQuery_$1 *create_OrgApacheLuceneSearchConstantScoreQuery_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchConstantScoreQuery *outer$, OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneSearchQuery *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchConstantScoreQuery_$1)

@interface OrgApacheLuceneSearchConstantScoreQuery_$1_$1 : OrgApacheLuceneSearchFilterScorer {
 @public
  jfloat val$score_;
  OrgApacheLuceneSearchScorer *val$innerScorer_;
}

- (jfloat)score;

- (jint)freq;

- (id<JavaUtilCollection>)getChildren;

- (instancetype)initWithFloat:(jfloat)capture$0
withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)capture$1
withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchConstantScoreQuery_$1_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchConstantScoreQuery_$1_$1, val$innerScorer_, OrgApacheLuceneSearchScorer *)

__attribute__((unused)) static void OrgApacheLuceneSearchConstantScoreQuery_$1_$1_initWithFloat_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchConstantScoreQuery_$1_$1 *self, jfloat capture$0, OrgApacheLuceneSearchScorer *capture$1, OrgApacheLuceneSearchScorer *arg$0);

__attribute__((unused)) static OrgApacheLuceneSearchConstantScoreQuery_$1_$1 *new_OrgApacheLuceneSearchConstantScoreQuery_$1_$1_initWithFloat_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(jfloat capture$0, OrgApacheLuceneSearchScorer *capture$1, OrgApacheLuceneSearchScorer *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchConstantScoreQuery_$1_$1 *create_OrgApacheLuceneSearchConstantScoreQuery_$1_$1_initWithFloat_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(jfloat capture$0, OrgApacheLuceneSearchScorer *capture$1, OrgApacheLuceneSearchScorer *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchConstantScoreQuery_$1_$1)

@implementation OrgApacheLuceneSearchConstantScoreQuery

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query {
  OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_(self, query);
  return self;
}

- (OrgApacheLuceneSearchQuery *)getQuery {
  return query_;
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  OrgApacheLuceneSearchQuery *rewritten = [((OrgApacheLuceneSearchQuery *) nil_chk(query_)) rewriteWithOrgApacheLuceneIndexIndexReader:reader];
  if ([((OrgApacheLuceneSearchQuery *) nil_chk(rewritten)) getClass] == (id) [self getClass]) {
    if ([self getBoost] != [rewritten getBoost]) {
      rewritten = [rewritten clone];
      [((OrgApacheLuceneSearchQuery *) nil_chk(rewritten)) setBoostWithFloat:[self getBoost]];
    }
    return rewritten;
  }
  if (rewritten != query_) {
    rewritten = create_OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_(rewritten);
    [rewritten setBoostWithFloat:[self getBoost]];
    return rewritten;
  }
  return self;
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores {
  OrgApacheLuceneSearchWeight *innerWeight = [((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) createWeightWithOrgApacheLuceneSearchQuery:query_ withBoolean:false];
  if (needsScores) {
    return create_OrgApacheLuceneSearchConstantScoreQuery_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchQuery_(self, innerWeight, self);
  }
  else {
    return innerWeight;
  }
}

- (NSString *)toStringWithNSString:(NSString *)field {
  return [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([create_JavaLangStringBuilder_initWithNSString_(@"ConstantScore(") appendWithNSString:[((OrgApacheLuceneSearchQuery *) nil_chk(query_)) toStringWithNSString:field]])) appendWithChar:')'])) appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])])) description];
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (![super isEqual:o]) return false;
  if ([o isKindOfClass:[OrgApacheLuceneSearchConstantScoreQuery class]]) {
    OrgApacheLuceneSearchConstantScoreQuery *other = (OrgApacheLuceneSearchConstantScoreQuery *) cast_chk(o, [OrgApacheLuceneSearchConstantScoreQuery class]);
    return [((OrgApacheLuceneSearchQuery *) nil_chk(self->query_)) isEqual:((OrgApacheLuceneSearchConstantScoreQuery *) nil_chk(other))->query_];
  }
  return false;
}

- (NSUInteger)hash {
  return 31 * ((jint) [super hash]) + ((jint) [((OrgApacheLuceneSearchQuery *) nil_chk(query_)) hash]);
}

- (void)dealloc {
  RELEASE_(query_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchQuery:", "ConstantScoreQuery", NULL, 0x1, NULL, NULL },
    { "getQuery", NULL, "Lorg.apache.lucene.search.Query;", 0x1, NULL, NULL },
    { "rewriteWithOrgApacheLuceneIndexIndexReader:", "rewrite", "Lorg.apache.lucene.search.Query;", 0x1, "Ljava.io.IOException;", NULL },
    { "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:", "createWeight", "Lorg.apache.lucene.search.Weight;", 0x1, "Ljava.io.IOException;", NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "query_", NULL, 0x14, "Lorg.apache.lucene.search.Query;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.ConstantScoreQuery$ConstantBulkScorer;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchConstantScoreQuery = { 2, "ConstantScoreQuery", "org.apache.lucene.search", NULL, 0x1, 7, methods, 1, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchConstantScoreQuery;
}

@end

void OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchConstantScoreQuery *self, OrgApacheLuceneSearchQuery *query) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssign(&self->query_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(query, @"Query must not be null"));
}

OrgApacheLuceneSearchConstantScoreQuery *new_OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchQuery *query) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchConstantScoreQuery, initWithOrgApacheLuceneSearchQuery_, query)
}

OrgApacheLuceneSearchConstantScoreQuery *create_OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchQuery *query) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchConstantScoreQuery, initWithOrgApacheLuceneSearchQuery_, query)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchConstantScoreQuery)

@implementation OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer

- (instancetype)initWithOrgApacheLuceneSearchConstantScoreQuery:(OrgApacheLuceneSearchConstantScoreQuery *)outer$
                            withOrgApacheLuceneSearchBulkScorer:(OrgApacheLuceneSearchBulkScorer *)bulkScorer
                                withOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                                                      withFloat:(jfloat)theScore {
  OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_initWithOrgApacheLuceneSearchConstantScoreQuery_withOrgApacheLuceneSearchBulkScorer_withOrgApacheLuceneSearchWeight_withFloat_(self, outer$, bulkScorer, weight, theScore);
  return self;
}

- (jint)scoreWithOrgApacheLuceneSearchLeafCollector:(id<OrgApacheLuceneSearchLeafCollector>)collector
                        withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs
                                            withInt:(jint)min
                                            withInt:(jint)max {
  return [((OrgApacheLuceneSearchBulkScorer *) nil_chk(bulkScorer_)) scoreWithOrgApacheLuceneSearchLeafCollector:OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_wrapCollectorWithOrgApacheLuceneSearchLeafCollector_(self, collector) withOrgApacheLuceneUtilBits:acceptDocs withInt:min withInt:max];
}

- (id<OrgApacheLuceneSearchLeafCollector>)wrapCollectorWithOrgApacheLuceneSearchLeafCollector:(id<OrgApacheLuceneSearchLeafCollector>)collector {
  return OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_wrapCollectorWithOrgApacheLuceneSearchLeafCollector_(self, collector);
}

- (jlong)cost {
  return [((OrgApacheLuceneSearchBulkScorer *) nil_chk(bulkScorer_)) cost];
}

- (void)dealloc {
  RELEASE_(bulkScorer_);
  RELEASE_(weight_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchConstantScoreQuery:withOrgApacheLuceneSearchBulkScorer:withOrgApacheLuceneSearchWeight:withFloat:", "ConstantBulkScorer", NULL, 0x1, NULL, NULL },
    { "scoreWithOrgApacheLuceneSearchLeafCollector:withOrgApacheLuceneUtilBits:withInt:withInt:", "score", "I", 0x1, "Ljava.io.IOException;", NULL },
    { "wrapCollectorWithOrgApacheLuceneSearchLeafCollector:", "wrapCollector", "Lorg.apache.lucene.search.LeafCollector;", 0x2, NULL, NULL },
    { "cost", NULL, "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "bulkScorer_", NULL, 0x10, "Lorg.apache.lucene.search.BulkScorer;", NULL, NULL, .constantValue.asLong = 0 },
    { "weight_", NULL, 0x10, "Lorg.apache.lucene.search.Weight;", NULL, NULL, .constantValue.asLong = 0 },
    { "theScore_", NULL, 0x10, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer = { 2, "ConstantBulkScorer", "org.apache.lucene.search", "ConstantScoreQuery", 0x4, 4, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer;
}

@end

void OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_initWithOrgApacheLuceneSearchConstantScoreQuery_withOrgApacheLuceneSearchBulkScorer_withOrgApacheLuceneSearchWeight_withFloat_(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer *self, OrgApacheLuceneSearchConstantScoreQuery *outer$, OrgApacheLuceneSearchBulkScorer *bulkScorer, OrgApacheLuceneSearchWeight *weight, jfloat theScore) {
  OrgApacheLuceneSearchBulkScorer_init(self);
  JreStrongAssign(&self->bulkScorer_, bulkScorer);
  JreStrongAssign(&self->weight_, weight);
  self->theScore_ = theScore;
}

OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer *new_OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_initWithOrgApacheLuceneSearchConstantScoreQuery_withOrgApacheLuceneSearchBulkScorer_withOrgApacheLuceneSearchWeight_withFloat_(OrgApacheLuceneSearchConstantScoreQuery *outer$, OrgApacheLuceneSearchBulkScorer *bulkScorer, OrgApacheLuceneSearchWeight *weight, jfloat theScore) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer, initWithOrgApacheLuceneSearchConstantScoreQuery_withOrgApacheLuceneSearchBulkScorer_withOrgApacheLuceneSearchWeight_withFloat_, outer$, bulkScorer, weight, theScore)
}

OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer *create_OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_initWithOrgApacheLuceneSearchConstantScoreQuery_withOrgApacheLuceneSearchBulkScorer_withOrgApacheLuceneSearchWeight_withFloat_(OrgApacheLuceneSearchConstantScoreQuery *outer$, OrgApacheLuceneSearchBulkScorer *bulkScorer, OrgApacheLuceneSearchWeight *weight, jfloat theScore) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer, initWithOrgApacheLuceneSearchConstantScoreQuery_withOrgApacheLuceneSearchBulkScorer_withOrgApacheLuceneSearchWeight_withFloat_, outer$, bulkScorer, weight, theScore)
}

id<OrgApacheLuceneSearchLeafCollector> OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_wrapCollectorWithOrgApacheLuceneSearchLeafCollector_(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer *self, id<OrgApacheLuceneSearchLeafCollector> collector) {
  return create_OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_withOrgApacheLuceneSearchLeafCollector_(self, collector);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer)

@implementation OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer {
  [((id<OrgApacheLuceneSearchLeafCollector>) nil_chk(in_)) setScorerWithOrgApacheLuceneSearchScorer:create_OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_withOrgApacheLuceneSearchScorer_(self, scorer)];
}

- (instancetype)initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer:(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer *)outer$
                                            withOrgApacheLuceneSearchLeafCollector:(id<OrgApacheLuceneSearchLeafCollector>)arg$0 {
  OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_withOrgApacheLuceneSearchLeafCollector_(self, outer$, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setScorerWithOrgApacheLuceneSearchScorer:", "setScorer", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer:withOrgApacheLuceneSearchLeafCollector:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.ConstantScoreQuery$ConstantBulkScorer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer", "wrapCollectorWithOrgApacheLuceneSearchLeafCollector:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1 = { 2, "", "org.apache.lucene.search", "ConstantScoreQuery$ConstantBulkScorer", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1;
}

@end

void OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_withOrgApacheLuceneSearchLeafCollector_(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1 *self, OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer *outer$, id<OrgApacheLuceneSearchLeafCollector> arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchFilterLeafCollector_initWithOrgApacheLuceneSearchLeafCollector_(self, arg$0);
}

OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1 *new_OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_withOrgApacheLuceneSearchLeafCollector_(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer *outer$, id<OrgApacheLuceneSearchLeafCollector> arg$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1, initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_withOrgApacheLuceneSearchLeafCollector_, outer$, arg$0)
}

OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1 *create_OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_withOrgApacheLuceneSearchLeafCollector_(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer *outer$, id<OrgApacheLuceneSearchLeafCollector> arg$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1, initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_withOrgApacheLuceneSearchLeafCollector_, outer$, arg$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1)

@implementation OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1

- (jfloat)score {
  return this$0_->this$0_->theScore_;
}

- (jint)freq {
  return 1;
}

- (instancetype)initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1:(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1 *)outer$
                                                      withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)arg$0 {
  OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_withOrgApacheLuceneSearchScorer_(self, outer$, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "score", NULL, "F", 0x1, "Ljava.io.IOException;", NULL },
    { "freq", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1:withOrgApacheLuceneSearchScorer:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.ConstantScoreQuery$ConstantBulkScorer$1;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1", "setScorerWithOrgApacheLuceneSearchScorer:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1 = { 2, "", "org.apache.lucene.search", "ConstantScoreQuery$ConstantBulkScorer$", 0x8008, 3, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1;
}

@end

void OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1 *self, OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1 *outer$, OrgApacheLuceneSearchScorer *arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_(self, arg$0);
}

OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1 *new_OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1 *outer$, OrgApacheLuceneSearchScorer *arg$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1, initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_withOrgApacheLuceneSearchScorer_, outer$, arg$0)
}

OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1 *create_OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1 *outer$, OrgApacheLuceneSearchScorer *arg$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1, initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_withOrgApacheLuceneSearchScorer_, outer$, arg$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1)

@implementation OrgApacheLuceneSearchConstantScoreQuery_$1

- (OrgApacheLuceneSearchBulkScorer *)bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneSearchBulkScorer *innerScorer = [((OrgApacheLuceneSearchWeight *) nil_chk(val$innerWeight_)) bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:context];
  if (innerScorer == nil) {
    return nil;
  }
  return create_OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_initWithOrgApacheLuceneSearchConstantScoreQuery_withOrgApacheLuceneSearchBulkScorer_withOrgApacheLuceneSearchWeight_withFloat_(this$0_, innerScorer, self, [self score]);
}

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneSearchScorer *innerScorer = [((OrgApacheLuceneSearchWeight *) nil_chk(val$innerWeight_)) scorerWithOrgApacheLuceneIndexLeafReaderContext:context];
  if (innerScorer == nil) {
    return nil;
  }
  jfloat score = [self score];
  return create_OrgApacheLuceneSearchConstantScoreQuery_$1_$1_initWithFloat_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(score, innerScorer, innerScorer);
}

- (instancetype)initWithOrgApacheLuceneSearchConstantScoreQuery:(OrgApacheLuceneSearchConstantScoreQuery *)outer$
                                withOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)capture$0
                                 withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)arg$0 {
  OrgApacheLuceneSearchConstantScoreQuery_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchQuery_(self, outer$, capture$0, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$innerWeight_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:", "bulkScorer", "Lorg.apache.lucene.search.BulkScorer;", 0x1, "Ljava.io.IOException;", NULL },
    { "scorerWithOrgApacheLuceneIndexLeafReaderContext:", "scorer", "Lorg.apache.lucene.search.Scorer;", 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneSearchConstantScoreQuery:withOrgApacheLuceneSearchWeight:withOrgApacheLuceneSearchQuery:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.ConstantScoreQuery;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$innerWeight_", NULL, 0x1012, "Lorg.apache.lucene.search.Weight;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchConstantScoreQuery", "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchConstantScoreQuery_$1 = { 2, "", "org.apache.lucene.search", "ConstantScoreQuery", 0x8008, 3, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchConstantScoreQuery_$1;
}

@end

void OrgApacheLuceneSearchConstantScoreQuery_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchConstantScoreQuery_$1 *self, OrgApacheLuceneSearchConstantScoreQuery *outer$, OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneSearchQuery *arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$innerWeight_, capture$0);
  OrgApacheLuceneSearchConstantScoreWeight_initWithOrgApacheLuceneSearchQuery_(self, arg$0);
}

OrgApacheLuceneSearchConstantScoreQuery_$1 *new_OrgApacheLuceneSearchConstantScoreQuery_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchConstantScoreQuery *outer$, OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneSearchQuery *arg$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchConstantScoreQuery_$1, initWithOrgApacheLuceneSearchConstantScoreQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchQuery_, outer$, capture$0, arg$0)
}

OrgApacheLuceneSearchConstantScoreQuery_$1 *create_OrgApacheLuceneSearchConstantScoreQuery_$1_initWithOrgApacheLuceneSearchConstantScoreQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchConstantScoreQuery *outer$, OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneSearchQuery *arg$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchConstantScoreQuery_$1, initWithOrgApacheLuceneSearchConstantScoreQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchQuery_, outer$, capture$0, arg$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchConstantScoreQuery_$1)

@implementation OrgApacheLuceneSearchConstantScoreQuery_$1_$1

- (jfloat)score {
  return val$score_;
}

- (jint)freq {
  return 1;
}

- (id<JavaUtilCollection>)getChildren {
  return JavaUtilCollections_singletonWithId_(create_OrgApacheLuceneSearchScorer_ChildScorer_initWithOrgApacheLuceneSearchScorer_withNSString_(val$innerScorer_, @"constant"));
}

- (instancetype)initWithFloat:(jfloat)capture$0
withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)capture$1
withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)arg$0 {
  OrgApacheLuceneSearchConstantScoreQuery_$1_$1_initWithFloat_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(self, capture$0, capture$1, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(val$innerScorer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "score", NULL, "F", 0x1, "Ljava.io.IOException;", NULL },
    { "freq", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "getChildren", NULL, "Ljava.util.Collection;", 0x1, NULL, "()Ljava/util/Collection<Lorg/apache/lucene/search/Scorer$ChildScorer;>;" },
    { "initWithFloat:withOrgApacheLuceneSearchScorer:withOrgApacheLuceneSearchScorer:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$score_", NULL, 0x1012, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "val$innerScorer_", NULL, 0x1012, "Lorg.apache.lucene.search.Scorer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchConstantScoreQuery_$1", "scorerWithOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchConstantScoreQuery_$1_$1 = { 2, "", "org.apache.lucene.search", "ConstantScoreQuery$", 0x8008, 4, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchConstantScoreQuery_$1_$1;
}

@end

void OrgApacheLuceneSearchConstantScoreQuery_$1_$1_initWithFloat_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchConstantScoreQuery_$1_$1 *self, jfloat capture$0, OrgApacheLuceneSearchScorer *capture$1, OrgApacheLuceneSearchScorer *arg$0) {
  self->val$score_ = capture$0;
  JreStrongAssign(&self->val$innerScorer_, capture$1);
  OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_(self, arg$0);
}

OrgApacheLuceneSearchConstantScoreQuery_$1_$1 *new_OrgApacheLuceneSearchConstantScoreQuery_$1_$1_initWithFloat_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(jfloat capture$0, OrgApacheLuceneSearchScorer *capture$1, OrgApacheLuceneSearchScorer *arg$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchConstantScoreQuery_$1_$1, initWithFloat_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_, capture$0, capture$1, arg$0)
}

OrgApacheLuceneSearchConstantScoreQuery_$1_$1 *create_OrgApacheLuceneSearchConstantScoreQuery_$1_$1_initWithFloat_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(jfloat capture$0, OrgApacheLuceneSearchScorer *capture$1, OrgApacheLuceneSearchScorer *arg$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchConstantScoreQuery_$1_$1, initWithFloat_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_, capture$0, capture$1, arg$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchConstantScoreQuery_$1_$1)
