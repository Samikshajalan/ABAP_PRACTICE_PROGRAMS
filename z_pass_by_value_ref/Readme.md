# SAP ABAP - Pass by Value vs Pass by Reference in Subroutines

1) Overview
This repository contains an ABAP program demonstrating modularization using **Subroutines (`FORM` / `PERFORM`)** and highlighting the core differences between **Pass by Value** and **Pass by Reference** parameter passing techniques.

2) Key Concepts Covered

### 1. Pass by Reference (Default Behavior)
* **Syntax:** `FORM sub_name USING p_var` / `CHANGING p_var`
* **Behavior:** The memory address (pointer) of the actual parameter is passed to the formal parameter.
* **Impact:** Any modification inside the subroutine directly alters the original variable in the calling program immediately.

### 2. Pass by Value
* **Syntax:** `FORM sub_name USING VALUE(p_var)`
* **Behavior:** A local copy of the parameter is created in memory when entering the subroutine.
* **Impact:** Changes made inside the subroutine affect only the local copy and do not modify the original variable.

### 3. Pass by Value and Result
* **Syntax:** `FORM sub_name CHANGING VALUE(p_var)`
* **Behavior:** A local copy is modified during execution and copied back to the original variable only upon successful completion (`ENDFORM`) of the subroutine.

3) Program Structure
* **Program Name:** `z_pass_by_value_ref.abap`
* **Mechanisms Used:** `PERFORM`, `FORM`, `USING`, `CHANGING`, `VALUE()`

4) How to Run
1. Open T-Code **SE38** in your SAP GUI.
2. Create an Executable Program `z_pass_by_value_ref`.
3. Paste the ABAP code, Activate (`Ctrl + F3`), and Execute (`F8`).
