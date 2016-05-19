//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/jaspell/JaspellLookup.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "org/apache/lucene/search/suggest/InputIterator.h"
#include "org/apache/lucene/search/suggest/Lookup.h"
#include "org/apache/lucene/search/suggest/jaspell/JaspellLookup.h"
#include "org/apache/lucene/search/suggest/jaspell/JaspellTernarySearchTrie.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/CharsRef.h"
#include "org/apache/lucene/util/CharsRefBuilder.h"

@interface OrgApacheLuceneSearchSuggestJaspellJaspellLookup () {
 @public
  jboolean usePrefix_;
  jint editDistance_;
  /*!
   @brief Number of entries the lookup was built with
   */
  jlong count_;
}

- (void)readRecursivelyWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode:(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *)node;

- (void)writeRecursivelyWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode:(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *)node;

@end

inline jbyte OrgApacheLuceneSearchSuggestJaspellJaspellLookup_get_LO_KID();
#define OrgApacheLuceneSearchSuggestJaspellJaspellLookup_LO_KID 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestJaspellJaspellLookup, LO_KID, jbyte)

inline jbyte OrgApacheLuceneSearchSuggestJaspellJaspellLookup_get_EQ_KID();
#define OrgApacheLuceneSearchSuggestJaspellJaspellLookup_EQ_KID 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestJaspellJaspellLookup, EQ_KID, jbyte)

inline jbyte OrgApacheLuceneSearchSuggestJaspellJaspellLookup_get_HI_KID();
#define OrgApacheLuceneSearchSuggestJaspellJaspellLookup_HI_KID 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestJaspellJaspellLookup, HI_KID, jbyte)

inline jbyte OrgApacheLuceneSearchSuggestJaspellJaspellLookup_get_HAS_VALUE();
#define OrgApacheLuceneSearchSuggestJaspellJaspellLookup_HAS_VALUE 8
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestJaspellJaspellLookup, HAS_VALUE, jbyte)

__attribute__((unused)) static void OrgApacheLuceneSearchSuggestJaspellJaspellLookup_readRecursivelyWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(OrgApacheLuceneSearchSuggestJaspellJaspellLookup *self, OrgApacheLuceneStoreDataInput *inArg, OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *node);

__attribute__((unused)) static void OrgApacheLuceneSearchSuggestJaspellJaspellLookup_writeRecursivelyWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(OrgApacheLuceneSearchSuggestJaspellJaspellLookup *self, OrgApacheLuceneStoreDataOutput *outArg, OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *node);

@implementation OrgApacheLuceneSearchSuggestJaspellJaspellLookup

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSuggestJaspellJaspellLookup_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)buildWithOrgApacheLuceneSearchSuggestInputIterator:(id<OrgApacheLuceneSearchSuggestInputIterator>)iterator {
  if ([((id<OrgApacheLuceneSearchSuggestInputIterator>) nil_chk(iterator)) hasPayloads]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"this suggester doesn't support payloads");
  }
  if ([iterator hasContexts]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"this suggester doesn't support contexts");
  }
  count_ = 0;
  JreStrongAssignAndConsume(&trie_, new_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_init());
  [trie_ setMatchAlmostDiffWithInt:editDistance_];
  OrgApacheLuceneUtilBytesRef *spare;
  OrgApacheLuceneUtilCharsRefBuilder *charsSpare = create_OrgApacheLuceneUtilCharsRefBuilder_init();
  while ((spare = [iterator next]) != nil) {
    jlong weight = [iterator weight];
    if (((OrgApacheLuceneUtilBytesRef *) nil_chk(spare))->length_ == 0) {
      continue;
    }
    [charsSpare copyUTF8BytesWithOrgApacheLuceneUtilBytesRef:spare];
    [((OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *) nil_chk(trie_)) putWithJavaLangCharSequence:[charsSpare description] withId:JavaLangLong_valueOfWithLong_(weight)];
    count_++;
  }
}

- (jboolean)addWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                 withId:(id)value {
  [((OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *) nil_chk(trie_)) putWithJavaLangCharSequence:key withId:value];
  return false;
}

- (id)getWithJavaLangCharSequence:(id<JavaLangCharSequence>)key {
  return [((OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *) nil_chk(trie_)) getWithJavaLangCharSequence:key];
}

- (id<JavaUtilList>)lookupWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                   withJavaUtilSet:(id<JavaUtilSet>)contexts
                                       withBoolean:(jboolean)onlyMorePopular
                                           withInt:(jint)num {
  if (contexts != nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"this suggester doesn't support contexts");
  }
  id<JavaUtilList> res = create_JavaUtilArrayList_init();
  id<JavaUtilList> list;
  jint count = onlyMorePopular ? num * 2 : num;
  if (usePrefix_) {
    list = [((OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *) nil_chk(trie_)) matchPrefixWithJavaLangCharSequence:key withInt:count];
  }
  else {
    list = [((OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *) nil_chk(trie_)) matchAlmostWithJavaLangCharSequence:key withInt:count];
  }
  if (list == nil || [list size] == 0) {
    return res;
  }
  jint maxCnt = JavaLangMath_minWithInt_withInt_(num, [list size]);
  if (onlyMorePopular) {
    OrgApacheLuceneSearchSuggestLookup_LookupPriorityQueue *queue = create_OrgApacheLuceneSearchSuggestLookup_LookupPriorityQueue_initWithInt_(num);
    for (NSString * __strong s in list) {
      jlong freq = [((NSNumber *) nil_chk(((NSNumber *) cast_chk([((OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *) nil_chk(trie_)) getWithJavaLangCharSequence:s], [NSNumber class])))) longLongValue];
      [queue insertWithOverflowWithId:create_OrgApacheLuceneSearchSuggestLookup_LookupResult_initWithJavaLangCharSequence_withLong_(create_OrgApacheLuceneUtilCharsRef_initWithNSString_(s), freq)];
    }
    {
      IOSObjectArray *a__ = [queue getResults];
      OrgApacheLuceneSearchSuggestLookup_LookupResult * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      OrgApacheLuceneSearchSuggestLookup_LookupResult * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        OrgApacheLuceneSearchSuggestLookup_LookupResult *lr = *b__++;
        [res addWithId:lr];
      }
    }
  }
  else {
    for (jint i = 0; i < maxCnt; i++) {
      NSString *s = [list getWithInt:i];
      jlong freq = [((NSNumber *) nil_chk(((NSNumber *) cast_chk([((OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *) nil_chk(trie_)) getWithJavaLangCharSequence:s], [NSNumber class])))) longLongValue];
      [res addWithId:create_OrgApacheLuceneSearchSuggestLookup_LookupResult_initWithJavaLangCharSequence_withLong_(create_OrgApacheLuceneUtilCharsRef_initWithNSString_(s), freq)];
    }
  }
  return res;
}

- (void)readRecursivelyWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode:(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *)node {
  OrgApacheLuceneSearchSuggestJaspellJaspellLookup_readRecursivelyWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(self, inArg, node);
}

- (void)writeRecursivelyWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode:(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *)node {
  OrgApacheLuceneSearchSuggestJaspellJaspellLookup_writeRecursivelyWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(self, outArg, node);
}

- (jboolean)storeWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)output {
  [((OrgApacheLuceneStoreDataOutput *) nil_chk(output)) writeVLongWithLong:count_];
  OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *root = [((OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *) nil_chk(trie_)) getRoot];
  if (root == nil) {
    return false;
  }
  OrgApacheLuceneSearchSuggestJaspellJaspellLookup_writeRecursivelyWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(self, output, root);
  return true;
}

- (jboolean)load__WithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)input {
  count_ = [((OrgApacheLuceneStoreDataInput *) nil_chk(input)) readVLong];
  OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *root = create_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_initWithOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_withChar_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(trie_, 0x0000, nil);
  OrgApacheLuceneSearchSuggestJaspellJaspellLookup_readRecursivelyWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(self, input, root);
  [((OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *) nil_chk(trie_)) setRootWithOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode:root];
  return true;
}

- (jlong)ramBytesUsed {
  return [((OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *) nil_chk(trie_)) ramBytesUsed];
}

- (jlong)getCount {
  return count_;
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

- (void)dealloc {
  RELEASE_(trie_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "JaspellLookup", NULL, 0x1, NULL, NULL },
    { "buildWithOrgApacheLuceneSearchSuggestInputIterator:", "build", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "addWithJavaLangCharSequence:withId:", "add", "Z", 0x1, NULL, NULL },
    { "getWithJavaLangCharSequence:", "get", "Ljava.lang.Object;", 0x1, NULL, NULL },
    { "lookupWithJavaLangCharSequence:withJavaUtilSet:withBoolean:withInt:", "lookup", "Ljava.util.List;", 0x1, NULL, "(Ljava/lang/CharSequence;Ljava/util/Set<Lorg/apache/lucene/util/BytesRef;>;ZI)Ljava/util/List<Lorg/apache/lucene/search/suggest/Lookup$LookupResult;>;" },
    { "readRecursivelyWithOrgApacheLuceneStoreDataInput:withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode:", "readRecursively", "V", 0x2, "Ljava.io.IOException;", NULL },
    { "writeRecursivelyWithOrgApacheLuceneStoreDataOutput:withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode:", "writeRecursively", "V", 0x2, "Ljava.io.IOException;", NULL },
    { "storeWithOrgApacheLuceneStoreDataOutput:", "store", "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "load__WithOrgApacheLuceneStoreDataInput:", "load", "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "getCount", NULL, "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "trie_", NULL, 0x0, "Lorg.apache.lucene.search.suggest.jaspell.JaspellTernarySearchTrie;", NULL, NULL, .constantValue.asLong = 0 },
    { "usePrefix_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "editDistance_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "count_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "LO_KID", "LO_KID", 0x1a, "B", NULL, NULL, .constantValue.asChar = OrgApacheLuceneSearchSuggestJaspellJaspellLookup_LO_KID },
    { "EQ_KID", "EQ_KID", 0x1a, "B", NULL, NULL, .constantValue.asChar = OrgApacheLuceneSearchSuggestJaspellJaspellLookup_EQ_KID },
    { "HI_KID", "HI_KID", 0x1a, "B", NULL, NULL, .constantValue.asChar = OrgApacheLuceneSearchSuggestJaspellJaspellLookup_HI_KID },
    { "HAS_VALUE", "HAS_VALUE", 0x1a, "B", NULL, NULL, .constantValue.asChar = OrgApacheLuceneSearchSuggestJaspellJaspellLookup_HAS_VALUE },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestJaspellJaspellLookup = { 2, "JaspellLookup", "org.apache.lucene.search.suggest.jaspell", NULL, 0x1, 11, methods, 8, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestJaspellJaspellLookup;
}

@end

void OrgApacheLuceneSearchSuggestJaspellJaspellLookup_init(OrgApacheLuceneSearchSuggestJaspellJaspellLookup *self) {
  OrgApacheLuceneSearchSuggestLookup_init(self);
  JreStrongAssignAndConsume(&self->trie_, new_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_init());
  self->usePrefix_ = true;
  self->editDistance_ = 2;
  self->count_ = 0;
}

OrgApacheLuceneSearchSuggestJaspellJaspellLookup *new_OrgApacheLuceneSearchSuggestJaspellJaspellLookup_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestJaspellJaspellLookup, init)
}

OrgApacheLuceneSearchSuggestJaspellJaspellLookup *create_OrgApacheLuceneSearchSuggestJaspellJaspellLookup_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestJaspellJaspellLookup, init)
}

void OrgApacheLuceneSearchSuggestJaspellJaspellLookup_readRecursivelyWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(OrgApacheLuceneSearchSuggestJaspellJaspellLookup *self, OrgApacheLuceneStoreDataInput *inArg, OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *node) {
  ((OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *) nil_chk(node))->splitchar_ = [((NSString *) nil_chk([((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readString])) charAtWithInt:0];
  jbyte mask = [inArg readByte];
  if ((mask & OrgApacheLuceneSearchSuggestJaspellJaspellLookup_HAS_VALUE) != 0) {
    JreStrongAssign(&node->data_, JavaLangLong_valueOfWithLong_([inArg readLong]));
  }
  if ((mask & OrgApacheLuceneSearchSuggestJaspellJaspellLookup_LO_KID) != 0) {
    OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *kid = create_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_initWithOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_withChar_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(self->trie_, 0x0000, node);
    IOSObjectArray_Set(nil_chk(node->relatives_), OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_LOKID, kid);
    OrgApacheLuceneSearchSuggestJaspellJaspellLookup_readRecursivelyWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(self, inArg, kid);
  }
  if ((mask & OrgApacheLuceneSearchSuggestJaspellJaspellLookup_EQ_KID) != 0) {
    OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *kid = create_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_initWithOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_withChar_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(self->trie_, 0x0000, node);
    IOSObjectArray_Set(nil_chk(node->relatives_), OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_EQKID, kid);
    OrgApacheLuceneSearchSuggestJaspellJaspellLookup_readRecursivelyWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(self, inArg, kid);
  }
  if ((mask & OrgApacheLuceneSearchSuggestJaspellJaspellLookup_HI_KID) != 0) {
    OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *kid = create_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_initWithOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_withChar_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(self->trie_, 0x0000, node);
    IOSObjectArray_Set(nil_chk(node->relatives_), OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_HIKID, kid);
    OrgApacheLuceneSearchSuggestJaspellJaspellLookup_readRecursivelyWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(self, inArg, kid);
  }
}

void OrgApacheLuceneSearchSuggestJaspellJaspellLookup_writeRecursivelyWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(OrgApacheLuceneSearchSuggestJaspellJaspellLookup *self, OrgApacheLuceneStoreDataOutput *outArg, OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *node) {
  if (node == nil) {
    return;
  }
  [((OrgApacheLuceneStoreDataOutput *) nil_chk(outArg)) writeStringWithNSString:[NSString stringWithCharacters:[IOSCharArray arrayWithChars:(jchar[]){ node->splitchar_ } count:1] offset:0 length:1]];
  jbyte mask = 0;
  if (IOSObjectArray_Get(nil_chk(node->relatives_), OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_LOKID) != nil) mask |= OrgApacheLuceneSearchSuggestJaspellJaspellLookup_LO_KID;
  if (IOSObjectArray_Get(node->relatives_, OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_EQKID) != nil) mask |= OrgApacheLuceneSearchSuggestJaspellJaspellLookup_EQ_KID;
  if (IOSObjectArray_Get(node->relatives_, OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_HIKID) != nil) mask |= OrgApacheLuceneSearchSuggestJaspellJaspellLookup_HI_KID;
  if (node->data_ != nil) mask |= OrgApacheLuceneSearchSuggestJaspellJaspellLookup_HAS_VALUE;
  [outArg writeByteWithByte:mask];
  if (node->data_ != nil) {
    [outArg writeLongWithLong:[((NSNumber *) cast_chk(node->data_, [NSNumber class])) longLongValue]];
  }
  OrgApacheLuceneSearchSuggestJaspellJaspellLookup_writeRecursivelyWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(self, outArg, IOSObjectArray_Get(node->relatives_, OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_LOKID));
  OrgApacheLuceneSearchSuggestJaspellJaspellLookup_writeRecursivelyWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(self, outArg, IOSObjectArray_Get(node->relatives_, OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_EQKID));
  OrgApacheLuceneSearchSuggestJaspellJaspellLookup_writeRecursivelyWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(self, outArg, IOSObjectArray_Get(node->relatives_, OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_HIKID));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestJaspellJaspellLookup)
