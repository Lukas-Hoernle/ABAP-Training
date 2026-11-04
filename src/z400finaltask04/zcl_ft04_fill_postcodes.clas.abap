CLASS zcl_ft04_fill_postcodes DEFINITION
  PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.

CLASS zcl_ft04_fill_postcodes IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA lt_post TYPE STANDARD TABLE OF zft04_postcodes WITH DEFAULT KEY.

    lt_post = VALUE #(
      ( country = 'DE' postcode = '76227' city = 'Karlsruhe' )
      ( country = 'DE' postcode = '70173' city = 'Stuttgart' )
      ( country = 'DE' postcode = '10115' city = 'Berlin' )
      ( country = 'DE' postcode = '80331' city = 'München' )
      ( country = 'DE' postcode = '20095' city = 'Hamburg' )
      ( country = 'DE' postcode = '50667' city = 'Köln' )
      ( country = 'DE' postcode = '60311' city = 'Frankfurt am Main' )
      ( country = 'AT' postcode = '1010'  city = 'Wien' )
      ( country = 'CH' postcode = '8001'  city = 'Zürich' )
    ).

    DELETE FROM zft04_postcodes.
    INSERT zft04_postcodes FROM TABLE @lt_post.
    out->write( |{ sy-dbcnt } Einträge angelegt| ).
  ENDMETHOD.
ENDCLASS.
