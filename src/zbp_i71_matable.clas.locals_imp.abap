CLASS lhc_zi71_matable DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR zi71_matable RESULT result.

ENDCLASS.

CLASS lhc_zi71_matable IMPLEMENTATION.

  METHOD get_instance_features.

*    READ ENTITIES OF zi71_matable IN LOCAL MODE
*      ENTITY zi71_matable
*      FIELDS ( Deactivate )
*      WITH CORRESPONDING #( keys )
*      RESULT DATA(lt_data).
*
*    result = VALUE #(
*      FOR ls_data IN lt_data
*      (
*        %tky = ls_data-%tky
*
*        %field-Bukrs =
*         COND #(
*            WHEN ls_data-Deactivate = abap_true
*            THEN if_abap_behv=>fc-f-read_only
*            ELSE if_abap_behv=>fc-f-unrestricted )
*
*        %field-Name =
*          COND #(
*            WHEN ls_data-Deactivate = abap_true
*            THEN if_abap_behv=>fc-f-read_only
*            ELSE if_abap_behv=>fc-f-unrestricted )
*
*        %field-Age =
*          COND #(
*            WHEN ls_data-Deactivate = abap_true
*            THEN if_abap_behv=>fc-f-read_only
*            ELSE if_abap_behv=>fc-f-unrestricted )
*
*        %field-Job =
*          COND #(
*            WHEN ls_data-Deactivate = abap_true
*            THEN if_abap_behv=>fc-f-read_only
*            ELSE if_abap_behv=>fc-f-unrestricted )
*
*        %field-Salary =
*          COND #(
*            WHEN ls_data-Deactivate = abap_true
*            THEN if_abap_behv=>fc-f-read_only
*            ELSE if_abap_behv=>fc-f-unrestricted )
*
*        %field-Currency =
*          COND #(
*            WHEN ls_data-Deactivate = abap_true
*            THEN if_abap_behv=>fc-f-read_only
*            ELSE if_abap_behv=>fc-f-unrestricted )
*
*        %field-Deactivate =
*          COND #(
*            WHEN ls_data-Deactivate = abap_true
*            THEN if_abap_behv=>fc-f-read_only
*            ELSE if_abap_behv=>fc-f-unrestricted )
*      )
*    ).


    READ ENTITIES OF zi71_matable IN LOCAL MODE
      ENTITY zi71_matable
      FIELDS ( Deactivate )
      WITH CORRESPONDING #( keys )
      RESULT DATA(lt_data).

    result = VALUE #(
      FOR ls_data IN lt_data
      (
        %tky = ls_data-%tky

        %features-%update =
          COND #(
            WHEN ls_data-Deactivate = 'X'
            THEN if_abap_behv=>fc-o-disabled
            ELSE if_abap_behv=>fc-o-enabled
          )
      )
    ).

  ENDMETHOD.

ENDCLASS.
