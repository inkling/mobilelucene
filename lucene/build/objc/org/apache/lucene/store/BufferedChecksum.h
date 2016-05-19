//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/BufferedChecksum.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreBufferedChecksum")
#ifdef RESTRICT_OrgApacheLuceneStoreBufferedChecksum
#define INCLUDE_ALL_OrgApacheLuceneStoreBufferedChecksum 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreBufferedChecksum 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreBufferedChecksum

#if !defined (OrgApacheLuceneStoreBufferedChecksum_) && (INCLUDE_ALL_OrgApacheLuceneStoreBufferedChecksum || defined(INCLUDE_OrgApacheLuceneStoreBufferedChecksum))
#define OrgApacheLuceneStoreBufferedChecksum_

#define RESTRICT_JavaUtilZipChecksum 1
#define INCLUDE_JavaUtilZipChecksum 1
#include "java/util/zip/Checksum.h"

@class IOSByteArray;

/*!
 @brief Wraps another <code>Checksum</code> with an internal buffer
 to speed up checksum calculations.
 */
@interface OrgApacheLuceneStoreBufferedChecksum : NSObject < JavaUtilZipChecksum >

+ (jint)DEFAULT_BUFFERSIZE;

#pragma mark Public

/*!
 @brief Create a new BufferedChecksum with <code>DEFAULT_BUFFERSIZE</code>
 */
- (instancetype)initWithJavaUtilZipChecksum:(id<JavaUtilZipChecksum>)inArg;

/*!
 @brief Create a new BufferedChecksum with the specified bufferSize
 */
- (instancetype)initWithJavaUtilZipChecksum:(id<JavaUtilZipChecksum>)inArg
                                    withInt:(jint)bufferSize;

- (jlong)getValue;

- (void)reset;

- (void)updateWithByteArray:(IOSByteArray *)b
                    withInt:(jint)off
                    withInt:(jint)len;

- (void)updateWithInt:(jint)b;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreBufferedChecksum)

/*!
 @brief Default buffer size: 256
 */
inline jint OrgApacheLuceneStoreBufferedChecksum_get_DEFAULT_BUFFERSIZE();
#define OrgApacheLuceneStoreBufferedChecksum_DEFAULT_BUFFERSIZE 256
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneStoreBufferedChecksum, DEFAULT_BUFFERSIZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneStoreBufferedChecksum_initWithJavaUtilZipChecksum_(OrgApacheLuceneStoreBufferedChecksum *self, id<JavaUtilZipChecksum> inArg);

FOUNDATION_EXPORT OrgApacheLuceneStoreBufferedChecksum *new_OrgApacheLuceneStoreBufferedChecksum_initWithJavaUtilZipChecksum_(id<JavaUtilZipChecksum> inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreBufferedChecksum *create_OrgApacheLuceneStoreBufferedChecksum_initWithJavaUtilZipChecksum_(id<JavaUtilZipChecksum> inArg);

FOUNDATION_EXPORT void OrgApacheLuceneStoreBufferedChecksum_initWithJavaUtilZipChecksum_withInt_(OrgApacheLuceneStoreBufferedChecksum *self, id<JavaUtilZipChecksum> inArg, jint bufferSize);

FOUNDATION_EXPORT OrgApacheLuceneStoreBufferedChecksum *new_OrgApacheLuceneStoreBufferedChecksum_initWithJavaUtilZipChecksum_withInt_(id<JavaUtilZipChecksum> inArg, jint bufferSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreBufferedChecksum *create_OrgApacheLuceneStoreBufferedChecksum_initWithJavaUtilZipChecksum_withInt_(id<JavaUtilZipChecksum> inArg, jint bufferSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreBufferedChecksum)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreBufferedChecksum")
