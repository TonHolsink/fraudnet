<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<div id="eformsContent" class="eformsContent">
	<form  id="dialog" class="form form-horizontal" action="formPage.html" method="post" enctype="multipart/form-data" name="eform">
		<input type="hidden" name="supplier" value="40114112001"/>
		<div class="page-header">
			<h1 id="pageTitle">Melding Internetoplichting</h1>
		</div>
		<p id="errorhandle"></p>
		<input type="hidden" name="dialogSessionId" value="<c:out value="${requestScope['dialogSessionId']}"/>"/>
		<input type="hidden" name="formName" value="<c:out value="${requestScope['formName']}"/>"/>
		<input type="hidden" name="pageNumber" value="3"/>
		<input type="hidden" name="formCode" value="<c:out value="${requestScope['formCode']}"/>"/>

		<div class="panel panel-forms">
			<div class="panel-heading">Transactiegegevens</div>
			<div class="panel-body">

				<div class="form-group formrowtext">
					<div class="infotext">
						<p>
							Vul onderstaande velden zo volledig en accuraat als mogelijk in. Wij wijzen u erop dat de melding correct en naar waarheid dient te worden ingevuld.
						</p>
						<p>
							Velden met een <i class="mandatory"></i> zijn verplicht. Door met de muis op de <i class="ietje"></i> te staan, krijgt u extra informatie die u kan helpen bij het invullen van het antwoord.
						</p>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_site_url"><yre:printError formName="dialogForm" fieldName="site_url"/></div>
					<div class="dialogquestion">
						<label class="control-label">Betreft het een handelssite?</label>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<select name="site_url" size="" onchange="javascript:check_url(this)" class="form-control required">
							<option class="input" value="">Kies...</option>
							<option class="input" value="Overige" id="Overige">Geen handelssite, maar een webshop</option>
							<option class="input" value="">--------------------</option>
							<option class="input" value="www.marktplaats.nl" id="www.marktplaats.nl">Marktplaats.nl</option>
							<option class="input" value="Kapaza.nl" id="Kapaza.nl">Kapaza.nl</option>
							<option class="input" value="Koopjesspullen.nl" id="Koopjesspullen.nl">Koopjesspullen.nl</option>
							<option class="input" value="Koopplaats.nl" id="Koopplaats.nl">Koopplaats.nl</option>
							<option class="input" value="Laguza.nl" id="Laguza.nl">Laguza.nl</option>
							<option class="input" value="Marktnet.nl" id="Marktnet.nl">Marktnet.nl</option>
							<option class="input" value="Marktplaza.nl" id="Marktplaza.nl">Marktplaza.nl</option>
							<option class="input" value="Nieuwplaats.nl" id="Nieuwplaats.nl">Nieuwplaats.nl</option>
							<option class="input" value="Sellgo.nl" id="Sellgo.nl">Sellgo.nl</option>
							<option class="input" value="Speurders.nl" id="Speurders.nl">Speurders.nl</option>
							<option class="input" value="Speurmarkt.nl" id="Speurmarkt.nl">Speurmarkt.nl</option>
							<option class="input" value="Tweakers.nl" id="Tweakers.nl">Tweakers.nl</option>
							<option class="input" value="Tweedehands.net" id="Tweedehands.net">Tweedehands.net</option>
							<option class="input" value="Tweedehands.nl" id="Tweedehands.nl">Tweedehands.nl</option>
							<option class="input" value="Overigen" id="Overigen">Overigen</option>
						</select>
						<input type="hidden" value="<c:out value="${requestScope['site_url']}"/>" name="hiddenurl"/>
					</div>
				</div>
				<div class="form-group form-inline" id="referrer_row" style="display:none">
					<div class="errortext" id="error_referrer"><yre:printError formName="dialogForm" fieldName="referrer"/></div>
					<div class="dialogquestion">
						<label class="control-label">Hoe bent u hier terechtgekomen?</label>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<select name="referrer" size="" onchange="javascript:check_referrer_url(this)" class="form-control">
							<option class="input" value="">Kies...</option>
							<option class="input" value="Rechstreeks" id="Rechstreeks">Rechstreeks</option>
							<option class="input" value="">--------------------</option>
							<option class="input" value="www.marktplaats.nl" id="rwww.marktplaats.nl">Via Marktplaats.nl</option>
							<option class="input" value="Kapaza.nl" id="rKapaza.nl">Via Kapaza.nl</option>
							<option class="input" value="Koopjesspullen.nl" id="rKoopjesspullen.nl">Via Koopjesspullen.nl</option>
							<option class="input" value="Koopplaats.nl" id="rKoopplaats.nl">Via Koopplaats.nl</option>
							<option class="input" value="Laguza.nl" id="rLaguza.nl">Via Laguza.nl</option>
							<option class="input" value="Marktnet.nl" id="rMarktnet.nl">Via Marktnet.nl</option>
							<option class="input" value="Marktplaza.nl" id="rMarktplaza.nl">Via Marktplaza.nl</option>
							<option class="input" value="Nieuwplaats.nl" id="rNieuwplaats.nl">Via Nieuwplaats.nl</option>
							<option class="input" value="Sellgo.nl" id="rSellgo.nl">Via Sellgo.nl</option>
							<option class="input" value="Speurders.nl" id="rSpeurders.nl">Via Speurders.nl</option>
							<option class="input" value="Speurmarkt.nl" id="rSpeurmarkt.nl">Via Speurmarkt.nl</option>
							<option class="input" value="Tweakers.nl" id="rTweakers.nl">Via Tweakers.nl</option>
							<option class="input" value="Tweedehands.net" id="rTweedehands.net">Via Tweedehands.net</option>
							<option class="input" value="Tweedehands.nl" id="rTweedehands.nl">Via Tweedehands.nl</option>
							<option class="input" value="Overigen" id="rOverigen">Overigen</option>
						</select>
						<input type="hidden" value="<c:out value="${requestScope['referrer']}"/>" name="hiddenreferrer"/>
					</div>
				</div>

				<!-- d.d. 27-11-2013 Ton ************************************************************************ -->
				<!-- Niet deleten. Vragen of het telefoonnummer aan marktplaats ********************************* -->
				<!-- mag worden doorgegeven mogelijk later weer nodig. ****************************************** -->
				<!-- OOK GEDEELTE PAG 4 UITGEREMD ***************************************************************

				<div class="form-group form-inline" id="phone_mp" style="display:none;">
					<div class="errortext" id="error_phone_mp"><yre:printError formName="dialogForm" fieldName="phone_mp"/></div>
					<div class="dialogquestion">
						Mogen wij uw telefoonnummer doorgeven aan Marktplaats.nl zodat zij indien nodig contact met u kunnen opnemen?
					</div>
					<div class="dialoganswer">
						<label class="radio-inline">
							<logic:equal name="phone_mp" value="Ja">
								<input name="phone_mp" value="Ja" type="radio" checked class="s20 validate-one-required"/>
							</logic:equal>
							<logic:notEqual name="phone_mp" value="Ja">
								<input name="phone_mp" value="Ja" type="radio" class="s20 validate-one-required"/>
							</logic:notEqual>
							Ja
						</label>
						<label class="radio-inline">
							<logic:equal name="phone_mp" value="Nee">
								<input name="phone_mp" value="Nee" type="radio" checked class="s20 validate-one-required"/>
							</logic:equal>
							<logic:notEqual name="phone_mp" value="Nee">
								<input name="phone_mp" value="Nee" type="radio" class="s20 validate-one-required"/>
							</logic:notEqual>
							Nee
						</label>
					</div>
				</div>

				************************************************************************************************* -->
				<!-- ******************************************************************************************** -->
				<!-- ******************************************************************************************** -->

				<div class="form-group form-inline" id="otherurl" style="display:none;">
					<div class="errortext" id="error_site_url_other"><yre:printError formName="dialogForm" fieldName="site_url_other"/></div>
					<div class="dialogquestion">
						<label class="control-label">De webshop URL</label>
						<i class="ietje" title="Vul hier de domeinnaam van de webwinkel in. Doe dit zo volledig mogelijk maar zonder een specifieke pagina op te geven. Dus bv. www.eenwinkel.nl of www.winkels.nl/mijnwinkel."></i>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<input type="text" name="site_url_other" size="50" maxlength="50" title="" class="form-control required validate-url" value="<c:out value="${requestScope['site_url_other']}"/>"/>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_adverttitle"><yre:printError formName="dialogForm" fieldName="adverttitle"/></div>
					<div class="dialogquestion">
						<label class="control-label">Advertentietitel</label>
					</div>
					<div class="dialoganswer">
						<input name="adverttitle" size="50" maxlength="50" value="<c:out value="${requestScope['adverttitle']}"/>" type="text" class="form-control"/>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_advertnumber"><yre:printError formName="dialogForm" fieldName="advertnumber"/></div>
					<div class="dialogquestion" id="advertnum_required">
						<label class="control-label">Advertentienummer</label>
						<i class="ietje" title="Het advertentienummer is het unieke nummer waarmee u een advertentie kunt herkennen. Bij Marktplaats.nl staat het advertentienummer bijvoorbeeld rechts bovenaan de pagina. Als u het advertentienummer niet meer heeft, kunt u hier 'onbekend' invullen."></i>
						<i class="mandatory" id="adnumreqstar"></i>
					</div>
					<div class="dialogquestion" id="advertnum_notrequired">
						<label class="control-label">Advertentienummer</label>
						<i class="ietje" title="Het advertentienummer is het unieke nummer waarmee u een advertentie kunt herkennen. Bij Marktplaats.nl staat het advertentienummer bijvoorbeeld rechts bovenaan de pagina. Als u het advertentienummer niet meer heeft, kunt u hier 'onbekend' invullen."></i>
					</div>
					<div class="dialoganswer">
						<input name="advertnumber" size="30" maxlength="30" value="<c:out value="${requestScope['advertnumber']}"/>" type="text" onkeypress="return AllowAlphaNumeric(event)" id="advertnum_input" class="form-control"/>
					</div>
				</div>
				<div class="form-group">
					<div class="errortext" id="error_description"><yre:printError formName="dialogForm" fieldName="description"/></div>
					<div class="dialogquestion">
						<label class="control-label">Omschrijving conflict in maximaal 750 tekens</label>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<textarea class="form-control required" name="description" cols="39" rows="10" onkeypress="checkMaxFieldLength(this, 750)"><c:out value="${requestScope['description']}"/></textarea>
					</div>
					<div id="description_wordcount"></div>
				</div>
				<div class="form-group">
					<div class="errortext" id="error_description_extra"><yre:printError formName="dialogForm" fieldName="description_extra"/></div>
					<div class="dialogquestion">
						<label class="control-label">Aanvullende informatie</label>
						<i class="ietje" title="Heeft u nog opmerkingen of andere relevante informatie met betrekking tot uw melding? Is u bijvoorbeeld iets opgevallen aan de adverteerder, zijn advertentie of personalia? U kunt dit hier invullen"></i>
					</div>
					<div class="dialoganswer">
						<textarea class="form-control" name="description_extra" cols="39" rows="8" onkeypress="checkMaxFieldLength(this, 500)"><c:out value="${requestScope['description_extra']}"/></textarea>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_paymentdate"><yre:printError formName="dialogForm" fieldName="paymentdate"/></div>
					<div class="dialogquestion">
						<label class="control-label">Datum betaling</label>
					</div>
					<div class="dialoganswer">
						<div class="input-group">
							<input name="paymentdate" maxlength="12" size="12" type="text" readonly value="<c:out value="${requestScope['paymentdate']}"/>" class="form-control"/>
							<span class="input-group-btn"><button type="button" class="btn btn-default" title="Selecteer hier een datum" onclick="inputCal.select(document.forms[0].paymentdate,'pdlink','dd-MM-yyyy'); return false;" id="pdlink"><i class="fa fa-calendar fa-fw"></i></button></span>
						</div>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_amount"><yre:printError formName="dialogForm" fieldName="amount"/></div>
					<div class="dialogquestion">
						<label class="control-label">Bedrag aankoop</label>
						<i class="mandatory"></i>
						<span class="grayed">(&euro;99,99)</span>
					</div>
					<div class="dialoganswer">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-euro fa-fw"></i></span>
							<input name="amount" size="30" maxlength="30" value="<c:out value="${requestScope['amount']}"/>" type="text" class="form-control required validate-amount"/>
						</div>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_paymentmethod"><yre:printError formName="dialogForm" fieldName="paymentmethod"/></div>
					<div class="dialogquestion">
						<label class="control-label">Betalingsmethode</label>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<input type="hidden" value="<c:out value="${requestScope['paymentmethod']}"/>" name="hiddenpayment"/>
						<select id="payMethod" name="paymentmethod" size="" onchange="checkField_paymentmethod(this)" class="form-control required">
							<option class="input" value="">Kies een betaalmethode</option>
							<option class="input" value="overschrijving" id="overschrijving">Bankoverschrijving (met IBAN)</option>
							<option class="input" value="IDEAL" id="IDEAL">IDEAL (met IBAN)</option>
							<option class="input" value="buitenlands" id="buitenlands">Buitenlandse overschrijving (geen IBAN)</option>
							<option class="input" value="paypal" id="paypal">Paypal</option>
							<option class="input" value="creditcard" id="creditcard">Creditcard</option>
							<option class="input" value="rembours" id="rembours">Rembours</option>
							<option class="input" value="anders" id="anders">Anders ...</option>
						</select>
					</div>
				</div>
				<div class="form-group form-inline" id="othertype" style="display:none;">
					<div class="errortext" id="error_paymentmethod_other"><yre:printError formName="dialogForm" fieldName="paymentmethod_other"/></div>
					<div class="dialogquestion">
						<label class="control-label">Namelijk</label>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<input type="text" name="paymentmethod_other" size="50" maxlength="50" title="" value="<c:out value="${requestScope['paymentmethod_other']}"/>" class="form-control required"/>
					</div>
				</div>
				<div class="form-group form-inline" id="paypalnameid" style="display:none;">
					<div class="errortext" id="error_paypalname"><yre:printError formName="dialogForm" fieldName="paypalname"/></div>
					<div class="dialogquestion">
						<label class="control-label">Paypal e-mailadres wederpartij</label>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<input name="paypalname" size="40" maxlength="40" value="<c:out value="${requestScope['paypalname']}"/>" type="text" class="form-control required"/>
					</div>
				</div>
				<div class="form-group form-inline" id="accountnumberid" style="display:none;">
					<div class="errortext" id="error_accountnumber"><yre:printError formName="dialogForm" fieldName="accountnumber"/></div>
					<div class="dialogquestion">
						<label class="control-label">Bankrekeningnummer wederpartij</label>
						<i id="accountnumber_help" class="ietje" title="Vul hier het IBAN- of Sepanummer van de tegenpartij in."></i>
						<i class="mandatory"></i>
						<div id="accountnumber_remark" class="marginTop" style="display:none;">(Alleen geldige IBAN-nummers worden geaccepteerd! Zie links met informatie over IBAN.)</div>
					</div>
					<div class="dialoganswer">
						<input name="accountnumber" size="34" maxlength="34" value="<c:out value="${requestScope['accountnumber']}"/>" type="text" onkeypress="return AllowAlphaNumeric(event)" class="form-control required validate-iban"/>
						<div id="explain_iban" class="marginTop" style="display:none;">
							<ul>
								<li><a href="http://www.ibannl.org/iban_nummer_uitleg.php" class="targetblank" target="_blank">Informatie over IBAN</a></li>
								<li><a href="https://www.ibanbicservice.nl/SingleRequest.aspx" class="targetblank" target="_blank">online IBAN check/converter</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="form-group form-inline" id="accountownerid" style="display:none;">
					<div class="errortext" id="error_accountowner"><yre:printError formName="dialogForm" fieldName="accountowner"/></div>
					<div class="dialogquestion">
						<label class="control-label">Naam rekeninghouder wederpartij</label>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<input name="accountowner" size="30" maxlength="30" value="<c:out value="${requestScope['accountowner']}"/>" type="text" class="form-control required"/>
					</div>
				</div>
				<input type="hidden" name="meldingdate"/>
				<input type="hidden" name="meldingtime"/>
			</div> <!-- .panel-body -->

			<div class="panel-footer">

				<logic:notPresent name="errors">
					<div class="form-group form-inline hidden" id="general_error">
						<div class="errortext">! U heeft niet alle verplichte vragen beantwoord. Na het invullen van deze vragen kunt u naar de volgende pagina.</div>
					</div>
				</logic:notPresent>
				<logic:present name="errors">
					<div class="form-group form-inline" id="general_error">
						<div class="errortext">! U heeft niet alle verplichte vragen beantwoord. Na het invullen van deze vragen kunt u naar de volgende pagina.</div>
					</div>
				</logic:present>
				<div class="form-group form-inline">
					<div class="col-sm-12">
						<span class="formbuttons">
							<input class="btn btn-primary" name="submit_action" value="Vorige" onclick="return validate();" type="submit"/>
							<input class="btn btn-primary" name="submit_action" value="Volgende" onclick="return validate();" type="submit"/>
						</span>
					</div>
				</div>

			</div> <!-- .panel-footer -->

		</div> <!-- .panel -->

	</form>
</div> <!-- contentarea -->

<content tag="local_script">

<script type="text/javascript" src="/scripts/CalendarPopup.js"></script>

<script type="text/javascript">
// <![CDATA[
	var inputCal = new CalendarPopup();

	//Prevent return press
	function kk(e) {
		key = e ? e.which : window.event.keyCode;
		if(key==13) {
			return false;
		}
	}

	document.onkeypress = kk;

// ]]>
</script>

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
// ]]></script>
</c:if>

<c:if test="${pageContext.request.remoteUser == null}">
<script type="text/javascript">
// <![CDATA[
	setTimeout('showSessionAlert()',3300000);
	function showSessionAlert(){
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
	function check_url(element) {
		var url_value = element.value;
		if (url_value=='Overige') {
			$('otherurl').style.display ='block';
			$('advertnum_notrequired').style.display='block';
			$('advertnum_required').style.display='none';
			$('advertnum_input').className='form-control';
			$('referrer_row').style.display='block';
			$('referrer_row').className+=' required';
		} else if (url_value=='www.marktplaats.nl') {
			$('advertnum_required').style.display='block';
			$('advertnum_input').className='form-control required';
			$('advertnum_notrequired').style.display='none';
			$('otherurl').style.display ='none';
			document.forms[0].site_url_other.value = '';
			$('referrer_row').style.display='none';
			$('referrer_row').className='form-group form-inline';
			document.forms[0].referrer.value='';
		} else {
			$('otherurl').style.display ='none';
			$('advertnum_required').style.display='none';
			$('advertnum_notrequired').style.display='block';
			$('advertnum_input').className='form-control';
			document.forms[0].site_url_other.value = '';
			$('referrer_row').style.display='none';
			$('referrer_row').className='form-group form-inline';
			document.forms[0].referrer.value='';
		}

		/* d.d. 27-11-2013 Ton ******************************************************************
		//Niet deleten. Vragen of het telefoonnummer aan marktplaats ****************************
		//mag worden doorgegeven mogelijk later weer nodig. *************************************
		//Hetzelfde geldt voor het html-gedeelte hieronder (ong. r.200) *************************

		if (url_value=="www.marktplaats.nl") {
			$('phone_mp').style.display='block';
		} else {
			$('phone_mp').style.display='none';
			document.getElementsByName('phone_mp')[1].checked=true;
		}

		****************************************************************************************/
		/***************************************************************************************/
		/***************************************************************************************/

		return true;
	}
// ]]>
</script>


<script type="text/javascript">
// <![CDATA[
	function check_referrer_url() {
		/* d.d. 27-11-2013 Ton ************************************************************************
		** Niet deleten. Vragen of het telefoonnummer aan marktplaats *********************************
		** mag worden doorgegeven mogelijk later weer nodig. ******************************************

		if (typeof document.forms[0].referrer != "undefined" && document.forms[0].referrer != null) {
			var element = document.forms[0].referrer;
			var referrer_value = element.value;
			var url_value = document.forms[0].site_url.value;

			if (referrer_value=="www.marktplaats.nl" || url_value == "www.marktplaats.nl") {
				$('phone_mp').style.display='block';
			} else {
				$('phone_mp').style.display='none';
				document.getElementsByName('phone_mp')[1].checked=true;
			}

		}
		********************************************************************************************/
	}
// ]]>
</script>


<script type="text/javascript">
// <![CDATA[
	function toggleIBAN(iban) {
		var helpIban = "Vul hier het IBAN- of Sepanummer van de tegenpartij in.";
		var helpAccount = "Vul hier het bankrekeningnummer van de tegenpartij in.";
		if (iban == true) {
			$('explain_iban').style.display ='block';
			$('accountnumber_remark').style.display ='block';
			$('accountnumber_help').title= helpIban;
		} else {
			$('explain_iban').style.display ='none';
			$('accountnumber_remark').style.display ='none';
			$('accountnumber_help').title= helpAccount;
		}
	}

	function checkField_paymentmethod(element) {
		var paymentmethod_value = element.value;
		if (paymentmethod_value=='anders') {
			$('othertype').style.display ='block';
			$('accountnumberid').style.display ='none';
			$('accountownerid').style.display ='none';
			$('paypalnameid').style.display ='none';
			document.forms[0].accountnumber.value = '';
			document.forms[0].accountowner.value = '';
			document.forms[0].paypalname.value = '';
			return true;
		} else if (paymentmethod_value=='overschrijving' ||
					 paymentmethod_value=='IDEAL') {
			$('othertype').style.display ='none';
			$('accountnumberid').style.display ='block';
			toggleIBAN(true);
			$('accountownerid').style.display ='block';
			$('paypalnameid').style.display ='none';
			document.forms[0].paymentmethod_other.value = '';
			document.forms[0].paypalname.value = '';
			return true;
		} else if (paymentmethod_value=='buitenlands') {
			$('othertype').style.display ='none';
			$('accountnumberid').style.display ='block';
			toggleIBAN(false);
			$('accountownerid').style.display ='block';
			$('paypalnameid').style.display ='none';
			document.forms[0].paymentmethod_other.value = '';
			document.forms[0].paypalname.value = '';
			return true;
		} else if (paymentmethod_value=='paypal') {
			$('othertype').style.display ='none';
			$('accountnumberid').style.display ='none';
			$('accountownerid').style.display ='none';
			$('paypalnameid').style.display ='block';
			document.forms[0].paymentmethod_other.value = '';
			document.forms[0].accountnumber.value = '';
			document.forms[0].accountowner.value = '';
			return true;
		} else if (paymentmethod_value=='') {
			$('othertype').style.display ='none';
			$('accountnumberid').style.display ='none';
			$('accountownerid').style.display ='none';
			$('paypalnameid').style.display ='none';
			document.forms[0].paymentmethod_other.value = '';
			document.forms[0].accountnumber.value = '';
			document.forms[0].accountowner.value = '';
			document.forms[0].paypalname.value = '';
			return true;
		} else {
			$('othertype').style.display ='none';
			$('accountnumberid').style.display ='none';
			$('accountownerid').style.display ='none';
			$('paypalnameid').style.display ='none';
			document.forms[0].paymentmethod_other.value = '';
			document.forms[0].accountnumber.value = '';
			document.forms[0].accountowner.value = '';
			document.forms[0].paypalname.value = '';
			return true;
		}
	}
// ]]>
</script>

<script type="text/javascript">
// <![CDATA[

	function validate() {
		//fill date
		document.forms[0].meldingdate.value = writeDate();
		document.forms[0].meldingtime.value = writeTime();
		reset_count();

		if (document.forms[0].accountnumber.value != "") {
			document.forms[0].accountnumber.value =
				document.forms[0].accountnumber.value.replace(/\./g, "");
		}

		var descExtra = document.forms[0].description_extra.value;
		if (descExtra.length > 500) {
			fillMsg("! Dit veld mag niet meer dan 500 tekens bevatten. Mogelijk heeft u een grote hoeveelheid informatie uit een andere toepassing (bijvoorbeeld mail) ingeplakt. Pas de inhoud van dit veld aan.", "description_extra");
			return false;
		}

	}

	function siteNotInList() {
		var form = document.forms[0];
		for (var i = 3; i < form["site_url"].options.length-1; i++) {
			var site_url_other = form["site_url_other"].value.toLowerCase();
			var site_url = form["site_url"].options[i].text.toLowerCase();
			if ((site_url_other.include("." + site_url)) || (site_url_other.startsWith(site_url))) {
				v_count++;
				fillMsg("! Dit webadres moet u hierboven uit de lijst selecteren.<br/>", "site_url_other");
				return false;
			}
		}
		return true;
	}

	function setSelected() {
		//payment method
		var payValue= document.forms[0].hiddenpayment.value;
		var paymentOption = $(payValue);
		if (typeof paymentOption != "undefined" && paymentOption != null) {
			paymentOption.selected = true;
		}
		//site url
		var urlValue= document.forms[0].hiddenurl.value;
		var url = $(urlValue);

		if (typeof url != "undefined" && url != null) {
			url.selected = true;
		}

		//referrer
		var referrerValue = document.forms[0].hiddenreferrer.value;
		if (typeof referrerValue != "undefined" && referrerValue != null) {
			var referrerurl = $("r"+referrerValue);

			if (typeof referrerurl != "undefined" && referrerurl != null) {
				referrerurl.selected = true;
			}
		}
	}

	setSelected();
	checkField_paymentmethod(document.forms[0].paymentmethod);
	check_url(document.forms[0].site_url);
	check_referrer_url();

	new Validation('dialog', {immediate : true, useTitles : true}); // OR new Validation(document.forms[0]);

// ]]></script>

</content>
