01  WS-AREA.
    05  WS-VALUE PIC 9(5) VALUE 0.
    05  WS-FLAG PIC X VALUE 'N'.
    05  WS-COUNTER PIC 9(3) VALUE 0.

PROCEDURE DIVISION.

    PERFORM 100-INITIALIZE.
    PERFORM 200-PROCESS-DATA.
    PERFORM 300-TERMINATE.

100-INITIALIZE SECTION.
    MOVE ZEROS TO WS-VALUE
    MOVE 'Y' TO WS-FLAG

200-PROCESS-DATA SECTION.
    IF WS-FLAG = 'Y' THEN 
        ADD 1 TO WS-VALUE
        ADD 1 TO WS-COUNTER
        DISPLAY WS-VALUE
        IF WS-COUNTER > 5 THEN
            MOVE 'N' TO WS-FLAG
        END-IF
    ELSE
        DISPLAY 'End of Process'
    END-IF

300-TERMINATE SECTION.
    STOP RUN.