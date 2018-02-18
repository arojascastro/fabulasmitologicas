<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs" version="2.0">

    <!--https://docstore.mik.ua/orelly/xml/xslt/appd_03.htm-->

    <xsl:output method="text"/>

    <xsl:variable name="newline">
        <xsl:text>
</xsl:text>
    </xsl:variable>

    <xsl:key name="elements" match="*" use="name()"/>
    <xsl:key name="attributes" match="@*" use="name()"/>

    <xsl:template match="/">
        <xsl:text>Summary of Elements</xsl:text>
        <xsl:value-of select="$newline"/>
        <xsl:value-of select="$newline"/>

        <xsl:text>Source,Type,Target,Weight</xsl:text>
        <xsl:value-of select="$newline"/>
        <xsl:for-each select="//tei:body//*[generate-id(.) = generate-id(key('elements', name())[1])]">
            <xsl:sort select="name()"/>
            <xsl:value-of select="//tei:author"/>
            <xsl:text>,</xsl:text>
            <xsl:text>undirected,</xsl:text>
            <xsl:for-each select="key('elements', name())">
                <xsl:if test="position() = 1">
                    <!--  <xsl:value-of select="."/> -->
                    <xsl:value-of select="name()"/>
                    <xsl:text>,</xsl:text>
                    <xsl:value-of select="count(//*[name() = name(current())][text()])"/>
                    <xsl:value-of select="$newline"/>
                </xsl:if>
            </xsl:for-each>
        </xsl:for-each>
        <xsl:value-of select="$newline"/>
        <xsl:value-of select="count(//*[text()])"/>
        <xsl:text> elements (with text) in all.</xsl:text>

        <xsl:value-of select="$newline"/>
        <xsl:value-of select="$newline"/>
        <xsl:text>Summary of Attributes</xsl:text>
        <xsl:value-of select="$newline"/>
        <xsl:value-of select="$newline"/>
        <xsl:for-each select="//tei:body//@*[generate-id(.) = generate-id(key('attributes', name())[1])]">
            <xsl:sort select="name()"/>
            <xsl:for-each select="key('attributes', name())">
                <xsl:if test="position() = 1">
                    <xsl:text>@</xsl:text>
                    <xsl:value-of select="name()"/>
                    <xsl:text>&#009;</xsl:text>
                    <xsl:value-of select="count(//@*[name() = name(current())])"/>
                    <xsl:value-of select="$newline"/>
                </xsl:if>
            </xsl:for-each>
        </xsl:for-each>
        <xsl:value-of select="$newline"/>
        <xsl:value-of select="count(//@*)"/>
        <xsl:text> attributes in all.</xsl:text>
    </xsl:template>

</xsl:stylesheet>
