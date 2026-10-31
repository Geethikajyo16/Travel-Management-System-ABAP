CLASS lhc_Travel DEFINITION
  INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.
    METHODS setInitialStatus
      FOR DETERMINE ON MODIFY
      IMPORTING keys FOR Travel~setInitialStatus.
ENDCLASS.

CLASS lhc_Travel IMPLEMENTATION.
  METHOD setInitialStatus.

    READ ENTITIES OF ZR_ZTRAVEL IN LOCAL MODE
      ENTITY Travel
      FIELDS ( Status )
      WITH CORRESPONDING #( keys )
      RESULT DATA(lt_travel).

    MODIFY ENTITIES OF ZR_ZTRAVEL IN LOCAL MODE
      ENTITY Travel
      UPDATE FIELDS ( Status )
      WITH VALUE #(
        FOR ls_travel IN lt_travel
          ( %tky   = ls_travel-%tky
            Status = 'N' ) ).

  ENDMETHOD.
ENDCLASS.

"Create the behavior pool using ADT's RAP wizard/generator.
"Keep the generated global behavior-pool class and any saver/authorization
"methods required by your ABAP release. Add this local handler implementation
"to the generated behavior pool rather than replacing generated boilerplate.
