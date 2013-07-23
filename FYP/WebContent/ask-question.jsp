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

					
							<form class="ask-question-form">
								<label class="ask-form-header">1. What's Your Question?</label>
								<textarea class="ask-question-title" rows="1" maxlength="50" name="ask-question-title" id="ask-question-title">Pre-populated from previous ask.html</textarea>

								<label class="ask-form-header">2. More Details On Your Question (Optional)</label>
								<textarea class="ask-question-details" rows="5" maxlength="1000" name="ask-question-details" id="ask-question-details"></textarea>


								<label class="ask-form-header">3. Categorise Your Question</label>
								<div class="tabbable">
									<ul class="nav nav-tabs">
										<li class="active"><a href="#suggestedTab" data-toggle="tab">Suggested</a></li>
										<li><a href="#browseTab" data-toggle="tab">Browse</a></li>
									</ul> <!-- end of nav nav-tabs div -->

									<div class="tab-content">
										<div class="tab-pane active" id="suggestedTab">
											<div class="form-radio-group">
												<label class="radio">
													<input type="radio" name="suggestedCategoryGroup" value="card-creditcard"><span>Card &raquo; Credit Card</span><br/>
												</label>

												<label class="radio">
													<input type="radio" name="suggestedCategoryGroup" value="card-debitcard"><span>Card &raquo; Debit Card</span><br/>
												</label>

												<label class="radio">
													<input type="radio" name="suggestedCategoryGroup" value="banking-investmentbanking"><span>Banking &raquo; Investment Banking</span><br/>
												</label>

												<label class="radio">
													<input type="radio" name="suggestedCategoryGroup" value="banking-wealthbanking"><span>Banking &raquo; Wealth Banking</span><br/>
												</label>
											</div>
										</div>

										<div class="tab-pane" id="browseTab">
											<div class="form-radio-group">
												<label class="radio">
													<input type="radio" name="suggestedCategoryGroup" value="banking-investmentbanking"><span>Banking &raquo; Investment Banking</span><br/>
												</label>

												<label class="radio">
													<input type="radio" name="suggestedCategoryGroup" value="banking-wealthbanking"><span>Banking &raquo; Wealth Banking</span><br/>
												</label>

												<label class="radio">
													<input type="radio" name="suggestedCategoryGroup" value="card-creditcard"><span>Card &raquo; Credit Card</span><br/>
												</label>

												<label class="radio">
													<input type="radio" name="suggestedCategoryGroup" value="card-debitcard"><span>Card &raquo; Debit Card</span><br/>
												</label>
											</div> <!-- end of form-radio-group div -->
										</div> <!-- end of tab-pane div -->
									</div> <!-- end of tab-content div -->
								</div> <!-- end of tabbable div -->
								
								
								
								<label class="ask-form-header">4. Notifications</label>
								<label class="checkbox">
							      <input type="checkbox" name="reply-notifications" value="reply-notifications"><span>Email me when I receive a new answer</span>
							    </label><br/><br/>
							    
							  <!-- <center><span class="help-inline">Make sure your question follows the <a href="#">community guideline</a></span></center>   --> 

								<hr width="95%"/>
								
								<!-- form-action div-->
								<div class="standard-form-actions">
									<div class="community-guidelines pull-left">
										By asking a question, you agree to the <a href="#">Community Guidelines</a>
									</div>
									<button type="submit" class="btn-large btn-success pull-right">Ask Question</button>
								</div> <!-- end of form-action div-->
							</form> <!-- end of ask-a-question form div -->
						
						
					<!-- STOP CODE HERE -->
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						<!--  DO NOT TOUCH BELOW HERE -->

						</div> <!-- end of main-content div -->
						<!-- END OF MAIN CONTENT -->
						
					</div><!-- end of main-content-area div -->
                </div> <!-- end row fluid div -->
                
		<jsp:include page="include/footer.jsp" />