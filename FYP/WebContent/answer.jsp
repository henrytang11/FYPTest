<jsp:include page="include/header.jsp" />


	<!-- Start of Body -->
	<body>
        <!-- Start of CONTAINER -->
		<div class="container-fluid">
				
			<jsp:include page="include/navbar.jsp" />

			<!-- Components BELOW Navbar -->
			<div class="wrapper-below-navbar">
				<div class="row-fluid">
						
					<jsp:include page="include/mobile-sidebar.jsp" />
					<jsp:include page="include/desktop-sidebar.jsp" />
					
					<!-- Start of MAIN CONTENT BLOCK - Different across pages -->
					<div class="main-content-area">
						<!-- START OF MAIN CONTENT -->
						<div class="main-content">
						
						
						<!--  DO NOT TOUCH THE ABOVE -->
						
						
						
						
						





















					
					<!-- START CODING FROM HERE  -->

							<div class="javis-search-mainpage">
								<img src="./img/javis/ask.png" /> <!-- Javis's Search -->

								<!-- START OF JAVIS CORE FUNCTION AREA -->
								<div class="javis-core-functions-area">
									<ul class="nav nav-tabs">
										<li><a href="#searchTab" data-toggle="tab">Search</a></li>
										<li><a href="#askTab" data-toggle="tab">Ask</a></li>
										<li class="active"><a href="#answerTab" data-toggle="tab">Answer</a></li>
									</ul> <!-- end of nav nav-tabs div -->



									<div class="tab-content">
										<div class="tab-pane" id="searchTab">
											
					
											<h1>Search</h1>
											
											<form action="search-result.jsp" class="form-search">
												<input type="text" class="search-query" id="javis-search">
												<div class="standard-form-actions">
													<button type="submit" class="btn-large btn-success pull-right">Search</button>
												</div>
											</form>
										</div> <!-- end of tab-pane -->

										<div class="tab-pane" id="askTab">
											<h1>Ask</h1>
											<form action="ask-question.jsp" class="form-search">
												<input type="text" class="search-query" id="javis-search">
												<div class="standard-form-actions">
													<button type="submit" class="btn-large btn-success pull-right">Ask JAVIS</button>
												</div>
											</form>
										</div> <!-- end of tab-pane -->

										<div class="tab-pane active" id="answerTab">
											<h1>Answer</h1>
											<h4>Choose a category to begin...</h4>

											<div class="category-area">
												<ul class="category-column">
													<li><a href="#">Cards</a></li>
													<li><a href="#">Deposits</a></li>
													<li><a href="#">Mortgages</a></li>
													<li><a href="#">Investment</a></li>
												</ul>
												<ul class="category-column">
													<li><a href="#">Insurance</a></li>
													<li><a href="#">Mobile</a></li>
													<li><a href="#">Cash Mgmt</a></li>
													<li><a href="#">Trade</a></li>
												</ul>
												<ul class="category-column">
													<li><a href="#">Finance</a></li>
													<li><a href="#">Capital</a></li>
													<li><a href="#">Venture</a></li>
													<li><a href="#">Wealth Banking</a></li>
												</ul>
												<ul class="category-column">
													<li><a href="#">Gold</a></li>
													<li><a href="#">Investment Banking</a></li>
													<li><a href="#">Insuance Loan</a></li>
													<li><a href="#">Working Capital</a></li>
												</ul>
												<ul class="category-column">
													<li><a href="#">Card Holders</a></li>
													<li><a href="#">Premium Holders</a></li>
													<li><a href="#">Employement</a></li>
													<li><a href="#">Stocks</a></li>
												</ul>
												<ul class="category-column">
													<li><a href="#">Investment</a></li>
													<li><a href="#">Insurance</a></li>
													<li><a href="#">Cards</a></li>
													<li><a href="#">Debit Card</a></li>
												</ul>
											</div>

											<div class="clearfix"></div>

											<div class="standard-form-actions">
												<a href="search-result.jsp"><button class="btn btn-success pull-right">Random Category</button></a>
											</div>

										</div> <!-- end of tab-pane -->

									</div> <!-- end of tab-content div -->

									<div class="powered-by-engine">
										Powered by <strong>JAVIS</strong>
									</div>
								</div> <!-- end of tabbable div -->


								<!-- END OF JAVIS CORE FUNCTION AREA -->
							</div>

						
							<!-- STOP CODE HERE -->
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						<!--  DO NOT TOUCH BELOW HERE -->

						</div> <!-- end of main-content div -->
						<!-- END OF MAIN CONTENT -->
						
					</div><!-- end of main-content-area div -->
                </div> <!-- end row fluid div -->
                
		<jsp:include page="include/footer.jsp" />