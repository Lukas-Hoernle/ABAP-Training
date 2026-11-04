CLASS zcl_d400_04_09local_class2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_d400_04_09local_class2 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    lcl_connection=>conn_counter = 5.

    DATA lo_connection TYPE REF TO lcl_connection.  "-> NULL
    DATA lo_connection1 TYPE REF TO lcl_connection. "-> NULL
    DATA lo_connection2 TYPE REF TO lcl_connection. "-> NULL

    DATA lv_demo_01 TYPE i VALUE 100.
    DATA lv_demo_02 TYPE i.


    lv_demo_02 = lv_demo_01.


*    DATA lo_connection3 TYPE lcl_connection.  "Fehler


    lo_connection = NEW lcl_connection(  ). "Variante 1.
    lo_connection = NEW #(  ).              "Variante 2.

    DATA lo_connection3 TYPE REF TO lcl_connection. "-> NULL

    lo_connection3 = lo_connection.

    DATA lt_connection TYPE TABLE OF REF TO lcl_connection.
    APPEND lo_connection TO lt_connection.

    lo_connection = NEW #(  ).
    APPEND lo_connection TO lt_connection.

*    CREATE OBJECT lo_connection.
*    CREATE OBJECT lo_connection1.
*    CREATE OBJECT lo_connection2.


  ENDMETHOD.
ENDCLASS.

