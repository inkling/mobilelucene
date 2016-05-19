//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/ASCIIFoldingFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter

#if !defined (OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter || defined(INCLUDE_OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter))
#define OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class IOSCharArray;
@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief This class converts alphabetic, numeric, and symbolic Unicode characters
 which are not in the first 127 ASCII characters (the "Basic Latin" Unicode
 block) into their ASCII equivalents, if one exists.
 Characters from the following Unicode blocks are converted; however, only
 those characters with reasonable ASCII alternatives are converted:
 <ul>
 <li>C1 Controls and Latin-1 Supplement: <a href="http://www.unicode.org/charts/PDF/U0080.pdf">http://www.unicode.org/charts/PDF/U0080.pdf</a>
 <li>Latin Extended-A: <a href="http://www.unicode.org/charts/PDF/U0100.pdf">http://www.unicode.org/charts/PDF/U0100.pdf</a>
 <li>Latin Extended-B: <a href="http://www.unicode.org/charts/PDF/U0180.pdf">http://www.unicode.org/charts/PDF/U0180.pdf</a>
 <li>Latin Extended Additional: <a href="http://www.unicode.org/charts/PDF/U1E00.pdf">http://www.unicode.org/charts/PDF/U1E00.pdf</a>
 <li>Latin Extended-C: <a href="http://www.unicode.org/charts/PDF/U2C60.pdf">http://www.unicode.org/charts/PDF/U2C60.pdf</a>
 <li>Latin Extended-D: <a href="http://www.unicode.org/charts/PDF/UA720.pdf">http://www.unicode.org/charts/PDF/UA720.pdf</a>
 <li>IPA Extensions: <a href="http://www.unicode.org/charts/PDF/U0250.pdf">http://www.unicode.org/charts/PDF/U0250.pdf</a>
 <li>Phonetic Extensions: <a href="http://www.unicode.org/charts/PDF/U1D00.pdf">http://www.unicode.org/charts/PDF/U1D00.pdf</a>
 <li>Phonetic Extensions Supplement: <a href="http://www.unicode.org/charts/PDF/U1D80.pdf">http://www.unicode.org/charts/PDF/U1D80.pdf</a>
 <li>General Punctuation: <a href="http://www.unicode.org/charts/PDF/U2000.pdf">http://www.unicode.org/charts/PDF/U2000.pdf</a>
 <li>Superscripts and Subscripts: <a href="http://www.unicode.org/charts/PDF/U2070.pdf">http://www.unicode.org/charts/PDF/U2070.pdf</a>
 <li>Enclosed Alphanumerics: <a href="http://www.unicode.org/charts/PDF/U2460.pdf">http://www.unicode.org/charts/PDF/U2460.pdf</a>
 <li>Dingbats: <a href="http://www.unicode.org/charts/PDF/U2700.pdf">http://www.unicode.org/charts/PDF/U2700.pdf</a>
 <li>Supplemental Punctuation: <a href="http://www.unicode.org/charts/PDF/U2E00.pdf">http://www.unicode.org/charts/PDF/U2E00.pdf</a>
 <li>Alphabetic Presentation Forms: <a href="http://www.unicode.org/charts/PDF/UFB00.pdf">http://www.unicode.org/charts/PDF/UFB00.pdf</a>
 <li>Halfwidth and Fullwidth Forms: <a href="http://www.unicode.org/charts/PDF/UFF00.pdf">http://www.unicode.org/charts/PDF/UFF00.pdf</a>
 </ul>
 See: <a href="http://en.wikipedia.org/wiki/Latin_characters_in_Unicode">http://en.wikipedia.org/wiki/Latin_characters_in_Unicode</a>
 For example, '&agrave;' will be replaced by 'a'.
 */
@interface OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

/*!
 @brief Create a new <code>ASCIIFoldingFilter</code>.
 @param input
 TokenStream to filter
 @param preserveOriginal
 should the original tokens be kept on the input stream with a 0 position increment
 from the folded tokens?
 */
- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                               withBoolean:(jboolean)preserveOriginal;

/*!
 @brief Converts characters above ASCII to their ASCII equivalents.
 For example,
 accents are removed from accented characters.
 @param input The string to fold
 @param length The number of characters in the input string
 */
- (void)foldToASCIIWithCharArray:(IOSCharArray *)input
                         withInt:(jint)length;

/*!
 @brief Converts characters above ASCII to their ASCII equivalents.
 For example,
 accents are removed from accented characters.
 @param input     The characters to fold
 @param inputPos  Index of the first character to fold
 @param output    The result of the folding. Should be of size &gt;= <code>length * 4</code>.
 @param outputPos Index of output where to put the result of the folding
 @param length    The number of characters to fold
 @return length of output
 */
+ (jint)foldToASCIIWithCharArray:(IOSCharArray *)input
                         withInt:(jint)inputPos
                   withCharArray:(IOSCharArray *)output
                         withInt:(jint)outputPos
                         withInt:(jint)length;

- (jboolean)incrementToken;

/*!
 @brief Does the filter preserve the original tokens?
 */
- (jboolean)isPreserveOriginal;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter *new_OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter *create_OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_(OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter *self, OrgApacheLuceneAnalysisTokenStream *input, jboolean preserveOriginal);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter *new_OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_(OrgApacheLuceneAnalysisTokenStream *input, jboolean preserveOriginal) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter *create_OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_(OrgApacheLuceneAnalysisTokenStream *input, jboolean preserveOriginal);

FOUNDATION_EXPORT jint OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter_foldToASCIIWithCharArray_withInt_withCharArray_withInt_withInt_(IOSCharArray *input, jint inputPos, IOSCharArray *output, jint outputPos, jint length);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter")
