//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/FilterBuilderFactory.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/util/HashMap.h"
#include "org/apache/lucene/queryparser/xml/FilterBuilder.h"
#include "org/apache/lucene/queryparser/xml/FilterBuilderFactory.h"
#include "org/apache/lucene/queryparser/xml/ParserException.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/w3c/dom/Element.h"

@implementation OrgApacheLuceneQueryparserXmlFilterBuilderFactory

- (OrgApacheLuceneSearchFilter *)getFilterWithOrgW3cDomElement:(id<OrgW3cDomElement>)n {
  id<OrgApacheLuceneQueryparserXmlFilterBuilder> builder = [((JavaUtilHashMap *) nil_chk(builders_)) getWithId:[((id<OrgW3cDomElement>) nil_chk(n)) getNodeName]];
  if (builder == nil) {
    @throw create_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_(JreStrcat("$$", @"No FilterBuilder defined for node ", [n getNodeName]));
  }
  return [builder getFilterWithOrgW3cDomElement:n];
}

- (void)addBuilderWithNSString:(NSString *)nodeName
withOrgApacheLuceneQueryparserXmlFilterBuilder:(id<OrgApacheLuceneQueryparserXmlFilterBuilder>)builder {
  [((JavaUtilHashMap *) nil_chk(builders_)) putWithId:nodeName withId:builder];
}

- (id<OrgApacheLuceneQueryparserXmlFilterBuilder>)getFilterBuilderWithNSString:(NSString *)nodeName {
  return [((JavaUtilHashMap *) nil_chk(builders_)) getWithId:nodeName];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserXmlFilterBuilderFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(builders_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getFilterWithOrgW3cDomElement:", "getFilter", "Lorg.apache.lucene.search.Filter;", 0x1, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
    { "addBuilderWithNSString:withOrgApacheLuceneQueryparserXmlFilterBuilder:", "addBuilder", "V", 0x1, NULL, NULL },
    { "getFilterBuilderWithNSString:", "getFilterBuilder", "Lorg.apache.lucene.queryparser.xml.FilterBuilder;", 0x1, NULL, NULL },
    { "init", "FilterBuilderFactory", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "builders_", NULL, 0x0, "Ljava.util.HashMap;", NULL, "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/lucene/queryparser/xml/FilterBuilder;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlFilterBuilderFactory = { 2, "FilterBuilderFactory", "org.apache.lucene.queryparser.xml", NULL, 0x1, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserXmlFilterBuilderFactory;
}

@end

void OrgApacheLuceneQueryparserXmlFilterBuilderFactory_init(OrgApacheLuceneQueryparserXmlFilterBuilderFactory *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->builders_, new_JavaUtilHashMap_init());
}

OrgApacheLuceneQueryparserXmlFilterBuilderFactory *new_OrgApacheLuceneQueryparserXmlFilterBuilderFactory_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserXmlFilterBuilderFactory, init)
}

OrgApacheLuceneQueryparserXmlFilterBuilderFactory *create_OrgApacheLuceneQueryparserXmlFilterBuilderFactory_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserXmlFilterBuilderFactory, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlFilterBuilderFactory)
