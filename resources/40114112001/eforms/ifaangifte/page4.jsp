<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<div id="eformsContent" class="eformsContent">
	<form  id="dialog" class="form form-horizontal" action="formPage.html" method="post" enctype="multipart/form-data" name="eform">
		<input type="hidden" name="supplier" value="40114112001"/>

		<div class="page-header">
			<h1 id="pageTitle">Melding Internetoplichting</h1>
		</div>
		<input type="hidden" name="dialogSessionId" value="<c:out value="${requestScope['dialogSessionId']}"/>"/>
		<input type="hidden" name="formDefinitionCode" value="<c:out value="${requestScope['formDefinitionCode']}"/>"/>
		<input type="hidden" name="pageNumber" value="4"/>
		<input type="hidden" name="formCode" value="<c:out value="${requestScope['formCode']}"/>"/>

		<h2>Controleren en verzenden</h2>
		<p>
			Hieronder ziet u uw melding zoals u deze heeft ingevuld. Wij verzoeken u deze gegevens te controleren.
		<p>
		<p>
			Als de melding correct is moet u dit onderaan het scherm bevestigen en op "verzenden" klikken.<br/>
			Uw melding wordt dan direct naar de politie gestuurd, en u ontvangt een ontvangstbevestiging op het e-mailadres dat u heeft ingevoerd.
		</p>

		<div class="panel panel-forms">
			<div class="panel-heading">Uw ingevulde gegevens zijn:</div>
			<div class="panel-body">
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Burgerservice nummer</label>
					<div class="dialoganswer"><c:out value="${requestScope['bsn']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Voorna(a)am(en)</label>
					<div class="dialoganswer"><c:out value="${requestScope['firstname']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Tussenvoegsels</label>
					<div class="dialoganswer"><c:out value="${requestScope['middlename']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Achternaam</label>
					<div class="dialoganswer"><c:out value="${requestScope['lastname']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Geslacht</label>
					<div class="dialoganswer"><c:out value="${requestScope['gender']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Geboorteland</label>
					<div class="dialoganswer"><c:out value="${requestScope['b_country']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Geboortedatum</label>
					<div class="dialoganswer"><c:out value="${requestScope['b_date']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Geboorteplaats</label>
					<div class="dialoganswer"><c:out value="${requestScope['b_place']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Gebruikersnaam</label>
					<div class="dialoganswer"><c:out value="${requestScope['username']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">E-mailadres </label>
					<div class="dialoganswer"><c:out value="${requestScope['email']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Straatnaam</label>
					<div class="dialoganswer"><c:out value="${requestScope['street']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Huisnummer</label>
					<div class="dialoganswer"><c:out value="${requestScope['housenumber']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Huisnummer toevoeging</label>
					<div class="dialoganswer"><c:out value="${requestScope['housenumber_addon']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Postcode</label>
					<div class="dialoganswer"><c:out value="${requestScope['postal']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Woonplaats</label>
					<div class="dialoganswer"><c:out value="${requestScope['place']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Land</label>
					<div class="dialoganswer"><c:out value="${requestScope['country']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Telefoonnummer</label>
					<div class="dialoganswer"><c:out value="${requestScope['phone']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Mobiele telefoonnummer</label>
					<div class="dialoganswer"><c:out value="${requestScope['mobile']}"/></div>
				</div>
			</div> <!-- .panel-body -->
		</div> <!-- .panel -->

		<div class="panel panel-forms">
			<div class="panel-heading">Gegevens wederpartij</div>
			<div class="panel-body">
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Voorna(a)m(en)</label>
					<div class="dialoganswer"><c:out value="${requestScope['wp_firstname']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Tussenvoegsels</label>
					<div class="dialoganswer"><c:out value="${requestScope['wp_middlename']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Achternaam</label>
					<div class="dialoganswer"><c:out value="${requestScope['wp_lastname']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Gebruikersnaam</label>
					<div class="dialoganswer"><c:out value="${requestScope['wp_username']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">E-mailadres </label>
					<div class="dialoganswer"><c:out value="${requestScope['wp_email']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Straatnaam</label>
					<div class="dialoganswer"><c:out value="${requestScope['wp_street']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Huisnummer</label>
					<div class="dialoganswer"><c:out value="${requestScope['wp_housenumber']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Huisnummer toevoeging</label>
					<div class="dialoganswer"><c:out value="${requestScope['wp_housenumber_addon']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Postcode</label>
					<div class="dialoganswer"><c:out value="${requestScope['wp_postal']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Woonplaats</label>
					<div class="dialoganswer"><c:out value="${requestScope['wp_place']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Land</label>
					<div class="dialoganswer"><c:out value="${requestScope['wp_country']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Telefoonnummer</label>
					<div class="dialoganswer"><c:out value="${requestScope['wp_phone']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Mobiele telefoonnummer</label>
					<div class="dialoganswer"><c:out value="${requestScope['wp_mobile']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">IP adres</label>
					<div class="dialoganswer"><c:out value="${requestScope['wp_ipaddress']}"/></div>
				</div>
			</div> <!-- .panel-body -->
		</div> <!-- .panel -->

		<div class="panel panel-forms">
			<div class="panel-heading">Transactiegegevens</div>
			<div class="panel-body">
				<div class="form-group form-group-sm">
					<label class="dialogquestion">URL website</label>
					<div class="dialoganswer"><c:out value="${requestScope['site_url']}"/></div>
				</div>
				<logic:equal name="site_url" value="Overige">
					<div class="form-group form-group-sm">
						<label class="dialogquestion">URL website (overig)</label>
						<div class="dialoganswer"><c:out value="${requestScope['site_url_other']}"/></div>
					</div>
					<div class="form-group form-group-sm">
						<label class="dialogquestion">Hier gekomen via</label>
						<div class="dialoganswer"><c:out value="${requestScope['referrer']}"/></div>
					</div>
				</logic:equal>

				<!-- d.d. 27-11-2013 Ton ************************************************************************ -->
				<!-- Niet deleten. Vragen of het telefoonnummer aan marktplaats ********************************* -->
				<!-- mag worden doorgegeven mogelijk later weer nodig. ****************************************** -->
				<!-- OOK GEDEELTE PAG 3 UITGEREMD ***************************************************************

					<logic:equal name="site_url" value="www.marktplaats.nl">
						<div class="form-group form-group-sm">
							<label class="dialogquestion">Telefoonnummer mag doorgegeven aan Marktplaats indien van toepassing</label>
							<div class="dialoganswer"><c:out value="${requestScope['phone_mp']}"/></div>
						</div>
					</logic:equal>
				************************************************************************************************* -->
				<!-- ******************************************************************************************** -->
				<!-- ******************************************************************************************** -->

				<div class="form-group form-group-sm">
					<label class="dialogquestion">Advertentietitel</label>
					<div class="dialoganswer"><c:out value="${requestScope['adverttitle']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Advertentienummer</label>
					<div class="dialoganswer"><c:out value="${requestScope['advertnumber']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Omschrijving</label>
					<div class="dialoganswer"><c:out value="${requestScope['description']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Aanvullende gegevens</label>
					<div class="dialoganswer"><c:out value="${requestScope['description_extra']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Datum betaling</label>
					<div class="dialoganswer"><c:out value="${requestScope['paymentdate']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Bedrag aankoop</label>
					<div class="dialoganswer"><c:out value="${requestScope['amount']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Betalingsmethode</label>
					<div class="dialoganswer"><c:out value="${requestScope['paymentmethod']}"/></div>
				</div>
				<logic:equal name="paymentmethod" value="anders">
					<div class="form-group form-group-sm">
						<label class="dialogquestion">Namelijk</label>
						<div class="dialoganswer"><c:out value="${requestScope['paymentmethod_other']}"/></div>
					</div>
				</logic:equal>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Bankrekeningnummer wederpartij</label>
					<div class="dialoganswer"><c:out value="${requestScope['accountnumber']}"/></div>
				</div>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Naam rekeninghouder wederpartij</label>
					<div class="dialoganswer"><c:out value="${requestScope['accountowner']}"/></div>
				</div>
				<logic:equal name="paymentmethod" value="paypal">
					<div class="form-group form-group-sm">
						<label class="dialogquestion">Paypal e-mailadres wederpartij</label>
						<div class="dialoganswer"><c:out value="${requestScope['paypalname']}"/></div>
					</div>
				</logic:equal>
				<div class="form-group form-group-sm">
					<label class="dialogquestion">Datum melding</label>
					<div class="dialoganswer"><c:out value="${requestScope['meldingdate']}"/></div>
				</div>
			</div> <!-- .panel-body -->
		</div> <!-- .panel -->

		<div class="panel panel-forms">
			<div class="form-group form-inline" id="row_ep_formulier_accoord">
				<div class="errortext" id="error_form_ok"></div>
				<div class="dialogquestion">
					<label class="control-label">Zijn de gegevens correct en naar waarheid ingevuld?</label>
					<i class="mandatory"></i>
				</div>
				<div id="radio_ep_formulier_accoord" class="dialoganswer">
					<label class="radio-inline">
						<input name="form_ok" value="J" onclick="checkForm_ok()" type="radio" class="s20">
						Ja
					</label>
					<label class="radio-inline">
						<input name="form_ok" value="N" onclick="checkForm_nok()" type="radio" class="s20">
						Nee
					</label>
				</div>
			</div>
		</div> <!-- .panel -->

		<div class="panel panel-forms">
			<logic:notPresent name="errors">
				<div class="form-group form-inline hidden" id="general_error">
					<div class="errortext">! Er zijn fouten op deze pagina geconstateerd. Los deze eerst op voordat u verder kunt gaan.</div>
				</div>
			</logic:notPresent>
			<logic:present name="errors">
				<div class="form-group form-inline" id="general_error">
					<div class="errortext">! Er zijn fouten op deze pagina geconstateerd. Los deze eerst op voordat u verder kunt gaan.</div>
				</div>
			</logic:present>
			<div class="form-group form-inline">
				<div class="col-md-12">
					<div class="formbuttons" id="buttonBar">
						<input class="btn btn-primary" name="submit_action" value="Vorige" onclick="return validate();" type="submit"/>
						<input class="btn btn-signal hidden" name="submit_action" value="Verzenden" onclick="return validate();" type="submit" id="buttonNext">
						<img src="/resources/images/spinner.gif" id="spinner" class="hidden" />
					</div>
				</div>
			</div>
		</div> <!-- .panel -->
	</form>
</div> <!-- contentarea -->

<content tag="local_script">

<c:if test="${pageContext.request.remoteUser != null}">
<script type="text/javascript">
// <![CDATA[
	setTimeout('showSessionAlert()',720000);
	function showSessionAlert() {
		var now=new Date();
		var newdate=new Date();
		var newtimems=newdate.getTime()+(3*60*1000);
		newdate.setTime(newtimems);
		alert('U bent meer dan 12 minuten bezig met het invullen van dit scherm. Klik op een knop onderin het invulscherm. ' +
			'U heeft hiervoor nog 3 minuten (tot ' + newdate.formatDate("H:i") + '). Anders moet u alle gegevens opnieuw invullen.');
	}
// ]]></script>
</c:if>

<c:if test="${pageContext.request.remoteUser == null}">
<script type="text/javascript">
// <![CDATA[
	setTimeout('showSessionAlert()',3300000);
	function showSessionAlert() {
		var now=new Date();
		var newdate=new Date();
		var newtimems=newdate.getTime()+(5*60*1000);
		newdate.setTime(newtimems);
		alert('U bent meer dan 55 minuten bezig met het invullen van dit scherm. Klik op een knop onderin het invulscherm. ' +
			'U heeft hiervoor nog 5 minuten (tot ' + newdate.formatDate("H:i") + '). Anders moet u alle gegevens opnieuw invullen.');
	}
// ]]></script>
</c:if>

<script type="text/javascript">
// <![CDATA[
	//disable next button by default
	checkForm_nok_init();

	function validate() {
		reset_count();
		v_req("form_ok");

		if (get_count() > 0) {
			showGeneralError();
			return false;
		} else {
			showSpinner();
			return true;
		}
	}

	function showSpinner() {
		$$("#buttonBar .button").each(function(el) {
			el.addClassName('hidden');
		});
		$('spinner').removeClassName('hidden');
	}

	function checkForm_ok() {
		$('buttonNext').removeClassName('hidden');
	}

	function checkForm_nok() {
		$('buttonNext').addClassName('hidden');
	}

	function checkForm_nok_init() {
		$('buttonNext').addClassName('hidden');
	}

//	function doSubmitMail() {
//		if (validate()) {
//			document.forms[0].action="makeMail.html";
//			return true;
//		} else {
//			return false;
//		}
//	}

// ]]>
</script>

</content>
