$(function () {
	
   var currentdate = moment();
    var today = moment().add(1, 'day');
    var culture = $("#Culture").val();
 
    var format = "";

    if (culture == "vi-VN") {
        format = "DD/MM/YYYY";
    } else {
        format = "MM/DD/YYYY";
    }
        $('#check_in').datetimepicker({
            format: format,
            defaultDate: today,
            minDate: today
        });
        //var date = $('#check_in').val();
        //console.log(date);
        //if (date == "") {
        //    $('#check_out').datetimepicker({ format: format, defaultDate: today, minDate: currentdate });
        //} else {
            $('#check_out').datetimepicker({ format: format, defaultDate: today.add(1, 'day'), minDate: today });

        //}
        $("#check_in").on("dp.change", function (e) {
            $('#check_out').data("DateTimePicker").minDate(e.date);
        });

        $("#check_out").on("dp.change", function (e) {
            $('#check_in').data("DateTimePicker").maxDate(e.date);
        });
 

    $('.datepicker').datetimepicker({
        format: 'DD/MM/YYYY'
    });

    $(".numberMask").keydown(function (e) {
        // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
            // Allow: Ctrl+A, Command+A
            (e.keyCode == 65 && (e.ctrlKey === true || e.metaKey === true)) ||
            // Allow: home, end, left, right, down, up
            (e.keyCode >= 35 && e.keyCode <= 40)) {
            // let it happen, don't do anything
            return;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });

    if ($(window).width() > 767) {
        $('#box-booking').addClass("in");
        $('#box-booking').removeAttr("height" );
    } else {
        $('#box-booking').removeClass("in");
    }


    //$('#form-personal-info').formValidation({
    //    framework: 'bootstrap',
    //    icon: {
    //        valid: 'glyphicon glyphicon-ok',
    //        invalid: 'glyphicon glyphicon-remove',
    //        validating: 'glyphicon glyphicon-refresh'
    //    },
    //    fields: {
      
    //        SummaryForm_FirstName: {
    //            selector: '#SummaryForm_FirstName',
    //            validators: {
    //                notEmpty: {
    //                    message: " "
    //                }
    //            }
    //        },
    //        SummaryForm_Phone: {
    //            selector: '#SummaryForm_Phone',
    //            validators: {
    //                notEmpty: {
    //                    message: " "
    //                }
    //            }
    //        },
    //        SummaryForm_LastName: {
    //            selector: '#SummaryForm_LastName',
    //            validators: {
    //                notEmpty: {
    //                    message: " "
    //                }
    //            }
    //        },
    //        SummaryForm_NationalId: {
    //            selector: '#SummaryForm_NationalId',
    //            validators: {
    //                notEmpty: {
    //                    message: " "
    //                }
    //            }
    //        },
    //        SummaryForm_Email: {
    //            selector: '#SummaryForm_Email',
    //            validators: {
    //                emailAddress: {
    //                    message: " "
    //                },
    //                notEmpty: {
    //                    message: " "
    //                },
    //            }
    //        }
    //    }
    //});


});
$(window).resize(function () {
    if ($(window).width() > 767) {
        $('#box-booking').addClass("in");
    } else {
        $('#box-booking').removeClass("in");
    }
});


var datetime = null,
        date = null;

var update = function () {
    date = moment(new Date())
    datetime.html(date.format('dddd, MMMM Do YYYY, h:mm:ss a'));
};

//function submitSendMail() {
//    var Name = $("#Name").val();
//    var Email = $("#Email").val();
//    var Title = $("#Title").val();
//    var Content = $("#Content").val();
//    var tb = $("#check1").val();
//    $('.loading-contact').addClass("overlay-loading");
//    $.post("/contact/Complete", { Name: Name, Email: Email, Title: Title, Content: Content }, function (res) {
//        if (res.ok == true) {
//            $('.loading-contact').removeClass("overlay-loading");
//            swal({ title: tb, text: res.message, type: "success" });
//            $('button.btn-reset').click();
//        }
//        else {
//            $('.loading-contact').removeClass("overlay-loading");
//            swal({ title: tb, text: res.message, type: "error" });

//        }
//    });
//};

//function SendFeedback() {
//    var Name = $("#Names").val();
//    var Email = $("#Emails").val();
//    var Title = $("#Titles").val();
//    var Content = $("#Contents").val();
//    var tb = $("#check1").val();
//    $('.loading-contact').addClass("overlay-loading");
//    $.post("/contact/Result", { Name: Name, Email: Email, Title: Title, Content: Content }, function (res) {
//        if (res.ok == true) {
//            $('.loading-contact').removeClass("overlay-loading");
//            swal({ title: tb, text: res.message, type: "success" });
//            $('button.btn-reset').click();
//            $('button.btn-close').click();
//        }
//        else {
//            $('.loading-contact').removeClass("overlay-loading");
//            swal({ title: tb, text: res.message, type: "error" });

//        }
//    });
//};

$(document).ready(function () {
    datetime = $('.realtime li');
    update();
    setInterval(update, 1000);
});





