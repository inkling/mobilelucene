//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/DataOutput.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreDataOutput")
#ifdef RESTRICT_OrgApacheLuceneStoreDataOutput
#define INCLUDE_ALL_OrgApacheLuceneStoreDataOutput 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreDataOutput 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreDataOutput

#if !defined (OrgApacheLuceneStoreDataOutput_) && (INCLUDE_ALL_OrgApacheLuceneStoreDataOutput || defined(INCLUDE_OrgApacheLuceneStoreDataOutput))
#define OrgApacheLuceneStoreDataOutput_

@class IOSByteArray;
@class IOSObjectArray;
@class OrgApacheLuceneStoreDataInput;
@protocol JavaUtilMap;
@protocol JavaUtilSet;

/*!
 @brief Abstract base class for performing write operations of Lucene's low-level
 data types.
 <p><code>DataOutput</code> may only be used from one thread, because it is not
 thread safe (it keeps internal state like file position).
 */
@interface OrgApacheLuceneStoreDataOutput : NSObject

#pragma mark Public

- (instancetype)init;

/*!
 @brief Copy numBytes bytes from input to ourself.
 */
- (void)copyBytesWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)input
                                          withLong:(jlong)numBytes OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Writes a single byte.
 <p>
 The most primitive data type is an eight-bit byte. Files are 
 accessed as sequences of bytes. All other data types are defined 
 as sequences of bytes, so file formats are byte-order independent.
 - seealso: IndexInput#readByte()
 */
- (void)writeByteWithByte:(jbyte)b;

/*!
 @brief Writes an array of bytes.
 @param b the bytes to write
 @param length the number of bytes to write
 - seealso: DataInput#readBytes(byte[],int,int)
 */
- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)length;

/*!
 @brief Writes an array of bytes.
 @param b the bytes to write
 @param offset the offset in the byte array
 @param length the number of bytes to write
 - seealso: DataInput#readBytes(byte[],int,int)
 */
- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)offset
                        withInt:(jint)length;

/*!
 @brief Writes an int as four bytes.
 <p>
 32-bit unsigned integer written as four bytes, high-order bytes first.
 - seealso: DataInput#readInt()
 */
- (void)writeIntWithInt:(jint)i;

/*!
 @brief Writes a long as eight bytes.
 <p>
 64-bit unsigned integer written as eight bytes, high-order bytes first.
 - seealso: DataInput#readLong()
 */
- (void)writeLongWithLong:(jlong)i;

/*!
 @brief Writes a String map.
 <p>
 First the size is written as an <code>vInt</code>,
 followed by each key-value pair written as two consecutive 
 <code>String</code>s.
 @param map Input map.
 @throws NullPointerException if <code>map</code> is null.
 */
- (void)writeMapOfStringsWithJavaUtilMap:(id<JavaUtilMap>)map;

/*!
 @brief Writes a String set.
 <p>
 First the size is written as an <code>vInt</code>,
 followed by each value written as a
 <code>String</code>.
 @param set Input set.
 @throws NullPointerException if <code>set</code> is null.
 */
- (void)writeSetOfStringsWithJavaUtilSet:(id<JavaUtilSet>)set;

/*!
 @brief Writes a short as two bytes.
 - seealso: DataInput#readShort()
 */
- (void)writeShortWithShort:(jshort)i;

/*!
 @brief Writes a string.
 <p>
 Writes strings as UTF-8 encoded bytes. First the length, in bytes, is
 written as a <code>VInt</code>, followed by the bytes.
 - seealso: DataInput#readString()
 */
- (void)writeStringWithNSString:(NSString *)s;

/*!
 @brief Writes a String set.
 <p>
 First the size is written as an <code>Int32</code>,
 followed by each value written as a
 <code>String</code>.
 @param set Input set. May be null (equivalent to an empty set)
 */
- (void)writeStringSetWithJavaUtilSet:(id<JavaUtilSet>)set;

/*!
 @brief Writes a String map.
 <p>
 First the size is written as an <code>Int32</code>,
 followed by each key-value pair written as two consecutive 
 <code>String</code>s.
 @param map Input map. May be null (equivalent to an empty map)
 */
- (void)writeStringStringMapWithJavaUtilMap:(id<JavaUtilMap>)map;

/*!
 @brief Writes an int in a variable-length format.
 Writes between one and
 five bytes.  Smaller values take fewer bytes.  Negative numbers are
 supported, but should be avoided.
 <p>VByte is a variable-length format for positive integers is defined where the
 high-order bit of each byte indicates whether more bytes remain to be read. The
 low-order seven bits are appended as increasingly more significant bits in the
 resulting integer value. Thus values from zero to 127 may be stored in a single
 byte, values from 128 to 16,383 may be stored in two bytes, and so on.</p>
 <p>VByte Encoding Example</p>
 <table cellspacing="0" cellpadding="2" border="0" summary="variable length encoding examples">
 <tr valign="top">
 <th align="left">Value</th>
 <th align="left">Byte 1</th>
 <th align="left">Byte 2</th>
 <th align="left">Byte 3</th>
 </tr>
 <tr valign="bottom">
 <td>0</td>
 <td><code>00000000</code></td>
 <td></td>
 <td></td>
 </tr>
 <tr valign="bottom">
 <td>1</td>
 <td><code>00000001</code></td>
 <td></td>
 <td></td>
 </tr>
 <tr valign="bottom">
 <td>2</td>
 <td><code>00000010</code></td>
 <td></td>
 <td></td>
 </tr>
 <tr>
 <td valign="top">...</td>
 <td valign="bottom"></td>
 <td valign="bottom"></td>
 <td valign="bottom"></td>
 </tr>
 <tr valign="bottom">
 <td>127</td>
 <td><code>01111111</code></td>
 <td></td>
 <td></td>
 </tr>
 <tr valign="bottom">
 <td>128</td>
 <td><code>10000000</code></td>
 <td><code>00000001</code></td>
 <td></td>
 </tr>
 <tr valign="bottom">
 <td>129</td>
 <td><code>10000001</code></td>
 <td><code>00000001</code></td>
 <td></td>
 </tr>
 <tr valign="bottom">
 <td>130</td>
 <td><code>10000010</code></td>
 <td><code>00000001</code></td>
 <td></td>
 </tr>
 <tr>
 <td valign="top">...</td>
 <td></td>
 <td></td>
 <td></td>
 </tr>
 <tr valign="bottom">
 <td>16,383</td>
 <td><code>11111111</code></td>
 <td><code>01111111</code></td>
 <td></td>
 </tr>
 <tr valign="bottom">
 <td>16,384</td>
 <td><code>10000000</code></td>
 <td><code>10000000</code></td>
 <td><code>00000001</code></td>
 </tr>
 <tr valign="bottom">
 <td>16,385</td>
 <td><code>10000001</code></td>
 <td><code>10000000</code></td>
 <td><code>00000001</code></td>
 </tr>
 <tr>
 <td valign="top">...</td>
 <td valign="bottom"></td>
 <td valign="bottom"></td>
 <td valign="bottom"></td>
 </tr>
 </table>
 <p>This provides compression while still being efficient to decode.</p>
 @param i Smaller values take fewer bytes.  Negative numbers are
 supported, but should be avoided.
 @throws IOException If there is an I/O error writing to the underlying medium.
 - seealso: DataInput#readVInt()
 */
- (void)writeVIntWithInt:(jint)i;

/*!
 @brief Writes an long in a variable-length format.
 Writes between one and nine
 bytes.  Smaller values take fewer bytes.  Negative numbers are not
 supported.
 <p>
 The format is described further in <code>DataOutput.writeVInt(int)</code>.
 - seealso: DataInput#readVLong()
 */
- (void)writeVLongWithLong:(jlong)i;

/*!
 @brief Write a <code>zig-zag</code>-encoded
 <code>variable-length</code> integer.
 This is typically useful
 to write small signed ints and is equivalent to calling
 <code>writeVInt(BitUtil.zigZagEncode(i))</code>.
 - seealso: DataInput#readZInt()
 */
- (void)writeZIntWithInt:(jint)i;

/*!
 @brief Write a <code>zig-zag</code>-encoded
 <code>variable-length</code> long.
 Writes between one and ten
 bytes. This is typically useful to write small signed ints.
 - seealso: DataInput#readZLong()
 */
- (void)writeZLongWithLong:(jlong)i;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreDataOutput)

FOUNDATION_EXPORT void OrgApacheLuceneStoreDataOutput_init(OrgApacheLuceneStoreDataOutput *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreDataOutput)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreDataOutput")
