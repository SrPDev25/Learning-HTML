<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
    <head>
      <title>Autores</title>
      <style>
       .title{
          background: #fca800;
          font-weight: 600;
        }
        table, th, td, tr{
          border: 2px solid black;
          border-collapse: collapse; 
          text-align:center;
        }
        
        td:nth-child(odd){background: #00feff;}
        td:nth-child(2n){background: #ffff00;}
        
      </style>
    </head>
    <body>
      <table>
        <tr class="title">
          <th>Libro</th>
          <th>Fecha publicación</th>
          <th>Autor</th>
          <th>Fecha nacimiento</th>
        </tr>
        <xsl:for-each select="//libro">
        <tr>
          <td>
            <img><xsl:attribute name="src"><xsl:value-of select="concat('img/',foto)"></xsl:value-of></xsl:attribute>
            <xsl:attribute name="alt"><xsl:value-of select="foto"/></xsl:attribute>
                <xsl:attribute name="height"><xsl:value-of select="foto/@ancho"/></xsl:attribute>
                <xsl:attribute name="width"><xsl:value-of select="foto/@alto"/></xsl:attribute>
            </img>
            <p><xsl:value-of select="titulo"></xsl:value-of></p>
          </td>
          <td>
            <p><xsl:value-of  select="fechaPublicacion/@anyo"></xsl:value-of></p>
            <xsl:choose>
              <xsl:when test="fechaPublicacion/@anyo > 1970">
                <p style="font-weight:600">(Posterior a 1970)</p>
              </xsl:when>
              <xsl:otherwise>
                <p style="font-weight:600">(Anterior a 1970)</p>
                </xsl:otherwise>
            </xsl:choose>
          </td>
          <td>
            <img>
            <xsl:attribute name="src"><xsl:value-of select="concat('img/',autor/@foto)"></xsl:value-of></xsl:attribute>
            <xsl:attribute name="width">70</xsl:attribute>
            </img>
            <p><xsl:value-of select="autor"></xsl:value-of></p>
          </td>
          <td><xsl:value-of select="autor/@fechaNacimiento"></xsl:value-of></td>
        </tr>
        </xsl:for-each>
      </table>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
