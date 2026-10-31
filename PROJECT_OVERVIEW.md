# Project Overview

## Objective
Develop a Travel Management application to maintain travel and flight-related information using SAP ABAP and modern S/4HANA development concepts.

## Technology
- SAP ABAP
- SAP S/4HANA
- Eclipse ADT
- ABAP Objects
- Open SQL and internal tables
- Core Data Services (CDS)
- ABAP RESTful Application Programming Model (RAP)

## Features demonstrated
1. Flight connection retrieval using Open SQL.
2. ABAP Objects classes, constructors and methods.
3. Inheritance using a passenger-flight subclass.
4. Exception handling for missing flight connections.
5. A RAP Travel business object with create, update and delete operations.
6. A determination that initializes the travel status.
7. Draft editing and activation (after draft table setup for the target release).
8. CDS access control (illustrative; adapt the authorization mapping).

## Business flow
Flight connection data is selected from the demo connection table and processed by ABAP classes. Travel records are maintained through a RAP business object and exposed through an OData V4 service.

## Suggested status values
- `N` – New
- `O` – Open
- `C` – Completed
- `X` – Cancelled

Use the same status definitions consistently in the application and tests.
