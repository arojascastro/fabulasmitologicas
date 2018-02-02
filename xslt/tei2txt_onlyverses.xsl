<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs tei" version="2.0">

    <xsl:output method="text" indent="yes"/>

    <xsl:template match="teiHeader"/>

    <xsl:template match="head"/>

    <xsl:template match="epigraph"/>

    <xsl:template match="p"/>

    <xsl:template match="argument"/>

    <xsl:template match="term"/>

    <xsl:template match="label"/>

    <xsl:template match="note"/>

    <xsl:template match="lg">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="l">
        <xsl:apply-templates/>
    </xsl:template>

</xsl:stylesheet>
