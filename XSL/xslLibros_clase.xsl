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
          td:ntd-child(1){blackground: #FFFF00;}<!--Para que el primer td sea amarillo-->
          td:ntd-child(3){blackground: #FF00FF;}<!--Para que el 3 td sea rosa creo-->
          td:ntd-child(5){blackground: #00FFFF;}<!--Para que el 5 td sea asul creo-->
          td:ntd-child(7){blackground: #FF0000;
              width:100;
              height:150;
              text-align:center;
          }<!--Para que el 7 td sea rojo creo, y los tamaños requeridos por el ejercicio-->
          table, th,tr,td{
            border: 2px solid #000000;
            border-collapse: collapse; <!--Deja uniforme los bordes -->
            padding:0.3 em;<!--Por ponerle -->
            cellspacing: 4; <!-- Deja un espacio con el texto-->
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
            <td><xsl:value-of select="fechaPublicacion/@anyo"/></td>
          </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
