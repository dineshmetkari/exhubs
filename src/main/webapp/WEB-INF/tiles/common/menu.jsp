<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<div class="navbar navbar-inverse navbar-fixed-top navbar-static-top ">
	<div class="navbar-inner">
		<div class="container">
			<a class="btn btn-navbar" data-toggle="collapse"
				data-target=".nav-collapse"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a> <a class="brand" href="/"><s:message
					code="global.info.website_name" /></a>
			<div class="nav-collapse">
				<ul class="nav">
					<li class="a-c-t-i-v-e"><a href="/"><s:message
								code="global.info.home" /></a></li>
					<sec:authorize ifNotGranted="ROLE_USER">
						<li><a href="/login"><s:message code="global.info.login" /></a></li>
					</sec:authorize>

					<sec:authorize access="hasAnyRole('ROLE_EXAM_CANDIDATE')">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <s:message
									code="global.info.my_exam_manage" /> <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<sec:authorize access="hasRole('ROLE_EXAM_CANDIDATE')">
									<li><a href="/joinexams"><s:message
												code="global.info.join_exam" /></a></li>
								</sec:authorize>
							</ul></li>
					</sec:authorize>

					<sec:authorize access="hasAnyRole('ROLE_EXAM_MANAGER','ROLE_QUESTION_MANAGER','ROLE_EXAM_REVIEW_MANAGER')">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <s:message
									code="global.info.exam_manage" /> <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<sec:authorize access="hasRole('ROLE_QUESTION_MANAGER')">
									<li><a href="/questiontypes"><s:message
												code="global.info.question_type_setting" /></a></li>
								</sec:authorize>
								<sec:authorize access="hasRole('ROLE_QUESTION_MANAGER')">
									<li><a href="/questionrepos"><s:message
												code="global.info.question_repository_setting" /></a></li>
								</sec:authorize>
								<sec:authorize access="hasRole('ROLE_EXAM_MANAGER')">
									<li><a href="/examtypes"><s:message
												code="global.info.exam_type_setting" /></a></li>
								</sec:authorize>
								<sec:authorize access="hasRole('ROLE_EXAM_MANAGER')">
									<li><a href="/exampapers"><s:message
												code="global.info.exam_paper_setting" /></a></li>
								</sec:authorize>
								<sec:authorize access="hasRole('ROLE_EXAM_MANAGER')">
									<li><a href="/examevents"><s:message
												code="global.info.exam_event_setting" /></a></li>
								</sec:authorize>
								<sec:authorize access="hasRole('ROLE_EXAM_REVIEW_MANAGER')">
									<li><a href="/reviewexams"><s:message
												code="global.info.review_exam" /></a></li>
								</sec:authorize>
							</ul></li>
					</sec:authorize>

					<sec:authorize
						access="hasAnyRole('ROLE_USER_MANAGER','ROLE_USER_GROUP_MANAGER', 'ROLE_DEPARTMENT_MANAGER')">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <s:message
									code="global.info.system_manage" /> <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<sec:authorize access="hasRole('ROLE_USER_MANAGER')">
									<li><a href="/users"><s:message
												code="global.info.user_setting" /></a></li>
								</sec:authorize>
								<sec:authorize access="hasRole('ROLE_USER_GROUP_MANAGER')">
									<li><a href="/groups"><s:message
												code="global.info.group_setting" /></a></li>
								</sec:authorize>
								<sec:authorize access="hasRole('ROLE_DEPARTMENT_MANAGER')">
									<li><a href="/departments"><s:message
												code="global.info.department_setting" /></a></li>
								</sec:authorize>
							</ul></li>
					</sec:authorize>

					<sec:authorize access="hasRole('ROLE_USER')">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <s:message
									code="global.info.my_account" /> <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a href="/users/edit_my_account"><s:message
											code="global.info.account_setting" /></a></li>
								<li><a href="/logout"><s:message
											code="global.info.log_out" /></a></li>
							</ul></li>
					</sec:authorize>
				</ul>
			</div>
		</div>
	</div>
</div>

<!-- 
<script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
		$('.navbar li').click(function(e) {
			$('.navbar li').removeClass('active');
			var $this = $(this);
			if (!$this.hasClass('active')) {
				$this.addClass('active');
			}
			e.preventDefault();
		});
	});
</script>
 -->