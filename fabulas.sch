<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2" xmlns:sqf="http://www.schematron-quickfix.com/validator/process">

  <ns prefix="tei" uri="http://www.tei-c.org/ns/1.0"/>

  <!-- elements allowed in the teiHeader -->

  <pattern id="teiHeader">

    <rule context="tei:teiHeader">

      <assert test="tei:fileDesc">A &lt;teiHeader&gt; element must contain a &lt;fileDesc&gt; element.</assert>

      <assert test="tei:profileDesc">A &lt;teiHeader&gt; element must contain a &lt;profileDesc&gt; element.</assert>

    </rule>

    <rule context="tei:fileDesc">

      <assert test="tei:titleStmt">A &lt;fileDesc&gt; element must contain a &lt;titleStmt&gt; element.</assert>

      <assert test="tei:editionStmt">A &lt;fileDesc&gt; element must contain an &lt;editionStmt&gt; element.</assert>

      <assert test="tei:publicationStmt">A &lt;fileDesc&gt; element must contain a &lt;publicationStmt&gt; element.</assert>

      <assert test="tei:sourceDesc">A &lt;fileDesc&gt; element must contain a &lt;sourceDesc&gt; element.</assert>

    </rule>

    <rule context="tei:titleStmt">

      <assert test="tei:title">A &lt;titleStmt&gt; element must contain a &lt;title&gt; element.</assert>

      <assert test="tei:author">A &lt;fileDesc&gt; element must contain a &lt;author&gt; element.</assert>

      <assert test="tei:respStmt">A &lt;fileDesc&gt; element must contain a &lt;respStmt&gt; element.</assert>

    </rule>

    <rule context="tei:editionStmt">

      <assert test="tei:edition">A &lt;editionStmt&gt; element must contain an &lt;edition&gt; element.</assert>

    </rule>


    <rule context="tei:publicationStmt">

      <assert test="tei:p">A &lt;publicationStmt&gt; element must contain a &lt;p&gt; element.</assert>

    </rule>


    <rule context="tei:sourceDesc">

      <assert test="tei:p">A &lt;sourceDesc&gt; element must contain a &lt;p&gt; element.</assert>

    </rule>

    <rule context="tei:profileDesc">

      <assert test="tei:creation">A &lt;profileDesc&gt; element must contain a &lt;creation&gt; element.</assert>

    </rule>

  </pattern>

  <!-- required elements in the text -->

  <pattern id="text">

    <rule context="tei:text">

      <assert test="tei:body">A &lt;text&gt; element must contain a &lt;body&gt; element.</assert>

    </rule>

    <rule context="tei:lg">
      
      <assert test="tei:l">A &lt;lg&gt; element must contain at least one &lt;l&gt; element.</assert>
      
    </rule>

  </pattern>



</schema>
