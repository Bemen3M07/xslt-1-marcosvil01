<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-public="XSLT-compat"/>

<xsl:template match="/">
<html> 
<head>
  <!-- Agrega Bootstrap -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
  <!--Estilo basico para que se vea mejor-->
  <style>
    body {
      text-align: center;
      background-color: #f8f9fa;
    }
    h2 {
      margin-top: 20px;
      color: #343a40;
    }
    table {
      margin-top: 20px;
      width: 80%;
      background-color: #ffffff;
      box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    }
    th {
      background-color: #cd4432;
      color: white;
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>My CD Collection</h2>
    <table class="table table-bordered table-striped">
      <thead>
        <tr>
          <th>Title</th>
          <th>Artist</th>
          <th>Price</th>
        </tr>
      </thead>
      <tbody>
        <!-- Filtrar por precio y ordenar por precio -->
        <xsl:for-each select="catalog/cd[price]">
          <tr>
            <td><xsl:value-of select="title"/></td>
            <td><xsl:value-of select="artist"/></td>
            <td>
              <!-- Si el precio es mayor a 10, agregar el emoji rojo -->
              <xsl:choose>
                <xsl:when test="price &gt; 10">
                  <xsl:value-of select="price"/> &#128308; <!-- Emoji rojo --> 
                </xsl:when>
                <xsl:otherwise>
                  <xsl:value-of select="price"/> &#128994; <!-- Emoji verde -->
                </xsl:otherwise>
              </xsl:choose>
            </td>
          </tr>
        </xsl:for-each>
      </tbody>
    </table>
  </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
