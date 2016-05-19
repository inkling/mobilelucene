//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/fst/FSTCompletionLookup.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/lang/CharSequence.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "org/apache/lucene/search/suggest/InputIterator.h"
#include "org/apache/lucene/search/suggest/Lookup.h"
#include "org/apache/lucene/search/suggest/fst/ExternalRefSorter.h"
#include "org/apache/lucene/search/suggest/fst/FSTCompletion.h"
#include "org/apache/lucene/search/suggest/fst/FSTCompletionBuilder.h"
#include "org/apache/lucene/search/suggest/fst/FSTCompletionLookup.h"
#include "org/apache/lucene/store/ByteArrayDataInput.h"
#include "org/apache/lucene/store/ByteArrayDataOutput.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/Accountable.h"
#include "org/apache/lucene/util/Accountables.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"
#include "org/apache/lucene/util/CharsRefBuilder.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/apache/lucene/util/OfflineSorter.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/fst/FST.h"
#include "org/apache/lucene/util/fst/NoOutputs.h"
#include "org/lukhnos/portmobile/file/Files.h"
#include "org/lukhnos/portmobile/file/Path.h"

@interface OrgApacheLuceneSearchSuggestFstFSTCompletionLookup () {
 @public
  jint buckets_;
  jboolean exactMatchFirst_;
  /*!
   @brief Automaton used for completions with higher weights reordering.
   */
  OrgApacheLuceneSearchSuggestFstFSTCompletion *higherWeightsCompletion_;
  /*!
   @brief Automaton used for normal completions.
   */
  OrgApacheLuceneSearchSuggestFstFSTCompletion *normalCompletion_;
  /*!
   @brief Number of entries the lookup was built with
   */
  jlong count_;
}

/*!
 @brief weight -&gt; cost
 */
+ (jint)encodeWeightWithLong:(jlong)value;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestFstFSTCompletionLookup, higherWeightsCompletion_, OrgApacheLuceneSearchSuggestFstFSTCompletion *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestFstFSTCompletionLookup, normalCompletion_, OrgApacheLuceneSearchSuggestFstFSTCompletion *)

/*!
 @brief An invalid bucket count if we're creating an object
 of this class from an existing FST.
 - seealso: #FSTCompletionLookup(FSTCompletion,boolean)
 */
inline jint OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_get_INVALID_BUCKETS_COUNT();
inline jint OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_set_INVALID_BUCKETS_COUNT(jint value);
inline jint *OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_getRef_INVALID_BUCKETS_COUNT();
static jint OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_INVALID_BUCKETS_COUNT = -1;
J2OBJC_STATIC_FIELD_PRIMITIVE(OrgApacheLuceneSearchSuggestFstFSTCompletionLookup, INVALID_BUCKETS_COUNT, jint)

/*!
 @brief Shared tail length for conflating in the created automaton.
 Setting this
 to larger values (<code>Integer.MAX_VALUE</code>) will create smaller (or minimal) 
 automata at the cost of RAM for keeping nodes hash in the <code>FST</code>. 
 <p>Empirical pick.
 */
inline jint OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_get_sharedTailLength();
#define OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_sharedTailLength 5
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestFstFSTCompletionLookup, sharedTailLength, jint)

__attribute__((unused)) static jint OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_encodeWeightWithLong_(jlong value);

@implementation OrgApacheLuceneSearchSuggestFstFSTCompletionLookup

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)buckets
                withBoolean:(jboolean)exactMatchFirst {
  OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_initWithInt_withBoolean_(self, buckets, exactMatchFirst);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchSuggestFstFSTCompletion:(OrgApacheLuceneSearchSuggestFstFSTCompletion *)completion
                                                         withBoolean:(jboolean)exactMatchFirst {
  OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_initWithOrgApacheLuceneSearchSuggestFstFSTCompletion_withBoolean_(self, completion, exactMatchFirst);
  return self;
}

- (void)buildWithOrgApacheLuceneSearchSuggestInputIterator:(id<OrgApacheLuceneSearchSuggestInputIterator>)iterator {
  if ([((id<OrgApacheLuceneSearchSuggestInputIterator>) nil_chk(iterator)) hasPayloads]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"this suggester doesn't support payloads");
  }
  if ([iterator hasContexts]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"this suggester doesn't support contexts");
  }
  OrgLukhnosPortmobileFilePath *tempInput = OrgLukhnosPortmobileFileFiles_createTempFileWithOrgLukhnosPortmobileFilePath_withNSString_withNSString_(OrgApacheLuceneUtilOfflineSorter_defaultTempDir(), [OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_class_() getSimpleName], @".input");
  OrgLukhnosPortmobileFilePath *tempSorted = OrgLukhnosPortmobileFileFiles_createTempFileWithOrgLukhnosPortmobileFilePath_withNSString_withNSString_(OrgApacheLuceneUtilOfflineSorter_defaultTempDir(), [OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_class_() getSimpleName], @".sorted");
  OrgApacheLuceneUtilOfflineSorter_ByteSequencesWriter *writer = create_OrgApacheLuceneUtilOfflineSorter_ByteSequencesWriter_initWithOrgLukhnosPortmobileFilePath_(tempInput);
  OrgApacheLuceneUtilOfflineSorter_ByteSequencesReader *reader = nil;
  OrgApacheLuceneSearchSuggestFstExternalRefSorter *sorter = nil;
  jboolean success = false;
  count_ = 0;
  @try {
    IOSByteArray *buffer = [IOSByteArray arrayWithLength:0];
    OrgApacheLuceneStoreByteArrayDataOutput *output = create_OrgApacheLuceneStoreByteArrayDataOutput_initWithByteArray_(buffer);
    OrgApacheLuceneUtilBytesRef *spare;
    while ((spare = [iterator next]) != nil) {
      if (((OrgApacheLuceneUtilBytesRef *) nil_chk(spare))->length_ + 4 >= ((IOSByteArray *) nil_chk(buffer))->size_) {
        buffer = OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(buffer, spare->length_ + 4);
      }
      [output resetWithByteArray:buffer];
      [output writeIntWithInt:OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_encodeWeightWithLong_([iterator weight])];
      [output writeBytesWithByteArray:spare->bytes_ withInt:spare->offset_ withInt:spare->length_];
      [writer writeWithByteArray:buffer withInt:0 withInt:[output getPosition]];
    }
    [writer close];
    OrgApacheLuceneUtilOfflineSorter_SortInfo *info = [create_OrgApacheLuceneUtilOfflineSorter_init() sortWithOrgLukhnosPortmobileFilePath:tempInput withOrgLukhnosPortmobileFilePath:tempSorted];
    OrgLukhnosPortmobileFileFiles_delete__WithOrgLukhnosPortmobileFilePath_(tempInput);
    OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder *builder = create_OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder_initWithInt_withOrgApacheLuceneSearchSuggestFstBytesRefSorter_withInt_(buckets_, sorter = create_OrgApacheLuceneSearchSuggestFstExternalRefSorter_initWithOrgApacheLuceneUtilOfflineSorter_(create_OrgApacheLuceneUtilOfflineSorter_init()), OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_sharedTailLength);
    jint inputLines = ((OrgApacheLuceneUtilOfflineSorter_SortInfo *) nil_chk(info))->lines_;
    reader = create_OrgApacheLuceneUtilOfflineSorter_ByteSequencesReader_initWithOrgLukhnosPortmobileFilePath_(tempSorted);
    jlong line = 0;
    jint previousBucket = 0;
    jint previousScore = 0;
    OrgApacheLuceneStoreByteArrayDataInput *input = create_OrgApacheLuceneStoreByteArrayDataInput_init();
    OrgApacheLuceneUtilBytesRefBuilder *tmp1 = create_OrgApacheLuceneUtilBytesRefBuilder_init();
    OrgApacheLuceneUtilBytesRef *tmp2 = create_OrgApacheLuceneUtilBytesRef_init();
    while ([reader readWithOrgApacheLuceneUtilBytesRefBuilder:tmp1]) {
      [input resetWithByteArray:[tmp1 bytes]];
      jint currentScore = [input readInt];
      jint bucket;
      if (line > 0 && currentScore == previousScore) {
        bucket = previousBucket;
      }
      else {
        bucket = (jint) (line * buckets_ / inputLines);
      }
      previousScore = currentScore;
      previousBucket = bucket;
      JreStrongAssign(&tmp2->bytes_, [tmp1 bytes]);
      tmp2->offset_ = [input getPosition];
      tmp2->length_ = [tmp1 length] - [input getPosition];
      [builder addWithOrgApacheLuceneUtilBytesRef:tmp2 withInt:bucket];
      line++;
      count_++;
    }
    JreStrongAssign(&self->higherWeightsCompletion_, [builder build]);
    JreStrongAssignAndConsume(&self->normalCompletion_, new_OrgApacheLuceneSearchSuggestFstFSTCompletion_initWithOrgApacheLuceneUtilFstFST_withBoolean_withBoolean_([((OrgApacheLuceneSearchSuggestFstFSTCompletion *) nil_chk(higherWeightsCompletion_)) getFST], false, exactMatchFirst_));
    success = true;
  }
  @finally {
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ reader, writer, sorter } count:3 type:JavaIoCloseable_class_()]);
    if (success) {
      OrgLukhnosPortmobileFileFiles_delete__WithOrgLukhnosPortmobileFilePath_(tempSorted);
    }
    else {
      OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithOrgLukhnosPortmobileFilePathArray_([IOSObjectArray arrayWithObjects:(id[]){ tempInput, tempSorted } count:2 type:OrgLukhnosPortmobileFilePath_class_()]);
    }
  }
}

+ (jint)encodeWeightWithLong:(jlong)value {
  return OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_encodeWeightWithLong_(value);
}

- (id<JavaUtilList>)lookupWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                   withJavaUtilSet:(id<JavaUtilSet>)contexts
                                       withBoolean:(jboolean)higherWeightsFirst
                                           withInt:(jint)num {
  if (contexts != nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"this suggester doesn't support contexts");
  }
  id<JavaUtilList> completions;
  if (higherWeightsFirst) {
    completions = [((OrgApacheLuceneSearchSuggestFstFSTCompletion *) nil_chk(higherWeightsCompletion_)) lookupWithJavaLangCharSequence:key withInt:num];
  }
  else {
    completions = [((OrgApacheLuceneSearchSuggestFstFSTCompletion *) nil_chk(normalCompletion_)) lookupWithJavaLangCharSequence:key withInt:num];
  }
  JavaUtilArrayList *results = create_JavaUtilArrayList_initWithInt_([((id<JavaUtilList>) nil_chk(completions)) size]);
  OrgApacheLuceneUtilCharsRefBuilder *spare = create_OrgApacheLuceneUtilCharsRefBuilder_init();
  for (OrgApacheLuceneSearchSuggestFstFSTCompletion_Completion * __strong c in completions) {
    [spare copyUTF8BytesWithOrgApacheLuceneUtilBytesRef:((OrgApacheLuceneSearchSuggestFstFSTCompletion_Completion *) nil_chk(c))->utf8_];
    [results addWithId:create_OrgApacheLuceneSearchSuggestLookup_LookupResult_initWithJavaLangCharSequence_withLong_([spare description], c->bucket_)];
  }
  return results;
}

- (id)getWithJavaLangCharSequence:(id<JavaLangCharSequence>)key {
  jint bucket = [((OrgApacheLuceneSearchSuggestFstFSTCompletion *) nil_chk(normalCompletion_)) getBucketWithJavaLangCharSequence:key];
  return bucket == -1 ? nil : JavaLangLong_valueOfWithLong_(bucket);
}

- (jboolean)storeWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)output {
  @synchronized(self) {
    [((OrgApacheLuceneStoreDataOutput *) nil_chk(output)) writeVLongWithLong:count_];
    if (self->normalCompletion_ == nil || [normalCompletion_ getFST] == nil) return false;
    [((OrgApacheLuceneUtilFstFST *) nil_chk([normalCompletion_ getFST])) saveWithOrgApacheLuceneStoreDataOutput:output];
    return true;
  }
}

- (jboolean)load__WithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)input {
  @synchronized(self) {
    count_ = [((OrgApacheLuceneStoreDataInput *) nil_chk(input)) readVLong];
    JreStrongAssignAndConsume(&self->higherWeightsCompletion_, new_OrgApacheLuceneSearchSuggestFstFSTCompletion_initWithOrgApacheLuceneUtilFstFST_(create_OrgApacheLuceneUtilFstFST_initWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilFstOutputs_(input, OrgApacheLuceneUtilFstNoOutputs_getSingleton())));
    JreStrongAssignAndConsume(&self->normalCompletion_, new_OrgApacheLuceneSearchSuggestFstFSTCompletion_initWithOrgApacheLuceneUtilFstFST_withBoolean_withBoolean_([higherWeightsCompletion_ getFST], false, exactMatchFirst_));
    return true;
  }
}

- (jlong)ramBytesUsed {
  jlong mem = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithId_(self) + OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithId_(normalCompletion_) + OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithId_(higherWeightsCompletion_);
  if (normalCompletion_ != nil) {
    mem += [((OrgApacheLuceneUtilFstFST *) nil_chk([normalCompletion_ getFST])) ramBytesUsed];
  }
  if (higherWeightsCompletion_ != nil && (normalCompletion_ == nil || [normalCompletion_ getFST] != [((OrgApacheLuceneSearchSuggestFstFSTCompletion *) nil_chk(higherWeightsCompletion_)) getFST])) {
    mem += [((OrgApacheLuceneUtilFstFST *) nil_chk([higherWeightsCompletion_ getFST])) ramBytesUsed];
  }
  return mem;
}

- (id<JavaUtilCollection>)getChildResources {
  id<JavaUtilList> resources = create_JavaUtilArrayList_init();
  if (normalCompletion_ != nil) {
    [resources addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"fst", [normalCompletion_ getFST])];
  }
  if (higherWeightsCompletion_ != nil && (normalCompletion_ == nil || [normalCompletion_ getFST] != [((OrgApacheLuceneSearchSuggestFstFSTCompletion *) nil_chk(higherWeightsCompletion_)) getFST])) {
    [resources addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"higher weights fst", [higherWeightsCompletion_ getFST])];
  }
  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(resources);
}

- (jlong)getCount {
  return count_;
}

- (void)dealloc {
  RELEASE_(higherWeightsCompletion_);
  RELEASE_(normalCompletion_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "FSTCompletionLookup", NULL, 0x1, NULL, NULL },
    { "initWithInt:withBoolean:", "FSTCompletionLookup", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchSuggestFstFSTCompletion:withBoolean:", "FSTCompletionLookup", NULL, 0x1, NULL, NULL },
    { "buildWithOrgApacheLuceneSearchSuggestInputIterator:", "build", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "encodeWeightWithLong:", "encodeWeight", "I", 0xa, NULL, NULL },
    { "lookupWithJavaLangCharSequence:withJavaUtilSet:withBoolean:withInt:", "lookup", "Ljava.util.List;", 0x1, NULL, "(Ljava/lang/CharSequence;Ljava/util/Set<Lorg/apache/lucene/util/BytesRef;>;ZI)Ljava/util/List<Lorg/apache/lucene/search/suggest/Lookup$LookupResult;>;" },
    { "getWithJavaLangCharSequence:", "get", "Ljava.lang.Object;", 0x1, NULL, NULL },
    { "storeWithOrgApacheLuceneStoreDataOutput:", "store", "Z", 0x21, "Ljava.io.IOException;", NULL },
    { "load__WithOrgApacheLuceneStoreDataInput:", "load", "Z", 0x21, "Ljava.io.IOException;", NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "getChildResources", NULL, "Ljava.util.Collection;", 0x1, NULL, "()Ljava/util/Collection<Lorg/apache/lucene/util/Accountable;>;" },
    { "getCount", NULL, "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "INVALID_BUCKETS_COUNT", "INVALID_BUCKETS_COUNT", 0xa, "I", &OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_INVALID_BUCKETS_COUNT, NULL, .constantValue.asLong = 0 },
    { "sharedTailLength", "sharedTailLength", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_sharedTailLength },
    { "buckets_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "exactMatchFirst_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "higherWeightsCompletion_", NULL, 0x2, "Lorg.apache.lucene.search.suggest.fst.FSTCompletion;", NULL, NULL, .constantValue.asLong = 0 },
    { "normalCompletion_", NULL, 0x2, "Lorg.apache.lucene.search.suggest.fst.FSTCompletion;", NULL, NULL, .constantValue.asLong = 0 },
    { "count_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestFstFSTCompletionLookup = { 2, "FSTCompletionLookup", "org.apache.lucene.search.suggest.fst", NULL, 0x1, 12, methods, 7, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestFstFSTCompletionLookup;
}

@end

void OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_init(OrgApacheLuceneSearchSuggestFstFSTCompletionLookup *self) {
  OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_initWithInt_withBoolean_(self, OrgApacheLuceneSearchSuggestFstFSTCompletion_DEFAULT_BUCKETS, true);
}

OrgApacheLuceneSearchSuggestFstFSTCompletionLookup *new_OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestFstFSTCompletionLookup, init)
}

OrgApacheLuceneSearchSuggestFstFSTCompletionLookup *create_OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestFstFSTCompletionLookup, init)
}

void OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_initWithInt_withBoolean_(OrgApacheLuceneSearchSuggestFstFSTCompletionLookup *self, jint buckets, jboolean exactMatchFirst) {
  OrgApacheLuceneSearchSuggestLookup_init(self);
  self->count_ = 0;
  self->buckets_ = buckets;
  self->exactMatchFirst_ = exactMatchFirst;
}

OrgApacheLuceneSearchSuggestFstFSTCompletionLookup *new_OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_initWithInt_withBoolean_(jint buckets, jboolean exactMatchFirst) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestFstFSTCompletionLookup, initWithInt_withBoolean_, buckets, exactMatchFirst)
}

OrgApacheLuceneSearchSuggestFstFSTCompletionLookup *create_OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_initWithInt_withBoolean_(jint buckets, jboolean exactMatchFirst) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestFstFSTCompletionLookup, initWithInt_withBoolean_, buckets, exactMatchFirst)
}

void OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_initWithOrgApacheLuceneSearchSuggestFstFSTCompletion_withBoolean_(OrgApacheLuceneSearchSuggestFstFSTCompletionLookup *self, OrgApacheLuceneSearchSuggestFstFSTCompletion *completion, jboolean exactMatchFirst) {
  OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_initWithInt_withBoolean_(self, OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_INVALID_BUCKETS_COUNT, exactMatchFirst);
  JreStrongAssignAndConsume(&self->normalCompletion_, new_OrgApacheLuceneSearchSuggestFstFSTCompletion_initWithOrgApacheLuceneUtilFstFST_withBoolean_withBoolean_([((OrgApacheLuceneSearchSuggestFstFSTCompletion *) nil_chk(completion)) getFST], false, exactMatchFirst));
  JreStrongAssignAndConsume(&self->higherWeightsCompletion_, new_OrgApacheLuceneSearchSuggestFstFSTCompletion_initWithOrgApacheLuceneUtilFstFST_withBoolean_withBoolean_([completion getFST], true, exactMatchFirst));
}

OrgApacheLuceneSearchSuggestFstFSTCompletionLookup *new_OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_initWithOrgApacheLuceneSearchSuggestFstFSTCompletion_withBoolean_(OrgApacheLuceneSearchSuggestFstFSTCompletion *completion, jboolean exactMatchFirst) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestFstFSTCompletionLookup, initWithOrgApacheLuceneSearchSuggestFstFSTCompletion_withBoolean_, completion, exactMatchFirst)
}

OrgApacheLuceneSearchSuggestFstFSTCompletionLookup *create_OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_initWithOrgApacheLuceneSearchSuggestFstFSTCompletion_withBoolean_(OrgApacheLuceneSearchSuggestFstFSTCompletion *completion, jboolean exactMatchFirst) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestFstFSTCompletionLookup, initWithOrgApacheLuceneSearchSuggestFstFSTCompletion_withBoolean_, completion, exactMatchFirst)
}

jint OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_encodeWeightWithLong_(jlong value) {
  OrgApacheLuceneSearchSuggestFstFSTCompletionLookup_initialize();
  if (value < JavaLangInteger_MIN_VALUE || value > JavaLangInteger_MAX_VALUE) {
    @throw create_JavaLangUnsupportedOperationException_initWithNSString_(JreStrcat("$J", @"cannot encode value: ", value));
  }
  return (jint) value;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestFstFSTCompletionLookup)
