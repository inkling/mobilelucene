//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/RandomAccessInput.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreRandomAccessInput")
#ifdef RESTRICT_OrgApacheLuceneStoreRandomAccessInput
#define INCLUDE_ALL_OrgApacheLuceneStoreRandomAccessInput 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreRandomAccessInput 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreRandomAccessInput

#if !defined (OrgApacheLuceneStoreRandomAccessInput_) && (INCLUDE_ALL_OrgApacheLuceneStoreRandomAccessInput || defined(INCLUDE_OrgApacheLuceneStoreRandomAccessInput))
#define OrgApacheLuceneStoreRandomAccessInput_

/*!
 @brief Random Access Index API.
 Unlike <code>IndexInput</code>, this has no concept of file position, all reads
 are absolute. However, like IndexInput, it is only intended for use by a single thread.
 */
@protocol OrgApacheLuceneStoreRandomAccessInput < NSObject, JavaObject >

/*!
 @brief Reads a byte at the given position in the file
 - seealso: DataInput#readByte
 */
- (jbyte)readByteWithLong:(jlong)pos;

/*!
 @brief Reads a short at the given position in the file
 - seealso: DataInput#readShort
 */
- (jshort)readShortWithLong:(jlong)pos;

/*!
 @brief Reads an integer at the given position in the file
 - seealso: DataInput#readInt
 */
- (jint)readIntWithLong:(jlong)pos;

/*!
 @brief Reads a long at the given position in the file
 - seealso: DataInput#readLong
 */
- (jlong)readLongWithLong:(jlong)pos;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreRandomAccessInput)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreRandomAccessInput)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreRandomAccessInput")
