<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : MyXSL.xsl
    Created on : September 20, 2022, 3:55 PM
    Author     : phien
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="travel.css"></link>
                <title>My Travel</title>
                
            </head>
            <body>
                <h1 align="center" style="color: darkorange;">My travel</h1>
                <h3>
                    <ul>  
                        <xsl:for-each select="Locations/location">
                            <li>
                                <xsl:value-of select="description"/>
                                
                                <table border="3" align="center" style="width:90%">
                                    <tr>
                                        <th style="width:10%">NO.</th>
                                        <th style="width:20%">Name</th>
                                        <th style="width:40%">Image</th>
                                        <th style="width:30%">Room type</th>
                                    </tr>
                                    <xsl:for-each select="hotels/hotel">
                                        <tr>
                                            <td align="center">
                                                <xsl:value-of select="nameHotel"/>
                                            </td>
                                            <td align="center">
                                                <xsl:value-of select="descriptionHotel"/>
                                            </td>
                                            <td align="center"> 
                                                <img src="{imgurl}"/>
                                            </td>
                                            <td >
                                                <ul>
                                                    <xsl:for-each select="roomType">
                                                        <li>
                                                            <xsl:value-of select="name"/>
                                                            <table border="1" align="center">
                                                                <tr>
                                                                    <th style="width:10%">Price</th>
                                                                    <th style="width:20%">Status</th>
                                                                </tr>
                                                                <xsl:for-each select="rooms/room">
                                                                    <tr>
                                                                        <td align="center"> 
                                                                            <xsl:value-of select="Price"/>           
                                                                        </td>
                                                                        <td align="center">
                                                                            <xsl:value-of select="Status"/>
                                                                        </td>
                                                                    </tr>
                                                                </xsl:for-each>
                                                            </table>
                                                        </li>
                                                    </xsl:for-each>
                                                </ul>                                    
                                            </td>   
                                        </tr>
                                    </xsl:for-each>
                                </table>
                            </li>
                        </xsl:for-each>
                    </ul>
                </h3>
  
                
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
