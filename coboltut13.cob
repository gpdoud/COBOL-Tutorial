       >> SOURCE FORMAT FREE
ID DIVISION.
       PROGRAM-ID. coboltut13.
       AUTHOR. Greg.
       DATE-WRITTEN. OCTOBER 13, 2024.

ENVIRONMENT DIVISION.
    INPUT-OUTPUT SECTION.
    FILE-CONTROL.
        SELECT CustomerFile ASSIGN to "customer.txt"
            ORGANIZATION IS INDEXED
            ACCESS MODE IS RANDOM
            RECORD KEY IS IDNum.

DATA DIVISION.
    FILE SECTION.
        FD CustomerFile.
        01 CustomerData.
            02 IDNum PIC 99.
            02 FirstName PIC X(15).
            02 LastName PIC X(15).
    WORKING-STORAGE SECTION.
        01 Choice PIC 9.
        01 StayOpen PIC X VALUE 'Y'.
        01 CustExists PIC X.

PROCEDURE DIVISION.
    StartPara.
        OPEN I-O CustomerFile.
        PERFORM UNTIL StayOpen = 'N'
            DISPLAY " "
            DISPLAY "CUSTOMER RECORDS"
            DISPLAY "1 : Add Customer"
            DISPLAY "2 : Delete Customer"
            DISPLAY "3 : Update Customer"
            DISPLAY "4 : Get Customer"
            DISPLAY "0 : Quit"
            DISPLAY ": " WITH NO ADVANCING
            ACCEPT Choice

            EVALUATE Choice
                WHEN 1 PERFORM AddCust
                WHEN 2 PERFORM DeleteCust
                WHEN 3 PERFORM UpdateCust
                WHEN 4 PERFORM GetCust
                WHEN OTHER MOVE 'N' TO StayOpen
            END-EVALUATE
        END-PERFORM.

        CLOSE CustomerFile.
        STOP RUN.

    AddCust.
        DISPLAY " "
        DISPLAY "Enter ID : " WITH NO ADVANCING
        ACCEPT IDNum
        DISPLAY "Enter First Name : " WITH NO ADVANCING
        ACCEPT FirstName
        DISPLAY "Enter Last Name : " WITH NO ADVANCING
        ACCEPT LastName
        DISPLAY " "
        WRITE CustomerData
            INVALID KEY DISPLAY "ID Taken"
        END-WRITE.

    DeleteCust.
        DISPLAY " "
        DISPLAY "Enter ID to delete : " WITH NO ADVANCING
        ACCEPT IDNum
        DELETE CustomerFile
            INVALID KEY DISPLAY "Key Doesn't Exist"
        END-DELETE.


    UpdateCust.
        MOVE 'Y' TO CustExists
        DISPLAY " "
        DISPLAY "Enter ID to update : " WITH NO ADVANCING
        ACCEPT IDNum
        READ CustomerFile   
            INVALID KEY MOVE 'N' TO CustExists
        END-READ.
        IF CustExists = 'N' THEN
            DISPLAY "Customer does not exist!"
        ELSE
            DISPLAY "Enter the new First Name : " WITH NO ADVANCING
            ACCEPT FirstName
            DISPLAY "Enter the new Last Name : " WITH NO ADVANCING
            ACCEPT LastName
        END-IF.
        REWRITE CustomerData
            INVALID KEY DISPLAY "Customer was not updated!"
        END-REWRITE.

    GetCust.
        MOVE 'Y' TO CustExists
        DISPLAY " "
        DISPLAY "Enter ID to get : " WITH NO ADVANCING
        ACCEPT IDNum
        READ CustomerFile   
            INVALID KEY MOVE 'N' TO CustExists
        END-READ.
        IF CustExists = 'N'
            DISPLAY "Customer does not exist!"
        ELSE
            DISPLAY "ID : " IDNum
            DISPLAY "First Name : " FirstName
            DISPLAY "Last Name : " LastName
        END-IF.

