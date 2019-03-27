
jQuery(document).ready(function( $ ) {
  // Smooth scroll for the menu and links with .scrollto classes
  $('.smothscroll').on('click', function(e) {
    e.preventDefault();
    if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
      var target = $(this.hash);
      if (target.length) {

        $('html, body').animate({
          scrollTop: target.offset().top - 62
        }, 1500, 'easeInOutExpo');
      }
    }
  });

  $('.carousel').carousel({
    interval: 3500
  });
  

  // Chart
  // 2019.03.01 스킬 차트 함수화
  	
    //find canvas
  	var can = $("#skillRow > div").find("canvas");
  	var canRow = can.clone(true);
  	
  	//getValue and setValue
  	$(canRow).each(function(i){
  	var per = Number($(this).attr("value"));
  		var doughnutData = [{
  	      value: per,           // 숙련도
  	      color: "#FF4848"
  	    },
  	    {
  	      value: 100-per,
  	      color: "#ecf0f1"
  	    }
  	  ];
  	  var myDoughnut = new Chart(document.getElementById($(this).attr('id')).getContext("2d")).Doughnut(doughnutData);
  	});
  	
//	  $("#contact_submit").on("click",function(){
//		  alert("준비 중입니다!");
//			return false;
//	  })
  
});

















