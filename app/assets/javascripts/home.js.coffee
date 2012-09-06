do ->
  $ ->
    $('#logo').hover ->
      $(this).animate
        'marginTop': '0'
        50
    , ->
      $(this).animate
        'marginTop': '-10'
        200