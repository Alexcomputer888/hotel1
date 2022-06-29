function showRate(id) {
    $(id).dialog("open"); // the #dialog element activates the modal box specified above
    return false;
}
$(function () {
    var culture = $("#culture").val();
    var format = "";
    var today = moment();
   
    if (culture == "vi-VN") {
   
        format = "DD/MM/YYYY";
    } else {
        format = "MM/DD/YYYY";
    }

    $('#Scheck_in').datetimepicker({
        format: format,
        minDate: today,
    });
    $('#Scheck_out').datetimepicker({ format: format,defaultDate: today.add(1, 'day'), minDate:today});

    $("#Scheck_in").on("dp.change", function (e) {
        $('#Scheck_out').data("DateTimePicker").minDate(e.date.add(1,'day'));
    });
    $("#Scheck_out").on("dp.change", function (e) {
        $('#Scheck_in').data("DateTimePicker").maxDate(e.date);
    });

    $('#Sub_check_in').datetimepicker({
        format: format,
        minDate: today,
    });
    $('#Sub_check_out').datetimepicker({ format: format, defaultDate: today.add(1, 'day'), minDate: today });

    $("#Sub_check_in").on("dp.change", function (e) {
        $('#Sub_check_out').data("DateTimePicker").minDate(e.date.add(1, 'day'));
    });
    $("#Sub_check_out").on("dp.change", function (e) {
        $('#Sub_check_in').data("DateTimePicker").maxDate(e.date);
    });

    $('.img-accomodation').popover({
        trigger: 'hover',
        'placement': 'left',
        html:true,
        content: function () {
            return $(this).next('.poperey').html();
        }

    });
});
function OpenWindow(query, w, h, scroll) {
    var l = (screen.width - w) / 2;
    var t = (screen.height - h) / 2;

    winprops = 'resizable=1, height=' + h + ',width=' + w + ',top=' + t + ',left=' + l + 'w';
    if (scroll) winprops += ',scrollbars=1';
    var f = window.open(query, "_blank", winprops);
}

function agreeClick(obj) {
    if ($(obj).is(":checked")) {
        $("#continue-reservation").removeAttr("disabled");
    } else {
        $("#continue-reservation").attr("disabled", true);
    }
}

function validate() {
    var check = false;
    var saveString = '[ ';
    $("select.no_of_room").each(function () {
        var pid = $(this).attr("pid");
        var numberRoom = $(this).val();
        var roomTypeId = $(this).attr("roomtypeid");
        var occupancy = $(this).attr("occupancy");
        if (numberRoom != 0) {
            $("#RoomTypeId").val(roomTypeId);
            $("#NoOfRoom").val(numberRoom);
            $("#Occupancy").val(occupancy);
            $("#Pid").val(pid);
            check = true;

            saveString = saveString +
                  '{"RoomId":"' + roomTypeId +
                   '","NumberOfRoom":"' + numberRoom +
                  '","Occupancy":"' + occupancy +
                  '"},';
        }
    });
    saveString = saveString.substr(0, (saveString.length - 1)) + ']';
    $("#Str").val(saveString);
    if (check) {
        $("form#formSubmitRoomAvailable").submit();
    } else {
        alert("Please selete no. of rooms to continue.");
        return false;
    }
}

var selectCount = 0;
var old_ddl = "";
var changed_ddl = false;
var totalroom = 0;
function validateRoom(obj) {
    var $this = $(obj);
    var number = $this.val();
    $('#td_btn_book')
                .animate({ backgroundColor: "#C6D4E9" }, 200, "easeInOutCirc")
                .animate({ backgroundColor: "#E6EDF6" }, 200, "easeInOutCirc")
                .animate({ backgroundColor: "#C6D4E9" }, 200, "easeInOutCirc")
                .animate({ backgroundColor: "#E6EDF6" }, 200, "easeInOutCirc");

}

function showDetail(id) {
    $("#roomdetail_" + id).slideToggle();
}

var isSpecialRequestShow = false;
function showSpecialrequest() {
    if (isSpecialRequestShow) {
        $("#specialrequest").hide();
        isSpecialRequestShow = false;
        $("#icon_special").removeClass("Remove");
    } else {
        $("#specialrequest").show();
        isSpecialRequestShow = true;
        $("#icon_special").addClass("Remove");
    }
}

var isShowExtrabed = false;
function showExtrabed(obj) {
    var $this = $(obj);
    if (isShowExtrabed) {
        $("#extrabed_option").hide();
        isShowExtrabed = false;
        $this.find("span:first").removeClass("Remove");
    } else {
        $("#extrabed_option").show();
        isShowExtrabed = true;
        $this.find("span:first").addClass("Remove");
    }
}

function extrabedChoose(obj,id) {
    var $this = $(obj);
    var number;
    $("#extrabed_option").mask("Waiting...");
    if ($this.is(":checked"))
        number = 1;
    else
        number = -1;
    removeDialog();
    $.post("/Booking/ExtrabedChange",
        { noofextrabed: number,index:id },
        function (result) {
            if (result.SessionTimeOut) {
                alert("Sorry, Session Timeout <br>Your booking session has been inactive for 20 minutes and has now timed out. We are only able to hold rooms for 20 minutes, after this time the room will be released and you will need to once again initiate a search for the room.");
                location.href = "/";
            } else {
                $("#box-total-summary-booking").html(result.htmlBoxSummary);
                BoxSummaryScrollInit();
                $("#extrabed_option").unmask();
            }
        });

}
function removeDialog() {
    $(".dialog").each(function () {
        $(this).remove();
    });
}
function specialServiceChoose(obj) {
    $("#specialrequest").mask("Waiting...");
    var $this = $(obj);
    var serviceId = $this.val();
    var isAdd = true;
    if ($this.is(":checked"))
        isAdd = true;
    else
        isAdd = false;
    removeDialog();
    $.post("/Booking/SpecialServiceChange",
        { serviceId: serviceId, isAdd: isAdd },
        function (result) {
            if (result.SessionTimeOut) {
                alert("Sorry, Session Timeout <br>Your booking session has been inactive for 20 minutes and has now timed out. We are only able to hold rooms for 20 minutes, after this time the room will be released and you will need to once again initiate a search for the room.");
                location.href = "/";
            } else {
                $("#box-total-summary-booking").html(result.htmlBoxSummary);
                BoxSummaryScrollInit();
                $("#specialrequest").unmask();
            }
        });
}

function BoxSummaryScrollInit() {
    var hotel_info_h = $("#hotel-info").height() + 210;
    var endroom = $("#cusForm").height();
    var scroller = new StickyScroller("#scrollingDiv",
    {
        start: 139,
        end: hotel_info_h + endroom,
        interval: 300,
        range: 300,
        margin: 0
    });
}
function BoxSummaryScrollInit1() {
    var hotel_info_h = $("#hotel-info").height() + 210;
    var endroom = $("#cusForm").height();
    var scroller = new StickyScroller("#scrollingDiv",
    {
        start: 139,
        end: parseInt(endroom)/2,
        interval: 300,
        range: 300,
        margin: 0
    });
}




function InitTipsy() {
    // Tipsy Side Config
    $('textarea[title] ,input[title]').tipsy({
        trigger: 'focus',
        offset: '5',
        gravity: 'w'

    });
}

function InitScrillButtonBook() {
    var hotel_info_h = $("#hotel-info").height() + 210;
    var endroom = $(".room-list-contain").height();
    var scroller = new StickyScroller("#scrollingDiv",
    {
        start: hotel_info_h,
        end: hotel_info_h + endroom - 170,
        interval: 300,
        range: 300,
        margin: 0
    });
}

function trHover() {
    $(".available_tr").each(function () {
        var $this = $(this);
        var roomId = $this.attr("rel");
        $this.mouseover(function () {
            $("#room_" + roomId).css("border-left", "3px solid #476410");
        });
        $this.mouseout(function () {
            $("#room_" + roomId).css("border-left", "3px solid white");
        });
    });
}

//function validateSubmitSummary() {
//    var read = $("#term-condition");
//    if (read.is(":checked"))
//        return true;
//    else {
//        alert("Please agreed the terms & condition.");
//        return false;
//    }
//}
function dateFormat(d) {
    var day = d.getDate();
    day = day < 10 ? "0" + day : day;
   var mon = d.getMonth() + 1;
    mon = mon < 10 ? "0" + mon : mon;
    var year = d.getFullYear();
    return (mon + "-" + day + "-" + year);
}

var reservation = function() {
    return {

        validateSearch: function() {
            var checkin = $('#check_in').val();
            var checkout = $('#check_out').val();
            var diff = Math.floor((checkout - checkin) / (1000 * 60 * 60 * 24));
            if (diff > 30) {
                alert("Your selected check-in date is in the past. Please check your dates and try again.");
                return false;
            }else {
                return true;
            }
        },
        loadRoomsAvailable: function(e) {
            var data = $("form#form-search").serialize();
         
            $.ajax({
                type: "POST",
                url: "/RoomAvailable/LoadRoomsAvailable",
                data: data,
                dataType: "html",
                success: function (result) {
                    $('#room-list-available').html(result);
                   // $('.select-a').jNice();
                    //$("select.no_of_room").each(function(inx, item) {
                    //    $(item).parent().jNice();
                    //});
                     $('html,body').animate({ scrollTop: $("#room-list-available").offset().top }, 'slow');
                }
            });
        },
        
        loadImage: function(id) {
            $.post("/Booking/GetHotelImages", {id:id},function(result){
                $("#images_hotel").fadeOut("slow");
                $("#images_hotel").html(result).fadeIn("slow");
                $('.slide-img').cycle({
                    fx: 'fade' // choose your transition type, ex: fade, scrollUp, shuffle, etc...
                });
            });
        },
        validateBeforeSubmit: function () {
            var canSubmit = false;
            $("select.no_of_room").each(function (index,item) {
                var no = parseInt($(item).val());
                if (no != 0) {
                    canSubmit = true;
                }
            });
            if (canSubmit)
                return true;
            else {
                alert("Please select room");
                return false;
            }
        },
        //validateSubmitSummary: function() {
        //    var read = $("input#feo");
        //    if (read.is(":checked"))
        //        return true;
        //    else {
        //        swal({title:"Warning",text:"Please agreed the terms & condition",timer:2000,type:"warning"});
        //        return false;
        //    }
        //},
        initDialog: function() {
            $(".dialog").dialog({
                autoOpen: false,
                show: "fade",
                hide: "fade",
                modal: true,
                width: 550,
                buttons: {
                    Close: function () {
                        $(this).dialog("close");
                    },
                    Send: function () {
                        if ($(".BookingCode").val() == "" || $(".FullName").val() == "" || $(".Email").val() == "" || $(".Phone").val() == "" || $(".Resend").html() == "") {
                            jAlert("Bạn vui lòng nhập đầy đủ thông tin!", "Alert Dialog");
                        }
                        else {
                            var datas = [];
                            $("#Cancel_Booking").each(function (i, item) {
                                var $tr = $(item);
                                var BookingCode = $tr.find("input.BookingCode").first().val(),
                                    FullName = $tr.find("input.FullName").first().val(),
                                    Email = $tr.find("input.Email").first().val(),
                                    Phone = $tr.find("input.Phone").first().val(),
                                    Resend = $tr.find("textarea.Resend").first().val();
                                datas.push({
                                    BookingCode: BookingCode,
                                    FullName: FullName,
                                    Email: Email,
                                    Phone: Phone,
                                    Resend: Resend
                                });
                            });

                            $.post("/RoomAvailable/Cancel", { datas: JSON.stringify(datas) }, function (data) {
                                if (data.Status == 1) {
                                    jAlert("Is Success!!!!", "Alert Dialog");
                                    $(this).dialog("close");
                                }
                                if (data.Status == 2) {
                                    jAlert("Mã Code không đúng", "Alert Dialog");
                                }
                                if (data.Status == 0) {
                                    jAlert("erro!!!!", "Alert Dialog");
                                }
                            });
                        }
                    }
                }
            });
        },
        showDetailRates: function (obj) {
           $("#dialog_" + obj).dialog("open");
            return false;
        },
        CancelBooking: function () {
            $("#dialog_cancel").dialog("open");
            return false;
        },
        showDetail: function(id) {
            $("div#room_detail_"+id).slideToggle();
        },
        currnecyChange: function() {
            $("ul.currency_dropdownlist a").each(function (inx, item) {
                var $this = $(item);
                $this.on("click", function(e) {
                    $this.parent().parent().hide();
                    $("span#current-currency").html($this.text());
                    $.post("/Summary/ChangeCurrency", { culture: $this.attr("data-code") }, function (data) {
                        if (data.ok) {
                            $("div#summary_box").html(data.html);
                        }
                    });
                });
            });
        }
    };
}();

