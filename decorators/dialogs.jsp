<?xml version="1.0" encoding="UTF-8" ?>

<%@ include file="/common/taglibs.jsp"%>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html lang="nl">
	<head>
		<%@ include file="/common/meta.jsp" %>
		<title><yre:message key="webapp.name"/></title>

		<link rel="stylesheet" type="text/css" media="all" href="/fraudnet/resources/styles/style.css" />
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

		<decorator:head/>

	</head>
	<body<decorator:getProperty property="body.id" writeEntireProperty="true"/>
		<c:if test="${pageContext.request.remoteUser != null}">
			class="user_is_logged_in"
		</c:if>
	>
		<!--[if lt IE 7]>
			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
		<![endif]-->

		<div class="container pageHeader">
			<div class="clearfix">
				<div class="pull-left">
					<c:if test="${pageContext.request.remoteUser != null}">
						<a class="PageHeaderLogo" href="<c:url value='/index.html'/>"><img src="/fraudnet/resources/images/fraudnet-logo.png" /></a>
					</c:if>
					<c:if test="${pageContext.request.remoteUser == null}">
						<a class="PageHeaderLogo" href="<c:url value='/index.html'/>"><img src="/fraudnet/resources/images/fraudnet-logo.png" /></a>
					</c:if>
				</div> <!-- .pull-left -->
				<div class="pull-right">
					<c:if test="${pageContext.request.remoteUser != null}">
						<jsp:include page="/includes/topMenu.jsp"/>
					</c:if>
					<c:if test="${pageContext.request.remoteUser == null}">
						<jsp:include page="/includes/topMenu_blanco.jsp"/>
					</c:if>
				</div> <!-- .pull-right -->
			</div>
			<div class="headerStripe"></div>
			<%@ include file="/includes/messages.jsp" %>
		</div> <!-- container -->
		<div class="container">
			<div class="main-content">
				<div class="content-area">
					<div id="flowcontainer" class="flowcontainer">
						<logic:iterate id="menuItem" name="dialogForm" property="menuItems">
								<logic:equal name="menuItem" property="status" value="saved">
									<span class="label saved">
										<logic:present name="endpage">
											<bean:write name="menuItem" property="menuText"/>
										</logic:present>
										<logic:notPresent name="endpage">
											<a class="innermenuitem" href="#" onclick="javascript:checkDialogSubmitCount(<bean:write name="menuItem" property="url"/>);">
												<bean:write name="menuItem" property="menuText"/>
											</a>
										</logic:notPresent>
									</span>
								</logic:equal>
								<logic:equal name="menuItem" property="status" value="active">
									<span class="label current">
										<bean:write name="menuItem" property="menuText"/>
									</span>
								</logic:equal>
								<logic:equal name="menuItem" property="status" value="open">
									<span class="label">
										<bean:write name="menuItem" property="menuText"/>
									</span>
								</logic:equal>
						</logic:iterate>
					</div>
					<decorator:body/>
				</div> <!-- .content-area -->
			</div> <!-- .main-content -->
		</div> <!-- .container -->

		<c:if test="${pageContext.request.remoteUser != null}">
			<jsp:include page="/common/footer.jsp"/>
		</c:if>
		<c:if test="${pageContext.request.remoteUser == null}">
			<jsp:include page="/common/footer_blanco.jsp"/>
		</c:if>

		<script src="/fraudnet/resources/scripts/prototype.js"></script>
		<script src="/fraudnet/resources/scripts/yrtools.js"></script>
		<script src="/fraudnet/resources/scripts/yrsession.js"></script>
		<script src="/fraudnet/resources/scripts/validation.js"></script>
		<script src="/fraudnet/resources/scripts/yr-cookiebar.js"></script>

		<script src="<c:url value='/resources/${sessionScope.visit.formSupplier}/eforms/eforms.js'/>"> </script>
		<script src="<c:url value='/resources/${sessionScope.visit.formSupplier}/eforms/formatDate.js'/>"> </script>
		<script src="<c:url value='/resources/${sessionScope.visit.formSupplier}/eforms/util.js'/>"> </script>

		<script type="text/javascript">
			//<![CDATA[
				(function() {
					document.observe("dom:loaded", function() {
						$$('a.targetblank').each(function(el) {
							el.target = '_blank';
						});
					});
				})();
			//]]>
		</script>

		<c:if test="${pageContext.request.remoteUser != null}">
			<script type="text/javascript">
			//<![CDATA[
			  (function() {
				if (YRSESSION) {
					YRSESSION.initSessionTimeOutCheck("<c:url value='/index.html'/>", <%= session.getMaxInactiveInterval() %>);
				}
			  })();
			//]]>
			</script>
		</c:if>

		<!-- local script to bottom -->
		<decorator:getProperty property="page.local_script"></decorator:getProperty>

		<jsp:include page="/common/google.jsp"/>
	</body>
</html>
