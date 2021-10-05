<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-67f2"><div class="u-align-left u-clearfix u-sheet u-sheet-1"></div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <p class="u-text">
        <span>diary.in</span>
      </p>
      <a class="u-text">
        <span>© 2021</span>
      </a> 
    </section>
    
<script src="./assets/js/function.js"></script>
<script>
	firebase.auth().onAuthStateChanged(user => {
		  if (user) {
			  var email = user.email;
			  var databaseRef = firebase.database().ref('usersData');
			  databaseRef.orderByChild("email").equalTo(email).once('value', function(snapshot) {
			  	snapshot
			  			.forEach(function(childSnapshot) {
			  				var childKey = childSnapshot.key;
			  				var childData = childSnapshot.val();
			  				var id = childKey;
			  				var profile = document.getElementById('profile');
			  				profile.innerHTML += '<a style="color:black" role="menuitem" tabindex="-1" href="profile.jsp?id='+id+'">Profil</a>';
			  			});
			  	
			  });
		  }
		});
    </script>