<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 version="1.0">
  <xsl:template match="/">
    <html>
<<<<<<< HEAD
      <table>
        <tr bgcolor="orange">
          <th>Titulo</th>
          <th>Autor</th>
          <th>Fecha Publicacion</th>
          <th>Fecha Nacimiento</th>
          <th>Nombre Icono</th>
          <th>Dimensiones</th>
          <th>Icono</th>
        </tr>
        <xsl:for-each select="biblioteca/libro">
        <tr>
          <td><xsl:value-of select="titulo"/></td>
          <td><xsl:value-of select="autor"/></td>
          <td><xsl:template match="fechaPublicacion">
            <xsl:attribute select="@año"/>
          </xsl:template></td>
          <td><xsl:template match="autor">
            <xsl:attribute select="fechaNacimiento"/>
          </xsl:template></td>
          <td><xsl:value-of select="foto"/></td>
          <td><xsl:value-of select="(Falta las proporciones)"/></td>
          <td>
            <xsl:template match="licencia">
              <img>
                <xsl:attribute name="src">
                  <xsl:value-of select="foto" />
                </xsl:attribute>
              </img>
            </xsl:template>
          </td>
        </tr>
        </xsl:for-each>
      </table>
=======
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
>>>>>>> 1f844c309c15d135605a45caa4cdbc25684ad893
    </html>
  </xsl:template>
</xsl:stylesheet>
