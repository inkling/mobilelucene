//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/JoinUtil.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/util/List.h"
#include "java/util/Locale.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/MultiDocValues.h"
#include "org/apache/lucene/index/SortedDocValues.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/MatchNoDocsQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/join/GlobalOrdinalsCollector.h"
#include "org/apache/lucene/search/join/GlobalOrdinalsQuery.h"
#include "org/apache/lucene/search/join/GlobalOrdinalsWithScoreCollector.h"
#include "org/apache/lucene/search/join/GlobalOrdinalsWithScoreQuery.h"
#include "org/apache/lucene/search/join/JoinUtil.h"
#include "org/apache/lucene/search/join/ScoreMode.h"
#include "org/apache/lucene/search/join/TermsCollector.h"
#include "org/apache/lucene/search/join/TermsIncludingScoreQuery.h"
#include "org/apache/lucene/search/join/TermsQuery.h"
#include "org/apache/lucene/search/join/TermsWithScoreCollector.h"
#include "org/apache/lucene/util/BytesRefHash.h"
#include "org/apache/lucene/util/LongBitSet.h"

@interface OrgApacheLuceneSearchJoinJoinUtil ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneSearchJoinJoinUtil_init(OrgApacheLuceneSearchJoinJoinUtil *self);

__attribute__((unused)) static OrgApacheLuceneSearchJoinJoinUtil *new_OrgApacheLuceneSearchJoinJoinUtil_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchJoinJoinUtil *create_OrgApacheLuceneSearchJoinJoinUtil_init();

@implementation OrgApacheLuceneSearchJoinJoinUtil

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchJoinJoinUtil_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (OrgApacheLuceneSearchQuery *)createJoinQueryWithNSString:(NSString *)fromField
                                                withBoolean:(jboolean)multipleValuesPerDocument
                                               withNSString:(NSString *)toField
                             withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)fromQuery
                     withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)fromSearcher
                     withOrgApacheLuceneSearchJoinScoreMode:(OrgApacheLuceneSearchJoinScoreMode *)scoreMode {
  return OrgApacheLuceneSearchJoinJoinUtil_createJoinQueryWithNSString_withBoolean_withNSString_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchIndexSearcher_withOrgApacheLuceneSearchJoinScoreMode_(fromField, multipleValuesPerDocument, toField, fromQuery, fromSearcher, scoreMode);
}

+ (OrgApacheLuceneSearchQuery *)createJoinQueryWithNSString:(NSString *)joinField
                             withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)fromQuery
                             withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)toQuery
                     withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                     withOrgApacheLuceneSearchJoinScoreMode:(OrgApacheLuceneSearchJoinScoreMode *)scoreMode
          withOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)ordinalMap {
  return OrgApacheLuceneSearchJoinJoinUtil_createJoinQueryWithNSString_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchIndexSearcher_withOrgApacheLuceneSearchJoinScoreMode_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_(joinField, fromQuery, toQuery, searcher, scoreMode, ordinalMap);
}

+ (OrgApacheLuceneSearchQuery *)createJoinQueryWithNSString:(NSString *)joinField
                             withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)fromQuery
                             withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)toQuery
                     withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                     withOrgApacheLuceneSearchJoinScoreMode:(OrgApacheLuceneSearchJoinScoreMode *)scoreMode
          withOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)ordinalMap
                                                    withInt:(jint)min
                                                    withInt:(jint)max {
  return OrgApacheLuceneSearchJoinJoinUtil_createJoinQueryWithNSString_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchIndexSearcher_withOrgApacheLuceneSearchJoinScoreMode_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withInt_withInt_(joinField, fromQuery, toQuery, searcher, scoreMode, ordinalMap, min, max);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "JoinUtil", NULL, 0x2, NULL, NULL },
    { "createJoinQueryWithNSString:withBoolean:withNSString:withOrgApacheLuceneSearchQuery:withOrgApacheLuceneSearchIndexSearcher:withOrgApacheLuceneSearchJoinScoreMode:", "createJoinQuery", "Lorg.apache.lucene.search.Query;", 0x9, "Ljava.io.IOException;", NULL },
    { "createJoinQueryWithNSString:withOrgApacheLuceneSearchQuery:withOrgApacheLuceneSearchQuery:withOrgApacheLuceneSearchIndexSearcher:withOrgApacheLuceneSearchJoinScoreMode:withOrgApacheLuceneIndexMultiDocValues_OrdinalMap:", "createJoinQuery", "Lorg.apache.lucene.search.Query;", 0x9, "Ljava.io.IOException;", NULL },
    { "createJoinQueryWithNSString:withOrgApacheLuceneSearchQuery:withOrgApacheLuceneSearchQuery:withOrgApacheLuceneSearchIndexSearcher:withOrgApacheLuceneSearchJoinScoreMode:withOrgApacheLuceneIndexMultiDocValues_OrdinalMap:withInt:withInt:", "createJoinQuery", "Lorg.apache.lucene.search.Query;", 0x9, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinJoinUtil = { 2, "JoinUtil", "org.apache.lucene.search.join", NULL, 0x11, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchJoinJoinUtil;
}

@end

void OrgApacheLuceneSearchJoinJoinUtil_init(OrgApacheLuceneSearchJoinJoinUtil *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchJoinJoinUtil *new_OrgApacheLuceneSearchJoinJoinUtil_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchJoinJoinUtil, init)
}

OrgApacheLuceneSearchJoinJoinUtil *create_OrgApacheLuceneSearchJoinJoinUtil_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchJoinJoinUtil, init)
}

OrgApacheLuceneSearchQuery *OrgApacheLuceneSearchJoinJoinUtil_createJoinQueryWithNSString_withBoolean_withNSString_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchIndexSearcher_withOrgApacheLuceneSearchJoinScoreMode_(NSString *fromField, jboolean multipleValuesPerDocument, NSString *toField, OrgApacheLuceneSearchQuery *fromQuery, OrgApacheLuceneSearchIndexSearcher *fromSearcher, OrgApacheLuceneSearchJoinScoreMode *scoreMode) {
  OrgApacheLuceneSearchJoinJoinUtil_initialize();
  {
    OrgApacheLuceneSearchJoinTermsCollector *termsCollector;
    OrgApacheLuceneSearchJoinTermsWithScoreCollector *termsWithScoreCollector;
    switch ([scoreMode ordinal]) {
      case OrgApacheLuceneSearchJoinScoreMode_Enum_None:
      termsCollector = OrgApacheLuceneSearchJoinTermsCollector_createWithNSString_withBoolean_(fromField, multipleValuesPerDocument);
      [((OrgApacheLuceneSearchIndexSearcher *) nil_chk(fromSearcher)) searchWithOrgApacheLuceneSearchQuery:fromQuery withOrgApacheLuceneSearchCollector:termsCollector];
      return create_OrgApacheLuceneSearchJoinTermsQuery_initWithNSString_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneUtilBytesRefHash_(toField, fromQuery, [((OrgApacheLuceneSearchJoinTermsCollector *) nil_chk(termsCollector)) getCollectorTerms]);
      case OrgApacheLuceneSearchJoinScoreMode_Enum_Total:
      case OrgApacheLuceneSearchJoinScoreMode_Enum_Max:
      case OrgApacheLuceneSearchJoinScoreMode_Enum_Min:
      case OrgApacheLuceneSearchJoinScoreMode_Enum_Avg:
      termsWithScoreCollector = OrgApacheLuceneSearchJoinTermsWithScoreCollector_createWithNSString_withBoolean_withOrgApacheLuceneSearchJoinScoreMode_(fromField, multipleValuesPerDocument, scoreMode);
      [((OrgApacheLuceneSearchIndexSearcher *) nil_chk(fromSearcher)) searchWithOrgApacheLuceneSearchQuery:fromQuery withOrgApacheLuceneSearchCollector:termsWithScoreCollector];
      return create_OrgApacheLuceneSearchJoinTermsIncludingScoreQuery_initWithNSString_withBoolean_withOrgApacheLuceneUtilBytesRefHash_withFloatArray_withOrgApacheLuceneSearchQuery_(toField, multipleValuesPerDocument, [((OrgApacheLuceneSearchJoinTermsWithScoreCollector *) nil_chk(termsWithScoreCollector)) getCollectedTerms], [termsWithScoreCollector getScoresPerTerm], fromQuery);
      default:
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(JreLoadStatic(JavaUtilLocale, ROOT), @"Score mode %s isn't supported.", [IOSObjectArray arrayWithObjects:(id[]){ scoreMode } count:1 type:NSObject_class_()]));
    }
  }
}

OrgApacheLuceneSearchQuery *OrgApacheLuceneSearchJoinJoinUtil_createJoinQueryWithNSString_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchIndexSearcher_withOrgApacheLuceneSearchJoinScoreMode_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_(NSString *joinField, OrgApacheLuceneSearchQuery *fromQuery, OrgApacheLuceneSearchQuery *toQuery, OrgApacheLuceneSearchIndexSearcher *searcher, OrgApacheLuceneSearchJoinScoreMode *scoreMode, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap) {
  OrgApacheLuceneSearchJoinJoinUtil_initialize();
  return OrgApacheLuceneSearchJoinJoinUtil_createJoinQueryWithNSString_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchIndexSearcher_withOrgApacheLuceneSearchJoinScoreMode_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withInt_withInt_(joinField, fromQuery, toQuery, searcher, scoreMode, ordinalMap, 0, JavaLangInteger_MAX_VALUE);
}

OrgApacheLuceneSearchQuery *OrgApacheLuceneSearchJoinJoinUtil_createJoinQueryWithNSString_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchIndexSearcher_withOrgApacheLuceneSearchJoinScoreMode_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withInt_withInt_(NSString *joinField, OrgApacheLuceneSearchQuery *fromQuery, OrgApacheLuceneSearchQuery *toQuery, OrgApacheLuceneSearchIndexSearcher *searcher, OrgApacheLuceneSearchJoinScoreMode *scoreMode, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap, jint min, jint max) {
  OrgApacheLuceneSearchJoinJoinUtil_initialize();
  OrgApacheLuceneIndexIndexReader *indexReader = [((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) getIndexReader];
  jint numSegments = [((id<JavaUtilList>) nil_chk([((OrgApacheLuceneIndexIndexReader *) nil_chk(indexReader)) leaves])) size];
  jlong valueCount;
  if (numSegments == 0) {
    return create_OrgApacheLuceneSearchMatchNoDocsQuery_init();
  }
  else if (numSegments == 1) {
    ordinalMap = nil;
    OrgApacheLuceneIndexLeafReader *leafReader = [((OrgApacheLuceneIndexLeafReaderContext *) nil_chk([((id<JavaUtilList>) nil_chk([((OrgApacheLuceneIndexIndexReader *) nil_chk([searcher getIndexReader])) leaves])) getWithInt:0])) reader];
    OrgApacheLuceneIndexSortedDocValues *joinSortedDocValues = [((OrgApacheLuceneIndexLeafReader *) nil_chk(leafReader)) getSortedDocValuesWithNSString:joinField];
    if (joinSortedDocValues != nil) {
      valueCount = [joinSortedDocValues getValueCount];
    }
    else {
      return create_OrgApacheLuceneSearchMatchNoDocsQuery_init();
    }
  }
  else {
    if (ordinalMap == nil) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"OrdinalMap is required, because there is more than 1 segment");
    }
    valueCount = [ordinalMap getValueCount];
  }
  OrgApacheLuceneSearchQuery *rewrittenFromQuery = [searcher rewriteWithOrgApacheLuceneSearchQuery:fromQuery];
  OrgApacheLuceneSearchQuery *rewrittenToQuery = [searcher rewriteWithOrgApacheLuceneSearchQuery:toQuery];
  OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *globalOrdinalsWithScoreCollector;
  switch ([scoreMode ordinal]) {
    case OrgApacheLuceneSearchJoinScoreMode_Enum_Total:
    globalOrdinalsWithScoreCollector = create_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Sum_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withInt_withInt_(joinField, ordinalMap, valueCount, min, max);
    break;
    case OrgApacheLuceneSearchJoinScoreMode_Enum_Min:
    globalOrdinalsWithScoreCollector = create_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Min_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withInt_withInt_(joinField, ordinalMap, valueCount, min, max);
    break;
    case OrgApacheLuceneSearchJoinScoreMode_Enum_Max:
    globalOrdinalsWithScoreCollector = create_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Max_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withInt_withInt_(joinField, ordinalMap, valueCount, min, max);
    break;
    case OrgApacheLuceneSearchJoinScoreMode_Enum_Avg:
    globalOrdinalsWithScoreCollector = create_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Avg_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withInt_withInt_(joinField, ordinalMap, valueCount, min, max);
    break;
    case OrgApacheLuceneSearchJoinScoreMode_Enum_None:
    if (min <= 0 && max == JavaLangInteger_MAX_VALUE) {
      OrgApacheLuceneSearchJoinGlobalOrdinalsCollector *globalOrdinalsCollector = create_OrgApacheLuceneSearchJoinGlobalOrdinalsCollector_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_(joinField, ordinalMap, valueCount);
      [searcher searchWithOrgApacheLuceneSearchQuery:rewrittenFromQuery withOrgApacheLuceneSearchCollector:globalOrdinalsCollector];
      return create_OrgApacheLuceneSearchJoinGlobalOrdinalsQuery_initWithOrgApacheLuceneUtilLongBitSet_withNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneIndexIndexReader_([globalOrdinalsCollector getCollectorOrdinals], joinField, ordinalMap, rewrittenToQuery, rewrittenFromQuery, indexReader);
    }
    else {
      globalOrdinalsWithScoreCollector = create_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_NoScore_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withInt_withInt_(joinField, ordinalMap, valueCount, min, max);
      break;
    }
    default:
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(JreLoadStatic(JavaUtilLocale, ROOT), @"Score mode %s isn't supported.", [IOSObjectArray arrayWithObjects:(id[]){ scoreMode } count:1 type:NSObject_class_()]));
  }
  [searcher searchWithOrgApacheLuceneSearchQuery:rewrittenFromQuery withOrgApacheLuceneSearchCollector:globalOrdinalsWithScoreCollector];
  return create_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreQuery_initWithOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_withNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withInt_withInt_withOrgApacheLuceneIndexIndexReader_(globalOrdinalsWithScoreCollector, joinField, ordinalMap, rewrittenToQuery, rewrittenFromQuery, min, max, indexReader);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinJoinUtil)
