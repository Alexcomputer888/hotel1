


$(document).ready(function(){
	
	var culture = $('#Culture').val();
	
	// Start Hỗ trợ trực tuyến //
	
	$('.support-body').hide();
	$('.support-header').click(function(){
		var img_src=$('.img-expand').attr('src');
		if(img_src=='/upload/images/icon/expand.png')
		{
			$('.img-expand').attr('src','/upload/images/icon/hidden.png');
		}
		else{
			$('.img-expand').attr('src','/upload/images/icon/expand.png');
		}
		$('.support-body').slideToggle();
	});
	
	// End Hỗ trợ trực tuyến //
	
	// Start Slider trang chủ //
		$('#slides').superslides({
			animation:'fade',
			pagination:false,
			play: 4000,
			 hashchange: false,
			animation_speed:1500
		});
		
		$('.gallerySlider #sliders').superslides({
			animation:'fade',
			pagination:true,
			play: 4000,
			hashchange: false,
			animation_speed:800
		});
		
	// End Slider trang chủ //
	
	// Start  tùy chỉnh scroll khi ở giao diện mobile không hiển thị //

		var wh = $(window).width();
		
		if(wh>768)
		{
			$(window).load(function(){
				var content=$(".contents"),autoScrollTimer=8000,autoScrollTimerAdjust,autoScroll;
				
				content.mCustomScrollbar({
					scrollButtons:{enable:true},
					callbacks:{
						whileScrolling:function(){
							autoScrollTimerAdjust=autoScrollTimer*this.mcs.topPct/100;
						},
						//onScroll:function(){ 
						//	if($(this).data("mCS").trigger==="internal"){AutoScrollOff();}
						//}
					}
				});
					
			});
		}
		else{
			$('.btn-booking').click(function(){
				window.location.href="/reservation";
			});
		}
		
		// End scroll............... //
		
		 $("#content-slider").lightSlider({
            loop: true,
            keyPress: true
        });
        $('#image-gallery').lightSlider({
            gallery: true,
            item: 1,
            thumbItem: 5,
            slideMargin: 0,
            speed: 500,
            auto: true,
            loop: true,
            onSliderLoad: function () {
                $('#image-gallery').removeClass('cS-hidden');
            }
        });
		google.load("maps", "3.1", { callback: initGoogleMap, other_params: "sensor=false" });
		
		$('.gallerySlider.flexslider').flexslider({
				animation: "slide",
				slideshowSpeed:2000
		});
		var cbr = $("#val_boxreser").val();
        if(cbr==1)
        {
            $(".box-reser").show();
        }
        else
        {
            $(".box-reser").hide();
        }
		$('.btn-booking').click(function(){
			$(".box-reser").slideToggle(500);
		})
		
		$('.ddl-language').change(function(){
            var gt = $(this).val();
            if(gt=="vi-VN")
            {
                window.location.href = "/home/nn/vi-VN";
            }
            else {
                window.location.href = "/home/nn/en-US";
            }
        });
		
		// 
		
		$('#contact-form').submit(function(e){
			submitSendMail(culture);
			e.preventDefault();
		});
	});


	var infowindow;
    var beachMarker;
    var myLatlng;

    var lat = '12.233211';
    var lng = '109.195434';
    var zoom = '20';
	var txtBallon;
		txtBallon= '<p style='+'"'+'font-size:1.2em;text-align:center'+'"'+'><strong style='+'"'+'color:#2E3192'+'"'+'>POSEIDON NHA TRANG HOTEL</strong><br /><br/>30 Tran Quang Khai St., Loc Tho Ward., Nha Trang City, VietNam</p>';
	

    function initGoogleMap() {
    
        myLatlng = new google.maps.LatLng(lat, lng);

        var myOptions = {
            zoom: parseInt(zoom),
            center: myLatlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        map = new google.maps.Map(document.getElementById("map-canvas"), myOptions);
        viewMarker(myLatlng);
    }

    function viewMarker(point) {
        var contentString = '<div style="color:#000000;font-size:12px;">' + txtBallon + '</div>';

        if (infowindow != null) {
            infowindow.close();
        }
        infowindow = new google.maps.InfoWindow({
            content: contentString
        });

        var image = '/Content/images/icons/placeholder.png';

        if (beachMarker != null) {
            beachMarker.setMap(null);
        }

        beachMarker = new google.maps.Marker({
            //position: point,
            map: map,
			draggable: true,
			animation: google.maps.Animation.DROP,
			position: point,
			icon:image,
			title:'Poseidon Nha Trang Hotel'
        });

        google.maps.event.addListener(beachMarker, 'click', function () {
            infowindow.open(map, beachMarker);
        });
    }
            
function toggleBounce() {

    if (marker.getAnimation() != null) {
        marker.setAnimation(null);
    } else {
        marker.setAnimation(google.maps.Animation.BOUNCE);
    }
}


// Start gửi mail contact //
	
	function submitSendMail(cul) {
		var tb;
		var Name = $("#Name").val();
		var Email = $("#Email").val();
		var Title = $("#Title").val();
		var Content = $("#Content").val();
		if(cul==='vi-VN'){
			tb="THÔNG BÁO";
		}
		else{
			tb="NOTICE";
		}
		$('.loading-contact').addClass("overlay-loading");
		$.post("/contact/Complete", { Name: Name, Email: Email, Title: Title, Content: Content }, function (res) {
			if (res.ok == true) {
				$('.loading-contact').removeClass("overlay-loading");
				document.getElementById("contact-form").reset();
				swal({ title: tb, text: res.message, type: "success" });
				
			}
			else {
				$('.loading-contact').removeClass("overlay-loading");
				swal({ title: tb, text: res.message, type: "error" });

			}
		});
	};
	
	// End gửi mail contact //
function addDays(date,days) {
    return new Date(date.getTime() + 864e5 * days);
}
function booking(culture){
	var string_date_checkin="";
	var string_date_checkout="";
	var today= new Date();
	var date_chekin=addDays(today,1);
	var date_chekout = addDays(today,2);
	if(culture==="vi-VN"){
		string_date_checkin=date_chekin.getDate()+'/'+(date_chekin.getMonth()+1)+'/'+date_chekin.getFullYear();
		string_date_checkout=date_chekout.getDate()+'/'+(date_chekout.getMonth()+1)+'/'+date_chekout.getFullYear();
	}
	else{
		string_date_checkin=(date_chekin.getMonth()+1)+'/'+date_chekin.getDate()+'/'+date_chekin.getFullYear();
		string_date_checkout=(date_chekout.getMonth()+1)+'/'+date_chekout.getDate()+'/'+date_chekout.getFullYear();
	}
	location.href='/RoomAvailable?checkin='+string_date_checkin+'&checkout='+string_date_checkout+'&adult=1&children=0';
}