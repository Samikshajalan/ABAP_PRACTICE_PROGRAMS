# SAP ABAP - SmartForms Driver Program

## Overview
This repository contains a **SmartForm Driver Program** (`ZSAMIKSHA_SMARTFORM`) written in SAP ABAP. The program retrieves custom employee details, bank information, and sales document line-item records from standard/custom SAP tables and passes them to a dynamic SmartForm layout (`ZFORM_S`).

## Technical Details
* **Driver Program Name:** `ZSAMIKSHA_SMARTFORM`
* **SmartForm Name:** `ZFORM_S`
* **Tables Used:**
  * `ZEMPLOYEE` - Custom table for Employee Master Data
  * `VBAP` - Standard table for Sales Document Item Data
  * `BNKA` - Standard table for Bank Master Data

## Key ABAP Concepts Covered
1. **Dynamic Function Module Call:** 
   * Uses standard Function Module `SSF_FUNCTION_MODULE_NAME` to dynamically retrieve the generated Function Module name (`FM_NAME`) for SmartForm `ZFORM_S`.
2. **Data Selection & Retrieval:**
   * Fetches single header record using `SELECT SINGLE` based on selection-screen input (`SELECT-OPTIONS`).
   * Fetches line-item records into an internal table using `UP TO 5 ROWS`.
3. **Data Transfer to SmartForm:**
   * Passes scalar parameters (`EMPID`, `EMPNAME`, `MOBILE`, `SALARY`, `BANKS`, `BANKL`, `ERDAT`) via `EXPORTING`.
   * Passes internal table (`ITV`) via `TABLES` parameter.

## Execution Flow
1. User provides `N_EMPID` on the Selection Screen.
2. Program fetches corresponding employee details, bank info, and top 5 VBAP item records.
3. System fetches the generated FM name for `ZFORM_S`.
4. SmartForm FM is executed dynamically, passing all header and table parameters to display/print the SmartForm layout.

## How to Run
1. Create the SmartForm **`ZFORM_S`** via T-Code **SMARTFORMS** and define the corresponding Form Interface parameters.
2. Open T-Code **SE38**, create executable program `ZSAMIKSHA_SMARTFORM`, and paste the ABAP driver code.
3. Activate (`Ctrl + F3`) and Execute (`F8`).
