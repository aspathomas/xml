<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="livre/entete/titre" /></title>
            </head>
            <body>
                <h1><xsl:value-of select="livre/entete/titre" /></h1>
                <p><xsl:value-of select="livre/entete/auteur" /></p>
                <p>Série: <xsl:value-of select="livre/entete/serie" /></p>
                <h2>Description du livre :</h2>
                <p><xsl:value-of select="livre/description" /></p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>