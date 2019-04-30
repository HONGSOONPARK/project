// csrf 토큰 추가
var token = $("meta[name='_csrf']").attr("content");
var header = $("meta[name='_csrf_header']").attr("content");
$(function() {
    $(document).ajaxSend(function(e, xhr, options) {
        xhr.setRequestHeader(header, token);
    });
});


// ajax json 처리
$.fn.serializeObject = function(){
    var o = {};
    var a = this.serializeArray();
    $.each(a, function() {
    	var name = $.trim(this.name),
    		value = $.trim(this.value);
    	
        if (o[name]) {
            if (!o[name].push) {
                o[name] = [o[name]];
            }
            o[name].push(value || '');
        } else {
            o[name] = value || '';
        }
    });
    return o;
};

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
  	
  
});

// 경력사항 프로젝트 상세 저장
function cdSaveBtn(obj){
	if(confirm("저장하시겠습니까??")){
		$(obj).parent().parent().parent().submit();
	}
}

// 경력사항 프로젝트 상세 삭제
function cdDelBtn(obj){
	var frm = $(obj).parent().parent().parent();
	var action = $(obj).val();
	
	if(confirm("삭제하시겠습니까?")){
		var sendData = {no : frm.find("input[name='no']").val(), del_yn : 'Y'};
		 	$.ajax({	
				type: "POST",
				url : action,
				dataType: "text",
				data : JSON.stringify(sendData),
				contentType:"application/json;charset=UTF-8",
				success : function(data, status, xhr) {
					alert("삭제완료!");
					$(obj).parent().parent().parent().parent().remove();
				},
				error: function(jqXHR, textStatus, errorThrown) {
					alert("실패 :"+errorThrown);
				}
			});	
	}
}




function btnTrigger(id,refno){
	$("#"+id).trigger("click");
	$("#insPrjRefNo").val(refno);
}


//function pdfDown(){
//	$("#introModalBody").find("p").each(function(e) {
//		$(this).text();
//	});
//}



// 이미지 클릭 -> 파일첨부버튼 트리거
function fileUploads(num){
    $("#file_"+(num)).trigger("click");
}

// id 마지막자리 숫자 갖고옴
function findIdNum(obj){
	
	var id = $(obj).attr("id");
	var num = id.substring(id.indexOf("_")+1, id.length);
	
	return num;
}

//name 마지막자리 숫자 갖고옴
function findNameNum(obj){
	
	var name = $(obj).attr("name");
	var num = name.substring(name.indexOf("_")+1, name.length);
	
	return num;
}

// 파일 이름 미리보기
function filenameView(obj){
	var num = findIdNum(obj);
    var filename = $(obj).val().split('/').pop().split('\\').pop();
    $("#fileDiv_"+num).html(filename); 
}

//파일삭제
function fileDelete(num){
	$("#file_"+(num)).val("");
	$("#delete_"+(num)).remove();
}


// 포트폴리오 추가
function pfModalSaveBtn(){
	if(confirm("저장하시겠습니까?")){
		$("#frmInsertPortfolio").submit();	
	}
}



// 관리자 저장
function saveBtn(id){
	if(confirm("저장하시겠습니까?")){
		$("#"+id).submit();
	}
}

//// 경력사항 저장
//function saveRefBtn(obj,refno){
//		var num = findIdNum(obj);
//		$("#ref_no").val(refno);
//		if(confirm("저장하시겠습니까?")){
//			$(obj).parent().parent().parent().submit();
//		}
//}


// 저장
function introSaveBtn(obj){
		var num = findIdNum(obj);
		if(confirm("저장하시겠습니까?")){
			$(obj).parent().parent().parent().submit();
		}
}

//자기소개서 삭제
function introDelBtn(obj){
	var frm = $(obj).parent().parent().parent();
	var action = $(obj).val();
	
	if(confirm("삭제하시겠습니까?")){
		var sendData = {no : frm.find("input[name='no']").val(), del_yn : 'Y'};
		 	$.ajax({	
				type: "POST",
				url : action,
				dataType: "text",
				data : JSON.stringify(sendData),
				contentType:"application/json;charset=UTF-8",
				success : function(data, status, xhr) {
					alert("삭제완료!");
					$(obj).parent().parent().parent().remove();
				},
				error: function(jqXHR, textStatus, errorThrown) {
					alert("실패 :"+errorThrown);
				}
			});	
	}
}


// 포트폴리오 저장
function pfSaveBtn(obj){
		var num = findIdNum(obj);
		if(confirm("저장하시겠습니까?")){
			$("#frmPortfolio_"+num).submit();
		}
}


// 포트폴리오 삭제
function pfDelBtn(obj){
	var num = findIdNum(obj);
	var frm = $("#frmPortfolio_"+num);
	var action = $(obj).val();
	
	if(confirm("삭제하시겠습니까?")){
		var sendData = {no : frm.find("input[name='no']").val(), file_no : frm.find("input[name='file_no']").val(), del_yn : 'Y'};
		 	$.ajax({	
				type: "POST",
				url : action,
				dataType: "text",
				data : JSON.stringify(sendData),
				contentType:"application/json;charset=UTF-8",
				success : function(data, status, xhr) {
					alert("삭제완료!");
					$(obj).parent().parent().parent().parent().remove();
				},
				error: function(jqXHR, textStatus, errorThrown) {
					alert("실패 :"+errorThrown);
				}
			});	
	}

};


//form안의 모든 필드 조회, require 속성 체크
function fieldNullCheck(frmId){
	var element =  $("#"+frmId);
	var result = true;
		element.find("input,select,radio,textarea").each(function(e) {
			if($(this).prop("required")){
				if(!$.trim($(this).val())){
					var element_id = $(this).attr("id");
					var label_txt = $("label[for='" + element_id +"']").text();
					showAlert(element_id, label_txt);
					result = false;
					return result;
				}
			}
		});
	return result;
}


function showAlert(element_id, label_txt){
	alert(label_txt + " 필수 값 입니다. ");
	$("#" + element_id).focus();
}




function ajaxSave(obj,type){

	var arry = new Array(); 
	var element; 
	var action;
	if(type == 'form'){
		element = $(obj).parent().parent();
		action = element.prop("action");
	}else if(type == 'div'){
		element = $(obj).parent().parent();
		action = element.parent().prop("action");
	}else if(type == 'career'){
		element = $(obj).parent().parent().parent();
		action = element.prop("action");
	}
	
	var itemObj = new Object();	
	element.find('input, select, radio, textarea').each(function(i) {
		var element_name = $(this).attr("name");
		itemObj[element_name] = $(this).val();
	});
	
	var sendData = itemObj;
 	$.ajax({	
		type: "POST",
		url : action,
		dataType: "text",
		data : JSON.stringify(sendData),
		contentType:"application/json;charset=UTF-8",
		success : function(data, status, xhr) {
			alert("저장 완료!");
		},
		error: function(jqXHR, textStatus, errorThrown) {
			alert("실패 :"+errorThrown);
		}
	});		
	
	
}


// 관리자 화면 로그아웃
function adminLogout(url){
	if(confirm("로그아웃 하시겠습니까?")){
		window.location = url;
	}
//	$("#frmLogout").submit();
}

// 태그 포커스

function focusTag(id){
	$("#"+id).focus();
}


//
//
//
//function ajaxModalSave(obj,type){
//
//	var arry = new Array(); 
//	var element; 
//	var action;
//	
//	if(type == 'form'){
//		element = $(obj).parent().parent();
//		action = element.prop("action");
//	}else if(type == 'div'){
//		element = $(obj).parent().parent();
//		action = element.parent().prop("action");
//	}else if(type == 'career'){
//		element = $(obj).parent().parent();
//		action = element.prop("action");
//	}
//	
//	var itemObj = new Object();	
//	
//	
//	element.children(".modal-body").find('input, select, radio, textarea').each(function(i) {
//		var element_name = $(this).attr("name");
//		itemObj[element_name] = $(this).val();
//	});
//	
//	var sendData = itemObj;
//	
// 	$.ajax({	
//		type: "POST",
//		url : action,
//		dataType: "text",
//		data : JSON.stringify(sendData),
//		contentType:"application/json;charset=UTF-8",
//		success : function(data, status, xhr) {
//			alert("저장 완료!");
////			$('#addIntroduce').modal("hide");
//			location.reload();  
//		},
//		error: function(jqXHR, textStatus, errorThrown) {
//			alert("실패 :"+errorThrown);
//		}
//	});	
// 	
// 	
//}
















//function makeForm(target,status){
//	
//	
//	var cntMax;
//	
//	if(status == "INSERT"){
//		cntMax = 0;
//	}else if(status == "UPDATE"){
//		cntMax = $("#cntMax").val();	
//	}
//	
//	
//	var cloneDiv = $(".pfd"+cntMax).clone();
//    cloneDiv.find(":input",":select",":textarea").each(function(){
//    	this.value = '';
//        this.checked = '';
//  	});
//    
//	// 복사한 selector name,id,value 변경하기
//	// -> 어떻게 하면 모듈화 할지 고민해보자! (vo사용하면서 배열값 증가)
//	cloneDiv.find("input[name='portfoliovo["+cntMax+"].file_explain']").attr("name","portfoliovo["+(Number(cntMax)+1)+"].file_explain");
//	cloneDiv.find("input[id='file_"+cntMax+"']").attr("id","file_"+(Number(cntMax)+1));
//	cloneDiv.find("div[id='fileDiv_"+cntMax+"']").attr("id","fileDiv_"+(Number(cntMax)+1));
//	cloneDiv.find("select[name='portfoliovo["+cntMax+"].category']").attr("name","portfoliovo["+(Number(cntMax)+1)+"].category").val("").prop("selected", true);
//	cloneDiv.find("select[name='portfoliovo["+cntMax+"].use_yn']").attr("name","portfoliovo["+(Number(cntMax)+1)+"].use_yn").val("").prop("selected", true);
//	cloneDiv.find("input[name='portfoliovo["+cntMax+"].corp']").attr("name","portfoliovo["+(Number(cntMax)+1)+"].corp");
//	cloneDiv.find("input[name='portfoliovo["+cntMax+"].project_title']").attr("name","portfoliovo["+(Number(cntMax)+1)+"].project_title");
//	cloneDiv.find("input[name='portfoliovo["+cntMax+"].project_intro']").attr("name","portfoliovo["+(Number(cntMax)+1)+"].project_intro");
//	cloneDiv.find("input[name='portfoliovo["+cntMax+"].start_date']").attr("name","portfoliovo["+(Number(cntMax)+1)+"].start_date");
//	cloneDiv.find("input[name='portfoliovo["+cntMax+"].end_date']").attr("name","portfoliovo["+(Number(cntMax)+1)+"].end_date");
//	cloneDiv.find("input[name='portfoliovo["+cntMax+"].del_yn']").attr("name","portfoliovo["+(Number(cntMax)+1)+"].del_yn").val("N");
//	cloneDiv.find("input[name='portfoliovo["+cntMax+"].list_order']").attr("name","portfoliovo["+(Number(cntMax)+1)+"].list_order");
//	cloneDiv.find("input[name='portfoliovo["+cntMax+"].file_no']").attr("name","portfoliovo["+(Number(cntMax)+1)+"].file_no");
//	cloneDiv.find("textarea[name='portfoliovo["+cntMax+"].contents']").attr("name","portfoliovo["+(Number(cntMax)+1)+"].contents");
//	cloneDiv.find("textarea[name='portfoliovo["+cntMax+"].result']").attr("name","portfoliovo["+(Number(cntMax)+1)+"].result");
//	cloneDiv.find("input[name='portfoliovo["+cntMax+"].status']").attr("name","portfoliovo["+(Number(cntMax)+1)+"].status").val("INSERT");
//	cloneDiv.find("a[id='uploadLink']").attr("href","javascript:fileUploads("+(Number(cntMax)+1)+")")
//	cloneDiv.find("#imgDiv > img").attr("src","<c:url value='/resources/bootstrap/kelvin/img/noimage.jpg'/>");
//    cloneDiv.removeClass("pfd"+cntMax).addClass("pfd"+(Number(cntMax)+1));
//    
//    $("#cntMax").val((Number(cntMax)+1));
//    
////     cloneDiv.appendTo("#frmPortfolio");
//	cloneDiv.appendTo("#"+target);	
//    
//    var offset = $(".pfd"+cntMax).offset();
//    $('html, body').animate({scrollTop : offset.top}, 400);
//}






