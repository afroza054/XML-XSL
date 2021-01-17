<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version='1.0'>
    <xsl:template match="/">
        <html>
            <head>
                <title>Pathao Details</title>
                <style>
                    body {
                        font-family: 'Segoe UI';
                    }
                </style>
            </head>
            <body>
                <h1>Pathao Ride Sharing</h1>
                <table border="1" cellspacing="0">
                    <tr>
                        <th>Customer Name</th>
                        <th>Pick up Time</th>
						<th>Destination</th>
						<th>Vehicle Type</th>
                        <th>Hire Charge</th>
                    </tr>
                    <xsl:for-each select="apps/app">
                        <tr>
                            <td>
                                
								<xsl:value-of select="customername" />
                            </td>
                            <td>
                               
								<xsl:value-of select="pickuptime" />
                            </td>
                            <td>
                                <xsl:value-of select="destination" />
                            </td>
							<td>
                                <xsl:value-of select="vehicletype" />
                            </td>
							<td>
                                <xsl:value-of select="@hirecharge" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
               
				@Ruma
                <h1>Sorting Hire Charge</h1>
                <table border="1" cellspacing="0">
                    <tr>
                        <th>Customer Name</th>
                        <th>Pick up Time</th>
						<th>Destination</th>
						<th>Vehicle Type</th>
                        <th>Hire Charge</th>
                    </tr>
                    <xsl:for-each select="apps/app">
                        <xsl:sort select="@hirecharge" data-type="number" order="descending" />
                        <tr>
							<td>   
							<xsl:value-of select="customername" />
                            </td>
                            <td>
                               
								<xsl:value-of select="pickuptime" />
                            </td>
                            <td>
                                <xsl:value-of select="destination" />
                            </td>
							<td>
                                <xsl:value-of select="vehicletype" />
                            </td>
							<td>
                                <xsl:value-of select="@hirecharge" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
				@Ruma
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>