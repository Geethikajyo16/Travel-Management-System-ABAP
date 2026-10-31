# Travel Management System – SAP ABAP / S/4HANA / RAP

A GitHub-ready **learning project template** demonstrating ABAP Objects, Open SQL, internal tables and a managed RAP Travel business object.

## Project contents

```text
Travel_Management_System_ABAP/
├── README.md
├── .gitignore
├── docs/
│   ├── PROJECT_OVERVIEW.md
│   ├── OBJECT_CREATION_GUIDE.md
│   └── TEST_SCENARIOS.md
└── src/
    ├── abap/
    │   ├── ZCL_ZTRAVEL_FLIGHT.abap
    │   ├── ZCL_ZTRAVEL_PASSENGER_FLIGHT.abap
    │   ├── ZCX_ZTRAVEL_NO_CONNECTION.abap
    │   └── ZR_ZTRAVEL_CONNECTIONS.abap
    └── rap/
        ├── ZTRAVEL_ROOT_TABLE.ddls.asddls
        ├── ZR_ZTRAVEL.ddls.asddls
        ├── ZR_ZTRAVEL.bdef.asbdef
        ├── ZBP_R_ZTRAVEL.abap
        ├── ZC_ZTRAVEL_AUTH.dcls.asdcls
        └── ZUI_ZTRAVEL.srvd.srvdsrv
```

## Important implementation notes

- These are **separate source files for GitHub and learning**. They are not a ready-to-import SAP transport.
- Create the repository objects in an SAP S/4HANA system using Eclipse ADT, then paste/adapt each source file into the corresponding repository object.
- The examples use SAP flight-demo objects in the `/DMO/` namespace (for example `/DMO/CONNECTION`). They are available only in systems where the SAP flight reference model is installed.
- The RAP sample uses a custom table and a managed business object. Draft-table generation and administrative fields can vary by ABAP platform release. Follow the ADT quick fixes/generation for your release and verify activation.
- The sample CDS role is illustrative. `$session.user` is not automatically an agency ID in every system. Replace it with a real authorization mapping or DCL condition appropriate to your application.
- Keep credentials, system URLs, customer data and screenshots containing sensitive information out of GitHub.

## Suggested GitHub repository description

**Travel Management System developed with SAP ABAP, S/4HANA, Eclipse ADT, ABAP Objects, Open SQL and RAP. Demonstrates flight-connection retrieval, inheritance, exception handling, managed CRUD, determination, draft concepts and CDS access control.**

## Suggested GitHub topics

`sap-abap` `abap-objects` `sap-s4hana` `rap` `cds-views` `open-sql` `eclipse-adt`

## How to upload

1. Download and extract `Travel_Management_System_ABAP.zip`.
2. Create a new GitHub repository, for example `travel-management-system-abap`.
3. Upload the extracted folder contents (keep the folder structure).
4. Commit with a message such as `Add Travel Management System ABAP project`.
5. Update this README after you activate and test the objects in your own SAP system.
