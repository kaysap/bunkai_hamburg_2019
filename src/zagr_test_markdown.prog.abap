*&---------------------------------------------------------------------*
*& Report ZAGR_TEST_MARKDOWN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZAGR_TEST_MARKDOWN.

DATA(markdown) = NEW zmarkdown( ).

DATA(html) = markdown->text( 'Hello **abapGit Bunkai**!' ).
DATA(html2) = markdown->text( 'Ein großes Hallo!' ).
cl_demo_output=>display_html( html ).
cl_demo_output=>display_html( html2 ).
