CLASS zcl_d400_04_05branch DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_d400_04_05branch IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* Declarations
**************************

    DATA number1 TYPE i.
    DATA number2 TYPE i.
    DATA op TYPE c.
    DATA result TYPE p LENGTH 8 DECIMALS 2.


* Input Values
**************************

    number1 = -8.
    number2 = 3.
    op = '+'.

* Calculation
**************************


    DATA(output) = |{ number1 } { op } { number2 } = { result }|.


CASE op.
WHEN '+'.
result = number1 + number2.
WHEN '-'.
result = number1 - number2.
WHEN '*'.
result = number1 * number2.
WHEN '/'.
IF number2 = 0.
output = 'Durch Null dividiert'.
return.
ELSE.
result = number1 / number2.
ENDIF.
WHEN OTHERS.
output = 'Invalider Operant'.
ENDCASE.





* Output
**************************

    out->write( output ).

  ENDMETHOD.
ENDCLASS.
