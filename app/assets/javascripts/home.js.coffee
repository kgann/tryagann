do ->
  $ ->
    $('#logo').hover ->
      $(this).animate
        'marginTop': '-10'
        200
    , ->
      $(this).animate
        'marginTop': '0'
        100