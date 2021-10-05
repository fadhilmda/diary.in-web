/===== login =====/

function login() {
	var email = document.getElementById("email").value;
	var password = document.getElementById("password").value;

	firebase.auth().signInWithEmailAndPassword(email, password).then(function() {
		window.location.href = "dashboard.jsp";
	}).catch(function(error) {
		var errorMessage = error.message;
		alert(errorMessage);
	});
}

/===== logout =====/
function logout() {
		firebase.auth().signOut();
		window.location.href = "index.jsp";
	}
	
	

	





