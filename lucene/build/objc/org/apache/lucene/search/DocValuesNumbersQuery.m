//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/DocValuesNumbersQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Float.h"
#include "java/lang/Long.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Arrays.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/DocValues.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/SortedNumericDocValues.h"
#include "org/apache/lucene/search/DocValuesNumbersQuery.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/RandomAccessWeight.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/lukhnos/portmobile/util/Objects.h"

@interface OrgApacheLuceneSearchDocValuesNumbersQuery () {
 @public
  NSString *field_;
  id<JavaUtilSet> numbers_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocValuesNumbersQuery, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocValuesNumbersQuery, numbers_, id<JavaUtilSet>)

@interface OrgApacheLuceneSearchDocValuesNumbersQuery_$1 : OrgApacheLuceneSearchRandomAccessWeight {
 @public
  OrgApacheLuceneSearchDocValuesNumbersQuery *this$0_;
}

- (id<OrgApacheLuceneUtilBits>)getMatchingDocsWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (instancetype)initWithOrgApacheLuceneSearchDocValuesNumbersQuery:(OrgApacheLuceneSearchDocValuesNumbersQuery *)outer$
                                    withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchDocValuesNumbersQuery_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocValuesNumbersQuery_$1, this$0_, OrgApacheLuceneSearchDocValuesNumbersQuery *)

__attribute__((unused)) static void OrgApacheLuceneSearchDocValuesNumbersQuery_$1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchDocValuesNumbersQuery_$1 *self, OrgApacheLuceneSearchDocValuesNumbersQuery *outer$, OrgApacheLuceneSearchQuery *arg$0);

__attribute__((unused)) static OrgApacheLuceneSearchDocValuesNumbersQuery_$1 *new_OrgApacheLuceneSearchDocValuesNumbersQuery_$1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchDocValuesNumbersQuery *outer$, OrgApacheLuceneSearchQuery *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchDocValuesNumbersQuery_$1 *create_OrgApacheLuceneSearchDocValuesNumbersQuery_$1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchDocValuesNumbersQuery *outer$, OrgApacheLuceneSearchQuery *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchDocValuesNumbersQuery_$1)

@interface OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1 : NSObject < OrgApacheLuceneUtilBits > {
 @public
  OrgApacheLuceneSearchDocValuesNumbersQuery_$1 *this$0_;
  OrgApacheLuceneIndexSortedNumericDocValues *val$values_;
  OrgApacheLuceneIndexLeafReaderContext *val$context_;
}

- (jboolean)getWithInt:(jint)doc;

- (jint)length;

- (instancetype)initWithOrgApacheLuceneSearchDocValuesNumbersQuery_$1:(OrgApacheLuceneSearchDocValuesNumbersQuery_$1 *)outer$
                       withOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)capture$0
                            withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1, this$0_, OrgApacheLuceneSearchDocValuesNumbersQuery_$1 *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1, val$values_, OrgApacheLuceneIndexSortedNumericDocValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1, val$context_, OrgApacheLuceneIndexLeafReaderContext *)

__attribute__((unused)) static void OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_$1_withOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1 *self, OrgApacheLuceneSearchDocValuesNumbersQuery_$1 *outer$, OrgApacheLuceneIndexSortedNumericDocValues *capture$0, OrgApacheLuceneIndexLeafReaderContext *capture$1);

__attribute__((unused)) static OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1 *new_OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_$1_withOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchDocValuesNumbersQuery_$1 *outer$, OrgApacheLuceneIndexSortedNumericDocValues *capture$0, OrgApacheLuceneIndexLeafReaderContext *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1 *create_OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_$1_withOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchDocValuesNumbersQuery_$1 *outer$, OrgApacheLuceneIndexSortedNumericDocValues *capture$0, OrgApacheLuceneIndexLeafReaderContext *capture$1);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1)

@implementation OrgApacheLuceneSearchDocValuesNumbersQuery

- (instancetype)initWithNSString:(NSString *)field
                 withJavaUtilSet:(id<JavaUtilSet>)numbers {
  OrgApacheLuceneSearchDocValuesNumbersQuery_initWithNSString_withJavaUtilSet_(self, field, numbers);
  return self;
}

- (instancetype)initWithNSString:(NSString *)field
           withJavaLangLongArray:(IOSObjectArray *)numbers {
  OrgApacheLuceneSearchDocValuesNumbersQuery_initWithNSString_withJavaLangLongArray_(self, field, numbers);
  return self;
}

- (jboolean)isEqual:(id)obj {
  if (![super isEqual:obj]) {
    return false;
  }
  OrgApacheLuceneSearchDocValuesNumbersQuery *that = (OrgApacheLuceneSearchDocValuesNumbersQuery *) cast_chk(obj, [OrgApacheLuceneSearchDocValuesNumbersQuery class]);
  if (![((NSString *) nil_chk(field_)) isEqual:((OrgApacheLuceneSearchDocValuesNumbersQuery *) nil_chk(that))->field_]) {
    return false;
  }
  return [((id<JavaUtilSet>) nil_chk(numbers_)) isEqual:that->numbers_];
}

- (NSUInteger)hash {
  return OrgLukhnosPortmobileUtilObjects_hash__WithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ field_, numbers_, JavaLangFloat_valueOfWithFloat_([self getBoost]) } count:3 type:NSObject_class_()]);
}

- (NSString *)toStringWithNSString:(NSString *)defaultField {
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  [((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:field_])) appendWithNSString:@": ["];
  for (JavaLangLong * __strong number in nil_chk(numbers_)) {
    [((JavaLangStringBuilder *) nil_chk([sb appendWithId:number])) appendWithNSString:@", "];
  }
  if ([numbers_ size] > 0) {
    [sb setLengthWithInt:[sb length] - 2];
  }
  return [((JavaLangStringBuilder *) nil_chk([sb appendWithChar:']'])) description];
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores {
  return create_OrgApacheLuceneSearchDocValuesNumbersQuery_$1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_withOrgApacheLuceneSearchQuery_(self, self);
}

- (void)dealloc {
  RELEASE_(field_);
  RELEASE_(numbers_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withJavaUtilSet:", "DocValuesNumbersQuery", NULL, 0x1, NULL, "(Ljava/lang/String;Ljava/util/Set<Ljava/lang/Long;>;)V" },
    { "initWithNSString:withJavaLangLongArray:", "DocValuesNumbersQuery", NULL, 0x81, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:", "createWeight", "Lorg.apache.lucene.search.Weight;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "field_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "numbers_", NULL, 0x12, "Ljava.util.Set;", NULL, "Ljava/util/Set<Ljava/lang/Long;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDocValuesNumbersQuery = { 2, "DocValuesNumbersQuery", "org.apache.lucene.search", NULL, 0x1, 6, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchDocValuesNumbersQuery;
}

@end

void OrgApacheLuceneSearchDocValuesNumbersQuery_initWithNSString_withJavaUtilSet_(OrgApacheLuceneSearchDocValuesNumbersQuery *self, NSString *field, id<JavaUtilSet> numbers) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssign(&self->field_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(field));
  JreStrongAssign(&self->numbers_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(numbers, @"Set of numbers must not be null"));
}

OrgApacheLuceneSearchDocValuesNumbersQuery *new_OrgApacheLuceneSearchDocValuesNumbersQuery_initWithNSString_withJavaUtilSet_(NSString *field, id<JavaUtilSet> numbers) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDocValuesNumbersQuery, initWithNSString_withJavaUtilSet_, field, numbers)
}

OrgApacheLuceneSearchDocValuesNumbersQuery *create_OrgApacheLuceneSearchDocValuesNumbersQuery_initWithNSString_withJavaUtilSet_(NSString *field, id<JavaUtilSet> numbers) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDocValuesNumbersQuery, initWithNSString_withJavaUtilSet_, field, numbers)
}

void OrgApacheLuceneSearchDocValuesNumbersQuery_initWithNSString_withJavaLangLongArray_(OrgApacheLuceneSearchDocValuesNumbersQuery *self, NSString *field, IOSObjectArray *numbers) {
  OrgApacheLuceneSearchDocValuesNumbersQuery_initWithNSString_withJavaUtilSet_(self, field, create_JavaUtilHashSet_initWithJavaUtilCollection_(JavaUtilArrays_asListWithNSObjectArray_(numbers)));
}

OrgApacheLuceneSearchDocValuesNumbersQuery *new_OrgApacheLuceneSearchDocValuesNumbersQuery_initWithNSString_withJavaLangLongArray_(NSString *field, IOSObjectArray *numbers) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDocValuesNumbersQuery, initWithNSString_withJavaLangLongArray_, field, numbers)
}

OrgApacheLuceneSearchDocValuesNumbersQuery *create_OrgApacheLuceneSearchDocValuesNumbersQuery_initWithNSString_withJavaLangLongArray_(NSString *field, IOSObjectArray *numbers) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDocValuesNumbersQuery, initWithNSString_withJavaLangLongArray_, field, numbers)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchDocValuesNumbersQuery)

@implementation OrgApacheLuceneSearchDocValuesNumbersQuery_$1

- (id<OrgApacheLuceneUtilBits>)getMatchingDocsWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneIndexSortedNumericDocValues *values = OrgApacheLuceneIndexDocValues_getSortedNumericWithOrgApacheLuceneIndexLeafReader_withNSString_([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader], this$0_->field_);
  return create_OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_$1_withOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneIndexLeafReaderContext_(self, values, context);
}

- (instancetype)initWithOrgApacheLuceneSearchDocValuesNumbersQuery:(OrgApacheLuceneSearchDocValuesNumbersQuery *)outer$
                                    withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)arg$0 {
  OrgApacheLuceneSearchDocValuesNumbersQuery_$1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_withOrgApacheLuceneSearchQuery_(self, outer$, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getMatchingDocsWithOrgApacheLuceneIndexLeafReaderContext:", "getMatchingDocs", "Lorg.apache.lucene.util.Bits;", 0x4, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneSearchDocValuesNumbersQuery:withOrgApacheLuceneSearchQuery:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.DocValuesNumbersQuery;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchDocValuesNumbersQuery", "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDocValuesNumbersQuery_$1 = { 2, "", "org.apache.lucene.search", "DocValuesNumbersQuery", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchDocValuesNumbersQuery_$1;
}

@end

void OrgApacheLuceneSearchDocValuesNumbersQuery_$1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchDocValuesNumbersQuery_$1 *self, OrgApacheLuceneSearchDocValuesNumbersQuery *outer$, OrgApacheLuceneSearchQuery *arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchRandomAccessWeight_initWithOrgApacheLuceneSearchQuery_(self, arg$0);
}

OrgApacheLuceneSearchDocValuesNumbersQuery_$1 *new_OrgApacheLuceneSearchDocValuesNumbersQuery_$1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchDocValuesNumbersQuery *outer$, OrgApacheLuceneSearchQuery *arg$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDocValuesNumbersQuery_$1, initWithOrgApacheLuceneSearchDocValuesNumbersQuery_withOrgApacheLuceneSearchQuery_, outer$, arg$0)
}

OrgApacheLuceneSearchDocValuesNumbersQuery_$1 *create_OrgApacheLuceneSearchDocValuesNumbersQuery_$1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchDocValuesNumbersQuery *outer$, OrgApacheLuceneSearchQuery *arg$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDocValuesNumbersQuery_$1, initWithOrgApacheLuceneSearchDocValuesNumbersQuery_withOrgApacheLuceneSearchQuery_, outer$, arg$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchDocValuesNumbersQuery_$1)

@implementation OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1

- (jboolean)getWithInt:(jint)doc {
  [((OrgApacheLuceneIndexSortedNumericDocValues *) nil_chk(val$values_)) setDocumentWithInt:doc];
  jint count = [val$values_ count];
  for (jint i = 0; i < count; i++) {
    if ([((id<JavaUtilSet>) nil_chk(this$0_->this$0_->numbers_)) containsWithId:JavaLangLong_valueOfWithLong_([val$values_ valueAtWithInt:i])]) {
      return true;
    }
  }
  return false;
}

- (jint)length {
  return [((OrgApacheLuceneIndexLeafReader *) nil_chk([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(val$context_)) reader])) maxDoc];
}

- (instancetype)initWithOrgApacheLuceneSearchDocValuesNumbersQuery_$1:(OrgApacheLuceneSearchDocValuesNumbersQuery_$1 *)outer$
                       withOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)capture$0
                            withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)capture$1 {
  OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_$1_withOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneIndexLeafReaderContext_(self, outer$, capture$0, capture$1);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$values_);
  RELEASE_(val$context_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getWithInt:", "get", "Z", 0x1, NULL, NULL },
    { "length", NULL, "I", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchDocValuesNumbersQuery_$1:withOrgApacheLuceneIndexSortedNumericDocValues:withOrgApacheLuceneIndexLeafReaderContext:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.DocValuesNumbersQuery$1;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$values_", NULL, 0x1012, "Lorg.apache.lucene.index.SortedNumericDocValues;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$context_", NULL, 0x1012, "Lorg.apache.lucene.index.LeafReaderContext;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchDocValuesNumbersQuery_$1", "getMatchingDocsWithOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1 = { 2, "", "org.apache.lucene.search", "DocValuesNumbersQuery$", 0x8008, 3, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1;
}

@end

void OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_$1_withOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1 *self, OrgApacheLuceneSearchDocValuesNumbersQuery_$1 *outer$, OrgApacheLuceneIndexSortedNumericDocValues *capture$0, OrgApacheLuceneIndexLeafReaderContext *capture$1) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$values_, capture$0);
  JreStrongAssign(&self->val$context_, capture$1);
  NSObject_init(self);
}

OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1 *new_OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_$1_withOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchDocValuesNumbersQuery_$1 *outer$, OrgApacheLuceneIndexSortedNumericDocValues *capture$0, OrgApacheLuceneIndexLeafReaderContext *capture$1) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1, initWithOrgApacheLuceneSearchDocValuesNumbersQuery_$1_withOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneIndexLeafReaderContext_, outer$, capture$0, capture$1)
}

OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1 *create_OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1_initWithOrgApacheLuceneSearchDocValuesNumbersQuery_$1_withOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchDocValuesNumbersQuery_$1 *outer$, OrgApacheLuceneIndexSortedNumericDocValues *capture$0, OrgApacheLuceneIndexLeafReaderContext *capture$1) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1, initWithOrgApacheLuceneSearchDocValuesNumbersQuery_$1_withOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneIndexLeafReaderContext_, outer$, capture$0, capture$1)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchDocValuesNumbersQuery_$1_$1)
