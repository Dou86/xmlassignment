<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!--<xsl:output method="html" indent="yes"/>-->

  <xsl:template match="/">
    <html>
      <head>
        <title>Stockfile XML Assignment</title>
        <link rel="stylesheet" href="cssone.css"/>
      </head>
      <h1>
        Stocklist
      </h1>
      <body>
        <p>
          Woodstocks <b>CSV</b> to <b>XML</b> parser by <b>Dwain Doughty</b>
        </p>
        <p>
          <b>Style 1</b> -  List order faithful to original source file format.
        </p>
        <table width="60%" align="center">
          <tr>
            <th>Item Code</th>
            <th>Item Description</th>
            <th>Item Count</th>
            <th>On Order</th>
          </tr>
          <xsl:for-each select="Items/Item">
            <tr>
              <td>
                <xsl:value-of select="ItemCode"/>
              </td>
              <td>
                <xsl:value-of select="ItemDescription"/>
              </td>
              <td>
                <xsl:value-of select="ItemCount"/>
              </td>
              <td>
                <xsl:value-of select="OnOrder"/>
              </td>
              <br/>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>