<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<!-- Jquery Core Js -->
    <script src="/mrp/resources/plugins/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="/mrp/resources/plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Select Plugin Js -->
    <script src="/mrp/resources/plugins/bootstrap-select/js/bootstrap-select.js"></script>

    <!-- Slimscroll Plugin Js -->
    <script src="/mrp/resources/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="/mrp/resources/plugins/node-waves/waves.js"></script>

    <!-- Jquery CountTo Plugin Js -->
    <script src="/mrp/resources/plugins/jquery-countto/jquery.countTo.js"></script>

    <!-- Morris Plugin Js -->
    <script src="/mrp/resources/plugins/raphael/raphael.min.js"></script>
    <script src="/mrp/resources/plugins/morrisjs/morris.js"></script>

    <!-- ChartJs -->
    <script src="/mrp/resources/plugins/chartjs/Chart.bundle.js"></script>

    <!-- Flot Charts Plugin Js -->
    <script src="/mrp/resources/plugins/flot-charts/jquery.flot.js"></script>
    <script src="/mrp/resources/plugins/flot-charts/jquery.flot.resize.js"></script>
    <script src="/mrp/resources/plugins/flot-charts/jquery.flot.pie.js"></script>
    <script src="/mrp/resources/plugins/flot-charts/jquery.flot.categories.js"></script>
    <script src="/mrp/resources/plugins/flot-charts/jquery.flot.time.js"></script>

    <!-- Sparkline Chart Plugin Js -->
    <script src="/mrp/resources/plugins/jquery-sparkline/jquery.sparkline.js"></script>

    <!-- Custom Js -->
    <script src="/mrp/resources/js/admin.js"></script>
    <script src="/mrp/resources/js/pages/tables/jquery-datatable.js"></script>

    <!-- Demo Js -->
    <script src="/mrp/resources/js/demo.js"></script>
    <script src="/mrp/resources/plugins/sweetalert/sweetalert.min.js"></script>
    
    <!-- Jquery DataTable Plugin Js -->
    <script src="/mrp/resources/plugins/jquery-datatable/jquery.dataTables.js"></script>
    <script src="/mrp/resources/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
    <script src="/mrp/resources/plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
    <script src="/mrp/resources/plugins/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
    <script src="/mrp/resources/plugins/jquery-datatable/extensions/export/jszip.min.js"></script>
    <script src="/mrp/resources/plugins/jquery-datatable/extensions/export/vfs_fonts.js"></script>
    <script src="/mrp/resources/plugins/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
    <script src="/mrp/resources/plugins/jquery-datatable/extensions/export/buttons.print.min.js"></script>
    
    <script type="text/javascript">
    $(function(){
   	var title = 0;
	var outerBox = $('<div></div>');
	outerBox.css({
		"background-color": "white",
		"width": "100%",
		"display": "none",
	});
	$('div.search-bar').append(outerBox);
	
	$('.theme-red').on('click', function(event) {
		outerBox.css('display', 'none');
	})
	
	//엔터키 검색
   	$("#search").keyup(function(e){
   		
       	var search = $(this).val();
	   	if (search.length == 0) {
	   		outerBox.css('display', 'none');
			return;
		}
   			$.ajax({
       			url:'/mrp/search',
       			data:{ search : search },
       			dataType:'Json'
       		})
       		.done(function(data){
				outerBox.empty();
				$.each(data, function(i, item){
					var innerBox = $('<div></div>');
					innerBox.text(item.title);
					innerBox.css({
						"padding": "5px"
					});
					innerBox.hover(function(event) {
						$(this).css('background-color', 'lightgray');
					}, function(event) {
						$(this).css('background-color', 'white');
					});
					innerBox.on('click', function(event) {							
						$('#search').val($(this).text())
						title = $(this).text()
						outerBox.css('display', 'none');
						findmovie();
					});
					outerBox.append(innerBox);
				})
				
				outerBox.css("display", "block");
       		})
       		.fail(function(xhr, status, err){
       			console.log(status)
       		})
		if (e.keyCode == 13) {
			title = search;
			findmovie();    		
		}
       			
      });
    
    function findmovie(){
    	$.ajax({
    		url:"/mrp/findmovie",
    		data:{ title : title },
    		dataType:'Json'
    	})
    	.done(function(data, status, xhr){
    		console.log(data.movie_id);
    		if(data == 0){
    			alert('해당하는 영화가 없습니다.');	
    		}else{
    			location.href = "http://localhost:8081/mrp/movie/info?movie_id="+data.movie_id;	
    		}
    		
    	})
    	.fail(function(xhr, status, err){
    		alert('해당하는 영화가 없습니다.');
    	})
    }
    });
    </script>