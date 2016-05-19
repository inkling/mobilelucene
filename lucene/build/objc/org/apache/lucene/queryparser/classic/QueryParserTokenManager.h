//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/classic/QueryParserTokenManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserClassicQueryParserTokenManager")
#ifdef RESTRICT_OrgApacheLuceneQueryparserClassicQueryParserTokenManager
#define INCLUDE_ALL_OrgApacheLuceneQueryparserClassicQueryParserTokenManager 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserClassicQueryParserTokenManager 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserClassicQueryParserTokenManager

#if !defined (OrgApacheLuceneQueryparserClassicQueryParserTokenManager_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserClassicQueryParserTokenManager || defined(INCLUDE_OrgApacheLuceneQueryparserClassicQueryParserTokenManager))
#define OrgApacheLuceneQueryparserClassicQueryParserTokenManager_

#define RESTRICT_OrgApacheLuceneQueryparserClassicQueryParserConstants 1
#define INCLUDE_OrgApacheLuceneQueryparserClassicQueryParserConstants 1
#include "org/apache/lucene/queryparser/classic/QueryParserConstants.h"

@class IOSIntArray;
@class IOSLongArray;
@class IOSObjectArray;
@class OrgApacheLuceneQueryparserClassicToken;
@protocol OrgApacheLuceneQueryparserClassicCharStream;

/*!
 @brief Token Manager.
 */
@interface OrgApacheLuceneQueryparserClassicQueryParserTokenManager : NSObject < OrgApacheLuceneQueryparserClassicQueryParserConstants > {
 @public
  id<OrgApacheLuceneQueryparserClassicCharStream> input_stream_;
  jchar curChar_;
  jint curLexState_;
  jint defaultLexState_;
  jint jjnewStateCnt_;
  jint jjround_;
  jint jjmatchedPos_;
  jint jjmatchedKind_;
}

+ (IOSLongArray *)jjbitVec0;

+ (IOSLongArray *)jjbitVec1;

+ (IOSLongArray *)jjbitVec3;

+ (IOSLongArray *)jjbitVec4;

+ (IOSIntArray *)jjnextStates;

+ (IOSObjectArray *)jjstrLiteralImages;

+ (IOSObjectArray *)lexStateNames;

+ (IOSIntArray *)jjnewLexState;

+ (IOSLongArray *)jjtoToken;

+ (IOSLongArray *)jjtoSkip;

#pragma mark Public

/*!
 @brief Constructor.
 */
- (instancetype)initWithOrgApacheLuceneQueryparserClassicCharStream:(id<OrgApacheLuceneQueryparserClassicCharStream>)stream;

/*!
 @brief Constructor.
 */
- (instancetype)initWithOrgApacheLuceneQueryparserClassicCharStream:(id<OrgApacheLuceneQueryparserClassicCharStream>)stream
                                                            withInt:(jint)lexState;

/*!
 @brief Get the next Token.
 */
- (OrgApacheLuceneQueryparserClassicToken *)getNextToken;

/*!
 @brief Reinitialise parser.
 */
- (void)ReInitWithOrgApacheLuceneQueryparserClassicCharStream:(id<OrgApacheLuceneQueryparserClassicCharStream>)stream;

/*!
 @brief Reinitialise parser.
 */
- (void)ReInitWithOrgApacheLuceneQueryparserClassicCharStream:(id<OrgApacheLuceneQueryparserClassicCharStream>)stream
                                                      withInt:(jint)lexState;

/*!
 @brief Switch to specified lex state.
 */
- (void)SwitchToWithInt:(jint)lexState;

#pragma mark Protected

- (OrgApacheLuceneQueryparserClassicToken *)jjFillToken;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneQueryparserClassicQueryParserTokenManager)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, input_stream_, id<OrgApacheLuceneQueryparserClassicCharStream>)

inline IOSLongArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_get_jjbitVec0();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_jjbitVec0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, jjbitVec0, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_get_jjbitVec1();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_jjbitVec1;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, jjbitVec1, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_get_jjbitVec3();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_jjbitVec3;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, jjbitVec3, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_get_jjbitVec4();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_jjbitVec4;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, jjbitVec4, IOSLongArray *)

inline IOSIntArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_get_jjnextStates();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSIntArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_jjnextStates;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, jjnextStates, IOSIntArray *)

/*!
 @brief Token literal values.
 */
inline IOSObjectArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_get_jjstrLiteralImages();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_jjstrLiteralImages;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, jjstrLiteralImages, IOSObjectArray *)

/*!
 @brief Lexer state names.
 */
inline IOSObjectArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_get_lexStateNames();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_lexStateNames;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, lexStateNames, IOSObjectArray *)

/*!
 @brief Lex State array.
 */
inline IOSIntArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_get_jjnewLexState();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSIntArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_jjnewLexState;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, jjnewLexState, IOSIntArray *)

inline IOSLongArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_get_jjtoToken();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_jjtoToken;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, jjtoToken, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_get_jjtoSkip();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneQueryparserClassicQueryParserTokenManager_jjtoSkip;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserClassicQueryParserTokenManager, jjtoSkip, IOSLongArray *)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserClassicQueryParserTokenManager_initWithOrgApacheLuceneQueryparserClassicCharStream_(OrgApacheLuceneQueryparserClassicQueryParserTokenManager *self, id<OrgApacheLuceneQueryparserClassicCharStream> stream);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserClassicQueryParserTokenManager *new_OrgApacheLuceneQueryparserClassicQueryParserTokenManager_initWithOrgApacheLuceneQueryparserClassicCharStream_(id<OrgApacheLuceneQueryparserClassicCharStream> stream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserClassicQueryParserTokenManager *create_OrgApacheLuceneQueryparserClassicQueryParserTokenManager_initWithOrgApacheLuceneQueryparserClassicCharStream_(id<OrgApacheLuceneQueryparserClassicCharStream> stream);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserClassicQueryParserTokenManager_initWithOrgApacheLuceneQueryparserClassicCharStream_withInt_(OrgApacheLuceneQueryparserClassicQueryParserTokenManager *self, id<OrgApacheLuceneQueryparserClassicCharStream> stream, jint lexState);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserClassicQueryParserTokenManager *new_OrgApacheLuceneQueryparserClassicQueryParserTokenManager_initWithOrgApacheLuceneQueryparserClassicCharStream_withInt_(id<OrgApacheLuceneQueryparserClassicCharStream> stream, jint lexState) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserClassicQueryParserTokenManager *create_OrgApacheLuceneQueryparserClassicQueryParserTokenManager_initWithOrgApacheLuceneQueryparserClassicCharStream_withInt_(id<OrgApacheLuceneQueryparserClassicCharStream> stream, jint lexState);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserClassicQueryParserTokenManager)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserClassicQueryParserTokenManager")
