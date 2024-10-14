       >> SOURCE FORMAT FREE
ID DIVISION.
       PROGRAM-ID. coboltut14.
       AUTHOR. Greg.
       DATE-WRITTEN. OCTOBER 14, 2024.

ENVIRONMENT DIVISION.

DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 Table1.
            02 Friend PIC X(10) OCCURS 4 TIMES.
        01 CustomerTable.
            02 CustName OCCURS 5 TIMES.
                03 FName PIC X(10).
                03 LName PIC X(10).
        01 OrderTable.
            02 Product OCCURS 2 TIMES INDEXED BY I.
                03 ProdName PIC X(10).
                03 ProdSize OCCURS 3 TIMES INDEXED BY J.
                    04 SizeType PIC A.

PROCEDURE DIVISION.
    *> Indexes start at 1
    MOVE 'Ray' to Friend(1).
    MOVE 'Randy' to Friend(2).
    MOVE 'Chris' to Friend(3).
    MOVE 'Rick' to Friend(4).
    DISPLAY Friend(4) " - should be Rick"
    DISPLAY Table1.

    DISPLAY " ".

    MOVE "Denise" TO FName(1).
    MOVE "Bartik" TO LName(1).
    MOVE "Patricia" TO FName(2).
    MOVE "Miller" TO LName(2).
    DISPLAY CustomerTable.

    DISPLAY " ".

    SET I J TO 1.
    MOVE 'Blue Shirt' TO Product(I).
    MOVE 'S' TO ProdSize(I,J);
    SET J UP BY 1.
    MOVE 'M' TO ProdSize(I,J).
    SET J DOWN BY 1.
    MOVE 'Blue ShirtSMLRed  ShirtSML' TO OrderTable.
    PERFORM GetProduct VARYING I FROM 1 BY 1 UNTIL I > 2.
    GO TO LookUp.

    GetProduct.
        DISPLAY PRODUCT(I).
        PERFORM GetSizes VARYING J FROM 1 BY 1 UNTIL J > 3.

    GetSizes.
        DISPLAY ProdSize(I,J).

    LookUp.
        SET I TO 1.
        SEARCH Product
            AT END DISPLAY "Product not found"
            WHEN ProdName(I) = "Red  Shirt"
                DISPLAY "Red Shirt Found"
        END-SEARCH.

    STOP RUN.
