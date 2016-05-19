//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/WordDelimiterFilterFactory.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Byte.h"
#include "java/lang/Character.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/SortedMap.h"
#include "java/util/TreeMap.h"
#include "java/util/regex/Matcher.h"
#include "java/util/regex/Pattern.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/Lucene47WordDelimiterFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/WordDelimiterFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/WordDelimiterFilterFactory.h"
#include "org/apache/lucene/analysis/miscellaneous/WordDelimiterIterator.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/ResourceLoader.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"
#include "org/apache/lucene/util/Version.h"

@interface OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory () {
 @public
  NSString *wordFiles_;
  NSString *types_;
  jint flags_;
  OrgApacheLuceneAnalysisUtilCharArraySet *protectedWords_;
}

- (IOSByteArray *)parseTypesWithJavaUtilList:(id<JavaUtilList>)rules;

- (JavaLangByte *)parseTypeWithNSString:(NSString *)s;

- (NSString *)parseStringWithNSString:(NSString *)s;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory, wordFiles_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory, types_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory, protectedWords_, OrgApacheLuceneAnalysisUtilCharArraySet *)

inline JavaUtilRegexPattern *OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_get_typePattern();
inline JavaUtilRegexPattern *OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_set_typePattern(JavaUtilRegexPattern *value);
static JavaUtilRegexPattern *OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_typePattern;
J2OBJC_STATIC_FIELD_OBJ(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory, typePattern, JavaUtilRegexPattern *)

__attribute__((unused)) static IOSByteArray *OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_parseTypesWithJavaUtilList_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory *self, id<JavaUtilList> rules);

__attribute__((unused)) static JavaLangByte *OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_parseTypeWithNSString_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory *self, NSString *s);

__attribute__((unused)) static NSString *OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_parseStringWithNSString_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory *self, NSString *s);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory)

NSString *OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_PROTECTED_TOKENS = @"protected";
NSString *OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_TYPES = @"types";

@implementation OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory

+ (NSString *)PROTECTED_TOKENS {
  return OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_PROTECTED_TOKENS;
}

+ (NSString *)TYPES {
  return OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_TYPES;
}

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (void)informWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader {
  if (wordFiles_ != nil) {
    JreStrongAssign(&protectedWords_, [self getWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:loader withNSString:wordFiles_ withBoolean:false]);
  }
  if (types_ != nil) {
    id<JavaUtilList> files = [self splitFileNamesWithNSString:types_];
    id<JavaUtilList> wlist = create_JavaUtilArrayList_init();
    for (NSString * __strong file in nil_chk(files)) {
      id<JavaUtilList> lines = [self getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader:loader withNSString:[((NSString *) nil_chk(file)) trim]];
      [wlist addAllWithJavaUtilCollection:lines];
    }
    JreStrongAssign(&typeTable_, OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_parseTypesWithJavaUtilList_(self, wlist));
  }
}

- (OrgApacheLuceneAnalysisTokenFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  if ([((OrgApacheLuceneUtilVersion *) nil_chk(luceneMatchVersion_)) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_8_0)]) {
    return create_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_initWithOrgApacheLuceneAnalysisTokenStream_withByteArray_withInt_withOrgApacheLuceneAnalysisUtilCharArraySet_(input, typeTable_ == nil ? JreLoadStatic(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator, DEFAULT_WORD_DELIM_TABLE) : typeTable_, flags_, protectedWords_);
  }
  else {
    return create_OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_initWithOrgApacheLuceneAnalysisTokenStream_withByteArray_withInt_withOrgApacheLuceneAnalysisUtilCharArraySet_(input, typeTable_ == nil ? JreLoadStatic(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator, DEFAULT_WORD_DELIM_TABLE) : typeTable_, flags_, protectedWords_);
  }
}

- (IOSByteArray *)parseTypesWithJavaUtilList:(id<JavaUtilList>)rules {
  return OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_parseTypesWithJavaUtilList_(self, rules);
}

- (JavaLangByte *)parseTypeWithNSString:(NSString *)s {
  return OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_parseTypeWithNSString_(self, s);
}

- (NSString *)parseStringWithNSString:(NSString *)s {
  return OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_parseStringWithNSString_(self, s);
}

- (void)dealloc {
  RELEASE_(wordFiles_);
  RELEASE_(types_);
  RELEASE_(typeTable_);
  RELEASE_(protectedWords_);
  RELEASE_(out_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory class]) {
    JreStrongAssign(&OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_typePattern, JavaUtilRegexPattern_compileWithNSString_(@"(.*)\\s*=>\\s*(.*)\\s*$"));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "WordDelimiterFilterFactory", NULL, 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "informWithOrgApacheLuceneAnalysisUtilResourceLoader:", "inform", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.TokenFilter;", 0x1, NULL, NULL },
    { "parseTypesWithJavaUtilList:", "parseTypes", "[B", 0x2, NULL, "(Ljava/util/List<Ljava/lang/String;>;)[B" },
    { "parseTypeWithNSString:", "parseType", "Ljava.lang.Byte;", 0x2, NULL, NULL },
    { "parseStringWithNSString:", "parseString", "Ljava.lang.String;", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "PROTECTED_TOKENS", "PROTECTED_TOKENS", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_PROTECTED_TOKENS, NULL, .constantValue.asLong = 0 },
    { "TYPES", "TYPES", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_TYPES, NULL, .constantValue.asLong = 0 },
    { "wordFiles_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "types_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "flags_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "typeTable_", NULL, 0x0, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "protectedWords_", NULL, 0x2, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
    { "typePattern", "typePattern", 0xa, "Ljava.util.regex.Pattern;", &OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_typePattern, NULL, .constantValue.asLong = 0 },
    { "out_", NULL, 0x0, "[C", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory = { 2, "WordDelimiterFilterFactory", "org.apache.lucene.analysis.miscellaneous", NULL, 0x1, 6, methods, 9, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  JreStrongAssign(&self->typeTable_, nil);
  JreStrongAssign(&self->protectedWords_, nil);
  JreStrongAssignAndConsume(&self->out_, [IOSCharArray newArrayWithLength:256]);
  jint flags = 0;
  if ([self getIntWithJavaUtilMap:args withNSString:@"generateWordParts" withInt:1] != 0) {
    flags |= OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_GENERATE_WORD_PARTS;
  }
  if ([self getIntWithJavaUtilMap:args withNSString:@"generateNumberParts" withInt:1] != 0) {
    flags |= OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_GENERATE_NUMBER_PARTS;
  }
  if ([self getIntWithJavaUtilMap:args withNSString:@"catenateWords" withInt:0] != 0) {
    flags |= OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_CATENATE_WORDS;
  }
  if ([self getIntWithJavaUtilMap:args withNSString:@"catenateNumbers" withInt:0] != 0) {
    flags |= OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_CATENATE_NUMBERS;
  }
  if ([self getIntWithJavaUtilMap:args withNSString:@"catenateAll" withInt:0] != 0) {
    flags |= OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_CATENATE_ALL;
  }
  if ([self getIntWithJavaUtilMap:args withNSString:@"splitOnCaseChange" withInt:1] != 0) {
    flags |= OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_SPLIT_ON_CASE_CHANGE;
  }
  if ([self getIntWithJavaUtilMap:args withNSString:@"splitOnNumerics" withInt:1] != 0) {
    flags |= OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_SPLIT_ON_NUMERICS;
  }
  if ([self getIntWithJavaUtilMap:args withNSString:@"preserveOriginal" withInt:0] != 0) {
    flags |= OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_PRESERVE_ORIGINAL;
  }
  if ([self getIntWithJavaUtilMap:args withNSString:@"stemEnglishPossessive" withInt:1] != 0) {
    flags |= OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_STEM_ENGLISH_POSSESSIVE;
  }
  JreStrongAssign(&self->wordFiles_, [self getWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_PROTECTED_TOKENS]);
  JreStrongAssign(&self->types_, [self getWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_TYPES]);
  self->flags_ = flags;
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory *create_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory, initWithJavaUtilMap_, args)
}

IOSByteArray *OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_parseTypesWithJavaUtilList_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory *self, id<JavaUtilList> rules) {
  id<JavaUtilSortedMap> typeMap = create_JavaUtilTreeMap_init();
  for (NSString * __strong rule in nil_chk(rules)) {
    JavaUtilRegexMatcher *m = [((JavaUtilRegexPattern *) nil_chk(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_typePattern)) matcherWithJavaLangCharSequence:rule];
    if (![((JavaUtilRegexMatcher *) nil_chk(m)) find]) @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$C", @"Invalid Mapping Rule : [", rule, ']'));
    NSString *lhs = OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_parseStringWithNSString_(self, [((NSString *) nil_chk([m groupWithInt:1])) trim]);
    JavaLangByte *rhs = OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_parseTypeWithNSString_(self, [((NSString *) nil_chk([m groupWithInt:2])) trim]);
    if (((jint) [((NSString *) nil_chk(lhs)) length]) != 1) @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$", @"Invalid Mapping Rule : [", rule, @"]. Only a single character is allowed."));
    if (rhs == nil) @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$", @"Invalid Mapping Rule : [", rule, @"]. Illegal type."));
    [typeMap putWithId:JavaLangCharacter_valueOfWithChar_([lhs charAtWithInt:0]) withId:rhs];
  }
  IOSByteArray *types = [IOSByteArray arrayWithLength:JavaLangMath_maxWithInt_withInt_([((JavaLangCharacter *) nil_chk([typeMap lastKey])) charValue] + 1, ((IOSByteArray *) nil_chk(JreLoadStatic(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator, DEFAULT_WORD_DELIM_TABLE)))->size_)];
  for (jint i = 0; i < types->size_; i++) *IOSByteArray_GetRef(types, i) = OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_getTypeWithInt_(i);
  for (id<JavaUtilMap_Entry> __strong mapping in nil_chk([typeMap entrySet])) *IOSByteArray_GetRef(types, [((JavaLangCharacter *) nil_chk([((id<JavaUtilMap_Entry>) nil_chk(mapping)) getKey])) charValue]) = [((JavaLangByte *) nil_chk([mapping getValue])) charValue];
  return types;
}

JavaLangByte *OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_parseTypeWithNSString_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory *self, NSString *s) {
  if ([((NSString *) nil_chk(s)) isEqual:@"LOWER"]) return JavaLangInteger_valueOfWithInt_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_LOWER);
  else if ([s isEqual:@"UPPER"]) return JavaLangInteger_valueOfWithInt_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_UPPER);
  else if ([s isEqual:@"ALPHA"]) return JavaLangInteger_valueOfWithInt_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_ALPHA);
  else if ([s isEqual:@"DIGIT"]) return JavaLangInteger_valueOfWithInt_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_DIGIT);
  else if ([s isEqual:@"ALPHANUM"]) return JavaLangInteger_valueOfWithInt_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_ALPHANUM);
  else if ([s isEqual:@"SUBWORD_DELIM"]) return JavaLangInteger_valueOfWithInt_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_SUBWORD_DELIM);
  else return nil;
}

NSString *OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_parseStringWithNSString_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory *self, NSString *s) {
  jint readPos = 0;
  jint len = ((jint) [((NSString *) nil_chk(s)) length]);
  jint writePos = 0;
  while (readPos < len) {
    jchar c = [s charAtWithInt:readPos++];
    if (c == '\\') {
      if (readPos >= len) @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$C", @"Invalid escaped char in [", s, ']'));
      c = [s charAtWithInt:readPos++];
      switch (c) {
        case '\\':
        c = '\\';
        break;
        case 'n':
        c = 0x000a;
        break;
        case 't':
        c = 0x0009;
        break;
        case 'r':
        c = 0x000d;
        break;
        case 'b':
        c = 0x0008;
        break;
        case 'f':
        c = 0x000c;
        break;
        case 'u':
        if (readPos + 3 >= len) @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$C", @"Invalid escaped char in [", s, ']'));
        c = (jchar) JavaLangInteger_parseIntWithNSString_withInt_([s substring:readPos endIndex:readPos + 4], 16);
        readPos += 4;
        break;
      }
    }
    *IOSCharArray_GetRef(nil_chk(self->out_), writePos++) = c;
  }
  return [NSString stringWithCharacters:self->out_ offset:0 length:writePos];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory)
