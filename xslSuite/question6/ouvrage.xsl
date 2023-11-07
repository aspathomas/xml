<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <title>Collection de nuages</title>
      </head>
      <body>
        <h1>Les nuages</h1>
        <xsl:apply-templates select="nuages/nuage"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="nuage">
  <xsl:variable name="nomNuage" select="normalize-space(nom)"/>
    <h2>
        <xsl:value-of select="position()"/>. 
        <xsl:value-of select="concat(
          translate(substring(substring-before($nomNuage, ' '), 1, 1), 
          'abcdefghijklmnopqrstuvwxyz', 
          'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 
          substring(substring-before($nomNuage, ' '), 2))"/>
    </h2>
    <p>
      <xsl:text>Ce type de nuage possède les </xsl:text>
      <xsl:value-of select="count(nom/espece)"/>
      <xsl:text> espèces suivantes :</xsl:text>
    </p>
    <ul>
      <xsl:for-each select="nom/espece">
        <li>
          <xsl:value-of select="."/>
        </li>
      </xsl:for-each>
    </ul>
  </xsl:template>
</xsl:stylesheet>