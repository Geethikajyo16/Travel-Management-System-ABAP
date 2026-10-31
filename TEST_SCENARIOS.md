# Test Scenarios

| No. | Scenario | Expected result |
|---|---|---|
| 1 | Run `ZR_ZTRAVEL_CONNECTIONS` | Up to 20 connection rows are displayed, or a no-data message appears. |
| 2 | Instantiate `ZCL_ZTRAVEL_FLIGHT` with a valid carrier and connection | Constructor completes and connection data can be retrieved. |
| 3 | Instantiate with an invalid connection | The custom exception is raised. |
| 4 | Instantiate passenger-flight subclass | Superclass constructor runs and seat count is stored. |
| 5 | Create a Travel entity through the RAP service | A new travel record is created. |
| 6 | Check a newly created Travel record | Determination initializes status to `N`. |
| 7 | Update a Travel entity | Changed values are saved. |
| 8 | Delete a Travel entity | The record is removed, subject to authorization and draft state. |
| 9 | Edit a draft and activate it | Draft changes become active data. |
| 10 | Test access as different users | Only records allowed by the configured DCL/authorization design are visible. |

Record your actual SAP release, test data and results in this file after testing. Do not claim a test passed until you have run it in your own system.
