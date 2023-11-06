<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="livre">
    <html>
      <head>
        <title><xsl:value-of select="entete/titre" /></title>
      </head>
      <body>
        <h1><xsl:value-of select="entete/titre" /></h1>
        <p>Auteur : <xsl:value-of select="entete/auteur" /></p>
        <p>Série : <xsl:value-of select="entete/serie" /></p>

        <h2>Mots-clés :</h2>
        <xsl:apply-templates select="description/mots_cles/mot" />

        <h2>Descriptions textuelles :</h2>
        <xsl:apply-templates select="description/texte" />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="mot">
    <p><xsl:number count="mot"/>. <xsl:value-of select="." /></p>
  </xsl:template>

  <xsl:template match="texte">
    <p><xsl:number count="texte"/>. <xsl:value-of select="." /></p>
  </xsl:template>
</xsl:stylesheet>