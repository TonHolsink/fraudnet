<%@ include file="/common/taglibs.jsp"%>

<div id="eformsContent" class="eformsContent">
	<form action="eforms.html" method="post" enctype="multipart/form-data" name="eform" id="eform">
		<input type="hidden" name="supplier" value="40114112001"/>
		<div class="page-header">
			<h1 id="pageTitle">Afronden</h1>
		</div>
		<input type="hidden" name="formDefinitionCode" value="<c:out value="${requestScope['formDefinitionCode']}"/>"/>
		<input type="hidden" name="pageNumber" value="4"/>
		<input type="hidden" name="formCode" value="<c:out value="${requestScope['formCode']}"/>"/>
		<div class="formrow" id="row_">
			<p>
				Hartelijk dank voor uw melding.
			</p>
			<p>
				De politie zal uw melding beoordelen en gebruiken in een eventueel strafrechtelijk onderzoek.
				Ook kan uw melding aanleiding zijn tot blokkade van de bankrekening, het IP-adres en/of het account van de adverteerder op de handelssite.
			</p>
		</div>
		<div class="eformsHeader">
			<h2 class="title">Bericht en afhandeling</h2>
		</div>
		<div class="formrow">
			<p>
				U ontvangt vandaag een bevestiging per e-mail. Indien nodig neemt de Politie naar aanleiding van uw melding contact met u op.<br/>
				Vooralsnog hoeft u geen nadere actie te ondernemen.
			</p>
			<p>
				U kunt uw melding voor uw eigen archief afdrukken. Kies hiervoor onderstaande link.
			</p>
			<p>
				<a class="morelink" href='getPDF.html?formDefinitionCode=<c:out value="${requestScope['formName']}"/>&amp;formCode=<c:out value="${requestScope['formCode']}"/>&amp;supCode=<c:out value="${requestScope['supplier']}"/>'/>
				PDF openen
				</a>
			</p>
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
	};
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
	};

	var DIALOG_ENDED = true; //Voorkomt melding dat je je gegevens kwijtraakt bij inloggen. Terwijl je klaar bent. Zie bpi_login_dialog.jsp
// ]]>
</script>
</c:if>

</content>
