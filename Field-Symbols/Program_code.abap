REPORT Z_SAMIKSHA_FIELDSYMBOL NO STANDARD PAGE HEADING.

TABLES: ZSAMIKSHA1.

TYPES: BEGIN OF TY_STR,
       ROLL_NO TYPE ZROLLNO,
       FNAME TYPE ZFNAME,
       CITY TYPE ZCITY,
       END OF TY_STR.

FIELD-SYMBOLS <FS> TYPE TY_STR.
"DECLARATION PART, field symbol does not having own data just pointing variable.

 DATA: IT TYPE TABLE OF TY_STR,
       WA TYPE TY_STR.

WRITE:/  'ROLL'  COLOR 5,
        AT 12 'FNAME' COLOR 5,
        AT 35 'CITY'  COLOR 6.
ULINE.

SELECT ROLL_NO FNAME CITY
FROM ZSAMIKSHA1 INTO WA.

 ASSIGN WA TO <FS>.
 "ASSIGNING PART, here field sysmbol start working, it points wa memory location

WRITE:/  <FS>-ROLL_NO,
          AT 12 <FS>-FNAME,
          AT 35 <FS>-CITY.
"here fs printed because it is pointing towards wa.
ENDSELECT.
"this loop display records until all record ends.
