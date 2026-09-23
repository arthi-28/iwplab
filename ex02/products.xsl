<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Product List</title>

                <style>
                    table {
                        border-collapse: collapse;
                        width: 70%;
                        margin: 20px auto;
                    }

                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: center;
                    }

                    th {
                        background-color: #f2f2f2;
                    }

                    h2 {
                        text-align: center;
                    }
                </style>
            </head>

            <body>
                <h2>Product List</h2>

                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                    </tr>

                    <xsl:for-each select="/products/product">
                        <tr>
                            <td>
                                <xsl:value-of select="id"/>
                            </td>

                            <td>
                                <xsl:value-of select="name"/>
                            </td>

                            <td>
                                <xsl:value-of select="price"/>
                            </td>

                            <td>
                                <xsl:value-of select="quantity"/>
                            </td>
                        </tr>
                    </xsl:for-each>

                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
