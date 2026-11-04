CLASS zcl_d400_04_04compute DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_d400_04_04compute IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  Data number1 TYPE i.
  Data number2 LIKE number1.
  number1 = -1.
  number2 = 2.
  Data(result) = number1 / number2.
  Data(resulttext) = number1 && ' / ' && number2 && ' = ' && result.
  out->write( resulttext ).

  ENDMETHOD.
ENDCLASS.
