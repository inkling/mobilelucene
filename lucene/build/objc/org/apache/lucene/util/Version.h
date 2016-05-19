//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/Version.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilVersion")
#ifdef RESTRICT_OrgApacheLuceneUtilVersion
#define INCLUDE_ALL_OrgApacheLuceneUtilVersion 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilVersion 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilVersion

#if !defined (OrgApacheLuceneUtilVersion_) && (INCLUDE_ALL_OrgApacheLuceneUtilVersion || defined(INCLUDE_OrgApacheLuceneUtilVersion))
#define OrgApacheLuceneUtilVersion_

@class IOSObjectArray;

/*!
 @brief Use by certain classes to match version compatibility
 across releases of Lucene.
 <p><b>WARNING</b>: When changing the version parameter
 that you supply to components in Lucene, do not simply
 change the version at search-time, but instead also adjust
 your indexing code to match, and re-index.
 */
@interface OrgApacheLuceneUtilVersion : NSObject {
 @public
  /*!
   @brief Major version, the difference between stable and trunk
   */
  jint major_;
  /*!
   @brief Minor version, incremented within the stable branch
   */
  jint minor_;
  /*!
   @brief Bugfix number, incremented on release branches
   */
  jint bugfix_;
  /*!
   @brief Prerelease version, currently 0 (alpha), 1 (beta), or 2 (final)
   */
  jint prerelease_;
}

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_0_0_ALPHA;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_0_0_BETA;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_0_0;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_1_0;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_2_0;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_2_1;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_3_0;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_3_1;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_4_0;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_5_0;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_5_1;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_6_0;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_6_1;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_7_0;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_7_1;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_7_2;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_8_0;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_8_1;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_9_0;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_9_1;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_10_0;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_10_1;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_10_2;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_10_3;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_10_4;

+ (OrgApacheLuceneUtilVersion *)LUCENE_5_0_0;

+ (OrgApacheLuceneUtilVersion *)LUCENE_5_1_0;

+ (OrgApacheLuceneUtilVersion *)LUCENE_5_2_0;

+ (OrgApacheLuceneUtilVersion *)LUCENE_5_2_1;

+ (OrgApacheLuceneUtilVersion *)LUCENE_5_3_0;

+ (OrgApacheLuceneUtilVersion *)LATEST;

+ (OrgApacheLuceneUtilVersion *)LUCENE_CURRENT;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_0;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_1;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_2;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_3;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_4;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_5;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_6;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_7;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_8;

+ (OrgApacheLuceneUtilVersion *)LUCENE_4_9;

#pragma mark Public

- (jboolean)isEqual:(id)o;

/*!
 @brief Returns a new version based on raw numbers
  
 */
+ (OrgApacheLuceneUtilVersion *)fromBitsWithInt:(jint)major
                                        withInt:(jint)minor
                                        withInt:(jint)bugfix;

- (NSUInteger)hash;

/*!
 @brief Returns true if this version is the same or after the version from the argument.
 */
- (jboolean)onOrAfterWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)other;

/*!
 @brief Parse a version number of the form <code>"major.minor.bugfix.prerelease"</code>.
 Part <code>".bugfix"</code> and part <code>".prerelease"</code> are optional.
 Note that this is forwards compatible: the parsed version does not have to exist as
 a constant.
 */
+ (OrgApacheLuceneUtilVersion *)parseWithNSString:(NSString *)version_;

/*!
 @brief Parse the given version number as a constant or dot based version.
 <p>This method allows to use <code>"LUCENE_X_Y"</code> constant names,
 or version numbers in the format <code>"x.y.z"</code>.
 */
+ (OrgApacheLuceneUtilVersion *)parseLenientlyWithNSString:(NSString *)version_;

- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilVersion)

/*!
 @brief Match settings and bugs in Lucene's 4.0.0-ALPHA release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_0_0_ALPHA();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_0_0_ALPHA;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_0_0_ALPHA, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.0.0-BETA release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_0_0_BETA();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_0_0_BETA;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_0_0_BETA, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.0.0 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_0_0();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_0_0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_0_0, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.1.0 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_1_0();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_1_0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_1_0, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.2.0 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_2_0();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_2_0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_2_0, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.2.1 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_2_1();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_2_1;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_2_1, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.3.0 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_3_0();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_3_0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_3_0, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.3.1 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_3_1();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_3_1;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_3_1, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.4.0 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_4_0();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_4_0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_4_0, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.5.0 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_5_0();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_5_0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_5_0, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.5.1 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_5_1();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_5_1;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_5_1, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.6.0 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_6_0();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_6_0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_6_0, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.6.1 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_6_1();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_6_1;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_6_1, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.7.0 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_7_0();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_7_0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_7_0, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.7.1 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_7_1();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_7_1;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_7_1, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.7.2 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_7_2();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_7_2;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_7_2, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.8.0 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_8_0();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_8_0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_8_0, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.8.1 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_8_1();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_8_1;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_8_1, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.9.0 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_9_0();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_9_0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_9_0, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.9.1 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_9_1();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_9_1;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_9_1, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.10.0 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_10_0();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_10_0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_10_0, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.10.1 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_10_1();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_10_1;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_10_1, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.10.2 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_10_2();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_10_2;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_10_2, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.10.3 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_10_3();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_10_3;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_10_3, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 4.10.4 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_10_4();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_10_4;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_10_4, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 5.0 release.
 <p>
 Use this to get the latest &amp; greatest settings, bug
 fixes, etc, for Lucene.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_5_0_0();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_5_0_0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_5_0_0, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 5.1.0 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_5_1_0();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_5_1_0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_5_1_0, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 5.2.0 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_5_2_0();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_5_2_0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_5_2_0, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 5.2.1 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_5_2_1();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_5_2_1;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_5_2_1, OrgApacheLuceneUtilVersion *)

/*!
 @brief Match settings and bugs in Lucene's 5.3.0 release.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_5_3_0();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_5_3_0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_5_3_0, OrgApacheLuceneUtilVersion *)

/*!
 @brief <p><b>WARNING</b>: if you use this setting, and then
 upgrade to a newer release of Lucene, sizable changes
 may happen.
 If backwards compatibility is important
 then you should instead explicitly specify an actual
 version.
 <p>
 If you use this constant then you  may need to 
 <b>re-index all of your documents</b> when upgrading
 Lucene, as the way text is indexed may have changed. 
 Additionally, you may need to <b>re-test your entire
 application</b> to ensure it behaves as expected, as 
 some defaults may have changed and may break functionality 
 in your application.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LATEST();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LATEST;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LATEST, OrgApacheLuceneUtilVersion *)

/*!
 @brief Constant for backwards compatibility.
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_CURRENT();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_CURRENT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_CURRENT, OrgApacheLuceneUtilVersion *)

/*!
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_0();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_0, OrgApacheLuceneUtilVersion *)

/*!
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_1();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_1;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_1, OrgApacheLuceneUtilVersion *)

/*!
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_2();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_2;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_2, OrgApacheLuceneUtilVersion *)

/*!
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_3();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_3;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_3, OrgApacheLuceneUtilVersion *)

/*!
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_4();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_4;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_4, OrgApacheLuceneUtilVersion *)

/*!
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_5();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_5;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_5, OrgApacheLuceneUtilVersion *)

/*!
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_6();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_6;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_6, OrgApacheLuceneUtilVersion *)

/*!
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_7();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_7;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_7, OrgApacheLuceneUtilVersion *)

/*!
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_8();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_8;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_8, OrgApacheLuceneUtilVersion *)

/*!
 */
inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_4_9();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_LUCENE_4_9;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilVersion, LUCENE_4_9, OrgApacheLuceneUtilVersion *)

FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_parseWithNSString_(NSString *version_);

FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_parseLenientlyWithNSString_(NSString *version_);

FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_fromBitsWithInt_withInt_withInt_(jint major, jint minor, jint bugfix);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilVersion)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilVersion")
