REPORT Z_SAMIKSHA_FIELDSYMBOL NO STANDARD PAGE HEADING.

TABLES: ZSAMIKSHA1.

FIELD-SYMBOLS <FS>.
"DECLARATION PART, field symbol does not having own data just pointing variable.

TYPES: BEGIN OF TY_STR,
       ROLL_NO TYPE ZROLLNO,
       FNAME TYPE ZFNAME,
       CITY TYPE ZCITY,
       END OF TY_STR.

 DATA: IT TYPE TABLE OF TY_STR,
       WA TYPE TY_STR.

 WRITE:/ 'ROLL' COLOR 5, 40 'FNAME' COLOR 5,60 'CITY' COLOR 6.

SELECT ROLL_NO FNAME CITY
FROM ZSAMIKSHA1 INTO WA.

 ASSIGN WA TO <FS>.
 "ASSIGNING PART, here field sysmbol start working, it points wa memory location

WRITE:/ <FS>.
"here fs printed because it is pointing towards wa.
ENDSELECT.
"this loop display records until all record ends.
