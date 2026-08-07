# SAP ABAP - Dynamic ALV Report with Radiobutton Selection

## Overview
This repository contains a **Classical ALV Report** (`ZCLASSICAL_ALV`) developed in SAP ABAP. It dynamically switches between displaying Vendor Master Data (`LFA1`) in **ALV Grid Display** and Purchase Order Header Data (`EKKO`) in **ALV List Display** based on the user's Radiobutton selection.

## Technical Details
* **Program Name:** `ZCLASSICAL_ALV`
* **Tables Used:**
  * `LFA1` - Vendor Master Data
  * `EKKO` - Purchasing Document Header Data
* **Dictionary Structures:**
  * `ZLFA1_TABLE` - Structure for Vendor Details
  * `ZEKKO_TABLE` - Structure for Purchase Order Details

## Key ABAP Concepts Covered
1. **Radiobutton Grouping (`RADIOBUTTON GROUP`):**
   * Allows the user to toggle output view between Vendor Details (`IT1TABLE`) and Purchase Orders (`IT2TABLE`).
2. **Optimized SQL Query (`FOR ALL ENTRIES`):**
   * Efficiently fetches Purchase Order details from `EKKO` by referencing the non-empty Vendor internal table (`IT1`).
3. **Dynamic ALV Display:**
   * **Grid View:** Uses `REUSE_ALV_GRID_DISPLAY` to display `LFA1` vendor data.
   * **List View:** Uses `REUSE_ALV_LIST_DISPLAY` to display `EKKO` purchase order data.
   * Utilizes Dictionary Structures (`I_STRUCTURE_NAME`) for automatic field catalog generation.

## Program Flow
1. User enters Vendor Code (`S_LIFNR`) or Created Date (`S_AEDAT`) ranges and selects the desired output radiobutton.
2. The program fetches data into `IT1` from `LFA1`.
3. If `IT1` contains records, it performs a `FOR ALL ENTRIES` query on `EKKO` to populate `IT2`.
4. Based on the active radiobutton:
   * **Radiobutton 1:** Renders Vendor Grid View.
   * **Radiobutton 2:** Renders Purchase Order List View.

## How to Run
1. Ensure DDIC Structures **`ZLFA1_TABLE`** and **`ZEKKO_TABLE`** are created in **SE11**.
2. Create an Executable Program **`ZCLASSICAL_ALV`** in **SE38**.
3. Paste the code, Activate (`Ctrl + F3`), and Execute (`F8`).
