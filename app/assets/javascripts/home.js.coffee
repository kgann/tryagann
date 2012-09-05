do ->
  $ ->
    $('#logo').hover ->
      $(this).animate
        'top': '0'
        50
    , ->
      $(this).animate
        'top': '-10'
        200