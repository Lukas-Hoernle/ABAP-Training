CLASS zsd4d400_04_12eml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
*    data: agencies_upd type table for read CHANGES /DMO/I_AgencyTP.
ENDCLASS.



CLASS zsd4d400_04_12eml IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data: agencies_upd type table for update /DMO/I_AgencyTP.

  agencies_upd  =  value #( (  AGENCYID = '070004' Name = 'TEst TEst' ) ).

  modify ENTITIES OF /DMO/I_AgencyTP
                    ENTITY /DMO/Agency
                    UPDATE FIELDS ( Name )
                    with  agencies_upd.
                    COMMIT ENTITIES.

  ENDMETHOD.
ENDCLASS.
