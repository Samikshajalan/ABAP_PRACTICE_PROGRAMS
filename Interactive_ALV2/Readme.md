# SAP ABAP - Interactive ALV Report with Header, Footer & Logo

1) Overview
This repository contains an enhanced **Interactive ALV Grid Report** (`ZSAMIKSHA_INTERACTIVEALV`) developed in SAP ABAP using modularization techniques (**INCLUDES**). 
In addition to interactive drill-down navigation, this report incorporates custom page header formatting—including **System Client, Username, Date, Time, and Company Logo**—along with structured page footers for a production-ready output layout.

2) Project Structure
* **Main Program:** `ZSAMIKSHA_INTERACTIVEALV.abap`
* **Include Programs:**
  * `ZINTERACTIVEALV1_TOP` - Data declarations, internal tables, type-pools (`SLIS`), and Field Catalog structure definitions.
  * `ZINTERACTIVEALV1_FORM` - Subroutines for data retrieval (`GETDATA`), field catalog construction (`FIELDCAT`), ALV event handling (`EVENT`), grid display (`DISPLAY`), and interactive user commands.

3) Key Features & ABAP Concepts Covered
* **Interactive Drill-Down ALV:** Allows double-clicking a record in the primary ALV grid to display secondary line-item details.
* **Custom Page Header & Logo:** Integrated `TOP-OF-PAGE` event to render system parameters (`SY-MANDT`, `SY-UNAME`, `SY-DATUM`, `SY-UZEIT`) with color formatting and dynamic header elements/logo.
* **Page Footer Formatting:** Implemented `END-OF-PAGE` event for custom footer text.
* **Field Catalog Customization:** Configured column titles, data alignment, key fields, and hotspot links using `SLIS_T_FIELDCAT_ALV`.
* **Standard ALV Function Modules:** Utilizes `REUSE_ALV_GRID_DISPLAY` with callback routines (`USER_COMMAND`, `TOP_OF_PAGE`).

4) How to Run
1. Open T-Code **SE38** in your SAP system.
2. Create the main program `ZSAMIKSHA_INTERACTIVEALV` and associated includes (`ZINTERACTIVEALV1_TOP` and `ZINTERACTIVEALV1_FORM`).
3. Copy and paste the respective ABAP code snippets into each file.
4. Activate all objects (`Ctrl + F3`) and Execute (`F8`).
