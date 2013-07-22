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
					
						<!-- START OF BREADCRUMB -->
						<ul class="breadcrumb">
						  <li><a href="#">Home</a> &raquo; </li>
						  <li><a href="#">Search</a> &raquo; </li>
						  <li class="active">Search Results</li>
						</ul>
						<!-- END OF BREADCRUMB -->
						
						
						<!-- START OF SEARCH FILTERS -->
						<div class="search-filters">
							<strong>Sort By</strong>: <strong>Relevance</strong> | <a href="#">Newest</a> | <a href="#">Unanswered</a>
						</div>
						<!-- END OF SEARCH FILTERS -->
						
						
					
					
						<!-- START OF MAIN CONTENT -->
						<div class="main-content">
						
						
						<!--  DO NOT TOUCH THE ABOVE -->
						<!--  UNLESS U NEED TO ADD BREADCRUMBS & SEARCHFILTER -->
						
						
						
							





















					<!-- START CODING FROM HERE  -->
					
					
						<!--  START OF QUESTION -->
						<h2 class="question">Question</h2>
						
						<table class="results-area">
						  <tr width="100%">
						    <td class="avatar">
						    	<a href="#"><img src="img/henry-avatar.png" /></a><br/>
						    	<div class="flag-report"><a href="#"><img src="img/flag-icon.png" /></a></div>
						    </td>
						    <td class="snippets-area">
						    	<div class="result-user">Henry Tang: </div>
								<h2><a href="#">How long does it take to apply for a credit card?</a></h2>
								<div class="result-snippet">Hello all, Just want to check how long does it take to apply a credit card in Singapore. And also, are there any documents that we need...</div>
								<div class="result-meta-details">Categorised under <a href="#"><strong>Credit Card</strong></a> - 3 Days Ago</div>
						    </td>
						    <td class="empty-placeholder-10">
						    	.  <!-- Placeholder to replace thumbs up & answer -->
						    </td>
						  </tr>
						</table>
						<!--  END OF QUESTION -->
						
						<!--  START OF TOP ANSWER -->	
						<h2 class="top-answer">Top Answer</h2>
						<table class="results-area">
						  <tr width="100%">
						 	<td class="avatar"> <!-- removing rowspan="2"  -->
						    	<a href="#"><img src="img/alvin-avatar.png" /></a><br/>
						    	<div class="flag-report"><a href="#"><img src="img/flag-icon.png" /></a></div>
						    </td>
						    <td class="snippets-area"> <!-- removing rowspan="2"  -->
						    	<div class="result-user">Alvin Soh: </div>
						    	<div class="result-snippet">
						    		<p>Once SCB receives all your required documents (s). they would take at most 9 days to approve your credit card. </p>
						    		<p>I applied mine on MOnday and got it approved on the next following day.</p>
								<div class="result-meta-details">Categorised under <a href="#"><strong>Credit Card</strong></a> - 3 Days Ago</div>
						    </td>
						    <td class="thumbs-up-thumbs-down">
						    	<a href="#"><img src="img/thumbs-up.png" /></a><br/>
						    	<div class="only-thumb-number">
						    		235
						    	</div>
						    	<a href="#"><img src="img/thumbs-down.png" /></a><br/>
						    </td>
						  </tr>
						</table>
				
						
						<table class="comments-results-area">
							<!--  START OF COMMENTS -->
							<tr class="comments-odd">
							  	<td class="avatar"></td> <!--  Left Empty -->
							 	<td class="comment-number">#1</td>
							 	<td class="comment-name">Ian Chan:</td>
							 	<td class="comment-text">Thanks Alvin! Just want to say that you're the most helpful person in planet earth. Can I give you a big kiss? - 3 days ago</td>
						 	</tr>
						 	<tr class="comments-even">
							  	<td class="avatar"></td> <!--  Left Empty -->
							 	<td class="comment-number">#2</td>
							 	<td class="comment-name">Jeremy Zhong:</td>
							 	<td class="comment-text">Thanks! But what are the required documents! I heard frmo my friends that I only need my Identification Card (IC). Is that right? - 2 days ago</td>
						 	</tr>				
						 	<tr class="comments-odd">
							  	<td class="avatar"></td> <!--  Left Empty -->
							 	<td class="comment-number">#3</td>
							 	<td class="comment-name">Xiang Rui:</td>
							 	<td class="comment-text">It took me more than 2 weeks. - 5 mins ago</td>
						 	</tr>
						 	<!-- END OF COMMENTS -->
						 	<tr>
						 		<td colspan="3"></td> <!-- Left Empty -->
						 		<td class="add-a-comment"><a href="#">+ Add a Comment</a></td>
						 	</tr>
						</table>


							
							
						<!--  START OF OTHER ANSWER -->
						<h2 class="other-answers">Other Answers (2)</h2>

							<!--  START OF OTHER ANSWER (1) -->
							<table class="results-area">
							  <tr width="100%">
							 	<td class="avatar"> <!-- removing rowspan="2"  -->
							    	<a href="#"><img src="img/vivian-avatar.png" /></a><br/>
							    	<div class="flag-report"><a href="#"><img src="img/flag-icon.png" /></a></div>
							    </td>
							    <td class="snippets-area"> <!-- removing rowspan="2"  -->
							    	<div class="result-user">Vivian Lai: </div>
									<div class="result-snippet">I feel I'm beautiful. What about you?</div>
									<div class="result-meta-details">Categorised under <a href="#"><strong>Credit Card</strong></a> - 3 Days Ago</div>
							    </td>
							    <td class="thumbs-up-thumbs-down">
							    	<a href="#"><img src="img/thumbs-up.png" /></a><br/>
							    	<div class="only-thumb-number">
							    		-29
							    	</div>
							    	<a href="#"><img src="img/thumbs-down.png" /></a><br/>
							    </td>
							  </tr>
							</table>
							
							<table class="comments-results-area">
								<!--  START OF COMMENTS -->
									<!-- THIS POST HAS NO COMMENTS -->
							 	<!-- END OF COMMENTS -->
							 	<tr>
							 		<td colspan="3"></td> <!-- Left Empty -->
							 		<td class="add-a-comment"><a href="#">+ Add a Comment</a></td>
							 	</tr>
							</table>
							<!--  END OF OTHER ANSWER (1) -->
	
	
							<!--  START OF OTHER ANSWER (2) -->
							<table class="results-area">
							  <tr width="100%">
							 	<td class="avatar"> <!-- removing rowspan="2"  -->
							    	<a href="#"><img src="img/xiangrui-avatar.png" /></a><br/>
							    	<div class="flag-report"><a href="#"><img src="img/flag-icon.png" /></a></div>
							    </td>
							    <td class="snippets-area"> <!-- removing rowspan="2"  -->
							    	<div class="result-user">Lee Xiangrui: </div>
									<div class="result-snippet">I got mine approved in 3 days. Awesome service!</div>
									<div class="result-meta-details">Categorised under <a href="#"><strong>Credit Card</strong></a> - 3 Days Ago</div>
							    </td>
							    <td class="thumbs-up-thumbs-down">
							    	<a href="#"><img src="img/thumbs-up.png" /></a><br/>
							    	<div class="only-thumb-number">
							    		30
							    	</div>
							    	<a href="#"><img src="img/thumbs-down.png" /></a><br/>
							    </td>
							  </tr>
							</table>
							
							<table class="comments-results-area">
								<!--  START OF COMMENTS -->
									<!-- THIS POST HAS NO COMMENTS -->
							 	<!-- END OF COMMENTS -->
							 	<tr>
							 		<td colspan="3"></td> <!-- Left Empty -->
							 		<td class="add-a-comment"><a href="#">+ Add a Comment</a></td>
							 	</tr>
							</table>
							<!--  END OF OTHER ANSWER (1) -->
						
						
						<!--  END OF OTHER ANSWER -->

						
						
						
						<!-- START OF YOUR ANSWER -->
							
						<form class="post-question-form" action="#">
							<h2 class="your-answer">Your Answer</h2>
							<textarea class="post-your-answer" rows="5" maxlength="2000" name="post-your-answer" id="post-your-answer"></textarea>

							<!-- form-action div-->
							<div class="standard-form-actions">
								<div class="community-guidelines pull-left">
									By posting your answer, you agree to the <a href="#">Community Guidelines</a>
								</div>
								<button type="submit" class="btn-large btn-primary pull-right">Post Answer</button>
								
							</div> <!-- end of form-action div-->
						</form> <!-- end of ask-a-question form div -->
							
						<!-- START OF YOUR ANSWER -->
						
						
						<!--  START OF COMMUNITY GUIDELINE -->
						
						
						
						
						
						<!--  END OF COMMUNITY GUIDELINE -->






						</div> <!-- end of main-content div -->
						
					<!-- STOP CODE HERE -->
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						<!--  DO NOT TOUCH BELOW HERE -->

						</div> <!-- end of main-content div -->
						<!-- END OF MAIN CONTENT -->
						
					</div><!-- end of main-content-area div -->
                </div> <!-- end row fluid div -->
                
		<jsp:include page="include/footer.jsp" />