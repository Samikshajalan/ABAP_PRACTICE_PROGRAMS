# SAP Script Layout with Company Logo Integration

# Description
This repository contains the SAP Script layout form and driver program details developed for custom business forms (e.g., Invoice / Purchase Order). It also covers company logo integration using transaction **SE78**.

# Key Features & Transactions Used
* **SE71 (SAPScript Layout):** Designed custom layout pages, windows, and text elements.
* **SE78 (Graphics Management):** Uploaded and managed BMP company logo graphics in the SAP system.
* **SE38 (Driver Program):** ABAP driver program to fetch data and trigger the SAPScript form.

# Technical Implementation
1. **Logo Upload (SE78):** Uploaded company logo as a BMAP (Black/White or Color) bitmap image under `BMP Graphics -> General Graphics`.
2. **Layout Design (SE71):** Included the logo in the header window using the `INCLUDE` command:
   ```sapscript
   /: INCLUDE Z_COMPANY_LOGO OBJECT GRAPHICS ID BMAP TYPE BCOL
