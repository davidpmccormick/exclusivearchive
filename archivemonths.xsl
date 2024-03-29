<xsl:template match="archivemonths/entry">
	<xsl:variable name="yearmonth" select="substring(date/date/start,1,7)" />
	<xsl:variable name="thepreceding" select="substring(preceding-sibling::date/date/start,1,7)" />
	<xsl:if test="$yearmonth != $thepreceding">
		<a href="{$root}/news/archive/{$yearmonth}">
			<li>
				<xsl:call-template name="format-date">
					<xsl:with-param name="date" select="$yearmonth" />
					<xsl:with-param name="format" select="'M'" />
				</xsl:call-template>
			</li>
		</a>
	</xsl:if>
</xsl:template>