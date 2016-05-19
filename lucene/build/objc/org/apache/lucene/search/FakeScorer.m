//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/FakeScorer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/Collection.h"
#include "org/apache/lucene/search/FakeScorer.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Weight.h"

@implementation OrgApacheLuceneSearchFakeScorer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchFakeScorer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)advanceWithInt:(jint)target {
  @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"FakeScorer doesn't support advance(int)");
}

- (jint)docID {
  return doc_;
}

- (jint)freq {
  return freq_;
}

- (jint)nextDoc {
  @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"FakeScorer doesn't support nextDoc()");
}

- (jfloat)score {
  return score_;
}

- (jlong)cost {
  return 1;
}

- (OrgApacheLuceneSearchWeight *)getWeight {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (id<JavaUtilCollection>)getChildren {
  @throw create_JavaLangUnsupportedOperationException_init();
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "FakeScorer", NULL, 0x1, NULL, NULL },
    { "advanceWithInt:", "advance", "I", 0x1, NULL, NULL },
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "freq", NULL, "I", 0x1, NULL, NULL },
    { "nextDoc", NULL, "I", 0x1, NULL, NULL },
    { "score", NULL, "F", 0x1, NULL, NULL },
    { "cost", NULL, "J", 0x1, NULL, NULL },
    { "getWeight", NULL, "Lorg.apache.lucene.search.Weight;", 0x1, NULL, NULL },
    { "getChildren", NULL, "Ljava.util.Collection;", 0x1, NULL, "()Ljava/util/Collection<Lorg/apache/lucene/search/Scorer$ChildScorer;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "score_", NULL, 0x0, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "doc_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "freq_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFakeScorer = { 2, "FakeScorer", "org.apache.lucene.search", NULL, 0x10, 9, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchFakeScorer;
}

@end

void OrgApacheLuceneSearchFakeScorer_init(OrgApacheLuceneSearchFakeScorer *self) {
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(self, nil);
  self->doc_ = -1;
  self->freq_ = 1;
}

OrgApacheLuceneSearchFakeScorer *new_OrgApacheLuceneSearchFakeScorer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchFakeScorer, init)
}

OrgApacheLuceneSearchFakeScorer *create_OrgApacheLuceneSearchFakeScorer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchFakeScorer, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFakeScorer)
