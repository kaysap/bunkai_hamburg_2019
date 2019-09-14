*&---------------------------------------------------------------------*
*& Report Z_SECOND_VERSION
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_SECOND_VERSION.

DATA(markdown) = NEW zmarkdown( ).
markdown->SET_MARKUP_ESCAPED(
  EXPORTING
    MARKUP_ESCAPED = abap_false
  RECEIVING
    THIS           = markdown
    ).

DATA(html) = markdown->text( 'Hello \n test **abapGit Bunkai**!' ).
cl_demo_output=>display_html( html ).
