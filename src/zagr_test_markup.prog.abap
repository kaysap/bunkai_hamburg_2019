*&---------------------------------------------------------------------*
*& Report ZAGR_TEST_MARKUP
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZAGR_TEST_MARKUP.
DATA(markdown) = NEW zmarkdown( ).

DATA(html) = markdown->text( 'Hello Hamburg!' ).
cl_demo_output=>display_html( html ).
