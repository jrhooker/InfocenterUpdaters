<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:db="http://docbook.org/ns/docbook"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
  xmlns:xi="http://www.w3.org/2001/XInclude"
  xmlns:opentopic-i18n="http://www.idiominc.com/opentopic/i18n"
  xmlns:opentopic-index="http://www.idiominc.com/opentopic/index"
  xmlns:opentopic="http://www.idiominc.com/opentopic"
  xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function"
  xmlns:date="http://exslt.org/dates-and-times" xmlns:ns0="http://www.w3.org/2001/XInclude">

<xsl:output method="text"/>
 
  <xsl:template match="/">

  <xsl:variable name="toc-name" select="//toc/@file"/>
  
      <xsl:result-document href="META-INF/MANIFEST.MF"><xsl:text>Bundle-Version: 0.0.0</xsl:text>
        <xsl:text>
Manifest-Version: 1.0</xsl:text>
        <xsl:text>
Bundle-ManifestVersion: 2</xsl:text>
        <xsl:text>
Bundle-Localization: plugin</xsl:text>
        <xsl:text>
Bundle-Name: %name</xsl:text>
        <xsl:text>
Bundle-Vendor: %providerName</xsl:text>
        <xsl:text>
Eclipse-LazyStart: true</xsl:text>
        <xsl:text>
Bundle-SymbolicName:</xsl:text><xsl:value-of select="plugin/@id"/><xsl:text></xsl:text><xsl:text>; singleton:=true
        </xsl:text>
      </xsl:result-document>    

<xsl:variable name="toc-content" select="document($toc-name)"/>
   
      <xsl:result-document href="plugin.properties"><xsl:text># NLS_MESSAGEFORMAT_NONE</xsl:text>
        <xsl:text>
# NLS_ENCODING=UTF-8</xsl:text>
        <xsl:text>
name=</xsl:text><xsl:value-of select="$toc-content/toc/@label"/>
        <xsl:text>
providerName=DITA</xsl:text>
      </xsl:result-document>
      <xsl:apply-templates mode="copy" /> 

  </xsl:template>

</xsl:stylesheet>
