# SAP ABAP - Modularized Interactive ALV Report

1) Overview
This repository contains a **Modularized Interactive ALV (ABAP List Viewer) Report** (`Y_SAMIKSHA_ALV_INTERACTIVE`). It combines ALV Grid Display capabilities with interactive drill-down functionality, allowing users to view summary data in a grid and double-click records to view detailed line items.

2) Project Structure
* Main Program:** `Y_SAMIKSHA_ALV_INTERACTIVE.abap`
* Include Programs:**
  - `ZINTERACTIVE_TOP_ALV` - Data declarations, internal tables, work areas, type pools (`SLIS`), and Field Catalog structure definitions.
  - `ZINTERACTIVE_FORM_ALV` - Subroutines for data fetching (`GETDATA`), field catalog construction (`FIELDCAT`), ALV event handling (`EVENT`), display logic (`DISPLAY`), and interactive callback routines (`USER_COMMAND`).

3) Key ABAP Concepts & ALV Components Covered
* **Modularization:** Clean separation of program components using **INCLUDES**.
* **Field Catalog (`SLIS_T_FIELDCAT_ALV`):** Manual/automatic definition of column attributes (labels, formatting, key fields, hotspot attributes).
* **ALV Function Modules:** Usage of standard Function Modules such as `REUSE_ALV_GRID_DISPLAY`.
* **ALV Events & Interactive Handling:**
  * **`USER_COMMAND` Callback Routine:** Captures user actions like double-clicking a grid row (`&IC1`) to trigger secondary drill-down ALV output.
  * **`PF_STATUS_SET` Callback Routine:** Customizes GUI status and toolbar buttons for ALV interface.

4) How to Run
1. Open T-Code **SE38** in your SAP GUI.
2. Create the main program `Y_SAMIKSHA_ALV_INTERACTIVE` along with the include files (`ZINTERACTIVE_TOP_ALV` and `ZINTERACTIVE_FORM_ALV`).
3. Paste the corresponding ABAP code into each file.
4. Activate all objects (`Ctrl + F3`) and Execute (`F8`).
