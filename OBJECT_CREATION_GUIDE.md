# Object Creation Guide (Eclipse ADT)

Create objects in this order. The exact wizard labels can vary by ADT and ABAP platform version.

## Classical ABAP objects
1. Create exception class `ZCX_ZTRAVEL_NO_CONNECTION`.
2. Create superclass `ZCL_ZTRAVEL_FLIGHT`.
3. Create subclass `ZCL_ZTRAVEL_PASSENGER_FLIGHT`.
4. Create executable report `ZR_ZTRAVEL_CONNECTIONS`.

## RAP objects
1. Create database table `ZTRAVEL` using the table definition source as a reference. Confirm field types and key definitions for your system.
2. Create root view entity `ZR_ZTRAVEL`.
3. Create a managed behavior definition for `ZR_ZTRAVEL`.
4. Let ADT generate the behavior pool `ZBP_R_ZTRAVEL` and handler skeleton. Add the determination implementation from the behavior-pool file.
5. If draft is enabled, create/generate a compatible draft table for your ABAP release. Use the ADT quick fix/generator and activate it.
6. Create the CDS access-control role and adapt its condition to your authorization model.
7. Create service definition `ZUI_ZTRAVEL`.
8. Create an OData V4 UI service binding, activate it, and publish it.

## Naming
The files use the `ZTRAVEL` prefix. If your training system requires a personal suffix, consistently rename all objects and references (for example, `ZTRAVEL_GXX`).

## Activation
Activate dependencies before dependents. Resolve syntax errors reported by ADT rather than assuming code written for one release is portable to every S/4HANA release.
