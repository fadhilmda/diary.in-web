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
    <title>Masuk | diary.in</title>
    <link rel="stylesheet" href="./assets/css/nicepage.css" media="screen">
	<link rel="stylesheet" href="./assets/css/login.css" media="screen">
    <script class="u-script" type="text/javascript" src="./assets/js/jquery-1.9.1.min.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="./assets/js/nicepage.js" defer=""></script>
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
       
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "diary-in"
	}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="login">
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
    <section class="u-align-center u-black u-clearfix u-section-1" id="sec-c35b">
      <div class="u-clearfix u-sheet u-sheet-1">
        <img class="u-image u-image-default u-image-1" src="./assets/img/Screenshot__62_-removebgwht.png" alt="" data-image-width="959" data-image-height="762" data-animation-name="slideIn" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="Down">
        <h1 class="u-text u-text-1" data-animation-name="slideIn" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="Down">Masuk ke diary.in</h1>
        <div class="u-form u-login-control u-form-1">
          <form action="#" method="POST" class="u-clearfix u-form-custom-backend u-form-spacing-10 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 10px;">
            <div class="u-form-group u-form-name">
              <label for="username-a30d" class="u-label">Email *</label>
              <input type="email" id="email" name="email" class="u-black u-border-2 u-border-custom-color-2 u-input u-input-rectangle u-radius-10 u-input-1" required="" control-id="ControlID-11610" spellcheck="false" autofocus="autofocus">
            </div>
            <div class="u-form-group u-form-password">
              <label for="password-a30d" class="u-label">Kata sandi *</label>
              <input type="password" id="password" name="password" class="u-black u-border-2 u-border-custom-color-2 u-input u-input-rectangle u-radius-10 u-input-2" required="" control-id="ControlID-11611">
            </div>
            <div class="u-form-checkbox u-form-group">
              <input type="checkbox" id="checkbox-a30d" name="remember" value="On" control-id="ControlID-11612">
              <label for="checkbox-a30d" class="u-label">Ingat saya</label>
            </div>
            <div class="u-align-left u-form-group u-form-submit">
              <a class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-custom-color-2 u-radius-50 u-btn-1" onclick="login();">Masuk</a>
              
            </div>
            <input type="hidden" value="" name="recaptchaResponse">
            <input type="hidden" id="siteId" name="siteId" value="488129">
            <input type="hidden" id="pageId" name="pageId" value="489445">
          </form>
        </div>
        <a href="register.jsp" class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-login-control u-login-create-account u-none u-text-custom-color-2 u-btn-2">Daftar ke diary.in</a>
        <a href="#" class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-login-control u-login-forgot-password u-none u-text-custom-color-2 u-btn-3">Lupa kata sandi?</a>
      </div>
    </section>
    
    <jsp:include page="footer.jsp" />
  </body>
</html>