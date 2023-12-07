<?xml version="1.0" encoding="UTF-8"?>

<!-- St. Gall Stylesheet for the Expanded Contents page of a work within a manuscript-->
<!-- edited by Richard Pollard to include bibliography 10/2010 -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0">
   
   
    <xsl:output method="html" />
    <xsl:template match="/" name="generateSubWorkContent">

 <xsl:param name="count" />
       

           
         

                    <DIV
                        class="stgall-tan_divider">
                       

                        <div class="book-level-section">                            <!-- Book-Level -->
                            <xsl:for-each
                                select="tei:msItem">
                                <div class="book-level-item">
	                                <div class="book-title">
										<xsl:variable name="newTileNumber" select="translate(@n,'_','.')"/>
	                                    <xsl:value-of select="$newTileNumber" /> : &#032;
	                                    <!-- This link goes to the page of the transcription that is the
	                                    first for this section -->
	                                    <span class="stgall-float">
	                                        <xsl:value-of select="tei:locus" />
	                                    </span>
									</div>
									
	
	                                    <xsl:choose>
	                                        <xsl:when test="tei:title">
	
	                                            <p>
	                                                <!--a target="_top"
	                                                    href="/stgallmss/viewItem.do?xmlstylesheet=TEITranscription.xsl&amp;count={@n}&amp;pageArk={tei:locus/@facs}&amp;fileId={$fileId}">
	                                                    <xsl:value-of select="tei:title" />
	                                                </a-->
	                                                 <xsl:value-of select="tei:title" />
	                                            </p>
	
												<dl class="document-metadata document__list-metadata-group">
	
	                                            <xsl:if
	                                                test="tei:rubric">
	                                               
	                                                    <dt class="document__list-metadata-key document__list-metadata-key--ursus blacklight-date_created_tesim">Rubric: </dt>
	                                                   <dd class="document__list-metadata-value document__list-metadata-value--ursus blacklight-date_created_tesim"> <xsl:value-of select="tei:rubric" /> </dd>
	                                               
	                                            </xsl:if>
	                                            <xsl:if
	                                                test="tei:incipit">
	                                                
	                                                    <dt class="document__list-metadata-key document__list-metadata-key--ursus blacklight-date_created_tesim">Incipit: </dt>
	                                                   <dd class="document__list-metadata-value document__list-metadata-value--ursus blacklight-date_created_tesim"> <xsl:value-of select="tei:incipit" /> </dd>
	                                                
	                                            </xsl:if>
	                                            <xsl:if
	                                                test="tei:explicit">
	                                                
	                                                    <dt class="document__list-metadata-key document__list-metadata-key--ursus blacklight-date_created_tesim">Explicit: </dt>
	                                                   <dd class="document__list-metadata-value document__list-metadata-value--ursus blacklight-date_created_tesim"> <xsl:value-of select="tei:explicit" /> </dd>
	                                               
	                                            </xsl:if>
	                                            <xsl:if
	                                                test="tei:incipit2">
	                                               
	                                               
	                                                    <dt class="document__list-metadata-key document__list-metadata-key--ursus blacklight-date_created_tesim">Incipit: </dt>
	                                                   <dd class="document__list-metadata-value document__list-metadata-value--ursus blacklight-date_created_tesim"> <xsl:value-of select="tei:incipit2" /> </dd>
	                                                
	                                            </xsl:if>
	                                            <xsl:if
	                                                test="tei:explicit2">
	                                               
	                                                    <dt class="document__list-metadata-key document__list-metadata-key--ursus blacklight-date_created_tesim">Explicit: </dt>
	                                                   <dd class="document__list-metadata-value document__list-metadata-value--ursus blacklight-date_created_tesim"> <xsl:value-of select="tei:explicit2" /> </dd>
	                                                
	                                            </xsl:if>
	                                            <xsl:if
	                                                test="tei:note">
	                                               
	                                                    <dt class="document__list-metadata-key document__list-metadata-key--ursus blacklight-date_created_tesim">Remarks: </dt>
	                                                   <dd class="document__list-metadata-value document__list-metadata-value--ursus blacklight-date_created_tesim"> <xsl:apply-templates select="tei:note" /> </dd>
	                                                
	                                            </xsl:if>
												  </dl>
	                                            <ol class="WorkBibliography">
	                                                <xsl:if test="tei:listBibl">
	                                                    <xsl:for-each select="tei:listBibl">
	                                                        <li>
	                                                            <!-- print in bold the listBibl heading -->
	                                                            <b>
	                                                                <xsl:value-of
	                                                                    select="normalize-space(tei:head)" />:</b>
	                                                            <!-- for each citation, do the following -->
	                                                            <xsl:for-each select="tei:biblStruct">
	                                                                <!-- each citation gets its own
	                                                                paragraph -->
	                                                                <p>
	                                                                    <xsl:call-template
	                                                                        name="lisabibliography" />
	                                                                </p>
	                                                            </xsl:for-each>
	
	                                                            <xsl:for-each select="tei:bibl">
	                                                                <p>
	                                                                    <xsl:call-template
	                                                                        name="lisaBibl" />
	                                                                </p>
	                                                            </xsl:for-each>
	                                                            <!-- end citation -->
	                                                        </li>
	                                                    </xsl:for-each>
	                                                </xsl:if>
	                                            </ol>
	
	                                        </xsl:when>
	
	                                        <xsl:otherwise>
	                                            <dl class="document-metadata document__list-metadata-group">
	                                            <xsl:if test="tei:rubric">
	                                               
	                                                    <dt class="document__list-metadata-key document__list-metadata-key--ursus blacklight-date_created_tesim">Rubric: </dt>
	                                                    <dd class="document__list-metadata-value document__list-metadata-value--ursus blacklight-date_created_tesim">
	                                                    <xsl:value-of select="tei:rubric" />
	                                                    </dd>
	                                               
	                                            </xsl:if>
	                                            <xsl:if
	                                                test="tei:incipit">
	                                               
	                                                    <dt class="document__list-metadata-key document__list-metadata-key--ursus blacklight-date_created_tesim">Incipit: </dt>
	                                                   <dd class="document__list-metadata-value document__list-metadata-value--ursus blacklight-date_created_tesim"> <xsl:value-of select="tei:incipit" /> </dd>
	                                                
	                                            </xsl:if>
	                                            <xsl:if
	                                                test="tei:explicit">
	                                               
	                                                    <dt class="document__list-metadata-key document__list-metadata-key--ursus blacklight-date_created_tesim">Explicit: </dt>
	                                                   <dd class="document__list-metadata-value document__list-metadata-value--ursus blacklight-date_created_tesim"> <xsl:value-of select="tei:explicit" /> </dd>
	                                               
	                                            </xsl:if>
	                                            <xsl:if
	                                                test="tei:incipit2">
	                                                
	                                               
	                                                    <dt class="document__list-metadata-key document__list-metadata-key--ursus blacklight-date_created_tesim">Incipit: </dt>
	                                                   <dd class="document__list-metadata-value document__list-metadata-value--ursus blacklight-date_created_tesim"> <xsl:value-of select="tei:incipit2" /> </dd>
	                                                
	                                            </xsl:if>
	                                            <xsl:if
	                                                test="tei:explicit2">
	                                               
	                                                    <dt class="document__list-metadata-key document__list-metadata-key--ursus blacklight-date_created_tesim">Explicit: </dt>
	                                                   <dd class="document__list-metadata-value document__list-metadata-value--ursus blacklight-date_created_tesim"> <xsl:value-of select="tei:explicit2" /> </dd>
	                                                
	                                            </xsl:if>
	                                            <xsl:if
	                                                test="tei:note">
	                                               
	                                                    <dt class="document__list-metadata-key document__list-metadata-key--ursus blacklight-date_created_tesim">Remarks: </dt>
	                                                    <dd class="document__list-metadata-value document__list-metadata-value--ursus blacklight-date_created_tesim"> <xsl:apply-templates select="tei:note" /> </dd>
	                                                
	                                            </xsl:if>
	                                            </dl>
	                                            <p>
	                                                <xsl:if test="tei:listBibl">
	                                                    <xsl:for-each select="tei:listBibl">
	                                                        <li>
	                                                            <!-- print in bold the listBibl heading -->
	                                                            <b>
	                                                                <xsl:value-of
	                                                                    select="normalize-space(tei:head)" />
	        :</b>
	                                                            <!-- for each citation, do the following -->
	
	
	                                                            <xsl:for-each select="tei:biblStruct">
	                                                                <!-- each citation gets its own
	                                                                paragraph -->
	                                                                <p>
	                                                                    <xsl:call-template
	                                                                        name="lisabibliography" />
	                                                                </p>
	                                                            </xsl:for-each>
	
	                                                            <xsl:for-each select="tei:bibl">
	                                                                <p>
	                                                                    <xsl:call-template
	                                                                        name="lisaBibl" />
	                                                                </p>
	                                                            </xsl:for-each>
	                                                            <!-- end citation -->
	                                                        </li>
	                                                    </xsl:for-each>
	                                                </xsl:if>
	                                            </p>
	
	                                        </xsl:otherwise>
	                                    </xsl:choose>
	                              
	
	                                <div class="chapter-level-section">                                    <!--Chapter-Level-->

                                    <xsl:for-each select="tei:msItem">
                                        <div class="chapter-level-item">
											<span class="locus">
											 <xsl:value-of select="tei:locus" />
											</span>
                                            <!--a target="_top"
                                                href="/stgallmss/viewItem.do?xmlstylesheet=TEITranscription.xsl&amp;count={@n}&amp;pageArk={tei:locus/@facs}&amp;fileId={$fileId}">
                                               
                                            </a-->
        :                                                                                          <!--
                                            This link goes to the page of the transcription that is
                                            the first for this sub-section-->

                                            <xsl:choose>
                                                <xsl:when test="tei:title">
                                                   <span class="chapter-item-title">
                                                    <xsl:value-of select="tei:title" />
                                                   </span>
                                                    <dl class="document-metadata document__list-metadata-group">
                                                    <xsl:if test="tei:rubric">
                                               
                                                    <dt class="document__list-metadata-key document__list-metadata-key--ursus blacklight-date_created_tesim">Rubric: </dt>
                                                    <dd class="document__list-metadata-value document__list-metadata-value--ursus blacklight-date_created_tesim">
                                                    <xsl:value-of select="tei:rubric" />
                                                    </dd>
                                               
                                            </xsl:if>
                                            <xsl:if
                                                test="tei:incipit">
                                               
                                                    <dt class="document__list-metadata-key document__list-metadata-key--ursus blacklight-date_created_tesim">Incipit: </dt>
                                                   <dd class="document__list-metadata-value document__list-metadata-value--ursus blacklight-date_created_tesim"> <xsl:value-of select="tei:incipit" /> </dd>
                                                
                                            </xsl:if>
                                            <xsl:if
                                                test="tei:explicit">
                                               
                                                    <dt class="document__list-metadata-key document__list-metadata-key--ursus blacklight-date_created_tesim">Explicit: </dt>
                                                   <dd class="document__list-metadata-value document__list-metadata-value--ursus blacklight-date_created_tesim"> <xsl:value-of select="tei:explicit" /> </dd>
                                               
                                            </xsl:if>
                                                    </dl>
                                                    <p>
                                                        <xsl:if test="tei:listBibl">
                                                            <xsl:for-each select="tei:listBibl">
                                                                <li>
                                                                    <!-- print in bold the listBibl
                                                                    heading -->
                                                                    <b>
                                                                        <xsl:value-of
                                                                            select="normalize-space(tei:head)" />
        :</b>
                                                                    <!-- for each citation, do the
                                                                    following -->


                                                                    <xsl:for-each
                                                                        select="tei:biblStruct">
                                                                        <!-- each citation gets its
                                                                        own paragraph -->
                                                                        <p>
                                                                            <xsl:call-template
                                                                                name="lisabibliography" />
                                                                        </p>
                                                                    </xsl:for-each>

                                                                    <xsl:for-each select="tei:bibl">
                                                                        <p>
                                                                            <xsl:call-template
                                                                                name="lisaBibl" />
                                                                        </p>
                                                                    </xsl:for-each>
                                                                    <!-- end citation -->
                                                                </li>
                                                            </xsl:for-each>
                                                        </xsl:if>
                                                    </p>

                                                </xsl:when>

                                                <xsl:otherwise>

                                                   <dl class="document-metadata document__list-metadata-group">
                                                    <xsl:if test="tei:rubric">
                                               
                                                    <dt class="document__list-metadata-key document__list-metadata-key--ursus blacklight-date_created_tesim">Rubric: </dt>
                                                    <dd class="document__list-metadata-value document__list-metadata-value--ursus blacklight-date_created_tesim">
                                                    <xsl:value-of select="tei:rubric" />
                                                    </dd>
                                               
                                            </xsl:if>
                                            </dl>

                                                    <p>
                                                        <xsl:if test="tei:listBibl">
                                                            <xsl:for-each select="tei:listBibl">
                                                                <li>
                                                                    <!-- print in bold the listBibl
                                                                    heading -->
                                                                    <b>
                                                                        <xsl:value-of
                                                                            select="normalize-space(tei:head)" />
        :</b>
                                                                    <!-- for each citation, do the
                                                                    following -->


                                                                    <xsl:for-each
                                                                        select="tei:biblStruct">
                                                                        <!-- each citation gets its
                                                                        own paragraph -->
                                                                        <p>
                                                                            <xsl:call-template
                                                                                name="lisabibliography" />
                                                                        </p>
                                                                    </xsl:for-each>

                                                                    <xsl:for-each select="tei:bibl">
                                                                        <p>
                                                                            <xsl:call-template
                                                                                name="lisaBibl" />
                                                                        </p>
                                                                    </xsl:for-each>
                                                                    <!-- end citation -->
                                                                </li>
                                                            </xsl:for-each>
                                                        </xsl:if>
                                                    </p>


                                                </xsl:otherwise>

                                            </xsl:choose>
                                        </div>
                                       
                                    </xsl:for-each>
                                </div>
                                </div>

	
                            </xsl:for-each>
                        </div>


                    </DIV>

                   

    </xsl:template>

</xsl:stylesheet>