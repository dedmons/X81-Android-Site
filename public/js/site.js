$('.pna').click(function() {
    $('#pageNotAvalible').slideDown();
});

$('.alert-close-btn').click(function(){
    $('#pageNotAvalible').slideUp();
});

$(window).scroll(function(){
    var offset = $('body').scrollTop();
    var elem = $('.sidebar-nav-affix-top');

    if(offset > 320){
        var curOff = elem.offset();
        var width = elem.width();
        elem.css('position','fixed');
        elem.animate({top:60,width:width},0);
    }
    else{
        elem.css('position','static');
        elem.css('width','auto');
    }
});
