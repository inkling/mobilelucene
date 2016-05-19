//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene53/Lucene53Codec.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/codecs/Codec.h"
#include "org/apache/lucene/codecs/CompoundFormat.h"
#include "org/apache/lucene/codecs/DocValuesFormat.h"
#include "org/apache/lucene/codecs/FieldInfosFormat.h"
#include "org/apache/lucene/codecs/LiveDocsFormat.h"
#include "org/apache/lucene/codecs/NormsFormat.h"
#include "org/apache/lucene/codecs/PostingsFormat.h"
#include "org/apache/lucene/codecs/SegmentInfoFormat.h"
#include "org/apache/lucene/codecs/StoredFieldsFormat.h"
#include "org/apache/lucene/codecs/TermVectorsFormat.h"
#include "org/apache/lucene/codecs/lucene50/Lucene50CompoundFormat.h"
#include "org/apache/lucene/codecs/lucene50/Lucene50FieldInfosFormat.h"
#include "org/apache/lucene/codecs/lucene50/Lucene50LiveDocsFormat.h"
#include "org/apache/lucene/codecs/lucene50/Lucene50SegmentInfoFormat.h"
#include "org/apache/lucene/codecs/lucene50/Lucene50StoredFieldsFormat.h"
#include "org/apache/lucene/codecs/lucene50/Lucene50TermVectorsFormat.h"
#include "org/apache/lucene/codecs/lucene53/Lucene53Codec.h"
#include "org/apache/lucene/codecs/lucene53/Lucene53NormsFormat.h"
#include "org/apache/lucene/codecs/perfield/PerFieldDocValuesFormat.h"
#include "org/apache/lucene/codecs/perfield/PerFieldPostingsFormat.h"
#include "org/lukhnos/portmobile/util/Objects.h"

@interface OrgApacheLuceneCodecsLucene53Lucene53Codec () {
 @public
  OrgApacheLuceneCodecsTermVectorsFormat *vectorsFormat_;
  OrgApacheLuceneCodecsFieldInfosFormat *fieldInfosFormat_;
  OrgApacheLuceneCodecsSegmentInfoFormat *segmentInfosFormat_;
  OrgApacheLuceneCodecsLiveDocsFormat *liveDocsFormat_;
  OrgApacheLuceneCodecsCompoundFormat *compoundFormat_;
  OrgApacheLuceneCodecsPostingsFormat *postingsFormat_;
  OrgApacheLuceneCodecsDocValuesFormat *docValuesFormat_;
  OrgApacheLuceneCodecsStoredFieldsFormat *storedFieldsFormat_;
  OrgApacheLuceneCodecsPostingsFormat *defaultFormat_;
  OrgApacheLuceneCodecsDocValuesFormat *defaultDVFormat_;
  OrgApacheLuceneCodecsNormsFormat *normsFormat_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene53Lucene53Codec, vectorsFormat_, OrgApacheLuceneCodecsTermVectorsFormat *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene53Lucene53Codec, fieldInfosFormat_, OrgApacheLuceneCodecsFieldInfosFormat *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene53Lucene53Codec, segmentInfosFormat_, OrgApacheLuceneCodecsSegmentInfoFormat *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene53Lucene53Codec, liveDocsFormat_, OrgApacheLuceneCodecsLiveDocsFormat *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene53Lucene53Codec, compoundFormat_, OrgApacheLuceneCodecsCompoundFormat *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene53Lucene53Codec, postingsFormat_, OrgApacheLuceneCodecsPostingsFormat *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene53Lucene53Codec, docValuesFormat_, OrgApacheLuceneCodecsDocValuesFormat *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene53Lucene53Codec, storedFieldsFormat_, OrgApacheLuceneCodecsStoredFieldsFormat *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene53Lucene53Codec, defaultFormat_, OrgApacheLuceneCodecsPostingsFormat *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene53Lucene53Codec, defaultDVFormat_, OrgApacheLuceneCodecsDocValuesFormat *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene53Lucene53Codec, normsFormat_, OrgApacheLuceneCodecsNormsFormat *)

@interface OrgApacheLuceneCodecsLucene53Lucene53Codec_$1 : OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat {
 @public
  OrgApacheLuceneCodecsLucene53Lucene53Codec *this$0_;
}

- (OrgApacheLuceneCodecsPostingsFormat *)getPostingsFormatForFieldWithNSString:(NSString *)field;

- (instancetype)initWithOrgApacheLuceneCodecsLucene53Lucene53Codec:(OrgApacheLuceneCodecsLucene53Lucene53Codec *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene53Lucene53Codec_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene53Lucene53Codec_$1, this$0_, OrgApacheLuceneCodecsLucene53Lucene53Codec *)

__attribute__((unused)) static void OrgApacheLuceneCodecsLucene53Lucene53Codec_$1_initWithOrgApacheLuceneCodecsLucene53Lucene53Codec_(OrgApacheLuceneCodecsLucene53Lucene53Codec_$1 *self, OrgApacheLuceneCodecsLucene53Lucene53Codec *outer$);

__attribute__((unused)) static OrgApacheLuceneCodecsLucene53Lucene53Codec_$1 *new_OrgApacheLuceneCodecsLucene53Lucene53Codec_$1_initWithOrgApacheLuceneCodecsLucene53Lucene53Codec_(OrgApacheLuceneCodecsLucene53Lucene53Codec *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneCodecsLucene53Lucene53Codec_$1 *create_OrgApacheLuceneCodecsLucene53Lucene53Codec_$1_initWithOrgApacheLuceneCodecsLucene53Lucene53Codec_(OrgApacheLuceneCodecsLucene53Lucene53Codec *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene53Lucene53Codec_$1)

@interface OrgApacheLuceneCodecsLucene53Lucene53Codec_$2 : OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat {
 @public
  OrgApacheLuceneCodecsLucene53Lucene53Codec *this$0_;
}

- (OrgApacheLuceneCodecsDocValuesFormat *)getDocValuesFormatForFieldWithNSString:(NSString *)field;

- (instancetype)initWithOrgApacheLuceneCodecsLucene53Lucene53Codec:(OrgApacheLuceneCodecsLucene53Lucene53Codec *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene53Lucene53Codec_$2)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene53Lucene53Codec_$2, this$0_, OrgApacheLuceneCodecsLucene53Lucene53Codec *)

__attribute__((unused)) static void OrgApacheLuceneCodecsLucene53Lucene53Codec_$2_initWithOrgApacheLuceneCodecsLucene53Lucene53Codec_(OrgApacheLuceneCodecsLucene53Lucene53Codec_$2 *self, OrgApacheLuceneCodecsLucene53Lucene53Codec *outer$);

__attribute__((unused)) static OrgApacheLuceneCodecsLucene53Lucene53Codec_$2 *new_OrgApacheLuceneCodecsLucene53Lucene53Codec_$2_initWithOrgApacheLuceneCodecsLucene53Lucene53Codec_(OrgApacheLuceneCodecsLucene53Lucene53Codec *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneCodecsLucene53Lucene53Codec_$2 *create_OrgApacheLuceneCodecsLucene53Lucene53Codec_$2_initWithOrgApacheLuceneCodecsLucene53Lucene53Codec_(OrgApacheLuceneCodecsLucene53Lucene53Codec *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene53Lucene53Codec_$2)

@implementation OrgApacheLuceneCodecsLucene53Lucene53Codec

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsLucene53Lucene53Codec_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode:(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *)mode {
  OrgApacheLuceneCodecsLucene53Lucene53Codec_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_(self, mode);
  return self;
}

- (OrgApacheLuceneCodecsStoredFieldsFormat *)storedFieldsFormat {
  return storedFieldsFormat_;
}

- (OrgApacheLuceneCodecsTermVectorsFormat *)termVectorsFormat {
  return vectorsFormat_;
}

- (OrgApacheLuceneCodecsPostingsFormat *)postingsFormat {
  return postingsFormat_;
}

- (OrgApacheLuceneCodecsFieldInfosFormat *)fieldInfosFormat {
  return fieldInfosFormat_;
}

- (OrgApacheLuceneCodecsSegmentInfoFormat *)segmentInfoFormat {
  return segmentInfosFormat_;
}

- (OrgApacheLuceneCodecsLiveDocsFormat *)liveDocsFormat {
  return liveDocsFormat_;
}

- (OrgApacheLuceneCodecsCompoundFormat *)compoundFormat {
  return compoundFormat_;
}

- (OrgApacheLuceneCodecsPostingsFormat *)getPostingsFormatForFieldWithNSString:(NSString *)field {
  return defaultFormat_;
}

- (OrgApacheLuceneCodecsDocValuesFormat *)getDocValuesFormatForFieldWithNSString:(NSString *)field {
  return defaultDVFormat_;
}

- (OrgApacheLuceneCodecsDocValuesFormat *)docValuesFormat {
  return docValuesFormat_;
}

- (OrgApacheLuceneCodecsNormsFormat *)normsFormat {
  return normsFormat_;
}

- (void)dealloc {
  RELEASE_(vectorsFormat_);
  RELEASE_(fieldInfosFormat_);
  RELEASE_(segmentInfosFormat_);
  RELEASE_(liveDocsFormat_);
  RELEASE_(compoundFormat_);
  RELEASE_(postingsFormat_);
  RELEASE_(docValuesFormat_);
  RELEASE_(storedFieldsFormat_);
  RELEASE_(defaultFormat_);
  RELEASE_(defaultDVFormat_);
  RELEASE_(normsFormat_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Lucene53Codec", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode:", "Lucene53Codec", NULL, 0x1, NULL, NULL },
    { "storedFieldsFormat", NULL, "Lorg.apache.lucene.codecs.StoredFieldsFormat;", 0x11, NULL, NULL },
    { "termVectorsFormat", NULL, "Lorg.apache.lucene.codecs.TermVectorsFormat;", 0x11, NULL, NULL },
    { "postingsFormat", NULL, "Lorg.apache.lucene.codecs.PostingsFormat;", 0x11, NULL, NULL },
    { "fieldInfosFormat", NULL, "Lorg.apache.lucene.codecs.FieldInfosFormat;", 0x11, NULL, NULL },
    { "segmentInfoFormat", NULL, "Lorg.apache.lucene.codecs.SegmentInfoFormat;", 0x11, NULL, NULL },
    { "liveDocsFormat", NULL, "Lorg.apache.lucene.codecs.LiveDocsFormat;", 0x11, NULL, NULL },
    { "compoundFormat", NULL, "Lorg.apache.lucene.codecs.CompoundFormat;", 0x11, NULL, NULL },
    { "getPostingsFormatForFieldWithNSString:", "getPostingsFormatForField", "Lorg.apache.lucene.codecs.PostingsFormat;", 0x1, NULL, NULL },
    { "getDocValuesFormatForFieldWithNSString:", "getDocValuesFormatForField", "Lorg.apache.lucene.codecs.DocValuesFormat;", 0x1, NULL, NULL },
    { "docValuesFormat", NULL, "Lorg.apache.lucene.codecs.DocValuesFormat;", 0x11, NULL, NULL },
    { "normsFormat", NULL, "Lorg.apache.lucene.codecs.NormsFormat;", 0x11, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "vectorsFormat_", NULL, 0x12, "Lorg.apache.lucene.codecs.TermVectorsFormat;", NULL, NULL, .constantValue.asLong = 0 },
    { "fieldInfosFormat_", NULL, 0x12, "Lorg.apache.lucene.codecs.FieldInfosFormat;", NULL, NULL, .constantValue.asLong = 0 },
    { "segmentInfosFormat_", NULL, 0x12, "Lorg.apache.lucene.codecs.SegmentInfoFormat;", NULL, NULL, .constantValue.asLong = 0 },
    { "liveDocsFormat_", NULL, 0x12, "Lorg.apache.lucene.codecs.LiveDocsFormat;", NULL, NULL, .constantValue.asLong = 0 },
    { "compoundFormat_", NULL, 0x12, "Lorg.apache.lucene.codecs.CompoundFormat;", NULL, NULL, .constantValue.asLong = 0 },
    { "postingsFormat_", NULL, 0x12, "Lorg.apache.lucene.codecs.PostingsFormat;", NULL, NULL, .constantValue.asLong = 0 },
    { "docValuesFormat_", NULL, 0x12, "Lorg.apache.lucene.codecs.DocValuesFormat;", NULL, NULL, .constantValue.asLong = 0 },
    { "storedFieldsFormat_", NULL, 0x12, "Lorg.apache.lucene.codecs.StoredFieldsFormat;", NULL, NULL, .constantValue.asLong = 0 },
    { "defaultFormat_", NULL, 0x12, "Lorg.apache.lucene.codecs.PostingsFormat;", NULL, NULL, .constantValue.asLong = 0 },
    { "defaultDVFormat_", NULL, 0x12, "Lorg.apache.lucene.codecs.DocValuesFormat;", NULL, NULL, .constantValue.asLong = 0 },
    { "normsFormat_", NULL, 0x12, "Lorg.apache.lucene.codecs.NormsFormat;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsLucene53Lucene53Codec = { 2, "Lucene53Codec", "org.apache.lucene.codecs.lucene53", NULL, 0x1, 13, methods, 11, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsLucene53Lucene53Codec;
}

@end

void OrgApacheLuceneCodecsLucene53Lucene53Codec_init(OrgApacheLuceneCodecsLucene53Lucene53Codec *self) {
  OrgApacheLuceneCodecsLucene53Lucene53Codec_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_(self, JreLoadEnum(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode, BEST_SPEED));
}

OrgApacheLuceneCodecsLucene53Lucene53Codec *new_OrgApacheLuceneCodecsLucene53Lucene53Codec_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsLucene53Lucene53Codec, init)
}

OrgApacheLuceneCodecsLucene53Lucene53Codec *create_OrgApacheLuceneCodecsLucene53Lucene53Codec_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsLucene53Lucene53Codec, init)
}

void OrgApacheLuceneCodecsLucene53Lucene53Codec_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_(OrgApacheLuceneCodecsLucene53Lucene53Codec *self, OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *mode) {
  OrgApacheLuceneCodecsCodec_initWithNSString_(self, @"Lucene53");
  JreStrongAssignAndConsume(&self->vectorsFormat_, new_OrgApacheLuceneCodecsLucene50Lucene50TermVectorsFormat_init());
  JreStrongAssignAndConsume(&self->fieldInfosFormat_, new_OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_init());
  JreStrongAssignAndConsume(&self->segmentInfosFormat_, new_OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_init());
  JreStrongAssignAndConsume(&self->liveDocsFormat_, new_OrgApacheLuceneCodecsLucene50Lucene50LiveDocsFormat_init());
  JreStrongAssignAndConsume(&self->compoundFormat_, new_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_init());
  JreStrongAssignAndConsume(&self->postingsFormat_, new_OrgApacheLuceneCodecsLucene53Lucene53Codec_$1_initWithOrgApacheLuceneCodecsLucene53Lucene53Codec_(self));
  JreStrongAssignAndConsume(&self->docValuesFormat_, new_OrgApacheLuceneCodecsLucene53Lucene53Codec_$2_initWithOrgApacheLuceneCodecsLucene53Lucene53Codec_(self));
  JreStrongAssign(&self->defaultFormat_, OrgApacheLuceneCodecsPostingsFormat_forNameWithNSString_(@"Lucene50"));
  JreStrongAssign(&self->defaultDVFormat_, OrgApacheLuceneCodecsDocValuesFormat_forNameWithNSString_(@"Lucene50"));
  JreStrongAssignAndConsume(&self->normsFormat_, new_OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_init());
  JreStrongAssignAndConsume(&self->storedFieldsFormat_, new_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_(OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(mode)));
}

OrgApacheLuceneCodecsLucene53Lucene53Codec *new_OrgApacheLuceneCodecsLucene53Lucene53Codec_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *mode) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsLucene53Lucene53Codec, initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_, mode)
}

OrgApacheLuceneCodecsLucene53Lucene53Codec *create_OrgApacheLuceneCodecsLucene53Lucene53Codec_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *mode) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsLucene53Lucene53Codec, initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_, mode)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsLucene53Lucene53Codec)

@implementation OrgApacheLuceneCodecsLucene53Lucene53Codec_$1

- (OrgApacheLuceneCodecsPostingsFormat *)getPostingsFormatForFieldWithNSString:(NSString *)field {
  return [this$0_ getPostingsFormatForFieldWithNSString:field];
}

- (instancetype)initWithOrgApacheLuceneCodecsLucene53Lucene53Codec:(OrgApacheLuceneCodecsLucene53Lucene53Codec *)outer$ {
  OrgApacheLuceneCodecsLucene53Lucene53Codec_$1_initWithOrgApacheLuceneCodecsLucene53Lucene53Codec_(self, outer$);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getPostingsFormatForFieldWithNSString:", "getPostingsFormatForField", "Lorg.apache.lucene.codecs.PostingsFormat;", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneCodecsLucene53Lucene53Codec:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.codecs.lucene53.Lucene53Codec;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsLucene53Lucene53Codec_$1 = { 2, "", "org.apache.lucene.codecs.lucene53", "Lucene53Codec", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsLucene53Lucene53Codec_$1;
}

@end

void OrgApacheLuceneCodecsLucene53Lucene53Codec_$1_initWithOrgApacheLuceneCodecsLucene53Lucene53Codec_(OrgApacheLuceneCodecsLucene53Lucene53Codec_$1 *self, OrgApacheLuceneCodecsLucene53Lucene53Codec *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_init(self);
}

OrgApacheLuceneCodecsLucene53Lucene53Codec_$1 *new_OrgApacheLuceneCodecsLucene53Lucene53Codec_$1_initWithOrgApacheLuceneCodecsLucene53Lucene53Codec_(OrgApacheLuceneCodecsLucene53Lucene53Codec *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsLucene53Lucene53Codec_$1, initWithOrgApacheLuceneCodecsLucene53Lucene53Codec_, outer$)
}

OrgApacheLuceneCodecsLucene53Lucene53Codec_$1 *create_OrgApacheLuceneCodecsLucene53Lucene53Codec_$1_initWithOrgApacheLuceneCodecsLucene53Lucene53Codec_(OrgApacheLuceneCodecsLucene53Lucene53Codec *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsLucene53Lucene53Codec_$1, initWithOrgApacheLuceneCodecsLucene53Lucene53Codec_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsLucene53Lucene53Codec_$1)

@implementation OrgApacheLuceneCodecsLucene53Lucene53Codec_$2

- (OrgApacheLuceneCodecsDocValuesFormat *)getDocValuesFormatForFieldWithNSString:(NSString *)field {
  return [this$0_ getDocValuesFormatForFieldWithNSString:field];
}

- (instancetype)initWithOrgApacheLuceneCodecsLucene53Lucene53Codec:(OrgApacheLuceneCodecsLucene53Lucene53Codec *)outer$ {
  OrgApacheLuceneCodecsLucene53Lucene53Codec_$2_initWithOrgApacheLuceneCodecsLucene53Lucene53Codec_(self, outer$);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getDocValuesFormatForFieldWithNSString:", "getDocValuesFormatForField", "Lorg.apache.lucene.codecs.DocValuesFormat;", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneCodecsLucene53Lucene53Codec:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.codecs.lucene53.Lucene53Codec;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsLucene53Lucene53Codec_$2 = { 2, "", "org.apache.lucene.codecs.lucene53", "Lucene53Codec", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsLucene53Lucene53Codec_$2;
}

@end

void OrgApacheLuceneCodecsLucene53Lucene53Codec_$2_initWithOrgApacheLuceneCodecsLucene53Lucene53Codec_(OrgApacheLuceneCodecsLucene53Lucene53Codec_$2 *self, OrgApacheLuceneCodecsLucene53Lucene53Codec *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_init(self);
}

OrgApacheLuceneCodecsLucene53Lucene53Codec_$2 *new_OrgApacheLuceneCodecsLucene53Lucene53Codec_$2_initWithOrgApacheLuceneCodecsLucene53Lucene53Codec_(OrgApacheLuceneCodecsLucene53Lucene53Codec *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsLucene53Lucene53Codec_$2, initWithOrgApacheLuceneCodecsLucene53Lucene53Codec_, outer$)
}

OrgApacheLuceneCodecsLucene53Lucene53Codec_$2 *create_OrgApacheLuceneCodecsLucene53Lucene53Codec_$2_initWithOrgApacheLuceneCodecsLucene53Lucene53Codec_(OrgApacheLuceneCodecsLucene53Lucene53Codec *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsLucene53Lucene53Codec_$2, initWithOrgApacheLuceneCodecsLucene53Lucene53Codec_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsLucene53Lucene53Codec_$2)
