       01  AUDIT-INPUT-FILE.
           05  N-FIX-LEN-FIELDS.
               10  N-PROC-START-DT             PIC  X(08).
               10  N-PROC-START-TM             PIC  X(04).
               10  N-NASEVG-DIN                PIC  S9(18) COMP.
               10  N-SRC-DIN                   PIC  S9(18) COMP.
               10  N-SRC-SUBJ-ID-NB            PIC  S9(04) COMP.
               10  N-SRC-SUBJ-SEQ-NB           PIC  S9(04) COMP.
               10  N-SRC-REF                   PIC  S9(18) COMP.
               10  N-SRC-NAME                  PIC  X(440).
               10  N-SRC-AIN                   PIC  S9(09) COMP.
               10  N-ADDR-QTY                  PIC  X(01).
                   88  N-HIGH                  VALUE 'H'.
                   88  N-LOW                   VALUE 'L'.
                   88  N-TEXT                  VALUE 'T'.
               10  N-SRC-ADDR-FRMT-CD          PIC  X(02).
               10  N-SRC-ADDR                  PIC  X(440).
               10  N-FORMATTED-ADDR.
                   15  N-SRC-NM                PIC  X(150).
                   15  N-ADDR-LINE1            PIC  X(60).
                   15  N-ADDR-LINE2            PIC  X(60).
                   15  N-ADDR-LINE3            PIC  X(60).
                   15  N-ADDR-LINE4            PIC  X(60).
                   15  N-ADDR-LINE5            PIC  X(60).
                   15  N-ADDR-LINE6            PIC  X(112).
                   15  N-ADDR-LINE7            PIC  X(08).
               10  N-AIN-FROM-NAS              PIC  S9(09) COMP.
               10  N-QTY-FROM-NAS              PIC  X(01).
                   88  N-HIGH-FROM-NAS         VALUE 'H'.
                   88  N-LOW-FROM-NAS          VALUE 'L'.
                   88  N-TEXT-FROM-NAS         VALUE 'T'.
               10  N-AIN-CHANGE-FLAG           PIC  X(01).
                   88  N-AIN-CHANGED           VALUE 'Y'.
                   88  N-NO-AIN-CHANGED        VALUE 'N'.
               10  N-DIN-FOUND-FLAG            PIC  X(01).
                   88  N-DIN-FOUND             VALUE 'Y'.
                   88  N-DIN-NOT-FOUND         VALUE 'N'.
               10  N-ERROR-CODE                PIC  X(04).
                   88  N-ERR-CD-0001           VALUE '0001'.
                   88  N-ERR-CD-0002           VALUE '0002'.
                   88  N-ERR-CD-0003           VALUE '0003'.
                   88  N-ERR-CD-0004           VALUE '0004'.
                   88  N-ERR-CD-0005           VALUE '0005'.
                   88  N-ERR-CD-0006           VALUE '0006'.
               10  N-PROCESS-STG               PIC  X(01).
                   88  N-PRC-STG-EMPTY         VALUE ' '.
                   88  N-ERROR                 VALUE 'E'.
                   88  N-PROCESSED             VALUE 'P'.
                   88  N-AIN-UPDATED           VALUE 'U'.
               10  N-FIELD-INDICATOR           PIC  X(01).
                   88  N-TO-ADDRESS            VALUE 'T'.
                   88  N-FROM-ADDRESS          VALUE 'F'.
                   88  N-POST-STD-AIN          VALUE 'S'.
                   88  N-EMP-AIN               VALUE 'E'.
                   88  N-UPDATE-ALL            VALUE 'A'.
               10  N-DATA-PROVIDER             PIC  X(05).
               10  N-SEQUENCE-NB               PIC  9(06).
               10  N-PIN-COUNT                 PIC  S9(04) COMP.
               10  N-NON-STD-LIN-COUNT         PIC  S9(04) COMP.
               10  N-DIN-COUNT                 PIC  S9(04) COMP.

           05  N-ARRAY-FIELDS.
               10  N-PIN-ARRAY OCCURS 0 TO 500 TIMES
                   DEPENDING ON N-PIN-COUNT.
                   15  N-PIN                   PIC  S9(09) COMP.

               10  N-LIN-ARRAY OCCURS 0 TO 200 TIMES
                   DEPENDING ON N-NON-STD-LIN-COUNT.
                   15  N-LIN                   PIC  S9(09) COMP.

               10  N-DIN-REAPPLY OCCURS 0 TO 2200 TIMES
                   DEPENDING ON N-DIN-COUNT.
                   15  N-DIN                   PIC  S9(18) COMP.
                   15  N-SUBJ-ID-NB            PIC  S9(04) COMP.
                   15  N-SUBJ-ID-SEQ-NB        PIC  S9(04) COMP.
