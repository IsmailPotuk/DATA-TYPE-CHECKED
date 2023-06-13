
REPORT ZBK_VERI_TIPI_KONTROLU.

PARAMETERS: p_val  TYPE char20.

  DATA: gv_htype LIKE dd01v-datatype.



      START-OF-SELECTION.


CALL FUNCTION 'NUMERIC_CHECK'
  EXPORTING
    string_in        = p_val
 IMPORTING
  HTYPE            = gv_htype.




    CASE gv_htype.
      WHEN 'CHAR'.
          WRITE:/'Numerik olmayan bir değer girdiniz!'.

      WHEN 'NUMERIK'.
          WRITE:/'Numerik bir değer girdiniz!'.
    ENDCASE.


          .
