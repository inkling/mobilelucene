//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/ext/ParserExtension.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserExtParserExtension")
#ifdef RESTRICT_OrgApacheLuceneQueryparserExtParserExtension
#define INCLUDE_ALL_OrgApacheLuceneQueryparserExtParserExtension 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserExtParserExtension 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserExtParserExtension

#if !defined (OrgApacheLuceneQueryparserExtParserExtension_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserExtParserExtension || defined(INCLUDE_OrgApacheLuceneQueryparserExtParserExtension))
#define OrgApacheLuceneQueryparserExtParserExtension_

@class OrgApacheLuceneQueryparserExtExtensionQuery;
@class OrgApacheLuceneSearchQuery;

/*!
 @brief This class represents an extension base class to the Lucene standard
 <code>org.apache.lucene.queryparser.classic.QueryParser</code>.
 The
 <code>org.apache.lucene.queryparser.classic.QueryParser</code> is generated by the JavaCC
 parser generator. Changing or adding functionality or syntax in the standard
 query parser requires changes to the JavaCC source file. To enable extending
 the standard query parser without changing the JavaCC sources and re-generate
 the parser the <code>ParserExtension</code> can be customized and plugged into an
 instance of <code>ExtendableQueryParser</code>, a direct subclass of
 <code>org.apache.lucene.queryparser.classic.QueryParser</code>.
 - seealso: Extensions
 - seealso: ExtendableQueryParser
 */
@interface OrgApacheLuceneQueryparserExtParserExtension : NSObject

#pragma mark Public

- (instancetype)init;

/*!
 @brief Processes the given <code>ExtensionQuery</code> and returns a corresponding
 <code>Query</code> instance.
 Subclasses must either return a <code>Query</code>
 instance or raise a <code>ParseException</code>. This method must not return
 <code>null</code>.
 @param query
 the extension query
 @return a new query instance
 @throws ParseException
 if the query can not be parsed.
 */
- (OrgApacheLuceneSearchQuery *)parseWithOrgApacheLuceneQueryparserExtExtensionQuery:(OrgApacheLuceneQueryparserExtExtensionQuery *)query;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserExtParserExtension)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserExtParserExtension_init(OrgApacheLuceneQueryparserExtParserExtension *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserExtParserExtension)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserExtParserExtension")
