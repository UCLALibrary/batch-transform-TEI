
<!-- St. Gall Stylesheet for the Main Contents page of a Manuscript -->
<!-- edits by Elizabeth McAulay, 5/25/10 -->
<!-- minor edits by Elizabeth McAulay, 9/24/10 -->
<!-- edited by Richard Pollard, 10/2010 -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
	xmlns:tei="http://www.tei-c.org/ns/1.0">
	<!--xsl:include href="TEIManuscriptBiblio.xsl" />
	<xsl:include href="TEIManuscriptDesc.xsl" /-->
	<xsl:include href="TEIBibliography.xsl" />
	<xsl:include href="TEIWorkBibliography.xsl" />
	<xsl:include href="TEIWorkContents.xsl" />
	<xsl:include href="TEITranscription.xsl" />
	<!--xsl:param name="fileId" />
    <xsl:param name="countContent" select="1" /-->
	<xsl:output method="html" />
	<xsl:template match="/">
		<xsl:variable name="checkBibliography" />
		<xsl:variable name="checkTranslation" />
		<html>
			<head>
				<!-- Include your CSS file here -->

				<style>
					/* Add your CSS styles here */
					.container {
					display: flex;
					flex-direction: column;
					align-items: center;
					text-align: center;
					margin: 20px;

					}

					.title {
					font-size: 24px;
					font-weight: bold;
					margin: 20px 0;
					}
					.work-title {
					font-size: 14px;
					font-weight: bold;
					}

					.subnav {
					display: flex;
					justify-content: space-between;
					width: 100%;
					}

					.subnav-item {
					flex: 1;
					background-color: #f0f0f0;
					padding: 10px;
					border: 1px solid #ccc;
					}

					.subnav-item:hover {
					background-color: #e0e0e0;
					}

					.flex-container {
					display: flex;
					flex-direction: row;
					align-items: center;
					justify-content: flex-start;
					margin: 20px;
					}

					.title {
					display: flex;
					flex-direction: row;
					align-items: center;
					}
					.contents {
					display: flex;
					flex-direction: column;

					justify-content: flex-start;
					margin: 20px;
					}
					.sub-links {
					display: flex;
					flex-direction: row;
					justify-content: flex-start;
					align-items: center;
					gap: 8px;
					}
					.work-item-content {

					}
					.work-item-bibliography {

					}
					.work-item-transcription {

					}
					.manuscript-bibliography {

					}
					.manuscript-description{

					}
					.toggleDiv {
					display: none;
					}
					.toggleDivWorkItem{
					display: none;
					}
					#manuscript-contents {
					display: flex;
					}
					/* Add more styles as needed */
				</style>
			</head>
			<body>
				<!-- Your other HTML content generation here -->
				<div class="flex-container">
					<div class="title">
						<xsl:value-of
							select="tei:TEI/tei:text/tei:body/tei:msDesc/tei:msIdentifier/tei:repository" />
						: <xsl:value-of
							select="tei:TEI/tei:text/tei:body/tei:msDesc/tei:msIdentifier/tei:idno" />
					</div>
				</div>
				<div class="container">

					<div class="subnav">
						<div class="subnav-item">
							<h3>Manuscript Contents</h3>
							<!--a href="#" class="toggleLink"
								data-target="manuscript-contents">Manuscript
								Contents</a-->
						</div>
						<!--div class="subnav-item">
							<a href="#" class="toggleLink"
								data-target="manuscript-bibliography-id">Manuscript
								Codicological Bibliography</a>
						</div>
						<div class="subnav-item">
							<a href="#" class="toggleLink"
								data-target="manuscript-description-id">Manuscript
								Codicological Description</a>
						</div-->
					</div>
				</div>

				<div id="manuscript-contents" class="contents toggleDiv">
					<!--xsl:if
						test="tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:mini">
						<div class="temp-contents">
							<b>
								<xsl:text>Temporary Summary of Contents:</xsl:text>
							</b>
							<br></br>
							<br></br>
							<xsl:copy-of
								select="tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:mini" />
						</div>
					</xsl:if-->
					<!-- manuscripts which dont have  table of contents end-->
					<!-- workGroup -->

					<xsl:for-each
						select="tei:TEI/tei:text/tei:body/tei:msDesc/tei:msContents/tei:msItem">

						<xsl:if test="tei:workGroupHeading">
							<div class="work-group-heading">
								<p>
									<h4>[ <b>
											<xsl:value-of
												select="tei:workGroupHeading/tei:locus" />
										</b>
										] <xsl:choose>
											<xsl:when
												test="tei:workGroupHeading/tei:title">
												<xsl:value-of
													select="tei:workGroupHeading/tei:title" />
											</xsl:when>

											<xsl:otherwise>
												<xsl:value-of
													select="tei:workGroupHeading/tei:rubric" />
											</xsl:otherwise>
										</xsl:choose>

									</h4>
								</p>
							</div>
						</xsl:if>
						<div class="work-item ">

							<xsl:value-of select="position()" /> . <xsl:variable
								name="locusFacs"
								select="normalize-space(tei:locus/@target)" />
							<!-- if title does not exist use rubric -->
                        <xsl:choose>

								<xsl:when test="tei:title">
									<a target="_top" href="{$locusFacs}">
										<xsl:value-of select="tei:title" />
									</a>                                <!--
                                    This link should take the user to the Contents page for the work
                                    (generated by TEITranscription.xsl) -->
								</xsl:when>
								<xsl:otherwise>
									<a target="_top" href="{$locusFacs}">
										<xsl:value-of select="tei:rubric" />
									</a>
								</xsl:otherwise>

							</xsl:choose>

							<!-- if title does not exist use rubric end -->
                        <span>
							&#160; <xsl:value-of select="tei:locus" />
							</span>

							<!-- rubric,incipit, explicit-->
                        <ul
								style="list-style-type:none">
								<xsl:choose>
									<xsl:when test="tei:rubric">

										<li>
											<b>Rubric: </b>
											<xsl:value-of select="tei:rubric" />
										</li>

									</xsl:when>
									<xsl:otherwise></xsl:otherwise>
								</xsl:choose>
								<xsl:if test="tei:incipit">
									<li>
										<b>Incipit: </b>
										<xsl:value-of select="tei:incipit" />
									</li>
								</xsl:if>
								<xsl:if test="tei:explicit">
									<li>
										<b>Explicit: </b>
										<xsl:value-of select="tei:explicit" />
									</li>
								</xsl:if>
								<xsl:if test="tei:note">
									<li>
										<b>Remarks: </b>
										<xsl:value-of select="tei:note" />
									</li>
								</xsl:if>
							</ul>

							<!-- rubric,incipit, explicit end-->
						<div
								class="sub-links">
								<!-- Bibliography -->
								<xsl:if test="count(tei:listBibl) > 0">
									<xsl:if
										test="count(tei:listBibl/tei:head[. = 'Related Texts'] | tei:listBibl/tei:head[. = 'Bibliography'] | tei:listBibl/tei:head[. = 'Editions']  |  tei:listBibl/tei:head[. = 'Edition']   | tei:listBibl/tei:head[. = 'Edition and Bibliography']  |   tei:listBibl/tei:head[. = 'Translation'])  > 0">
										<xsl:if
											test="count(tei:listBibl/tei:head[. = 'Related Texts'] | tei:listBibl/tei:head[. = 'Bibliography'] | tei:listBibl/tei:head[. = 'Editions'] |  tei:listBibl/tei:head[. = 'Translation'] | tei:listBibl/tei:head[. = 'Edition and Bibliography'] | tei:listBibl/tei:head[. = 'Edition']/following-sibling::tei:biblStruct) > 0">
											<!--
											href="/stgallmss/viewFile.do?xmlstylesheet=TEIWorkBibliography.xsl&amp;count={@n}&amp;fileId={$fileId}" -->
											<a href="#" class="toggleLinkWorkItem"
												data-target="work-item-bibliograghy-{@n}">
							Bibliograpghy
											</a>
											<xsl:text></xsl:text>

										</xsl:if>
									</xsl:if>


									<!-- Content -->
								</xsl:if>
								<xsl:if test="count(tei:msItem) > 0">

									<!-- href="{$locusFacs}" locusFacs its th
									msitem target variable created in this
									xslt-->
									<a href="#" class="toggleLinkWorkItem"
										data-target="work-item-content-{@n}">
										Content
									</a>
									<xsl:text></xsl:text>

								</xsl:if>
								<!-- Transcription  -->
								<xsl:choose>
									<!-- dont remember why this condition was
									tested -->
									<xsl:when test="count(tei:msItem) = 0">

										<xsl:variable name="transcriptionFacs"
											select="normalize-space(tei:locus/@facs)" />
										<a href="#" class="toggleLinkWorkItem"
											data-target="work-item-transcription-{@n}">
							Text
										</a>
										<xsl:text></xsl:text>
										<div class="work-item-transcription"> </div>
									</xsl:when>

									<!-- editionArk needs to be added above -->
									<xsl:otherwise>

										<xsl:variable name="transcriptionFacs"
											select="normalize-space(tei:locus/@facs)" />
										<a href="#" class="toggleLinkWorkItem"
											data-target="work-item-transcription-{@n}">
							Text
										</a>
										<xsl:text></xsl:text>

									</xsl:otherwise>
								</xsl:choose>
							</div>
                         <xsl:if
								test="count(tei:listBibl) > 0">
								<xsl:if
									test="count(tei:listBibl/tei:head[. = 'Related Texts'] | tei:listBibl/tei:head[. = 'Bibliography'] | tei:listBibl/tei:head[. = 'Editions']  |  tei:listBibl/tei:head[. = 'Edition']   | tei:listBibl/tei:head[. = 'Edition and Bibliography']  |   tei:listBibl/tei:head[. = 'Translation'])  > 0">
									<xsl:if
										test="count(tei:listBibl/tei:head[. = 'Related Texts'] | tei:listBibl/tei:head[. = 'Bibliography'] | tei:listBibl/tei:head[. = 'Editions'] |  tei:listBibl/tei:head[. = 'Translation'] | tei:listBibl/tei:head[. = 'Edition and Bibliography'] | tei:listBibl/tei:head[. = 'Edition']/following-sibling::tei:biblStruct) > 0">
										<div id="work-item-bibliograghy-{@n}"
											class="work-item-bibliography toggleDivWorkItem">


											<xsl:call-template
												name="generateWorkBibliography">
												<xsl:with-param name="count"
													select="@n" />
											</xsl:call-template>
										</div>
									</xsl:if>
								</xsl:if>
							</xsl:if>
                          <xsl:if
								test="count(tei:msItem) > 0">
								<div id="work-item-content-{@n}" class="work-item-content toggleDivWorkItem">
									<xsl:call-template
										name="generateWorkContent">
										<xsl:with-param name="count" select="@n" />
									</xsl:call-template>
								</div>
							</xsl:if>
						 <xsl:choose>
								<!-- dont remember why this condition was tested -->
								<xsl:when test="count(tei:msItem) = 0">

									<xsl:variable name="transcriptionFacs"
										select="normalize-space(tei:locus/@facs)" />


									<div id="work-item-transcription-{@n}"
										class="work-item-transcription toggleDivWorkItem">
										<xsl:call-template
											name="generateWorkTranscription">
											<xsl:with-param name="count"
												select="@n" />
											<xsl:with-param name="ark"
												select="$transcriptionFacs" />
										</xsl:call-template>
									</div>
								</xsl:when>

								<!-- editionArk needs to be added above -->
								<xsl:otherwise>
									<xsl:variable name="transcriptionFacs"
										select="normalize-space(tei:locus/@facs)" />
									<div id="work-item-transcription-{@n}"
										class="work-item-transcription toggleDivWorkItem">
										<xsl:call-template
											name="generateWorkTranscription">
											<xsl:with-param name="count"
												select="@n" />
											<xsl:with-param name="ark"
												select="$transcriptionFacs" />
										</xsl:call-template>
									</div>
								</xsl:otherwise>
							</xsl:choose>

                               
						
            <br />


						</div>

					</xsl:for-each>
				</div>

				<!--div id="manuscript-bibliography-id"
					class="contents manuscript-bibliography toggleDiv">
					<xsl:call-template name="generateManuscriptBibliography" />
				</div>
				<div id="manuscript-description-id"
					class="contents manuscript-description toggleDiv">
					<xsl:call-template name="generateManuscriptDescription" />
				</div-->
				<script>
					// Get references to all toggle links and divs
					const toggleLinksWorkItems =
					document.querySelectorAll('.toggleLinkWorkItem')
					const toggleLinks =
					document.querySelectorAll('.toggleLink');
					const toggleDivs = document.querySelectorAll('.toggleDiv');
					const toggleDivsWorkItems = document.querySelectorAll('.toggleDivWorkItem');
					// Add click event listeners to each toggle link
					toggleLinks.forEach(link => {
						link.addEventListener('click', function (e) {
							e.preventDefault(); // Prevent the link from navigating
		
							// Get the target div id from the data attribute
							const targetDivId = this.getAttribute('data-target');
							const targetDiv = document.getElementById(targetDivId);
		
							// Hide all toggleDivs first
							toggleDivs.forEach(div => {
								div.style.display = 'none';
							});
		
							// Toggle the visibility of the target div
							// console.log(targetDivId)
							// console.log(targetDiv)
		
							const computedStyle = window.getComputedStyle(targetDiv);
		
							if (computedStyle.display === 'none') {
								targetDiv.style.display = 'block';
							} else {
								targetDiv.style.display = 'none';
							}
						});
					});
					
					toggleLinksWorkItems.forEach(link => {
						link.addEventListener('click', function (e) {
							e.preventDefault(); // Prevent the link from navigating
		
							// Get the target div id from the data attribute
							const targetDivId = this.getAttribute('data-target');
							const targetDiv = document.getElementById(targetDivId);
		
							// Hide all toggleDivs first
							/*toggleDivs.forEach(div => {
							div.style.display = 'none';
							});*/
		
							// Toggle the visibility of the target div
							console.log(targetDivId)
							console.log(targetDiv)
		
							const computedStyle = window.getComputedStyle(targetDiv);
		
							if (computedStyle.display === 'none') {
								targetDiv.style.display = 'block';
							} else {
								targetDiv.style.display = 'none';
							}
						});
					});
				</script>
			</body>
		</html>

	</xsl:template>

</xsl:stylesheet>