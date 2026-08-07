# SAP ABAP - Modularized Interactive Report

1) Overview
This repository contains an **Interactive Report** (`ZSAMIKSHA_INTERACTIVE`) developed using ABAP Modularization techniques (**INCLUDES**). It demonstrates basic list display with drill-down functionality (secondary list) upon user interaction.

2) Project Structure
* **Main Program:** `ZSAMIKSHA_INTERACTIVE.abap`
* **Include Programs:**
  * `ZINTERACTIVE_TOP1` - Contains Data Declarations, Internal Tables, and Work Areas.
  * `ZINTERACTIVE_FORM1` - Contains Subroutines (`PERFORM` / `FORM`) for fetching data (`GETDATA`), displaying basic/secondary lists (`DISPLAY`), and handling user interaction events (`AT LINE-SELECTION`).

3) Key ABAP Events & Execution Flow
1. **`START-OF-SELECTION`**
   * Calls `GETDATA` subroutine to fetch primary data from SAP database tables.
   * Calls `DISPLAY` subroutine to render the Basic List.
2. **`TOP-OF-PAGE`**
   * Displays formatted page headers including Client (`SY-MANDT`), Username (`SY-UNAME`), Date (`SY-DATUM`), and Time (`SY-UZEIT`) with color codes.
3. **`END-OF-PAGE`**
   * Renders the page footer at the bottom of each list page.
4. **`AT LINE-SELECTION`** *(Defined in Include/Subroutines)*
   * Triggers when a user double-clicks a record on the basic list to display detailed line items on a secondary screen using stored `HIDE` field values.

4) How to Run
1. Open T-Code **SE38** in your SAP system.
2. Create the main program `ZSAMIKSHA_INTERACTIVE` and the associated include programs (`ZINTERACTIVE_TOP1`, `ZINTERACTIVE_FORM1`).
3. Paste the respective ABAP code snippets into each object.
4. Activate all objects (`Ctrl + F3`) and Execute (`F8`).
