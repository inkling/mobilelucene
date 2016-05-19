//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/spell/NGramDistance.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/search/spell/NGramDistance.h"

@interface OrgApacheLuceneSearchSpellNGramDistance () {
 @public
  jint n_;
}

@end

@implementation OrgApacheLuceneSearchSpellNGramDistance

- (instancetype)initWithInt:(jint)size {
  OrgApacheLuceneSearchSpellNGramDistance_initWithInt_(self, size);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSpellNGramDistance_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jfloat)getDistanceWithNSString:(NSString *)source
                     withNSString:(NSString *)target {
  jint sl = ((jint) [((NSString *) nil_chk(source)) length]);
  jint tl = ((jint) [((NSString *) nil_chk(target)) length]);
  if (sl == 0 || tl == 0) {
    if (sl == tl) {
      return 1;
    }
    else {
      return 0;
    }
  }
  jint cost = 0;
  if (sl < n_ || tl < n_) {
    for (jint i = 0, ni = JavaLangMath_minWithInt_withInt_(sl, tl); i < ni; i++) {
      if ([source charAtWithInt:i] == [target charAtWithInt:i]) {
        cost++;
      }
    }
    return (jfloat) cost / JavaLangMath_maxWithInt_withInt_(sl, tl);
  }
  IOSCharArray *sa = [IOSCharArray arrayWithLength:sl + n_ - 1];
  IOSFloatArray *p;
  IOSFloatArray *d;
  IOSFloatArray *_d;
  for (jint i = 0; i < sa->size_; i++) {
    if (i < n_ - 1) {
      *IOSCharArray_GetRef(sa, i) = 0;
    }
    else {
      *IOSCharArray_GetRef(sa, i) = [source charAtWithInt:i - n_ + 1];
    }
  }
  p = [IOSFloatArray arrayWithLength:sl + 1];
  d = [IOSFloatArray arrayWithLength:sl + 1];
  jint i;
  jint j;
  IOSCharArray *t_j = [IOSCharArray arrayWithLength:n_];
  for (i = 0; i <= sl; i++) {
    *IOSFloatArray_GetRef(p, i) = i;
  }
  for (j = 1; j <= tl; j++) {
    if (j < n_) {
      for (jint ti = 0; ti < n_ - j; ti++) {
        *IOSCharArray_GetRef(nil_chk(t_j), ti) = 0;
      }
      for (jint ti = n_ - j; ti < n_; ti++) {
        *IOSCharArray_GetRef(nil_chk(t_j), ti) = [target charAtWithInt:ti - (n_ - j)];
      }
    }
    else {
      t_j = [((NSString *) nil_chk([target substring:j - n_ endIndex:j])) toCharArray];
    }
    *IOSFloatArray_GetRef(d, 0) = j;
    for (i = 1; i <= sl; i++) {
      cost = 0;
      jint tn = n_;
      for (jint ni = 0; ni < n_; ni++) {
        if (IOSCharArray_Get(sa, i - 1 + ni) != IOSCharArray_Get(nil_chk(t_j), ni)) {
          cost++;
        }
        else if (IOSCharArray_Get(sa, i - 1 + ni) == 0) {
          tn--;
        }
      }
      jfloat ec = (jfloat) cost / tn;
      *IOSFloatArray_GetRef(d, i) = JavaLangMath_minWithFloat_withFloat_(JavaLangMath_minWithFloat_withFloat_(IOSFloatArray_Get(d, i - 1) + 1, IOSFloatArray_Get(p, i) + 1), IOSFloatArray_Get(p, i - 1) + ec);
    }
    _d = p;
    p = d;
    d = _d;
  }
  return 1.0f - (IOSFloatArray_Get(p, sl) / JavaLangMath_maxWithInt_withInt_(tl, sl));
}

- (NSUInteger)hash {
  return 1427 * n_ * ((jint) [[self getClass] hash]);
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return true;
  if (nil == obj || [self getClass] != (id) [obj getClass]) return false;
  OrgApacheLuceneSearchSpellNGramDistance *o = (OrgApacheLuceneSearchSpellNGramDistance *) cast_chk(obj, [OrgApacheLuceneSearchSpellNGramDistance class]);
  return o->n_ == self->n_;
}

- (NSString *)description {
  return JreStrcat("$IC", @"ngram(", n_, ')');
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "NGramDistance", NULL, 0x1, NULL, NULL },
    { "init", "NGramDistance", NULL, 0x1, NULL, NULL },
    { "getDistanceWithNSString:withNSString:", "getDistance", "F", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "n_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpellNGramDistance = { 2, "NGramDistance", "org.apache.lucene.search.spell", NULL, 0x1, 6, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSpellNGramDistance;
}

@end

void OrgApacheLuceneSearchSpellNGramDistance_initWithInt_(OrgApacheLuceneSearchSpellNGramDistance *self, jint size) {
  NSObject_init(self);
  self->n_ = size;
}

OrgApacheLuceneSearchSpellNGramDistance *new_OrgApacheLuceneSearchSpellNGramDistance_initWithInt_(jint size) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpellNGramDistance, initWithInt_, size)
}

OrgApacheLuceneSearchSpellNGramDistance *create_OrgApacheLuceneSearchSpellNGramDistance_initWithInt_(jint size) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpellNGramDistance, initWithInt_, size)
}

void OrgApacheLuceneSearchSpellNGramDistance_init(OrgApacheLuceneSearchSpellNGramDistance *self) {
  OrgApacheLuceneSearchSpellNGramDistance_initWithInt_(self, 2);
}

OrgApacheLuceneSearchSpellNGramDistance *new_OrgApacheLuceneSearchSpellNGramDistance_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpellNGramDistance, init)
}

OrgApacheLuceneSearchSpellNGramDistance *create_OrgApacheLuceneSearchSpellNGramDistance_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpellNGramDistance, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpellNGramDistance)
