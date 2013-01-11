$('.pna').click(function() {
    $('#pageNotAvalible').slideDown();
});

$('.alert-close-btn').click(function(){
    $('#pageNotAvalible').slideUp();
});

var trigerPoint = -1;

$(window).scroll(function(){
    var pageOffset = $('body').scrollTop();
    var elem = $('.sidebar-nav-affix-top');
    var elemTop = elem.offset().top;

    if(elemTop - pageOffset < 60 && trigerPoint === -1){
        trigerPoint = pageOffset;
        console.log(pageOffset+" : "+elemTop);
        var curOff = elem.offset();
        var width = elem.width();
        elem.css('position','fixed');
        elem.animate({top:60,width:width},0);
    }
    else if(pageOffset < trigerPoint){
        trigerPoint = -1;
        elem.css('position','static');
        elem.css('width','auto');
    }
});

