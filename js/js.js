
$(window).load(function(){
    for(var i = 0; i < 5; i++){
        (function(ind) {
            setTimeout(function(){
                var element = document.getElementById("social" + ind);
                element.style.display = "block";
            }, 500 + (ind*300));
        })(i);
    }
    setTimeout(function(){
        document.getElementById("my-pic").style.display = "block";
    },800);

    $('svg.paint_god path').each(function(){
        var comprimento = $(this).get(0).getTotalLength();
        var comprimentoArredondado = Math.round(comprimento);
        $(this).attr('stroke-dasharray', comprimentoArredondado);
        $(this).attr('stroke-dashoffset', comprimentoArredondado);
    });


    var mypic = $("#my-pic");
    mypic.on("click",function(){
        document.getElementById("glass-turn-down").style.display = "block";
    });
    mypic.mouseleave(function(){
        document.getElementById("glass-turn-down").style.display = "none";
    });

    var animations = ["rotate-n", "tada", "zoomInDown", "rubberBand"];
    setTimeout(function(){
        $('svg').addClass('animate');

        var i = 1, j=1;
        $('.svg2 path').each(function(){
            i += 0.25;
            var random = Math.floor(Math.random() * animations.length);
            $(this).css("animation", animations[random]  +" "+i+"s");
        });
    },1000);

    function getRandomColor() {
        var letters = '0123456789ABCDEF';
        var color = '#';
        for (var i = 0; i < 6; i++ ) {
            color += letters[Math.floor(Math.random() * 16)];
        }
        return color;
    }
    $(".spinner").css("display", "none");
    $(".body-out").css("display", "block");
});

