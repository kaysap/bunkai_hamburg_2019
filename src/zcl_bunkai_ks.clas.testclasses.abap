*"* use this source file for your ABAP unit test classes
CLASS ltc_test DEFINITION FOR TESTING
DURATION SHORT
RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS ok FOR TESTING.
    DATA mo_cut TYPE REF TO zcl_bunkai_ks.

ENDCLASS.


CLASS ltc_test IMPLEMENTATION.
  METHOD ok.
     mo_cut = NEW #(  ). 
     DATA(l_html) = mo_cut->test_me(  ). 
  
     cl_abap_unit_assert=>assert_equals( act = l_html exp = |<p><em>ABAP Markdown</em>!</p>| ). 

  ENDMETHOD.
ENDCLASS.
