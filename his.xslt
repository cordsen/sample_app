<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns1="http://s1">
  <xsl:output omit-xml-declaration="no" indent="yes"/>
  <xsl:strip-space elements="*"/>
  <xsl:template match="node()|@*">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="*[not(attribute::ns1:*)  and not(descendant-or-self::ns1:*)] | @*[not(namespace-uri()='http://s1' or namespace-uri()='')]"/>
</xsl:stylesheet>
