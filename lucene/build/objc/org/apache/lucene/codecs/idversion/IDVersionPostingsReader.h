//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/codecs/idversion/IDVersionPostingsReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsIdversionIDVersionPostingsReader")
#ifdef RESTRICT_OrgApacheLuceneCodecsIdversionIDVersionPostingsReader
#define INCLUDE_ALL_OrgApacheLuceneCodecsIdversionIDVersionPostingsReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsIdversionIDVersionPostingsReader 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsIdversionIDVersionPostingsReader

#if !defined (OrgApacheLuceneCodecsIdversionIDVersionPostingsReader_) && (INCLUDE_ALL_OrgApacheLuceneCodecsIdversionIDVersionPostingsReader || defined(INCLUDE_OrgApacheLuceneCodecsIdversionIDVersionPostingsReader))
#define OrgApacheLuceneCodecsIdversionIDVersionPostingsReader_

#define RESTRICT_OrgApacheLuceneCodecsPostingsReaderBase 1
#define INCLUDE_OrgApacheLuceneCodecsPostingsReaderBase 1
#include "org/apache/lucene/codecs/PostingsReaderBase.h"

@class IOSLongArray;
@class OrgApacheLuceneCodecsBlockTermState;
@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexPostingsEnum;
@class OrgApacheLuceneIndexSegmentReadState;
@class OrgApacheLuceneStoreDataInput;
@class OrgApacheLuceneStoreIndexInput;
@protocol JavaUtilCollection;

@interface OrgApacheLuceneCodecsIdversionIDVersionPostingsReader : OrgApacheLuceneCodecsPostingsReaderBase

#pragma mark Public

- (void)checkIntegrity;

- (void)close;

- (void)decodeTermWithLongArray:(IOSLongArray *)longs
withOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
withOrgApacheLuceneCodecsBlockTermState:(OrgApacheLuceneCodecsBlockTermState *)_termState
                    withBoolean:(jboolean)absolute;

- (id<JavaUtilCollection>)getChildResources;

- (void)init__WithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)termsIn
        withOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneCodecsBlockTermState *)newTermState OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneIndexPostingsEnum *)postingsWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                        withOrgApacheLuceneCodecsBlockTermState:(OrgApacheLuceneCodecsBlockTermState *)termState
                                           withOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)reuse
                                                                        withInt:(jint)flags;

- (jlong)ramBytesUsed;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsIdversionIDVersionPostingsReader)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsIdversionIDVersionPostingsReader_init(OrgApacheLuceneCodecsIdversionIDVersionPostingsReader *self);

FOUNDATION_EXPORT OrgApacheLuceneCodecsIdversionIDVersionPostingsReader *new_OrgApacheLuceneCodecsIdversionIDVersionPostingsReader_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsIdversionIDVersionPostingsReader *create_OrgApacheLuceneCodecsIdversionIDVersionPostingsReader_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsIdversionIDVersionPostingsReader)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsIdversionIDVersionPostingsReader")
