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
    <title>Edit diarymu | diary.in</title>
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

      </div>
    </section>
    
    <jsp:include page="footer.jsp" />
    
	
	<!-- simpan & edit diary -->
	<script>
	var databaseRef = firebase.database().ref('diary/');
	const queryString = window.location.search;

	const urlParams = new URLSearchParams(queryString);

	const id = urlParams.get('id');

	firebase.database().ref('diary/'+id).on('value', function(snapshot) {
	    	var childKey = snapshot.key;
	      	var data = snapshot.val();
	      	var title = data.title;
	      	var content = data.content;
	      	document.getElementById('content').value = content;
	      	document.getElementById('title').value = title;
	});
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
				updates['/diary/' + id] = data;
				firebase.database().ref().update(updates);
				alert('Diary sukses diedit');
				reload_page();
			}
			function reload_page() {
				window.location.reload();
			}
			
			
			
	</script>
    
  </body>
</html>