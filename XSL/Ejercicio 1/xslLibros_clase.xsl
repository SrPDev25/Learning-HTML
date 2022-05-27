<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html> <!-- Igual que un html normal, menos por algunas cosas-->
      <head>
        <title>Libros</title>
        <style type="text/css">
          .catalog_head{ <!--cabecera-->
              background-color:orange;
              font-size:10pt;
              color:black;
              
          }
          td:nth-child(1){background-color: #FFFF00;}<!--Para que el primer td sea amarillo-->
          td:nth-child(3){background-color: #FF00FF;}<!--Para que el 3 td sea rosa creo-->
          td:nth-child(5){background-color: #00FFFF;}<!--Para que el 5 td sea asul creo-->
          td:nth-child(7){background-color: #FF0000;
              width:100;
              height:150;
              text-align:center;
          }<!--Para que el 7 td sea rojo creo, y los tamaños requeridos por el ejercicio-->
          table, th,tr,td{
            border: 2px solid #000000;
            border-collapse: collapse; <!--Deja uniforme los bordes -->
            padding:0.3 em;<!--Por ponerle -->
            cellspacing: 4; <!-- Deja un espacio con el texto-->
            text-align: center;
          }
          
        </style>
      </head>
      <body>
        <table>
          <tr class="catalog_head">
            <th>Título</th>
            <th>Autor</th>
            <th>Fecha <br/>publicación</th>
            <th>Fecha <br/>nacimiento</th>
            <th>Nombre <br/>icono</th>
            <th>Dimensiones</th>
            <th>Icono</th>
          </tr>
          
          <xsl:for-each select="//libro"><!--Por cada elemento libro-->
          <tr>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="autor"/></td>
            <!--              if 1-->
            <!--<td><xsl:value-of select="fechaPublicacion/@anyo"/>
            <xsl:if test="fechaPublicacion/@anyo &gt; 1970">
            <p>es posterior a 1970</p>
            </xsl:if>   
            <xsl:if test="fechaPublicacion/@anyo &lt; 1970">
            <p>Anterior a 1970</p>
            </xsl:if>                   
            </td>
            -->
            <!--              if 2-->
            <td>
             <xsl:value-of select="fechaPublicacion/@anyo"/>
             <xsl:choose>
              <xsl:when test="fechaPublicacion/@anyo > 1970">
                <br/>Posterior a 1970 
              </xsl:when>
                
              <xsl:otherwise >
                <br/>Anterior a 1970
              </xsl:otherwise>
            </xsl:choose>
            </td>
            <td><xsl:value-of select="autor/@fechaNacimiento"/></td>
            <td><xsl:value-of select="foto"/></td>
            <td><xsl:value-of select="concat(foto/@alto, 'px * ' ,foto/@ancho,'px') "/></td>
            <td>
              <img>
                <xsl:attribute name="src"><xsl:value-of select="concat('img/',foto)"/></xsl:attribute>
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
