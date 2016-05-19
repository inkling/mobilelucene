//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/TokenGroup.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchHighlightTokenGroup")
#ifdef RESTRICT_OrgApacheLuceneSearchHighlightTokenGroup
#define INCLUDE_ALL_OrgApacheLuceneSearchHighlightTokenGroup 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchHighlightTokenGroup 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchHighlightTokenGroup

#if !defined (OrgApacheLuceneSearchHighlightTokenGroup_) && (INCLUDE_ALL_OrgApacheLuceneSearchHighlightTokenGroup || defined(INCLUDE_OrgApacheLuceneSearchHighlightTokenGroup))
#define OrgApacheLuceneSearchHighlightTokenGroup_

@class OrgApacheLuceneAnalysisToken;
@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief One, or several overlapping tokens, along with the score(s) and the scope of
 the original text.
 */
@interface OrgApacheLuceneSearchHighlightTokenGroup : NSObject

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream;

/*!
 @return the latest end offset in the original text of a matching token in this group (score &gt; 0), or
 if there are none then <code>getEndOffset()</code>.
 */
- (jint)getEndOffset;

/*!
 @return the number of tokens in this group
 */
- (jint)getNumTokens;

/*!
 @param index a value between 0 and numTokens -1
 @return the "n"th score
 */
- (jfloat)getScoreWithInt:(jint)index;

/*!
 @return the earliest start offset in the original text of a matching token in this group (score &gt; 0), or
 if there are none then the earliest offset of any token in the group.
 */
- (jint)getStartOffset;

/*!
 @param index a value between 0 and numTokens -1
 @return the "n"th token
 */
- (OrgApacheLuceneAnalysisToken *)getTokenWithInt:(jint)index;

/*!
 @return all tokens' scores summed up
 */
- (jfloat)getTotalScore;

#pragma mark Package-Private

- (void)addTokenWithFloat:(jfloat)score;

- (void)clear;

- (jboolean)isDistinct;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchHighlightTokenGroup)

FOUNDATION_EXPORT void OrgApacheLuceneSearchHighlightTokenGroup_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneSearchHighlightTokenGroup *self, OrgApacheLuceneAnalysisTokenStream *tokenStream);

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightTokenGroup *new_OrgApacheLuceneSearchHighlightTokenGroup_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *tokenStream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightTokenGroup *create_OrgApacheLuceneSearchHighlightTokenGroup_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *tokenStream);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchHighlightTokenGroup)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchHighlightTokenGroup")
