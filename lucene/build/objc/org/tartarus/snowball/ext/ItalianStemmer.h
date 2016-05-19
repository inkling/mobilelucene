//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/tartarus/snowball/ext/ItalianStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgTartarusSnowballExtItalianStemmer")
#ifdef RESTRICT_OrgTartarusSnowballExtItalianStemmer
#define INCLUDE_ALL_OrgTartarusSnowballExtItalianStemmer 0
#else
#define INCLUDE_ALL_OrgTartarusSnowballExtItalianStemmer 1
#endif
#undef RESTRICT_OrgTartarusSnowballExtItalianStemmer

#if !defined (OrgTartarusSnowballExtItalianStemmer_) && (INCLUDE_ALL_OrgTartarusSnowballExtItalianStemmer || defined(INCLUDE_OrgTartarusSnowballExtItalianStemmer))
#define OrgTartarusSnowballExtItalianStemmer_

#define RESTRICT_OrgTartarusSnowballSnowballProgram 1
#define INCLUDE_OrgTartarusSnowballSnowballProgram 1
#include "org/tartarus/snowball/SnowballProgram.h"

/*!
 @brief This class was automatically generated by a Snowball to Java compiler 
 It implements the stemming algorithm defined by a snowball script.
 */
@interface OrgTartarusSnowballExtItalianStemmer : OrgTartarusSnowballSnowballProgram

#pragma mark Public

- (instancetype)init;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (jboolean)stem;

@end

J2OBJC_STATIC_INIT(OrgTartarusSnowballExtItalianStemmer)

FOUNDATION_EXPORT void OrgTartarusSnowballExtItalianStemmer_init(OrgTartarusSnowballExtItalianStemmer *self);

FOUNDATION_EXPORT OrgTartarusSnowballExtItalianStemmer *new_OrgTartarusSnowballExtItalianStemmer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgTartarusSnowballExtItalianStemmer *create_OrgTartarusSnowballExtItalianStemmer_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgTartarusSnowballExtItalianStemmer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgTartarusSnowballExtItalianStemmer")
