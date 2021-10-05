<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="INTUITIVE">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Isi diarymu yuk! | diary.in</title>
    <link rel="stylesheet" href="./assets/css/nicepage.css" media="screen">
	<link rel="stylesheet" href="./assets/css/dashboard.css" media="screen">
    <script class="u-script" type="text/javascript" src="./assets/js/jquery-1.9.1.min.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="./assets/js/nicepage.js" defer=""></script>
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    <link 
    href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
	<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "diary-in"
	}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="diary">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
    
    <jsp:include page="head.jsp" />
    
  </head>
  
  <body class="u-body u-overlap u-overlap-contrast">
  
  <jsp:include page="navbar.jsp" />
  
    <section class="u-align-center u-clearfix u-custom-color-1 u-section-1" id="sec-b537">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-expanded-width u-form u-form-1">
          <form action="#" method="POST" class="u-clearfix u-form-spacing-20 u-form-vertical u-inner-form" style="padding: 10px" source="email" name="form">
            <input type="hidden" id="siteId" name="siteId" value="488129">
            <input type="hidden" id="pageId" name="pageId" value="488137">
            <div class="u-form-group u-form-group-1">
              <label for="text-490a" class="u-form-control-hidden u-label"></label>
              <input style="font-size: 22px" type="text" placeholder="Judul" id="title" name="text" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-input u-input-rectangle" control-id="ControlID-12042" required="required">
            </div>
            <div class="u-form-group u-form-textarea u-form-group-2">
              <label for="textarea-3710" class="u-form-control-hidden u-label"></label>
              <textarea id="content" style="font-size: 18px" rows="10" cols="50" name="textarea" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-input u-input-rectangle" required="" control-id="ControlID-11985" spellcheck="false" placeholder="Apa cerita anda hari ini?"></textarea>
            </div>
            <div class="u-align-center u-form-group u-form-submit">
              <a onclick="save();" class="u-border-2 u-border-white u-btn u-btn-rectangle u-btn-submit u-button-style u-none u-btn-1">Simpan</a>
              <input type="submit" value="submit" class="u-form-control-hidden" control-id="ControlID-11986">
            </div>
            <input type="hidden" value="" name="recaptchaResponse">
          </form>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-custom-color-1 u-section-2" id="sec-3302">
      <div style="padding-top: 100px" class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-text u-text-default u-text-1" spellcheck="false">Ceritamu</h2>
        <div class="u-list u-list-1">
          <div class="u-align-left u-repeater u-repeater-1">
            <div class="u-align-left u-container-style u-grey-80 u-list-item u-repeater-item u-list-item-1" data-animation-name="bounceIn" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="">
              <div class="u-container-layout u-similar-container u-container-layout-1">
                <div id="diaryList"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <jsp:include page="footer.jsp" />
    
	
	<!-- simpan diary dan summernote konten -->
	<script>
	var databaseRef = firebase.database().ref('diary/');
		
		function save() {
			const d = new Date();
			const months = ["Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember"];
			var month = months[d.getMonth()];
			var date = d.getDate();
			var year = d.getFullYear();
			var mins = ('0'+d.getMinutes()).slice(-2);
			var hours = ('0'+d.getHours()).slice(-2);
			var time = hours + "." + mins;
			var dd = date+" "+month+" "+year+" "+time;
			var title = document.getElementById('title').value;
			var content = document.getElementById('content').value;
			var uid = firebase.database().ref().child('event').push().key;
			var data = {
				title : title,
				content : content,
				date : dd,
				email : email
			}
			var updates = {};
			updates['/diary/' + uid] = data;
			firebase.database().ref().update(updates);
			alert('Diary sukses disimpan');
			reload_page();
		}
		function reload_page() {
			window.location.reload();
		}

		
	</script>
	
	<!-- tampil diarylist -->
    
    <script>
	firebase.auth().onAuthStateChanged(user => {
		  if (user) {
			  var email = user.email;
			  var databaseRef = firebase.database().ref('diary');
			  databaseRef.orderByChild("email").equalTo(email).once('value', function(snapshot) {
			  	snapshot
			  			.forEach(function(childSnapshot) {
			  				var childKey = childSnapshot.key;
			  				var childData = childSnapshot.val();
			  				var id = childKey;
			  				var title = childData.title;
			  				var date = childData.date;
			  				var div = document.getElementById('diaryList');
			  				div.innerHTML += '<div class="post-preview"><a href="diary.jsp?id='+id+'"><h2 class="post-title"style="color:yellowgreen" >'+title+'</h2></a><p class="post-meta">diedit '+date+'</p></div><hr class="my-4" />';
			  			});
			  });
		  }
		});
    </script>
    
  </body>
</html>