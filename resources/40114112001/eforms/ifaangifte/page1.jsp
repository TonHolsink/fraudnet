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
		<input type="hidden" name="pageNumber" value="1"/>
		<input type="hidden" name="formCode" value="<c:out value="${requestScope['formCode']}"/>"/>

		<div class="panel panel-forms">
			<div class="panel-heading">Uw gegevens</div>
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
					<div class="errortext" id="error_bsn"><yre:printError formName="dialogForm" fieldName="bsn"/></div>
					<div class="dialogquestion">
						<label class="control-label">Burgerservicenummer</label>
						<i class="ietje" title="Iedere Nederlandse burgers heeft een burgerservicenummer (BSN). Dit bsn is een persoonsnummer. Uw BSN vindt u bijvoorbeeld op uw rijbewijs of verzekeringspas. Indien u geen BSN nummer heeft, kunt u aangifte doen bij uw lokale politiebureau"></i>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<input name="bsn" size="10" maxlength="9" value="<c:out value="${requestScope['bsn']}"/>" onkeypress="return AllowOnlyNumeric(event)" title="" type="text" class="form-control required validate-bsn">
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_firstname"><yre:printError formName="dialogForm" fieldName="firstname"/></div>
					<div class="dialogquestion">
						<label class="control-label">Voorna(a)m(en)</label>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<input name="firstname" size="50" maxlength="100" value="<c:out value="${requestScope['firstname']}"/>" title="" type="text" class="form-control required">
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="dialogquestion">
						<label class="control-label">Tussenvoegsel(s)</label>
						<i class="ietje" title="Bijvoorbeeld de, van, van der of el."></i>
					</div>
					<div class="dialoganswer">
						<input name="middlename" size="10" maxlength="10" value="<c:out value="${requestScope['middlename']}"/>" title="Bijvoorbeeld de, van, van der of el." type="text" class="form-control">
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_lastname"><yre:printError formName="dialogForm" fieldName="lastname"/></div>
					<div class="dialogquestion">
						<label class="control-label">Achternaam</label>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<input name="lastname" size="50" maxlength="100" value="<c:out value="${requestScope['lastname']}"/>" title="" type="text" class="form-control required">
					</div>
				</div>
				<div class="form-group form-inline" id="gender">
					<div class="errortext" id="error_gender"><yre:printError formName="dialogForm" fieldName="gender"/></div>
					<div class="dialogquestion">
						<label class="control-label">Geslacht</label>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<label class="radio-inline">
							<logic:equal name="gender" value="M">
									<input name="gender" value="M" type="radio" checked class="s20 validate-one-required">
							</logic:equal>
							<logic:notEqual name="gender" value="M">
									<input name="gender" value="M" type="radio" class="s20 validate-one-required">
							</logic:notEqual>
							Man
						</label>
						<label class="radio-inline">
							<logic:equal name="gender" value="V">
								<input name="gender" value="V" type="radio" checked class="s20 validate-one-required">
							</logic:equal>
							<logic:notEqual name="gender" value="V">
								<input name="gender" value="V" type="radio" class="s20 validate-one-required">
							</logic:notEqual>
							Vrouw
						</label>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_b_country"><yre:printError formName="dialogForm" fieldName="b_country"/></div>
					<div class="dialogquestion">
						<label class="control-label">Geboorteland</label>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<input name="b_country" size="50" maxlength="50" value="<c:out value="${requestScope['b_country']}"/>" title="" type="text" class="form-control required">
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_b_date"><yre:printError formName="dialogForm" fieldName="b_date"/></div>
					<div class="errortext" id="error_b_place"><yre:printError formName="dialogForm" fieldName="b_place"/></div>
					<div class="dialogquestion">
						<label class="control-label">Geboortedatum en geboorteplaats</label>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<input name="b_date" size="10" maxlength="10" value="<c:out value="${requestScope['b_date']}"/>" placeholder="Geboortedatum" title="" type="text" class="form-control required validate-date">
						<span class="grayed">(dd-mm-jjjj)</span>
						<input name="b_place" size="30" maxlength="40" value="<c:out value="${requestScope['b_place']}"/>" placeholder="Geboorteplaats" title="" type="text" class="form-control required">
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_username"><yre:printError formName="dialogForm" fieldName="username"/></div>
					<div class="dialogquestion">
						<label class="control-label">Gebruikersnaam handelssite</label>
						<i class="ietje" title="gebruikersnaam die u hanteert op de handelssite"></i>
					</div>
					<div class="dialoganswer">
						<input name="username" size="30" maxlength="30" value="<c:out value="${requestScope['username']}"/>" title="" type="text" class="form-control">
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_email"><yre:printError formName="dialogForm" fieldName="email"/></div>
					<div class="dialogquestion">
						<label class="control-label">E-mailadres</label>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<input name="email" size="50" maxlength="50" value="<c:out value="${requestScope['email']}"/>" title="" type="text" class="form-control required validate-email">
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_street"><yre:printError formName="dialogForm" fieldName="street"/></div>
					<div class="dialogquestion">
						<label class="control-label">Straat</label>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<input name="street" size="30" maxlength="35" value="<c:out value="${requestScope['street']}"/>" title="" type="text" class="form-control required">
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_housenumber"><yre:printError formName="dialogForm" fieldName="housenumber"/></div>
					<div class="dialogquestion">
						<label class="control-label">Huisnummer</label>
						<i class="ietje" title="Vul alleen cijfers in."></i>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<input name="housenumber" size="10" maxlength="5" value="<c:out value="${requestScope['housenumber']}"/>" title="Vul alleen cijfers in." onkeypress="return AllowOnlyNumeric(event)"  type="text" onBlur="getAddress()" class="form-control required validate-digits">
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_housenumber_addon"><yre:printError formName="dialogForm" fieldName="housenumber_addon"/></div>
					<div class="dialogquestion">
						<label class="control-label">Huisnummer toevoeging</label>
						<i class="ietje" title="Bijvoorbeeld II of bis."></i>
					</div>
					<div class="dialoganswer">
						<input name="housenumber_addon" size="5" maxlength="4" onkeypress="return AllowAlphaNumeric(event)" value="<c:out value="${requestScope['housenumber_addon']}"/>" title="Bijvoorbeeld II of bis." type="text" class="form-control">
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_postal"><yre:printError formName="dialogForm" fieldName="postal"/></div>
					<div class="errortext" id="error_place"><yre:printError formName="dialogForm" fieldName="place"/></div>
					<div class="dialogquestion">
						<label class="control-label">Postcode en woonplaats</label>
						<i class="ietje" title="Postcode: Gebruik geen spatie. Bijvoorbeeld 1234AB."></i>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<input name="postal" size="6" maxlength="6" value="<c:out value="${requestScope['postal']}"/>" placeholder="Postcode" title="Gebruik geen spatie. Bijvoorbeeld 1234AB." type="text" onChange="getAddress()" class="form-control required validate-postal">&nbsp;<span class="grayed">(1234AA)</span>
						<input name="place" size="30" maxlength="24" value="<c:out value="${requestScope['place']}"/>" placeholder="Woonplaats" title="" type="text" class="form-control required">
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_country"><yre:printError formName="dialogForm" fieldName="country"/></div>
					<div class="dialogquestion">
						<label class="control-label">Land</label>
						<i class="mandatory"></i>
					</div>
					<div class="dialoganswer">
						<input name="country" size="15" maxlength="20" value="<c:out value="${requestScope['country']}"/>" title="" type="text" class="form-control required">
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_phone"><yre:printError formName="dialogForm" fieldName="phone"/></div>
					<div class="dialogquestion">
							<label class="control-label">Telefoonnummer</label>
							<i class="ietje" title="Vul tien cijfers in, zonder landcode. Gebruik geen streepje, haakje of spatie. Bijvoorbeeld 0123456789."></i>
					</div>
					<div class="dialoganswer">
						<input name="phone" size="10" maxlength="10" value="<c:out value="${requestScope['phone']}"/>" onkeypress="return AllowOnlyNumeric(event)" title="Vul tien cijfers in, zonder landcode. Gebruik geen streepje, haakje of spatie. Bijvoorbeeld 0123456789." type="text" class="form-control validate-phone" />
						<span class="grayed">(0201234567)</span>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="errortext" id="error_mobile"><yre:printError formName="dialogForm" fieldName="mobile"/></div>
					<div class="dialogquestion">
						<label class="control-label">Mobiele telefoonnummer</label>
						<i class="ietje" title="Vul tien cijfers in, zonder landcode. Gebruik geen streepje, haakje of spatie. Bijvoorbeeld 0123456789."></i>
					</div>
					<div class="dialoganswer">
						<input name="mobile" size="10" maxlength="10" value="<c:out value="${requestScope['mobile']}"/>" onkeypress="return AllowOnlyNumeric(event)" title="Vul tien cijfers in, zonder landcode. Gebruik geen streepje, haakje of spatie. Bijvoorbeeld 0123456789." type="text" class="form-control validate-phone"/>
						<span class="grayed">(0612345678)</span>
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
					<div class="col-sm-12">
						<span class="formbuttons">
							<button class="btn btn-primary" name="submit_action" value="Volgende" id="submit" type="submit">
								<yre:message key="form.next"/>
							</button>
						</span>
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
		var postalCode = this.document.eform.postal.value;
		var houseNumber = this.document.eform.housenumber.value;
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
			if (street != undefined && place != undefined) {
				this.document.eform.street.value = street;
				this.document.eform.place.value = place;
				this.document.eform.country.value='NEDERLAND';
			}
		}
	}
// ]]>
</script>

<script type="text/javascript">
// <![CDATA[
	new Validation('dialog', {immediate : true, useTitles : true}); // OR new Validation(document.forms[0]);
// ]]></script>

</content>
