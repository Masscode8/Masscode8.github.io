<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>CV de Massinissa Boucha</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 20px;
                        line-height: 1.6;
                    }
                    .section {
                        margin-bottom: 20px;
                    }
                    h1, h2 {
                        background-color: #f0f8ff;
                        padding: 10px;
                        border: 1px solid #ccc;
                    }
                    .contact-info, .skills, .languages, .interests, .programming-languages {
                        margin-left: 20px;
                    }
                    .job-details, .education-details {
                        margin-left: 20px;
                    }
                </style>
            </head>
            <body>
                <h1><xsl:value-of select="cv/personalInfo/name"/></h1>
                <p><strong><xsl:value-of select="cv/personalInfo/title"/></strong></p>
                <div class="section contact-info">
                    <h2>Contact Information</h2>
                    <p><strong>Address:</strong> <xsl:value-of select="cv/personalInfo/contact/address"/></p>
                    <p><strong>Email:</strong> <xsl:value-of select="cv/personalInfo/contact/email"/></p>
                    <p><strong>Phone:</strong> <xsl:value-of select="cv/personalInfo/contact/phone"/></p>
                    <p><strong>Objective:</strong> <xsl:value-of select="cv/personalInfo/objective"/></p>
                    <p><strong>Driving License:</strong> <xsl:value-of select="cv/personalInfo/drivingLicense"/></p>
                </div>
                
                <div class="section education">
                    <h2>Education</h2>
                    <xsl:for-each select="cv/education/school">
                        <div class="education-details">
                            <p><strong>Degree:</strong> <xsl:value-of select="degree"/></p>
                            <p><strong>Years:</strong> <xsl:value-of select="years"/></p>
                            <p><strong>Institution:</strong> <xsl:value-of select="institution"/></p>
                        </div>
                    </xsl:for-each>
                </div>
                
                <div class="section experience">
                    <h2>Experience</h2>
                    <xsl:for-each select="cv/experience/job">
                        <div class="job-details">
                            <p><strong>Title:</strong> <xsl:value-of select="title"/></p>
                            <p><strong>Years:</strong> <xsl:value-of select="years"/></p>
                            <ul>
                                <xsl:for-each select="details/task">
                                    <li><xsl:value-of select="."/></li>
                                </xsl:for-each>
                            </ul>
                        </div>
                    </xsl:for-each>
                </div>
                
                <div class="section skills">
                    <h2>Skills</h2>
                    <h3>Soft Skills</h3>
                    <ul>
                        <xsl:for-each select="cv/skills/softSkills/skill">
                            <li><xsl:value-of select="."/></li>
                        </xsl:for-each>
                    </ul>
                    <h3>Technical Skills</h3>
                    <ul>
                        <xsl:for-each select="cv/skills/technicalSkills/skill">
                            <li><xsl:value-of select="."/></li>
                        </xsl:for-each>
                    </ul>
                </div>

                <div class="section languages">
                    <h2>Languages</h2>
                    <ul>
                        <xsl:for-each select="cv/languages/language">
                            <li><strong><xsl:value-of select="name"/>:</strong> <xsl:value-of select="level"/></li>
                        </xsl:for-each>
                    </ul>
                </div>

                <div class="section programming-languages">
                    <h2>Programming Languages</h2>
                    <ul>
                        <xsl:for-each select="cv/programmingLanguages/language">
                            <li><xsl:value-of select="."/></li>
                        </xsl:for-each>
                    </ul>
                </div>

                <div class="section interests">
                    <h2>Interests</h2>
                    <ul>
                        <xsl:for-each select="cv/interests/interest">
                            <li><xsl:value-of select="."/></li>
                        </xsl:for-each>
                    </ul>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
