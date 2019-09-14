class ZCL_BUNKAI_KS definition
  public
  final
  create public .

public section.

  methods TEST_ME
    returning
      value(R_HTML) type STRING .
protected section.
private section.
ENDCLASS.



CLASS ZCL_BUNKAI_KS IMPLEMENTATION.


  METHOD test_me.

    DATA(o_markdown) = NEW zmarkdown( ).

    r_html = o_markdown->text( 'Hello, this is _ABAP Markdown_!' ).


  ENDMETHOD.
ENDCLASS.
