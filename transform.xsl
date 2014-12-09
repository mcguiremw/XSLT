<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>McGuire CS_3210 XSLT Assignment</title>
            </head>
            <body bgcolor="fafafa">
                <h1>
                    <b>Apartments to Rent</b>
                </h1>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="rental_listings">
        <xsl:for-each select="property">
            <center>
                <h2>
                    <xsl:value-of
                            select="concat(address/@number, ' ',
                            address/@street, ' ', address/@unit)"/>
                    <br></br>
                    <xsl:value-of
                            select="concat(address/@city, ' ',
                            address/@state, ' ', address/@zip)"/>
                </h2>
            </center>
            <h3>Features of this property:</h3>

            <table border="1">
                <th bgcolor="e8e8e8">Bedrooms</th>
                <th bgcolor="e8e8e8">Bathrooms</th>
                <th bgcolor="e8e8e8">SQ. FT.</th>
                <th bgcolor="e8e8e8">Parking Spots</th>
                <th bgcolor="e8e8e8">Pets Allowed</th>
                <th bgcolor="e8e8e8">Washer/Sryer Included</th>

                <tr>
                    <td align="center"><xsl:value-of
                            select="description/@nbeds"/></td>
                    <td align="center"><xsl:value-of
                            select="description/@nbaths"/></td>
                    <td align="center"><xsl:value-of
                            select="description/@sqft"/></td>
                    <td align="center"><xsl:value-of
                            select="description/@nparking_spots"/></td>
                    <td align="center"><xsl:value-of
                            select="description/@pet"/></td>
                    <td align="center"><xsl:value-of
                            select="description/@washer_drier"/></td>
                </tr>
            </table>

            <h3>The Application Process:</h3>
            <ol>
                <xsl:for-each select="application_process/step">
                    <li><xsl:value-of select="."/></li>
                </xsl:for-each>
            </ol>
            <h3>Comments:</h3>
            <xsl:value-of select="comments"/>
            <hr></hr>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>