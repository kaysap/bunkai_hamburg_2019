CLASS zcl_bunkai_ks DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS test_me
      RETURNING
        VALUE(r_html) TYPE string .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_bunkai_ks IMPLEMENTATION.

  METHOD test_me.
    DATA(o_markdown) = NEW zmarkdown( ).
    r_html = o_markdown->text( '_ABAP Markdown_!' ).
  ENDMETHOD.

ENDCLASS.
