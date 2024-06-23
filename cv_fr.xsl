<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Template principal qui correspond à la racine du document -->
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="UTF-8"/>
        <title>CV de Massinissa BOUCHA</title>
        <link rel="stylesheet" type="text/css" href="styles.css"/>
      </head>
      <body>
        <div class="container">
          <h1>CV de Massinissa BOUCHA</h1>
          
          <!-- Section Informations Personnelles -->
          <div class="section">
            <h2>Informations Personnelles</h2>
            <xsl:apply-templates select="cv/personalInfo"/>
          </div>
          
          <!-- Section Education -->
          <div class="section">
            <h2>Education</h2>
            <xsl:apply-templates select="cv/education"/>
          </div>
          
          <!-- Section Expérience Professionnelle -->
          <div class="section">
            <h2>Expérience Professionnelle</h2>
            <xsl:apply-templates select="cv/experience"/>
          </div>
          
          <!-- Section Compétences -->
          <div class="section">
            <h2>Compétences</h2>
            <xsl:apply-templates select="cv/skills"/>
          </div>
          
          <!-- Section Langues -->
          <div class="section">
            <h2>Langues</h2>
            <xsl:apply-templates select="cv/languages"/>
          </div>
          
          <!-- Section Langages de Programmation -->
          <div class="section">
            <h2>Langages de Programmation</h2>
            <xsl:apply-templates select="cv/programmingLanguages"/>
          </div>
          
          <!-- Section Intérêts -->
          <div class="section">
            <h2>Intérêts</h2>
            <xsl:apply-templates select="cv/interests"/>
          </div>
          
        </div>
      </body>
    </html>
  </xsl:template>
  
  <!-- Template pour les informations personnelles -->
  <xsl:template match="personalInfo">
    <p><strong>Nom:</strong> <xsl:value-of select="name"/></p>
    <p><strong>Titre:</strong> <xsl:value-of select="title"/></p>
    <p><strong>Adresse:</strong> <xsl:value-of select="contact/address"/></p>
    <p><strong>Email:</strong> <xsl:value-of select="contact/email"/></p>
    <p><strong>Téléphone:</strong> <xsl:value-of select="contact/phone"/></p>
    <p><strong>Objectif:</strong> <xsl:value-of select="objective"/></p>
  </xsl:template>
  
  <!-- Template pour l'éducation -->
  <xsl:template match="education">
    <xsl:for-each select="degree">
      <p><xsl:value-of select="."/></p>
    </xsl:for-each>
  </xsl:template>
  
  <!-- Template pour l'expérience professionnelle -->
  <xsl:template match="experience">
    <xsl:for-each select="job">
      <h3><xsl:value-of select="title"/> (<xsl:value-of select="years"/>)</h3>
      <ul>
        <xsl:for-each select="details/task">
          <li><xsl:value-of select="."/></li>
        </xsl:for-each>
      </ul>
    </xsl:for-each>
  </xsl:template>
  
  <!-- Template pour les compétences -->
  <xsl:template match="skills">
    <h3>Soft Skills</h3>
    <p><xsl:value-of select="softSkills/skill"/></p>
    <h3>Technical Skills</h3>
    <ul>
      <xsl:for-each select="technicalSkills/skill">
        <li><xsl:value-of select="."/></li>
      </xsl:for-each>
    </ul>
  </xsl:template>
  
  <!-- Template pour les langues -->
  <xsl:template match="languages">
    <ul>
      <xsl:for-each select="language">
        <li><xsl:value-of select="."/></li>
      </xsl:for-each>
    </ul>
  </xsl:template>
  
  <!-- Template pour les langages de programmation -->
  <xsl:template match="programmingLanguages">
    <ul>
      <xsl:for-each select="language">
        <li><xsl:value-of select="."/></li>
      </xsl:for-each>
    </ul>
  </xsl:template>
  
  <!-- Template pour les intérêts -->
  <xsl:template match="interests">
    <ul>
      <xsl:for-each select="interest">
        <li><xsl:value-of select="."/></li>
      </xsl:for-each>
    </ul>
  </xsl:template>
  
</xsl:stylesheet>
