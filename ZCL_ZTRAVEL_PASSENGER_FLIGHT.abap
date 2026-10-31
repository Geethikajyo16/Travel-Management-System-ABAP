CLASS zcl_ztravel_passenger_flight DEFINITION
  PUBLIC
  INHERITING FROM zcl_ztravel_flight
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS constructor
      IMPORTING
        iv_carrier_id    TYPE /dmo/carrier_id
        iv_connection_id TYPE /dmo/connection_id
        iv_seat_capacity TYPE i
      RAISING
        zcx_ztravel_no_connection.

    METHODS get_seat_capacity
      RETURNING VALUE(rv_seat_capacity) TYPE i.

  PRIVATE SECTION.
    DATA mv_seat_capacity TYPE i.
ENDCLASS.

CLASS zcl_ztravel_passenger_flight IMPLEMENTATION.
  METHOD constructor.
    super->constructor(
      iv_carrier_id    = iv_carrier_id
      iv_connection_id = iv_connection_id ).

    mv_seat_capacity = iv_seat_capacity.
  ENDMETHOD.

  METHOD get_seat_capacity.
    rv_seat_capacity = mv_seat_capacity.
  ENDMETHOD.
ENDCLASS.
