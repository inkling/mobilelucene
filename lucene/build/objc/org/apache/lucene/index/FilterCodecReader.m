//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/FilterCodecReader.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/codecs/DocValuesProducer.h"
#include "org/apache/lucene/codecs/FieldsProducer.h"
#include "org/apache/lucene/codecs/NormsProducer.h"
#include "org/apache/lucene/codecs/StoredFieldsReader.h"
#include "org/apache/lucene/codecs/TermVectorsReader.h"
#include "org/apache/lucene/index/CodecReader.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/FilterCodecReader.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/lukhnos/portmobile/util/Objects.h"

@implementation OrgApacheLuceneIndexFilterCodecReader

- (instancetype)initWithOrgApacheLuceneIndexCodecReader:(OrgApacheLuceneIndexCodecReader *)inArg {
  OrgApacheLuceneIndexFilterCodecReader_initWithOrgApacheLuceneIndexCodecReader_(self, inArg);
  return self;
}

- (OrgApacheLuceneCodecsStoredFieldsReader *)getFieldsReader {
  return [((OrgApacheLuceneIndexCodecReader *) nil_chk(in_)) getFieldsReader];
}

- (OrgApacheLuceneCodecsTermVectorsReader *)getTermVectorsReader {
  return [((OrgApacheLuceneIndexCodecReader *) nil_chk(in_)) getTermVectorsReader];
}

- (OrgApacheLuceneCodecsNormsProducer *)getNormsReader {
  return [((OrgApacheLuceneIndexCodecReader *) nil_chk(in_)) getNormsReader];
}

- (OrgApacheLuceneCodecsDocValuesProducer *)getDocValuesReader {
  return [((OrgApacheLuceneIndexCodecReader *) nil_chk(in_)) getDocValuesReader];
}

- (OrgApacheLuceneCodecsFieldsProducer *)getPostingsReader {
  return [((OrgApacheLuceneIndexCodecReader *) nil_chk(in_)) getPostingsReader];
}

- (id<OrgApacheLuceneUtilBits>)getLiveDocs {
  return [((OrgApacheLuceneIndexCodecReader *) nil_chk(in_)) getLiveDocs];
}

- (OrgApacheLuceneIndexFieldInfos *)getFieldInfos {
  return [((OrgApacheLuceneIndexCodecReader *) nil_chk(in_)) getFieldInfos];
}

- (jint)numDocs {
  return [((OrgApacheLuceneIndexCodecReader *) nil_chk(in_)) numDocs];
}

- (jint)maxDoc {
  return [((OrgApacheLuceneIndexCodecReader *) nil_chk(in_)) maxDoc];
}

- (void)addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id<OrgApacheLuceneIndexLeafReader_CoreClosedListener>)listener {
  [((OrgApacheLuceneIndexCodecReader *) nil_chk(in_)) addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:listener];
}

- (void)removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id<OrgApacheLuceneIndexLeafReader_CoreClosedListener>)listener {
  [((OrgApacheLuceneIndexCodecReader *) nil_chk(in_)) removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:listener];
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexCodecReader:", "FilterCodecReader", NULL, 0x1, NULL, NULL },
    { "getFieldsReader", NULL, "Lorg.apache.lucene.codecs.StoredFieldsReader;", 0x1, NULL, NULL },
    { "getTermVectorsReader", NULL, "Lorg.apache.lucene.codecs.TermVectorsReader;", 0x1, NULL, NULL },
    { "getNormsReader", NULL, "Lorg.apache.lucene.codecs.NormsProducer;", 0x1, NULL, NULL },
    { "getDocValuesReader", NULL, "Lorg.apache.lucene.codecs.DocValuesProducer;", 0x1, NULL, NULL },
    { "getPostingsReader", NULL, "Lorg.apache.lucene.codecs.FieldsProducer;", 0x1, NULL, NULL },
    { "getLiveDocs", NULL, "Lorg.apache.lucene.util.Bits;", 0x1, NULL, NULL },
    { "getFieldInfos", NULL, "Lorg.apache.lucene.index.FieldInfos;", 0x1, NULL, NULL },
    { "numDocs", NULL, "I", 0x1, NULL, NULL },
    { "maxDoc", NULL, "I", 0x1, NULL, NULL },
    { "addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:", "addCoreClosedListener", "V", 0x1, NULL, NULL },
    { "removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:", "removeCoreClosedListener", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x14, "Lorg.apache.lucene.index.CodecReader;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFilterCodecReader = { 2, "FilterCodecReader", "org.apache.lucene.index", NULL, 0x1, 12, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexFilterCodecReader;
}

@end

void OrgApacheLuceneIndexFilterCodecReader_initWithOrgApacheLuceneIndexCodecReader_(OrgApacheLuceneIndexFilterCodecReader *self, OrgApacheLuceneIndexCodecReader *inArg) {
  OrgApacheLuceneIndexCodecReader_init(self);
  JreStrongAssign(&self->in_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(inArg));
}

OrgApacheLuceneIndexFilterCodecReader *new_OrgApacheLuceneIndexFilterCodecReader_initWithOrgApacheLuceneIndexCodecReader_(OrgApacheLuceneIndexCodecReader *inArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexFilterCodecReader, initWithOrgApacheLuceneIndexCodecReader_, inArg)
}

OrgApacheLuceneIndexFilterCodecReader *create_OrgApacheLuceneIndexFilterCodecReader_initWithOrgApacheLuceneIndexCodecReader_(OrgApacheLuceneIndexCodecReader *inArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexFilterCodecReader, initWithOrgApacheLuceneIndexCodecReader_, inArg)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFilterCodecReader)
