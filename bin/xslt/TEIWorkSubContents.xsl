<?xml version="1.0" encoding="UTF-8"?>

<!-- St. Gall Stylesheet for the Expanded Contents page of a work within a manuscript-->
<!-- edited by Richard Pollard to include bibliography 10/2010 -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0">
   
   
    <xsl:output method="html" />
    <xsl:template match="/" name="generateSubWorkContent">

 <xsl:param name="count" />
       

           
         

                    <DIV
                        class="tan_divider">
                        <br />
                        <!--<img
                        src="images/icon_content.jpg" width="20" height="20" alt="Content" />:-->

                        <ul style="list-style-type:none">                            <!-- Book-Level -->
                            <xsl:for-each
                                select="tei:msItem">
                                <li>
                                    <xsl:value-of select="@n" /> : &#032;
                                    <!-- This link goes to the page of the transcription that is the
                                    first for this section -->
                                    <span class="float">
                                        <xsl:value-of select="tei:locus" />
                                    </span>


                                    <xsl:choose>
                                        <xsl:when test="tei:title">

                                            <p>
                                                <!--a target="_top"
                                                    href="/stgallmss/viewItem.do?xmlstylesheet=TEITranscription.xsl&amp;count={@n}&amp;pageArk={tei:locus/@facs}&amp;fileId={$fileId}">
                                                    <xsl:value-of select="tei:title" />
                                                </a-->
                                                 <xsl:value-of select="tei:title" />
                                            </p>



                                            <xsl:if
                                                test="tei:rubric">
                                                <li>
                                                    <b>Rubric: </b>
                                                    <xsl:value-of select="tei:rubric" />
                                                </li>
                                            </xsl:if>
                                            <xsl:if
                                                test="tei:incipit">
                                                <li>
                                                    <b>Incipit: </b>
                                                    <xsl:value-of select="tei:incipit" />
                                                </li>
                                            </xsl:if>
                                            <xsl:if
                                                test="tei:explicit">
                                                <li>
                                                    <b>Explicit: </b>
                                                    <xsl:value-of select="tei:explicit" />
                                                </li>
                                            </xsl:if>
                                            <xsl:if
                                                test="tei:incipit2">
                                                <br></br>
                                                <li>
                                                    <b>Incipit: </b>
                                                    <xsl:value-of select="tei:incipit2" />
                                                </li>
                                            </xsl:if>
                                            <xsl:if
                                                test="tei:explicit2">
                                                <li>
                                                    <b>Explicit: </b>
                                                    <xsl:value-of select="tei:explicit2" />
                                                </li>
                                            </xsl:if>
                                            <xsl:if
                                                test="tei:note">
                                                <li>
                                                    <b>Remarks: </b>
                                                    <xsl:apply-templates select="tei:note" />
                                                </li>
                                            </xsl:if>

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

                                        </xsl:when>

                                        <xsl:otherwise>
                                            <br></br>
                                            <xsl:if test="tei:rubric">
                                                <li>
                                                    <b>Rubric: </b>
                                                    <xsl:value-of select="tei:rubric" />
                                                </li>
                                            </xsl:if>
                                            <xsl:if
                                                test="tei:incipit">
                                                <li>
                                                    <b>Incipit: </b>
                                                    <xsl:value-of select="tei:incipit" />
                                                </li>
                                            </xsl:if>
                                            <xsl:if
                                                test="tei:explicit">
                                                <li>
                                                    <b>Explicit: </b>
                                                    <xsl:value-of select="tei:explicit" />
                                                </li>
                                            </xsl:if>
                                            <xsl:if
                                                test="tei:incipit2">
                                                <br></br>
                                                <li>
                                                    <b>Incipit: </b>
                                                    <xsl:value-of select="tei:incipit2" />
                                                </li>
                                            </xsl:if>
                                            <xsl:if
                                                test="tei:explicit2">
                                                <li>
                                                    <b>Explicit: </b>
                                                    <xsl:value-of select="tei:explicit2" />
                                                </li>
                                            </xsl:if>
                                            <xsl:if
                                                test="tei:note">
                                                <li>
                                                    <b>Remarks: </b>
                                                    <xsl:apply-templates select="tei:note" />
                                                </li>
                                            </xsl:if>

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
                                </li>

                                <ul
                                    style="list-style-type:none">                                    <!--Chapter-Level-->

                                    <xsl:for-each select="tei:msItem">
                                        <li>
											 <xsl:value-of select="tei:locus" />

                                            <!--a target="_top"
                                                href="/stgallmss/viewItem.do?xmlstylesheet=TEITranscription.xsl&amp;count={@n}&amp;pageArk={tei:locus/@facs}&amp;fileId={$fileId}">
                                               
                                            </a-->
        :                                                                                          <!--
                                            This link goes to the page of the transcription that is
                                            the first for this sub-section-->

                                            <xsl:choose>
                                                <xsl:when test="tei:title">
                                                    <br />
                                                    <xsl:value-of select="tei:title" />
                                                    <xsl:if
                                                        test="tei:rubric">
                                                        <ul style="list-style-type:none">

                                                            <b>Rubric: </b>
                                                            <xsl:value-of select="tei:rubric" />
                                                            <br />

                                                        </ul>
                                                    </xsl:if>
                                                    <xsl:if
                                                        test="tei:incipit">
                                                        <ul style="list-style-type:none">

                                                            <b>Incipit: </b>
                                                            <xsl:value-of select="tei:incipit" />
                                                            <br />

                                                        </ul>
                                                    </xsl:if>
                                                    <xsl:if
                                                        test="tei:explicit">
                                                        <ul style="list-style-type:none">

                                                            <b>Explicit: </b>
                                                            <xsl:value-of select="tei:explicit" />
                                                            <br />

                                                        </ul>
                                                    </xsl:if>

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

                                                    <xsl:value-of select="tei:rubric" />

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
                                        </li>
                                        <br />
                                    </xsl:for-each>
                                </ul>
                                <br />


                            </xsl:for-each>
                        </ul>


                    </DIV>

                   

    </xsl:template>

</xsl:stylesheet>