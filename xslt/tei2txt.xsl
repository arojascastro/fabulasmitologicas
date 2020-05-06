<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"  xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs" version="2.0">

    <xsl:output method="text" indent="yes"></xsl:output>
    
    <xsl:template match="titleStmt">
        <xsl:text>===============================================</xsl:text>
       <xsl:apply-templates/>
        <xsl:text>===============================================</xsl:text>
    </xsl:template>

<xsl:template match="publicationStmt"/>

    <xsl:template match="sourceDesc"/>

    <xsl:template match="profileDesc"/>

    <xsl:template match="body">
        <xsl:apply-templates/>
    </xsl:template>

</xsl:stylesheet>
