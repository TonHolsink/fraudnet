var Cookies = Class.create({
	initialize: function(path, domain) {
		this.path = path || '/';
		this.domain = domain || null;
	},
	// Sets a cookie
	set: function(key, value, days) {
		if (typeof key != 'string') {
			throw "Invalid key";
		}
		if (typeof value != 'string' && typeof value != 'number') {
			throw "Invalid value";
		}
		if (days && typeof days != 'number') {
			throw "Invalid expiration time";
		}
		var setValue = key+'='+escape(new String(value));
		if (days) {
			var date = new Date();
			date.setTime(date.getTime()+(days*24*60*60*1000));
			var setExpiration = "; expires="+date.toGMTString();
		} else var setExpiration = "";
		var setPath = '; path='+escape(this.path);
		var setDomain = (this.domain) ? '; domain='+escape(this.domain) : '';
		var cookieString = setValue+setExpiration+setPath+setDomain;
		document.cookie = cookieString;
	},
	// Returns a cookie value or false
	get: function(key) {
		var keyEquals = key+"=";
		var value = false;
		document.cookie.split(';').invoke('strip').each(function(s){
			if (s.startsWith(keyEquals)) {
				value = unescape(s.substring(keyEquals.length, s.length));
				throw $break;
			}
		});
		return value;
	},
	// Clears a cookie
	clear: function(key) {
		this.set(key,'',-1);
	},
	// Clears all cookies
	clearAll: function() {
		document.cookie.split(';').collect(function(s){
			return s.split('=').first().strip();
		}).each(function(key){
			this.clear(key);
		}.bind(this));
	}
});


(function() {
	var _cookieOK = false;
	var COOKIENAME = "_cookieOK_F";
	var biscuits = new Cookies();

	getCookie();

	function getCookie() {
		var cookie = biscuits.get(COOKIENAME);

		if (cookie && cookie == "1"){
			_cookieOK = true;
		}
	}

	function removeCookieBar() {
		bar = $("Cookies_status");
		if (bar) {
			bar.remove();
		}
	}

	function showCookieBar() {
		//In case the cookie bar is not in the DOM, or the ok button is clicked, exit
		if (!$("cookieStatus") || _cookieOK) {
			return;
		}

		barHTML = "<div id='Cookies_status' class='cookiebar cookies_status clearfix'>";
		barHTML += "Deze site maakt gebruik van functionele en analytische cookies.";
		barHTML += " <span class='pull-right'><a href='/f/cookies.html'>Informatie over cookies</a> <button id='btn_ok' class='btn btn-primary btn-xs'>OK</button></span>";
		barHTML += "</div>";

		$("cookieStatus").insert({top: barHTML});

		$("btn_ok").observe("click", function(event) {
			biscuits.set(COOKIENAME, "1", 1*365);
			removeCookieBar();
		});
	}

	document.observe("dom:loaded", function() {
		showCookieBar();
	});

})();
