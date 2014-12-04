<%@ include file="/common/taglibs.jsp"%>

<div id="eformsContent" class="eformsContent">
	<form action="eforms.html" method="post" enctype="multipart/form-data" name="eform" id="eform">
		<input type="hidden" name="supplier" value="40114112001"/>
		<div class="page-header">
			<h1 id="pageTitle">Melding Internetoplichting</h1>
		</div>
		<input type="hidden" name="formDefinitionCode" value="<c:out value="${requestScope['formDefinitionCode']}"/>"/>
		<input type="hidden" name="pageNumber" value="<c:out value="${requestScope['submitPageNumber']}"/>"/>
		<input type="hidden" name="formCode" value="<c:out value="${requestScope['formCode']}"/>"/>
		<h2 class="questiontitle">Stoppen </h2>
		<div class="form-group" id="desc">
			<span id="block_info1" class="infotext">
				Weet u zeker dat u wilt stoppen en het venster wilt sluiten?<br>
				Vul dan de onderstaande vraag in en kies 'Ja ik stop'.
				Uw formulier wordt dan niet verzonden.
			</span>
		</div>
		<div class="form-group">
			<label class="control-label">Waarom stopt u?</label>
			<div class="radio">
				<label>
					<input type="radio" value="A" name="stop_question"/>
					Het invullen kost me te veel tijd
				</label>
			</div>
			<div class="radio">
				<label>
					<input type="radio" value="B" name="stop_question"/>
					Ik zie nu dat ik dit formulier niet moet gebruiken
				</label>
			</div>
			<div class="radio">
				<label>
					<input type="radio" value="C" name="stop_question"/>
					Ik was alleen maar nieuwsgierig
				</label>
			</div>
		</div>
		<div class="form-group">
			<div class="formbuttons">
				<input class="btn btn-primary" name="submit_action" value="Nee, ga terug" type="submit">
				<input class="btn btn-danger" name="submit_action" value="Ja, ik stop" type="submit">
			</div>
		</div>
	</form>
	</div>
	<!-- contentarea -->

<content tag="local_script">

<c:if test="${pageContext.request.remoteUser != null}">
<script type="text/javascript">
// <![CDATA[
	setTimeout('showSessionAlert()',720000);
	function showSessionAlert()	{
		var now=new Date();
		var newdate=new Date();
		var newtimems=newdate.getTime()+(3*60*1000);
		newdate.setTime(newtimems);
		alert('U bent meer dan 12 minuten bezig met het invullen van dit scherm. Klik op een knop onderin het invulscherm. ' +
				'U heeft hiervoor nog 3 minuten (tot ' + newdate.formatDate("H:i") + '). Anders moet u alle gegevens opnieuw invullen.');
	}
// ]]>
</script>
</c:if>

<c:if test="${pageContext.request.remoteUser == null}">
<script type="text/javascript">
// <![CDATA[
	setTimeout('showSessionAlert()',3300000);
	function showSessionAlert()	{
		var now=new Date();
		var newdate=new Date();
		var newtimems=newdate.getTime()+(5*60*1000);
		newdate.setTime(newtimems);
		alert('U bent meer dan 55 minuten bezig met het invullen van dit scherm. Klik op een knop onderin het invulscherm. ' +
				'U heeft hiervoor nog 5 minuten (tot ' + newdate.formatDate("H:i") + '). Anders moet u alle gegevens opnieuw invullen.');
	}
// ]]>
</script>
</c:if>

</content>
