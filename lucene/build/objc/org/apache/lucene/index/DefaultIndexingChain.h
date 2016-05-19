//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DefaultIndexingChain.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexDefaultIndexingChain")
#ifdef RESTRICT_OrgApacheLuceneIndexDefaultIndexingChain
#define INCLUDE_ALL_OrgApacheLuceneIndexDefaultIndexingChain 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexDefaultIndexingChain 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexDefaultIndexingChain

#if !defined (OrgApacheLuceneIndexDefaultIndexingChain_) && (INCLUDE_ALL_OrgApacheLuceneIndexDefaultIndexingChain || defined(INCLUDE_OrgApacheLuceneIndexDefaultIndexingChain))
#define OrgApacheLuceneIndexDefaultIndexingChain_

#define RESTRICT_OrgApacheLuceneIndexDocConsumer 1
#define INCLUDE_OrgApacheLuceneIndexDocConsumer 1
#include "org/apache/lucene/index/DocConsumer.h"

@class OrgApacheLuceneIndexDocumentsWriterPerThread;
@class OrgApacheLuceneIndexDocumentsWriterPerThread_DocState;
@class OrgApacheLuceneIndexFieldInfos_Builder;
@class OrgApacheLuceneIndexSegmentWriteState;
@class OrgApacheLuceneIndexTermsHash;
@class OrgApacheLuceneUtilCounter;

/*!
 @brief Default general purpose indexing chain, which handles
 indexing all types of fields.
 */
@interface OrgApacheLuceneIndexDefaultIndexingChain : OrgApacheLuceneIndexDocConsumer {
 @public
  OrgApacheLuceneUtilCounter *bytesUsed_;
  OrgApacheLuceneIndexDocumentsWriterPerThread_DocState *docState_;
  OrgApacheLuceneIndexDocumentsWriterPerThread *docWriter_;
  OrgApacheLuceneIndexFieldInfos_Builder *fieldInfos_;
  OrgApacheLuceneIndexTermsHash *termsHash_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexDocumentsWriterPerThread:(OrgApacheLuceneIndexDocumentsWriterPerThread *)docWriter;

- (void)abort;

- (void)flushWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state;

- (void)processDocument;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexDefaultIndexingChain)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDefaultIndexingChain, bytesUsed_, OrgApacheLuceneUtilCounter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDefaultIndexingChain, docState_, OrgApacheLuceneIndexDocumentsWriterPerThread_DocState *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDefaultIndexingChain, docWriter_, OrgApacheLuceneIndexDocumentsWriterPerThread *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDefaultIndexingChain, fieldInfos_, OrgApacheLuceneIndexFieldInfos_Builder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDefaultIndexingChain, termsHash_, OrgApacheLuceneIndexTermsHash *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDefaultIndexingChain_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_(OrgApacheLuceneIndexDefaultIndexingChain *self, OrgApacheLuceneIndexDocumentsWriterPerThread *docWriter);

FOUNDATION_EXPORT OrgApacheLuceneIndexDefaultIndexingChain *new_OrgApacheLuceneIndexDefaultIndexingChain_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_(OrgApacheLuceneIndexDocumentsWriterPerThread *docWriter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexDefaultIndexingChain *create_OrgApacheLuceneIndexDefaultIndexingChain_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_(OrgApacheLuceneIndexDocumentsWriterPerThread *docWriter);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDefaultIndexingChain)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexDefaultIndexingChain")
