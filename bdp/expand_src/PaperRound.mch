/* PaperRound
* Author: Dasuni Dissanayake
* Creation date: 07/01/2017
*/
MACHINE
    PaperRound

SETS
    NEWSPAPER = { Guardian , Independent , Telegraph , Financial_Times , Times } ;
    MAGAZINE = { New_Scientist , Private_Eye , Beano , Radio_Times , Vogue , Hello , National_Geographic } ;
    REPORT = { SUCCESSFULLY_REQUESTED_NEWSPAPERS , ALREADY_OPTED_IN_FOR_NEWSPAPERS , SUCCESSFULLY_CANCELED ,
        NO_NEWSPAPERS_FOUND_FOR_THIS_HOUSE , SUCCESSFULLY_REQUEST_MAGAZINE , ALREADY_HAVE_MAXIMUM_NUMBEROF_MAGAZINES ,
        NO_MAGAZINES_FOUND_FOR_THIS_HOUSE , ALREADY_HAVE_THIS_MAGAZINE } ;
    STATUS = { PASS , FAIL }

CONCRETE_CONSTANTS
    maxmagazines ,
    maxhouses

PROPERTIES
    maxmagazines : NATURAL1 & maxmagazines = 3 &
    maxhouses : NATURAL1 & maxhouses = 20

ABSTRACT_VARIABLES
    houseset ,
    newspaperdelivery ,
    magazinedelivery

INVARIANT
    houseset <: NATURAL1 &
    newspaperdelivery : houseset <-> NEWSPAPER &
    magazinedelivery : houseset <-> MAGAZINE

INITIALISATION
    houseset := 1 .. maxhouses || /* Houses in the street */
    newspaperdelivery := { 1 |-> Guardian , 2 |-> Telegraph , 10 |-> Independent } ||
    magazinedelivery := { 1 |-> New_Scientist , 1 |-> Private_Eye , 1 |-> Beano , 10 |-> Hello }

OPERATIONS

    /* Request newspaper operation */
    report , status <-- requestPaperDelivery ( house , paper ) =
    PRE
        paper : NEWSPAPER &
        house : houseset
    THEN
        IF ( house /: dom ( newspaperdelivery ) )
        THEN
            newspaperdelivery := newspaperdelivery \/ { house |-> paper } ||
            status := PASS ||
            report := SUCCESSFULLY_REQUESTED_NEWSPAPERS
        ELSE
            status := FAIL ||
            report := ALREADY_OPTED_IN_FOR_NEWSPAPERS
        END
    END ;

    /* Cancel newspaper operation */
    report , status <-- cancelPaperDelivery ( house ) =
    PRE
        house : houseset
    THEN
        IF ( house : dom ( newspaperdelivery ) )
        THEN
            IF ( card ( magazinedelivery [ { house } ] ) > 0 )
            THEN
                magazinedelivery := magazinedelivery - ( { house } <| magazinedelivery )
            END ||
            newspaperdelivery := newspaperdelivery - ( { house } <| newspaperdelivery ) ||
            status := PASS ||
            report := SUCCESSFULLY_CANCELED
        ELSE
            status := FAIL ||
            report := NO_NEWSPAPERS_FOUND_FOR_THIS_HOUSE
        END
    END ;

    /* Request magazine operation */
    report , status <-- requestMagazineDelivery ( house , magazine ) =
    PRE
        house : houseset &
        house : dom ( newspaperdelivery ) &
        magazine : MAGAZINE
    THEN
        IF ( house : dom ( newspaperdelivery ) )
        THEN
            IF ( card ( magazinedelivery [ { house } ] ) < maxmagazines )
            THEN
                magazinedelivery := magazinedelivery \/ { house |-> magazine } ||
                status := PASS ||
                report := SUCCESSFULLY_REQUEST_MAGAZINE
            ELSIF ( magazine : ran ( magazinedelivery ) )
            THEN
                status := FAIL ||
                report := ALREADY_HAVE_THIS_MAGAZINE
            ELSE
                status := FAIL ||
                report := ALREADY_HAVE_MAXIMUM_NUMBEROF_MAGAZINES
            END
        ELSE
            status := FAIL ||
            report := NO_NEWSPAPERS_FOUND_FOR_THIS_HOUSE
        END
    END ;

    /* Cancel magazine operation */
    report , status <-- cancelMagazineDelivery ( house , magazine ) =
    PRE
        house : houseset &
        magazine : MAGAZINE
    THEN
        IF ( magazine : magazinedelivery [ { house } ] )
        THEN
            magazinedelivery := magazinedelivery - ( { house } <| magazinedelivery ) ||
            status := PASS ||
            report := SUCCESSFULLY_CANCELED
        ELSE
            status := FAIL ||
            report := NO_MAGAZINES_FOUND_FOR_THIS_HOUSE
        END
    END ;

    /* Outputs the house numbers that have papers delivered */
    housesDelivered <-- housesDeliveredTo =
    BEGIN
        housesDelivered := dom ( newspaperdelivery )
    END ;

    /* Outputs what paper is delivered to the house */
    paperDelivered <-- whatPaperDelivered ( house ) =
    PRE
        house : houseset &
        house : dom ( newspaperdelivery )
    THEN
        paperDelivered := newspaperdelivery [ { house } ]
    END ;

    /* Outputs all the magazines delivered to the house */
    magazines <-- whatMagazinesDelivered ( house ) =
    PRE
        house : houseset &
        house : dom ( magazinedelivery )
    THEN
        magazines := magazinedelivery [ { house } ]
    END ;

    /* Outputs all the different newspapers that are delivered to the houses*/
    newspapers <-- whatPapersSold =
    BEGIN
        newspapers := ran ( newspaperdelivery )
    END ;

    /* Outputs all the different magazines that are delivered to the houses */
    allMagazines <-- whatMagazinesSold =
    BEGIN
        allMagazines := ran ( magazinedelivery )
    END ;

    /* Outputs the total number of this newspaper that is delivered to the houses */
    newspapersSold <-- papersSold ( paper ) =
    PRE
        paper : NEWSPAPER
    THEN
        newspapersSold := card ( newspaperdelivery ~ [ { paper } ] )
    END ;

    /* Outputs the total number of this magazines that is delivered to the houses */
    magsSold <-- magazinesSold ( magazine ) =
    PRE
        magazine : MAGAZINE
    THEN
        magsSold := card ( magazinedelivery ~ [ { magazine } ] )
    END

END
