//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/spans/TermSpans.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Comparable.h"
#include "java/lang/Integer.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/spans/SpanCollector.h"
#include "org/apache/lucene/search/spans/Spans.h"
#include "org/apache/lucene/search/spans/TermSpans.h"
#include "org/lukhnos/portmobile/util/Objects.h"

@implementation OrgApacheLuceneSearchSpansTermSpans

- (instancetype)initWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)postings
                            withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  OrgApacheLuceneSearchSpansTermSpans_initWithOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneIndexTerm_(self, postings, term);
  return self;
}

- (jint)nextDoc {
  doc_ = [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(postings_)) nextDoc];
  if (doc_ != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
    freq_ = [postings_ freq];
    JreAssert((freq_ >= 1), (@"org/apache/lucene/search/spans/TermSpans.java:52 condition failed: assert freq >= 1;"));
    count_ = 0;
  }
  position_ = -1;
  return doc_;
}

- (jint)advanceWithInt:(jint)target {
  JreAssert((target > doc_), (@"org/apache/lucene/search/spans/TermSpans.java:61 condition failed: assert target > doc;"));
  doc_ = [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(postings_)) advanceWithInt:target];
  if (doc_ != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
    freq_ = [postings_ freq];
    JreAssert((freq_ >= 1), (@"org/apache/lucene/search/spans/TermSpans.java:65 condition failed: assert freq >= 1;"));
    count_ = 0;
  }
  position_ = -1;
  return doc_;
}

- (jint)docID {
  return doc_;
}

- (jint)nextStartPosition {
  if (count_ == freq_) {
    JreAssert((position_ != OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS), (@"org/apache/lucene/search/spans/TermSpans.java:80 condition failed: assert position != NO_MORE_POSITIONS;"));
    return position_ = OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS;
  }
  jint prevPosition = position_;
  position_ = [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(postings_)) nextPosition];
  JreAssert((position_ >= prevPosition), (JreStrcat("$I$I", @"prevPosition=", prevPosition, @" > position=", position_)));
  JreAssert((position_ != OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS), (@"org/apache/lucene/search/spans/TermSpans.java:86 condition failed: assert position != NO_MORE_POSITIONS;"));
  count_++;
  readPayload_ = false;
  return position_;
}

- (jint)startPosition {
  return position_;
}

- (jint)endPosition {
  return (position_ == -1) ? -1 : (position_ != OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS) ? position_ + 1 : OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS;
}

- (jint)width {
  return 0;
}

- (jlong)cost {
  return [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(postings_)) cost];
}

- (void)collectWithOrgApacheLuceneSearchSpansSpanCollector:(id<OrgApacheLuceneSearchSpansSpanCollector>)collector {
  [((id<OrgApacheLuceneSearchSpansSpanCollector>) nil_chk(collector)) collectLeafWithOrgApacheLuceneIndexPostingsEnum:postings_ withInt:position_ withOrgApacheLuceneIndexTerm:term_];
}

- (NSString *)description {
  return JreStrcat("$$$$", @"spans(", [((OrgApacheLuceneIndexTerm *) nil_chk(term_)) description], @")@", (doc_ == -1 ? @"START" : (doc_ == OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) ? @"ENDDOC" : JreStrcat("I$@", doc_, @" - ", (position_ == OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS ? @"ENDPOS" : JavaLangInteger_valueOfWithInt_(position_)))));
}

- (OrgApacheLuceneIndexPostingsEnum *)getPostings {
  return postings_;
}

- (void)dealloc {
  RELEASE_(postings_);
  RELEASE_(term_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexPostingsEnum:withOrgApacheLuceneIndexTerm:", "TermSpans", NULL, 0x1, NULL, NULL },
    { "nextDoc", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "advanceWithInt:", "advance", "I", 0x1, "Ljava.io.IOException;", NULL },
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "nextStartPosition", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "startPosition", NULL, "I", 0x1, NULL, NULL },
    { "endPosition", NULL, "I", 0x1, NULL, NULL },
    { "width", NULL, "I", 0x1, NULL, NULL },
    { "cost", NULL, "J", 0x1, NULL, NULL },
    { "collectWithOrgApacheLuceneSearchSpansSpanCollector:", "collect", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getPostings", NULL, "Lorg.apache.lucene.index.PostingsEnum;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "postings_", NULL, 0x14, "Lorg.apache.lucene.index.PostingsEnum;", NULL, NULL, .constantValue.asLong = 0 },
    { "term_", NULL, 0x14, "Lorg.apache.lucene.index.Term;", NULL, NULL, .constantValue.asLong = 0 },
    { "doc_", NULL, 0x4, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "freq_", NULL, 0x4, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "count_", NULL, 0x4, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "position_", NULL, 0x4, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "readPayload_", NULL, 0x4, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansTermSpans = { 2, "TermSpans", "org.apache.lucene.search.spans", NULL, 0x1, 12, methods, 7, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSpansTermSpans;
}

@end

void OrgApacheLuceneSearchSpansTermSpans_initWithOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchSpansTermSpans *self, OrgApacheLuceneIndexPostingsEnum *postings, OrgApacheLuceneIndexTerm *term) {
  OrgApacheLuceneSearchSpansSpans_init(self);
  JreStrongAssign(&self->postings_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(postings));
  JreStrongAssign(&self->term_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(term));
  self->doc_ = -1;
  self->position_ = -1;
}

OrgApacheLuceneSearchSpansTermSpans *new_OrgApacheLuceneSearchSpansTermSpans_initWithOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexPostingsEnum *postings, OrgApacheLuceneIndexTerm *term) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansTermSpans, initWithOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneIndexTerm_, postings, term)
}

OrgApacheLuceneSearchSpansTermSpans *create_OrgApacheLuceneSearchSpansTermSpans_initWithOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexPostingsEnum *postings, OrgApacheLuceneIndexTerm *term) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansTermSpans, initWithOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneIndexTerm_, postings, term)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansTermSpans)
