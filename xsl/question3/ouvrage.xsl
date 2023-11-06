<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Ma Filmotèque</title>
      </head>
      <body>
        <h1>Ma Filmotèque</h1>
        <xsl:apply-templates select="filmotheque/film"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="film">
    <div class="film">
      <h2><xsl:value-of select="titre"/></h2>
      <p><strong>Réalisateurs:</strong> <xsl:value-of select="realisateur"/></p>
      <p><strong>Acteurs:</strong> <xsl:apply-templates select="acteurs/acteur"/></p>
      <p><strong>Producteurs:</strong> <xsl:apply-templates select="producteurs/producteur"/></p>
      <p><strong>Année:</strong> <xsl:value-of select="annee"/></p>
      <p><strong>Résumé:</strong> <xsl:value-of select="resume"/></p>
      <p><strong>Avis:</strong> <xsl:value-of select="avis"/></p>
    </div>
  </xsl:template>

  <xsl:template match="acteur | producteur">
    <xsl:value-of select="."/>
    <xsl:if test="position() != last()">, </xsl:if>
  </xsl:template>
</xsl:stylesheet>