<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html lang="en">
        <head>
            <title>Employees</title>
        </head>
        <body>
            <h1>Company Employees</h1>
            <table border="1">
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Phone Numbers</th>
                <th>Addressess</th>
            </tr>
            <xsl:for-each select="Employees/Employee">
                <tr>
                    <td><xsl:value-of select="Name"/></td>
                    <td><xsl:value-of select="Email"/></td>
                    <td>
                        <xsl:for-each select="Phones/Phone">
                            (<xsl:value-of select="@type"/>: <xsl:value-of select="."/>)
                        </xsl:for-each>
                    </td>
                    <td>
                        <xsl:for-each select="Addresses/Address">
                            (<xsl:value-of select="."/>)
                        </xsl:for-each>
                    </td>
                </tr>
            </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>