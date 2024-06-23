<!-- cv_ru.xsl -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>

    <!-- Template principal pour le document HTML -->
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Резюме Массиниссы Буша</title>
                <style>
                    /* Styles CSS pour la mise en page */
                    body {
                        font-family: Arial, sans-serif;
                        line-height: 1.6;
                        margin: 20px;
                    }
                    h1 {
                        font-size: 24px;
                        border-bottom: 1px solid #ccc;
                        padding-bottom: 5px;
                    }
                    h2 {
                        font-size: 20px;
                        margin-top: 10px;
                        border-bottom: 1px solid #ccc;
                        padding-bottom: 3px;
                    }
                    .section {
                        margin-top: 20px;
                    }
                    .title {
                        font-weight: bold;
                    }
                    .contact-info {
                        margin-bottom: 10px;
                    }
                    .objective {
                        margin-top: 10px;
                    }
                    .job {
                        margin-top: 10px;
                    }
                    .skills {
                        margin-top: 10px;
                    }
                    .languages {
                        margin-top: 10px;
                    }
                    .programming-languages {
                        margin-top: 10px;
                    }
                    .interests {
                        margin-top: 10px;
                    }
                </style>
            </head>
            <body>
                <h1>Резюме Массиниссы Буша</h1>
                <div class="section personal-info">
                    <h2>Персональная информация</h2>
                    <div class="contact-info">
                        <p><span class="title">Имя:</span> <xsl:value-of select="cv/personalInfo/name"/></p>
                        <p><span class="title">Должность:</span> <xsl:value-of select="cv/personalInfo/title"/></p>
                        <p><span class="title">Адрес:</span> <xsl:value-of select="cv/personalInfo/contact/address"/></p>
                        <p><span class="title">Email:</span> <xsl:value-of select="cv/personalInfo/contact/email"/></p>
                        <p><span class="title">Телефон:</span> <xsl:value-of select="cv/personalInfo/contact/phone"/></p>
                    </div>
                    <div class="objective">
                                                <h2>Цель</h2>
                        <p><xsl:value-of select="cv/personalInfo/objective"/></p>
                    </div>
                    <div class="driving-license">
                        <h2>Водительские права</h2>
                        <p><xsl:value-of select="cv/personalInfo/drivingLicense"/></p>
                    </div>
                </div>
                
                <div class="section education">
                    <h2>Образование</h2>
                    <xsl:for-each select="cv/education/school">
                        <div class="school">
                            <p><span class="title">Степень:</span> <xsl:value-of select="degree"/></p>
                            <p><span class="title">Годы:</span> <xsl:value-of select="years"/></p>
                            <p><span class="title">Учебное заведение:</span> <xsl:value-of select="institution"/></p>
                        </div>
                    </xsl:for-each>
                </div>

                <div class="section experience">
                    <h2>Опыт работы</h2>
                    <xsl:for-each select="cv/experience/job">
                        <div class="job">
                            <p><span class="title">Должность:</span> <xsl:value-of select="title"/></p>
                            <p><span class="title">Годы:</span> <xsl:value-of select="years"/></p>
                            <div class="details">
                                <p><span class="title">Обязанности:</span></p>
                                <ul>
                                    <xsl:for-each select="details/task">
                                        <li><xsl:value-of select="."/></li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                        </div>
                    </xsl:for-each>
                </div>

                <div class="section skills">
                    <h2>Навыки</h2>
                    <div class="soft-skills">
                        <h3>Мягкие навыки</h3>
                        <ul>
                            <xsl:for-each select="cv/skills/softSkills/skill">
                                <li><xsl:value-of select="."/></li>
                            </xsl:for-each>
                        </ul>
                    </div>
                    <div class="technical-skills">
                        <h3>Технические навыки</h3>
                        <ul>
                            <xsl:for-each select="cv/skills/technicalSkills/skill">
                                <li><xsl:value-of select="."/></li>
                            </xsl:for-each>
                        </ul>
                    </div>
                </div>

                <div class="section languages">
                    <h2>Языки</h2>
                    <ul>
                        <xsl:for-each select="cv/languages/language">
                            <li><xsl:value-of select="name"/> - <xsl:value-of select="level"/></li>
                        </xsl:for-each>
                    </ul>
                </div>

                <div class="section programming-languages">
                    <h2>Языки программирования</h2>
                    <ul>
                        <xsl:for-each select="cv/programmingLanguages/language">
                            <li><xsl:value-of select="."/></li>
                        </xsl:for-each>
                    </ul>
                </div>

                <div class="section interests">
                    <h2>Интересы</h2>
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
