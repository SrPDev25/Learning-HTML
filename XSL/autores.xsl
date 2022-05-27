<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
    <head>
      <title>Autores</title>
      <style>
       .title{
          background-color: orange;
          font-weight: 600;
        }
        table, th, td, tr{
          border: 2px solid black;
          border-collapse: collapse; 
          text-align:center;
        }
        
        td:nth-child(2){background-color: blue;}
        td:nth-child(2n){background-color: yellow;}
        
      </style>
    </head>
    <body>
      <table>
        <tr class="title">
          <td>Libro</td>
          <td>Fecha publicación</td>
          <td>Autor</td>
          <td>Fecha nacimiento</td>
        </tr>
        <xsl:for-each select="//libro">
        <tr>
          <td>
            <img><xsl:attribute name="src"><xsl:value-of select="concat('img/',foto)"></xsl:value-of></xsl:attribute>
            <xsl:attribute name="alt"><xsl:value-of select="foto"/></xsl:attribute>
                <xsl:attribute name="height"><xsl:value-of select="foto/@ancho"/></xsl:attribute>
                <xsl:attribute name="width"><xsl:value-of select="foto/@alto"/></xsl:attribute>
            </img>
            
          </td>
        </tr>
        </xsl:for-each>
      </table>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
