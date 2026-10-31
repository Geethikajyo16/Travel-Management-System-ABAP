CLASS zcl_ztravel_flight DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS constructor
      IMPORTING
        iv_carrier_id    TYPE /dmo/carrier_id
        iv_connection_id TYPE /dmo/connection_id
      RAISING
        zcx_ztravel_no_connection.

    METHODS get_connection_details
      RETURNING VALUE(rs_connection) TYPE /dmo/connection
      RAISING zcx_ztravel_no_connection.

  PROTECTED SECTION.
    DATA mv_carrier_id    TYPE /dmo/carrier_id.
    DATA mv_connection_id TYPE /dmo/connection_id.
ENDCLASS.

CLASS zcl_ztravel_flight IMPLEMENTATION.
  METHOD constructor.
    mv_carrier_id    = iv_carrier_id.
    mv_connection_id = iv_connection_id.

    "Validate the connection during object creation.
    SELECT SINGLE FROM /dmo/connection
      FIELDS *
      WHERE carrier_id    = @mv_carrier_id
        AND connection_id = @mv_connection_id
      INTO @DATA(ls_connection).

    IF sy-subrc <> 0.
      RAISE EXCEPTION TYPE zcx_ztravel_no_connection.
    ENDIF.
  ENDMETHOD.

  METHOD get_connection_details.
    SELECT SINGLE FROM /dmo/connection
      FIELDS *
      WHERE carrier_id    = @mv_carrier_id
        AND connection_id = @mv_connection_id
      INTO @rs_connection.

    IF sy-subrc <> 0.
      RAISE EXCEPTION TYPE zcx_ztravel_no_connection.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
