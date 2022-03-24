DATA: lo_matcher TYPE REF TO cl_abap_matcher,
      lv_email TYPE string.

lv_email = 'consultor@lopezpappalardo.xyz'.

lo_matcher = cl_abap_matcher=>create(
  pattern = '^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$'
  text    = lv_email ).

IF lo_matcher->match( ) IS INITIAL.
  " Mail no válido
ELSE.
  " Mail válido
ENDIF.
