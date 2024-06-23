<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <title>Wilhan Benrejdal's CV</title>
            <style>
                body {
                    font-family: Arial, sans-serif;
                    margin: 20px;
                }
                h1 {
                    color: #333;
                    text-align: center;
                }
                table {
                    width: 100%;
                    border-collapse: collapse;
                    margin-bottom: 20px;
                }
                th, td {
                    padding: 10px;
                    text-align: left;
                    border: 1px solid #ccc;
                }
                th {
                    background-color: #f2f2f2;
                }
                a {
                    color: #007bff;
                    text-decoration: none;
                }
                a:hover {
                    text-decoration: underline;
                }
            </style>
        </head>
        <body>
            <h1>Wilhan Benrejdal's CV</h1>
            <table>
                <tr>
                    <th colspan="2">Personal Information</th>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><xsl:value-of select="cv/personnel/nom"/></td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td><xsl:value-of select="cv/personnel/telephone"/></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><xsl:value-of select="cv/personnel/email"/></td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td><xsl:value-of select="cv/personnel/age"/></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><xsl:value-of select="cv/personnel/adresse"/></td>
                </tr>
                <tr>
                    <td>Driver's License</td>
                    <td><xsl:value-of select="cv/personnel/permis"/></td>
                </tr>
                
                <tr>
                    <th colspan="2">Objective</th>
                </tr>
                <tr>
                    <td>Title</td>
                    <td><xsl:value-of select="cv/objectif/titre"/></td>
                </tr>
                <tr>
                    <td>Contract</td>
                    <td><xsl:value-of select="cv/objectif/contrat"/></td>
                </tr>
                <tr>
                    <td>Rhythm</td>
                    <td><xsl:value-of select="cv/objectif/rythme"/></td>
                </tr>
                <tr>
                    <td>Availability</td>
                    <td><xsl:value-of select="cv/objectif/disponibilite"/></td>
                </tr>
                
                <tr>
                    <th colspan="2">Skills</th>
                </tr>
                <tr>
                    <td>Hard Skills</td>
                    <td><xsl:value-of select="cv/competences/hard"/></td>
                </tr>
                <tr>
                    <td>Languages</td>
                    <td><xsl:value-of select="cv/competences/langues"/></td>
                </tr>
                <tr>
                    <td>Soft Skills</td>
                    <td><xsl:value-of select="cv/competences/soft"/></td>
                </tr>
                
                <tr>
                    <th colspan="2">Interests</th>
                </tr>
                <tr>
                    <td>Interests</td>
                    <td><xsl:value-of select="cv/centres_interet/interet"/></td>
                </tr>
                
                <tr>
                    <th colspan="2">LinkedIn</th>
                </tr>
                <tr>
                    <td>LinkedIn</td>
                    <td><a href="{cv/linkedin/url}"><xsl:value-of select="cv/linkedin/url"/></a></td>
                </tr>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
