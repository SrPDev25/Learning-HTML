<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
    <head>
      <title>Tabla 1</title>
      <style>
        table, th, td, tr{
          border: 1px solid white;
        }
        
        img{
          width: 50px;
          padding: 20px;
        }
        
        td{
          background: #00ffff;
          padding-right:20px ;
          vertical-align: top;
        }
        .top, .down{
          background: #ffa500;
          margin: 5px;
        }
        
        .down td{
          background: #ffa500;
          margin: 5px;
        }
        
        
      </style>
    </head>
    <body>
      <table>
        <tr class="top">
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
          <td><img><xsl:attribute name="src"><xsl:value-of select="concat('img/',marca,'.jpg')"></xsl:value-of></xsl:attribute></img></td>
          <td><xsl:value-of select="modelo"></xsl:value-of></td>
          <td><xsl:value-of select="concat(cilindrada,' c.c.')"></xsl:value-of></td>
          <td><xsl:value-of select="concat(potencia,' c.v.')"></xsl:value-of></td>
          <td><xsl:value-of select="mesentrega"></xsl:value-of></td>
          <td><xsl:value-of select="mespromocion"></xsl:value-of></td>
          <td><xsl:value-of select="concat(precio,'€')"></xsl:value-of></td>
          </tr>        
        </xsl:for-each>
        <tr class="down">
          <th colspan="2" style="text-align:right;">MEDIAS:</th>
          <td><xsl:value-of select='format-number(sum(//cilindrada) div count(//cilindrada), "#,###.00")'/></td>
          <td><xsl:value-of select='format-number(sum(//potencia) div count(//potencia), "#,###.00")'/></td>
          <th colspan="2" style="text-align:right;">TOTAL:</th>
          <td><xsl:value-of select="concat(format-number(sum(//precio), '#,###.00'),'€')"/></td>
        </tr>
      </table>
    </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
