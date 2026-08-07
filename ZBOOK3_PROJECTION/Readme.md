# SAP ABAP - Data Retrieval using Projection View

## Overview
This repository contains an ABAP program (`ZBOOK3_PROJECTION`) that demonstrates data selection from a custom **Projection View** (`ZBOOK3_PVIEW`) created in the SAP Data Dictionary (DDIC).

## What is a Projection View?
A **Projection View** in SAP ABAP is used to hide or select specific fields from a single underlying database table. It optimizes data retrieval by projecting only the necessary columns required by the application.

## Technical Details
* **Program Name:** `ZBOOK3_PROJECTION`
* **Dictionary View (SE11):** `ZBOOK3_PVIEW` (Projection View on Book Master Table)
* **Fields Fetched:**
  * `BOOK_ID` - Book Identifier
  * `BOOK_NAME` - Title/Name of the Book
  * `PRICE` - Price of the Book

## Key ABAP Concepts Covered
1. **ABAP Dictionary Integration:** Defining a work area structure (`WA`) directly using a DDIC View type (`TYPE ZBOOK3_PVIEW`).
2. **Data Selection from View:** Retrieving projected fields using standard Open SQL `SELECT` queries.
3. **Looping Output (`SELECT...ENDSELECT`):** Iterating through records and displaying them in formatted columns using `WRITE` statements with explicit position offsets (`/10`, `/30`).

## How to Run
1. Ensure Projection View **`ZBOOK3_PVIEW`** is activated in T-Code **SE11**.
2. Open T-Code **SE38**, create an executable program **`ZBOOK3_PROJECTION`**, and paste the ABAP code.
3. Activate (`Ctrl + F3`) and Execute (`F8`).
