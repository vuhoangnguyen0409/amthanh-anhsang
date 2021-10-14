//https://codepen.io/creativetim/pen/EgVBXa
$(document).ready(function(){
    $('.choice01').click(function(){
        wizard = $(this).closest('.wizard-card');
        wizard.find('.choice01').removeClass('active');
        $(this).addClass('active');
        $(wizard).find('[name="rdoMusic"]').removeAttr('checked');
        $(this).find('[name="rdoMusic"]').attr('checked','true');
    });

    $('.choice02').click(function(){
        wizard = $(this).closest('.wizard-card');
        wizard.find('.choice02').removeClass('active');
        $(this).addClass('active');
        $(wizard).find('[name="rdoLight"]').removeAttr('checked');
        $(this).find('[name="rdoLight"]').attr('checked','true');
    });

    $('.choice03').click(function(){
        wizard = $(this).closest('.wizard-card');
        wizard.find('.choice03').removeClass('active');
        $(this).addClass('active');
        $(wizard).find('[name="rdoStage"]').removeAttr('checked');
        $(this).find('[name="rdoStage"]').attr('checked','true');
    });

    $('.nav-pills li:first-child').addClass('active');
    $('.nav-pills li').click(function(){
        $('.nav-pills li').removeClass('active');
        $(this).addClass('active');
    });

    $('.btn-next').click(function(){
        $('.nav-pills li.active').removeClass('active').next().addClass('active');
    });

    $('.btn-previous').click(function(){
        $('.nav-pills li.active').removeClass('active').prev().addClass('active');
    });

$('#submit').click(function(){
    // Music
    if (!$("input[name='rdoMusic']:checked").val()) {
        $('#error').html('<div class="error-bg"><i class="icon icon-cancel-circle"></i>Vui lòng chọn Gói Âm Thanh</div>');
        $('.nav-pills li a[href="#music"]').trigger('click');
        //alert('Vui lòng chọn loại Âm Thanh');
        return false;
    }
    // Light
    if (!$("input[name='rdoLight']:checked").val()) {
        $('#error').html('<div class="error-bg"><i class="icon icon-cancel-circle"></i>Vui lòng chọn Gói Ánh Sáng</div>');
        $('.nav-pills li a[href="#light"]').trigger('click');
        //alert('Vui lòng chọn loại Ánh Sáng');
        return false;
    }
    // Screen
    if($("#screenW").val() == "" || $("#screenW").val() == null || $("#screenH").val() == "" || $("#screenH").val() == null){
        $('#error').html('<div class="error-bg"><i class="icon icon-cancel-circle"></i>Vui lòng nhập kích thước Màn Hình</div>');
        $('.nav-pills li a[href="#screen"]').trigger('click');
        return false;
    }
    if (!$("select[name='sltScreenType']").val()) {
        $('#error').html('<div class="error-bg"><i class="icon icon-cancel-circle"></i>Vui lòng chọn Lắp Ráp</div>');
        $('.nav-pills li a[href="#screen"]').trigger('click');
        //alert('Vui lòng chọn Màn Hình: Trong Nhà hoặc Ngoài Trời');
        return false;
    }
    // Stage
    //if($("#stageW1").val() == "" || $("#stageW1").val() == null || $("#stageW2").val() == "" || $("#stageW2").val() == null){
        //$('#error').html('<div class="error-bg"><i class="icon icon-cancel-circle"></i>Vui lòng nhập kích thước Sân Khấu</div>');
        //$('.nav-pills li a[href="#stage"]').trigger('click');
        //return false;
    //}
    // Stage2
    if (!$("input[name='rdoStage']:checked").val()) {
        $('#error').html('<div class="error-bg"><i class="icon icon-cancel-circle"></i>Vui lòng chọn Gói Sân Khấu</div>');
        $('.nav-pills li a[href="#stage"]').trigger('click');
        //alert('Vui lòng chọn loại Ánh Sáng');
        return false;
    }
    // Account
    if ($("input[name='txtName']").val().length === 0) {
        $('#error').html('<div class="error-bg"><i class="icon icon-cancel-circle"></i>Vui lòng nhập Tên của bạn</div>');
        //alert('Vui lòng chọn loại Ánh Sáng');
        $('.nav-pills li a[href="#account"]').trigger('click');
        return false;
    }

    if ($("input[name='txtPhone']").val().length === 0) {
        $('#error').html('Vui lòng nhập Số Điện Thoại của bạn</div>');
        //alert('Vui lòng chọn loại Ánh Sáng');
        $('.nav-pills li a[href="#account"]').trigger('click');
        return false;
    }
})

// Calculate the Screen size
    $('.multiplier-1').on('keyup', function(){
        //$('#screenSize').html(parseInt($('#screenH').val()) * parseInt($('#screenV').val()));
        $("input.screenSize").val(parseInt($('#screenH').val()) * parseInt($('#screenW').val()));
    });

    $('.multiplier-2').on('keyup', function(){
        //$('#screenSize').html(parseInt($('#screenH').val()) * parseInt($('#screenV').val()));
        $("input.stageSize").val(parseInt($('#stageW1').val()) * parseInt($('#stageW2').val()));
    });
// datepicker
    // https://www.jqueryscript.net/time-clock/Highly-Customizable-jQuery-Datepicker-Plugin-Datepicker.html
    $('[data-toggle="datepicker"]').datepicker({
        // options here
    });
});
