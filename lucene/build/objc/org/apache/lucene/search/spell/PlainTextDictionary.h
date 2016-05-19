//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/spell/PlainTextDictionary.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpellPlainTextDictionary")
#ifdef RESTRICT_OrgApacheLuceneSearchSpellPlainTextDictionary
#define INCLUDE_ALL_OrgApacheLuceneSearchSpellPlainTextDictionary 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpellPlainTextDictionary 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpellPlainTextDictionary

#if !defined (OrgApacheLuceneSearchSpellPlainTextDictionary_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpellPlainTextDictionary || defined(INCLUDE_OrgApacheLuceneSearchSpellPlainTextDictionary))
#define OrgApacheLuceneSearchSpellPlainTextDictionary_

#define RESTRICT_OrgApacheLuceneSearchSpellDictionary 1
#define INCLUDE_OrgApacheLuceneSearchSpellDictionary 1
#include "org/apache/lucene/search/spell/Dictionary.h"

@class JavaIoInputStream;
@class JavaIoReader;
@class OrgLukhnosPortmobileFilePath;
@protocol OrgApacheLuceneSearchSuggestInputIterator;

/*!
 @brief Dictionary represented by a text file.
 <p>Format allowed: 1 word per line:<br>
 word1<br>
 word2<br>
 word3<br>
 */
@interface OrgApacheLuceneSearchSpellPlainTextDictionary : NSObject < OrgApacheLuceneSearchSpellDictionary >

#pragma mark Public

/*!
 @brief Creates a dictionary based on an inputstream.
 <p>
 NOTE: content is treated as UTF-8
 */
- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)dictFile;

/*!
 @brief Creates a dictionary based on a Path.
 <p>
 NOTE: content is treated as UTF-8
 */
- (instancetype)initWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)path;

/*!
 @brief Creates a dictionary based on a reader.
 */
- (instancetype)initWithJavaIoReader:(JavaIoReader *)reader;

- (id<OrgApacheLuceneSearchSuggestInputIterator>)getEntryIterator;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpellPlainTextDictionary)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpellPlainTextDictionary_initWithOrgLukhnosPortmobileFilePath_(OrgApacheLuceneSearchSpellPlainTextDictionary *self, OrgLukhnosPortmobileFilePath *path);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellPlainTextDictionary *new_OrgApacheLuceneSearchSpellPlainTextDictionary_initWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *path) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellPlainTextDictionary *create_OrgApacheLuceneSearchSpellPlainTextDictionary_initWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *path);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpellPlainTextDictionary_initWithJavaIoInputStream_(OrgApacheLuceneSearchSpellPlainTextDictionary *self, JavaIoInputStream *dictFile);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellPlainTextDictionary *new_OrgApacheLuceneSearchSpellPlainTextDictionary_initWithJavaIoInputStream_(JavaIoInputStream *dictFile) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellPlainTextDictionary *create_OrgApacheLuceneSearchSpellPlainTextDictionary_initWithJavaIoInputStream_(JavaIoInputStream *dictFile);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpellPlainTextDictionary_initWithJavaIoReader_(OrgApacheLuceneSearchSpellPlainTextDictionary *self, JavaIoReader *reader);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellPlainTextDictionary *new_OrgApacheLuceneSearchSpellPlainTextDictionary_initWithJavaIoReader_(JavaIoReader *reader) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellPlainTextDictionary *create_OrgApacheLuceneSearchSpellPlainTextDictionary_initWithJavaIoReader_(JavaIoReader *reader);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpellPlainTextDictionary)

#endif

#if !defined (OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpellPlainTextDictionary || defined(INCLUDE_OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator))
#define OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator_

#define RESTRICT_OrgApacheLuceneUtilBytesRefIterator 1
#define INCLUDE_OrgApacheLuceneUtilBytesRefIterator 1
#include "org/apache/lucene/util/BytesRefIterator.h"

@class OrgApacheLuceneSearchSpellPlainTextDictionary;
@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator : NSObject < OrgApacheLuceneUtilBytesRefIterator >

#pragma mark Public

- (OrgApacheLuceneUtilBytesRef *)next;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneSearchSpellPlainTextDictionary:(OrgApacheLuceneSearchSpellPlainTextDictionary *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator_initWithOrgApacheLuceneSearchSpellPlainTextDictionary_(OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator *self, OrgApacheLuceneSearchSpellPlainTextDictionary *outer$);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator *new_OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator_initWithOrgApacheLuceneSearchSpellPlainTextDictionary_(OrgApacheLuceneSearchSpellPlainTextDictionary *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator *create_OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator_initWithOrgApacheLuceneSearchSpellPlainTextDictionary_(OrgApacheLuceneSearchSpellPlainTextDictionary *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpellPlainTextDictionary")
