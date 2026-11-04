CLASS LHC_ZR_FT04_CUSTOMERS DEFINITION INHERITING FROM CL_ABAP_BEHAVIOR_HANDLER.
  PRIVATE SECTION.
    METHODS:
      GET_GLOBAL_AUTHORIZATIONS FOR GLOBAL AUTHORIZATION
        IMPORTING
           REQUEST requested_authorizations FOR Customer
        RESULT result,
      setCity FOR DETERMINE ON SAVE
            keys FOR Customer~setCity.
ENDCLASS.

CLASS LHC_ZR_FT04_CUSTOMERS IMPLEMENTATION.
  METHOD GET_GLOBAL_AUTHORIZATIONS.
  ENDMETHOD.
  METHOD setCity.
  READ ENTITIES OF zr_ft04_customers IN LOCAL MODE
    ENTITY Customer
      FIELDS ( Country Postcode )
      WITH CORRESPONDING #( keys )
    RESULT DATA(customers).
  DATA updates TYPE TABLE FOR UPDATE zr_ft04_customers.

  LOOP AT customers INTO DATA(customer).
    SELECT SINGLE city
      FROM zft04_postcodes
      WHERE country  = @customer-Country
        AND postcode = @customer-Postcode
      INTO @DATA(lv_city).
    IF sy-subrc <> 0.
      CLEAR lv_city.
    ENDIF.
    APPEND VALUE #( %tky = customer-%tky
                    City = lv_city ) TO updates.
  ENDLOOP.

  MODIFY ENTITIES OF zr_ft04_customers IN LOCAL MODE
    ENTITY Customer
      UPDATE FIELDS ( City )
      WITH updates.
ENDMETHOD.

ENDCLASS.
