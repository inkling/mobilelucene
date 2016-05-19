//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/TermState.java
//

#include "J2ObjC_source.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/RuntimeException.h"
#include "org/apache/lucene/index/TermState.h"

@implementation OrgApacheLuceneIndexTermState

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexTermState_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)copyFromWithOrgApacheLuceneIndexTermState:(OrgApacheLuceneIndexTermState *)other {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneIndexTermState *)clone {
  @try {
    return (OrgApacheLuceneIndexTermState *) cast_chk([super clone], [OrgApacheLuceneIndexTermState class]);
  }
  @catch (JavaLangCloneNotSupportedException *cnse) {
    @throw create_JavaLangRuntimeException_initWithNSException_(cnse);
  }
}

- (jboolean)isRealTerm {
  return true;
}

- (NSString *)description {
  return @"TermState";
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "TermState", NULL, 0x4, NULL, NULL },
    { "copyFromWithOrgApacheLuceneIndexTermState:", "copyFrom", "V", 0x401, NULL, NULL },
    { "clone", NULL, "Lorg.apache.lucene.index.TermState;", 0x1, NULL, NULL },
    { "isRealTerm", NULL, "Z", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexTermState = { 2, "TermState", "org.apache.lucene.index", NULL, 0x401, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexTermState;
}

@end

void OrgApacheLuceneIndexTermState_init(OrgApacheLuceneIndexTermState *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexTermState)
