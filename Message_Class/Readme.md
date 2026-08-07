# SAP ABAP - Message Class & Message Handling

## Overview
This repository contains an ABAP program demonstrating how to create and trigger custom messages using a **Message Class** in SAP. It covers displaying different message types (Information, Success, Warning, and Error) with static and dynamic variables.

## Technical Details
* **Program Name:** `z_message_class_demo.abap`
* **Message Class T-Code:** `SE91`
* **Message Class Name:** `ZMSG_CLASS` *(तुमच्या Message Class चे नाव इथे लिहा)*

## Key ABAP Concepts Covered
1. **Message Class Definition (`MESSAGE-ID`):**
   * Linking the program to a specific Message Class via the `REPORT` statement (`REPORT z_demo MESSAGE-ID zmsg_class.`).
2. **Message Types:**
   * **`S` (Success):** Displays a success message in the status bar.
   * **`I` (Information):** Displays a popup dialog with information.
   * **`W` (Warning):** Displays a warning message allowing the user to proceed.
   * **`E` (Error):** Blocks execution on selection screen until valid input is entered.
3. **Dynamic Placeholders (`&1`, `&2`):**
   * Passing dynamic variables/values into message placeholders using the `WITH` keyword (`MESSAGE e001(zmsg_class) WITH p_emp.`).

## Execution Flow
1. Program accepts input from the Selection Screen.
2. Performs validation checks on the user input.
3. Triggers appropriate messages (`MESSAGE` statement) based on validation logic to provide user feedback.

## How to Run
1. Go to T-Code **SE91** and create Message Class `ZMSG_CLASS` with message numbers (e.g., `000`, `001`).
2. Open T-Code **SE38**, create executable program `z_message_class_demo`, and paste the ABAP code.
3. Activate (`Ctrl + F3`) and Execute (`F8`).
