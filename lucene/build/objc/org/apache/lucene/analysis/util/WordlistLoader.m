//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/WordlistLoader.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/BufferedReader.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/Reader.h"
#include "java/nio/charset/Charset.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "org/apache/lucene/analysis/util/CharArrayMap.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/WordlistLoader.h"
#include "org/apache/lucene/util/IOUtils.h"

@interface OrgApacheLuceneAnalysisUtilWordlistLoader ()

/*!
 @brief no instance
 */
- (instancetype)init;

+ (JavaIoBufferedReader *)getBufferedReaderWithJavaIoReader:(JavaIoReader *)reader;

@end

inline jint OrgApacheLuceneAnalysisUtilWordlistLoader_get_INITIAL_CAPACITY();
#define OrgApacheLuceneAnalysisUtilWordlistLoader_INITIAL_CAPACITY 16
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisUtilWordlistLoader, INITIAL_CAPACITY, jint)

__attribute__((unused)) static void OrgApacheLuceneAnalysisUtilWordlistLoader_init(OrgApacheLuceneAnalysisUtilWordlistLoader *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisUtilWordlistLoader *new_OrgApacheLuceneAnalysisUtilWordlistLoader_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneAnalysisUtilWordlistLoader *create_OrgApacheLuceneAnalysisUtilWordlistLoader_init();

__attribute__((unused)) static JavaIoBufferedReader *OrgApacheLuceneAnalysisUtilWordlistLoader_getBufferedReaderWithJavaIoReader_(JavaIoReader *reader);

@implementation OrgApacheLuceneAnalysisUtilWordlistLoader

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisUtilWordlistLoader_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getWordSetWithJavaIoReader:(JavaIoReader *)reader
                            withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)result {
  return OrgApacheLuceneAnalysisUtilWordlistLoader_getWordSetWithJavaIoReader_withOrgApacheLuceneAnalysisUtilCharArraySet_(reader, result);
}

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getWordSetWithJavaIoReader:(JavaIoReader *)reader {
  return OrgApacheLuceneAnalysisUtilWordlistLoader_getWordSetWithJavaIoReader_(reader);
}

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getWordSetWithJavaIoReader:(JavaIoReader *)reader
                                                           withNSString:(NSString *)comment {
  return OrgApacheLuceneAnalysisUtilWordlistLoader_getWordSetWithJavaIoReader_withNSString_(reader, comment);
}

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getWordSetWithJavaIoReader:(JavaIoReader *)reader
                                                           withNSString:(NSString *)comment
                            withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)result {
  return OrgApacheLuceneAnalysisUtilWordlistLoader_getWordSetWithJavaIoReader_withNSString_withOrgApacheLuceneAnalysisUtilCharArraySet_(reader, comment, result);
}

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getSnowballWordSetWithJavaIoReader:(JavaIoReader *)reader
                                    withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)result {
  return OrgApacheLuceneAnalysisUtilWordlistLoader_getSnowballWordSetWithJavaIoReader_withOrgApacheLuceneAnalysisUtilCharArraySet_(reader, result);
}

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getSnowballWordSetWithJavaIoReader:(JavaIoReader *)reader {
  return OrgApacheLuceneAnalysisUtilWordlistLoader_getSnowballWordSetWithJavaIoReader_(reader);
}

+ (OrgApacheLuceneAnalysisUtilCharArrayMap *)getStemDictWithJavaIoReader:(JavaIoReader *)reader
                             withOrgApacheLuceneAnalysisUtilCharArrayMap:(OrgApacheLuceneAnalysisUtilCharArrayMap *)result {
  return OrgApacheLuceneAnalysisUtilWordlistLoader_getStemDictWithJavaIoReader_withOrgApacheLuceneAnalysisUtilCharArrayMap_(reader, result);
}

+ (id<JavaUtilList>)getLinesWithJavaIoInputStream:(JavaIoInputStream *)stream
                        withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset {
  return OrgApacheLuceneAnalysisUtilWordlistLoader_getLinesWithJavaIoInputStream_withJavaNioCharsetCharset_(stream, charset);
}

+ (JavaIoBufferedReader *)getBufferedReaderWithJavaIoReader:(JavaIoReader *)reader {
  return OrgApacheLuceneAnalysisUtilWordlistLoader_getBufferedReaderWithJavaIoReader_(reader);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "WordlistLoader", NULL, 0x2, NULL, NULL },
    { "getWordSetWithJavaIoReader:withOrgApacheLuceneAnalysisUtilCharArraySet:", "getWordSet", "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x9, "Ljava.io.IOException;", NULL },
    { "getWordSetWithJavaIoReader:", "getWordSet", "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x9, "Ljava.io.IOException;", NULL },
    { "getWordSetWithJavaIoReader:withNSString:", "getWordSet", "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x9, "Ljava.io.IOException;", NULL },
    { "getWordSetWithJavaIoReader:withNSString:withOrgApacheLuceneAnalysisUtilCharArraySet:", "getWordSet", "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x9, "Ljava.io.IOException;", NULL },
    { "getSnowballWordSetWithJavaIoReader:withOrgApacheLuceneAnalysisUtilCharArraySet:", "getSnowballWordSet", "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x9, "Ljava.io.IOException;", NULL },
    { "getSnowballWordSetWithJavaIoReader:", "getSnowballWordSet", "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x9, "Ljava.io.IOException;", NULL },
    { "getStemDictWithJavaIoReader:withOrgApacheLuceneAnalysisUtilCharArrayMap:", "getStemDict", "Lorg.apache.lucene.analysis.util.CharArrayMap;", 0x9, "Ljava.io.IOException;", "(Ljava/io/Reader;Lorg/apache/lucene/analysis/util/CharArrayMap<Ljava/lang/String;>;)Lorg/apache/lucene/analysis/util/CharArrayMap<Ljava/lang/String;>;" },
    { "getLinesWithJavaIoInputStream:withJavaNioCharsetCharset:", "getLines", "Ljava.util.List;", 0x9, "Ljava.io.IOException;", "(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List<Ljava/lang/String;>;" },
    { "getBufferedReaderWithJavaIoReader:", "getBufferedReader", "Ljava.io.BufferedReader;", 0xa, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "INITIAL_CAPACITY", "INITIAL_CAPACITY", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisUtilWordlistLoader_INITIAL_CAPACITY },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisUtilWordlistLoader = { 2, "WordlistLoader", "org.apache.lucene.analysis.util", NULL, 0x1, 10, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisUtilWordlistLoader;
}

@end

void OrgApacheLuceneAnalysisUtilWordlistLoader_init(OrgApacheLuceneAnalysisUtilWordlistLoader *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisUtilWordlistLoader *new_OrgApacheLuceneAnalysisUtilWordlistLoader_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisUtilWordlistLoader, init)
}

OrgApacheLuceneAnalysisUtilWordlistLoader *create_OrgApacheLuceneAnalysisUtilWordlistLoader_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisUtilWordlistLoader, init)
}

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisUtilWordlistLoader_getWordSetWithJavaIoReader_withOrgApacheLuceneAnalysisUtilCharArraySet_(JavaIoReader *reader, OrgApacheLuceneAnalysisUtilCharArraySet *result) {
  OrgApacheLuceneAnalysisUtilWordlistLoader_initialize();
  JavaIoBufferedReader *br = nil;
  @try {
    br = OrgApacheLuceneAnalysisUtilWordlistLoader_getBufferedReaderWithJavaIoReader_(reader);
    NSString *word = nil;
    while ((word = [((JavaIoBufferedReader *) nil_chk(br)) readLine]) != nil) {
      [((OrgApacheLuceneAnalysisUtilCharArraySet *) nil_chk(result)) addWithNSString:[((NSString *) nil_chk(word)) trim]];
    }
  }
  @finally {
    OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ br } count:1 type:JavaIoCloseable_class_()]);
  }
  return result;
}

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisUtilWordlistLoader_getWordSetWithJavaIoReader_(JavaIoReader *reader) {
  OrgApacheLuceneAnalysisUtilWordlistLoader_initialize();
  return OrgApacheLuceneAnalysisUtilWordlistLoader_getWordSetWithJavaIoReader_withOrgApacheLuceneAnalysisUtilCharArraySet_(reader, create_OrgApacheLuceneAnalysisUtilCharArraySet_initWithInt_withBoolean_(OrgApacheLuceneAnalysisUtilWordlistLoader_INITIAL_CAPACITY, false));
}

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisUtilWordlistLoader_getWordSetWithJavaIoReader_withNSString_(JavaIoReader *reader, NSString *comment) {
  OrgApacheLuceneAnalysisUtilWordlistLoader_initialize();
  return OrgApacheLuceneAnalysisUtilWordlistLoader_getWordSetWithJavaIoReader_withNSString_withOrgApacheLuceneAnalysisUtilCharArraySet_(reader, comment, create_OrgApacheLuceneAnalysisUtilCharArraySet_initWithInt_withBoolean_(OrgApacheLuceneAnalysisUtilWordlistLoader_INITIAL_CAPACITY, false));
}

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisUtilWordlistLoader_getWordSetWithJavaIoReader_withNSString_withOrgApacheLuceneAnalysisUtilCharArraySet_(JavaIoReader *reader, NSString *comment, OrgApacheLuceneAnalysisUtilCharArraySet *result) {
  OrgApacheLuceneAnalysisUtilWordlistLoader_initialize();
  JavaIoBufferedReader *br = nil;
  @try {
    br = OrgApacheLuceneAnalysisUtilWordlistLoader_getBufferedReaderWithJavaIoReader_(reader);
    NSString *word = nil;
    while ((word = [((JavaIoBufferedReader *) nil_chk(br)) readLine]) != nil) {
      if ([((NSString *) nil_chk(word)) hasPrefix:comment] == false) {
        [((OrgApacheLuceneAnalysisUtilCharArraySet *) nil_chk(result)) addWithNSString:[word trim]];
      }
    }
  }
  @finally {
    OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ br } count:1 type:JavaIoCloseable_class_()]);
  }
  return result;
}

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisUtilWordlistLoader_getSnowballWordSetWithJavaIoReader_withOrgApacheLuceneAnalysisUtilCharArraySet_(JavaIoReader *reader, OrgApacheLuceneAnalysisUtilCharArraySet *result) {
  OrgApacheLuceneAnalysisUtilWordlistLoader_initialize();
  JavaIoBufferedReader *br = nil;
  @try {
    br = OrgApacheLuceneAnalysisUtilWordlistLoader_getBufferedReaderWithJavaIoReader_(reader);
    NSString *line = nil;
    while ((line = [((JavaIoBufferedReader *) nil_chk(br)) readLine]) != nil) {
      jint comment = [((NSString *) nil_chk(line)) indexOf:'|'];
      if (comment >= 0) line = [line substring:0 endIndex:comment];
      IOSObjectArray *words = [((NSString *) nil_chk(line)) split:@"\\s+"];
      for (jint i = 0; i < ((IOSObjectArray *) nil_chk(words))->size_; i++) if (((jint) [((NSString *) nil_chk(IOSObjectArray_Get(words, i))) length]) > 0) [((OrgApacheLuceneAnalysisUtilCharArraySet *) nil_chk(result)) addWithNSString:IOSObjectArray_Get(words, i)];
    }
  }
  @finally {
    OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ br } count:1 type:JavaIoCloseable_class_()]);
  }
  return result;
}

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisUtilWordlistLoader_getSnowballWordSetWithJavaIoReader_(JavaIoReader *reader) {
  OrgApacheLuceneAnalysisUtilWordlistLoader_initialize();
  return OrgApacheLuceneAnalysisUtilWordlistLoader_getSnowballWordSetWithJavaIoReader_withOrgApacheLuceneAnalysisUtilCharArraySet_(reader, create_OrgApacheLuceneAnalysisUtilCharArraySet_initWithInt_withBoolean_(OrgApacheLuceneAnalysisUtilWordlistLoader_INITIAL_CAPACITY, false));
}

OrgApacheLuceneAnalysisUtilCharArrayMap *OrgApacheLuceneAnalysisUtilWordlistLoader_getStemDictWithJavaIoReader_withOrgApacheLuceneAnalysisUtilCharArrayMap_(JavaIoReader *reader, OrgApacheLuceneAnalysisUtilCharArrayMap *result) {
  OrgApacheLuceneAnalysisUtilWordlistLoader_initialize();
  JavaIoBufferedReader *br = nil;
  @try {
    br = OrgApacheLuceneAnalysisUtilWordlistLoader_getBufferedReaderWithJavaIoReader_(reader);
    NSString *line;
    while ((line = [((JavaIoBufferedReader *) nil_chk(br)) readLine]) != nil) {
      IOSObjectArray *wordstem = [((NSString *) nil_chk(line)) split:@"\t" limit:2];
      [((OrgApacheLuceneAnalysisUtilCharArrayMap *) nil_chk(result)) putWithNSString:IOSObjectArray_Get(nil_chk(wordstem), 0) withId:IOSObjectArray_Get(wordstem, 1)];
    }
  }
  @finally {
    OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ br } count:1 type:JavaIoCloseable_class_()]);
  }
  return result;
}

id<JavaUtilList> OrgApacheLuceneAnalysisUtilWordlistLoader_getLinesWithJavaIoInputStream_withJavaNioCharsetCharset_(JavaIoInputStream *stream, JavaNioCharsetCharset *charset) {
  OrgApacheLuceneAnalysisUtilWordlistLoader_initialize();
  JavaIoBufferedReader *input = nil;
  JavaUtilArrayList *lines;
  jboolean success = false;
  @try {
    input = OrgApacheLuceneAnalysisUtilWordlistLoader_getBufferedReaderWithJavaIoReader_(OrgApacheLuceneUtilIOUtils_getDecodingReaderWithJavaIoInputStream_withJavaNioCharsetCharset_(stream, charset));
    lines = create_JavaUtilArrayList_init();
    for (NSString *word = nil; (word = [((JavaIoBufferedReader *) nil_chk(input)) readLine]) != nil; ) {
      if ([lines isEmpty] && ((jint) [((NSString *) nil_chk(word)) length]) > 0 && [word charAtWithInt:0] == 0xfeff) word = [((NSString *) nil_chk(word)) substring:1];
      if ([((NSString *) nil_chk(word)) hasPrefix:@"#"]) continue;
      word = [word trim];
      if (((jint) [((NSString *) nil_chk(word)) length]) == 0) continue;
      [lines addWithId:word];
    }
    success = true;
    return lines;
  }
  @finally {
    if (success) {
      OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ input } count:1 type:JavaIoCloseable_class_()]);
    }
    else {
      OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ input } count:1 type:JavaIoCloseable_class_()]);
    }
  }
}

JavaIoBufferedReader *OrgApacheLuceneAnalysisUtilWordlistLoader_getBufferedReaderWithJavaIoReader_(JavaIoReader *reader) {
  OrgApacheLuceneAnalysisUtilWordlistLoader_initialize();
  return ([reader isKindOfClass:[JavaIoBufferedReader class]]) ? (JavaIoBufferedReader *) cast_chk(reader, [JavaIoBufferedReader class]) : create_JavaIoBufferedReader_initWithJavaIoReader_(reader);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisUtilWordlistLoader)
