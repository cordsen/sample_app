<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns1="http://s1">
  <xsl:output method="xml" indent="yes"/>
  <xsl:strip-space elements="*"/>
  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@ns1:* | @*[parent::ns1:* and namespace-uri()=''] | node()[attribute::ns1:* | descendant-or-self::ns1:*] | text() | comment()"/>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
