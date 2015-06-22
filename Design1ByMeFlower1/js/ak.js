$(document).ready(function () {
    resize();
    $('.bxslider').bxSlider({
        auto: true,
        mode: 'fade',
        captions: true,
        nextSelector: '#slider-next',
        prevSelector: '#slider-prev',
        nextText: 'Onward →',
        prevText: '← Go back'
    });

});

function resize() {
    var h = $(window).height();
    var hnav = $(".navbar").height();
    var hfooter = $("#footer").height();
    var jumbotron = h - hnav - hfooter;
    $('.jumbotron').css('height', jumbotron + 'px');
}

$(document).on("click", "#btnhide", function () {
    $('.uk-text-center').removeClass('uk-animation-scale-down');
    $('.uk-text-center').removeClass('uk-animation-scale-up');
    $('.uk-text-center').addClass('uk-animation-scale-down');

});
$(document).on("click", "#btnshow", function () {
    $('.uk-text-center').removeClass('uk-animation-scale-down');
    $('.uk-text-center').removeClass('uk-animation-scale-up');
    $('.uk-text-center').addClass('uk-animation-scale-up');

});


$(window).scroll(function () {
    var scroll = $(document).scrollTop();
    $("#xx").html(scroll);
    if (scroll > 700 && scroll < 1339) {  
        $('.imgad').show();
        $('.uk-text-center').removeClass('uk-animation-scale-down');
        $('.uk-text-center').removeClass('uk-animation-scale-up');
        $('.uk-text-center').addClass('uk-animation-scale-up');
    }
    else {
        $('.uk-text-center').removeClass('uk-animation-scale-down');
        $('.uk-text-center').removeClass('uk-animation-scale-up');
        $(".imgad").fadeTo("slow", 0);
    }
});




