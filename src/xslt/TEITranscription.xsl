<?xml version="1.0" encoding="UTF-8"?>
<!-- St. Gall Stylesheet for displaying the transcription of a single page in the manuscript-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0">
   
 
    <xsl:param name="found" select="false" />
    <xsl:output method="html" />
    <xsl:template match="/" name="generateWorkTranscription">
   
     <xsl:param name="count" />
   		<xsl:param name="ark" />
   		 <div class="stgall-tan_divider">
                        
            <br />
            <div class="stgall-transcriptionSource">
				
				 <xsl:for-each select="/tei:TEI/tei:text/tei:body/tei:div[@type = 'transcription']/tei:div">
					
                    <xsl:if test="tei:ab/tei:pb[normalize-space(@xml:id)=$ark]">
           
                        <xsl:variable name="workCount" select="@n" />
                        <xsl:if test="$count = '' or $workCount = $count">

                                        <div class="stgall-transcription-title">
                                           
                                           
                                            <!-- work title-->
                                            <span> 
                                                [        
                                                <xsl:value-of select="@n" />
                                                ] 
                                            </span>
                                            <b>
                                                <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:locus" />
                                                :        
                                                <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:title" />
                                            </b>
                                        </div>
                                        <div class="stgall-transcription-source">
                                            <xsl:if test="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl or /tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:msItem/tei:listBibl">
                                                <xsl:choose>
                                                    <xsl:when test="not(/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:msItem)">
                                                        <xsl:choose>
                                                            <xsl:when test="contains(/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='s'],'PL')">
                                                                (ed. 
                                                                <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='s']" />
                                                                <xsl:text></xsl:text>
                                                                <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='vol']" />
                                                                <xsl:text>: </xsl:text>
                                                                <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='col']" />
                                                                <xsl:text>)</xsl:text>
                                                            </xsl:when>
                                                            <xsl:when test="contains(/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='s'],'AASS')">
                                                                (ed. 
                                                                <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='s']" />
                                                                <xsl:text></xsl:text>
                                                                <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='vol']" />
                                                                <xsl:text>: </xsl:text>
                                                                <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='col']" />
                                                                <xsl:text>)</xsl:text>
                                                            </xsl:when>
                                                            <xsl:when test="contains(/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='s'],'MGH')">
                                                                (ed. 
                                                                <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:editor" />
                                                                <xsl:text>, </xsl:text>
                                                                <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='s']" />
                                                                <xsl:text></xsl:text>
                                                                <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='vol']" />
                                                                <xsl:text>: </xsl:text>
                                                                <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='pp']" />
                                                                <xsl:text>)</xsl:text>
                                                            </xsl:when>
                                                            <xsl:otherwise>
                                                                <xsl:text> (ed. </xsl:text>
                                                                <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:editor" />
                                                                <xsl:text>, </xsl:text>
                                                                <xsl:choose>
                                                                    <xsl:when test="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='m'] and /tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='s']">
                                                                        <i>
                                                                            <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='m']" />
                                                                        </i>
                                                                        <xsl:text>, </xsl:text>
                                                                        <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='s']" />
                                                                        <xsl:if test="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='vol']">
                                                                            <xsl:text></xsl:text>
                                                                            <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='vol']" />
                                                                        </xsl:if>
                                                                    </xsl:when>
                                                                    <xsl:when test="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='m'] and not(/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='s'])">
                                                                        <i>
                                                                            <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='m']" />
                                                                        </i>
                                                                        <xsl:if test="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='pp']">
                                                                            <xsl:text>, </xsl:text>
                                                                            <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='pp']" />
                                                                        </xsl:if>
                                                                    </xsl:when>
                                                                </xsl:choose>
                                                                <xsl:text>)</xsl:text>
                                                            </xsl:otherwise>
                                                        </xsl:choose>
                                                    </xsl:when>
                                                    <xsl:when test="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:msItem">
                                                        <xsl:choose>
                                                            <xsl:when test="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']">
                                                                <xsl:choose>
                                                                    <xsl:when test="contains(/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='s'],'PL')">
                                                                        (ed. 
                                                                        <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='s']" />
                                                                        <xsl:text></xsl:text>
                                                                        <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='vol']" />
                                                                        <xsl:text>: </xsl:text>
                                                                        <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='col']" />
                                                                        <xsl:text>)</xsl:text>
                                                                    </xsl:when>
                                                                    <xsl:when test="contains(/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='s'],'AASS')">
                                                                        (ed. 
                                                                        <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='s']" />
                                                                        <xsl:text></xsl:text>
                                                                        <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='vol']" />
                                                                        <xsl:text>: </xsl:text>
                                                                        <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='col']" />
                                                                        <xsl:text>)</xsl:text>
                                                                    </xsl:when>
                                                                    <xsl:when test="contains(/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='s'],'MGH')">
                                                                        <xsl:text> (ed. </xsl:text>
                                                                        <xsl:if test="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:editor">
                                                                            <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:editor" />
                                                                            <xsl:text>, </xsl:text>
                                                                        </xsl:if>
                                                                        <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='s']" />
                                                                        <xsl:text></xsl:text>
                                                                        <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='vol']" />
                                                                        <xsl:text>: </xsl:text>
                                                                        <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='pp']" />
                                                                        <xsl:text>)</xsl:text>
                                                                    </xsl:when>
                                                                    <xsl:otherwise>
                                                                        <xsl:if test="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource'] or /tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:msItem/tei:listBibl/tei:biblStruct[@type='transcriptionSource']">
                                                                            <xsl:text> (ed. </xsl:text>
                                                                        </xsl:if>
                                                                        <xsl:if test="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:editor">
                                                                            <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:editor" />
                                                                            <xsl:text>, </xsl:text>
                                                                        </xsl:if>
                                                                        <xsl:choose>
                                                                            <xsl:when test="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='m'] and /tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='s']">
                                                                                <i>
                                                                                    <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='m']" />
                                                                                </i>
                                                                                <xsl:text>, </xsl:text>
                                                                                <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='s']" />
                                                                                <xsl:if test="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='vol']">
                                                                                    <xsl:text></xsl:text>
                                                                                    <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='vol']" />
                                                                                </xsl:if>
                                                                            </xsl:when>
                                                                            <xsl:when test="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='m'] and not(/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='s'])">
                                                                                <i>
                                                                                    <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:title[@level='m']" />
                                                                                </i>
                                                                            </xsl:when>
                                                                            <xsl:when test="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='col']">
                                                                                <xsl:text>, </xsl:text>
                                                                                <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='col']" />
                                                                            </xsl:when>
                                                                            <xsl:when test="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='pp']">
                                                                                <xsl:text>, </xsl:text>
                                                                                <xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $workCount]/tei:listBibl/tei:biblStruct[@type='transcriptionSource']/tei:monogr/tei:imprint/tei:biblScope[@type='pp']" />
                                                                            </xsl:when>
                                                                        </xsl:choose>
                                                                        <xsl:text>)</xsl:text>
                                                                    </xsl:otherwise>
                                                                </xsl:choose>
                                                            </xsl:when>
                                                            <xsl:otherwise>
                                                                <xsl:text> (For transcription source, see bibliography)</xsl:text>
                                                            </xsl:otherwise>
                                                        </xsl:choose>
                                                    </xsl:when>
                                                </xsl:choose>
                                            </xsl:if>
                                        </div>
                                        <!-- above added by RMP 10/3/2011 to identify the edition of
                                        the transcription in question -->
                                        <br />
                                        <!-- Transcription section starts here-->
                                        <div class="stgall-transcription-text">
                                            <xsl:apply-templates select="/tei:TEI/tei:text/tei:body/tei:div[@type = 'transcription']/tei:div[@n = $workCount]">
												<xsl:with-param name="ark" select="$ark" />
											</xsl:apply-templates>
                                            <!-- overlaping text in 2 works-->
											<br/>
											<br/>
											
                                            <xsl:if test="tei:ab/tei:pb[normalize-space(@xml:id)=$ark] and ( not($count ) or @n = $count ) ">
                                                <xsl:variable select="@n + 1" name="nextCount" />
                                                <xsl:if test="tei:ab/tei:pb[normalize-space(@xml:id)=$ark]/@n  =  /tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = @n]/tei:locus/@to and tei:ab/tei:pb[normalize-space(@xml:id)=$ark]/@n  =  /tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem[@n = $nextCount]/tei:locus/@from">
                                                    <xsl:apply-templates select="/tei:TEI/tei:text/tei:body/tei:div[@type = 'transcription']/tei:div[@n = $nextCount]" mode="forward"></xsl:apply-templates>
                                                </xsl:if>
                                            </xsl:if>
                                        </div>
                                      
                                    </xsl:if>
                    </xsl:if>
				 </xsl:for-each>
			</div>
		 </div>
    </xsl:template>
    <xsl:template match="/tei:TEI/tei:text/tei:body/tei:div/tei:div">
    <xsl:param name="ark" />
    
        <xsl:apply-templates> 
			<xsl:with-param name="ark" select="$ark" />
		</xsl:apply-templates>
    </xsl:template>
    <xsl:template match="tei:ab">
		<xsl:param name="ark" />
        <xsl:apply-templates>
			<xsl:with-param name="ark" select="$ark" />
		</xsl:apply-templates>
    </xsl:template>
    <xsl:template match="tei:lb">
		
		<xsl:param name="ark" />
        <xsl:if test="count(./preceding-sibling::tei:pb[1][normalize-space(@xml:id) = $ark] ) = 1">
            <br />
        </xsl:if>
    </xsl:template>
    <xsl:template match="tei:cb">
		<xsl:param name="ark" />
        <xsl:if test="count(./preceding-sibling::tei:pb[1][normalize-space(@xml:id) = $ark] ) = 1">
            <br />
            <br />
        </xsl:if>
    </xsl:template>
    <xsl:template match="tei:hi">
		<xsl:param name="ark" />
        <xsl:if test="count(./preceding-sibling::tei:pb[1][normalize-space(@xml:id) = $ark] ) = 1">
            <br />
            <xsl:if test="@rend='red'">
                <span style="color:red">
                    <xsl:value-of select="." />
                </span>
            </xsl:if>
            <xsl:if test="@rend='green'">
                <span style="color:green">
                    <xsl:value-of select="." />
                </span>
            </xsl:if>
        </xsl:if>
    </xsl:template>
    <xsl:template match="tei:pb">
		<xsl:param name="ark" />
        <xsl:if test="count(./preceding-sibling::tei:pb[1][normalize-space(@xml:id) = $ark] ) = 1">
            <br />
        </xsl:if>
    </xsl:template>
    <xsl:template match="text()">
		<xsl:param name="ark" />
        <xsl:if test="count(./preceding-sibling::tei:pb[1][normalize-space(@xml:id) = $ark] ) = 1">
            <xsl:value-of select="." />
        </xsl:if>
    </xsl:template>
    <xsl:template match="comment()"></xsl:template>
    
</xsl:stylesheet>