<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 version="1.0">
  <xsl:template match="/">
    <html>
      <body>
       <style>
        table, th, tr, td{
            border: 2px solid black;
            border-collapse: collapse;
        }

         th p{
           margin: 3px;
            text-align: center;
          }
  </style>
  <table>
    <tr bgcolor="orange" >
      <th><p>Titulo</p></th>
      <th><p>Autor</p></th>
      <th><p>Fecha<br> Publicacion</p></th>
      <th><p>Fecha<br> Nacimiento</p></th>
      <th><p>Nombre<br> Icono</p></th>
      <th><p>Dimensiones</p></th>
      <th><p>Icono</p></th>
    </tr>
    </table>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
