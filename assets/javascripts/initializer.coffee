$ ->

  $('.model').hide()
  $('.model').first().show()


  $('#scroll-to-form').on 'click', ->
    $('body').animate({scrollTop: $('.blue-form').offset().top}, 'slow')
    false



  $('.links a').on 'click', ->

    $('.links a').removeClass('active')
    $(@).addClass('active')

    $('.model').hide()
    $(".model[anchor=#{$(@).attr('rel')}]").show()

    false


  $('.get-price').on 'click', ->


    $('.modal-overlay').on 'click', ->
      hide_modal_dialog()

    $('.modal-overlay').show()
    $('.modal-overlay').animate({'opacity': '0.8'}, 300, ->
      $('.modal-dialog').show()
    )



window.hide_modal_dialog = ->
  $('.modal-dialog').hide()
  $('.modal-overlay').animate({'opacity': '0'}, 300, ->
    $('.modal-overlay').hide()
  )


