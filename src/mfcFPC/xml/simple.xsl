<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Doxygen XML → HTML Beispiel</title>
      </head>
      <body>
        <h1>Doxygen Dokumentation</h1>
        <ul>
          <xsl:for-each select="doxygenindex/compound">
            <li>
              <xsl:value-of select="name"/> (<xsl:value-of select="@kind"/>)
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
