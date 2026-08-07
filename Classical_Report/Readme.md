# SAP ABAP - Modularized Classical Report

1) Overview
This repository contains a **Classical Report** (`ZSAMIKSHA_CLASSICAL`) developed using Modularization techniques (**INCLUDES**). It demonstrates standard ABAP report events, selection screen validations, and custom page headers/footers.

2) Project Structure
* Main Program:** `ZSAMIKSHA_CLASSICAL.abap`
* Include Programs:**
  - `ZCLASSICAL_TOP1` - Contains Data Declarations and Selection Screen elements.
  - `ZCLASSICAL_FORM1` - Contains Subroutines (`PERFORM` / `FORM`) for business logic execution.

3) ABAP Events & Execution Flow
1. **`INITIALIZATION`** - Calls `INIT` subroutine to set default values for the selection screen.
2. **`AT SELECTION-SCREEN`** - Calls `VAL` subroutine for input validation on Personnel Number (`N_PERNR`).
3. **`START-OF-SELECTION`** - Calls `GET` subroutine to fetch data from database tables.
4. **`END-OF-SELECTION`** - Calls `DIS` subroutine to display the final output list.
5. **`TOP-OF-PAGE`** - Displays custom header details including System Client (`SY-MANDT`), User (`SY-UNAME`), Date (`SY-DATUM`), and Time (`SY-UZEIT`) with color formatting.
6. **`END-OF-PAGE`** - Displays footer formatting at the end of each page.

4) How to Run
1. Create the Main Program `ZSAMIKSHA_CLASSICAL` in T-Code **SE38**.
2. Create both Include files (`ZCLASSICAL_TOP1` & `ZCLASSICAL_FORM1`).
3. Paste the respective code blocks, Activate all objects (`Ctrl + F3`), and Execute (`F8`).
