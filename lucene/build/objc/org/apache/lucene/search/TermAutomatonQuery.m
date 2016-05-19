//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/TermAutomatonQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/IndexReaderContext.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/ReaderUtil.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/TermContext.h"
#include "org/apache/lucene/index/TermState.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/search/CollectionStatistics.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/TermAutomatonQuery.h"
#include "org/apache/lucene/search/TermAutomatonScorer.h"
#include "org/apache/lucene/search/TermStatistics.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/search/similarities/Similarity.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/automaton/Automaton.h"
#include "org/apache/lucene/util/automaton/Operations.h"
#include "org/apache/lucene/util/automaton/Transition.h"

@interface OrgApacheLuceneSearchTermAutomatonQuery () {
 @public
  NSString *field_;
  OrgApacheLuceneUtilAutomatonAutomaton_Builder *builder_;
  id<JavaUtilMap> termToID_;
  id<JavaUtilMap> idToTerm_;
  jint anyTermID_;
}

- (jint)getTermIDWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermAutomatonQuery, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermAutomatonQuery, builder_, OrgApacheLuceneUtilAutomatonAutomaton_Builder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermAutomatonQuery, termToID_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermAutomatonQuery, idToTerm_, id<JavaUtilMap>)

__attribute__((unused)) static jint OrgApacheLuceneSearchTermAutomatonQuery_getTermIDWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneSearchTermAutomatonQuery *self, OrgApacheLuceneUtilBytesRef *term);

@interface OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight () {
 @public
  OrgApacheLuceneSearchTermAutomatonQuery *this$0_;
  OrgApacheLuceneSearchIndexSearcher *searcher_;
  id<JavaUtilMap> termStates_;
  OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *stats_;
  OrgApacheLuceneSearchSimilaritiesSimilarity *similarity_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight, this$0_, OrgApacheLuceneSearchTermAutomatonQuery *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight, searcher_, OrgApacheLuceneSearchIndexSearcher *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight, termStates_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight, stats_, OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight, similarity_, OrgApacheLuceneSearchSimilaritiesSimilarity *)

@implementation OrgApacheLuceneSearchTermAutomatonQuery

- (instancetype)initWithNSString:(NSString *)field {
  OrgApacheLuceneSearchTermAutomatonQuery_initWithNSString_(self, field);
  return self;
}

- (jint)createState {
  return [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(builder_)) createState];
}

- (void)setAcceptWithInt:(jint)state
             withBoolean:(jboolean)accept {
  [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(builder_)) setAcceptWithInt:state withBoolean:accept];
}

- (void)addTransitionWithInt:(jint)source
                     withInt:(jint)dest
                withNSString:(NSString *)term {
  [self addTransitionWithInt:source withInt:dest withOrgApacheLuceneUtilBytesRef:create_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(term)];
}

- (void)addTransitionWithInt:(jint)source
                     withInt:(jint)dest
withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term {
  if (term == nil) {
    @throw create_JavaLangNullPointerException_initWithNSString_(@"term should not be null");
  }
  [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(builder_)) addTransitionWithInt:source withInt:dest withInt:OrgApacheLuceneSearchTermAutomatonQuery_getTermIDWithOrgApacheLuceneUtilBytesRef_(self, term)];
}

- (void)addAnyTransitionWithInt:(jint)source
                        withInt:(jint)dest {
  [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(builder_)) addTransitionWithInt:source withInt:dest withInt:OrgApacheLuceneSearchTermAutomatonQuery_getTermIDWithOrgApacheLuceneUtilBytesRef_(self, nil)];
}

- (void)finish {
  [self finishWithInt:OrgApacheLuceneUtilAutomatonOperations_DEFAULT_MAX_DETERMINIZED_STATES];
}

- (void)finishWithInt:(jint)maxDeterminizedStates {
  OrgApacheLuceneUtilAutomatonAutomaton *automaton = [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(builder_)) finish];
  OrgApacheLuceneUtilAutomatonTransition *t = create_OrgApacheLuceneUtilAutomatonTransition_init();
  if (anyTermID_ != -1) {
    jint count = [((OrgApacheLuceneUtilAutomatonAutomaton *) nil_chk(automaton)) initTransitionWithInt:0 withOrgApacheLuceneUtilAutomatonTransition:t];
    for (jint i = 0; i < count; i++) {
      [automaton getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:t];
      if (anyTermID_ >= t->min_ && anyTermID_ <= t->max_) {
        @throw create_JavaLangIllegalStateException_initWithNSString_(@"automaton cannot lead with an ANY transition");
      }
    }
    jint numStates = [automaton getNumStates];
    for (jint i = 0; i < numStates; i++) {
      count = [automaton initTransitionWithInt:i withOrgApacheLuceneUtilAutomatonTransition:t];
      for (jint j = 0; j < count; j++) {
        [automaton getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:t];
        if ([automaton isAcceptWithInt:t->dest_] && anyTermID_ >= t->min_ && anyTermID_ <= t->max_) {
          @throw create_JavaLangIllegalStateException_initWithNSString_(@"automaton cannot end with an ANY transition");
        }
      }
    }
    jint termCount = [((id<JavaUtilMap>) nil_chk(termToID_)) size];
    OrgApacheLuceneUtilAutomatonAutomaton *newAutomaton = create_OrgApacheLuceneUtilAutomatonAutomaton_init();
    for (jint i = 0; i < numStates; i++) {
      [newAutomaton createState];
      [newAutomaton setAcceptWithInt:i withBoolean:[automaton isAcceptWithInt:i]];
    }
    for (jint i = 0; i < numStates; i++) {
      count = [automaton initTransitionWithInt:i withOrgApacheLuceneUtilAutomatonTransition:t];
      for (jint j = 0; j < count; j++) {
        [automaton getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:t];
        jint min, max;
        if (t->min_ <= anyTermID_ && anyTermID_ <= t->max_) {
          min = 0;
          max = termCount - 1;
        }
        else {
          min = t->min_;
          max = t->max_;
        }
        [newAutomaton addTransitionWithInt:t->source_ withInt:t->dest_ withInt:min withInt:max];
      }
    }
    [newAutomaton finishState];
    automaton = newAutomaton;
  }
  JreStrongAssign(&det_, OrgApacheLuceneUtilAutomatonOperations_removeDeadStatesWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonOperations_determinizeWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(automaton, maxDeterminizedStates)));
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores {
  OrgApacheLuceneIndexIndexReaderContext *context = [((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) getTopReaderContext];
  id<JavaUtilMap> termStates = create_JavaUtilHashMap_init();
  for (id<JavaUtilMap_Entry> __strong ent in nil_chk([((id<JavaUtilMap>) nil_chk(termToID_)) entrySet])) {
    if ([((id<JavaUtilMap_Entry>) nil_chk(ent)) getKey] != nil) {
      [termStates putWithId:[ent getValue] withId:OrgApacheLuceneIndexTermContext_buildWithOrgApacheLuceneIndexIndexReaderContext_withOrgApacheLuceneIndexTerm_(context, create_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(field_, [ent getKey]))];
    }
  }
  return create_OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight_initWithOrgApacheLuceneSearchTermAutomatonQuery_withOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(self, det_, searcher, termStates);
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  [sb appendWithNSString:@"TermAutomatonQuery(field="];
  [sb appendWithNSString:self->field_];
  if (det_ != nil) {
    [sb appendWithNSString:@" numStates="];
    [sb appendWithInt:[((OrgApacheLuceneUtilAutomatonAutomaton *) nil_chk(det_)) getNumStates]];
  }
  [sb appendWithChar:')'];
  return [sb description];
}

- (jint)getTermIDWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term {
  return OrgApacheLuceneSearchTermAutomatonQuery_getTermIDWithOrgApacheLuceneUtilBytesRef_(self, term);
}

- (jboolean)isEqual:(id)o {
  if (!([o isKindOfClass:[OrgApacheLuceneSearchTermAutomatonQuery class]])) {
    return false;
  }
  OrgApacheLuceneSearchTermAutomatonQuery *other = (OrgApacheLuceneSearchTermAutomatonQuery *) cast_chk(o, [OrgApacheLuceneSearchTermAutomatonQuery class]);
  if (det_ == nil) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(@"please call finish first");
  }
  if (((OrgApacheLuceneSearchTermAutomatonQuery *) nil_chk(other))->det_ == nil) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(@"please call other.finish first");
  }
  return [super isEqual:o] && [((id<JavaUtilMap>) nil_chk(self->termToID_)) isEqual:other->termToID_] && OrgApacheLuceneUtilAutomatonOperations_sameLanguageWithOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonAutomaton_(det_, other->det_);
}

- (NSUInteger)hash {
  if (det_ == nil) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(@"please call finish first");
  }
  return ((jint) [super hash]) ^ ((jint) [((id<JavaUtilMap>) nil_chk(termToID_)) hash]) + ((jint) [((NSString *) nil_chk([((OrgApacheLuceneUtilAutomatonAutomaton *) nil_chk(det_)) toDot])) hash]);
}

- (NSString *)toDot {
  JavaLangStringBuilder *b = create_JavaLangStringBuilder_init();
  [b appendWithNSString:@"digraph Automaton {\n"];
  [b appendWithNSString:@"  rankdir = LR\n"];
  jint numStates = [((OrgApacheLuceneUtilAutomatonAutomaton *) nil_chk(det_)) getNumStates];
  if (numStates > 0) {
    [b appendWithNSString:@"  initial [shape=plaintext,label=\"0\"]\n"];
    [b appendWithNSString:@"  initial -> 0\n"];
  }
  OrgApacheLuceneUtilAutomatonTransition *t = create_OrgApacheLuceneUtilAutomatonTransition_init();
  for (jint state = 0; state < numStates; state++) {
    [b appendWithNSString:@"  "];
    [b appendWithInt:state];
    if ([((OrgApacheLuceneUtilAutomatonAutomaton *) nil_chk(det_)) isAcceptWithInt:state]) {
      [b appendWithNSString:JreStrcat("$I$", @" [shape=doublecircle,label=\"", state, @"\"]\n")];
    }
    else {
      [b appendWithNSString:JreStrcat("$I$", @" [shape=circle,label=\"", state, @"\"]\n")];
    }
    jint numTransitions = [((OrgApacheLuceneUtilAutomatonAutomaton *) nil_chk(det_)) initTransitionWithInt:state withOrgApacheLuceneUtilAutomatonTransition:t];
    for (jint i = 0; i < numTransitions; i++) {
      [((OrgApacheLuceneUtilAutomatonAutomaton *) nil_chk(det_)) getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:t];
      JreAssert((t->max_ >= t->min_), (@"org/apache/lucene/search/TermAutomatonQuery.java:292 condition failed: assert t.max >= t.min;"));
      for (jint j = t->min_; j <= t->max_; j++) {
        [b appendWithNSString:@"  "];
        [b appendWithInt:state];
        [b appendWithNSString:@" -> "];
        [b appendWithInt:t->dest_];
        [b appendWithNSString:@" [label=\""];
        if (j == anyTermID_) {
          [b appendWithChar:'*'];
        }
        else {
          [b appendWithNSString:[((OrgApacheLuceneUtilBytesRef *) nil_chk([((id<JavaUtilMap>) nil_chk(idToTerm_)) getWithId:JavaLangInteger_valueOfWithInt_(j)])) utf8ToString]];
        }
        [b appendWithNSString:@"\"]\n"];
      }
    }
  }
  [b appendWithChar:'}'];
  return [b description];
}

- (void)dealloc {
  RELEASE_(field_);
  RELEASE_(builder_);
  RELEASE_(det_);
  RELEASE_(termToID_);
  RELEASE_(idToTerm_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "TermAutomatonQuery", NULL, 0x1, NULL, NULL },
    { "createState", NULL, "I", 0x1, NULL, NULL },
    { "setAcceptWithInt:withBoolean:", "setAccept", "V", 0x1, NULL, NULL },
    { "addTransitionWithInt:withInt:withNSString:", "addTransition", "V", 0x1, NULL, NULL },
    { "addTransitionWithInt:withInt:withOrgApacheLuceneUtilBytesRef:", "addTransition", "V", 0x1, NULL, NULL },
    { "addAnyTransitionWithInt:withInt:", "addAnyTransition", "V", 0x1, NULL, NULL },
    { "finish", NULL, "V", 0x1, NULL, NULL },
    { "finishWithInt:", "finish", "V", 0x1, NULL, NULL },
    { "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:", "createWeight", "Lorg.apache.lucene.search.Weight;", 0x1, "Ljava.io.IOException;", NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getTermIDWithOrgApacheLuceneUtilBytesRef:", "getTermID", "I", 0x2, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "toDot", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "field_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "builder_", NULL, 0x12, "Lorg.apache.lucene.util.automaton.Automaton$Builder;", NULL, NULL, .constantValue.asLong = 0 },
    { "det_", NULL, 0x0, "Lorg.apache.lucene.util.automaton.Automaton;", NULL, NULL, .constantValue.asLong = 0 },
    { "termToID_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Lorg/apache/lucene/util/BytesRef;Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
    { "idToTerm_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/lucene/util/BytesRef;>;", .constantValue.asLong = 0 },
    { "anyTermID_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.TermAutomatonQuery$EnumAndScorer;", "Lorg.apache.lucene.search.TermAutomatonQuery$TermAutomatonWeight;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTermAutomatonQuery = { 2, "TermAutomatonQuery", "org.apache.lucene.search", NULL, 0x1, 14, methods, 6, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchTermAutomatonQuery;
}

@end

void OrgApacheLuceneSearchTermAutomatonQuery_initWithNSString_(OrgApacheLuceneSearchTermAutomatonQuery *self, NSString *field) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssignAndConsume(&self->termToID_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->idToTerm_, new_JavaUtilHashMap_init());
  self->anyTermID_ = -1;
  JreStrongAssign(&self->field_, field);
  JreStrongAssignAndConsume(&self->builder_, new_OrgApacheLuceneUtilAutomatonAutomaton_Builder_init());
}

OrgApacheLuceneSearchTermAutomatonQuery *new_OrgApacheLuceneSearchTermAutomatonQuery_initWithNSString_(NSString *field) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTermAutomatonQuery, initWithNSString_, field)
}

OrgApacheLuceneSearchTermAutomatonQuery *create_OrgApacheLuceneSearchTermAutomatonQuery_initWithNSString_(NSString *field) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTermAutomatonQuery, initWithNSString_, field)
}

jint OrgApacheLuceneSearchTermAutomatonQuery_getTermIDWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneSearchTermAutomatonQuery *self, OrgApacheLuceneUtilBytesRef *term) {
  JavaLangInteger *id_ = [((id<JavaUtilMap>) nil_chk(self->termToID_)) getWithId:term];
  if (id_ == nil) {
    id_ = JavaLangInteger_valueOfWithInt_([self->termToID_ size]);
    if (term != nil) {
      term = OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_(term);
    }
    [self->termToID_ putWithId:term withId:id_];
    [((id<JavaUtilMap>) nil_chk(self->idToTerm_)) putWithId:id_ withId:term];
    if (term == nil) {
      self->anyTermID_ = [id_ intValue];
    }
  }
  return [id_ intValue];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTermAutomatonQuery)

@implementation OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer

- (instancetype)initWithInt:(jint)termID
withOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)posEnum {
  OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer_initWithInt_withOrgApacheLuceneIndexPostingsEnum_(self, termID, posEnum);
  return self;
}

- (void)dealloc {
  RELEASE_(posEnum_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withOrgApacheLuceneIndexPostingsEnum:", "EnumAndScorer", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "termID_", NULL, 0x11, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "posEnum_", NULL, 0x11, "Lorg.apache.lucene.index.PostingsEnum;", NULL, NULL, .constantValue.asLong = 0 },
    { "posLeft_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "pos_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer = { 2, "EnumAndScorer", "org.apache.lucene.search", "TermAutomatonQuery", 0x8, 1, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer;
}

@end

void OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer_initWithInt_withOrgApacheLuceneIndexPostingsEnum_(OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *self, jint termID, OrgApacheLuceneIndexPostingsEnum *posEnum) {
  NSObject_init(self);
  self->termID_ = termID;
  JreStrongAssign(&self->posEnum_, posEnum);
}

OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *new_OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer_initWithInt_withOrgApacheLuceneIndexPostingsEnum_(jint termID, OrgApacheLuceneIndexPostingsEnum *posEnum) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer, initWithInt_withOrgApacheLuceneIndexPostingsEnum_, termID, posEnum)
}

OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *create_OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer_initWithInt_withOrgApacheLuceneIndexPostingsEnum_(jint termID, OrgApacheLuceneIndexPostingsEnum *posEnum) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer, initWithInt_withOrgApacheLuceneIndexPostingsEnum_, termID, posEnum)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer)

@implementation OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight

- (instancetype)initWithOrgApacheLuceneSearchTermAutomatonQuery:(OrgApacheLuceneSearchTermAutomatonQuery *)outer$
                      withOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)automaton
                         withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                withJavaUtilMap:(id<JavaUtilMap>)termStates {
  OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight_initWithOrgApacheLuceneSearchTermAutomatonQuery_withOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(self, outer$, automaton, searcher, termStates);
  return self;
}

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms {
  for (OrgApacheLuceneUtilBytesRef * __strong text in nil_chk([((id<JavaUtilMap>) nil_chk(this$0_->termToID_)) keySet])) {
    if (text != nil) {
      [((id<JavaUtilSet>) nil_chk(terms)) addWithId:create_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(this$0_->field_, text)];
    }
  }
}

- (NSString *)description {
  return JreStrcat("$@C", @"weight(", this$0_, ')');
}

- (jfloat)getValueForNormalization {
  return [((OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *) nil_chk(stats_)) getValueForNormalization];
}

- (void)normalizeWithFloat:(jfloat)queryNorm
                 withFloat:(jfloat)topLevelBoost {
  [((OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *) nil_chk(stats_)) normalizeWithFloat:queryNorm withFloat:topLevelBoost];
}

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  IOSObjectArray *enums = [IOSObjectArray arrayWithLength:[((id<JavaUtilMap>) nil_chk(this$0_->idToTerm_)) size] type:OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer_class_()];
  jboolean any = false;
  for (id<JavaUtilMap_Entry> __strong ent in nil_chk([((id<JavaUtilMap>) nil_chk(termStates_)) entrySet])) {
    OrgApacheLuceneIndexTermContext *termContext = [((id<JavaUtilMap_Entry>) nil_chk(ent)) getValue];
    JreAssert((((OrgApacheLuceneIndexTermContext *) nil_chk(termContext))->topReaderContext_ == OrgApacheLuceneIndexReaderUtil_getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext_(context)), (JreStrcat("$@$@", @"The top-reader used to create Weight (", termContext->topReaderContext_, @") is not the same as the current reader's top-reader (", OrgApacheLuceneIndexReaderUtil_getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext_(context))));
    OrgApacheLuceneUtilBytesRef *term = [this$0_->idToTerm_ getWithId:[ent getKey]];
    OrgApacheLuceneIndexTermState *state = [termContext getWithInt:((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context))->ord_];
    if (state != nil) {
      OrgApacheLuceneIndexTermsEnum *termsEnum = [((OrgApacheLuceneIndexTerms *) nil_chk([((OrgApacheLuceneIndexLeafReader *) nil_chk([context reader])) termsWithNSString:this$0_->field_])) iterator];
      [((OrgApacheLuceneIndexTermsEnum *) nil_chk(termsEnum)) seekExactWithOrgApacheLuceneUtilBytesRef:term withOrgApacheLuceneIndexTermState:state];
      IOSObjectArray_SetAndConsume(enums, [((JavaLangInteger *) nil_chk([ent getKey])) intValue], new_OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer_initWithInt_withOrgApacheLuceneIndexPostingsEnum_([((JavaLangInteger *) nil_chk([ent getKey])) intValue], [termsEnum postingsWithOrgApacheLuceneIndexPostingsEnum:nil withInt:OrgApacheLuceneIndexPostingsEnum_POSITIONS]));
      any = true;
    }
  }
  if (any) {
    return create_OrgApacheLuceneSearchTermAutomatonScorer_initWithOrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight_withOrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorerArray_withInt_withJavaUtilMap_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(self, enums, this$0_->anyTermID_, this$0_->idToTerm_, [((OrgApacheLuceneSearchSimilaritiesSimilarity *) nil_chk(similarity_)) simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:stats_ withOrgApacheLuceneIndexLeafReaderContext:context]);
  }
  else {
    return nil;
  }
}

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                               withInt:(jint)doc {
  return nil;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(searcher_);
  RELEASE_(automaton_);
  RELEASE_(termStates_);
  RELEASE_(stats_);
  RELEASE_(similarity_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchTermAutomatonQuery:withOrgApacheLuceneUtilAutomatonAutomaton:withOrgApacheLuceneSearchIndexSearcher:withJavaUtilMap:", "TermAutomatonWeight", NULL, 0x1, NULL, "(Lorg/apache/lucene/search/TermAutomatonQuery;Lorg/apache/lucene/util/automaton/Automaton;Lorg/apache/lucene/search/IndexSearcher;Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/lucene/index/TermContext;>;)V" },
    { "extractTermsWithJavaUtilSet:", "extractTerms", "V", 0x1, NULL, "(Ljava/util/Set<Lorg/apache/lucene/index/Term;>;)V" },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getValueForNormalization", NULL, "F", 0x1, NULL, NULL },
    { "normalizeWithFloat:withFloat:", "normalize", "V", 0x1, NULL, NULL },
    { "scorerWithOrgApacheLuceneIndexLeafReaderContext:", "scorer", "Lorg.apache.lucene.search.Scorer;", 0x1, "Ljava.io.IOException;", NULL },
    { "explainWithOrgApacheLuceneIndexLeafReaderContext:withInt:", "explain", "Lorg.apache.lucene.search.Explanation;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.TermAutomatonQuery;", NULL, NULL, .constantValue.asLong = 0 },
    { "searcher_", NULL, 0x12, "Lorg.apache.lucene.search.IndexSearcher;", NULL, NULL, .constantValue.asLong = 0 },
    { "automaton_", NULL, 0x10, "Lorg.apache.lucene.util.automaton.Automaton;", NULL, NULL, .constantValue.asLong = 0 },
    { "termStates_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/lucene/index/TermContext;>;", .constantValue.asLong = 0 },
    { "stats_", NULL, 0x12, "Lorg.apache.lucene.search.similarities.Similarity$SimWeight;", NULL, NULL, .constantValue.asLong = 0 },
    { "similarity_", NULL, 0x12, "Lorg.apache.lucene.search.similarities.Similarity;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight = { 2, "TermAutomatonWeight", "org.apache.lucene.search", "TermAutomatonQuery", 0x10, 7, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight;
}

@end

void OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight_initWithOrgApacheLuceneSearchTermAutomatonQuery_withOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight *self, OrgApacheLuceneSearchTermAutomatonQuery *outer$, OrgApacheLuceneUtilAutomatonAutomaton *automaton, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> termStates) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchWeight_initWithOrgApacheLuceneSearchQuery_(self, outer$);
  JreStrongAssign(&self->automaton_, automaton);
  JreStrongAssign(&self->searcher_, searcher);
  JreStrongAssign(&self->termStates_, termStates);
  JreStrongAssign(&self->similarity_, [((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) getSimilarityWithBoolean:true]);
  id<JavaUtilList> allTermStats = create_JavaUtilArrayList_init();
  for (id<JavaUtilMap_Entry> __strong ent in nil_chk([((id<JavaUtilMap>) nil_chk(outer$->idToTerm_)) entrySet])) {
    JavaLangInteger *termID = [((id<JavaUtilMap_Entry>) nil_chk(ent)) getKey];
    if ([ent getValue] != nil) {
      [allTermStats addWithId:[searcher termStatisticsWithOrgApacheLuceneIndexTerm:create_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(outer$->field_, [ent getValue]) withOrgApacheLuceneIndexTermContext:[((id<JavaUtilMap>) nil_chk(termStates)) getWithId:termID]]];
    }
  }
  JreStrongAssign(&self->stats_, [((OrgApacheLuceneSearchSimilaritiesSimilarity *) nil_chk(self->similarity_)) computeWeightWithFloat:[outer$ getBoost] withOrgApacheLuceneSearchCollectionStatistics:[searcher collectionStatisticsWithNSString:outer$->field_] withOrgApacheLuceneSearchTermStatisticsArray:[allTermStats toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[allTermStats size] type:OrgApacheLuceneSearchTermStatistics_class_()]]]);
}

OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight *new_OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight_initWithOrgApacheLuceneSearchTermAutomatonQuery_withOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(OrgApacheLuceneSearchTermAutomatonQuery *outer$, OrgApacheLuceneUtilAutomatonAutomaton *automaton, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> termStates) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight, initWithOrgApacheLuceneSearchTermAutomatonQuery_withOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_, outer$, automaton, searcher, termStates)
}

OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight *create_OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight_initWithOrgApacheLuceneSearchTermAutomatonQuery_withOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(OrgApacheLuceneSearchTermAutomatonQuery *outer$, OrgApacheLuceneUtilAutomatonAutomaton *automaton, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> termStates) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight, initWithOrgApacheLuceneSearchTermAutomatonQuery_withOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_, outer$, automaton, searcher, termStates)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight)
