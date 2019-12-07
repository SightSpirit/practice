<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="https://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
		<head>
			<style>
				* { background-color: #f5f5b3; font-family: sans-serif;}
				
				.fakelink {
					color: #337ab7;
					text-decoration: none;
				}

				.fakelink:hover {
					cursor:pointer;
					color: #23527c;
					text-decoration:underline;
				}
				
				div { margin-bottom: 1em; }
			</style>
		</head>
		<body style="background-color:#f5f5b3;">
			<xsl:for-each select="posts/post">
				<div>
					<xsl:if test="string-length(@image) &gt; 0"><img src="{image}" alt="{imgalt}" style="float:left; max-width:45px; max-height:2em; width:auto; height:auto;"/></xsl:if>
					<xsl:choose>
					<xsl:when test="string-length(@title) &lt; 26">
						<p class="fakelink"><xsl:value-of select="title"/></p>
					</xsl:when>
					<xsl:otherwise>
						<p class="fakelink" title="{title}"><xsl:value-of select="concat(substring(title,1,25),&hellip;)"/></p>
					</xsl:otherwise>
					</xsl:choose>
					<xsl:choose>
					<xsl:when test="string-length(@description) &lt; 41">
						<p><xsl:value-of select="description"/></p>
					</xsl:when>
					<xsl:otherwise>
						<p><xsl:value-of select="concat(substring(description,1,40),&hellip;)"/></p>
					</xsl:otherwise>
					</xsl:choose>
				</div>
			</xsl:for-each>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>
