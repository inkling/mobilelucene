//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/DOMUtils.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlDOMUtils")
#ifdef RESTRICT_OrgApacheLuceneQueryparserXmlDOMUtils
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlDOMUtils 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlDOMUtils 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserXmlDOMUtils

#if !defined (OrgApacheLuceneQueryparserXmlDOMUtils_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserXmlDOMUtils || defined(INCLUDE_OrgApacheLuceneQueryparserXmlDOMUtils))
#define OrgApacheLuceneQueryparserXmlDOMUtils_

@class JavaIoReader;
@protocol OrgW3cDomDocument;
@protocol OrgW3cDomElement;
@protocol OrgW3cDomNode;

/*!
 @brief Helper methods for parsing XML
 */
@interface OrgApacheLuceneQueryparserXmlDOMUtils : NSObject

#pragma mark Public

- (instancetype)init;

+ (jboolean)getAttributeWithOrgW3cDomElement:(id<OrgW3cDomElement>)element
                                withNSString:(NSString *)attributeName
                                 withBoolean:(jboolean)deflt;

+ (jfloat)getAttributeWithOrgW3cDomElement:(id<OrgW3cDomElement>)element
                              withNSString:(NSString *)attributeName
                                 withFloat:(jfloat)deflt;

+ (jint)getAttributeWithOrgW3cDomElement:(id<OrgW3cDomElement>)element
                            withNSString:(NSString *)attributeName
                                 withInt:(jint)deflt;

+ (NSString *)getAttributeWithOrgW3cDomElement:(id<OrgW3cDomElement>)element
                                  withNSString:(NSString *)attributeName
                                  withNSString:(NSString *)deflt;

+ (NSString *)getAttributeOrFailWithOrgW3cDomElement:(id<OrgW3cDomElement>)e
                                        withNSString:(NSString *)name;

/*!
 @brief Returns an attribute value from this node, or first parent node with this attribute defined
 @return A non-zero-length value if defined, otherwise null
 */
+ (NSString *)getAttributeWithInheritanceWithOrgW3cDomElement:(id<OrgW3cDomElement>)element
                                                 withNSString:(NSString *)attributeName;

+ (NSString *)getAttributeWithInheritanceOrFailWithOrgW3cDomElement:(id<OrgW3cDomElement>)e
                                                       withNSString:(NSString *)name;

+ (id<OrgW3cDomElement>)getChildByTagNameWithOrgW3cDomElement:(id<OrgW3cDomElement>)e
                                                 withNSString:(NSString *)name;

+ (id<OrgW3cDomElement>)getChildByTagOrFailWithOrgW3cDomElement:(id<OrgW3cDomElement>)e
                                                   withNSString:(NSString *)name;

+ (NSString *)getChildTextByTagNameWithOrgW3cDomElement:(id<OrgW3cDomElement>)e
                                           withNSString:(NSString *)tagName;

+ (id<OrgW3cDomElement>)getFirstChildElementWithOrgW3cDomElement:(id<OrgW3cDomElement>)element;

+ (id<OrgW3cDomElement>)getFirstChildOrFailWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

+ (NSString *)getNonBlankTextOrFailWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

+ (NSString *)getTextWithOrgW3cDomNode:(id<OrgW3cDomNode>)e;

+ (id<OrgW3cDomElement>)insertChildWithOrgW3cDomElement:(id<OrgW3cDomElement>)parent
                                           withNSString:(NSString *)tagName
                                           withNSString:(NSString *)text;

/*!
 @brief Helper method to parse an XML file into a DOM tree, given a reader.
 @param is reader of the XML file to be parsed
 @return an org.w3c.dom.Document object
 */
+ (id<OrgW3cDomDocument>)loadXMLWithJavaIoReader:(JavaIoReader *)is;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlDOMUtils)

FOUNDATION_EXPORT id<OrgW3cDomElement> OrgApacheLuceneQueryparserXmlDOMUtils_getChildByTagOrFailWithOrgW3cDomElement_withNSString_(id<OrgW3cDomElement> e, NSString *name);

FOUNDATION_EXPORT id<OrgW3cDomElement> OrgApacheLuceneQueryparserXmlDOMUtils_getFirstChildOrFailWithOrgW3cDomElement_(id<OrgW3cDomElement> e);

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeOrFailWithOrgW3cDomElement_withNSString_(id<OrgW3cDomElement> e, NSString *name);

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithInheritanceOrFailWithOrgW3cDomElement_withNSString_(id<OrgW3cDomElement> e, NSString *name);

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserXmlDOMUtils_getNonBlankTextOrFailWithOrgW3cDomElement_(id<OrgW3cDomElement> e);

FOUNDATION_EXPORT id<OrgW3cDomElement> OrgApacheLuceneQueryparserXmlDOMUtils_getChildByTagNameWithOrgW3cDomElement_withNSString_(id<OrgW3cDomElement> e, NSString *name);

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithInheritanceWithOrgW3cDomElement_withNSString_(id<OrgW3cDomElement> element, NSString *attributeName);

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserXmlDOMUtils_getChildTextByTagNameWithOrgW3cDomElement_withNSString_(id<OrgW3cDomElement> e, NSString *tagName);

FOUNDATION_EXPORT id<OrgW3cDomElement> OrgApacheLuceneQueryparserXmlDOMUtils_insertChildWithOrgW3cDomElement_withNSString_withNSString_(id<OrgW3cDomElement> parent, NSString *tagName, NSString *text);

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withNSString_(id<OrgW3cDomElement> element, NSString *attributeName, NSString *deflt);

FOUNDATION_EXPORT jfloat OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withFloat_(id<OrgW3cDomElement> element, NSString *attributeName, jfloat deflt);

FOUNDATION_EXPORT jint OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withInt_(id<OrgW3cDomElement> element, NSString *attributeName, jint deflt);

FOUNDATION_EXPORT jboolean OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withBoolean_(id<OrgW3cDomElement> element, NSString *attributeName, jboolean deflt);

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserXmlDOMUtils_getTextWithOrgW3cDomNode_(id<OrgW3cDomNode> e);

FOUNDATION_EXPORT id<OrgW3cDomElement> OrgApacheLuceneQueryparserXmlDOMUtils_getFirstChildElementWithOrgW3cDomElement_(id<OrgW3cDomElement> element);

FOUNDATION_EXPORT id<OrgW3cDomDocument> OrgApacheLuceneQueryparserXmlDOMUtils_loadXMLWithJavaIoReader_(JavaIoReader *is);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlDOMUtils_init(OrgApacheLuceneQueryparserXmlDOMUtils *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlDOMUtils *new_OrgApacheLuceneQueryparserXmlDOMUtils_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlDOMUtils *create_OrgApacheLuceneQueryparserXmlDOMUtils_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlDOMUtils)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlDOMUtils")
