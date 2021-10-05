<link rel="icon" href="./assets/img/Screenshot__58_-removebg-preview2.png">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

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
		const user = firebase.auth().currentUser;
		
		var email;
		firebase.auth().onAuthStateChanged(user => {
			  if (user) {
				  email = user.email;
			    
			  }
			  else {
				  alert("Logged out!");
				  window.location.href = "index.jsp";
			  }
			});
	
	</script>