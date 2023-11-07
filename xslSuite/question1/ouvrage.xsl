<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
                <title>Collection de nuages</title>
            </head>
            <body>
                <h1>Les nuages</h1>
                <xsl:for-each select="/nuages/nuage">
                    <xsl:variable name="nomNuage" select="normalize-space(nom)"/>
                    <h2>
                        <xsl:value-of select="substring-before($nomNuage, ' ')"/>
                    </h2>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>