Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(PaperRound))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(PaperRound))==(Machine(PaperRound));
  Level(Machine(PaperRound))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(PaperRound)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(PaperRound))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(PaperRound))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(PaperRound))==(?);
  List_Includes(Machine(PaperRound))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(PaperRound))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(PaperRound))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(PaperRound))==(?);
  Context_List_Variables(Machine(PaperRound))==(?);
  Abstract_List_Variables(Machine(PaperRound))==(?);
  Local_List_Variables(Machine(PaperRound))==(magazinedelivery,newspaperdelivery,houseset);
  List_Variables(Machine(PaperRound))==(magazinedelivery,newspaperdelivery,houseset);
  External_List_Variables(Machine(PaperRound))==(magazinedelivery,newspaperdelivery,houseset)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(PaperRound))==(?);
  Abstract_List_VisibleVariables(Machine(PaperRound))==(?);
  External_List_VisibleVariables(Machine(PaperRound))==(?);
  Expanded_List_VisibleVariables(Machine(PaperRound))==(?);
  List_VisibleVariables(Machine(PaperRound))==(?);
  Internal_List_VisibleVariables(Machine(PaperRound))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(PaperRound))==(btrue);
  Gluing_List_Invariant(Machine(PaperRound))==(btrue);
  Expanded_List_Invariant(Machine(PaperRound))==(btrue);
  Abstract_List_Invariant(Machine(PaperRound))==(btrue);
  Context_List_Invariant(Machine(PaperRound))==(btrue);
  List_Invariant(Machine(PaperRound))==(houseset <: NATURAL1 & newspaperdelivery: houseset <-> NEWSPAPER & magazinedelivery: houseset <-> MAGAZINE)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(PaperRound))==(btrue);
  Abstract_List_Assertions(Machine(PaperRound))==(btrue);
  Context_List_Assertions(Machine(PaperRound))==(btrue);
  List_Assertions(Machine(PaperRound))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(PaperRound))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(PaperRound))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(PaperRound))==(houseset,newspaperdelivery,magazinedelivery:=1..maxhouses,{1|->Guardian,2|->Telegraph,10|->Independent},{1|->New_Scientist,1|->Private_Eye,1|->Beano,10|->Hello});
  Context_List_Initialisation(Machine(PaperRound))==(skip);
  List_Initialisation(Machine(PaperRound))==(houseset:=1..maxhouses || newspaperdelivery:={1|->Guardian,2|->Telegraph,10|->Independent} || magazinedelivery:={1|->New_Scientist,1|->Private_Eye,1|->Beano,10|->Hello})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(PaperRound))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(PaperRound))==(btrue);
  List_Constraints(Machine(PaperRound))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(PaperRound))==(requestPaperDelivery,cancelPaperDelivery,requestMagazineDelivery,cancelMagazineDelivery,housesDeliveredTo,whatPaperDelivered,whatMagazinesDelivered,whatPapersSold,whatMagazinesSold,papersSold,magazinesSold);
  List_Operations(Machine(PaperRound))==(requestPaperDelivery,cancelPaperDelivery,requestMagazineDelivery,cancelMagazineDelivery,housesDeliveredTo,whatPaperDelivered,whatMagazinesDelivered,whatPapersSold,whatMagazinesSold,papersSold,magazinesSold)
END
&
THEORY ListInputX IS
  List_Input(Machine(PaperRound),requestPaperDelivery)==(house,paper);
  List_Input(Machine(PaperRound),cancelPaperDelivery)==(house);
  List_Input(Machine(PaperRound),requestMagazineDelivery)==(house,magazine);
  List_Input(Machine(PaperRound),cancelMagazineDelivery)==(house,magazine);
  List_Input(Machine(PaperRound),housesDeliveredTo)==(?);
  List_Input(Machine(PaperRound),whatPaperDelivered)==(house);
  List_Input(Machine(PaperRound),whatMagazinesDelivered)==(house);
  List_Input(Machine(PaperRound),whatPapersSold)==(?);
  List_Input(Machine(PaperRound),whatMagazinesSold)==(?);
  List_Input(Machine(PaperRound),papersSold)==(paper);
  List_Input(Machine(PaperRound),magazinesSold)==(magazine)
END
&
THEORY ListOutputX IS
  List_Output(Machine(PaperRound),requestPaperDelivery)==(report,status);
  List_Output(Machine(PaperRound),cancelPaperDelivery)==(report,status);
  List_Output(Machine(PaperRound),requestMagazineDelivery)==(report,status);
  List_Output(Machine(PaperRound),cancelMagazineDelivery)==(report,status);
  List_Output(Machine(PaperRound),housesDeliveredTo)==(housesDelivered);
  List_Output(Machine(PaperRound),whatPaperDelivered)==(paperDelivered);
  List_Output(Machine(PaperRound),whatMagazinesDelivered)==(magazines);
  List_Output(Machine(PaperRound),whatPapersSold)==(newspapers);
  List_Output(Machine(PaperRound),whatMagazinesSold)==(allMagazines);
  List_Output(Machine(PaperRound),papersSold)==(newspapersSold);
  List_Output(Machine(PaperRound),magazinesSold)==(magsSold)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(PaperRound),requestPaperDelivery)==(report,status <-- requestPaperDelivery(house,paper));
  List_Header(Machine(PaperRound),cancelPaperDelivery)==(report,status <-- cancelPaperDelivery(house));
  List_Header(Machine(PaperRound),requestMagazineDelivery)==(report,status <-- requestMagazineDelivery(house,magazine));
  List_Header(Machine(PaperRound),cancelMagazineDelivery)==(report,status <-- cancelMagazineDelivery(house,magazine));
  List_Header(Machine(PaperRound),housesDeliveredTo)==(housesDelivered <-- housesDeliveredTo);
  List_Header(Machine(PaperRound),whatPaperDelivered)==(paperDelivered <-- whatPaperDelivered(house));
  List_Header(Machine(PaperRound),whatMagazinesDelivered)==(magazines <-- whatMagazinesDelivered(house));
  List_Header(Machine(PaperRound),whatPapersSold)==(newspapers <-- whatPapersSold);
  List_Header(Machine(PaperRound),whatMagazinesSold)==(allMagazines <-- whatMagazinesSold);
  List_Header(Machine(PaperRound),papersSold)==(newspapersSold <-- papersSold(paper));
  List_Header(Machine(PaperRound),magazinesSold)==(magsSold <-- magazinesSold(magazine))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(PaperRound),requestPaperDelivery)==(paper: NEWSPAPER & house: houseset);
  List_Precondition(Machine(PaperRound),cancelPaperDelivery)==(house: houseset);
  List_Precondition(Machine(PaperRound),requestMagazineDelivery)==(house: houseset & house: dom(newspaperdelivery) & magazine: MAGAZINE);
  List_Precondition(Machine(PaperRound),cancelMagazineDelivery)==(house: houseset & magazine: MAGAZINE);
  List_Precondition(Machine(PaperRound),housesDeliveredTo)==(btrue);
  List_Precondition(Machine(PaperRound),whatPaperDelivered)==(house: houseset & house: dom(newspaperdelivery));
  List_Precondition(Machine(PaperRound),whatMagazinesDelivered)==(house: houseset & house: dom(magazinedelivery));
  List_Precondition(Machine(PaperRound),whatPapersSold)==(btrue);
  List_Precondition(Machine(PaperRound),whatMagazinesSold)==(btrue);
  List_Precondition(Machine(PaperRound),papersSold)==(paper: NEWSPAPER);
  List_Precondition(Machine(PaperRound),magazinesSold)==(magazine: MAGAZINE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(PaperRound),magazinesSold)==(magazine: MAGAZINE | magsSold:=card(magazinedelivery~[{magazine}]));
  Expanded_List_Substitution(Machine(PaperRound),papersSold)==(paper: NEWSPAPER | newspapersSold:=card(newspaperdelivery~[{paper}]));
  Expanded_List_Substitution(Machine(PaperRound),whatMagazinesSold)==(btrue | allMagazines:=ran(magazinedelivery));
  Expanded_List_Substitution(Machine(PaperRound),whatPapersSold)==(btrue | newspapers:=ran(newspaperdelivery));
  Expanded_List_Substitution(Machine(PaperRound),whatMagazinesDelivered)==(house: houseset & house: dom(magazinedelivery) | magazines:=magazinedelivery[{house}]);
  Expanded_List_Substitution(Machine(PaperRound),whatPaperDelivered)==(house: houseset & house: dom(newspaperdelivery) | paperDelivered:=newspaperdelivery[{house}]);
  Expanded_List_Substitution(Machine(PaperRound),housesDeliveredTo)==(btrue | housesDelivered:=dom(newspaperdelivery));
  Expanded_List_Substitution(Machine(PaperRound),cancelMagazineDelivery)==(house: houseset & magazine: MAGAZINE | magazine: magazinedelivery[{house}] ==> magazinedelivery,status,report:=magazinedelivery-({house}<|magazinedelivery),PASS,SUCCESSFULLY_CANCELED [] not(magazine: magazinedelivery[{house}]) ==> status,report:=FAIL,NO_MAGAZINES_FOUND_FOR_THIS_HOUSE);
  Expanded_List_Substitution(Machine(PaperRound),requestMagazineDelivery)==(house: houseset & house: dom(newspaperdelivery) & magazine: MAGAZINE | house: dom(newspaperdelivery) ==> (card(magazinedelivery[{house}])<maxmagazines ==> magazinedelivery,status,report:=magazinedelivery\/{house|->magazine},PASS,SUCCESSFULLY_REQUEST_MAGAZINE [] not(card(magazinedelivery[{house}])<maxmagazines) ==> (magazine: ran(magazinedelivery) ==> status,report:=FAIL,ALREADY_HAVE_THIS_MAGAZINE [] not(magazine: ran(magazinedelivery)) ==> status,report:=FAIL,ALREADY_HAVE_MAXIMUM_NUMBEROF_MAGAZINES)) [] not(house: dom(newspaperdelivery)) ==> status,report:=FAIL,NO_NEWSPAPERS_FOUND_FOR_THIS_HOUSE);
  Expanded_List_Substitution(Machine(PaperRound),cancelPaperDelivery)==(house: houseset | house: dom(newspaperdelivery) ==> (card(magazinedelivery[{house}])>0 ==> magazinedelivery:=magazinedelivery-({house}<|magazinedelivery) [] not(card(magazinedelivery[{house}])>0) ==> skip || newspaperdelivery:=newspaperdelivery-({house}<|newspaperdelivery) || status:=PASS || report:=SUCCESSFULLY_CANCELED) [] not(house: dom(newspaperdelivery)) ==> status,report:=FAIL,NO_NEWSPAPERS_FOUND_FOR_THIS_HOUSE);
  Expanded_List_Substitution(Machine(PaperRound),requestPaperDelivery)==(paper: NEWSPAPER & house: houseset | house/:dom(newspaperdelivery) ==> newspaperdelivery,status,report:=newspaperdelivery\/{house|->paper},PASS,SUCCESSFULLY_REQUESTED_NEWSPAPERS [] not(house/:dom(newspaperdelivery)) ==> status,report:=FAIL,ALREADY_OPTED_IN_FOR_NEWSPAPERS);
  List_Substitution(Machine(PaperRound),requestPaperDelivery)==(IF house/:dom(newspaperdelivery) THEN newspaperdelivery:=newspaperdelivery\/{house|->paper} || status:=PASS || report:=SUCCESSFULLY_REQUESTED_NEWSPAPERS ELSE status:=FAIL || report:=ALREADY_OPTED_IN_FOR_NEWSPAPERS END);
  List_Substitution(Machine(PaperRound),cancelPaperDelivery)==(IF house: dom(newspaperdelivery) THEN IF card(magazinedelivery[{house}])>0 THEN magazinedelivery:=magazinedelivery-({house}<|magazinedelivery) END || newspaperdelivery:=newspaperdelivery-({house}<|newspaperdelivery) || status:=PASS || report:=SUCCESSFULLY_CANCELED ELSE status:=FAIL || report:=NO_NEWSPAPERS_FOUND_FOR_THIS_HOUSE END);
  List_Substitution(Machine(PaperRound),requestMagazineDelivery)==(IF house: dom(newspaperdelivery) THEN IF card(magazinedelivery[{house}])<maxmagazines THEN magazinedelivery:=magazinedelivery\/{house|->magazine} || status:=PASS || report:=SUCCESSFULLY_REQUEST_MAGAZINE ELSIF magazine: ran(magazinedelivery) THEN status:=FAIL || report:=ALREADY_HAVE_THIS_MAGAZINE ELSE status:=FAIL || report:=ALREADY_HAVE_MAXIMUM_NUMBEROF_MAGAZINES END ELSE status:=FAIL || report:=NO_NEWSPAPERS_FOUND_FOR_THIS_HOUSE END);
  List_Substitution(Machine(PaperRound),cancelMagazineDelivery)==(IF magazine: magazinedelivery[{house}] THEN magazinedelivery:=magazinedelivery-({house}<|magazinedelivery) || status:=PASS || report:=SUCCESSFULLY_CANCELED ELSE status:=FAIL || report:=NO_MAGAZINES_FOUND_FOR_THIS_HOUSE END);
  List_Substitution(Machine(PaperRound),housesDeliveredTo)==(housesDelivered:=dom(newspaperdelivery));
  List_Substitution(Machine(PaperRound),whatPaperDelivered)==(paperDelivered:=newspaperdelivery[{house}]);
  List_Substitution(Machine(PaperRound),whatMagazinesDelivered)==(magazines:=magazinedelivery[{house}]);
  List_Substitution(Machine(PaperRound),whatPapersSold)==(newspapers:=ran(newspaperdelivery));
  List_Substitution(Machine(PaperRound),whatMagazinesSold)==(allMagazines:=ran(magazinedelivery));
  List_Substitution(Machine(PaperRound),papersSold)==(newspapersSold:=card(newspaperdelivery~[{paper}]));
  List_Substitution(Machine(PaperRound),magazinesSold)==(magsSold:=card(magazinedelivery~[{magazine}]))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(PaperRound))==(maxmagazines,maxhouses);
  Inherited_List_Constants(Machine(PaperRound))==(?);
  List_Constants(Machine(PaperRound))==(maxmagazines,maxhouses)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(PaperRound),NEWSPAPER)==({Guardian,Independent,Telegraph,Financial_Times,Times});
  Context_List_Enumerated(Machine(PaperRound))==(?);
  Context_List_Defered(Machine(PaperRound))==(?);
  Context_List_Sets(Machine(PaperRound))==(?);
  List_Valuable_Sets(Machine(PaperRound))==(?);
  Inherited_List_Enumerated(Machine(PaperRound))==(?);
  Inherited_List_Defered(Machine(PaperRound))==(?);
  Inherited_List_Sets(Machine(PaperRound))==(?);
  List_Enumerated(Machine(PaperRound))==(NEWSPAPER,MAGAZINE,REPORT,STATUS);
  List_Defered(Machine(PaperRound))==(?);
  List_Sets(Machine(PaperRound))==(NEWSPAPER,MAGAZINE,REPORT,STATUS);
  Set_Definition(Machine(PaperRound),MAGAZINE)==({New_Scientist,Private_Eye,Beano,Radio_Times,Vogue,Hello,National_Geographic});
  Set_Definition(Machine(PaperRound),REPORT)==({SUCCESSFULLY_REQUESTED_NEWSPAPERS,ALREADY_OPTED_IN_FOR_NEWSPAPERS,SUCCESSFULLY_CANCELED,NO_NEWSPAPERS_FOUND_FOR_THIS_HOUSE,SUCCESSFULLY_REQUEST_MAGAZINE,ALREADY_HAVE_MAXIMUM_NUMBEROF_MAGAZINES,NO_MAGAZINES_FOUND_FOR_THIS_HOUSE,ALREADY_HAVE_THIS_MAGAZINE});
  Set_Definition(Machine(PaperRound),STATUS)==({PASS,FAIL})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(PaperRound))==(?);
  Expanded_List_HiddenConstants(Machine(PaperRound))==(?);
  List_HiddenConstants(Machine(PaperRound))==(?);
  External_List_HiddenConstants(Machine(PaperRound))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(PaperRound))==(btrue);
  Context_List_Properties(Machine(PaperRound))==(btrue);
  Inherited_List_Properties(Machine(PaperRound))==(btrue);
  List_Properties(Machine(PaperRound))==(maxmagazines: NATURAL1 & maxmagazines = 3 & maxhouses: NATURAL1 & maxhouses = 20 & NEWSPAPER: FIN(INTEGER) & not(NEWSPAPER = {}) & MAGAZINE: FIN(INTEGER) & not(MAGAZINE = {}) & REPORT: FIN(INTEGER) & not(REPORT = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(PaperRound),requestPaperDelivery)==(?);
  List_ANY_Var(Machine(PaperRound),cancelPaperDelivery)==(?);
  List_ANY_Var(Machine(PaperRound),requestMagazineDelivery)==(?);
  List_ANY_Var(Machine(PaperRound),cancelMagazineDelivery)==(?);
  List_ANY_Var(Machine(PaperRound),housesDeliveredTo)==(?);
  List_ANY_Var(Machine(PaperRound),whatPaperDelivered)==(?);
  List_ANY_Var(Machine(PaperRound),whatMagazinesDelivered)==(?);
  List_ANY_Var(Machine(PaperRound),whatPapersSold)==(?);
  List_ANY_Var(Machine(PaperRound),whatMagazinesSold)==(?);
  List_ANY_Var(Machine(PaperRound),papersSold)==(?);
  List_ANY_Var(Machine(PaperRound),magazinesSold)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(PaperRound)) == (maxmagazines,maxhouses,NEWSPAPER,MAGAZINE,REPORT,STATUS,Guardian,Independent,Telegraph,Financial_Times,Times,New_Scientist,Private_Eye,Beano,Radio_Times,Vogue,Hello,National_Geographic,SUCCESSFULLY_REQUESTED_NEWSPAPERS,ALREADY_OPTED_IN_FOR_NEWSPAPERS,SUCCESSFULLY_CANCELED,NO_NEWSPAPERS_FOUND_FOR_THIS_HOUSE,SUCCESSFULLY_REQUEST_MAGAZINE,ALREADY_HAVE_MAXIMUM_NUMBEROF_MAGAZINES,NO_MAGAZINES_FOUND_FOR_THIS_HOUSE,ALREADY_HAVE_THIS_MAGAZINE,PASS,FAIL | ? | magazinedelivery,newspaperdelivery,houseset | ? | requestPaperDelivery,cancelPaperDelivery,requestMagazineDelivery,cancelMagazineDelivery,housesDeliveredTo,whatPaperDelivered,whatMagazinesDelivered,whatPapersSold,whatMagazinesSold,papersSold,magazinesSold | ? | ? | ? | PaperRound);
  List_Of_HiddenCst_Ids(Machine(PaperRound)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(PaperRound)) == (maxmagazines,maxhouses);
  List_Of_VisibleVar_Ids(Machine(PaperRound)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(PaperRound)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(PaperRound)) == (Type(NEWSPAPER) == Cst(SetOf(etype(NEWSPAPER,0,4)));Type(MAGAZINE) == Cst(SetOf(etype(MAGAZINE,0,6)));Type(REPORT) == Cst(SetOf(etype(REPORT,0,7)));Type(STATUS) == Cst(SetOf(etype(STATUS,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(PaperRound)) == (Type(Guardian) == Cst(etype(NEWSPAPER,0,4));Type(Independent) == Cst(etype(NEWSPAPER,0,4));Type(Telegraph) == Cst(etype(NEWSPAPER,0,4));Type(Financial_Times) == Cst(etype(NEWSPAPER,0,4));Type(Times) == Cst(etype(NEWSPAPER,0,4));Type(New_Scientist) == Cst(etype(MAGAZINE,0,6));Type(Private_Eye) == Cst(etype(MAGAZINE,0,6));Type(Beano) == Cst(etype(MAGAZINE,0,6));Type(Radio_Times) == Cst(etype(MAGAZINE,0,6));Type(Vogue) == Cst(etype(MAGAZINE,0,6));Type(Hello) == Cst(etype(MAGAZINE,0,6));Type(National_Geographic) == Cst(etype(MAGAZINE,0,6));Type(SUCCESSFULLY_REQUESTED_NEWSPAPERS) == Cst(etype(REPORT,0,7));Type(ALREADY_OPTED_IN_FOR_NEWSPAPERS) == Cst(etype(REPORT,0,7));Type(SUCCESSFULLY_CANCELED) == Cst(etype(REPORT,0,7));Type(NO_NEWSPAPERS_FOUND_FOR_THIS_HOUSE) == Cst(etype(REPORT,0,7));Type(SUCCESSFULLY_REQUEST_MAGAZINE) == Cst(etype(REPORT,0,7));Type(ALREADY_HAVE_MAXIMUM_NUMBEROF_MAGAZINES) == Cst(etype(REPORT,0,7));Type(NO_MAGAZINES_FOUND_FOR_THIS_HOUSE) == Cst(etype(REPORT,0,7));Type(ALREADY_HAVE_THIS_MAGAZINE) == Cst(etype(REPORT,0,7));Type(PASS) == Cst(etype(STATUS,0,1));Type(FAIL) == Cst(etype(STATUS,0,1));Type(maxmagazines) == Cst(btype(INTEGER,?,?));Type(maxhouses) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(PaperRound)) == (Type(magazinedelivery) == Mvl(SetOf(btype(INTEGER,?,?)*etype(MAGAZINE,?,?)));Type(newspaperdelivery) == Mvl(SetOf(btype(INTEGER,?,?)*etype(NEWSPAPER,?,?)));Type(houseset) == Mvl(SetOf(btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(PaperRound)) == (Type(magazinesSold) == Cst(btype(INTEGER,?,?),etype(MAGAZINE,?,?));Type(papersSold) == Cst(btype(INTEGER,?,?),etype(NEWSPAPER,?,?));Type(whatMagazinesSold) == Cst(SetOf(etype(MAGAZINE,?,?)),No_type);Type(whatPapersSold) == Cst(SetOf(etype(NEWSPAPER,?,?)),No_type);Type(whatMagazinesDelivered) == Cst(SetOf(etype(MAGAZINE,?,?)),btype(INTEGER,?,?));Type(whatPaperDelivered) == Cst(SetOf(etype(NEWSPAPER,?,?)),btype(INTEGER,?,?));Type(housesDeliveredTo) == Cst(SetOf(btype(INTEGER,?,?)),No_type);Type(cancelMagazineDelivery) == Cst(etype(REPORT,?,?)*etype(STATUS,?,?),btype(INTEGER,?,?)*etype(MAGAZINE,?,?));Type(requestMagazineDelivery) == Cst(etype(REPORT,?,?)*etype(STATUS,?,?),btype(INTEGER,?,?)*etype(MAGAZINE,?,?));Type(cancelPaperDelivery) == Cst(etype(REPORT,?,?)*etype(STATUS,?,?),btype(INTEGER,?,?));Type(requestPaperDelivery) == Cst(etype(REPORT,?,?)*etype(STATUS,?,?),btype(INTEGER,?,?)*etype(NEWSPAPER,?,?)));
  Observers(Machine(PaperRound)) == (Type(magazinesSold) == Cst(btype(INTEGER,?,?),etype(MAGAZINE,?,?));Type(papersSold) == Cst(btype(INTEGER,?,?),etype(NEWSPAPER,?,?));Type(whatMagazinesSold) == Cst(SetOf(etype(MAGAZINE,?,?)),No_type);Type(whatPapersSold) == Cst(SetOf(etype(NEWSPAPER,?,?)),No_type);Type(whatMagazinesDelivered) == Cst(SetOf(etype(MAGAZINE,?,?)),btype(INTEGER,?,?));Type(whatPaperDelivered) == Cst(SetOf(etype(NEWSPAPER,?,?)),btype(INTEGER,?,?));Type(housesDeliveredTo) == Cst(SetOf(btype(INTEGER,?,?)),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
