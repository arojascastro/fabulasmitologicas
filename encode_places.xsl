<?xml version="1.0" encoding="UTF-8"?>
  
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs tei" version="2.0">

  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@*, node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="l">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates select="text()" mode="wrap">
        <xsl:with-param name="words" as="xs:string+"
          select="('Troya', 'España', 'Betis', 'Etna', 'Leteo', 'Italia', 'Nilo', 'Olimpo', 'Chipre', 'Ganges', 'Hebro', 'Parnaso', 'Aqueronte', 'Arabia', 'Atenas', 'Averno', 'Sicilia', 'Fenicia', 'Libia', 'Roma', 'Tracia', 'Asia', 'Ceilán', 'Erídano', 'Manzanares', 'Oriente', 'Ponto', 'Rodope', 'Tesalia', 'Cartago', 'Corinto', 'Creta', 'Francia', 'Jordán', 'Siria', 'Tiro', 'Toledo', 'Meandro', 'Arcadia', 'Calabria', 'Cambaya', 'Castilla', 'Etiopia', 'Genil', 'León', 'Líbano', 'Madrid', 'Sevilla', 'Tigris', 'África', 'Apenino', 'Bósforo', 'Cipria', 'Danubio', 'Ebro', 'Eurota', 'Gnido', 'Granada', 'Ida', 'Itaca', 'Macedonia', 'Mediterráneo')"
        />
      </xsl:apply-templates>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="text()" mode="wrap">
    <xsl:param name="words" as="xs:string+"/>
    <xsl:param name="wrapper-name" as="xs:string" select="'placeName'"/>
    <xsl:analyze-string select="." regex="{string-join($words, '|')}">
      <xsl:matching-substring>
        <xsl:element namespace="http://www.tei-c.org/ns/1.0" name="{$wrapper-name}">
          <xsl:value-of select="."/>
        </xsl:element>
      </xsl:matching-substring>
      <xsl:non-matching-substring>
        <xsl:value-of select="."/>
      </xsl:non-matching-substring>
    </xsl:analyze-string>
  </xsl:template>

</xsl:stylesheet>
