<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html"/>
  <xsl:template match="/">
    <html lang="fr">
      <head>
        <title>Les planètes</title>
      </head>
      <body>
        <xsl:for-each select="systeme_solaire/planete">
          <xsl:variable name="nom" select="nom"/>
          <xsl:variable name="distance" select="distance"/>
          <xsl:variable name="masse" select="masse"/>
          <xsl:variable name="diametre" select="diametre"/>
          
          <h2><xsl:value-of select="$nom"/></h2>
          <p>
            Distance au soleil: <xsl:value-of select="$distance"/><xsl:value-of select="distance/@unit"/><br/>
            Masse: <xsl:value-of select="$masse"/><xsl:value-of select="masse/@unit"/><br/>
            Diamètre: <xsl:value-of select="$diametre"/><xsl:value-of select="diametre/@unit"/>
          </p>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>