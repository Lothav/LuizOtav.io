(function() {
  this.loadScript = function() {
    $(window).load(function() {
      $('body').addClass('loaded');
      if ($('body').attr('id') === 'timeline') {
        return $('.bannerParties').isotope({
          itemSelector: '.grid-item'
        });
      }
    });
    $('.f').on('focusin', '.inputTxt', function() {
      return $(this).parent().addClass('focus');
    }).on('focusout', '.inputTxt', function() {
      if (this.value === null || this.value === "") {
        return $(this).parent().removeClass('focus');
      }
    });
    $('.inputCheck').change(function() {
      if (this.checked) {
        return $(this).parent().addClass('checked');
      } else {
        return $(this).parent().removeClass('checked');
      }
    });
    $('#formGeo').on('focusin', '#fieldGeo', function() {
      return $(this).parent().parent().addClass('result');
    }).on('focusout', '#fieldGeo', function() {
      if (this.value === null || this.value === "") {
        return $(this).parent().parent().removeClass('result');
      }
    });
    $('#dropParties .item .icon, .dropParties .item .icon').click(function(e) {
      var thisItem;
      e.preventDefault();
      thisItem = $(this).parent().parent();
      if (thisItem.hasClass('droped')) {
        return thisItem.removeClass('droped');
      } else {
        thisItem.parent().find('.item').removeClass('droped');
        return thisItem.addClass('droped');
      }
    });
    $('.forgetPass').click(function(e) {
      e.preventDefault();
      if ($('body').hasClass('modalPassActive')) {
        $('body').removeClass('modalPassActive');
      } else {
        $('body').addClass('modalPassActive');
      }
      if ($(this).hasClass('linkModalLogin')) {
        return $('body').removeClass('modalLoginActive');
      }
    });
    $('.overlay, .modal .fa-close').click(function(e) {
      e.preventDefault();
      return $('body').removeClass('modalPassActive modalLoginActive');
    });
    $('.post .iconPlay, .slider .item .iconPlay').click(function(e) {
      var thumb;
      e.preventDefault();
      thumb = $(this).parent().parent();
      thumb.addClass('videoShow');
      return thumb.find('.playerVideo').append('<iframe width="470" height="190" src="https://www.youtube.com/embed/QNGuS6gKGwQ" frameborder="0" allowfullscreen></iframe>');
    });
    $('.post .closeVideo, .slider .item .closeVideo').click(function(e) {
      var thumb;
      e.preventDefault();
      thumb = $(this).parent().parent();
      thumb.removeClass('videoShow');
      return thumb.find('.playerVideo iframe').remove();
    });
    $('#tabChat').click(function(e) {
      var chat;
      e.preventDefault();
      chat = $(this).parent();
      if (chat.hasClass('min')) {
        return chat.removeClass('min');
      } else {
        return chat.addClass('min');
      }
    });
    $('#navUser').click(function(e) {
      e.preventDefault();
      if ($(this).hasClass('show')) {
        return $(this).removeClass('show');
      } else {
        return $(this).addClass('show');
      }
    });
    $('#partyCover .showMore').click(function(e) {
      e.preventDefault();
      if (!$(this).hasClass('active')) {
        $(this).addClass('active');
        $(this).parent().addClass('showAll');
        return $(this).html('Ocultar novamente');
      } else {
        $(this).removeClass('active');
        $(this).parent().removeClass('showAll');
        return $(this).html('Exibir mais');
      }
    });
    if ($('.slider').length) {
      $('.fRelacionados .cont').slick({
        dots: false,
        arrows: true,
        slidesToShow: 7,
        slidesToScroll: 1,
        focusOnSelect: true,
        infinite: false,
        nextArrow: '<button class="fa fa-angle-right"></button>',
        prevArrow: '<button class="fa fa-angle-left"></button>'
      });
      $('.askParty .users').slick({
        dots: false,
        arrows: true,
        slidesToShow: 4,
        slidesToScroll: 1,
        focusOnSelect: true,
        infinite: false,
        nextArrow: '<button class="fa fa-angle-right"></button>',
        prevArrow: '<button class="fa fa-angle-left"></button>',
        responsive: [
          {
            breakpoint: 769,
            settings: {
              slidesToShow: 3
            }
          }, {
            breakpoint: 480,
            settings: {
              slidesToShow: 2
            }
          }, {
            breakpoint: 380,
            settings: {
              slidesToShow: 1
            }
          }
        ]
      });
      $('#partyGallery').slick({
        dots: true,
        arrows: false,
        centerMode: true,
        centerPadding: '0px',
        slidesToShow: 5,
        focusOnSelect: true,
        asNavFor: '#partyCover .slider',
        responsive: [
          {
            breakpoint: 769,
            settings: {
              slidesToShow: 4
            }
          }, {
            breakpoint: 480,
            settings: {
              slidesToShow: 2
            }
          }
        ]
      });
      $('#partyCover .slider').slick({
        dots: false,
        arrows: false,
        slidesToShow: 1,
        slidesToScroll: 1,
        focusOnSelect: true,
        infinite: false,
        asNavFor: '#partyGallery'
      });
      $('#galleryFriends .tabCont').slick({
        dots: false,
        arrows: true,
        slidesToShow: 4,
        slidesToScroll: 1,
        infinite: false,
        nextArrow: '<button class="fa fa-angle-right"></button>',
        prevArrow: '<button class="fa fa-angle-left"></button>',
        responsive: [
          {
            breakpoint: 993,
            settings: {
              slidesToShow: 3
            }
          }, {
            breakpoint: 769,
            settings: {
              slidesToShow: 4
            }
          }, {
            breakpoint: 540,
            settings: {
              slidesToShow: 3
            }
          }, {
            breakpoint: 481,
            settings: {
              slidesToShow: 2
            }
          }, {
            breakpoint: 381,
            settings: {
              slidesToShow: 1
            }
          }
        ]
      });
      $('#galleryFriends button').click(function(e) {
        return e.preventDefault();
      });
    }
    $('.avaliable').on('change', '.aval input', function() {
      var aval;
      aval = $(this).val();
      return $(this).parents('.aval').find('.stars').attr('id', 'star' + aval);
    });
    $('.tabs .tab').click(function(e) {
      var cont;
      e.preventDefault();
      cont = $(this).attr('href');
      if (!$(this).hasClass('active')) {
        $(this).parents().find('.tabCont').removeClass('active');
        $(this).parents('.tabs').find('.tab').removeClass('active');
        $(this).addClass('active');
        return $(cont).addClass('active');
      }
    });
    $('#tabsMsg .tabMsg').click(function(e) {
      var windChat;
      e.preventDefault();
      windChat = $(this).attr('href');
      if ($(this).hasClass('active')) {
        return $(this).removeClass('active');
      } else {
        $('#tabsMsg .tabMsg').removeClass('active');
        $('#viewMsg .window').removeClass('active');
        $(this).addClass('active');
        return $(windChat).addClass('active');
      }
    });
    $('#boxPerfil .navPerfil a').click(function(e) {
      var idCont;
      e.preventDefault();
      idCont = $(this).attr('href');
      if (!$(idCont).hasClass('active')) {
        $('#boxPerfil .subpages .cont').removeClass('active');
        $('#boxPerfil .navPerfil a').removeClass('active');
        $(this).addClass('active');
        return $(idCont).addClass('active');
      }
    });
    $('.allCovers .cover .image').click(function(e) {
      var albumID, elem, targetScroll, wrapScroll;
      e.preventDefault();
      albumID = $(this).attr('href');
      elem = $(albumID);
      wrapScroll = $('#page-fotos');
      targetScroll = $('.allAlbuns').position().top;
      if (!$(albumID).hasClass('active')) {
        $('.allCovers .cover').removeClass('active').addClass('inactive');
        $('.allAlbuns .album').removeClass('active');
        $(this).addClass('active').removeClass('inactive');
        elem.addClass('active');
        return wrapScroll.animate({
          scrollTop: targetScroll
        }, 300);
      }
    });
    $('#page-fotos .editName').click(function(e) {
      var nameCurrent;
      e.preventDefault();
      nameCurrent = $(this).parent().find('.name').html();
      $(this).parent().addClass('edit');
      return $(this).parent().prepend('<div class="field"><input type="text" class="fieldName" value="' + nameCurrent + '"><button type="submit" class="fa fa-check btnEdit"></button></div>');
    });
    $('#page-fotos').on('click', '.btnEdit', function(e) {
      var newName;
      e.preventDefault();
      newName = $(this).parents('.field').find('.fieldName').val();
      $(this).parents('.txt').find('.name').html(newName);
      $(this).parents('.txt').removeClass('edit');
      return $(this).parents('.field').remove();
    });
    $('#page-sobre .linkEdit').click(function(e) {
      e.preventDefault();
      return $('#page-sobre').addClass('edit');
    });
    $('#page-sobre').on('click', '.btnEditSobre', function(e) {
      e.preventDefault();
      return $('#page-sobre').removeClass('edit');
    });
    $('#btnLogin').click(function(e) {
      e.preventDefault();
      if ($('body').hasClass('modalLoginActive')) {
        return $('body').removeClass('modalLoginActive');
      } else {
        return $('body').addClass('modalLoginActive');
      }
    });
    $('#btnAddTag').click(function(e) {
      var tag;
      e.preventDefault();
      tag = $('#tags .f input').val();
      $('#tags .f input').val('');
      return $('.tagList').append('<div class="tag"><div class="name">' + tag + '</div><a href="#" title="Remover" class="cancel">x</a><input type="hidden" name="tagFesta" value="' + tag + '"></div>');
    });
    $('.tagList').on('click', '.cancel', function(e) {
      e.preventDefault();
      return $(this).parent().remove();
    });
    return $('#btnSearchMob').click(function(e) {
      e.preventDefault();
      if ($('#headerMain').hasClass('fieldSearchOpen')) {
        return $('#headerMain').removeClass('fieldSearchOpen');
      } else {
        $('#headerMain').addClass('fieldSearchOpen');
        return $('#formSearchMain .inputTxt').focus();
      }
    });
  };

  setTimeout(function() {
    return loadScript();
  }, 1000);

}).call(this);
