<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0">
    <xsl:include href="TEIBibliography.xsl" />
    <!--xsl:param
    name="fileId"/-->
    <xsl:output method="html" />

    <!-- St. Gall Stylesheet for the  Codicological Bibliography page of a manuscript-->
    <!-- written by Parinita Ghorpade, December 2009 -->
    <!-- edited by Lisa McAulay, July 2010 -->

    <xsl:template match="/" name="generateManuscriptBibliography">


       
                    <xsl:for-each
                        select="tei:TEI/tei:text/tei:body/tei:msDesc/tei:additional/tei:listBibl">
                        <div class="bibl-item">

                            <b>
                                <xsl:value-of select="position()" /> . <xsl:value-of
                                    select="tei:head" /> :</b>
                            <ul>
                                <xsl:for-each select="tei:biblStruct">
                                    <!-- each citation gets its own paragraph -->
                                    <p>
                                        <xsl:call-template name="lisabibliography"></xsl:call-template>
                                    </p>
                                </xsl:for-each>

                                <xsl:for-each select="tei:bibl">
                                    <xsl:call-template name="lisaBibl"></xsl:call-template>
                                </xsl:for-each>


                            </ul>

                            <br />

                        </div>
                    </xsl:for-each>

                    <!-- Content table for left view frame END-->
                    <br />
                    <br />
              


    </xsl:template>

</xsl:stylesheet>