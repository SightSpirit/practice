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
					<xsl:if test="string-length(@image) &gt; 0"><img src="{image}" alt="{image}" style="float:left; max-height:2em; width:auto;"/></xsl:if>
					<xsl:choose>
					<xsl:when test="string-length(@title) &gt; 20">
						<p class="fakelink"><xsl:value-of select="title"/></p>
					</xsl:when>
					<xsl:otherwise>
						<p class="fakelink"><xsl:value-of select="substring(title,1,20)"/></p>
					</xsl:otherwise>
					</xsl:choose>
					<xsl:choose>
					<xsl:when test="string-length(@description) &gt; 30">
						<p class="fakelink"><xsl:value-of select="description"/></p>
					</xsl:when>
					<xsl:otherwise>
						<p class="fakelink"><xsl:value-of select="substring(description,1,30)"/></p>
					</xsl:otherwise>
					</xsl:choose>
				</div>
			</xsl:for-each>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>
