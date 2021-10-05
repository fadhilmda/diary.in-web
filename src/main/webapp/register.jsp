<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Daftar | diary.in</title>
    <link rel="stylesheet" href="./assets/css/nicepage.css" media="screen">
	<link rel="stylesheet" href="./assets/css/register.css" media="screen">
    <script class="u-script" type="text/javascript" src="./assets/js/jquery-1.9.1.min.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="./assets/js/nicepage.js" defer=""></script>
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "diary-in"
	}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="register">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">


	<link rel="icon" href="./assets/img/Screenshot__58_-removebg-preview2.png">

	<!-- firebase -->
	<script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-app.js"></script>
	<script
		src="https://www.gstatic.com/firebasejs/8.6.8/firebase-analytics.js"></script>
	<script
		src="https://www.gstatic.com/firebasejs/8.6.8/firebase-database.js"></script>
	<script
		src="https://www.gstatic.com/firebasejs/8.6.8/firebase-firestore.js"></script>
	<script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-auth.js"></script>
	
	<script>
	var firebaseConfig = {
		    apiKey: "AIzaSyBIT6Wofzrilmawa8nlR4li3iJZW52YWtc",
		    authDomain: "diary-in.firebaseapp.com",
		    databaseURL: "https://diary-in-default-rtdb.asia-southeast1.firebasedatabase.app",
		    projectId: "diary-in",
		    storageBucket: "diary-in.appspot.com",
		    messagingSenderId: "572196673512",
		    appId: "1:572196673512:web:d4803a4505bf49da80f65d",
		    measurementId: "G-66965NCMEG"
		  };
		// Initialize Firebase
		firebase.initializeApp(firebaseConfig);
		firebase.analytics();
		const auth = firebase.auth();
	
	</script>

	</head>
	
	
  <body class="u-body">
    <section class="u-black u-clearfix u-section-1" id="sec-c52c">
      <div class="u-align-left u-clearfix u-sheet u-sheet-1">
        <img class="u-image u-image-default u-image-1" src="./assets/img/Screenshot__62_-removebgwht.png" alt="" data-image-width="959" data-image-height="762" data-animation-name="slideIn" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="Down">
        <h1 class="u-text u-text-1" data-animation-name="slideIn" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="Down">Buat akun</h1>
        <div class="u-form u-form-1">
          <form action="https://nicepage.com/editor/Forms/Process" method="POST" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" source="email" name="form" style="padding: 10px;">
            <input type="hidden" id="siteId" name="siteId" value="488129">
            <input type="hidden" id="pageId" name="pageId" value="488600">
            
            <div class="u-form-group u-form-group">
              <label for="text-6535" class="u-form-control-hidden u-label"></label>
              <input type="text" id="firstName" name="firstName" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10" control-id="ControlID-11740" required="required" placeholder="Nama depan">
            </div>
            
            <div class="u-form-group u-form-group-2">
              <label for="text-6535" class="u-form-control-hidden u-label"></label>
              <input type="text" id="lastName" name="lastName" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10" control-id="ControlID-11740" required="required" placeholder="Nama belakang">
            </div>
            
            <div class="u-form-email u-form-group u-form-group-3">
              <label for="email-2835" class="u-form-control-hidden u-label"></label>
              <input type="email" placeholder="Email" id="email" name="email" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10" required="" control-id="ControlID-11739">
            </div>            
   
            <div class="u-form-group u-form-group-4">
              <label for="text-6535" class="u-form-control-hidden u-label"></label>
              <input type="password" id="password" name="password" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10" control-id="ControlID-11740" required="required" placeholder="Kata sandi">
            </div>
            
            <div class="u-form-group u-form-group-5">
              <label for="text-3e8e" class="u-form-control-hidden u-label"></label>
              <input type="password" placeholder="Konfirmasi kata sandi" id="passwordConfirm" name="text-1" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10" control-id="ControlID-11741" required="required">
            </div>
            
            <div class="u-align-left u-form-group u-form-submit">
              <a onclick="register();" class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-custom-color-2 u-hover-custom-color-3 u-radius-50 u-btn-1">Daftar</a>
              <input type="submit" value="submit" class="u-form-control-hidden" control-id="ControlID-11742" maxlength="100">
            </div>
            
          </form>
          <a href="login.jsp" class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-login-control u-login-create-account u-none u-text-custom-color-2 u-btn-2">Sudah punya akun?</a>
        </div>
      </div>
    </section>
    
    <jsp:include page="footer.jsp" />
    
    <script>
    var databaseRef = firebase.database().ref('usersData/');
    
    function register() {
    	var email = document.getElementById("email").value;
		var password = document.getElementById("password").value;
		var password2 = document.getElementById("passwordConfirm").value;
		
		
	
		if (password != password2) {
			alert("Input your password correctly!");
		} else {
			firebase.auth().createUserWithEmailAndPassword(email, password).then(function() {
				save_usersData();
			}).catch(function(error) {
				var errorMessage = error.message;
				alert(errorMessage);
			});
		}
	}

		function save_usersData() {
			const d = new Date();
			const months = ["Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember"];
			var month = months[d.getMonth()];
			var date = d.getDate();
			var year = d.getFullYear();
			var mins = ('0'+d.getMinutes()).slice(-2);
			var hours = ('0'+d.getHours()).slice(-2);
			var time = hours + "." + mins;
			var dd = date+" "+month+" "+year+" "+time;
			var firstName = document.getElementById("firstName").value;
	    	var lastName = document.getElementById("lastName").value;  	
	    	var email = document.getElementById("email").value;
			var uid = firebase.database().ref().child('event').push().key;
			var data = {
				firstName : firstName,
				lastName : lastName,
				email : email,
				dateJoined : dd
			}
			var updates = {};
			updates['/usersData/' + uid] = data;
			firebase.database().ref().update(updates);
			alert("Berhasil dibuat!");
			window.location.href = "login.jsp";
		}
		
	</script>
  </body>
</html>