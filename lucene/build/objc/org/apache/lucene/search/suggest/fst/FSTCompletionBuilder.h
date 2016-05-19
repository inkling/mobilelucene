//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/fst/FSTCompletionBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder

#if !defined (OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder || defined(INCLUDE_OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder))
#define OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder_

@class OrgApacheLuceneSearchSuggestFstFSTCompletion;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilFstFST;
@protocol OrgApacheLuceneSearchSuggestFstBytesRefSorter;

/*!
 @brief Finite state automata based implementation of "autocomplete" functionality.
 <h2>Implementation details</h2>
 <p>
 The construction step in <code>finalize()</code> works as follows:
 <ul>
 <li>A set of input terms and their buckets is given.</li>
 <li>All terms in the input are prefixed with a synthetic pseudo-character
 (code) of the weight bucket the term fell into. For example a term
 <code>abc</code> with a discretized weight equal '1' would become
 <code>1abc</code>.</li>
 <li>The terms are then sorted by their raw value of UTF-8 character values
 (including the synthetic bucket code in front).</li>
 <li>A finite state automaton (<code>FST</code>) is constructed from the input. The
 root node has arcs labeled with all possible weights. We cache all these
 arcs, highest-weight first.</li>
 </ul>
 <p>
 At runtime, in <code>FSTCompletion.lookup(CharSequence,int)</code>, 
 the automaton is utilized as follows:
 <ul>
 <li>For each possible term weight encoded in the automaton (cached arcs from
 the root above), starting with the highest one, we descend along the path of
 the input key. If the key is not a prefix of a sequence in the automaton
 (path ends prematurely), we exit immediately -- no completions.</li>
 <li>Otherwise, we have found an internal automaton node that ends the key.
 <b>The entire subautomaton (all paths) starting from this node form the key's
 completions.</b> We start the traversal of this subautomaton. Every time we
 reach a final state (arc), we add a single suggestion to the list of results
 (the weight of this suggestion is constant and equal to the root path we
 started from). The tricky part is that because automaton edges are sorted and
 we scan depth-first, we can terminate the entire procedure as soon as we
 collect enough suggestions the user requested.</li>
 <li>In case the number of suggestions collected in the step above is still
 insufficient, we proceed to the next (smaller) weight leaving the root node
 and repeat the same algorithm again.</li>
 </ul>
 <h2>Runtime behavior and performance characteristic</h2>
 The algorithm described above is optimized for finding suggestions to short
 prefixes in a top-weights-first order. This is probably the most common use
 case: it allows presenting suggestions early and sorts them by the global
 frequency (and then alphabetically).
 <p>
 If there is an exact match in the automaton, it is returned first on the
 results list (even with by-weight sorting).
 <p>
 Note that the maximum lookup time for <b>any prefix</b> is the time of
 descending to the subtree, plus traversal of the subtree up to the number of
 requested suggestions (because they are already presorted by weight on the
 root level and alphabetically at any node level).
 <p>
 To order alphabetically only (no ordering by priorities), use identical term
 weights for all terms. Alphabetical suggestions are returned even if
 non-constant weights are used, but the algorithm for doing this is
 suboptimal.
 <p>
 "alphabetically" in any of the documentation above indicates UTF-8
 representation order, nothing else.
 <p>
 <b>NOTE</b>: the FST file format is experimental and subject to suddenly
 change, requiring you to rebuild the FST suggest index.
 - seealso: FSTCompletion
 */
@interface OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder : NSObject {
 @public
  /*!
   @brief Finite state automaton encoding all the lookup terms.
   See class notes for
 details.
   */
  OrgApacheLuceneUtilFstFST *automaton_;
}

+ (jint)DEFAULT_BUCKETS;

#pragma mark Public

/*!
 @brief Creates an <code>FSTCompletion</code> with default options: 10 buckets, exact match
 promoted to first position and <code>InMemorySorter</code> with a comparator obtained from
 <code>BytesRef.getUTF8SortedAsUnicodeComparator()</code>.
 */
- (instancetype)init;

/*!
 @brief Creates an FSTCompletion with the specified options.
 @param buckets
 The number of buckets for weight discretization. Buckets are used
 in <code>add(BytesRef,int)</code> and must be smaller than the number
 given here.
 @param sorter
 <code>BytesRefSorter</code> used for re-sorting input for the automaton.
 For large inputs, use on-disk sorting implementations. The sorter
 is closed automatically in <code>build()</code> if it implements
 <code>Closeable</code>.
 @param shareMaxTailLength
 Max shared suffix sharing length.
 See the description of this parameter in <code>Builder</code>'s constructor.
 In general, for very large inputs you'll want to construct a non-minimal
 automaton which will be larger, but the construction will take far less ram.
 For minimal automata, set it to <code>Integer.MAX_VALUE</code>.
 */
- (instancetype)initWithInt:(jint)buckets
withOrgApacheLuceneSearchSuggestFstBytesRefSorter:(id<OrgApacheLuceneSearchSuggestFstBytesRefSorter>)sorter
                    withInt:(jint)shareMaxTailLength;

/*!
 @brief Appends a single suggestion and its weight to the internal buffers.
 @param utf8
 The suggestion (utf8 representation) to be added. The content is
 copied and the object can be reused.
 @param bucket
 The bucket to place this suggestion in. Must be non-negative and
 smaller than the number of buckets passed in the constructor.
 Higher numbers indicate suggestions that should be presented
 before suggestions placed in smaller buckets.
 */
- (void)addWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)utf8
                                   withInt:(jint)bucket;

/*!
 @brief Builds the final automaton from a list of added entries.
 This method may
 take a longer while as it needs to build the automaton.
 */
- (OrgApacheLuceneSearchSuggestFstFSTCompletion *)build;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder, automaton_, OrgApacheLuceneUtilFstFST *)

/*!
 @brief Default number of buckets.
 */
inline jint OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder_get_DEFAULT_BUCKETS();
#define OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder_DEFAULT_BUCKETS 10
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder, DEFAULT_BUCKETS, jint)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder_init(OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder *new_OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder *create_OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder_init();

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder_initWithInt_withOrgApacheLuceneSearchSuggestFstBytesRefSorter_withInt_(OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder *self, jint buckets, id<OrgApacheLuceneSearchSuggestFstBytesRefSorter> sorter, jint shareMaxTailLength);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder *new_OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder_initWithInt_withOrgApacheLuceneSearchSuggestFstBytesRefSorter_withInt_(jint buckets, id<OrgApacheLuceneSearchSuggestFstBytesRefSorter> sorter, jint shareMaxTailLength) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder *create_OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder_initWithInt_withOrgApacheLuceneSearchSuggestFstBytesRefSorter_withInt_(jint buckets, id<OrgApacheLuceneSearchSuggestFstBytesRefSorter> sorter, jint shareMaxTailLength);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestFstFSTCompletionBuilder")
