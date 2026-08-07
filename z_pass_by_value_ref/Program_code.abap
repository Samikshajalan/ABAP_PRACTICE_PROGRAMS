REPORT Z_SAMIKSHA_PARAMETER1 NO STANDARD PAGE HEADING.

DATA: A TYPE I VALUE 100,
            B TYPE I VALUE 200,
            C TYPE I." A TYPE I

*A = 10.
*B = 20.

PERFORM ADD USING A B C.
C = A + B.
WRITE:/ 'A',A,
         /'B',B,
         /'C',C.

*----------------------------------------------------------------------*
FORM ADD  USING  value(x) value(y) value(z)." USING X Y Z.
  ULINE.
  X = 10.
  Y = 20.
  Z = X + Y.

WRITE:/ 'X',X,
         /'Y',Y,
         /'Z',Z.
ULINE.
ENDFORM.
"IF FORM ADD CHANGES AND UPPER CHANGES ARE SAME THEN IT IS CALLED AS PASS BY REFERENCE
"IF FORM ADD CHANGES AND UPPER CHANGES ARE NOT SAME THEN IT IS CALLED AS PASS BY VALUE.
