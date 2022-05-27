<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
    <head>
      <title>Tabla 1</title>
      <style>
        table, th, td, tr{
          border: 1px solid black;
        }
      </style>
    </head>
    <body>
      <table>
        <tr>
          <th>Marca</th>
          <th>Modelo</th>
          <th>Cilindrada</th>
          <th>Potencia</th>
          <th>Mes entrega</th>
          <th>Mes 15% dto.</th>
          <th>Precio</th>
        </tr>
        <xsl:for-each select="//coche">
          <tr>
          <td><xsl:value-of select="marca"></xsl:value-of></td>
          <td><xsl:value-of select="modelo"></xsl:value-of></td>
          <td><xsl:value-of select="cilindrada"></xsl:value-of></td>
          <td><xsl:value-of select="potencia"></xsl:value-of></td>
          <td><xsl:value-of select="mesentrega"></xsl:value-of></td>
          <td><xsl:value-of select="mespromocion"></xsl:value-of></td>
          </tr>        
        </xsl:for-each>
        
      </table>
    </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
