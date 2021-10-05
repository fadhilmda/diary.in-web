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
    <title>Diarymu | diary.in</title>
    <link rel="stylesheet" href="./assets/css/nicepage.css" media="screen">
	<link rel="stylesheet" href="./assets/css/diary.css" media="screen">

    <script class="u-script" type="text/javascript" src="./assets/js/jquery-1.9.1.min.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="./assets/js/nicepage.js" defer=""></script>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
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
  <body class="u-body">
  
  <jsp:include page="navbar.jsp" />
  
    <section class="u-clearfix u-custom-color-1 u-section-1" id="carousel_016c">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-shape u-shape-rectangle u-white u-shape-1" data-animation-name="fadeIn" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="">
        
        
        <span class="u-icon u-icon-circle u-icon-1" data-animation-name="fadeIn" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="">
        
        <div id="editDiary">
	        
		</div>
		</span>
		
		
		<span class="u-icon u-icon-circle u-icon-2" data-animation-name="fadeIn" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="">
		<a onclick="delete_diary()">
		<svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512" style="color:white">
		<use xlink:href="#svg-c84e"></use></svg><svg class="u-svg-content" viewBox="0 0 512 512" id="svg-c84e">
		<path d="m437.019531 74.980469c-48.351562-48.351563-112.640625-74.980469-181.019531-74.980469s-132.667969 26.628906-181.019531 74.980469c-48.351563 48.351562-74.980469 112.640625-74.980469 181.019531 0 68.382812 26.628906 132.667969 74.980469 181.019531 48.351562 48.351563 112.640625 74.980469 181.019531 74.980469s132.667969-26.628906 181.019531-74.980469c48.351563-48.351562 74.980469-112.636719 74.980469-181.019531 0-68.378906-26.628906-132.667969-74.980469-181.019531zm-70.292969 256.386719c9.761719 9.765624 9.761719 25.59375 0 35.355468-4.882812 4.882813-11.28125 7.324219-17.679687 7.324219s-12.796875-2.441406-17.679687-7.324219l-75.367188-75.367187-75.367188 75.371093c-4.882812 4.878907-11.28125 7.320313-17.679687 7.320313s-12.796875-2.441406-17.679687-7.320313c-9.761719-9.765624-9.761719-25.59375 0-35.355468l75.371093-75.371094-75.371093-75.367188c-9.761719-9.765624-9.761719-25.59375 0-35.355468 9.765624-9.765625 25.59375-9.765625 35.355468 0l75.371094 75.367187 75.367188-75.367187c9.765624-9.761719 25.59375-9.765625 35.355468 0 9.765625 9.761718 9.765625 25.589844 0 35.355468l-75.367187 75.367188zm0 0"></path></svg>
		</a>
		</span>
      	</div>
      <article class="mb-4">  
        <h6 id="title" class="u-text u-text-1" data-animation-name="fadeIn" data-animation-duration="1000" data-animation-delay="250" data-animation-direction=""></h6>
        <p id="date" class="u-custom-font u-text u-text-2" data-animation-name="fadeIn" data-animation-duration="1000" data-animation-delay="250" data-animation-direction=""></p>
        <div id="content" style="font-size: 21px" class="u-text u-text-2" data-animation-name="fadeIn" data-animation-duration="1000" data-animation-delay="1000" data-animation-direction="Down"><br> 
        </div>
        </article>
      </div>
      
    </section>
    
    <jsp:include page="footer.jsp" />
    
    <script>
	const queryString = window.location.search;
	
	const urlParams = new URLSearchParams(queryString);
	
	const id = urlParams.get('id');
	
	firebase.database().ref('diary/'+id).on('value', function(snapshot) {
	    	var childKey = snapshot.key;
	      	var data = snapshot.val();
	      	var title = data.title;
	      	var content = data.content;
	      	var date = data.date;
	      	document.getElementById("title").append(title);
	      	document.getElementById("date").append(date);
	      	document.getElementById("content").append(content);
	      	var div = document.getElementById('editDiary');
				div.innerHTML += '<a href="edit.jsp?id='+id+'"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 300 300" style="color:white"><use xlink:href="#svg-a399"></use></svg><svg class="u-svg-content" viewBox="0 0 300 300" x="0px" y="0px" id="svg-a399" style="enable-background:new 0 0 300 300;"><g><g><path d="M149.996,0C67.157,0,0.001,67.161,0.001,149.997S67.157,300,149.996,300s150.003-67.163,150.003-150.003    S232.835,0,149.996,0z M221.302,107.945l-14.247,14.247l-29.001-28.999l-11.002,11.002l29.001,29.001l-71.132,71.126    l-28.999-28.996L84.92,186.328l28.999,28.999l-7.088,7.088l-0.135-0.135c-0.786,1.294-2.064,2.238-3.582,2.575l-27.043,6.03    c-0.405,0.091-0.817,0.135-1.224,0.135c-1.476,0-2.91-0.581-3.973-1.647c-1.364-1.359-1.932-3.322-1.512-5.203l6.027-27.035    c0.34-1.517,1.286-2.798,2.578-3.582l-0.137-0.137L192.3,78.941c1.678-1.675,4.404-1.675,6.082,0.005l22.922,22.917    C222.982,103.541,222.982,106.267,221.302,107.945z"></path></g></g></svg></a>';
	 });
	 
	function delete_diary() {
		firebase.database().ref().child('/diary/' + id).remove();
		alert('Diary sukses dihapus');
		window.location.href = "dashboard.jsp";
	}
	
	</script>

  </body>
</html>