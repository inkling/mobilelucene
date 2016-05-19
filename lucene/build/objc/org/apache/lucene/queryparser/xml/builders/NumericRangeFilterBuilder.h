//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/NumericRangeFilterBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder")
#ifdef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder

#if !defined (OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder || defined(INCLUDE_OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder))
#define OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_

#define RESTRICT_OrgApacheLuceneQueryparserXmlFilterBuilder 1
#define INCLUDE_OrgApacheLuceneQueryparserXmlFilterBuilder 1
#include "org/apache/lucene/queryparser/xml/FilterBuilder.h"

@class OrgApacheLuceneSearchFilter;
@protocol OrgW3cDomElement;

/*!
 @brief Creates a <code>NumericRangeFilter</code>.
 The table below specifies the required
 attributes and the defaults if optional attributes are omitted. For more
 detail on what each of the attributes actually do, consult the documentation
 for <code>NumericRangeFilter</code>:
 <table summary="supported attributes">
 <tr>
 <th>Attribute name</th>
 <th>Values</th>
 <th>Required</th>
 <th>Default</th>
 </tr>
 <tr>
 <td>fieldName</td>
 <td>String</td>
 <td>Yes</td>
 <td>N/A</td>
 </tr>
 <tr>
 <td>lowerTerm</td>
 <td>Specified by <tt>type</tt></td>
 <td>Yes</td>
 <td>N/A</td>
 </tr>
 <tr>
 <td>upperTerm</td>
 <td>Specified by <tt>type</tt></td>
 <td>Yes</td>
 <td>N/A</td>
 </tr>
 <tr>
 <td>type</td>
 <td>int, long, float, double</td>
 <td>No</td>
 <td>int</td>
 </tr>
 <tr>
 <td>includeLower</td>
 <td>true, false</td>
 <td>No</td>
 <td>true</td>
 </tr>
 <tr>
 <td>includeUpper</td>
 <td>true, false</td>
 <td>No</td>
 <td>true</td>
 </tr>
 <tr>
 <td>precisionStep</td>
 <td>Integer</td>
 <td>No</td>
 <td>4</td>
 </tr>
 </table>
 <p>
 If an error occurs parsing the supplied <tt>lowerTerm</tt> or
 <tt>upperTerm</tt> into the numeric type specified by <tt>type</tt>, then the
 error will be silently ignored and the resulting filter will not match any
 documents.
 */
@interface OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder : NSObject < OrgApacheLuceneQueryparserXmlFilterBuilder >

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneSearchFilter *)getFilterWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

/*!
 @brief Specifies how this <code>NumericRangeFilterBuilder</code> will handle errors.
 <p>
 If this is set to true, <code>getFilter(Element)</code> will throw a
 <code>ParserException</code> if it is unable to parse the lowerTerm or upperTerm
 into the appropriate numeric type. If this is set to false, then this
 exception will be silently ignored and the resulting filter will not match
 any documents.
 <p>
 Defaults to false.
 */
- (void)setStrictModeWithBoolean:(jboolean)strictMode;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_init(OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder *new_OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder *create_OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder)

#endif

#if !defined (OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder || defined(INCLUDE_OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter))
#define OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter_

#define RESTRICT_OrgApacheLuceneSearchFilter 1
#define INCLUDE_OrgApacheLuceneSearchFilter 1
#include "org/apache/lucene/search/Filter.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchDocIdSet;
@protocol OrgApacheLuceneUtilBits;

@interface OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter : OrgApacheLuceneSearchFilter

#pragma mark Public

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter_init(OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter *new_OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter *create_OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder")
