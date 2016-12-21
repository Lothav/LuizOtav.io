@loadScript = () ->
  $(window).load ->
  	$('body').addClass 'loaded'

  	if $('body').attr('id') == 'timeline'
  		$('.bannerParties').isotope({
  			itemSelector: '.grid-item',
  			# masonry:
  			# 	columnWidth: 100
  		});
  		# $('.bannerParties').slick
  		# 	dots: false,
  		# 	arrows: true,
  		# 	slidesToShow: 30,
  		# 	slidesToScroll: 1,
  		# 	infinite: false,
  		# 	nextArrow: '<button class="fa fa-angle-right"></button>',
  		# 	prevArrow: '<button class="fa fa-angle-left"></button>',
  		# 	responsive: [
  		# 		# {
  		# 		# 	breakpoint: 993,
  		# 		# 	settings:
  		# 		# 		slidesToShow: 3
  		# 		# },
  		# 		{
  		# 			breakpoint: 768,
  		# 			settings:
  		# 				slidesToShow: 4
  		# 				slidesToScroll: 4,
  		# 		}
  		# 	]

  $('.f').on 'focusin','.inputTxt', ->
  	$(this).parent().addClass 'focus'
  .on 'focusout','.inputTxt', ->
  	if this.value==null || this.value==""
  		$(this).parent().removeClass 'focus'

  $('.inputCheck').change ->
  	if this.checked
  		$(this).parent().addClass 'checked'
  	else
  		$(this).parent().removeClass 'checked'



  $('#formGeo').on 'focusin','#fieldGeo', ->
  	$(this).parent().parent().addClass 'result'
  .on 'focusout','#fieldGeo', ->
  	if this.value==null || this.value==""
  		$(this).parent().parent().removeClass 'result'


  $('#dropParties .item .icon, .dropParties .item .icon').click (e) ->
  	e.preventDefault()
  	thisItem = $(this).parent().parent()

  	if ( thisItem.hasClass 'droped' )
  		thisItem.removeClass 'droped'
  	else
  		thisItem.parent().find('.item').removeClass 'droped'
  		thisItem.addClass 'droped'


  $('.forgetPass').click (e) ->
  	e.preventDefault()
  	if $('body').hasClass 'modalPassActive'
  		$('body').removeClass 'modalPassActive'
  	else
  		$('body').addClass 'modalPassActive'

  	if $(this).hasClass 'linkModalLogin'
  		$('body').removeClass 'modalLoginActive'



  $('.overlay, .modal .fa-close').click (e) ->
  	e.preventDefault()
  	$('body').removeClass 'modalPassActive modalLoginActive'



  $('.post .iconPlay, .slider .item .iconPlay').click (e) ->
  	e.preventDefault()
  	thumb = $(this).parent().parent()
  	thumb.addClass 'videoShow'
  	thumb.find('.playerVideo').append '<iframe width="470" height="190" src="https://www.youtube.com/embed/QNGuS6gKGwQ" frameborder="0" allowfullscreen></iframe>'

  $('.post .closeVideo, .slider .item .closeVideo').click (e) ->
  	e.preventDefault()
  	thumb = $(this).parent().parent()
  	thumb.removeClass 'videoShow'
  	thumb.find('.playerVideo iframe').remove()


  $('#tabChat').click (e) ->
  	e.preventDefault()
  	chat = $(this).parent()
  	if chat.hasClass 'min'
  		chat.removeClass 'min'
  	else
  		chat.addClass 'min'

  $('#navUser').click (e) ->
  	e.preventDefault()
  	if $(this).hasClass 'show'
  		$(this).removeClass 'show'
  	else
  		$(this).addClass 'show'



  $('#partyCover .showMore').click (e) ->
  	e.preventDefault()
  	if !$(this).hasClass 'active'
  		$(this).addClass 'active'
  		$(this).parent().addClass 'showAll'
  		$(this).html 'Ocultar novamente'
  	else
  		$(this).removeClass 'active'
  		$(this).parent().removeClass 'showAll'
  		$(this).html 'Exibir mais'



  if $('.slider').length

  	$('.fRelacionados .cont').slick
  		dots: false,
  		arrows: true,
  		slidesToShow: 7,
  		slidesToScroll: 1,
  		focusOnSelect: true,
  		infinite: false,
  		nextArrow: '<button class="fa fa-angle-right"></button>',
  		prevArrow: '<button class="fa fa-angle-left"></button>'


  	$('.askParty .users').slick
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
  				settings:
  					slidesToShow: 3
  			},
  			{
  			breakpoint: 480,
  			settings:
  				slidesToShow: 2
  			},
  			{
  			breakpoint: 380,
  			settings:
  				slidesToShow: 1
  			}
  		]

  	$('#partyGallery').slick
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
  				settings:
  					slidesToShow: 4
  			},
  			{
  			breakpoint: 480,
  			settings:
  				slidesToShow: 2
  			}
  		]


  	$('#partyCover .slider').slick
  		dots: false,
  		arrows: false,
  		slidesToShow: 1,
  		slidesToScroll: 1,
  		focusOnSelect: true,
  		infinite: false,
  		asNavFor: '#partyGallery',




  	# $('#inviteFriends #galleryFriends').slick
  	$('#galleryFriends .tabCont').slick
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
  				settings:
  					slidesToShow: 3
  			},
  			{
  				breakpoint: 769,
  				settings:
  					slidesToShow: 4
  			},
  			{
  				breakpoint: 540,
  				settings:
  					slidesToShow: 3
  			},
  			{
  				breakpoint: 481,
  				settings:
  					slidesToShow: 2
  			},
  			{
  				breakpoint: 381,
  				settings:
  					slidesToShow: 1
  			}
  		]

  	# $('#friendsStatus #galleryFriends').slick
  	# 	dots: false,
  	# 	arrows: true,
  	# 	slidesToShow: 4,
  	# 	slidesToScroll: 1,
  	# 	infinite: false,
  	# 	nextArrow: '<button class="fa fa-angle-right"></button>',
  	# 	prevArrow: '<button class="fa fa-angle-left"></button>',
  	# 	responsive: [
  	# 		{
  	# 			breakpoint: 993,
  	# 			settings:
  	# 				slidesToShow: 3
  	# 		},
  	# 		{
  	# 			breakpoint: 769,
  	# 			settings:
  	# 				slidesToShow: 4
  	# 		},
  	# 		{
  	# 			breakpoint: 540,
  	# 			settings:
  	# 				slidesToShow: 3
  	# 		},
  	# 		{
  	# 			breakpoint: 481,
  	# 			settings:
  	# 				slidesToShow: 2
  	# 		},
  	# 		{
  	# 			breakpoint: 381,
  	# 			settings:
  	# 				slidesToShow: 1
  	# 		}
  	# 	]


  	$('#galleryFriends button').click (e) ->
  		e.preventDefault()

  $('.avaliable').on 'change', '.aval input', ->
  	aval = $(this).val()
  	$(this).parents('.aval').find('.stars').attr 'id','star'+aval


  $('.tabs .tab').click (e) ->
  	e.preventDefault()
  	cont = $(this).attr 'href'

  	if !$(this).hasClass 'active'
  		$(this).parents().find('.tabCont').removeClass 'active'
  		$(this).parents('.tabs').find('.tab').removeClass 'active'
  		$(this).addClass 'active'
  		$(cont).addClass 'active'





  $('#tabsMsg .tabMsg').click (e) ->
  	e.preventDefault()
  	windChat = $(this).attr 'href'
  	if $(this).hasClass 'active'
  		$(this).removeClass 'active'
  	else
  		$('#tabsMsg .tabMsg').removeClass 'active'
  		$('#viewMsg .window').removeClass 'active'
  		$(this).addClass 'active'
  		$(windChat).addClass 'active'


  $('#boxPerfil .navPerfil a').click (e) ->
  	e.preventDefault()

  	idCont = $(this).attr 'href'

  	if !$(idCont).hasClass 'active'

  		$('#boxPerfil .subpages .cont').removeClass 'active'
  		$('#boxPerfil .navPerfil a').removeClass 'active'

  		$(this).addClass 'active'
  		$(idCont).addClass 'active'


  $('.allCovers .cover .image').click (e) ->
  	e.preventDefault()

  	albumID = $(this).attr 'href'
  	elem = $(albumID)
  	wrapScroll = $('#page-fotos')
  	targetScroll = $('.allAlbuns').position().top

  	if !$(albumID).hasClass 'active'

  		$('.allCovers .cover').removeClass('active').addClass('inactive')
  		$('.allAlbuns .album').removeClass 'active'

  		$(this).addClass('active').removeClass('inactive')
  		elem.addClass 'active'

  		wrapScroll.animate
  			scrollTop: targetScroll
  		, 300



  # PERFIL - EDIT NAME ALBUM

  # EDIT
  $('#page-fotos .editName').click (e) ->
  	e.preventDefault()
  	nameCurrent = $(this).parent().find('.name').html()
  	$(this).parent().addClass 'edit'
  	$(this).parent().prepend '<div class="field"><input type="text" class="fieldName" value="'+nameCurrent+'"><button type="submit" class="fa fa-check btnEdit"></button></div>'

  # CONFIRM
  $('#page-fotos').on 'click', '.btnEdit', (e) ->
  	e.preventDefault()

  	newName = $(this).parents('.field').find('.fieldName').val()
  	$(this).parents('.txt').find('.name').html newName

  	$(this).parents('.txt').removeClass 'edit'
  	$(this).parents('.field').remove()


  # PERFIL - EDIT SOBRE

  # EDIT
  $('#page-sobre .linkEdit').click (e) ->
  	e.preventDefault()
  	$('#page-sobre').addClass 'edit'

  # CONFIRM
  $('#page-sobre').on 'click', '.btnEditSobre', (e) ->
  	e.preventDefault()
  	$('#page-sobre').removeClass 'edit'



  # RESPONSIVE


  # $('#navMobile').click (e) ->
  # 	e.preventDefault()

  # 	if $('body').hasClass 'navMobOpen'
  # 		$('body').removeClass 'navMobOpen'
  # 	else
  # 		$('body').addClass 'navMobOpen'


  $('#btnLogin').click (e) ->
  	e.preventDefault()

  	if $('body').hasClass 'modalLoginActive'
  		$('body').removeClass 'modalLoginActive'
  	else
  		$('body').addClass 'modalLoginActive'

  $('#btnAddTag').click (e) ->
  	e.preventDefault()
  	tag = $('#tags .f input').val()
  	$('#tags .f input').val ''
  	$('.tagList').append '<div class="tag"><div class="name">'+tag+'</div><a href="#" title="Remover" class="cancel">x</a><input type="hidden" name="tagFesta" value="'+tag+'"></div>'

  $('.tagList').on 'click', '.cancel', (e) ->
  	e.preventDefault()
  	$(this).parent().remove()

  $('#btnSearchMob').click (e) ->
  	e.preventDefault()
  	if $('#headerMain').hasClass 'fieldSearchOpen'
  		$('#headerMain').removeClass 'fieldSearchOpen'
  	else
  		$('#headerMain').addClass 'fieldSearchOpen'
  		$('#formSearchMain .inputTxt').focus()
  	# if !$(this).parent().hasClass 'fieldSearchOpen' && $(window).width() <= 975
  	# 	e.preventDefault()
  	# 	$(this).parent().addClass 'fieldSearchOpen'
  	# else if $(this).parent().hasClass 'fieldSearchOpen' && $(window).width() <= 975
  	# 	e.preventDefault()
  	# 	$(this).parent().removeClass 'fieldSearchOpen'


setTimeout(()->
  loadScript()
,1000);
