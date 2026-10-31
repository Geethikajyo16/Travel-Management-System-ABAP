REPORT zr_ztravel_connections.

PARAMETERS p_rows TYPE i DEFAULT 20.

TYPES:
  BEGIN OF ty_connection,
    carrier_id       TYPE /dmo/carrier_id,
    connection_id    TYPE /dmo/connection_id,
    airport_from_id  TYPE /dmo/airport_from_id,
    airport_to_id    TYPE /dmo/airport_to_id,
  END OF ty_connection.

DATA lt_connections TYPE STANDARD TABLE OF ty_connection WITH EMPTY KEY.

START-OF-SELECTION.
  SELECT FROM /dmo/connection
    FIELDS carrier_id,
           connection_id,
           airport_from_id,
           airport_to_id
    INTO TABLE @lt_connections
    UP TO @p_rows ROWS.

  IF lt_connections IS INITIAL.
    WRITE: / 'No flight connections found.'.
    RETURN.
  ENDIF.

  LOOP AT lt_connections INTO DATA(ls_connection).
    WRITE: / ls_connection-carrier_id,
             ls_connection-connection_id,
             ls_connection-airport_from_id,
             ls_connection-airport_to_id.
  ENDLOOP.
