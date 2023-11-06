<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html"/>
  <xsl:template match="/">
    <html lang="fr">
      <head>
        <title>Les planètes</title>
      </head>
      <body>
        <xsl:apply-templates select="systeme_solaire/planete"/>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="planete">
    <xsl:variable name="nom" select="nom"/>
    <xsl:variable name="distance" select="distance"/>
    <xsl:variable name="masse" select="masse"/>
    <xsl:variable name="diametre" select="diametre"/>
    <xsl:variable name="distanceUnit" select="distance/@unit"/>
    <xsl:variable name="masseUnit" select="masse/@unit"/>
    <xsl:variable name="diametreUnit" select="diametre/@unit"/>
    <xsl:variable name="satellite" select="satellite"/>
    
    <h2><xsl:value-of select="$nom"/></h2>
    <p>
      Distance au soleil: <xsl:value-of select="$distance"/><xsl:value-of select="$distanceUnit"/><br/>
      Masse: <xsl:value-of select="$masse"/><xsl:value-of select="$masseUnit"/><br/>
      Diamètre: <xsl:value-of select="$diametre"/><xsl:value-of select="$diametreUnit"/>
      <xsl:if test="$satellite">
        <br/>Nombre de satellites: <xsl:value-of select="$satellite"/>
      </xsl:if>
    </p>
  </xsl:template>
</xsl:stylesheet>