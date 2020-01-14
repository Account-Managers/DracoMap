var intervalClearDatabase = 1 * 60,
	counterClear = 1 * 60,
	intervalMap = 60;
	
class MarkerClass {
	constructor(data) {
		this.category = data.category;
		this.icon_url = data.icon_url;
		this.icon_size = data.icon_size;
		this.lat = data.lat;
		this.long = data.long;
		this.message = data.message;
	}
	
	async init(callback) {
		var image = new L.Icon({
			iconUrl: this.icon_url,
			iconSize: [this.icon_size, this.icon_size]
		});
		
		marker = await new L.marker([parseFloat(this.lat), parseFloat(this.long)],{
			icon: image
		}).bindPopup(this.message);
		
		await map.addLayer(marker);
		marker._icon.classList.add(this.category);
		
		var thisClass = this;
		
		$("#map_container .items_toggles input").each(function() {
			if(!$(this).prop("checked") && thisClass.category == $(this).attr('class'))
			{
				map.removeLayer(marker);
			}
		});
		
		callback();
	}
}
	
function refreshTimer() {
	if(counterClear >= 60)
		$(".items_toggles .timerClear span").text(Math.round(counterClear/60) + " hour(s)");
	else
		$(".items_toggles .timerClear span").text(counterClear + " minute(s)");
}

function checkClearDb() {
	counterClear--;
	refreshTimer();
	
	if(counterClear == 0)
	{
		counterClear = intervalClearDatabase;
		showAlert("Database cleared", "success");
		
		$.ajax({
			type: "POST",
			name: "login",
			url: 'app/form/clean.php?type=clearTimer',
			success: function(data)
			{
				refreshMarkers();
			}
		});
	}
}

$('.items_toggles select').on('change', function() {
	var hours = $(this).find(":selected").val();
	clearInterval(intervalClearDb);
	intervalClearDatabase = hours * 60;
	counterClear = hours * 60;
	intervalClearDb = setInterval(checkClearDb, 1000 * 60);
	refreshTimer();
});

var intervalClearDb = setInterval(checkClearDb, 1000 * 60);
refreshTimer();

$(document).delegate('header .menu li a', 'click', function(e){
	e.preventDefault();
	$("header .menu li a").removeClass("active");
	$(this).addClass("active");
	
	if($(this).is("#mapButton"))
	{
		$('#global, header .menuToggle').show();
		$('#map_container').fadeIn('slow');
	}
	else
	{
		$('#map_container, header .menuToggle').hide();
		linkLocation = $(this).attr("href");
		if(linkLocation != "#")
		{
			$('#global').fadeOut('slow', function(){
				$('#global').load("app/templates/" + linkLocation + ".php", function(){
					$('#global').fadeIn('slow');
				});
			});
		}
	}
});

$(document).delegate('header .submenu a', 'click', function(e){
	linkLocation = $(this).attr("href");
	if(linkLocation != "logout.php")
	{
		$("header .user .username i").toggleClass('rotated');
		$("header .user .submenu").slideUp();
		
		e.preventDefault();
		if(linkLocation.indexOf("overlay") != -1)
		{
			$('#overlay .overlay_content').load("app/templates/" + linkLocation + ".php", function(){
				$('#overlay').fadeIn('slow');
			});
		}
		else
		{
			if(linkLocation != "#")
			{
				$('#global').fadeOut('slow', function(){
					$('#global').load("app/templates/" + linkLocation + ".php", function(){
						$('#global').fadeIn('slow');
					});
				});
			}
		}
	}
});

function showAlert(msg, type) {
	if(type == "error")
	{
		$("#alertMsg").removeClass();
		$("#alertMsg").addClass("error");
	}
	else if(type == "success")
	{
		$("#alertMsg").removeClass();
		$("#alertMsg").addClass("success");
	}
	
	if ( $("#alertMsg").css('display') == 'none' ){
		$("#alertMsg .message").text(msg);
		$('#alertMsg').slideDown('slow');
	}
	else
	{
		$('#alertMsg').slideUp('slow', function(){
			$("#alertMsg .message").text(msg);
			$('#alertMsg').slideDown('slow');
		});
	}
}

$(document).delegate('#settingsAvatarImageForm', 'submit', function(e){
    e.preventDefault();
	
	var file_data = $('#settingsAvatarImage').prop('files')[0];
	var form_data = new FormData();                  
    form_data.append('file', file_data);
	
    $.ajax({
        url: "app/form/avatar.php",
		dataType: 'text',
        cache: false,
        contentType: false,
        processData: false,
        data: form_data,                         
        type: 'post',
        success: function(data){
			var eventData = data.split(';');
			var eventName = jQuery.trim(eventData[0]);
			var msg = eventData[1];
			if(eventName == "error") {
				showAlert(msg, "error");
			}
			else if(eventName == "success") 
			{
				var avatar = eventData[2];
				$('header .user .avatar img').attr('src', avatar);
				$('#overlay').fadeOut('slow');
				showAlert(msg, "success");
			}
        }           
    });
});

$(document).delegate('#settingsUsernameForm', 'submit', function(e){
	e.preventDefault();
    $.ajax({
		type: "POST",
		name: "login",
		url: 'app/form/username.php',
		data: {
			username: $("#settingsUsername").val()
        },
        success: function(data)
        {
			var eventData = data.split(';');
			var eventName = jQuery.trim(eventData[0]);
			var msg = eventData[1];
			if(eventName == "error") {
				showAlert(msg, "error");
			}
			else if(eventName == "success") 
			{
				var nickname = eventData[2];
				$('header .user .username').html(nickname + ' <i class="fas fa-caret-down"></i>');
				$('#overlay').fadeOut('slow');
				showAlert(msg, "success");
			}
        }
	});
});

$(document).delegate('#settingsPasswordForm', 'submit', function(e){
	e.preventDefault();
    $.ajax({
		type: "POST",
		name: "login",
		url: 'app/form/password.php',
		data: {
			last_password: $("#settingsLastPassword").val(),
			password: $("#settingsPassword").val(),
			confirm_password: $("#settingsPasswordConfirm").val(),
        },
        success: function(data)
        {
			var eventData = data.split(';');
			var eventName = jQuery.trim(eventData[0]);
			var msg = eventData[1];
			if(eventName == "error") {
				showAlert(msg, "error");
			}
			else if(eventName == "success") 
			{
				$('#overlay').fadeOut('slow');
				showAlert(msg, "success");
			}
        }
	});
});

$(document).delegate('#settingsEmailForm', 'submit', function(e){
	e.preventDefault();
    $.ajax({
		type: "POST",
		name: "login",
		url: 'app/form/email.php',
		data: {
			email: $("#settingsEmail").val()
        },
        success: function(data)
        {
			var eventData = data.split(';');
			var eventName = jQuery.trim(eventData[0]);
			var msg = eventData[1];
			if(eventName == "error") {
				showAlert(msg, "error");
			}
			else if(eventName == "success") 
			{
				$('#overlay').fadeOut('slow');
				showAlert(msg, "success");
			}
        }
	});
});

$(document).delegate('#registerForm', 'submit', function(e){
	e.preventDefault();
    $.ajax({
		type: "POST",
		name: "login",
		url: 'app/form/register.php',
		data: {
			username: $("#registerNickname").val(),
			email: $("#registerEmail").val(),
			password: $("#registerPassword").val(),
			confirm_password: $("#confirmPassword").val(),
        },
        success: function(data)
        {
			var eventData = data.split(';');
			var eventName = jQuery.trim(eventData[0]);
			var msg = eventData[1];
			if(eventName == "error") {
				showAlert(msg, "error");
			}
			else if(eventName == "success") 
			{
				$('#overlay').fadeOut('slow');
				showAlert(msg, "success");
			}
        }
	});
});

$(document).delegate('#cleanPilarButton', 'click', function(e){
	e.preventDefault();
    $.ajax({
		type: "POST",
		name: "login",
		url: 'app/form/clean.php?type=pilars',
        success: function(data)
        {
			var eventData = data.split(';');
			var eventName = jQuery.trim(eventData[0]);
			var msg = eventData[1];
			if(eventName == "error") {
				showAlert(msg, "error");
			}
			else if(eventName == "success") 
			{
				$('#overlay .overlay_content').load("app/templates/overlay/admin_settings.php");
				refreshMarkers();
				showAlert(msg, "success");
			}
        }
	});
});

$(document).delegate('#cleanGymButton', 'click', function(e){
	e.preventDefault();
    $.ajax({
		type: "POST",
		name: "login",
		url: 'app/form/clean.php?type=gyms',
        success: function(data)
        {
			var eventData = data.split(';');
			var eventName = jQuery.trim(eventData[0]);
			var msg = eventData[1];
			if(eventName == "error") {
				showAlert(msg, "error");
			}
			else if(eventName == "success") 
			{
				$('#overlay .overlay_content').load("app/templates/overlay/admin_settings.php");
				refreshMarkers();
				showAlert(msg, "success");
			}
        }
	});
});

$(document).delegate('#cleanLibButton', 'click', function(e){
	e.preventDefault();
    $.ajax({
		type: "POST",
		name: "login",
		url: 'app/form/clean.php?type=libs',
        success: function(data)
        {
			var eventData = data.split(';');
			var eventName = jQuery.trim(eventData[0]);
			var msg = eventData[1];
			if(eventName == "error") {
				showAlert(msg, "error");
			}
			else if(eventName == "success") 
			{
				$('#overlay .overlay_content').load("app/templates/overlay/admin_settings.php");
				refreshMarkers();
				showAlert(msg, "success");
			}
        }
	});
});

$(document).delegate('#cleanPortalButton', 'click', function(e){
	e.preventDefault();
    $.ajax({
		type: "POST",
		name: "login",
		url: 'app/form/clean.php?type=portals',
        success: function(data)
        {
			var eventData = data.split(';');
			var eventName = jQuery.trim(eventData[0]);
			var msg = eventData[1];
			if(eventName == "error") {
				showAlert(msg, "error");
			}
			else if(eventName == "success") 
			{
				$('#overlay .overlay_content').load("app/templates/overlay/admin_settings.php");
				refreshMarkers();
				showAlert(msg, "success");
			}
        }
	});
});


$(document).delegate('#cleanBuildingsButton', 'click', function(e){
	e.preventDefault();
    $.ajax({
		type: "POST",
		name: "login",
		url: 'app/form/clean.php?type=buildings',
        success: function(data)
        {
			var eventData = data.split(';');
			var eventName = jQuery.trim(eventData[0]);
			var msg = eventData[1];
			if(eventName == "error") {
				showAlert(msg, "error");
			}
			else if(eventName == "success") 
			{
				$('#overlay .overlay_content').load("app/templates/overlay/admin_settings.php");
				refreshMarkers();
				showAlert(msg, "success");
			}
        }
	});
});

$(document).delegate('#cleanCreatureLogs', 'click', function(e){
	e.preventDefault();
    $.ajax({
		type: "POST",
		name: "login",
		url: 'app/form/clean.php?type=creatures',
        success: function(data)
        {
			var eventData = data.split(';');
			var eventName = jQuery.trim(eventData[0]);
			var msg = eventData[1];
			if(eventName == "error") {
				showAlert(msg, "error");
			}
			else if(eventName == "success") 
			{
				$('#overlay .overlay_content').load("app/templates/overlay/admin_settings.php");
				refreshMarkers();
				showAlert(msg, "success");
			}
        }
	});
});

$(document).delegate('#dropDatabaseButton', 'click', function(e){
	e.preventDefault();
    $.ajax({
		type: "POST",
		name: "login",
		url: 'app/form/clean.php?type=all',
        success: function(data)
        {
			var eventData = data.split(';');
			var eventName = jQuery.trim(eventData[0]);
			var msg = eventData[1];
			if(eventName == "error") {
				showAlert(msg, "error");
			}
			else if(eventName == "success") 
			{
				$('#overlay .overlay_content').load("app/templates/overlay/admin_settings.php");
				refreshMarkers();
				$('#overlay').fadeOut('slow');
				showAlert(msg, "success");
			}
        }
	});
});

$(document).delegate('#loginForm', 'submit', function(e){
	e.preventDefault();
    $.ajax({
		type: "POST",
		name: "login",
		url: 'app/form/login.php',
		data: {
			username: $("#loginNickname").val(),
			password: $("#loginPassword").val()
        },
        success: function(data)
        {
			var eventData = data.split(';');
			var eventName = jQuery.trim(eventData[0]);
			var msg = eventData[1];
			if(eventName == "error") {
				showAlert(msg, "error");
			}
			else if(eventName == "success") 
			{
				location.reload();
			}
        }
	});
});

$(document).delegate('.like_count .like_button', 'click', function(e){
	var Id = $(this).attr('id');
	$.ajax({
		type: "POST",
		name: "login",
		url: 'app/form/vote.php?like=yes&&id=' + Id,
        success: function(data)
        {
			var eventData = data.split(';');
			var eventName = jQuery.trim(eventData[0]);
			var msg = eventData[1];
			if(eventName == "error") {
				showAlert(msg, "error");
			}
			else if(eventName == "success") 
			{
				showAlert(msg, "success");
				$(".leaflet-popup-content").hide();
				refreshMarkers();
			}
        }
	});
});

$(document).delegate('.like_count .unlike_button', 'click', function(e){
	var Id = $(this).attr('id');
	$.ajax({
		type: "POST",
		name: "login",
		url: 'app/form/vote.php?unlike=yes&&id=' + Id,
        success: function(data)
        {
			var eventData = data.split(';');
			var eventName = jQuery.trim(eventData[0]);
			var msg = eventData[1];
			if(eventName == "error") {
				showAlert(msg, "error");
			}
			else if(eventName == "success") 
			{
				showAlert(msg, "success");
				$(".leaflet-popup-content").hide();
				refreshMarkers();
			}
        }
	});
});

function refreshMarkers() {
	intervalMap = 60;
	$('#map_container #map .leaflet-marker-pane').html("");
	$('#map_container #map_points').load("app/templates/pages/map_items.php");
}

$("header .menuToggle").click(function () {
	if($('header .user .submenu').is(":visible"))
		$("header .user .submenu").slideUp();
		
	$("#map_container .items_toggles").toggle("slide", { direction: "right" }, 300);
});

$("#alertMsg .close").click(function () {
	$('#alertMsg').slideUp();
});

$("#overlay .close").click(function () {
	$('#overlay').fadeOut('slow');
});

$("#map_container .items_toggles input").click(function () {
	setClearInterval(4);
});


$("header .user .username").click(function () {
	$("header .user .username i").toggleClass('rotated');
	
	if($('header .user .submenu').is(":visible"))
	{
		$("header .user .submenu").slideUp();
	}
	else
	{
		if($('header .menuToggle').is(":visible"))
			$("#map_container .items_toggles").hide("slide", { direction: "right" }, 300);
		
		$("header .user .submenu").slideDown();
	}
});

function getCapturedCreature(long, latitude) {
	$('#global').hide();
	$('#global, header .menuToggle').show();
	$('#map_container').fadeIn('slow');
	$("header .menu li a").removeClass("active");
	$("header .menu li a#mapButton").addClass("active");
	map.setView([long, latitude], 18);
}

function refreshMapInterval() {
	intervalMap--;
	$(".items_toggles .timerMap span").text(intervalMap);
	
	if(intervalMap == 0)
	{
		refreshMarkers();
	}
}

function setClearInterval(seconds) {
	intervalMap = seconds;
}

setInterval(refreshMapInterval, 1000);