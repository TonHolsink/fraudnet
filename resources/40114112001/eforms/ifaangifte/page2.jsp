<%@ include file="/common/taglibs.jsp"%>

<div id="eformsContent" class="eformsContent">
	<form  id="dialog" class="form form-horizontal" action="formPage.html" method="post" enctype="multipart/form-data" name="eform">
		<input type="hidden" name="supplier" value="40114112001"/>
		<div class="page-header">
			<h1 id="pageTitle">Melding Internetoplichting</h1>
		</div>
		<p id="errorhandle"></p>
		<input type="hidden" name="dialogSessionId" value="<c:out value="${requestScope['dialogSessionId']}"/>"/>
		<input type="hidden" name="formName" value="<c:out value="${requestScope['formName']}"/>"/>
		<input type="hidden" name="pageNumber" value="2"/>
		<input type="hidden" name="formCode" value="<c:out value="${requestScope['formCode']}"/>"/>

		<div class="panel panel-forms">
			<div class="panel-heading">Gegevens wederpartij</div>
			<div class="panel-body">

				<div class="form-group formrowtext">
					<div class="infotext">
						Met wederpartij wordt de tegenpartij bedoeld: de persoon die zijn of haar afspraken met u niet is nagekomen.
					</div>
				</div>
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
					<div class="errortext" id="error_wp_firstname"><yre:printError formName="dialogForm" fieldName="wp_firstname"/></div>
					<div class="dialogquestion">
						<label class="control-label">Voorna(a)m(en)</label>
					</div>
					<div class="dialoganswer">
						<input name="wp_firstname" size="50" maxlength="100" value="<c:out value="${requestScope['wp_firstname']}"/>" title="" type="text" class="form-control"/>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="dialogquestion">
						<label class="control-label">Tussenvoegsel(s)</label>
						<i title="Bijvoorbeeld de, van, van der of el." class="ietje"></i>
					</div>
					<div class="dialoganswer">
						<input name="wp_middlename" size="10" maxlength="10" value="<c:out value="${requestScope['wp_middlename']}"/>" title="Bijvoorbeeld de, van, van der of el." type="text" class="form-control"/>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_wp_lastname"><yre:printError formName="dialogForm" fieldName="wp_lastname"/></div>
					<div class="dialogquestion">
						<label class="control-label">Achternaam</label>
					</div>
					<div class="dialoganswer">
						<input name="wp_lastname" size="50" maxlength="100" value="<c:out value="${requestScope['wp_lastname']}"/>" title="" type="text" class="form-control"/>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_wp_username"><yre:printError formName="dialogForm" fieldName="wp_username"/></div>
					<div class="dialogquestion">
						<label class="control-label">Gebruikersnaam handelssite</label>
					</div>
					<div class="dialoganswer">
						<input name="wp_username" size="30" maxlength="30" value="<c:out value="${requestScope['wp_username']}"/>" title="" type="text" class="form-control"/>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_wp_email"><yre:printError formName="dialogForm" fieldName="wp_email"/></div>
					<div class="dialogquestion">
						<label class="control-label">E-mailadres wederpartij</label>
						<i title="Als u het e-mailadres niet meer weet kunt u hier 'onbekend@onbekend.nl' invullen." class="ietje"></i>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<input name="wp_email" size="50" maxlength="50" value="<c:out value="${requestScope['wp_email']}"/>" title="" type="text" class="form-control required validate-email"/>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_wp_street"><yre:printError formName="dialogForm" fieldName="wp_street"/></div>
					<div class="dialogquestion">
						<label class="control-label">Straat</label>
					</div>
					<div class="dialoganswer">
						<input name="wp_street" size="30" maxlength="35" value="<c:out value="${requestScope['wp_street']}"/>" title="" type="text" class="form-control"/>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_wp_housenumber"><yre:printError formName="dialogForm" fieldName="wp_housenumber"/></div>
					<div class="dialogquestion">
						<label class="control-label">Huisnummer</label>
						<i title="Vul alleen cijfers in." class="ietje"></i>
					</div>
					<div class="dialoganswer">
						<input name="wp_housenumber" size="10" maxlength="5" value="<c:out value="${requestScope['wp_housenumber']}"/>" title="Vul alleen cijfers in." onkeypress="return AllowOnlyNumeric(event)" type="text" onBlur="getAddress()" class="form-control"/>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_wp_housenumber_addon"><yre:printError formName="dialogForm" fieldName="wp_housenumber_addon"/></div>
					<div class="dialogquestion">
						<label class="control-label">Huisnummer toevoeging</label>
						<i title="Bijvoorbeeld II of bis." class="ietje"></i>
					</div>
					<div class="dialoganswer">
						<input name="wp_housenumber_addon" size="5" maxlength="4" onkeypress="return AllowAlphaNumeric(event)" value="<c:out value="${requestScope['wp_housenumber_addon']}"/>" title="Bijvoorbeeld II of bis." type="text" class="form-control"/>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_wp_postal"><yre:printError formName="dialogForm" fieldName="wp_postal"/></div>
					<div class="errortext" id="error_wp_place"><yre:printError formName="dialogForm" fieldName="wp_place"/></div>
					<div class="dialogquestion">
						<label class="control-label">Postcode en woonplaats</label>
						<i title="Postcode: Gebruik geen spatie. Bijvoorbeeld 1234AB." class="ietje"></i>
					</div>
					<div class="dialoganswer">
						<input name="wp_postal" size="6" maxlength="6" value="<c:out value="${requestScope['wp_postal']}"/>" placeholder="Postcode" title="Gebruik geen spatie. Bijvoorbeeld 1234AB." type="text" onChange="getAddress()" class="form-control validate-postal"/>
						<span class="help-block inline-block">(1234AA)</span>
						<input name="wp_place" size="30" maxlength="24" value="<c:out value="${requestScope['wp_place']}"/>" placeholder="Woonplaats" title="" type="text" class="form-control"/>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_wp_country"><yre:printError formName="dialogForm" fieldName="wp_country"/></div>
					<div class="dialogquestion">
						<label class="control-label">Land</label>
					</div>
					<div class="dialoganswer">
						<input name="wp_country" size="10" maxlength="10" value="<c:out value="${requestScope['wp_country']}"/>" title="" type="text" class="form-control"/>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_wp_phone"><yre:printError formName="dialogForm" fieldName="wp_phone"/></div>
					<div class="dialogquestion">
						<label class="control-label">Telefoonnummer</label>
						<i title="Vul tien cijfers in. Gebruik geen streepje, haakje of spatie. Bijvoorbeeld 0123456789." class="ietje"></i>
					</div>
					<div class="dialoganswer">
						<input name="wp_phone" size="10" maxlength="10" value="<c:out value="${requestScope['wp_phone']}"/>" onkeypress="return AllowOnlyNumeric(event)" title="Vul tien cijfers in. Gebruik geen streepje, haakje of spatie. Bijvoorbeeld 0123456789." type="text" class="form-control validate-phone"/>
						<span class="help-block inline-block">(0201234567)</span>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_wp_mobile"><yre:printError formName="dialogForm" fieldName="wp_mobile"/></div>
					<div class="dialogquestion">
						<label class="control-label">Mobiele telefoonnummer</label>
						<i title="Vul tien cijfers in. Gebruik geen streepje, haakje of spatie. Bijvoorbeeld 0123456789." class="ietje"></i>
					</div>
					<div class="dialoganswer">
						<input name="wp_mobile" size="10" maxlength="10" value="<c:out value="${requestScope['wp_mobile']}"/>" onkeypress="return AllowOnlyNumeric(event)" title="Vul tien cijfers in. Gebruik geen streepje, haakje of spatie. Bijvoorbeeld 0123456789." type="text" class="form-control validate-phone"/>
						<span class="help-block inline-block">(0612345678)</span>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_wp_ipaddress"><yre:printError formName="dialogForm" fieldName="wp_ipaddress"/></div>
					<div class="dialogquestion">
						<label class="control-label">IP adres</label>
						<i title="Dit is een nummer waarmee elke computer die verbonden is met het internet, zichtbaar is voor alle andere computers die online zijn. Bijvoorbeeld: 145.119.165.102. De volgende adressen invullen heeft geen zin, omdat dit bekende mailservers zijn : 10.X.X.X, 65.54.X.X, 65.55.X.X, 195.78.85.X, 209.85.X.X, 212.54.42.X" class="ietje"></i>
					</div>
					<div class="dialoganswer">
						<input name="wp_ipaddress" size="15" maxlength="15" value="<c:out value="${requestScope['wp_ipaddress']}"/>" title="Vul een up nummer in, bijvoorbeeld : 192.168.0.1. Gebruik alleen cijfers en punten. De volgende adressen invullen heeft geen zin, omdat dit bekende mailservers zijn : 10.X.X.X, 65.54.X.X, 65.55.X.X, 195.78.85.X, 209.85.X.X, 212.54.42.X " type="text" class="form-control validate-ip"/>
					</div>
				</div>
				<div class="form-group form-inline" id="feedback_wederpartij">
					<div class="errortext" id="error_feedback_wederpartij"><yre:printError formName="dialogForm" fieldName="feedback_wederpartij"/></div>
					<div class="dialogquestion">
						<label class="control-label">Mogen wij uw e-mailadres verstrekken aan de wederpartij zodat zij het geschil met u op kunnen lossen? Als u "nee" kiest krijgt de wederpartij geen melding van de door u gedane aangifte.</label>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<label class="radio-inline">
							<logic:equal name="feedback_wederpartij" value="Y">
								<input name="feedback_wederpartij" value="Y" type="radio" checked class="s20 validate-one-required">
							</logic:equal>
							<logic:notEqual name="feedback_wederpartij" value="Y">
								<input name="feedback_wederpartij" value="Y" type="radio" class="s20 validate-one-required">
							</logic:notEqual>
							Ja
						</label>
						<label class="radio-inline">
							<logic:equal name="feedback_wederpartij" value="N">
								<input name="feedback_wederpartij" value="N" type="radio" checked class="s20 validate-one-required">
							</logic:equal>
							<logic:notEqual name="feedback_wederpartij" value="N">
								<input name="feedback_wederpartij" value="N" type="radio" class="s20 validate-one-required">
							</logic:notEqual>
							Nee
						</label>
					</div>
				</div>
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
					<div class="forminput">
						<div class="col-sm-12">
							<span class="formbuttons">
								<input class="btn btn-primary" name="submit_action" value="Vorige" onclick="return validate();" type="submit"/>
								<input class="btn btn-primary" name="submit_action" value="Volgende" onclick="return validate();" type="submit"/>
							</span>
						</div>
					</div>
				</div>
			</div> <!-- .panel-footer -->

		</div> <!-- .panel -->

	</form>
</div> <!-- contentarea -->

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
// ]]></script>
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
// ]]></script>
</c:if>

<script type="text/javascript">
// <![CDATA[
	/**
	 * Call the backend to retrieve a street/place combi.
	 */
	function getAddress() {
		//UITGEZET
		return;
		var postalCode = this.document.eform.wp_postal.value;
		var houseNumber = this.document.eform.wp_housenumber.value;
		if (postalCode != '' && houseNumber != '') {
			if (postalCode.length == 6) {
				var url='retrieveAddress.html';
				new Ajax.Request
				(
					url,
					{
						method: 'get',
						parameters: 'supplierid=40114112001&postal=' + postalCode + "|" + houseNumber,
					 	onComplete: setAddress
					}
				);
			}
		}
	}

	/**
	 * Process the result of the call to the address retrieval.
	 */
	function setAddress(request) {
		var pcData = request.responseText;
		var jsonData = eval('(' + pcData + ')');
		var error = jsonData.error;
		if (error == '') {
			var street = jsonData.street;
			var place = jsonData.place;
			this.document.eform.wp_street.value = street;
			this.document.eform.wp_place.value = place;
		}
	}


// ]]>
</script>

<script type="text/javascript">
// <![CDATA[

	function validate() {
/*		reset_count();
		v_req("wp_email");
		v_postal("wp_postal");
		v_email("wp_email");
		v_phone("wp_phone");
		v_phone("wp_mobile");
		v_ipaddress("wp_ipaddress");

		if (get_count() > 0) {
			showGeneralError();
			return false;
		} else {
			return checkSubmitCount();
		}
*/
	}

	new Validation('dialog', {immediate : true, useTitles : true}); // OR new Validation(document.forms[0]);

// ]]></script>

</content>
