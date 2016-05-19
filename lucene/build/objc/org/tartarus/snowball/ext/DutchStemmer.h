//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/tartarus/snowball/ext/DutchStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgTartarusSnowballExtDutchStemmer")
#ifdef RESTRICT_OrgTartarusSnowballExtDutchStemmer
#define INCLUDE_ALL_OrgTartarusSnowballExtDutchStemmer 0
#else
#define INCLUDE_ALL_OrgTartarusSnowballExtDutchStemmer 1
#endif
#undef RESTRICT_OrgTartarusSnowballExtDutchStemmer

#if !defined (OrgTartarusSnowballExtDutchStemmer_) && (INCLUDE_ALL_OrgTartarusSnowballExtDutchStemmer || defined(INCLUDE_OrgTartarusSnowballExtDutchStemmer))
#define OrgTartarusSnowballExtDutchStemmer_

#define RESTRICT_OrgTartarusSnowballSnowballProgram 1
#define INCLUDE_OrgTartarusSnowballSnowballProgram 1
#include "org/tartarus/snowball/SnowballProgram.h"

/*!
 @brief This class was automatically generated by a Snowball to Java compiler 
 It implements the stemming algorithm defined by a snowball script.
 */
@interface OrgTartarusSnowballExtDutchStemmer : OrgTartarusSnowballSnowballProgram

#pragma mark Public

- (instancetype)init;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (jboolean)stem;

@end

J2OBJC_STATIC_INIT(OrgTartarusSnowballExtDutchStemmer)

FOUNDATION_EXPORT void OrgTartarusSnowballExtDutchStemmer_init(OrgTartarusSnowballExtDutchStemmer *self);

FOUNDATION_EXPORT OrgTartarusSnowballExtDutchStemmer *new_OrgTartarusSnowballExtDutchStemmer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgTartarusSnowballExtDutchStemmer *create_OrgTartarusSnowballExtDutchStemmer_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgTartarusSnowballExtDutchStemmer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgTartarusSnowballExtDutchStemmer")
