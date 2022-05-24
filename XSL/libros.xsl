<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 version="1.0">
  <xsl:template match="/">
    <html>
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
    </html>
  </xsl:template>
</xsl:stylesheet>
