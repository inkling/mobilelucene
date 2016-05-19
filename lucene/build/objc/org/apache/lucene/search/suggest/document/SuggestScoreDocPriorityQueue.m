//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/SuggestScoreDocPriorityQueue.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/search/suggest/document/SuggestScoreDocPriorityQueue.h"
#include "org/apache/lucene/search/suggest/document/TopSuggestDocs.h"
#include "org/apache/lucene/util/PriorityQueue.h"

@implementation OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue

- (instancetype)initWithInt:(jint)size {
  OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue_initWithInt_(self, size);
  return self;
}

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc *)a
                    withId:(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc *)b {
  if (((OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc *) nil_chk(a))->score_ == ((OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc *) nil_chk(b))->score_) {
    return a->doc_ > b->doc_;
  }
  return a->score_ < b->score_;
}

- (IOSObjectArray *)getResults {
  jint size = [self size];
  IOSObjectArray *res = [IOSObjectArray arrayWithLength:size type:OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc_class_()];
  for (jint i = size - 1; i >= 0; i--) {
    IOSObjectArray_Set(res, i, [self pop]);
  }
  return res;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "SuggestScoreDocPriorityQueue", NULL, 0x1, NULL, NULL },
    { "lessThanWithId:withId:", "lessThan", "Z", 0x4, NULL, "(Lorg/apache/lucene/search/suggest/document/TopSuggestDocs$SuggestScoreDoc;Lorg/apache/lucene/search/suggest/document/TopSuggestDocs$SuggestScoreDoc;)Z" },
    { "getResults", NULL, "[Lorg.apache.lucene.search.suggest.document.TopSuggestDocs$SuggestScoreDoc;", 0x1, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.search.suggest.document.TopSuggestDocs$SuggestScoreDoc;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue = { 2, "SuggestScoreDocPriorityQueue", "org.apache.lucene.search.suggest.document", NULL, 0x10, 3, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/util/PriorityQueue<Lorg/apache/lucene/search/suggest/document/TopSuggestDocs$SuggestScoreDoc;>;" };
  return &_OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue;
}

@end

void OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue_initWithInt_(OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue *self, jint size) {
  OrgApacheLuceneUtilPriorityQueue_initWithInt_(self, size);
}

OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue *new_OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue_initWithInt_(jint size) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue, initWithInt_, size)
}

OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue *create_OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue_initWithInt_(jint size) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue, initWithInt_, size)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue)
