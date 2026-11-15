**Keyword Reference Guide for the Forest Vegetation Simulator**

**Compiled by**

**Michael G. Van Dyck**

**Erin E. Smith-Mateja**

**2000**

![This is an image showing a generic schematic diagram in front of a forested mountain landscape. ](data:image/png;base64...)June 2026

**Keyword Reference Guide**

**for the**

**Forest Vegetation Simulator**

**CONTENTS**

[**Keyword Groups** 6](#_Toc232078484)

[**Keyword Introduction** 7](#_Toc232078485)

[**ADDFILE** (ADD a keyword FILE) 10](#_Toc232078486)

[**AGPLABEL** (Activity Group Policy LABEL) 10](#_Toc232078487)

[**ALSOTRY** (ALSO TRY if-then activities) 11](#_Toc232078488)

[**ATRTLIST** (After TReatment Tree LIST file) 12](#_Toc232078489)

[**BAIMULT** (Basal Area Increment MULTiplier) 13](#_Toc232078490)

[**BAMAX** (Basal Area MAXimum) 13](#_Toc232078491)

[**BFDEFECT** (Board Foot DEFECT) 14](#_Toc232078492)

[**BFFDLN** (Board Foot Form and Defect Log linear equation) 15](#_Toc232078493)

[**BFVOLUME** (Board Foot VOLUME) 15](#_Toc232078494)

[**BRUST** (white pine Blister RUST model initialization) 16](#_Toc232078495)

[**CALBSTAT** (CALiBration STATistics) 16](#_Toc232078496)

[**CCADJ** (Canopy Cover Adjust) 17](#_Toc232078497)

[**CHEAPO** (Computer Help for the Economic Analysis of Prognosis Output) 17](#_Toc232078498)

[**CLOSE** (CLOSE a file) 18](#_Toc232078499)

[**COMMENT** (insert COMMENTs) 18](#_Toc232078500)

[**COMPRESS** (COMPRESS the treelist) 19](#_Toc232078501)

[**COMPUTE** (COMPUTE variables) 19](#_Toc232078502)

[**COVER** (initialize COVER extension) 20](#_Toc232078503)

[**CRNMULT** (CRowN change MULTiplier) 21](#_Toc232078504)

[**CUTEFF** (CUTting EFFiciency) 21](#_Toc232078505)

[**CUTLIST** (CUT tree treeLIST) 22](#_Toc232078506)

[**CWEQN** (Crown Width EQuatioN) 22](#_Toc232078507)

[**CYCLEAT** (CYCLE boundary occurs AT) 23](#_Toc232078508)

[**DATABASE** (DATABASE Initialization) 23](#_Toc232078509)

[**DATASCRN** (DATA SCReeN) 24](#_Toc232078510)

[**DEBUG** (print DEBUG output) 24](#_Toc232078511)

[**DEFECT** (DEFECT) 25](#_Toc232078512)

[**DELOTAB** (DELete Output TABles) 26](#_Toc232078513)

[**DESIGN** (sampling DESIGN) 26](#_Toc232078514)

[**DFB** (Douglas-Fir Beetle model initialization) 27](#_Toc232078515)

[**DFTM** (Douglas-Fir Tussock Moth model initialization) 27](#_Toc232078516)

[**DGSTDEV** (Diameter Growth STandard DEViation) 27](#_Toc232078517)

[**ECHO** (ECHO) 28](#_Toc232078518)

[**ECHOSUM** (ECHO the SUMmary table) 28](#_Toc232078519)

[**END** (END special sequence) 28](#_Toc232078520)

[**ENDFILE** (END of FILE) 28](#_Toc232078521)

[**ENDIF** (END an IF-then block) 29](#_Toc232078522)

[**ESTAB** (ESTABlishment model) 29](#_Toc232078523)

[**FERTILIZ** (FERTILIZe) 29](#_Toc232078524)

[**FIAVBC** (FIA Volume, Biomass, Carbon) 30](#_Toc232078525)

[**FIXCW** (FIXed Crown Width) 31](#_Toc232078526)

[**FIXDG** (FIXed Diameter Growth) 32](#_Toc232078527)

[**FIXHTG** (FIXed HeighT Growth) 32](#_Toc232078528)

[**FIXMORT** (FIXed MORTality) 33](#_Toc232078529)

[**FMIN** (Fire Model INitialization) 34](#_Toc232078530)

[**FVSSTAND** (FVS STAND tables) 34](#_Toc232078531)

[**GROWTH** (GROWTH measurement method) 35](#_Toc232078532)

[**HTGMULT** (HeighT Growth MULTiplier) 36](#_Toc232078533)

[**HTGSTOP** (HeighT Growth STOP) 36](#_Toc232078534)

[**IF** (begin IF-then block) 37](#_Toc232078535)

[**INPFILE** (INP File) 38](#_Toc232078536)

[**INVYEAR** (INVentory YEAR) 38](#_Toc232078537)

[**LOCATE** (LOCATE the stand) 38](#_Toc232078538)

[**MANAGED** (MANAGED stand) 39](#_Toc232078539)

[**MCDEFECT** (Merchantable Cubic foot DEFECT) 39](#_Toc232078540)

[**MCFDLN** (Merchantable Cubic foot Form and Defect Log linear equation) 40](#_Toc232078541)

[**MGMTID** (ManaGeMenT IDentification) 41](#_Toc232078542)

[**MINHARV** (MINimum HARVest) 41](#_Toc232078543)

[**MISTOE** (MISTleTOE model initialization) 42](#_Toc232078544)

[**MODTYPE** (MODel TYPE) 42](#_Toc232078545)

[**MORTMSB** (MORTality associated with a Mature Stand Boundary) 43](#_Toc232078546)

[**MORTMULT** (MORTality MULTiplier) 44](#_Toc232078547)

[**MPB** (Mountain Pine Beetle model initialization) 44](#_Toc232078548)

[**NOAUTOES** (NO AUTOmatic EStablishment) 45](#_Toc232078549)

[**NOCALIB** (NO CALIBration scale factors) 45](#_Toc232078550)

[**NODEBUG** (NO DEBUG output) 46](#_Toc232078551)

[**NOECHO** (NO ECHO) 46](#_Toc232078552)

[**NOHTDREG** (NO HeighT-Diameter REGression) 46](#_Toc232078553)

[**NOSCREEN** (NO output to SCREEN) 47](#_Toc232078554)

[**NOSUM** (NO SUMmary table) 47](#_Toc232078555)

[**NOTREES** (NO TREE recordS) 47](#_Toc232078556)

[**NOTRIPLE** (NO tree record TRIPLE) 47](#_Toc232078557)

[**NUMCYCLE** (NUMber of CYCLEs) 48](#_Toc232078558)

[**NUMTRIP** (NUMber of times TRIPled) 48](#_Toc232078559)

[**OPEN** (OPEN a file) 48](#_Toc232078560)

[**ORGINFO** (ORGANON INFormation) 49](#_Toc232078561)

[**ORGVOL** (ORGANON VOLume) 50](#_Toc232078562)

[**POINTGRP** (POINT GRouP) 50](#_Toc232078563)

[**POINTREF** (POINT REFerence) 51](#_Toc232078564)

[**PRMFROST** (PeRMaFROST) 52](#_Toc232078565)

[**PROCESS** (PROCESS the keywords) 52](#_Toc232078566)

[**PRUNE** (PRUNE trees) 52](#_Toc232078567)

[**RANNSEED** (RANdom Number SEED) 53](#_Toc232078568)

[**RDIN** (Root Disease model INitialization) 54](#_Toc232078569)

[**READCORD** (READjust CORrection for Diameter) 54](#_Toc232078570)

[**READCORH** (READjust CORrection for Height) 55](#_Toc232078571)

[**READCORR** (READjust CORrection for Regeneration) 55](#_Toc232078572)

[**REGDMULT** (REGeneration Diameter growth MULTiplier) 56](#_Toc232078573)

[**REGHMULT** (REGeneration Height growth MULTiplier) 56](#_Toc232078574)

[**RESETAGE** (RESET stand AGE) 57](#_Toc232078575)

[**REUSCORD** (REUSe CORrection for Diameter) 57](#_Toc232078576)

[**REUSCORH** (REUSe CORrection for Height) 57](#_Toc232078577)

[**REUSCORR** (REUSe CORrection for Regeneration) 57](#_Toc232078578)

[**REWIND** (REWIND an open file) 57](#_Toc232078579)

[**SCREEN** (output to SCREEN) 58](#_Toc232078580)

[**SDICALC** (Stand Density Index Calculation) 58](#_Toc232078581)

[**SDIMAX** (Stand Density Index MAXimum) 58](#_Toc232078582)

[**SERLCORR** (SERiaL CORRelation) 59](#_Toc232078583)

[**SETPTHIN** (SETs Point THINning) 60](#_Toc232078584)

[**SETSITE** (SET SITE related parameters) 60](#_Toc232078585)

[**SITECODE** (SITE index CODE) 61](#_Toc232078586)

[**SPCODES** (SPecies CODES) 62](#_Toc232078587)

[**SPECPREF** (SPECies removal PREFerence) 62](#_Toc232078588)

[**SPGROUP** (SPecies Group) 64](#_Toc232078589)

[**SPLABEL** (Stand Policy LABEL) 65](#_Toc232078590)

[**SPLEAVE** (SPecies LEAVE) 66](#_Toc232078591)

[**STANDCN** (STAND Control Number ) 66](#_Toc232078592)

[**STATS** (STATisticS) 66](#_Toc232078593)

[**STDIDENT** (STanD IDENTification) 67](#_Toc232078594)

[**STDINFO** (STanD INFOrmation) 67](#_Toc232078595)

[**STOP** (STOP processing) 68](#_Toc232078596)

[**STRCLASS** (STRuctural CLASS) 68](#_Toc232078597)

[**SVS** (Stand Visualization System input) 69](#_Toc232078598)

[**TCONDMLT** (Tree Condition MULTiplier) 70](#_Toc232078599)

[**TFIXAREA** (Total FIXed plot AREA) 72](#_Toc232078600)

[**THEN** (schedule if-THEN activities) 72](#_Toc232078601)

[**THINABA** (THIN from Above to Basal Area target) 73](#_Toc232078602)

[**THINATA** (THIN from Above to Trees per Acre target) 74](#_Toc232078603)

[**THINAUTO** (THIN AUTOmatically) 75](#_Toc232078604)

[**THINBBA** (THIN from Below to Basal Area target) 76](#_Toc232078605)

[**THINBTA** (THIN from Below to Trees per Acre target) 77](#_Toc232078606)

[**THINCC** (THIN to Canopy Cover target) 78](#_Toc232078607)

[**THINDBH** (THIN from a DBH range) 80](#_Toc232078608)

[**THINHT** (THIN from a HeighT range) 81](#_Toc232078609)

[**THINMIST** (THIN trees with dwarf MISTletoe ) 82](#_Toc232078610)

[**THINPRSC** (THIN by PReSCription) 83](#_Toc232078611)

[**THINPT** (THIN by Point) 84](#_Toc232078612)

[**THINQFA** (THIN Q-Factor Approach) 85](#_Toc232078613)

[**THINRDEN** (THIN to Relative DENsity target) 86](#_Toc232078614)

[**THINRDSL** (THIN to Relative Density SiLvah target) 87](#_Toc232078615)

[**THINSDI** (THIN to Stand Density Index target) 89](#_Toc232078616)

[**TIMEINT** (TIME INTerval) 90](#_Toc232078617)

[**TOPKILL** (TOPKILL trees) 91](#_Toc232078618)

[**TREEDATA** (TREE DATA file) 91](#_Toc232078619)

[**TREEFMT** (TREE data ForMaT) 92](#_Toc232078620)

[**TREELIST** (TREELIST file) 94](#_Toc232078621)

[**TREESZCP** (TREE SiZe CaP) 95](#_Toc232078622)

[**VOLEQNUM** (VOLUME EQuation NUMber) 95](#_Toc232078623)

[**VOLUME** (cubic foot VOLUME) 96](#_Toc232078624)

[**WSBW** (Western Spruce BudWorm model initialization) 97](#_Toc232078625)

[**YARDLOSS** (YARDing LOSS) 97](#_Toc232078626)

[**Appendix A: Species Codes** 99](#_Toc232078627)

[**Regeneration Establishment Model Keywords** 101](#_Toc232078628)

[**AUTALLY** (AUtomatic seedling TALLY) 102](#_Toc232078629)

[**BUDWORM** (spruce BUDWORM) 102](#_Toc232078630)

[**BURNPREP** (BURNing site PREParation) 102](#_Toc232078631)

[**END** (END of regeneration sequence) 103](#_Toc232078632)

[**ESRANSD** (EStablishment RANdom Number SeeD) 103](#_Toc232078633)

[**ESTAB** (ESTABlishment model) 104](#_Toc232078634)

[**EZCRUISE** (Easy CRUISE) 104](#_Toc232078635)

[**HABGROUP** (HABitat type GROUP) 105](#_Toc232078636)

[**HTADJ** (regeneration HeighT ADJustment) 105](#_Toc232078637)

[**INGROW** (INGROWth) 105](#_Toc232078638)

[**MECHPREP** (MECHanical site PREParation) 106](#_Toc232078639)

[**MINPLOTS** (MINimum number of PLOTS) 106](#_Toc232078640)

[**NATURAL** (NATURAL regeneration) 107](#_Toc232078641)

[**NOAUTALY** (NO AUTomatic seedling TALLY) 108](#_Toc232078642)

[**NOINGROW** (NO automatic INGROWth) 108](#_Toc232078643)

[**NOSPROUT** (NO stump or root SPROUTing) 108](#_Toc232078644)

[**OUTPUT** (OUTPUT tables) 109](#_Toc232078645)

[**PASSALL** (PASS ALL seedling records) 109](#_Toc232078646)

[**PLANT** (PLANT seedlings) 109](#_Toc232078647)

[**PLOTINFO** (PLOT INFOrmation) 110](#_Toc232078648)

[**RESETAGE** (RESET stand AGE) 111](#_Toc232078649)

[**SPECMULT** (SPECies occurrence MULTiplier) 111](#_Toc232078650)

[**SPROUT** (stump or root SPROUTing) 112](#_Toc232078651)

[**STOCKADJ** (STOCKing ADJustment) 113](#_Toc232078652)

[**TALLY** (seedling TALLY) 113](#_Toc232078653)

[**TALLYONE** (seedling TALLY ONE) 114](#_Toc232078654)

[**TALLYTWO** (seedling TALLY TWO) 114](#_Toc232078655)

[**THRSHOLD** (automatic regeneration THReSHOLDs) 115](#_Toc232078656)

# **Keyword Groups**

**<u>PROGRAM CONTROL</u>**

[COMPRESS](#_COMPRESS_(COMPRESS_the) [NOAUTOES](#_NOAUTOES_(NO_AUTOmatic) [NUMCYCLE](#_NUMCYCLE_(NUMber_of) [RANNSEED](#_RANNSEED_(RANdom_Number) [STOP](#_STOP_(STOP_processing))

[CYCLEAT](#_CYCLEAT_(CYCLE_boundary) [NOTREES](#_NOTREES_(NO_TREE) [NUMTRIP](#_NUMTRIP_(NUMber_of) [RESETAGE](#_RESETAGE_(RESET_stand) [STRCLASS](#_STRCLASS_(STRuctural_CLASS))

[DEBUG](#_DEBUG_(print_DEBUG) [NOTRIPLE](#_NOTRIPLE_(NO_tree) [PROCESS](#_PROCESS_(PROCESS_the) [STATS](#_STATS_(STATisticS)) [TIMEINT](#_TIMEINT_(TIME_)

**<u>STAND AND TREE INFORMATION</u>**

[COMMENT](#_COMMENT_(insert_COMMENTs)) [INVYEAR](#_INVYEAR_(INVentory_YEAR)) [MODTYPE](#_MODTYPE_(MODel_TYPE)) [SITECODE](#_SITECODE_(SITE_index) [STDINFO](#_STDINFO_(STanD_INFOrmation))

[DESIGN](#_DESIGN_(sampling_DESIGN)) [LOCATE](#_LOCATE_(LOCATE_the) [SDIMAX](#_SDIMAX_(Stand_Density) [SPCODES](#_SPCODES_(SPecies_CODES)) [TFIXAREA](#_TFIXAREA_(Total_FIXed)

[GROWTH](#_GROWTH_(GROWTH_measurement) [MGMTID](#_MGMTID_(ManaGeMenT_IDentification)) [SETSITE](#_SETSITE_(SET_SITE) [STDIDENT](#_STDIDENT_(STanD_IDENTification)) [TREEFMT](#_TREEFMT_(TREE_)

**<u>GROWTH AND MORTALITY MODIFIERS</u>**

[BAIMULT](#_BAIMULT_(Basal_Area) [FERTILIZ](#_FERTILIZ_(FERTILIZe)) [MORTMULT](#_MORTMULT_(MORTality_MULTiplier)) [READCORH](#_READCORH_(READjust_CORrection) [REUSCORR](#_READCORR_(READjust_CORrection)

[BAMAX](#_BAMAX_(Basal_Area) [FIXHTG](#_FIXHTG_(FIXed_HeighT) [MORTMSB](#_MORTMSB_(MORTality_associated) [READCORR](#_READCORR_(READjust_CORrection) [SDICALC](#_SDICALC_(Stand_Density)

[CCADJ](#_CCADJ_(corrected_percent) [FIXMORT](#_FIXMORT_(FIXed_MORTality)) [NOCALIB](#_NOCALIB_(NO_CALIBration) [REGDMULT](#_REGDMULT_(REGeneration_Diameter) [SDIMAX](#_SDIMAX_(Stand_Density)

[CRNMULT](#_CRNMULT_(CRowN_change) [HTGMULT](#_HTGMULT_(HeighT_Growth) [NOHTDREG](#_NOHTDREG_(NO_HeighT-Diameter) [REGHMULT](#_REGHMULT_(REGeneration_Height) [SERLCORR](#_SERLCORR_(SERiaL_CORRelation))

[CWEQN](#_CWEQN_(Crown_Width) [HTGSTOP](#_HTGSTOP_(HeighT_Growth) [PRMFROST](#_PRMFROST_(PeRMaFROST)) [REUSCORD](#_REUSCORD_(REUSe_CORrection) [TOPKILL](#_TOPKILL_(TOPKILL_trees))

[DGSTDEV](#_DGSTDEV_(Diameter_Growth) [MANAGED](#_MANAGED_(MANAGED_stand)) [READCORD](#_REUSCORD_(REUSe_CORrection) [REUSCORH](#_REUSCORH_(REUSe_CORrection) [TREESZCP](#_TREESZCP_(TREE_SiZe)

**<u>THINNING KEYWORDS</u>**

[CUTEFF](#_CUTEFF_(CUTting_EFFiciency)) [SPECPREF](#_SPECPREF_(SPECies_removal) [THINATA](#_THINATA_(THIN_from) [THINBTA](#_THINBTA_(THIN_from) [THINPRSC](#_THINPRSC_(THIN_by)

[CUTLIST](#_CUTLIST_(CUT_tree) [SPLEAVE](#_SPLEAVE_(SPecies_LEAVE)) [THINAUTO](#_THINAUTO_(THIN_AUTOmatically)) [THINDBH](#_THINDBH_(THIN_from) [TCONDMLT](#_TCONDMLT_(Tree_Condition)

[MINHARV](#_MINHARV_(MINimum_HARVest)) [THINABA](#_THINABA_(THIN_from) [THINBBA](#_THINBBA_(THIN_from) [THINHT](#_THINHT_(THIN_from) [THINSDI](#_THINSDI_(THIN_to)

[POINTGRP](#_POINTGRP_(POINT_GRouP)) [THINCC](#_THINCC_(THIN_to) [THINRD](#_THINRDEN_(THIN_to)EN [THINRDSL](#_THINRDSL_(THIN_to) [THINPT](#_THINPT_(THIN_by)

[POINTREF](#_POINTREF_(POINT_REFerence)) [PRUNE](#_PRUNE_(PRUNE_trees)) [THINQFA](#_THINQFA_(THIN_Q-Factor) [SETPTHIN](#_SETPTHIN_(SETs_Point) YARDLOSS

[SPGROUP](#_SPGROUP_(SPecies_Group))

**<u>VOLUME CONTROLS</u>**

[BFDEFECT](#_BFDEFECT_(Board_Foot) [DEFECT](#_DEFECT_(DEFECT)) [[MCDEFECT](#_MCDEFECT_(Merchantable_Cubic)](#_MCFDLN_(Merchantable_Cubic) [[MINHARV](#_MINHARV_(MINimum_HARVest))](#_VOLUME_(cubic_foot) VOLEQNUM

[BFFDLN](#_BFFDLN_(Board_Foot) [FIAVBC](#_FIXCW_(FIXed_Crown) [[MCFDLN](#_MCFDLN_(Merchantable_Cubic)](#_MINHARV_(MINimum_HARVest)) [ORGVOL](#_ORGVOL_(ORGANON_VOLume)) VOLUME

[BFVOLUME](#_BFVOLUME_(Board_Foot)

**<u>INPUT/OUTPUT CONTROL KEYWORDS</u>**

[ADDFILE](#_ADDFILE_(ADD_a) DATASCRN [MGMTID](#_MGMTID_(ManaGeMenT_IDentification)) [SCREEN](#_SCREEN_(output_to) TREEDATA

[CALBSTAT](#_CALBSTAT_(CALiBration_STATistics)) [DEBUG](#_DEBUG_(print_DEBUG) [NODEBUG](#_NODEBUG_(NO_DEBUG) [SPCODES](#_SPCODES_(SPecies_CODES)) TREELIST

[CHEAPO](#_CHEAPO_(Computer_Help) [DELOTAB](#_DELOTAB_(DELete_Output) [NOSCREEN](#_NOSCREEN_(NO_output) [STATS](#_STATS_(STATisticS)) [INPFILE](#_INPFILE_(INP_File))

[COMMENT](#_COMMENT_(insert_COMMENTs)) ECHO [NOSUM](#_NOSUM_(NO_SUMmary) [STDIDENT](#_STDIDENT_(STanD_IDENTification))

[CLOSE](#_CLOSE_(CLOSE_a) [ECHOSUM](#_ECHOSUM_(ECHO_the) [NOTREES](#_NOTREES_(NO_TREE) [STRCLASS](#_STRCLASS_(STRuctural_CLASS))

[COMPUTE](#_COMPUTE_(COMPUTE_variables)) [ENDFILE](#_ENDFILE_(END_of) NOECHO [SVS](#_SVS_(Stand_Visualization)

CUTLIST [FVSSTAND](#_FVSSTAND_(FVS_STAND) OPEN [ORGINFO](#_ORGINFO_(ORGANON_INFormation))

# **Keyword Introduction**

Users communicate much of the information used by the Forest Vegetation Simulator (FVS) through the keyword system. This system consists of a set of mnemonic words (keywords) and associated data. A single keyword and its associated numeric data make up a keyword record.

**Keyword Records**

A simulation file is comprised of a logical set of keyword records. The keyword always begins in the first column of the keyword record. Depending on the keyword, up to eleven additional fields on the record may be used to transmit data. These fields are referred to as parameter fields and the data that they contain are used when the option is implemented. Each parameter field consists of 10 columns. If a decimal point is included in numeric data, the parameter may be entered anywhere within the field. If integer values or alphanumeric data are used, they must be right-justified. The first ten columns of the keyword record are reserved for the keyword name; therefore, the first parameter field begins in column 11 (Figure 1)

![Image of Example of a portion of a simulation file showing keyword records with keywords (columns 1 to 10) and 7 parameter fields (10-column fields beginning in column 11).  The header with column designations is not part of the file and is included here only to help illustrate the format of the keyword records.](data:image/jpeg;base64...)

Figure 1 - Example of a portion of a simulation file showing keyword records with keywords (columns 1 to 10) and 7 parameter fields (10-column fields beginning in column 11). The header with column designations is not part of the file and is included here only to help illustrate the format of the keyword records.

A simplifying feature of the keyword system is that default values exist for almost all program options. Keywords need only be used if the desired action differs from the default action. Similarly, most parameters associated with keywords have default values. If such a field is left blank, the default value will be used.

Many keywords contain a “year or cycle” parameter field. If the value entered in this field is in the range 0-40 it is interpreted as a cycle number. If the value entered is 1000 or greater it is interpreted as a year. No other values are legal for this type of parameter field unless otherwise noted.

Many keywords contain a “species” parameter field. Values entered in this field may be numeric or alpha codes. A numeric entry is interpreted as the species sequence number from the FVS variant that is being used. Alpha entries are interpreted as the alpha species code from the FVS variant that is being used. Refer to Appendix A for a list of species sequence numbers and species alpha codes.

**Supplemental Records**

The final element of the keyword system is the supplemental data record. These records are required when the information needed does not fit the parameter field format. Supplemental data records are a maximum of 80 characters and occupy the records immediately following the keyword record. The exact format of the supplemental data records is dependent on the keyword selected, and will be described in the keyword description for the keywords that require them (Figure 2).

![Image of a portion of a simulation file showing keywords with associated supplemental data records.](data:image/jpeg;base64...)

Figure 2 - Example of a portion of a simulation file showing keywords with associated supplemental data records.

**PARMS Format**

Many of the “activity” keyword records may be coded using the PARMS format. This is a special form of the keyword record. It is equivalent to the standard form of the keyword record, but it allows expressions in place of constant parameters. See the individual keyword descriptions to determine whether a particular keyword may use the PARMS format.

When using the PARMS format for a keyword record, the keyword is coded in the first eight columns, and the year/cycle (field 1) is coded right justified in column 20 as is done when this feature is not used. The remainder of the record is coded

PARMS (parameter2, parameter3, parameter4, ... , parametern)

where the word PARMS begins somewhere in columns 21 through 30. Each “parametern” corresponds to the nth field of the keyword. Its value is represented by an expression that uses constants, variables (Event Monitor pre-defined or user-defined), and/or Event Monitor functions. Refer to GTR INT-275, *User’s Guide to the Event Monitor: Part of Prognosis Model Version 6* for a discussion of legal uses of variables, operators, and functions. If the keyword record is long, an ampersand (&) is used to continue the record on the following line. Figure 3 shows several keyword records that use the PARMS format.

![Image of keyword records using the PARMS format.   The two THINDBH keyword records are equivalent.  For the THINBTA keyword the residual stand density (field 2) is calculated using a pre-defined variable (BTPA) and an Event Monitor function (SPMCDBH).](data:image/jpeg;base64...)

Figure 3 - Example of keyword records using the PARMS format. The two THINDBH keyword records are equivalent. For the THINBTA keyword the residual stand density (field 2) is calculated using a pre-defined variable (BTPA) and an Event Monitor function (SPMCDBH).

When using the PARMS format, supply all of the parameters used by the keyword. Defaults are not used when parameters are left blank. Ensure that all parameter values are within legal limits as FVS does not check for legal values when the PARMS format is used. Also ensure that variables are defined when the activity is called. If the PARMS function references a variable that is not defined when the activity is called, the activity is canceled.

**Geographic Variants**

The different versions of the FVS model have been calibrated to specific geographic areas and are referred to as “variants”. Each variant is a stand-alone application that contains growth parameters and other parameters based on data collected in the geographic area represented. Individual variants may have a different subset of legal keywords and may use different species codes than other variants. Refer to the variant overviews for a list of species and geographic area for that variant

AK Alaska

BM Blue Mountains

CA Inland CA, Southern Cascades (ICASCA)

CI Central Idaho

CR Central Rockies

CS Central States)

EC Eastside Cascades

EM Eastern Montana

KT Kootenai/Kaniksu/Tally Lake (KOOKANTL)

LS Lake States

NC Northern California (Klamath Mountains)

NE Northeast

IE Northern Idaho - Inland Empire

OP ORGANON (NWO & SMC)

OC ORGANON (SWO)

PN Pacific Northwest Coast

SN Southern

SO South Central OR, Northeast CA (SORNEC)

TT Tetons

UT Utah

WC Westside Cascades

WS Westside Sierra Nevada (WESSIN)

# **ADDFILE** (<u>ADD</u> a keyword <u>FILE</u>)

Variants: All

Related keywords: [OPEN](#_OPEN_(OPEN_a), [CLOSE](#_CLOSE_(CLOSE_a)

Permits the adding of external keyword files to the simulation file. When FVS encounters an ADDFILE keyword in a keyword file it opens the auxiliary keyword file (see [OPEN](#_OPEN_(OPEN_a) keyword) and reads in the keywords from that file. It then reads in the remaining keywords from the original file. Any number of ADDFILE requests can be included in a single simulation file (however, each must be preceded by an [[OPEN](#_OPEN_(OPEN_a)](#_OPEN_(OPEN_a) keyword and followed by a [CLOSE](#_CLOSE_(CLOSE_a) keyword).

field 1: File reference number for the auxiliary keyword file (also known as an addfile). File reference numbers are a mechanism that FVS uses to keep track of external files. Numbers less than 30 are reserved for files that are currently used by FVS.

Note: Any number of ADDFILE keywords can be requested in a simulation file, however each ADDFILE keyword must be preceded by a corresponding [[OPEN](#_OPEN_(OPEN_a)](#_OPEN_(OPEN_a) keyword with the same file reference number.

Note: It is possible to include additional ADDFILE keywords within the external file (i.e., an ADDFILE within an ADDFILE is permitted), but that a different file reference number needs to be used at each “level” within the nested statements.

Note: The ADDFILE and [[OPEN](#_OPEN_(OPEN_a)](#_OPEN_(OPEN_a) keyword combination require that the auxiliary keyword file (or addfile) be read every time the simulation is run. Changing the auxiliary keyword file after it has been embedded into the current simulation file has no effect on the current simulation file. When using ADDFILE and [OPEN](#_OPEN_(OPEN_a) keywords, changing the auxiliary file will cause a change in the simulation when it is run again.

Example:

OPEN 40

EXTRA.KEY

ADDFILE 40

CLOSE 40

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.2.4

# **AGPLABEL** (<u>A</u>ctivity <u>G</u>roup <u>P</u>olicy <u>LABEL</u>)

Variants: All

Related keywords: [SPLABEL](#_SPLABEL_(Stand_Policy), [ALSOTRY](#_ALSOTRY_(ALSO_TRY), [IF](#_IF_(begin_IF-then), [THEN](#_THEN_(schedule_if-THEN), [ENDIF](#_ENDIF_(END_an)

Specifies a subset of stand policy labels (refer to the [SPLABEL](#_SPLABEL_(Stand_Policy) keyword description) that are to be used to selectively schedule conditional activities. Only stands having at least one of the specified labels in their stand policy label set will be considered for the conditional activities. This capability is useful only when multiple stands are included in a simulation, or when an addfile is to be applied differently to different stands. For example, three stands are to be managed. The first has the stand policy label *PineType*, the second has *PineType* and *Overstocked*, and third has *Overstocked*. AGPLABEL may be used to conditionally schedule a thinning that is to be applied only to stands with the label *Overstocked*. Only the second and third stands will be considered since these are the only stands with the label *Overstocked*. If AGPLABEL is used to conditionally schedule a second activity that to be applied only to stands with the label *PineType* only the first and second stands will be considered.

The AGPLABEL keyword record must follow the [THEN](#_THEN_(schedule_if-THEN) keyword or [ALSOTRY](#_ALSOTRY_(ALSO_TRY) keyword to which it applies, and must precede the corresponding [ENDIF](#_ENDIF_(END_an) keyword. If the specified condition is true for a stand and at least one of its stand policy labels matches one of the activity group policy labels specified, the activities following the [THEN](#_THEN_(schedule_if-THEN) or [ALSOTRY](#_ALSOTRY_(ALSO_TRY) keyword will be scheduled. If either the condition is not true or there is no match in policy labels for the stand, then the activities will not be scheduled.

Refer to the description for the [SPLABEL](#_SPLABEL_(Stand_Policy) keyword for an explanation and example of how to specify the stand policy labels. Refer to the description for the [ALSOTRY](#_ALSOTRY_(ALSO_TRY) keyword for an explanation and example of its use.

No fields are associated with this keyword. Labels are entered on a supplemental record.

Supplemental record:

Specifies the activity group policy labels. These are a subset of the stand policy labels for all the stands in the simulation. Labels are separated by a single comma. The total number of characters in the label set may not exceed 100. An ampersand (&) is used to indicate that the list of labels is continued on the next line. Any character may be used as part of a label except a comma, period, or ampersand.

Example: If the basal area exceeds 150 square feet per acre and the stand has the stand policy label *PineType*, then thin from below to 100 square feet per acre.

IF 0

BBA GT 150

THEN

AGPLABEL

PineType

THINBBA 0 100 1.0 0.0 999.0 0 999

ENDIF

Note: If no AGPLABEL keyword record is included after a [THEN](#_THEN_(schedule_if-THEN) keyword, the default activity group policy label set is used. This default set is the union of all stand policy labels for all stands, so the activities will be scheduled in any stand in which the condition is true. A warning will appear in the main FVS output file stating that no activity group policy labels were specified.

References: GTR INT-275, User’s Guide to the Event Monitor..., p. 7

GTR INT-281, User’s Guide to the Parallel Processing Extension..., p. 9

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.6.1

# **ALSOTRY** (<u>ALSO</u> <u>TRY</u> if-then activities)

Variants: All

Related keywords: [SPLABEL](#_SPLABEL_(Stand_Policy), [AGPLABEL](#_AGPLABEL_(Acitvity_Group), [IF](#_IF_(begin_IF-then), [THEN](#_THEN_(schedule_if-THEN), [ENDIF](#_ENDIF_(END_an)

Specifies an alternative set of activities that are to be conditionally scheduled when a condition is true, but the activity group policy label set (refer to the [AGPLABEL](#_AGPLABEL_(Acitvity_Group) keyword description) of the [THEN](#_THEN_(schedule_if-THEN) block excluded some stands. Only stands that had none of the labels specified in the [AGPLABEL](#_AGPLABEL_(Acitvity_Group) keyword record in the [THEN](#_THEN_(schedule_if-THEN) block, but have at least one label in common with the [AGPLABEL](#_AGPLABEL_(Acitvity_Group) keyword record following the ALSOTRY keyword will be considered for the conditional activities that also follow the ALSOTRY keyword. This capability is useful only when multiple stands are included in a simulation.

As an example, assume three stands are to be managed. The first has the stand policy label *PineType*, the second has *PineType* and *Overstocked*, and third has *Overstocked*. An [AGPLABEL](#_AGPLABEL_(Acitvity_Group) keyword record is included after the [THEN](#_THEN_(schedule_if-THEN) keyword to restrict a thinning to only those stands with the stand policy label *Overstocked*. The second and third stands are considered. An ALSOTRY keyword follows the [THEN](#_THEN_(schedule_if-THEN) block, and contains an [AGPLABEL](#_AGPLABEL_(Acitvity_Group) keyword record to include stands with the stand policy label *PineType*. Only the first stand is considered. Even though the second stand also has the *PineType* label it was considered in the [THEN](#_THEN_(schedule_if-THEN) block, and is therefore not available for consideration in the ALSOTRY block.

The ALSOTRY keyword and its associated [AGPLABEL](#_AGPLABEL_(Acitvity_Group) keyword record and activities must follow the [THEN](#_THEN_(schedule_if-THEN) keyword and its [AGPLABEL](#_AGPLABEL_(Acitvity_Group) and activities. The ALSOTRY block must precede the corresponding [ENDIF](#_ENDIF_(END_an) keyword.

Refer to the description for the [SPLABEL](#_SPLABEL_(Stand_Policy) and [AGPLABEL](#_AGPLABEL_(Acitvity_Group) keywords for explanations and examples of the use of policy labels.

No fields are associated with this keyword when used outside of the parallel processing extension.

Example: If the basal area exceeds 150 square feet per acre then, and only then, consider the following options. If the stand has the stand policy label *PineType*, then thin from below to 100 square feet per acre. If the stand does not have the label *PineType* but does have the label *Overstocked*, then thin from above to 95 square feet per acre.

IF 0

BBA GT 150

THEN

AGPLABEL

PineType

THINBBA 0 100 1.0 0.0 999.0 0 999

ALSOTRY

AGPLABEL

Overstocked

THINABA 0 95 1.0 0.0 999.0 0 999

ENDIF

Note: When ALSOTRY is used without the parallel processing extension (PPE) the activity group policy labels on its [AGPLABEL](#_AGPLABEL_(Acitvity_Group) keyword record cannot overlap those on the [AGPLABEL](#_AGPLABEL_(Acitvity_Group) keyword record in the [THEN](#_THEN_(schedule_if-THEN) block.

References: GTR INT-275, User’s Guide to the Event Monitor..., p. 7

GTR INT-281, User’s Guide to the Parallel Processing Extension..., p. 9

# **ATRTLIST** (<u>A</u>fter <u>TR</u>eatment <u>T</u>ree <u>LIST</u> file)

Variants: All

Related keywords: [TREELIST](#_TREELIST_(TREELIST_file)), [CUTLIST](#_CUTLIST_(CUT_tree)

Generates an after treatment tree list file.

field 1: Year or cycle in which treelist is to be printed. Enter 0 (zero) to print output for every cycle. *Default = 1*

field 2: File reference number for the output file. File reference numbers are a mechanism that FVS uses to keep track of external files. Numbers less than 30 are reserved for files that are currently used by FVS. *Default = 3*

field 3: Value to determine which header will be printed with the treelist. *Default = 0*

1 Encoded header record (machine readable, -999)

0 Header records describing each column (human readable)

‑1 Suppress all headers

Note: By default, the output file name will have a *.trl* extension.

# **BAIMULT** (<u>B</u>asal <u>A</u>rea <u>I</u>ncrement <u>MULT</u>iplier)

Variants: All

Related keywords: [BAMAX](#_BAMAX_(Basal_Area), [NOCALIB](#_NOCALIB_(NO_CALIBration), [CALBSTAT](#_CALBSTAT_(CALiBration_STATistics)), [READCORD](#_READCORD_(READjust_CORrection), [REGDMULT](#_REGDMULT_(REGeneration_Diameter), [FERTILIZ](#_FERTILIZ_(FERTILIZe))

Multiplier to change the large tree basal area increment prediction. This modifies the diameter growth rate of trees in the large tree model. The diameter break that separates the large and small tree models varies by variant (Refer to the variant overview).

field 1: Year or cycle in which the multiplier is applied. Once in effect it remains in effect until replaced by a subsequent multiplier. *Default = 0 (All cycles)*

field 2: Species code to which the multiplier is applied. *Default = All*

field 3: Multiplier value. (e.g. a value of 1.1 will increase the predicted basal area growth by 10%) *Default = 1.0 (no change from predicted value)*

Note: For any particular species this keyword remains in effect until a subsequent use of the keyword changes the multiplier for that species.

Note: The multiplier value itself remains constant over time, however this multiplier is applied after the scale factors have been applied. Scale factors may attenuate over time, therefore the modified basal area increment may also attenuate over time.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

Caution: Many of the predictions in FVS are based on basal area increment. Changing the large tree basal area increment prediction also changes many of the other predictions made in the model.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 94

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.5.2.4

# **BAMAX** (<u>B</u>asal <u>A</u>rea <u>MAX</u>imum)

Variants: All

Related keywords: [BAIMULT](#_BAIMULT_(Basal_Area), [SDIMAX](#_SDIMAX_(Stand_Density)

Modifies the maximum density and the associated mortality pattern for the stand. In the CI variant, crown ratio change is also affected. In all variants other than CI, EM, KT, and NI, BAMAX is used indirectly to set species SDI maximums if the [SDIMAX](#_SDIMAX_(Stand_Density) keyword has not been used for that purpose.

field 1: Maximum basal area (square feet) per acre. *Defaults by variant*

Caution: Use of this keyword can drastically change predicted yields.

Note: When the BAMAX keyword is set, SDIMAX is set based on the BAMAX keyword and the additional SDIMAX keywords are ignored.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.5.2.4

# **BFDEFECT** (<u>B</u>oard <u>F</u>oot <u>DEFECT</u>)

Variants: All

Related keywords: [MCDEFECT](#_MCDEFECT_(Merchantable_Cubic), [DEFECT](#_DEFECT_(DEFECT)), [BFVOLUME](#_BFVOLUME_(Board_Foot), [BFFDLN](#_BFFDLN_(Board_Foot)

Specifies species-specific defect corrections for volume estimates. In the western half of the US this keyword specifies the board foot defect. (Cubic foot defect is specified using the [MCDEFECT](#_MCDEFECT_(Merchantable_Cubic) keyword.) In the eastern half of the US this keyword specifies both the board foot and cubic foot defect for the sawlog portion of trees. (Defect for the pulpwood is specified using the [MCDEFECT](#_MCDEFECT_(Merchantable_Cubic) keyword.) Defect percentages are specified by species for the following five dbh’s: 5, 10, 15, 20, 25 inches. For example, if the expected defect correction for a five-inch tree is 35 percent, a value of .35 would be entered in the keyword field 3. A linear interpolation function calculates the defect percentage for the specified dbh of the tree. For trees smaller than 5 inches dbh or greater than 25 inches dbh, a constant value for defect correction is applied based on the values in fields 3 and 7 respectively.

field 1: Year or cycle in which the defect corrections are to take effect. Once applied it remains in effect until replaced by a subsequent multiplier.

*Default = 0 (all cycles)*

field 2: Species code that will be affected by the defect corrections.

*Default = All*

field 3: Proportion of board foot volume defect for a 5-inch tree. All trees less than 5 inches dbh will be assigned this value. *Range: 0.0 - 1.0, Default = 0.0*

field 4: Proportion of board foot volume defect for a 10-inch tree.

*Range: 0.0 - 1.0, Default = 0.0*

field 5: Proportion of board foot volume defect for a 15-inch tree.

*Range: 0.0 - 1.0, Default = 0.0*

field 6: Proportion of board foot volume defect for a 20-inch tree.

*Range: 0.0 - 1.0, Default = 0.0*

field 7: Proportion of board foot volume defect for a 25-inch tree. All trees greater than 25 inches dbh will be assigned this value. *Range: 0.0 - 1.0, Default = 0.0*

Note: For any particular species this keyword remains in effect until a subsequent use of the keyword changes the multiplier for that species.

Note: If used inside an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, BFDEFECT will not affect cycle 0 volumes.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. In the [PARMS](#_PARMS_Format) format, however, 0 (zero) may not be used in the year/cycle field, and hence the defect will not affect cycle 0 volumes. See the introduction for a description of this format.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.3.3

# **BFFDLN** (<u>B</u>oard <u>F</u>oot <u>F</u>orm and <u>D</u>efect <u>L</u>og linear equation)

Variants: All

Related keywords: [MCFDLN](#_MCFDLN_(Merchantable_Cubic), [BFDEFECT](#_BFDEFECT_(Board_Foot), [BFVOLUME](#_BFVOLUME_(Board_Foot)

Sets species specific parameters for a log‑linear form and defect correction equation for volume estimates. In the western half of the US this affects the calculation of board foot volume. ([MCFDLN](#_MCFDLN_(Merchantable_Cubic) affects calculation of merchantable cubic foot volume.) In the eastern half of the US this affects the calculation of board foot and cubic foot volumes for the sawlog portion of the trees. (BFFDLN affects calculation of pulpwood volumes.)

ln(Vs) = a0 + a1ln(V0)

where Vs = volume corrected for form and defect

V0 = uncorrected volume

a0 = intercept (field 2 value)

a1 = slope coefficient (field 3 value)

field 1: Species code whose equation is to be changed. *Default = All*

field 2: Intercept term for log‑linear equation (a0). *Default = 0*

field 3: Slope coefficient for log‑linear equation (a1). *Default = 1*

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 24

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.3.3

# **BFVOLUME** (<u>B</u>oard <u>F</u>oot <u>VOLUME</u>)

Variants: All

Related keywords: [VOLUME](#_VOLUME_(cubic_foot), [BFDEFECT](#_BFDEFECT_(Board_Foot), [BFFDLN](#_BFFDLN_(Board_Foot), [VOLEQNUM](#_VOLEQNUM_(VOLUME_EQuation)

In the western half of the US, this keyword sets the merchantability limits for board foot volume calculation. In the eastern half of the US, this keyword sets the merchantability limits for sawlog volume calculation for both cubic foot and board foot volumes. (The merchantability limits for the pulpwood portion of sawlog trees can be set with the [VOLUME](#_VOLUME_(cubic_foot) keyword.)

field 1: Year or cycle number in which merchantability limits take effect. Once in effect they remain in effect until replaced. To affect the first cycle you must specify a 0 in field 1. *Default = 0 (all cycles)*

field 2: Species code for which the limits are to be changed. *Default = All*

field 3: Minimum merchantable DBH in inches.

*Defaults by variant. See variant overview documentation.*

field 4: Minimum top diameter.

*Defaults by variant. See variant overview documentation.*

field 5: Stump height in feet. *Default = 1.0*

field 6: Form class (used only in Region 6). For 16-foot log equations this is the diameter inside bark at a height of 17.3 feet as a percentage of outside-bark DBH. For 32-foot log equations this is the diameter inside bark at a height of 33.6 feet as a percentage of outside-bark DBH.

*Defaults by variant. See variant overview documentation*

field 7: Volume calculation method. *Default = 6*.

5 *CS, LS, NE Gevorkiantz volume equations*

6 National Volume Estimator Library equations (Scribner).

9 International 1/4-inch equations (western variants only).

Note: For any particular species this keyword remains in effect until a subsequent use of the keyword changes the limits for that species.

Note: Form class for a species is the same regardless of whether cubic foot or board foot volume is being calculated. If both BFVOLUME and [VOLUME](#_VOLUME_(cubic_foot) are specified, the form class (field 6) used for both will be that specified on the keyword entered last.

Caution: If date or cycle are specified (i.e. the date/cycle is not blank and it is not zero) and the species field is either ALL or a species group, then you should be sure to specify all of the remaining parameters. If you do not specify all of the remaining parameters, then the default parameters for the other fields are the default parameters for species 1 (if ALL is selected) or species group 1 (species group is selected).

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 22

GTR INT-208, Supplement to the User’s Guide..., p. 18

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.3.1

# **BRUST** (white pine <u>B</u>lister <u>RUST</u> model initialization)

Variants: Specialized variants that include the blister rust disease model

Related keywords: [END](#_END_(END_special)

Signifies the beginning of keywords for the blister rust disease extension. This extension has its own unique set of keywords. The BRUST keyword sequence must be terminated with an [END](#_END_(END_special) keyword. All keywords between BRUST and [END](#_END_(END_special) are considered blister rust disease extension keywords.

No fields are associated with this keyword.

References: White Pine Blister Rust Impact Model Keyword Reference Guide

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 8.5

# **CALBSTAT** (<u>CAL</u>i<u>B</u>ration <u>STAT</u>istics)

Variants: All

Related keywords: [BAIMULT](#_BAIMULT_(Basal_Area), [NOCALIB](#_NOCALIB_(NO_CALIBration), [OPEN](#_OPEN_(OPEN_a)

Outputs calibration scale factors computed from the input data to a file for later processing. By default the output will be written to unit 13. If desired, however, users can direct the output to a different file using a combination of the CALBSTAT and [OPEN](#_OPEN_(OPEN_a) keywords.

field 1: File reference number for CALBSTAT output file. File reference numbers are a mechanism that FVS uses to keep track of external files. Numbers less than 30 are reserved for files that are currently used by FVS. *Default = 13*

field 2: Minimum number of diameter growth observations per species to calibrate the large tree diameter increment model. *Default = 5 (minimum value is 3)*

field 3: Minimum number of height growth observations per species to calibrate the small tree height increment model. *Default = 5 (minimum value is 3)*

Example sending output to new unit:

CALBSTAT 50

OPEN 50

CALIBRAT.TXT

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.3.3.3

# **CCADJ** (<u>C</u>anopy <u>C</u>over <u>Adj</u>ust)

Variants: All

Related keywords: [STRCLASS](#_STRCLASS_(STRuctural_CLASS)), [THINCC](#_THINCC_(THIN_to)

Allows the user to adjust the percent canopy cover (%CC) overlap correction assumption for clumpy or uniformly-spaced stands. The FVS default overlap correction assumption is for randomly distributed trees. CCADJ allows users to adjust estimates of %CC for a range of non-random spatial distributions. This keyword can also be used in conjunction with the THINCC keyword for changing the removals for a given %CC target calculation.

field 1: Year or cycle in which the adjustment is applied. See notes below for implication of changing the year or cycle. *Default = blank*

field 2: Overlap correction coefficient. *Reference Range: 0.1 – 5.0, Default = 1.0 (no change)*

Note: If this keyword is meant to correct for systematic bias (FVS assumes random placement of trees, but the stand has a more uniform distribution like a planted stand), applying the overlap correction at inventory (leaving field 1 blank) will initialize the stand canopy cover with the specified overlap correction (field 2).

Note: If this keyword is meant to change the distribution following a management or disturbance event, the schedule year should be the same year as the event, as it will only effect end of cycle estimate of canopy cover. This can lead to odd results if you apply it in a year that does not have a management or disturbance event that would affect overlap, as it will still apply the correction whether or not a management or disturbance keyword is included that cycle.

Note: This keyword remains in effect until a subsequent use of the keyword changes the overlap correction coefficient.

Reference: SRS-GTR-224, Proceeding of the 2017 Forest Vegetation Simulator (FVS) e-Conference. p.57-59

RMRS-GTR-24, Percent Canopy Cover and Stand Structure Statistics ...

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.3.3.3

# **CHEAPO** (<u>C</u>omputer <u>H</u>elp for the <u>E</u>conomic <u>A</u>nalysis of <u>P</u>rognosis <u>O</u>utput)

Variants: All

Related keywords: [OPEN](#_OPEN_(OPEN_a)

Generates an output file required for subsequent execution of the CHEAPO II economic analysis program. By default the output will be written to unit 13, which is the same unit used for the [[CALBSTAT](#_CALBSTAT_(CALiBration_STATistics))](#_CALBSTAT_(CALiBration_STATistics)) output. , If desired, however, users can direct the output to a different file using a combination of the CHEAPO and [OPEN](#_OPEN_(OPEN_a) keywords.

field 1: File reference number for CHEAPO output file. File reference numbers are a mechanism that FVS uses to keep track of external files. Numbers less than 30 are reserved for files that are currently used by FVS. *Default = 13*

Example sending output to new unit:

CHEAPO 40

OPEN 40

CHEAPDAT.TXT

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 86

GTR INT-211, User’s Guide to CHEAPO II..., p. 21

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 8.10

# **CLOSE** (<u>CLOSE</u> a file)

Variants: All

Related keywords: [ADDFILE](#_ADDFILE_(ADD_a), [OPEN](#_OPEN_(OPEN_a)

Closes a file that was opened using an [OPEN](#_OPEN_(OPEN_a) keyword.

field 1: File reference number for the file to be closed. This number must match the file reference number from the appropriate [OPEN](#_OPEN_(OPEN_a) keyword. File reference numbers are a mechanism that FVS uses to keep track of external files. Numbers less than 30 are reserved for files that are currently used by FVS.

field 2: File reference number for the calling or parent keyword file to which processing will be returned when an ADDFILE is nested within an ADDFILE. This field is not needed if nested ADDFILE statements are not being used. The default file reference number is to return to the main keyword file.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.2.4

# **COMMENT** (insert <u>COMMENT</u>s)

Variants: All

Related keywords: [END](#_END_(END_special)

Enters comments into the sequence of FVS keywords. The comments can be entered on as many supplemental records as desired. Signify the end of the comment with an [END](#_END_(END_special) keyword. Including this set of keywords will not affect a simulation, however they are printed to the main FVS output file. Keywords contained in a COMMENT block are ignored in the simulation. To test the effects of omitting a keyword, a COMMENT keyword can be placed before it, and an [END](#_END_(END_special) keyword can be placed after it.

No fields are associated with this keyword, however supplemental records are used.

Supplemental Record(s):

Comments are entered in Columns 1‑80 on as many supplemental records as desired. The [END](#_END_(END_special) keyword must follow the last supplemental record.

Example:

COMMENT

This is a comment. Nothing placed

in here will affect the simulation.

END

Note: An alternative method for creating a single-line comment is to place an asterisk (\*) as the first character of a record. With few exceptions, that record is then ignored by FVS regardless of its placement in the keyword sequence. Records beginning with an exclamation point (!) are also ignored by FVS, but are not written to the output file.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.1.3.2

# **COMPRESS** (<u>COMPRESS</u> the treelist)

Variants: All

Related keywords: [TREELIST](#_TREELIST_(TREELIST_file)), [CUTLIST](#_CUTLIST_(CUT_tree), [NOTRIPLE](#_NOTRIPLE_(NO_tree), [NUMTRIP](#_NUMTRIP_(NUMber_of)

Reduces the number of tree records stored inside FVS. This is done automatically when room is needed to store new trees created by the Regeneration Establishment process. You can use this keyword manually to schedule the tree compression process. When there are many records in the treelist, the record compression algorithm can reduce the number of records while minimizing loss of within‑stand variation in tree attributes that are important for increment prediction. As a result, the number of calculations required for the projection can be reduced without significant bias.

Two methods are used to form new tree records. First, groups are formed by finding the largest differences between trees. Then those groups with the greatest variation are split to form new groups. Field 3 controls the weight given to these methods.

field 1: Year or cycle in which the treelist will be compressed. *Default = 1*

field 2: Number of tree records that will remain following compression. *Default = 675*

field 3: Percentage of new records that will be determined by finding the largest differences between trees. Remainder of records will result from splitting the classes with the greatest variation. *Range: 0 - 100, Default = 50*

field 4: Debug flag. Any numeric entry in this field will cause (a great deal of) output to be printed for the compression algorithm. *Default = blank (no debug output)*

Note: If COMPRESS is specified for the first or second cycle, the tree records will be subsequently tripled unless [NOTRIPLE](#_NOTRIPLE_(NO_tree) or [NUMTRIP](#_NUMTRIP_(NUMber_of) is used to suppress the record tripling feature.

Caution: Compression can cause trees to loose their plot specific identity, as they may be combined with “like” trees from a neighbor plot.

References: GTR INT-208, Supplement to the User’s Guide..., p. 19

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 7.6

# **COMPUTE** (<u>COMPUTE</u> variables)

Variants: All

Related keywords: [END](#_END_(END_special)

The COMPUTE keyword is part of the FVS Event Monitor. It allows the user to define variables expressed as mathematical expressions containing constants, Event Monitor variables, Event Monitor functions, and variables previously defined using the COMPUTE keyword. The value of variables may depend on events such as harvest or mortality. Variables are defined using mathematical equations in supplemental records, which are up to 80 characters long. Each subsequent variable must be defined on a subsequent record. The [END](#_END_(END_special) keyword must follow the last supplemental record.

field 1: Year or cycle in which the expressions are to be evaluated. Enter 0 (zero) to have the expressions evaluated for every cycle. *Default = 1*

Supplemental record(s):

Contains mathematical expressions that consist of a user-defined variable name on the left of the equal sign, and a value or expression that is already defined on the right of the equal sign. An [END](#_END_(END_special) keyword must be included after the last supplemental record.

Note: Expressions may contain up to 2000 characters. If an expression is too long to fit on a single 80-character record, use an ampersand (&) at the end of the record to indicate that the expression is continued on the next record.

Note: A variable name may no longer than eight characters and may not be a word that is reserved for use by FVS or the Event Monitor.

Note: A maximum of 200 variables may be computed for any simulation. This is the total number of all variables computed by all COMPUTE keywords.

Example:

COMPUTE 0

PI = 3.1416

REMVD\_BA = BBA - ABA

DF\_TPA = SPMCDBH(1,DF,0)

END

In the above example, BBA and ABA are Event Monitor variables, and SPMCDBH( ) is an Event Monitor function. (See GTR INT-275, User’s Guide to the Event Monitor)

References: GTR INT-275, User’s Guide to the Event Monitor..., p. 5

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.6

# **COVER** (initialize <u>COVER</u> extension)

Variants: BM, CI, EC, EM, KT, NC, NI, SO, TT, UT, WS

Related keywords: [END](#_END_(END_special)

Signifies the beginning of keywords for the Cover extension. The Cover extension has its own unique set of keywords (see GTR INT-190, Cover: A User’s Guide...) The COVER keyword sequence must be terminated with an [END](#_END_(END_special) keyword. All keywords between COVER and [END](#_END_(END_special) are considered Cover extension keywords.

field 1: Year or cycle in which COVER calculations begin. COVER calculations will also be performed in all cycles after the one specified. *Default = 1*

field 2: File reference number for COVER output file. If this field is left blank the COVER report will be written to the FVS output file. If the value is any number other than 16 or blank, then an associated COVER output file needs to be opened with [OPEN](#_OPEN_(OPEN_a) keyword. *Default = 16*

Example sending output to new unit:

OPEN 36

COVER.OUT

COVER 0 36

END

References: GTR INT-190, Cover: A User’s Guide..., p. 14

GTR INT-208, Supplement to the User’s Guide..., p. 18

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 8.1

# **CRNMULT** (<u>CR</u>ow<u>N</u> change <u>MULT</u>iplier)

Variants: All except CI, KT, and NI

Related keywords: [HTGMULT](#_HTGMULT_(HeighT_Growth), [HTGSTOP](#_HTGSTOP_(HeighT_Growth), [PRUNE](#_PRUNE_(PRUNE_trees))

Alters the change in crown ratio by a specified proportion. In the case of crown dubbing (generating values for missing crown ratio data), the dubbed crown ratio is adjusted by the specified proportion. This multiplier may affect diameter and height growth in subsequent cycles.

field 1: Year or cycle in which the multiplier is applied. Once in effect it remains in effect until replaced by a subsequent multiplier. *Default = 1*

field 2: Species code to which the multiplier is applied. *Default = All*

field 3: Multiplier value. For example, a value of 1.1 will make the crown ratio change 10% greater. A tree that had a crown ratio going from 90 to 80 (a 10% change) would now have a crown going from 90 to 79 (an 11% change, or 1.1 times the original change). When applied to dubbed crowns, the initial crown ratio is multiplied by this value. *Default = 1.0*

field 4: Minimum dbh in inches (greater than or equal to) to which the multiplier is applied. *Default = 0.0*

field 5: Maximum dbh in inches (less than) to which the multiplier is applied.

Default = 999.0

field 6: Dubbing flag. *Default =0*

0 Applied to the crown change and dubbed crowns.

Positive number Applied to dubbed crowns only.

Note: For any particular species this keyword remains in effect until a subsequent use of the keyword changes the multiplier for that species.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.5.2.4

# **CUTEFF** (<u>CUT</u>ting <u>EFF</u>iciency)

Variants: All

Related keywords: THINxxx

Sets the proportion of trees represented by a tree record that can be removed in any thinning. For example, if a tree record that is designated for removal in a thinning represents 200 trees per acre and the cutting efficiency is set to 0.8, 160 trees per acre (80%) will be removed from that record leaving 40 trees per acre standing. The CUTEFF keyword alone does not remove trees. It must be followed by one or more thinning keywords that, in conjunction with the CUTEFF keyword, determine the number of trees to be removed from each tree record.

field 1: Cutting efficiency. This is the proportion of the sample trees represented by a ecord that is removed if a tree is designated for removal in a thinning.

*Range: 0.01 - 1.0, Default = 1.0*

Note: Keyword order is important. The cutting efficiency specified on a CUTEFF keyword only applies to thinning keywords that follow the CUTEFF keyword.

Note: Multiple CUTEFF keywords can be included in a keyword set.

Note: There is also a cutting efficiency parameter on each thinning request keyword. If a value is specified as part of a thinning request, it only applies to that thinning request. If a value is not supplied with the thinning request, the cutting efficiency parameter associated with the CUTEFF keyword will be used.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 21

GTR INT-208, Supplement to the User’s Guide..., p. 15

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.2.2

# **CUTLIST** (<u>CUT</u> tree tree<u>LIST</u>)

Variants: All

Related keywords: [TREELIST](#_TREELIST_(TREELIST_file)), [FVSSTAND](#_FVSSTAND_(FVS_STAND), THINxxx, [OPEN](#_OPEN_(OPEN_a)

Prints a list of all harvested tree records to an output treelist file. CUTLIST output is integrated into the same output file produced using the [TREELIST](#_TREELIST_(TREELIST_file)) keyword.

field 1: Year or cycle in which cut list is to be printed. Enter 0 (zero) to print output for every cycle in which a thinning occurs. *Default = 1*

field 2: File reference number for the output file. File reference numbers are a mechanism that FVS uses to keep track of external files. Numbers less than 30 are reserved for files that are currently used by FVS. *Default = 3*

field 3: Value to determine which header will be printed with the cut list. *Default = 0*

1 Encoded header record (machine readable, -999)

0 Header records describing each column (human readable)

‑1 Suppress all headers

field 4: *Not used*

field 5: *Not used*

field 6: Cutlist format. *Default = 0*

0 Current format

1 Old version 6.1 format

Note: If the CUTLIST output is intended for use with post-processing programs, it must contain headers and be in the current format (i.e. field 3 must be 0, 1, or blank, and field 6 must be 0 or blank).

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 21

GTR INT-208, Supplement to the User’s Guide..., p. 15

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.3.3.1

# **CWEQN** (<u>C</u>rown <u>W</u>idth <u>EQu</u>atioN)

Variants: All

Related keywords: [FIXCW](#_FIXCW_(FIXed_Crown)

Sets species specific parameters for the crown width equations used for the specified species.

CW = b0 + b1D + b2Db3

Where CW = crown width

D = tree diameter at breast height (dbh)

field 1: Species code whose equations are to be changed. *Default = All*

field 2: Transition size. If DBH for a particular tree is less than this value, coefficients from the first four fields of the supplemental record are used in the calculations. If greater than this value, coefficients from the last four fields of the supplemental record are used.

*Default = 0*

Supplemental Records:

Small‑tree coefficients b0 to b3 are entered in the first four 10‑column fields of the supplemental record (fields 1 through 4). Large‑tree coefficients b0 to b3 are entered in the last four 10‑column fields of the second supplemental record (fields 5 through 8).

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.3.2

# **CYCLEAT** (<u>CYCLE</u> boundary occurs <u>AT</u>)

Variants: All

Related keywords: [TIMEINT](#_TIMEINT_(TIME_), [NUMCYLE](#_NUMCYCLE_(NUMber_of)

Sets a cycle boundary to occur at the year specified in field 1. It is possible to have many CycleAt keywords in the same simulation.

field 1: Year *Default = none*

Note: If the year is prior to the inventory year, beyond the end of the simulation or the year is already a cycle boundary, no action is taken.

# **DATABASE** (<u>DATABASE</u> Initialization)

Variants: All

Related keywords: [END](#_END_(END_special)

Signifies the beginning of keywords for the Database Extension. This extension has its own unique set of keywords. The DATABASE keyword sequence must be terminated with an [END](#_END_(END_special) keyword. All keywords between DATABASE and [END](#_END_(END_special) are considered Database extension keywords.

No fields are associated with this keyword.

Reference: A Users Guide to the Database Extension of the Forest Vegetation Simulator, s.4.0

# **DATASCRN** (<u>DATA</u> <u>SCR</u>ee<u>N</u>)

Variants: All

Related keywords: [TREEDATA](#_TREEDATA_(TREE_DATA)

Allows users to screen out input data by diameter or species.

field 1: Smallest dbh in inches to be considered for input (greater than or equal).

*Default = 0.0*

field 2: Largest dbh in inches to be considered for input (less than). *Default = 999.0*

field 3: Species code. All tree records with this species code outside the defined diameter range will be ignored.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.2.3.1

Note: This keyword cannot be used in the Event Monitor.

Note: This keyword must precede the TREEDATA keyword and can not be used in conjunction with the TREEDATA keyword to screen multiple species. It must also precede the DSNIN, TREESQL and STANDSQL keywords if data is being read in from a database.

# **DEBUG** (print <u>DEBUG</u> output)

Variants: All

Related keywords: [OPEN](#_OPEN_(OPEN_a), [NODEBUG](#_NODEBUG_(NO_DEBUG)

Used to request printing of program calculations as they occur. DO NOT use this keyword unless you have a good reason because a tremendous amount of output results.

field 1: Cycle for which full program debug output is requested. If blank or 0, debug output will be printed for all cycles. *Default = 0*

field 2: If debugs are desired for specific subroutines, a non-zero number is entered and the specific subroutines are listed on the supplemental record. A blank or no entry will result in debugs for all subroutines.  *Default = blank*

field 3: File reference number for DEBUG output file. File reference numbers are a mechanism that FVS uses to keep track of external files. Numbers less than 30 are reserved for files that are currently used by FVS. The default is to send the output to unit 16, which is the main FVS output file. *Default = 16*

Supplemental record:

Specify the name of the subroutine to debug. If you list more than one subroutine, they need to be space delimited.

Caution: This keyword generates a tremendous amount of output.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 9.3

# **DEFECT** (<u>DEFECT</u>)

Variants: All

Related keywords: [BFDEFECT](#_BFDEFECT_(Board_Foot), [MCDEFECT](#_MCDEFECT_(Merchantable_Cubic)

Specifies species-specific defect corrections. In the eastern half of the US this keyword specifies defect for pulpwood and/or sawlog volume estimates. In the western half of the US this keyword specifies defect for merchantable cubic and/or board foot volume. Defect percentages are specified by species for the following eight dbh’s: 5, 10, 15, 20, 25, 30, 35, 40 inches. For example, if the expected defect correction for a five-inch tree is 35 percent, a value of .35 would be entered in field 1 of the supplemental record. A linear interpolation function calculates the defect percentage for the specified dbh of the tree. For trees smaller than 5 inches dbh or greater than 40 inches dbh, a constant value for defect correction is applied based on the values in fields 1 and 8 respectively of the supplemental record.

field 1: Type of volume affected. *Default = 0*

*Eastern Variants*

0 Both pulpwood and sawlog

1. Just pulpwood
2. Just sawlog

*Western Variants*

0 Both merchantable cubic and board foot

1 Just merchantable cubic

2 Just merchantable board foot

field 2: Species code that will be affected by the defect corrections.

*Default = All*

field 3: Specifies whether the defect read in from the input tree record will be used.

0 volume defect percentages read as part of the input data will be used to calculate volume. *Default = 0*

1 ≤ volume defect percentages read as part of the input data will not be used to calculate volume.

Supplemental Records:

Defect values are entered in the first eight 10‑column fields of the supplemental record (fields 1 through 8). Field 1 of the supplemental record assigns a defect value to the 5 inch dbh class. Field 2 of the supplemental record assigns a defect value to the 10 inch dbh class. The following fields assign a defect value to their respective dbh class.

*Range: 0.0 - 1.0, Default = 0.0*

Note: Once applied to a simulation this keyword affects all cycles. To schedule defect for a specific cycle, use the MCDEFECT or BFDEFECT keywords. This keyword may be used multiple times in the same simulation, to specify defect for pulpwood or merchantable cubic foot volume, defect for sawlog or board foot volume, and/or to specify different factors by species.

Note: This keyword cannot be used in the Event Monitor.

Caution: Defect applied to cubic foot volume will not have any effect when the FIAVBC keyword is in use.

# **DELOTAB** (<u>DEL</u>ete <u>O</u>utput <u>TAB</u>les)

Variants: All

Used to selectively delete tables that are, by default, part of the standard FVS output.

field 1: Code for table that is to be deleted. *Default = blank (no tables deleted)*

1 = delete the stand composition table.

2 = delete the selected sample tree table.

3 = delete the summary statistics table.

4 = delete the activity summary table

NOTE: Multiple DELOTAB keywords are required to delete two or more portions of the FVS output.

NOTE: If field one is blank, the Standard FVS output will be produced.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.3.4

# **DESIGN** (sampling <u>DESIGN</u>)

Variants: All

Related keywords: [STDINFO](#_STDINFO_(STanD_INFOrmation)), [STDIDENT](#_STDIDENT_(STanD_IDENTification)), [TFIXAREA](#_TFIXAREA_(Total_FIXed)

Specifies information about the sampling design used to collect tree data.

field 1: A positive value is interpreted as a basal area factor for horizontal angle gauge (prism). A negative value is interpreted as the inverse of a large‑tree fixed area plot. *Default = 40*

field 2: Inverse of the small‑tree fixed area plot (e.g. if the fixed area plot is 1/100 acre, enter 100 in this field). *Default = 300*

field 3: Break point diameter in inches. Any trees smaller than this diameter were sampled using the small-tree fixed area plots. Trees with diameters greater than or equal to this diameter were sampled using the specified BAF or large-tree fixed area plots. *Default = 5.0*

field 4: Number of plots in the stand. If blank or 0 (zero), the number of plots in the stand is determined by counting the numbers of unique plot identification codes on the tree record data. *Default = blank (FVS count)*

field 5: Number of nonstockable plots in the stand (e.g. plots fell on a road or rock outcrop). If blank, count nonstockable plots on tree records (value class = 8). *Default = blank (FVS count)*

field 6: Sampling weight (usually acres) for the stand. This weight does not affect the projection, but is used in programs that aggregate projections to produce a composite yield table. *Default = blank (number of plots)*

field 7: Proportion of the stand considered stockable. A value entered in this field will override the calculation based on number of plots stockable versus total number of plots. *Range: 0 - 1.0, Default = 1.0*

Note: If small tree data are collected on a cluster of fixed plots instead of a single fixed plot, either the value in field 2 should reflect the total fixed plot area, or the [TFIXAREA](#_TFIXAREA_(Total_FIXed) keyword should be included after the DESIGN keyword to reflect the total fixed plot area.

Note: The value entered in field 5 for sampling weight is available in the event monitor in the variable SAMPWT. Refer to the User’s Guide to the Event Monitor.

Note: If the value entered for field 7 is greater than 1 it will be assumed to be a percentage rather than a proportion and the value will be divided by 100.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 10

GTR INT-208, Supplement to the User’s Guide..., p. 15

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.1.2.3

# **DFB** (<u>D</u>ouglas-<u>F</u>ir <u>B</u>eetle model initialization)

Variants: Specialized variants that include the Douglas-fir beetle model

Related keywords: [END](#_END_(END_special)

Signifies the beginning of keywords for the douglas-fir beetle extension. This extension has its own unique set of keywords. The DFB keyword sequence must be terminated with an [END](#_END_(END_special) keyword. All keywords between DFB and [END](#_END_(END_special) are considered Douglas-fir beetle extension keywords.

No fields are associated with this keyword.

References: Douglas-fir Beetle Impact Model Keyword Reference Guide

GTR-RM-000, User's Guide to the Douglas-fir Beetle Impact Model

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 8.6.1

# **DFTM** (<u>D</u>ouglas-<u>F</u>ir <u>T</u>ussock <u>M</u>oth model initialization)

Variants: Specialized variants that include the Douglas-fir tussock moth model

Related keywords: [END](#_END_(END_special)

Signifies the beginning of keywords for the Douglas-fir tussock moth extension. This extension has its own unique set of keywords. The DFTM keyword sequence must be terminated with an [END](#_END_(END_special) keyword. All keywords between DFTM and [END](#_END_(END_special) are considered Douglas-fir tussock moth extension keywords.

No fields are associated with this keyword.

References: Douglas-fir Tussock Moth Outbreak Model Keyword Reference Guide

GTR-INT-127, A User's Guide to the Combined Stand Prognosis and Douglas-fir Tussock Moth Outbreak Model

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 8.7

# **DGSTDEV** (<u>D</u>iameter <u>G</u>rowth <u>ST</u>andard <u>DEV</u>iation)

Variants: All

Related keywords: [NUMTRIP](#_NUMTRIP_(NUMber_of), [NOTRIPLE](#_NOTRIPLE_(NO_tree)

Changes the limits of the normal distribution from which random errors are drawn for diameter increment predictions. This region is, by default, bounded by ±2 standard deviations.

field 1: Number of standard deviations that defines the bounds of distribution. If set to a value less than 1.0, random error will be completely suppressed. *Default = 2.0*

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 93

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.4.2

# **ECHO** (<u>ECHO</u>)

Variants: All

Related keywords: [NOECHO](#_NOECHO_(NO_ECHO))

Turns the echoing of keyword information, read on input, to the Options Selected by Input table of the Main Output file, back on, if it was turned off with the NOECHO keyword.

No fields are associated with this keyword.

# **ECHOSUM** (<u>ECHO</u> the <u>SUM</u>mary table)

Variants: All

Related keywords: [[CALBSTAT](#_CALBSTAT_(CALiBration_STATistics))](#_CALBSTAT_(CALiBration_STATistics)), [NOSUM](#_NOSUM_(NO_SUMmary)

Specifies that the summary statistics table from the standard FVS output file be written to a separate file. The summary statistics table will still be written to the standard FVS output file.

field 1: File reference number for the output file. File reference numbers are a mechanism that FVS uses to keep track of external files. Numbers less than 30 are reserved for files that are currently used by FVS. *Default = 4*

Note: This keyword is required in order to use the “Average Summary Table” post processor. This post processor uses the ECHOSUM output file as input.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 48

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.3.3.2

# **END** (<u>END</u> special sequence)

Variants: All

Related keywords: [COMMENT](#_COMMENT_(insert_COMMENTs)), [COMPUTE](#_COMPUTE_(COMPUTE_variables)), COVER, [ESTAB](#_ESTAB_(ESTABlishment_model)), [FMIN](#_FMIN_(Fire_Model)

Signifies the end of a special keyword sequence. Essentially, the END keyword returns control of the simulation to the base FVS system after an extension (such as the Establishment Model) has been called.

No fields are associated with this keyword.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 85

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, ss. 4.1.3.2,

5.4.3, 5.6

# **ENDFILE** (<u>END</u> of <u>FILE</u>)

Variants: All

Related keywords: [OPEN](#_OPEN_(OPEN_a)

Issues an end-of-file command for the specified file.

field 1: File reference number for the file to be terminated. This number must match the file reference number from the appropriate [OPEN](#_OPEN_(OPEN_a) keyword. File reference numbers are a mechanism that FVS uses to keep track of external files. Numbers less than 30 are reserved for files that are currently used by FVS.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.2.4

# **ENDIF** (<u>END</u> an <u>IF</u>-then block)

Variants: All

Related keywords: [IF](#_IF_(begin_IF-then), [THEN](#_THEN_(schedule_if-THEN), [ALSOTRY](#_ALSOTRY_(ALSO_TRY)

Signifies the end of an Event Monitor [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN) block. Activities that follow the ENDIF keyword are scheduled normally.

No fields are associated with this keyword.

References: GTR INT-275, User’s Guide to the Event Monitor..., p. 2

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.5.1

# **ESTAB** (<u>ESTAB</u>lishment model)

Variants: All

Related keywords: [END](#_END_(END_special)

Signifies the beginning of keywords for the Regeneration Establishment extension. This extension has its own unique set of keywords (see the Establishment keyword descriptions at the end of this guide, and GTR INT-279, User’s Guide to the Regeneration Establishment Model...) The ESTAB keyword sequence must be terminated with an [END](#_END_(END_special) keyword. All keywords between ESTAB and [END](#_END_(END_special) are considered Establishment extension keywords.

field 1: Year or cycle of disturbance or beginning of regeneration. The seedling tally sequence will begin in this year. *Default = 0 (all cycles)*

Caution: Some care is necessary when entering a disturbance date to insure that the regeneration establishment model is called at the correct time. Pay close attention to cycle boundaries when entering disturbance date.

Caution: If the ESTAB keyword is embedded in an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, year of disturbance (field 1) is interpreted as years from the time the condition is true until establishment, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after condition is true to establish the stand.)

Note: The Regeneration Establishment extension keyword sequence must begin with an ESTAB keyword and end with an [END](#_END_(END_special) keyword; all keywords contained within this sequence are considered Regeneration Establishment keywords.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 86

GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 11

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3

# **FERTILIZ** (<u>FERTILIZ</u>e)

Variants: All

Related keywords: [HTGMULT](#_HTGMULT_(HeighT_Growth), [BAIMULT](#_BAIMULT_(Basal_Area)

Simulates application of fertilizer to the stand. Rates of application can be entered for nitrogen, phosphorus, and potassium. Currently, however, only applications of 200 pounds of nitrogen per acre are represented by the model. User supplied rates for all three nutrients are ignored. The effects of fertilization are accounted for after growth and mortality have been predicted, so only subsequent cycles are affected.

field 1: Year or cycle of fertilizer application. *Default = 1*

field 2: Rate of application for nitrogen in pounds per acre. *Currently fixed at 200*

field 3: Rate of application for phosphorus in pounds per acre. *Currently fixed at 0*

field 4: Rate of application for potassium in pounds per acre. *Currently fixed at 0*

field 5: Multiplier for modifying the predicted response to fertilizer application (e.g. 1.1 results in a 10% increase over the predicted fertilization response). *Default = 1.0*

Note: The effects are based on data from northern Idaho.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

Caution: If this keyword is embedded in an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, field 1 is interpreted as years from the time the event is true until implementation, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after event is true to fertilize the stand.)

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.5.2.4

# **FIAVBC** (<u>FIA</u> <u>V</u>olume, <u>B</u>iomass, <u>C</u>arbon)

Variants: All

Related keywords: [DEFECT,](#_CWEQN_(Crown_Width) [MCDEFECT](#_MCDEFECT_(Merchantable_Cubic), [MCFDLN](#_MCFDLN_(Merchantable_Cubic), [VOLEQNUM,](#_VOLEQNUM_(VOLUME_EQuation) [VOLUME](#_VOLUME_(cubic_foot), LOCATE, STDINFO

Used to activate FIA cubic foot volume, biomass, and carbon computation methods. This keyword allows users to produce stand (FVS\_FIAVBC\_Summary) and tree (FVS\_FIAVBC\_TreeList, FVS\_FIAVBC\_CutList, FVS\_FIAVBC\_ATRTList) level output tables that contain cubic foot volume, biomass, and carbon attributes. Additionally, users may request pre-defined stand level measures of biomass and carbon in the Event Monitor when this keyword is invoked.

Users may set the merchantability specifications for FIA merchantable volume, biomass, and carbon attributes. By default, the national FIA merchantability specifications or regional NFS merchantability specifications are globally set for all species in the variant using field 1. Custom merchantability specifications for select species in the variant can be set using fields 3 – 9.

field 1: Default global merchantability specifications. *Default = 0*

0 FIA specifications.

1 Regional NFS specifications.

field 2: *No longer used*.

field 3: Species code to which the following fields will be applied. *Default = All*

field 4: Minimum merchantable DBH in inches. *Default = 5.0*

field 5: Minimum top diameter in inches. *Default = 4.0*

field 6: Stump height in feet. *Default = 1.0*

field 7: Minimum sawlog DBH in inches. *Defaults: Softwoods = 9.0, Hardwoods = 11.0*

field 8: Minimum sawlog top diameter in inches. *Defaults: Softwoods = 7.0, Hardwoods = 9.0*

field 9: Sawlog stump height in feet. *Default = 1.0*

Note: In addition to setting merchantability specifications, field 1 fulfills two other roles. First, it determines how all merchantable cubic foot volume (as well as merchantable biomass, and carbon) will be calculated. When the value of field 1 is 0 (FIA), merchantable volume will be calculated as the total volume from stump height to merchantable height. When the value is 1 (NFS), merchantable volume will be calculated from the sum of log volumes from stump height to merchantable height where log trim is removed. Second, when the value of field 1 is 0 (FIA), user defined top diameters will be interpreted as outside bark diameters and when the value of field 2 is 1 (NFS), user defined top diameters will be interpreted as inside bark diameters.

Note: When assuming the regional NFS merchantable specifications in field 1, this keyword must follow any MODTYPE and STDINFO keywords. Similarly, it must also follow DSNIN, TREESQL and STANDSQL keywords if data is being read in from a database.

Caution: This keyword cannot be scheduled and will be applied to the entire simulation.
Users cannot modify cubic foot volume calculations with the DEFECT, MCDEFECT, MCFDLN, VOLEQNUM, and VOLUME keywords when this keyword is in effect

Caution: Any value entered in fields 4 - 9 will override the merchantability limit initially
defined by the default global merchantability specifications option (FIA or regional NFS) from field 1.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.3.1.3

# **FIXCW** (<u>FIX</u>ed <u>C</u>rown <u>W</u>idth)

Variants: All

Related keywords: [CWEQN](#_CWEQN_(Crown_Width)

Multiplier used to modify the crown width estimates for trees of the specified species within the specified diameter range.

field 1: Year or cycle in which the multiplier is applied. Enter 0 (zero) to affect all cycles. *Default = 1*

field 2: Species code to which the multiplier will be applied. *Default = All*

field 3: Multiplier value. (e.g. a value of 1.1 will increase the predicted crown width by 10%) *Range: 0.0 - 999.0, Default = 1.0 (no change from predicted value)*

field 4: Minimum dbh in inches (greater than or equal to) to which the multiplier will be applied. *Default = 0.0*

field 5: Maximum dbh in inches (less than) to which the multiplier will be applied. *Default = 999.0*

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

Caution: If this keyword is embedded in an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, field 1 is interpreted as years from the time the event is true until implementation, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after event is true to apply the multiplier.)

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.5.2.4

# **FIXDG** (<u>FIX</u>ed <u>D</u>iameter <u>G</u>rowth)

Variants: All

Related keywords: [BAIMULT](#_BAIMULT_(Basal_Area), [DGSTDEV](#_DGSTDEV_(Diameter_Growth), [READCORD](#_READCORD_(READjust_CORrection), [REGDMULT](#_REGDMULT_(REGeneration_Diameter)

Multiplier used to modify the diameter growth rate of the specified species within the specified diameter range. This modifier is applied after growth prediction calculations, therefore adjusting the diameter growth will not affect height growth for that cycle. However, the changed diameter growth and resulting change in basal area will affect mortality that cycle.

field 1: Year or cycle in which the multiplier is applied. Enter 0 (zero) to affect all cycles. *Default = 1*

field 2: Species code to which the multiplier will be applied. *Default = All*

field 3: Multiplier value. (e.g. a value of 1.1 will increase the predicted diameter growth by 10%) *Range: 0.0 - 999.0, Default = 1.0 (no change from predicted value)*

field 4: Minimum dbh in inches (greater than or equal to) to which the multiplier will be applied. *Default = 0.0*

field 5: Maximum dbh in inches (less than) to which the multiplier will be applied. *Default = 999.0*

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

Caution: Many of the predictions in FVS are based on diameter increment. Changing the diameter increment prediction also changes many of the other predictions made in the model.

Caution: If this keyword is embedded in an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, field 1 is interpreted as years from the time the event is true until implementation, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after event is true to apply the multiplier.)

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.5.2.4

# **FIXHTG** (<u>FIX</u>ed <u>H</u>eigh<u>T</u> <u>G</u>rowth)

Variants: All

Related keywords: [HTGMULT](#_HTGMULT_(HeighT_Growth), [HTGSTOP](#_HTGSTOP_(HeighT_Growth), [READCORH](#_REUSCORH_(REUSe_CORrection), [READCORR](#_READCORR_(READjust_CORrection), [REGHMULT](#_REGHMULT_(REGeneration_Height)

Multiplier used to modify the height growth rate of the specified species within the specified diameter range. This modifier is applied after growth prediction calculations, therefore adjusting the height growth will not affect diameter growth for that cycle.

field 1: Year or cycle in which the multiplier is applied. Enter 0 (zero) to affect all cycles. *Default = 1*

field 2: Species code to which the multiplier will be applied. *Default = All*

field 3: Multiplier value. (e.g. a value of 1.1 will increase the predicted height growth by 10%) *Range: 0.0 - 999.0, Default = 1.0 (no change from predicted value)*

field 4: Minimum dbh in inches (greater than or equal to) to which the multiplier will be applied. *Default = 0.0*

field 5: Maximum dbh in inches (less than) to which the multiplier will be applied. *Default = 999.0*

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

Caution: If this keyword is embedded in an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, field 1 is interpreted as years from the time the event is true until implementation, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after event is true to apply the multiplier.)

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.5.2.4

# **FIXMORT** (<u>FIX</u>ed <u>MORT</u>ality)

Variants: All

Related keywords: [MORTMULT](#_MORTMULT_(MORTality_MULTiplier)), [[BAMAX](#_BAMAX_(Basal_Area)](#_BAMAX_(Basal_Area), [SDIMAX](#_SDIMAX_(Stand_Density)

Induces mortality of a fixed proportion of the trees per acre represented by tree record of the specified species and within the specified diameter range. This can replace the predicted mortality or be in addition to the predicted mortality, or the effective mortality can be the larger of the two. For example, if a tree record represents 200 trees per acre of the designated species and within the specified diameter range, and the mortality rate is set to 0.3 and set to replace predicted mortality, 60 trees per acre (30%) from that record will die strictly due to this keyword.

field 1: Year or cycle in which specified mortality rate is to take effect. Enter 0 (zero) to affect all cycles. *Default = 1*

field 2: Species code to which mortality rate will be applied. *Default = All*

field 3: Proportion of the tree record that will be killed. *If field 6 is 0, 1 or 2, Range: 0.0 - 1.0. If field 6 is 3, then field 3 can be greater than or equal to 0. Default = 0.0, for all options.*

field 4: Minimum dbh in inches (greater than or equal to) to which the mortality rate will be applied. *Default = 0.0*

field 5: Maximum dbh in inches (less than) to which the mortality rate will be applied. *Default = 999.0*

field 6: Effective mortality. *Default = 0*

0 Replaces the mortality rate calculated in the model.

1 Added to the mortality rate calculated in the model.

2 Compared to the mortality rate calculated in the model and the larger value is used.

3 Multiply model calculated mortality by the proportion specified in field 3.

field 7: Distribution of the mortality caused by this keyword. *Default = 0*

0 Mortality applied uniformly to the specified species in the specified dbh range.

1 Mortality applied to the specified species in the specified dbh range on a point basis, first on point 1, then on point 2, etc.

10 Mortality applied to the specified species in the specified dbh range by tree diameter, smallest to largest.

11 Mortality applied to the specified species in the specified dbh range on a point basis and by size, smallest to largest on point 1, then smallest to largest on point 2, etc.

20 Mortality applied to the specified species in the specified dbh range by tree diameter, largest to smallest.

21 Mortality applied to the specified species in the specified dbh range on a point basis and by size, largest to smallest on point 1, then largest to smallest on point 2, etc.

Note: If option 1 or 2 is entered into Field 6, then Field 7 only applies to the mortality resulting from the specific FIXMORT request; it does not redistribute the model-calculated base model mortality. However, if option 0 or 3 is entered into Field 6, then it can redistribute the model-calculated mortality. Insect and pathogen or fire model mortality is not affected by this keyword.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

Caution: This keyword may override [BAMAX](#_BAMAX_(Basal_Area) and [SDIMAX](#_SDIMAX_(Stand_Density) related mortality.

Caution: If the value for field 6 is 1 the effect of multiple FIXMORT keywords is cumulative.

Caution: If this keyword is embedded in an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, field 1 is interpreted as years from the time the event is true until implementation, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after event is true to apply the mortality.)

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.5.2.4

# **FMIN** (<u>F</u>ire <u>M</u>odel <u>IN</u>itialization)

Variants: All

Related keywords: [END](#_END_(END_special)

Signifies the beginning of keywords for the Fire and Fuels Extension. This extension has its own unique set of keywords. The FMIN keyword sequence must be terminated with an [END](#_END_(END_special) keyword. All keywords between FMIN and [END](#_END_(END_special) are considered Fire extension keywords.

No fields are associated with this keyword.

Reference: Fire and Fuels Extension to the Forest Vegetation Simulator [draft]

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 8.2

# **FVSSTAND** (<u>FVS</u> <u>STAND</u> tables)

Variants: All

Related keywords: [TREELIST](#_TREELIST_(TREELIST_file)), [CUTLIST](#_CUTLIST_(CUT_tree)

Generates an output file specifically for running the FvsStand post processor. The post processor generates stand and stock tables in a variety of formats. The output file format is similar to that of the [TREELIST](#_TREELIST_(TREELIST_file)) and [CUTLIST](#_CUTLIST_(CUT_tree) keywords. In addition FVSSTAND output files contain stand structure and age data, as well as past tree measurement data.

field 1: Cycle or year in which the output is to be printed. Enter 0 (zero) to print output for all cycles. *Default = 1*

field 2: Printing of treelist information. This field only has effect on the output if field 1 is 1 or the beginning year of the simulation. *Default = 0*

0 Print cycles 0 and 1

1 Print only cycle 1, suppress cycle 0

2 Print only cycle 0, suppress cycle 1

Note: Use of this keyword does not automatically start the FvsStand post processor program.

Note: The FVSSTAND output file has the same base name as the simulation file with a *.fst* extension.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.3.3.5

# **GROWTH** (<u>GROWTH</u> measurement method)

Variants: All

Specifies the methods used to measure and input diameter growth, height growth and mortality data. This information is used by FVS to determine how to interpret the diameter increment, height increment, and tree history fields of the input tree data. Growth estimates can be either directly measured or calculated as the difference between two successive diameter or height measurements. Furthermore, the values for diameter and height can describe the tree at either the start or the end of the growth period.

field 1: Method used to measure diameter growth. *Default = 0*

0 Measured directly (e.g. increment core). Current diameter represents an outside-bark measurement at the end of growth measurement period, and diameter increment represents inside-bark previous growth.

1 Subsequent measurement. Current diameter represents an outside-bark measurement at the end of the growth measurement period, and diameter increment represents a total outside-bark diameter measurement at the beginning of the growth measurement period.

2 Measured directly (e.g. increment core). Current diameter represents an outside-bark measurement at the beginning of growth measurement period, and diameter increment represents inside-bark subsequent growth.

3 Subsequent measurement. Current diameter represents an outside-bark measurement at the beginning of the growth measurement period, and diameter increment represents a total outside-bark diameter measurement at the end of the growth measurement period.

field 2: Length of diameter growth measurement period. This is the number of years that the diameter increments in the tree data file represent. *Default = 10*

*(NC and SN default = 5)*

field 3: Method used to measure height growth. *Default = 0*

0 Measured directly. Current height represents a measurement at the end of growth measurement period, and height increment represents previous growth.

1 Subsequent measurement. Current height represents a measurement at the end of the growth measurement period, and height increment represents a total height measurement at the beginning of the growth measurement period.

2 Measured directly. Current height represents a measurement at the beginning of growth measurement period, and height increment represents subsequent growth.

3 Subsequent measurement. Current height represents a measurement at the beginning of the growth measurement period, and height increment represents a total height measurement at the end of the growth measurement period.

field 4: Length of height growth measurement period. This is the number of years that the height increments in the tree data file represent. *Default = 5*

field 5: Length of the mortality observation period in years. Trees that have been dead for this amount of time or less when inventoried are coded as recent mortality in the tree data file. Trees that have been dead for longer than this amount of time are coded as older dead. *Default = 5*

Note: When diameter or height growth is to be calculated as the difference between two successive measurements, the values recorded in the tree data file for diameter growth and/or height growth should be total heights and/or total outside bark diameters, not the difference between the two measurements.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 20

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.2.3.4

# **HTGMULT** (<u>H</u>eigh<u>T</u> <u>G</u>rowth <u>MULT</u>iplier)

Variants: All

Related keywords: [HTGSTOP](#_HTGSTOP_(HeighT_Growth), [CRNMULT](#_CRNMULT_(CRowN_change), [READCORH](#_REUSCORH_(REUSe_CORrection), [READCORR](#_READCORR_(READjust_CORrection), NOTHDREG

Multiplier to change the large tree height increment prediction. This modifies the height growth rate of trees in the large tree model. The diameter breaks that separate the large and small tree models vary by variant (Refer to the variant overview).

field 1: Year or cycle in which the multiplier is applied. Once in effect it remains in effect until replaced by a subsequent multiplier. *Default = 1*

field 2: Species code to which multiplier is applied. *Default = All*

field 3: Multiplier value (e.g. 0.9 will decrease the predicted height growth to 90% of the predicted value). *Default = 1.0 (no change from predicted value)*

Note: For any particular species this keyword remains in effect until a subsequent use of the keyword changes the multiplier for that species.

Note: Large tree height growth is weighted with small tree height growth for a portion of the diameter range, so both HTGMULT and [REGHMULT](#_REGHMULT_(REGeneration_Height) could affect some trees.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 94

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.5.2.4

# **HTGSTOP** (<u>H</u>eigh<u>T</u> <u>G</u>rowth <u>STOP</u>)

Variants: All

Related keywords: [TOPKILL](#_TOPKILL_(TOPKILL_trees)), [HTGMULT](#_HTGMULT_(HeighT_Growth), [CRNMULT](#_CRNMULT_(CRowN_change)

Stops or reduces height growth for randomly selected tree records that fall within the user-specified parameters for species and height.

field 1: Year or cycle in which height growth is to be stopped. *Default = 1*

field 2: Species code for which height growth is to be stopped. *Default = All*

field 3: Shortest tree in feet (greater than or equal) that will be affected. *Default = 0*

field 4: Tallest tree in feet (less than) that will be affected. *Default = 0*

field 5: Probability that a tree will not grow in height. *Range: 0.0 - 1.0, Default = 0.0*

field 6: Mean proportion of height growth retained (e.g. 0.8 will retain an average of 80% of the height growth on selected trees). *Value must be greater than 0.0. Default = 1.0*

field 7: Standard deviation of the distribution of the proportion of height growth retained. This allows for variability in height growth reduction among the selected trees. *Default = 0.0*

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

References: GTR INT-208, Supplement to the User’s Guide..., p. 20

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.5.2.4

# **IF** (begin <u>IF</u>-then block)

Variants: All

Related keywords: [THEN](#_THEN_(schedule_if-THEN), [ENDIF](#_ENDIF_(END_an), [ALSOTRY](#_ALSOTRY_(ALSO_TRY)

Signifies the beginning of an Event Monitor IF-[THEN](#_THEN_(schedule_if-THEN) block (also called scheduling by condition). The Event Monitor keyword sequence must begin with an IF keyword. The next record must be a condition statement that evaluates to true or false. The next record is a [THEN](#_THEN_(schedule_if-THEN) keyword. The sequence ends with an [ENDIF](#_ENDIF_(END_an) keyword. All keywords contained between the [THEN](#_THEN_(schedule_if-THEN) and [ENDIF](#_ENDIF_(END_an) keywords will be executed whenever the condition is true. The condition is checked every cycle, unless that cycle falls within the minimum waiting time since the last time the condition was true.

field 1: Minimum waiting time in years after the condition was found true before the condition will be evaluated again. Nothing in the IF-[THEN](#_THEN_(schedule_if-THEN) block will occur until after this period of time has passed since the condition was last found true, and at that point the condition will again begin to be evaluated.

Syntax: IF Minimum waiting time

Condition is true

[THEN](#_THEN_(schedule_if-THEN)

Perform Activity

[ENDIF](#_ENDIF_(END_an)

Example: If stand basal area exceeds 100 square feet per acre, thin the stand according to the [THINDBH](#_THINDBH_(THIN_from) parameters. Once this condition is true, wait 30 years before checking the condition again:

IF 30

BBA GT 100

THEN

THINDBH 0 0 99 1.0 0 0 0

ENDIF

Caution: The year/cycle field on activity keywords changes meaning to become a delay period when the keywords are included in an Event Monitor IF-[THEN](#_THEN_(schedule_if-THEN) block. Entering 2010 in the date field of an activity keyword that is in an IF-[THEN](#_THEN_(schedule_if-THEN) block will cause a delay period of 2010 years.

References: GTR INT-275, User’s Guide to the Event Monitor..., p. 2

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.5.1

# **INPFILE** (<u>INP</u> <u>File)</u>

Variants: OP OC

Related keywords: [ORGInfo](#_ORGINFO_(ORGANON_INFormation)), [ORGVol](#_ORGVOL_(ORGANON_VOLume))

Reads in the ORGANON \*.inp text file

field 1: Enter the \*.inp file name

Note: This keyword only works with the OP and OC variant.

# **INVYEAR** (<u>INV</u>entory <u>YEAR</u>)

Variants: All

Related keywords: [NUMCYCLE](#_NUMCYCLE_(NUMber_of), [TIMEINT](#_TIMEINT_(TIME_)

Specifies the starting year for a projection. The year entered is assumed to be the year that the stand was inventoried.

field 1: Starting year (4-digits) for the simulation (e.g. 1987). *Default = 0*

Caution: Any starting year may be used. Care must be taken to assure that the years for which options are requested fall within the range of dates defined by the parameters on the [NUMCYCLE](#_NUMCYCLE_(NUMber_of), [TIMEINT](#_TIMEINT_(TIME_) and INVYEAR keywords.

Note: The inventory year is available in the event monitor in the variable INVYEAR. This variable is different than the INVYEAR keyword. Refer to the User’s Guide to the Event Monitor.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 8

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, ss. 4.1.2.3,

5.5.1

# **LOCATE** (<u>LOCATE</u> the stand)

Variants: All

Related keywords: [STDINFO](#_STDINFO_(STanD_INFOrmation)), [FIAVBC](#_FIXCW_(FIXed_Crown)

Specifies the location of the stand in terms of latitude, longitude, state and county. These values are then available as event monitor variables that can be included in a custom output file for use in a GIS system or elsewhere. If latitude and longitude are to be used, then both of those fields should be supplied or a default value will remain.

field 1: Latitude in decimal degrees. *Default = latitude of centroid of variant area*

field 2: Longitude in decimal degrees. *Default = lonitude of centroid of variant area*

field 3: State

field 4: County

Note: When the LOCATE keyword is used the Event Monitor variables that contain the specified values are respectively LAT, LONG, STATE, and COUNTY.

Note: The state specified in field 3 will be used to determine the volume equation for woodland species when the [FIAVBC](#_FIXCW_(FIXed_Crown) keyword is used.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.1.2.2

# **MANAGED** (<u>MANAGED</u> stand)

Variants: EM, KT, PN, SE, SN, WC

Acts as a flag to signify that the stand is managed (e.g. a plantation) or unmanaged. Once set to “managed”, it remains in effect until a subsequent use of the keyword sets it to “unmanaged”. When the flag is set to “managed” (field 2 = 1), growth rates are modified in the particular model(s) listed below by variant.

Eastern Montana (EM) Large tree diameter growth

Kookantl (KT) Large tree diameter growth and small tree height growth

Pacific Northwest Coast (PN) Small tree diameter growth

Southern (SN) Large tree diameter growth for sand pine, slash pine, longleaf pine, eastern white pine, and loblolly pine

Westside Cascades (WC) Small tree diameter growth

field 1: Year or cycle. *Default = 0 (all cycles)*

field 2: Management flag. *Default = 1*

0 Unmanaged

1 Managed

Note: If the MANAGED keyword is not present in the simulation, the stand is considered unmanaged.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.1.2.2

# **MCDEFECT** (<u>M</u>erchantable <u>C</u>ubic foot <u>DEFECT</u>)

Variants: All

Related keywords: [BFDEFECT](#_BFDEFECT_(Board_Foot), [DEFECT](#_DEFECT_(DEFECT)), [MCFDLN](#_MCFDLN_(Merchantable_Cubic), [VOLUME](#_VOLUME_(cubic_foot)

Specifies species-specific defect corrections for cubic-foot volume estimates. In the western half of the US this keyword specifies the merchantable cubic foot defect. (Board foot defect is specified using the [BFDEFECT](#_BFDEFECT_(Board_Foot) keyword.) In the eastern half of the US this keyword specifies defect only for the pulpwood that is smaller than the merchantable limits for sawlogs. (Defect for the sawlog portion of trees is specified using the [BFDEFECT](#_BFDEFECT_(Board_Foot) keyword.) Defect percentages are specified by species for the following five dbh’s: 5, 10, 15, 20, 25+ inches. For example, if the expected defect correction for a five-inch tree is 35 percent, a value of .35 would be entered in field 3. A linear interpolation function calculates the defect percentage for the specified dbh of the tree. For trees smaller than 5 inches dbh or greater than 25 inches dbh, a constant value for defect correction is applied based on the values in fields 3 and 7 respectively.

field 1: Year or cycle in which the defect corrections are to take effect. Once applied it remains in effect until replaced by a subsequent multiplier.

*Default = 0 (all cycles)*

field 2: Species code for which the defect corrections are to be applied.

*Default = All*

field 3: Proportion of cubic foot volume defect for a 5-inch tree. All trees less than 5 inches dbh will be assigned this value. *Range: 0.0 - 1.0, Default = 0.0*

field 4: Proportion of cubic foot volume defect for a 10-inch tree.

*Range: 0.0 - 1.0, Default = 0.0*

field 5: Proportion of cubic foot volume defect for a 15-inch tree.

*Range: 0.0 - 1.0, Default = 0.0*

field 6: Proportion of cubic foot volume defect for a 20-inch tree.

*Range: 0.0 - 1.0, Default = 0.0*

field 7: Proportion of cubic foot volume defect for a 25-inch tree. All trees greater than 25 inches dbh will be assigned this value. *Range: 0.0 - 1.0, Default = 0.0*

Note: For any particular species this keyword remains in effect until a subsequent use of the keyword changes the multiplier for that species.

Note: If used inside an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, [BFDEFECT](#_BFDEFECT_(Board_Foot) will not affect cycle 0 volumes.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. In the [PARMS](#_PARMS_Format) format, however, 0 (zero) may not be used in the year/cycle field, and hence the defect will not affect cycle 0 volumes. See the introduction for a description of this format.

Caution: This keyword will not have any effect when the FIAVBC keyword is in use.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.3.3

# **MCFDLN** (<u>M</u>erchantable <u>C</u>ubic foot <u>F</u>orm and <u>D</u>efect <u>L</u>og linear equation)

Variants: All

Related keywords: [BFFDLN](#_BFFDLN_(Board_Foot), [MCDEFECT](#_MCDEFECT_(Merchantable_Cubic), [VOLUME](#_VOLUME_(cubic_foot)

Sets species specific parameters for a log‑linear form and defect correction equation for cubic foot volume estimates. In the western half of the US this affects the calculation of merchantable cubic foot volume. ([BFFDLN](#_BFFDLN_(Board_Foot) affects calculation of board foot volume.) In the eastern half of the US this affects the calculation of cubic foot volume only for the pulpwood that is smaller than the merchantable limits for sawlogs. ([BFFDLN](#_BFFDLN_(Board_Foot) affects calculation of sawlog volumes.)

ln(Vs) = a0 + a1ln(V0)

where Vs = cubic foot volume corrected for form and defect

V0 = uncorrected cubic foot volume

a0 = intercept (field 2 value)

a1 = slope coefficient (field 3 value)

field 1: Species code whose equation is to be changed. *Default = all*

field 2: Intercept term for log‑linear equation (a0). *Default = 0*

field 3: Slope coefficient for log‑linear equation (a1). *Default = 1*

Caution: This keyword will not have any effect when the FIAVBC keyword is in use.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 24

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.3.3

# **MGMTID** (<u>M</u>ana<u>G</u>e<u>M</u>en<u>T</u> <u>ID</u>entification)

Variants: All

Specifies a 4‑character alphanumeric code to identify the silvicultural treatment simulated in a projection. The code does NOT affect the projection, but is printed with each output table. When this keyword is not used, the code “NONE” is used.

No fields are associated with this keyword, however a supplemental record that contains the code entered in Columns 1‑4 is required. When the supplemental record is blank, no code is printed.

Example:

MGMTID

ALT2

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 11

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.1.2.1

# **MINHARV** (<u>MIN</u>imum <u>HARV</u>est)

Variants: All

Related keywords: THINxxx

Specifies minimum acceptable harvest standards for basal area per acre, total cubic foot volume, merchantable cubic foot volume, sawlog cubic foot volume, or board foot volume. The accumulated removals across all thinnings in a cycle must exceed the standards for all the units of measure (fields 2, 3, 4, 5, and 6), or none of the thinnings in that cycle will be implemented.

field 1: Year or cycle in which minimum harvest standards will be applied. Once in effect, it remains in effect until a subsequent MINHARV keyword changes the standards. *Default = 1*

field 2: The minimum acceptable harvest volume in square feet of basal area. *Default = 0*

field 3: The minimum acceptable harvest in total cubic feet per acre. *Default = 0*

field 4: The minimum acceptable harvest in merchantable cubic feet per acre. *Default = 0*

field 5: The minimum acceptable harvest in sawlog cubic feet per acre. *Default = 0*

field 6: The minimum acceptable harvest in board feet per acre. *Default = 0*

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

Caution: For western variants, a non-zero value entered for sawlog cubic foot volume will only have an effect when the FIAVBC keyword is in use.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 22

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.2.1

# **MISTOE** (<u>MIST</u>le<u>TOE</u> model initialization)

Variants: All in the western half of the US

Related keywords: [END](#_END_(END_special)

Signifies the beginning of keywords for the dwarf mistletoe extension. This extension has its own unique set of keywords. The MISTOE keyword sequence must be terminated with an [END](#_END_(END_special) keyword. All keywords between MISTOE and [END](#_END_(END_special) are considered dwarf mistletoe extension keywords.

No fields are associated with this keyword.

Note: In western variants, whenever the tree data input to FVS contains dwarf mistletoe damage codes (30-34) and associated severity (Hawksworth rating of 1-6), the dwarf mistletoe extension will run by default. The effects of the dwarf mistletoe are not summarized and displayed in the main output file unless requested through the appropriate dwarf mistletoe extension keywords.

References: Dwarf Mistletoe Impact Model Keyword Reference Guide

MAG-95-2, Dwarf Mistletoe Impact Modeling System User’s Guide

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 8.3

# **MODTYPE** (<u>MOD</u>el <u>TYPE</u>)

Variants: All

Related keywords: [STDINFO](#_STDINFO_(STanD_INFOrmation))

Specifies the variant’s model type, the physiographic region and the forest type. This information allows FVS to use the appropriate model type, which is a sub-model built into the variant.

field 1: Model type.

CR variant:

1 = Southwest mixed conifers

2 = Southwest ponderosa pine

3 = Black Hills ponderosa pine

4 = Spruce-fir

5 = Lodgepole pine

*Defaults in CR variant are by forest: Default*

*All region 3 forests 2*

*Black Hills, Nebraska 3*

*Grand Mesa, Uncompahgre, Gunnison 4*

*Pike, San Isabel, White River 4*

*Rio Grande, San Juan 4*

*Bighorn, Medicine Bow, Routt 5*

*Arapaho, Roosevelt, Shoshone 5*

OP variant:

2 = Northwest Oregon (NWO)

3 = Stand Management Co-op (SMC)

OC variant:

1 = Southwest Oregon (SWO)

field 2: Not used

field 3: Forest Type.

All variants: Using FIA Forest Type codes (see Appendix B, Dixon 2002) will specify the forest type at the time of inventory. For all subsequent points in time, FVS will determine the forest type based on the predominance of the different species in the stand. For example, using the code 103 specifies an eastern white pine forest type at the time of the inventory, but FVS will determine the forest type thereafter. Using a 4-digit code, created by prepending any non-zero digit before a 3-digit code, will specify the forest type to be used throughout the simulation. FVS will not determine the forest type at any point in time. For example, using the code 9103 specifies an eastern white pine forest type for the entire simulation.  *The default is for FVS to determine the forest type at all points in time*.

Note: In the CR variant this keyword has the same effect as field 2 of the [STDINFO](#_STDINFO_(STanD_INFOrmation)) keyword. If both keywords are included in a simulation, the one that appears later in the simulation file will determine the model type.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.1.2.2

# **MORTMSB** (<u>MORT</u>ality associated with a <u>M</u>ature <u>S</u>tand <u>B</u>oundary)

Variants: AK, AN, BM, CA, CR, CS\_NEW, EC, EM, LS\_NEW, NC, NE\_NEW,

SN, SO, TT, UT, WS

Related keywords: [SDIMAX](#_SDIMAX_(Stand_Density), [MORTMULT](#_MORTMULT_(MORTality_MULTiplier)), [FIXMORT](#_FIXMORT_(FIXed_MORTality))

This keyword simulates the breakup of old large diameter stands of trees in variants using an SDI-based mortality model. An SDI relationship, when plotted with ln(qmd) on the x-axis and ln(tpa) on the y-axis where qmd = stand quadratic mean diameter and tpa = stand trees per acre, has a theoretical maximum line that slopes down and to the right with a -1.605 slope. Stands at maximum density will track down the specified upper percentage of theoretical maximum density (default 85% of theoretical maximum; see SDIMAX keyword field 6). This keyword allows users to specify a second line with a slope steeper than -1.605 and a quadratic mean diameter at which it intersects the upper percentage line. When stand qmd exceeds the specified diameter, stands track down the user-specified line instead of down the SDI line. The result is an increase in tree mortality for that projection cycle. Users can also specify whether the increased mortality should be concentrated in small trees, large trees, or throughout a diameter range.

field 1: Quadratic mean diameter at which the Mature Stand Boundary will be invoked. *Default = 999 (not invoked)*

field 2: Slope of the alternate mortality line in a relationship where x = ln(qmd) and y = ln(tpa). *Range: -10.0 to -1.605, Default = -1.605*

field 3: Proportion of the tree record that will be killed. *Range: 0.0 - 1.0, Default = 0.90*

field 4: Minimum dbh in inches (greater than or equal) to which the increased mortality will be applied. *Default = 0.0*

field 5: Maximum dbh in inches (less than) to which the increased mortality will be applied. *Default = 999.0*

field 6: Distribution of the increased mortality caused by this keyword. *Default = 1*

1 Start with the largest diameter tree and continue downward in the diameter range

2 Start with the smallest diameter tree and work upward in the diameter range

3 Apply the increased mortality in an equal proportion to all tree records in the diameter range (this option ignores the proportion specified in field 3 and calculates the required proportion).

Note: If the proportion of each tree record that will be killed is set too low to achieve the additional mortality level in the specified diameter range, the proportion will be automatically adjusted to the level required to reach the additional mortality level (the same effect as having a value of 3 in field 6)

Note: If the diameter range is set so narrow that the additional mortality level cannot be reached, the keyword will be cancelled.

Note: This keyeword only works in variants that use SDI-based mortaility logic.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 7.3.2.3

# **MORTMULT** (<u>MORT</u>ality <u>MULT</u>iplier)

Variants: All

Related keywords: [FIXMORT](#_FIXMORT_(FIXed_MORTality)), [SDIMAX](#_SDIMAX_(Stand_Density), [BAMAX](#_BAMAX_(Basal_Area)

Multiplier used to alter predicted mortality rate. In variants AK, BM, CA, CR, EC, EM, KT, NC, NI, PN, SO, TT, UT, and WS, the multiplier is applied to the predicted background mortality only, and density related mortality is unaffected. (Use [SDIMAX](#_SDIMAX_(Stand_Density) to modify density related mortality.) In the other variants the multiplier is applied to all predicted mortality.

field 1: Year or cycle in which multiplier is applied. Once in effect, it remains in effect until replaced by a subsequent multiplier. *Default = 1*

field 2: Species code to which multiplier is applied. *Default = All*

field 3: Multiplier value. (e.g. a value of 1.1 will increase the predicted background mortality by 10%) *Default = 1.0 (no change from predicted value)*

field 4: Minimum dbh in inches (greater than or equal to) to which the mortality multiplier is applied.  *Default = 0.0*

field 5: Maximum dbh in inches (less than) to which the mortality multiplier is applied.  *Default = 999.0*

field 6: *No longer used.*

Note: Only one MORTMULT keyword can be specified for each species in any cycle.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 94

GTR INT-208, Supplement to the User’s Guide..., p. 17

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.5.2.4

# **MPB** (<u>M</u>ountain <u>P</u>ine <u>B</u>eetle model initialization)

Variants: Specialized variants that include the mountain pine beetle model

Related keywords: [END](#_END_(END_special)

Signifies the beginning of keywords for the mountain pine beetle extension. This extension has its own unique set of keywords. The MPB keyword sequence must be terminated with an [END](#_END_(END_special) keyword. All keywords between MPB and [END](#_END_(END_special) are considered annosus root disease extension keywords.

No fields are associated with this keyword.

References: Mountain Pine Beetle Impact Model Keyword Reference Guide

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 8.6.2

# **NOAUTOES** (<u>NO</u> <u>AUTO</u>matic <u>ES</u>tablishment)

Variants: All

Related keywords: [ESTAB](#_ESTAB_(ESTABlishment_model))

Suppresses all natural regeneration and ingrowth features of the Regeneration Establishment model, including stump and root sprouting.

No fields are associated with this keyword.

Note: In the AK, CI, EM, KT, and NI variants, natural regeneration is automatically scheduled in a simulation after “significant” thinning events or in the absence of disturbance for a period of twenty years if the user schedules no regeneration. The NOAUTOES keyword cancels both types of automatic natural regeneration. The probability of stocking is set to zero, so if later in the simulation automatic regeneration is to be turned back on, the [STOCKADJ](#_STOCKADJ_(STOCKing_ADJustment)) Establishment Model keyword must be usd in addition to the [INGROW](#_INGROW_(INGROWth)), AUTALLY, and/or [SPROUT](#_SPROUT_(stump_or) Establishment Model keywords.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.2.4

# **NOCALIB** (<u>NO</u> <u>CALIB</u>ration scale factors)

Variants: All

Related keywords: [BAIMULT](#_BAIMULT_(Basal_Area)

Suppresses calculation of scale factors for large-tree diameter increment model and small-tree height increment model. Calibration is the default mode of the system and each species is calibrated independently. For a particular species, if there are at least five large-tree diameter increment measurements or three small-tree height increment measurements, a scale factor will be calculated for that species and growth will be adjusted accordingly. This keyword suppresses all calibration for a species (or for all species), therefore tree growth will be exactly as predicted by the model in the absence of growth information.

field 1: Species code for which calculation of scale factors is to be suppressed.

Note: Non‑calibration is appropriate when growth measured in the sample is not typical. This might be the case during insect epidemics or prolonged drought, which would tend to show artificially low growth rates. This might also be the case if only site trees were measured for growth, which would tend to show artificially high growth rates.

References: GTR INT-208, Supplement to the User’s Guide..., p. 11

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, ss. 6.4.1,

6.5.2.1

# **NODEBUG** (<u>NO</u> <u>DEBUG</u> output)

Variants: All

Related keywords: [DEBUG](#_DEBUG_(print_DEBUG)

Suppresses the printing of program calculations as they occur. In other words, cancels the effect of the [DEBUG](#_DEBUG_(print_DEBUG) keyword.

No fields are associated with this keyword.

Note: Whenever the NODEBUG and [DEBUG](#_DEBUG_(print_DEBUG) keywords are both present in a simulation file, the one that is placed later in the keyword sequence will take precedence.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 9.3

# **NOECHO** (<u>NO</u> <u>ECHO</u>)

Variants: All

Related keywords: [ECHO](#_ECHO_(ECHO))

Suppresses the echoed keyword information, read on input, to the Options Selected by Input table of the Main Output file. By default keyword echo is on.

No fields are associated with this keyword.

Note: In a serial run, keyword echo returns to the default condition after processing each stand. The number of keyword records processed, and not echoed to the main output file, is reported. Warning and error messages and the Parallel Processing Extension (PPE) keywords are not affected by the NOECHO keyword.

# **NOHTDREG** (<u>NO</u> <u>H</u>eigh<u>T</u>-<u>D</u>iameter <u>REG</u>ression)

Variants: All

Related keywords: [HTGMULT](#_HTGMULT_(HeighT_Growth), [READCORH](#_REUSCORH_(REUSe_CORrection)

Suppresses the calibration of coefficients for height‑diameter equations based on input tree data. Height-diameter equations are used in dubbing the heights of trees that have missing recorded heights. When the calibration of coefficients for the height dubbing process is suppressed, heights are dubbed using region‑wide default coefficients. Calibration of coefficients for a species is automatically suppressed if less than three non‑top-damaged trees of that species are available for the calculations.

field 1: Species code for which calibration of the coefficients for the height‑diameter relationship will be suppressed. *Default = All*

field 2: Suppression flag. *Defaults: BM, EC, KT, NC, PN, SO, WC, SN, NE, LS, CS, CA = 0*, *others = 1*

0 Suppress calibration of coefficients (i.e. use defaults).

1 or greater No suppression of calibration of coefficients.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 7.1.3.1

# **NOSCREEN** (<u>NO</u> output to <u>SCREEN</u>)

Variants: All

Related keywords: [SCREEN](#_SCREEN_(output_to)

Suppresses printing of an abbreviated copy of the summary statistics table to the terminal screen or a file during program execution. In other words, cancels the effect of the [SCREEN](#_SCREEN_(output_to) keyword.

No fields are associated with this keyword.

Note: Whenever the NOSCREEN and [SCREEN](#_SCREEN_(output_to) keywords are both present in a simulation file, the one that is placed later in the keyword sequence will take precedence.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.3.4

# **NOSUM** (<u>NO</u> <u>SUM</u>mary table)

Variants: All

Related keywords: [ECHOSUM](#_ECHOSUM_(ECHO_the), [[CALBSTAT](#_CALBSTAT_(CALiBration_STATistics))](#_CALBSTAT_(CALiBration_STATistics))

Suppresses the summary statistics table from the standard FVS output file from being written to a separate file. In other words, cancels the effect of the [ECHOSUM](#_ECHOSUM_(ECHO_the) keyword. The summary statistics table will still be written to the standard FVS output file.

No fields are associated with this keyword.

Note: Whenever the NOSUM and [ECHOSUM](#_ECHOSUM_(ECHO_the) keywords are both present in a simulation file, the one that is placed later in the keyword sequence will take precedence.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 48

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.3.4

# **NOTREES** (<u>NO</u> <u>TREE</u> record<u>S</u>)

Variants: All

Related keywords: [ESTAB](#_ESTAB_(ESTABlishment_model))

Specifies that no projectable tree records will be used as input, which permits “bare ground” simulations. The Regeneration Establishment Model can then be used to generate a list of seedlings to be projected. If the NOTREES keyword is not used, at least two live-tree records must be present in the input tree data.

References: GTR INT-208, Supplement to the User’s Guide..., p. 19

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.2

# **NOTRIPLE** (<u>NO</u> tree record <u>TRIPLE</u>)

Variants: All

Related keywords: [NUMTRIP](#_NUMTRIP_(NUMber_of), [DGSTDEV](#_DGSTDEV_(Diameter_Growth)

Suppresses record tripling. When a stand is represented by relatively few records (less than approximately 100) tripling is a mechanism to increase the number of replications to help stabilize the random effects (see [DGSTDEV](#_DGSTDEV_(Diameter_Growth)). Each tree record is split into three records such that the three records together represent the same number of trees per acre as the original record. The new records are similar except for diameter growth, and the weighted average of the new records is equal to the original record. Unless otherwise specified, records are tripled twice), once in the first cycle and once in the second cycle. If the total number of records would exceed 1350 tripling is not done.

No fields are associated with this keyword.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 92

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.4.2

# **NUMCYCLE** (<u>NUM</u>ber of <u>CYCLE</u>s)

Variants: All

Related keywords: [TIMEINT](#_TIMEINT_(TIME_), [INVYEAR](#_INVYEAR_(INVentory_YEAR))

Specifies the number of cycles to run the projection. A cycle is the period of time for which tree characteristics are predicted, and for which inventories are reported (see [TIMEINT](#_TIMEINT_(TIME_)). The maximum number of cycles in a projection is 40.

field 1: Number of cycles to be projected.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 8

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, ss. 4.1.3.1,

5.1.2

# **NUMTRIP** (<u>NUM</u>ber of times <u>TRIP</u>led)

Variants: All

Related keywords: [NOTRIPLE](#_NOTRIPLE_(NO_tree), [DGSTDEV](#_DGSTDEV_(Diameter_Growth)

Specifies the number of times tree records will be tripled. Tripling will be attempted once in the first cycle and once in each subsequent cycle for the number of times specified. If the total number of records would exceed 1350 tripling is not done. When a stand is represented by relatively few records (less than approximately 100) tripling is a mechanism to increase the number of replications to help stabilize the random effects (see [DGSTDEV](#_DGSTDEV_(Diameter_Growth)). Each tree record is split into three records such that the three records together represent the same number of trees per acre as the original record. The new records are similar except for diameter growth, and the weighted average of the new records is equal to the original record. Unless otherwise specified, records are tripled twice), once in the first cycle and once in the second cycle.

field 1: Number of times tripling will be attempted. *Default = 2*

Note: In a bare ground projection, the number of times that records will be tripled is one less than the number specified because tripling occurs before the addition of regeneration records to the treelist. For example, if you want the tree records to be tripled twice in a bare ground projection, set the value in field 1 to 3.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 92

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.4.2

# **OPEN** (<u>OPEN</u> a file)

Variants: All

Related keywords: [ADDFILE](#_ADDFILE_(ADD_a), [CLOSE](#_CLOSE_(CLOSE_a)

Requests that an external file be opened for input (e.g. an addfile) or output (e.g. a treelist file). A supplemental record is required to specify a filename for the unit that is to be opened.

field 1: File reference number for the input or output file. File reference numbers are a mechanism that FVS uses to keep track of external files. Numbers less than 30 are reserved for files that are currently used by FVS.

field 2: Code for specifying the meaning of blanks in numeric fields. *Default = 0*

0 Treat blanks as zeros

non-zero Treat blanks as null characters

field 3: File status code. *Default = 0*

0 Unknown (file may or may not currently exist)

1 New (file does not currently exist)

2 Old (file currently exists)

field 4: Maximum record length in the file (number of characters per line). *Default=150*

field 5: File format switch. Choose unformatted only when the sole purpose of creating this file is for use as input to another program that requires unformatted input.

1 Formatted

2 Unformatted

Supplemental record:

Specify a filename for the input or output file that is to be opened. The maximum permitted length of the filename is 40 characters, and there can be no leading blanks.

Note: There is no default value for the file reference number (field 1). If this field is left blank the OPEN request is ignored.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.2.3.1

# **ORGINFO** (<u>ORG</u>ANON <u>INF</u>ormation)

Variants: OP OC

Related keywords: [ORGVo](#_ORGVOL_(ORGANON_VOLume))l, [INPFile](#_INPFILE_(INP_File))

Set or changes ORGANON specific parameters

field 1: ORGANON version OC *Default = 1, OP Default = 2*

1 = Southwestern Oregon (SWO)

2 = Northwestern Oregon (NWO)

3 = Stand Management Cooperative (SMC)

field 2: Even-Age Stand *Default = 1*

0 = No

1 = Yes

field 3: Use Maximum SDI in determining mortality *Default = 1*

0 = No

1 = Yes

field 4: Include ORGANON height calibration *Default = 1*

0 = No

1 = Yes

field 5: Include ORGANON height-to-crown base calibration *Default = 1*

0 = No

1 = Yes

field 6: Include ORGANON diameter growth calibration *Default = 1*

0 = No

1 = Yes

Note: This keyword only works with the OP and OC variant.

Note: If field 2 is set to even-age, but no stand age is provided on input, it will be internally changed to uneven-age.

Note: If field 3 is set to 1, be sure to set Maximum Stand Density Index on input.

# **ORGVOL** (<u>ORG</u>ANON <u>VOL</u>ume)

Variants: OP OC

Related keywords: [ORGInfo](#_ORGINFO_(ORGANON_INFormation)), [INPFile](#_INPFILE_(INP_File))

Sets the ORGANON Oregon State University (OSU) volume equation specifications.

field 1: Set the trim for the OSU volume equation (inches)

field 2: Set minimum log length for OSU volume equation (feet)

field 3: Set maximum log length for OSU volume equation (feet)

field 4: Set stump height (feet)

field 5: Set Top diameter inside bark

Note: This keyword only works with the OP and OC variant.

Note: For BLM specific volume equations do not use this keyword. Specify the BLM location code and FVS will automatically select the BLM volume equations for the specified resource area.

# **POINTGRP** (<u>POINT GR</u>ou<u>P</u>)

Variants: All

Related keywords: [THINPT](#_THINPT_(THIN_by), [SETPTHIN](#_SETPTHIN_(SETs_Point), [COMPUTE](#_COMPUTE_(COMPUTE_variables)), [POINTREF](#_POINTREF_(POINT_REFerence))

Defines a group of points that can be referenced by a single name or group number. Users may define up to 30 point groups with each group containing up to 50 points. If the group name is entered in the point field of a keyword, the keyword action will apply to all points in the group. One or more supplemental records are required that contain the point numbers. A point can be referenced by point number identified in the input data or the FVS point sequence number (see the POINTREF keyword). Similarly, point groups can be referenced by their group name defined in field 1, or by their FVS point group sequence number. FVS sequence numbers for point groups are assigned by FVS and are contained in the range (-1 to -30). When referencing point groups on keywords, users are encouraged to use the group name instead of the FVS group sequence number.

field 1: Point Group name.  *Default = PTgroupXX where XX=01 for the first defined point group, 02 for the second, …, 30 for the 30th defined point group. (e.g. PTGroup01, PTGroup02,…, PTGroup30)*

Supplemental record(s):

Specify the point numbers or FVS point sequence numbers for points included in the group. A supplemental record can be up to 150 characters long, therefore up to 50 points (assuming a 2 character point number) can be placed on one supplemental record. The record is free form in format with each point number code separated by one or many blanks. Points can be continued onto an additional supplemental record by putting an “&” at the end of the line.

Example: Define 3 point groups, one group named Mypoints, and the other 2 using the FVS default naming convention.

PTGROUP Mypoints

101 110 112

PTGROUP

102&

105&

106

The first group is a user-named point group, the point numbers are left justified in fields on the supplemental record. This group could be referenced by the group name Mypoints or the FVS sequence number -1 since it is the first defined group. The second group has each code located on its own line with a “&” continuing the list onto the following line. This group could be referenced by the group name PTGROUP02 (i.e. the default group name) or the FVS sequence number -2 since it is the second defined group.

A SETPTHIN / THINPT keyword set could be programmed to thin the first group as follows.

SETPTHIN 2020. MYpoints 2

THINPT 2020. 20 1 0 0 999 0

This keyword set would thin each point in the MYpoints group (points 101, 110, and 112) to 20 square feet of basal area based on the fraction of area that the points represent in the stand.

The following keywords would calculate the sum of the basal areas on the points in the point group MYpoints.

COMPUTE 0.

BAG2 = SPMCDBH(2,All,0,0,999,0,999,0,MYpoints)

END

Note: The SPGROUP keyword must precede any other keyword that references the species group

Note: The point group name must be between 3 and 10 characters long, and cannot be any pre-defined event monitor variable name, and cannot contain any blanks. A point group may contain up to 50 points. An individual point may be included in more than one group.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.2.7

# **POINTREF** (<u>POINT REF</u>erence)

Variants: All

Related keywords: [THINPT](#_THINPT_(THIN_by), [SETPTHIN](#_SETPTHIN_(SETs_Point), [COMPUTE](#_COMPUTE_(COMPUTE_variables))

Specifies whether the point number entered on a keyword or Event Monitor function refers to the inventory point number or FVS sequential point number.

field 1: Point number reference

1 = Point number will be as entered in the input data

1. = Point number will be the FVS sequential point number

# **PRMFROST** (<u>P</u>e<u>RM</u>a<u>FROST</u>)

Variants: AK

Includes or excludes a growth modifier in the diameter and height growth calculations based on the presence or absence of permafrost in the stand. Once set, it remains in effect until subsequent use of the keyword.

field 1: Year or cycle to include permafrost growth modifier. *Default = 1*

field 2: Permafrost growth modifier *Default = 0*

0 Off

1 On

# **PROCESS** (<u>PROCESS</u> the keywords)

Variants: All

Signifies the end of a set of keywords that define a single projection and triggers the beginning of the simulation. The PROCESS keyword must be present or the projection will not run. Multiple PROCESS keywords (i.e. multiple projections) are possible within a single simulation file.

No fields are associated with this keyword.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 8

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.1.3.3

# **PRUNE** (<u>PRUNE</u> trees)

Variants: All

Related keywords: [CRNMULT](#_CRNMULT_(CRowN_change)

Schedules pruning of a specified component of the stand. Removes portions of a trees crown ratio as part of a stand treatment scenario.

field 1: Year or cycle pruning is to be done. *Default = 1*

field 2: Method of pruning. *Default = 2*

1 Prune to a specified height to base of live crown (field 3) without regard to the proportion of live crown this would remove

2 Prune to a specified height to base of live crown (field 3). If this would result in removing more than a specified proportion (field 4) of the live crown ratio, only remove enough crown to reach the specified proportion, instead of the specified height.

3 Prune to a specified height to base of live crown (field 3). If this would result in removing more than a specified proportion (field 4) of the live crown ratio, do not prune the tree.

4 Remove a specified proportion (field 4) of the live crown.

5 Remove a specified length (field 3) of the live crown without regard to the proportion of live crown this would remove.

6 Remove a specified length (field 3) of the live crown. If this would result in removing more than a specified proportion (field 4) of the live crown ratio, only remove enough to reach the specified proportion, rather than removing the specified length.

7 Remove a specified length (field 3) of the live crown. If this would result in removing more than a specified proportion (field 4) of the live crown ratio, do not prune the tree.

field 3: Height in feet. *Default = 0*

If field 2 = 1, 2, or 3, this is the height to the base of live crown.

If field 2 = 5, 6, or 7, this is the length of crown to be removed.

field 4: Maximum proportion. *Range: 0.0 - 1.0, Default = 0.5*

If field 2 = 2 or 6, this is the maximum proportion of live crown that can be removed.

If field 2 = 3 or 7, this is the threshold that determines whether the tree will be pruned or not.

If field 2 = 4, this is the proportion of live crown to be removed.

field 5: Species code to be pruned. *Default = All*

field 6: Minimum dbh in inches (greater than or equal to) that will be considered for pruning. *Default = 0.0*

field 7: Maximum dbh in inches (less than) that will be considered for pruning. *Default = 99.0*

Note: All prunings are considered in the same context as thinnings, and are done at the beginning of the cycle in which they are scheduled.

Note: All thinnings scheduled within a cycle are done before any pruning requests are processed. (i.e. the only trees that will be pruned are those left after the thinning)

Note: If no trees remain after thinning, all pruning requests will be cancelled.

Note: If the combination of parameters on a pruning keyword results in no trees being pruned, the pruning request is cancelled.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

Caution: If this keyword is embedded in an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, field 1 is interpreted as years from the time the event is true until implementation, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after event is true to prune the stand.)

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.2.6

# **RANNSEED** (<u>RAN</u>dom <u>N</u>umber <u>SEED</u>)

Variants: All

Reseeds the pseudorandom number generators used in the FVS model. A 0 (zero) generates a random number seed, which causes simulation results to vary with multiple runs.

field 1: Replacement value for the pseudorandom number seed (should be an odd integer). *Default = 55329*

Note: The FVS base model and the Regeneration Establishment extension use separate pseudorandom number generators. Each one can be reseeded independently. Using a RANNSEED keyword inside an [ESTAB](#_ESTAB_(ESTABlishment_model))-[END](#_END_(END_special) sequence affects the Regeneration Establishment extension.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 94

GTR INT-208, Supplement to the User’s Guide..., p. 14

GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 32

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.4.2

Refer to GTR INT‑394, Implications of Random Variation in the Stand Prognosis Model, for a discussion of the stochastic nature of the model.

# **RDIN** (<u>R</u>oot <u>D</u>isease model <u>IN</u>itialization)

Variants: Specialized variants that include the root disease model

Related keywords: [END](#_END_(END_special)

Signifies the beginning of keywords for the western root disease extension. This extension has its own unique set of keywords. The RDIN keyword sequence must be terminated with an [END](#_END_(END_special) keyword. All keywords between RDIN and [END](#_END_(END_special) are considered western root disease extension keywords.

No fields are associated with this keyword.

References: Root Disease Impact Model Keyword Reference Guide

PSW-GTR-165, User’s Guide to the Western Root Disease Model, Ver 3.0

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 8.4

# **READCORD** (<u>READ</u>just <u>COR</u>rection for <u>D</u>iameter)

Variants: All

Related keywords: [READCORH](#_REUSCORH_(REUSe_CORrection), [READCORR](#_READCORR_(READjust_CORrection), [REUSCORD](#_REUSCORD_(REUSe_CORrection), [BAIMULT](#_BAIMULT_(Basal_Area), [NOCALIB](#_NOCALIB_(NO_CALIBration)

Readjusts the baseline estimate for the large-tree diameter growth model. For any particular species, the original baseline estimate is multiplied by the value from this keyword, and the result becomes the new baseline estimate. These adjustments are done prior to model calibration. Calculated scale factors will still attenuate toward a value midway between the calculated scale factor and the new baseline estimate.

No fields are associated with this keyword. Multipliers are entered on two or more supplemental records

Supplemental records:

Each supplemental record consists of eight 10-character fields, each of which contains a multiplier value for a species. Decimal points should be explicitly typed. The fields are in order of the species sequence number in the variant (see Appendix A). Multiple supplemental records are required. *The default value for all species in all variants is 1.0*. A blank or 0 (zero) is interpreted as a 1.0.

Example for a variant with 11 species:

READCORD

1.2 1.0 1.05 0.8 0.85 1.0 1.25 1.0

1.0 0.85 1.0

Note: If a significant number of previous FVS runs have shown that there is a consistent bias in the scale factors for any species, the average scale factor for that species can be entered using this keyword.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 90

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.5.2.2

# **READCORH** (<u>READ</u>just <u>COR</u>rection for <u>H</u>eight)

Variants: All

Related keywords: [READCORD](#_READCORD_(READjust_CORrection), [READCORR](#_READCORR_(READjust_CORrection), [HTGMULT](#_HTGMULT_(HeighT_Growth), [REUSCORH](#_REUSCORH_(REUSe_CORrection), [NOCALIB](#_NOCALIB_(NO_CALIBration)

Readjusts the baseline estimate for the large-tree height growth model. For any particular species, the original baseline estimate is multiplied by the value from this keyword, and the result becomes the new baseline estimate. These adjustments are done prior to model calibration.

No fields are associated with this keyword. Multipliers are entered on two or more supplemental records

Supplemental records:

Each supplemental record consists of eight 10-character fields, each of which contains a multiplier value for a species. Decimal points should be explicitly typed. The fields are in order of the species sequence number in the variant (see Appendix A). Multiple supplemental records are required. *The default value for all species in all variants is 1.0*. A blank or 0 (zero) is interpreted as a 1.0.

Example for a variant with 11 species:

READCORH

1.3 1.0 1.15 0.7 0.75 1.0 1.25 1.0

1.0 0.95 1.0

Note: If a significant number of previous FVS runs have shown that there is a consistent bias in the large tree height growth for any species, an average multiplier value for that species can be entered using this keyword.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 90

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.5.2.2

# **READCORR** (<u>READ</u>just <u>COR</u>rection for <u>R</u>egeneration)

Variants: All

Related keywords: [READCORH](#_REUSCORH_(REUSe_CORrection), [READCORD](#_READCORD_(READjust_CORrection), [REUSCORR](#_REUSCORR_(REUSe_CORrection), [NOCALIB](#_NOCALIB_(NO_CALIBration)

Readjusts the baseline estimate for the small-tree height growth model. For any particular species, the original baseline estimate is multiplied by the value from this keyword, and the result becomes the new baseline estimate. These adjustments are done prior to model calibration. Calculated scale factors will still attenuate toward a value midway between the calculated scale factor and the new baseline estimate.

No fields are associated with this keyword. Multipliers are entered on two or more supplemental records

Supplemental records:

Each supplemental record consists of eight 10-character fields, each of which contains a multiplier value for a species. Decimal points should be explicitly typed. The fields are in order of the species sequence number in the variant (see Appendix A). Multiple supplemental records are required. A blank or 0 (zero) is interpreted as a 1.0. *The default value for all species in all variants is 1.0*.

Example for a variant with 11 species:

READCORR

1.1 1.0 1.25 0.85 0.8 1.0 1.05 1.0

1.0 0.65 1.0

Note: If a significant number of previous FVS runs have shown that there is a consistent bias in the scale factors for any species, the average scale factor for that species can be entered using this keyword.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 90

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.5.2.2

# **REGDMULT** (<u>REG</u>eneration <u>D</u>iameter growth <u>MULT</u>iplier)

Variants: All

Related keywords: [REGHMULT](#_REGHMULT_(REGeneration_Height), [BAIMULT](#_BAIMULT_(Basal_Area)

Specifies a growth multiplier for the small-tree diameter growth model.

field 1: Year or cycle in which multiplier is applied. Once in effect, it remains in effect until replaced by a subsequent multiplier. *Default = 1*

field 2: Species code to which multiplier is applied. *Default = All*

field 3: Multiplier value (e.g. a value of 1.2 will increase the predicted small tree diameter growth by 20%). *Default = 1.0*

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

Note: Small tree height growth is weighted with large tree height growth for a portion of the diameter range, so both [REGHMULT](#_REGHMULT_(REGeneration_Height) and [HTGMULT](#_HTGMULT_(HeighT_Growth) could affect some trees.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 94

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.5.2.4

# **REGHMULT** (<u>REG</u>eneration <u>H</u>eight growth <u>MULT</u>iplier)

Variants: All

Related keywords: [REGDMULT](#_REGDMULT_(REGeneration_Diameter), [HTGMULT](#_HTGMULT_(HeighT_Growth), [READCORR](#_READCORR_(READjust_CORrection)

Specifies a growth multiplier for the small-tree height growth model.

field 1: Year or cycle in which multiplier is applied. Once in effect, it remains in effect until replaced by a subsequent multiplier. *Default = 1*

field 2: Species code to which multiplier is applied. *Default = All*

field 3: Multiplier value (e.g. a value of 1.2 will increase the predicted small tree height growth by 20%). *Default = 1.0*

Note: Changing the small-tree height increment also changes the small-tree diameter growth increment, and may have other cascading effects throughout the model.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 94

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.5.2.4

# **RESETAGE** (<u>RESET</u> stand <u>AGE</u>)

Variants: All

Sets the stand age to zero to make FVS model output correspond to the actual age of the stand. Age is strictly for reporting purposes and has no effect on growth or survival prediction. Its only effect is on the calculation of mean annual increment. This keyword is useful when average stand age has changed due to thinnings and plantings.

field 1: Year or cycle that stand age is to be changed (usually the year of disturbance).

field 2: New stand age. *Default = 0*

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.1.3

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

# **REUSCORD** (<u>REUS</u>e <u>COR</u>rection for <u>D</u>iameter)

# **REUSCORH** (<u>REUS</u>e <u>COR</u>rection for <u>H</u>eight)

# **REUSCORR** (<u>REUS</u>e <u>COR</u>rection for <u>R</u>egeneration)

Variants: All

Related keywords: [READCORD](#_READCORD_(READjust_CORrection), [READCORH](#_REUSCORH_(REUSe_CORrection), [READCORR](#_READCORR_(READjust_CORrection)

In a multiple stand simulation, requests that the parameters specified for the previous stand on the [READCORD](#_READCORD_(READjust_CORrection), [READCORH](#_REUSCORH_(REUSe_CORrection), or [READCORR](#_READCORR_(READjust_CORrection) keyword record be reused for the current stand.

No fields are associated with this keyword.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.5.4

# **REWIND** (<u>REWIND</u> an open file)

Variants: All

Related keywords: [OPEN](#_OPEN_(OPEN_a), [ADDFILE](#_ADDFILE_(ADD_a)

In a multiple stand simulation, allows values from a file opened with the [OPEN](#_OPEN_(OPEN_a) keyword record for the previous stand to be re-entered without closing the file and then re-opening it in the current stand.

field 1: File reference number of the file to be rewound. *Default = 2 (tree record file)*

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.2.4

# **SCREEN** (output to <u>SCREEN</u>)

Variants: All

Related keywords: [NOSCREEN](#_NOSCREEN_(NO_output)

Requests printing of an abbreviated copy of the summary statistics table to the terminal screen or a file during program execution.

field 1: File reference number where the Screen output to be directed. The default is to direct output to unit 6, which is the terminal screen. If the value is any number other than 6 or blank, then an associated SCREEN output file needs to be opened with [OPEN](#_OPEN_(OPEN_a) keyword. *Default = 6 (screen)*

Example sending output to new unit:

SCREEN 50

OPEN 50

SCREEN.OUT

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.3.4

# **SDICALC** (<u>S</u>tand <u>D</u>ensity <u>I</u>ndex <u>Calc</u>ulation)

Variants: All

Related keywords: [SDIMAX](#_SDIMAX_(Stand_Density), [THINSDI](#_THINSDI_(THIN_to)

Allows the selection of either Reineke SDI (Reineke 1933) using Stage's Summation Method (Stage, 1968) or Zeide's SDI (Zeide 1983) using the Long and Daniel, Shaw Summation Method (Long and Daniel 1990, Shaw 2000).

field 1: Minimum DBH for including in Reineke SDI calculation (greater than or equal to). *Default = 0*

field 2: Minimum DBH for including in Zeide SDI calculation (greater than or equal to). *Default = 0*

field 3: SDI Calculation Method *Default = 0*

Reineke: 1 > Value in field 3

Zeide: 1 ≤ Value in field 3

SDI is calculated using the equations included in Essential FVS: A User’s Guide to the Forest Vegetation Simulator, section 7.3.2.1.

Note: For variants that use SDI-based mortality selecting Zeide and/or modifying Fields 1 or 2 will affect mortality. In all variants the SDICALC keyword affects, SDI thinning targets, stand SDIMAX reset calculations at the beginning of a simulation, and SDI values reported in the Summary Statistics Table.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 7.3.4

# **SDIMAX** (<u>S</u>tand <u>D</u>ensity <u>I</u>ndex <u>MAX</u>imum)

Variants: All

Related keywords: [BAMAX](#_BAMAX_(Basal_Area), [MORTMULT](#_MORTMULT_(MORTality_MULTiplier)), [SDICALC](#_SDICALC_(Stand_Density)

Specifies the maximum stand density index by species. The value of the maximum stand density index is an important variable in determining stand mortality and normal stocking for automatic thinnings. Also, in some variants, maximum SDI is used to model crown ratio change for individual tree records.

Maximum SDI for a stand is calculated as a weighted average of the SDI maximums for each species in the stand. The weight for a species is calculated as the total basal area for that species divided by the total basal area in the stand. Maximum stand SDI is used in all variants to determine normal stocking for automatic thinnings. In addition, it is used to calculate density related mortality in many variants. If no SDIMAX keyword is present, one will be assigned, based on the species in the stand or by plant community type (see specific variant overview for details).

field 1: Species code for which the maximum stand density index applies. *Default = All*

field 2: Maximum stand density index value.

field 3: *No longer used.*

field 4: *No longer used.*

field 5: Percentage of theoretical maximum density at which density-related mortality is invoked. *Default = 55, Lower limit = 10*

field 6: Percentage of theoretical maximum density at which the stand reaches actual maximum density. *Default = 85, Upper limit = 95*

field 7: Stagnation indicator (CR variant only). *Default = 0*

0 No stagnation effect

1 Include stagnation effect when stand SDI is above 70% of maximum SDI

SDI is calculated using the equations included in Essential FVS: A User’s Guide to the Forest Vegetation Simulator, section 7.3.2.1.

Caution: Use of this keyword can drastically change predicted yields.

Caution: Fields 5, 6 and 7 are applied at the stand level and are not species-specific values. If multiple SDIMAX keywords are used, fields 5, 6, and 7 should only be specified once.

Note: This keyword is processed before any tree data is read. If after reading the tree data it is found that the stand is above the upper limit of maximum density, the maximum SDI will be automatically recalculated without regard to the value set with this keyword.

Note: When the BAMAX keyword is set, SDIMAX is set based on the BAMAX keyword and the additional of SDIMAX keywords are ignored.

Note: The overall stand maximum SDI is available in the event monitor in the variable BSDIMAX at the beginning of a cycle, and in the variable ASDIMAX after a thinning has occured. Refer to the User’s Guide to the Event Monitor.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.5.2.4

# **SERLCORR** (<u>SER</u>ia<u>L</u> <u>CORR</u>elation)

Variants: All

Replaces parameters for the serial correlation function of the autoregressive moving-average model, ARMA(1,1), which produces serial correlation between errors for successive diameter increment predictions. To some degree, diameter growths in one cycle can be made to correlate with diameter growths from the previous cycle. That is to say a tree growing well in one cycle will tend to keep growing well, relative to other trees, in the next cycle. The primary use of this keyword is to turn off the autocorrelation by setting both parameters to 0 (zero). Use of other values is strongly discouraged unless the user understands well the implications on the model.

field 1: Autoregressive operator φ for the ARMA(1,1) model. *Default = 0.74*

field 2: Moving-average operator θ for the ARMA(1,1) model. *Default = 0.42*

Note: Setting the value of both fields to 0 (zero) turns off the autocorrelation.

Caution: Many of the predictions in FVS are based on diameter increment. Changing the diameter increment prediction also changes many of the other predictions made in the model.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 7.5

# **SETPTHIN** (<u>SET</u>s <u>P</u>oin<u>t</u> <u>THIN</u>ning)

Variants: All

Related keywords: [THINPT](#_THINPT_(THIN_by), [POINTREF](#_POINTREF_(POINT_REFerence)), [THINRDSL](#_THINRDSL_(THIN_to), POINTGRP

Sets the parameters for a thinning by point, used in conjunction with the THINPT keyword.

field 1: Year or cycle that thinning is scheduled. *Default = 1*

field 2: Point number or group of points (based on POINTGRP) to be thinned. A value of 0 will thin all plots.

field 3: Point thinning (THINPT) residual attribute.

1 = Trees per acre

2 = Basal area

3 = Stand Density Index

4 = Percent Canopy Cover

5 = Relative Density (Curtis)

6 = Relative Density (SILVAH model)

Caution: This keyword must precede the THINPT keyword for it to affect the thinning.

# **SETSITE** (<u>SET</u> <u>SITE</u> related parameters)

Variants: All

Related keywords: [STDINFO](#_STDINFO_(STanD_INFOrmation)), [SITECODE](#_SITECODE_(SITE_index)

For the initial inventory, stand habitat type, plant association, or ecological unit is entered using field 2 of the STDINFO keyword record; a basal area maximum for the stand is entered using the BAMAX keyword; site index values for individual species are entered using the SITECODE keyword; and Stand Density Index (SDI) maximums for individual species are entered using the SDIMAX keyword. These values are usually regarded as constants throughout a projection. Climate change research suggests these values might change over time. This keyword allows users to change these values during a projection to facilitate simulating climate change effects.

field 1: Year or cycle in which the parameter will be changed. Enter 0 (zero) to affect all cycles. *Default = 1*

field 2: Habitat type, plant association, or ecological unit. This field must be numeric, so if designating a plant association or ecological unit, use the numeric sequence number of the plant association or ecological unit code from the variant overview document. *Default = blank (no change)*

field 3: Basal area maximum. *Default = blank (no change)*

field 4: Species code or species group name. *Default = All*

field 5: Site index, or percent change in site index, for the species indicated in field 4. *Default = blank (no change)*

field 6: Enter a 0 (zero) or leave blank if the value in field 5 is a site index value; enter a 1 if the value in field 5 is a percent change value.

*Default = blank (site index value)*

field 7: Stand Density Index maximum for the species indicated in field 4.

*Default = blank (no change)*

Note: To specify the habitat type, plant association, ecological code, basal area maximum, site index, or stand density index maximum for the stand at the time of inventory, users should use the STDINFO, BAMAX, SITECODE, or SDIMAX keywords. The SETSITE keyword cannot be used to set these values at the time of inventory; it can only be used to change these values during the projection.

Note: Due to the internal processing sequence in FVS, conditional implementations of SETSITE must include a wait time (in years) that is greater than the cycle length in which the condition is found true. SETSITE will then be applied in the cycle that corresponds with the wait time.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.1.2.2

# **SITECODE** (<u>SITE</u> index <u>CODE</u>)

Variants: All except CI, KT, and NI

Sets species-specific site index values. If a SITECODE keyword is present, all species for which site index values were not explicitly set will be assigned site index values derived from the site index of the specified site species. If no SITECODE keyword is present, site index values are assigned, refer to the variant overview for these defaults.

field 1: Species code. If blank, all species will be assigned the value in field 2.

*Default = blank (all species)*

field 2: Site index in feet. For the NC, SO, CA, and WS variants, a value less than 8 is interpreted as a Dunning site code and is converted to a site index for each species as described in the technical documentation for those variants.

field 3: Site species override code. A non-zero value designates the species in field 1 as the site species for the stand. *Default = 0*

Caution: The value entered in field 2 should be based on the site curves and base ages used to build the variant relationships. Refer to the variant overview for this information.

Note: Field 3 is ignored if field 1 contains a species group. If field 1 contains a species group and the site species has not been set, site species gets set to the first species in the species group.

Note: If field 3 is 0 (zero) or blank in each of the SITECODE keywords used, the species from the first SITECODE keyword with a non-zero, non-blank species code becomes the site species for the stand.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.1.2.2

# **SPCODES** (<u>SP</u>ecies <u>CODES</u>)

Variants: All

Related keywords: [TREEFMT](#_TREEFMT_(TREE_)

Identifies species codes used on the input tree records. This keyword is used when the species codes in the input tree records do not match the standard FVS species codes for the variant being used (see Appendix A). One or more supplemental records are required that contain the species codes from the input tree records.

field 1: FVS species sequence number (integer) whose alpha code is to be overridden. Do not enter the 2-character alpha species code. If blank, all species codes are to be replaced.

Supplemental record(s):

Species codes from the input tree records are left justified in 4-character fields. If field 1 identifies a specific species, the supplemental record consists simply of one 4-character field. If field 1 is blank, then all species codes are to be overridden and each supplemental record consists of up to twenty consecutive 4-character fields. In this case, the species codes are entered sequentially in the order of the species sequence numbers (see Appendix A). If there are blanks in the sequence numbers, then those 4-character fields are left blank. Each species in FVS can be represented by only *one* code from the input tree records.

Example 1, single species:

SPCODES 7

LPP

Example 2, all species in a variant with 24 species:

SPCODES

SAF CF3 DF 217 WF2 MTH 68 WL5 BC LP5 LPP PY PP1 WBP WWP J BS2 93 WTS ASP

CW A99 990 999

Note: The codes in the supplemental records are interpreted literally and blanks are not equivalent to zeros. For example, “WP ” is different than “ WP” (trailing spaces vs. leading spaces). Also “ 3” is different than “ 03”.

Note: If all tree records are ultimately reported by FVS as “other species” or something similar, an error has probably been made in the preparation of either the SPCODES or [TREEFMT](#_TREEFMT_(TREE_) keywords.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.2.3.3

# **SPECPREF** (<u>SPEC</u>ies removal <u>PREF</u>erence)

Variants: All

Related keywords: [TCONDMLT](#_TCONDMLT_(Tree_Condition), THINxxx

Sets the removal preference for a species. This affects the order in which trees are selected for removal when a harvest is implemented. When a thinning is implemented, tree records with the highest removal priority are selected first, and selection continues based on removal priority until the parameters of the thinning have been met, or until all records have been selected. The removal priority is determined by the equation below:

P = (Fd ∙ DBH) + SP + (Ft ∙ IMC) + Fm + (Fs ∙ STS) + (Fpba ∙ PBAi) + (Fpccf ∙ PCCFi) + (Fptpa ∙ PTPAi)

where:

Fd is equal to 1 if thinning from above, or -1 if thinning from below

DBH is tree diameter at breast height

SP is a user-specified species preference

Ft is a user-specified multiplier for the tree value class code

IMC is tree value class code

Fm is a user-specified dwarf mistletoe preference

Fs is a user-specified multiplier for the tree special status code

STS is tree special status code

Fpba is a user-specified multiplier for the point estimate of stand basal area

PBAi is stand basal area estimate for the inventory point where the tree is located

Fpccf is a user specified multiplier for the point estimate of stand crown competition factor

PCCFi is the estimate of the stand crown competition factor for the inventory point where the tree is located

Fptpa is a user-specified multiplier for the point estimate of stand trees per acre

PTPAi is stand trees per acre estimate for the inventory point where the tree is located

All terms after the first default to zero. (See [TCONDMLT](#_TCONDMLT_(Tree_Condition) and refer to the Dwarf Mistletoe Impact Model keyword documentation for MISTPREF for a discussion of the other terms). The relevant part of the equation for this keyword is:

P = (Fd ∙ DBH) + SP

For the species designated in field 2 of the SPECPREF keyword, the SP (species preference) term has the value assigned in field 3. Species preference for other species are set with additional SPECPREF keywords, otherwise they have a default value of 0 (zero). The SPECPREF keyword alone does not remove trees. It must be followed by one or more thinning keywords, which, in conjunction with the SPECPREF keyword, determine the order of tree records selected.

field 1: Year or cycle the preference is to be applied. Once in effect it remains in effect until replaced by a subsequent multiplier. *Default = 1*

field 2: Species code whose removal priority is to be changed. A valid code is required or the keyword is ignored.

field 3: Preference value for removal of species identified in field 2. A positive value increases the chance for tree removal and a negative value increases the chance for tree retention. *Default = 0*

Example: In a thinning from above, a 15-inch PP is selected for harvest before a 12-inch WF. If a SPECPREF keyword is used to assign a preference of 5 to WF, then the WF (whose removal priority is now 12\*1 + 5, or 17) is selected before the PP, even though the PP is larger.

Note: For any particular species this keyword remains in effect until a subsequent use of the keyword changes the priority for that species.

Note: Keyword order may be important. If a SPECPREF keyword is specified for the *same year* that a thinning keyword is specified, the species preference will affect the thinning only if the SPECPREF keyword appears in the keyword sequence before the thinning keyword.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

Caution: The SPECPREF keyword has no effect on thinning done with the [THINDBH](#_THINDBH_(THIN_from) or [THINHT](#_THINHT_(THIN_from) keywords.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 26

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.2.4.1

# **SPGROUP** (<u>SPecies</u> <u>G</u>roup)

Variants: All

Related keywords: [SPLEAVE](#_SPLEAVE_(SPecies_LEAVE))

Defines a group of species that can be referenced by a single name, or FVS sequence number, and will be treated as a group in management actions or event monitor functions. Users may define up to 30 species groups with each group containing up to 50 species codes. If the species group name is entered in the species field of a keyword, the keyword action will apply to all species in the group. One or more supplemental records are required that contain the FVS species codes or FVS species sequence numbers.

When using keywords in FVS, species can be referenced by their 2-character alpha designation or numeric sequence number. Similarly, species groups can be referenced by their group name, defined in field 1, or by their FVS sequence number. FVS sequence numbers for species groups are assigned by FVS and are contained in the range (-1 to -30). When referencing species groups on keywords, users are encouraged to use the group name instead of the FVS group sequence number.

field 1: Species Group name. *Default = GroupXX where XX=01 for the first defined species group,02 for the second, …, 30 for the 30th defined species group. (e.g. Group01, Group02, …, Group30)*

Supplemental record(s):

FVS species codes or species sequence numbers. A supplemental record can be up to 150 characters long, therefore up to 50 species can be placed on one supplemetal record. The record is free form in format with each species code separated by one or many blanks. Species can be continued onto an additional supplental record by putting an “&” at the end of the line.

Example: For the NI variant, define two species groups, one group named BIGFOOT containing Douglas-fir, lodgepole pine, and ponderosa pine; the other using the FVS default naming convention containing grand fir, lodgepole pine, and western hemlock.

SPGROUP BIGFOOT

DF 7 PP

SPGROUP

GF &

LP &

WH

The first group contains a mixture of the alpha species codes and FVS species sequence numbers (7 being Lodgepole in the NI variant). Also the species are left justified in fields on the supplemental record. This group could be referenced by the group name BIGFOOT or the FVS sequence number -1 since it is the first defined group.

The second group contains all alpha species codes with each code located on its own line with a “&” coninueing the list onto the following line. This group could be referenced by the group name GROUP02 (i.e. the default group name) or the FVS sequence number -2 since it is the second defined group.

The keyword

THINDBH 2020. 5. 10. 1. BIGFOOT

would remove all Douglas-fir, lodgepole pine, and ponderosa pine in the diameter range 5.0 <u><</u> dbh < 10.0 in the year 2020.

The keywords

COMPUTE 0.

TPAG2 = SPMCDBH(1,GROUP2,0)

END

would compute the total trees per acre of grand fir, lodgepole pine, and western hemlock and store the result in the event monitor variable TPAG2.

Note: The SPGROUP keyword must precede any other keyword that references the species group

Note: The species group name must be between 3 and 10 characters long, cannot be “ALL” or any pre-defined event monitor variable name, and cannot contain any blanks. Species group names must be unique: i.e., the same species group name cannot be used more than once in a single FVS run. A species group may contain up to 50 species. An individual species may be included in more than one group.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.2.5

# **SPLABEL** (<u>S</u>tand <u>P</u>olicy <u>LABEL</u>)

Variants: All

Related keywords: [AGPLABEL](#_AGPLABEL_(Acitvity_Group), [ALSOTRY](#_ALSOTRY_(ALSO_TRY), [IF](#_IF_(begin_IF-then), [THEN](#_THEN_(schedule_if-THEN), [ENDIF](#_ENDIF_(END_an)

Specifies a set of labels for the stand that may be used to selectively schedule conditional activities. This capability is useful only when multiple stands are included in a simulation. The stand policy labels are assigned to stands based on common meaningful characteristics. These labels are then used to conditionally schedule similar activities in the stands with common policy labels using the [AGPLABEL](#_AGPLABEL_(Acitvity_Group) keyword. For example, three stands are to be managed. The first two are assigned a stand policy label *PineType*, and the second and third are assigned a stand policy label *Overstocked*. The second stand, therefore, has two stand policy labels in its set, *PineType* and *Overstocked*, whereas each of the other two stands has a single label. If an activity is conditionally scheduled, using [AGPLABEL](#_AGPLABEL_(Acitvity_Group), to be applied only to stands with the label *PineType* only the first two stands will be considered since these are the only stands with the label *PineType*. If a second activity is conditionally scheduled to be applied only to stands with the label *Overstocked* only the second and third stands will be considered.

Refer to the description for the [AGPLABEL](#_AGPLABEL_(Acitvity_Group) keyword for an explanation and example of how to use the stand policy labels in conditionally scheduling activities.

No fields are associated with this keyword. Labels are entered on a supplemental record.

Supplemental record:

Specifies the stand policy labels. Labels are separated by a single comma. The total number of characters in the label set may not exceed 100. An ampersand (&) is used to indicate that the list of labels is continued on the next line. Any character may be used as part of a label except a comma, period, or ampersand.

Example:

SPLABEL

PineType, Overstocked, &

Age50-80

Note: If more than one SPLABEL keyword is used for a stand, the set specified latest in the sequence of keywords will be used and the others will be ignored.

References: GTR INT-275, User’s Guide to the Event Monitor..., p. 7

GTR INT-281, User’s Guide to the Parallel Processing Extension..., p. 9

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.6.2

# **SPLEAVE** (<u>SP</u>ecies <u>LEAVE</u>)

Variants: All

Related keywords: THINxxx, [SPECPREF](#_SPECPREF_(SPECies_removal), [SPGROUP](#_SPGROUP_(SPecies_Group))

The keyword allows species to be excluded or re-included from scheduled harvesting activities.

field 1: Year or cycle to be applied. Once in effect it remains in effect until replaced by a subsequent keyword. *Default = 1*

field 2: Species or species group whose leave-status is to be changed. A valid code is required or the keyword is ignored.

field 3: Flag indicating the leave-status of the species in field 2. *Default = 1*

Flag ≤ 0 the species leave-status is False, species is eligible for harvesting

Flag > 0 the species leave-status is True, specifies is excluded from harvesting

Note: Residual may be larger than the residual thinning target due to the species you excluded.

Note: This keyword will not affect the cutting of dead trees using the SALVAGE keyword.

# **STANDCN** (<u>STAND</u> <u>C</u>ontrol <u>N</u>umber )

Variants: All

Related keywords: [DATABASE](#_DATABASE_(DATABASE_Initialization))

STANDCN allows you to a use a variable called STAND\_CN, which is stored as a 40-character string. A stand-level CN is used in FSVeg as a primary key in the database. Relating the input from a database and output from FVS can be achieved using the database extension. STAND\_CN is a column in the database extension, FVS\_Cases table and FVS\_StandInit table. STAND\_CN can also be used in SQL preprocessing in the Database Extension.

No fields are associated with this keyword, however a supplemental record that contains the Stand Control Number (up to 40 characters) is required.

# **STATS** (<u>STAT</u>istic<u>S</u>)

Variants: All

Requests that optional output tables that show a statistical description of the input (inventory) data for a projection be written to the standard FVS output file. Statistics reported include board‑foot volume, cubic‑foot volume, trees per acre, and basal area per acre for each species present in the stand. Also included are the mean, standard deviation, coefficient of variation, and confidence limits across sample plots for stand totals of these volume and density measures. The user-defined significance level defines the corresponding Student’s t-value calculated by the program.

field 1: Significance level for computing confidence limits. *Default = 0.05*

Caution: No corrections are made to account for non-stockability if the stand contains non-stockable plots. These plots are included in the calculations.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.3.2.1

# **STDIDENT** (<u>ST</u>an<u>D</u> <u>IDENT</u>ification)

Variants: All

Specifies a stand identification code and optional descriptive title to label output tables.

No fields are associated with this keyword. Stand identification information is entered on a supplemental record.

Supplemental record:

Contains a stand identification code of up to 26 characters. This stand ID will appear with every output table. A blank character indicates the end of the stand identification code. Anything entered after the blank, up to column 80, is read as an optional “Title” that will appear with some of the output tables.

Example:

STDIDENT

C24S112 Stand 112 in Clear Creek drainage

This example uses “C24S112” as the stand ID. This appears along with “Stand 112 in Clear Creek drainage” in the headings of tables in the main FVS output file.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 11

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.1.2.1

# **STDINFO** (<u>ST</u>an<u>D</u> <u>INFO</u>rmation)

Variants: All

Related keywords: [MODTYPE](#_MODTYPE_(MODel_TYPE)), [LOCATE](#_LOCATE_(LOCATE_the)

Describes the characteristics of the site where the stand is located. Default values for the different fields vary by variant and are listed in the table below the field descriptions.

field 1: Numeric Region and National Forest code where stand is located.

RFF where R = region, FF = 2-digit forest code

For KT variant, RFFDDCCC where R = region, FF = forest, DD = district,

CCC = compartment (used in growth equations)

For SN variants, RFFDD where R = region, FF = forest, DD = district (used in volumes)

field 2: Stand habitat type code or plant community code (ecological unit code in SN.)

field 3: Stand age in years.

field 4: Stand aspect in degrees (0 = No meaningful aspect, 360 = North).

field 5: Stand slope percent.

field 6: Stand elevation in 100’s of feet (10’s of feet in AK variant). For example, a code of 52 would mean elevation is 5200 feet (520 feet in AK).

field 7: Potential Vegetation (field 2) Reference code. For list of reference codes see FSVEG documentation.

field 8: Ecological subsection or section code. Used for determining appropriate FIA volume equations when the [FIAVBC](#_FIAVBC_(FIA_Volume,) keyword is invoked.

field 9: Stand origin code. Used for determining appropriate FIA volume equations when the [FIAVBC](#_FIAVBC_(FIA_Volume,) keyword is invoked.

0 Natural

1 Plantation

Note: Any field on the STDINFO keyword that is left blank will retain the value assigned by a previous STDINFO keyword. If no value was previously assigned, the default is used.

Note: The values entered in fields 2-6 are available in the event monitor in variables HABTYPE, AGE, ASPECT, SLOPE, and ELEV respectively.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 12

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.1.2.2

# **STOP** (<u>STOP</u> processing)

Variants: All

Marks the end of the keyword record file. When the STOP keyword is encountered, program execution ends.

No fields are associated with this keyword.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 8

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.1.3.3

# **STRCLASS** (<u>STR</u>uctural <u>CLASS</u>)

Variants: All

Related keywords: [CCADJ](#_CCADJ_(corrected_percent)

Requests that structural class calculations are done by FVS. A table of structural statistics can be written to the main FVS output file. The structural class computation results are made available to the Event Monitor. The STRCLASS keyword must be present if the user is going to use Event Monitor structural stage variables (refer to the list in the Note that follows this description).

field 1: A nonzero entry causes FVS to print the table of structural statistics in the main FVS output file. 0 (zero) suppresses printing of the tables. *Default = 1*

field 2: The percentage of a tree’s height that is used to define the minimum gap size. *Range: 0-100, Default = 30*

field 3: The dbh boundary (in inches) separating seedling/sapling-sized trees from pole sized trees. *Default = 5.0*

field 4: The dbh boundary (in inches) separating pole-sized trees from large trees that may be considered old. *Default = 25.0*

field 5: The minimum percent cover that must be exceeded for a potential stratum to qualify as an actual stratum. *Range: 0-100, Default = 5*

field 6: Minimum trees per acre that must be exceeded for a stand that has less than 5 percent cover to be classified stand initiation rather than bare ground.

*Default = 200*

field 7: Percentage of the maximum stand density index that must be exceeded for a stand to be classified stem exclusion rather than stand initiation.

*Range: 0-100, Default = 30*

Note: When the STRCLASS keyword is used the structural classification logic is triggered. Then, and only then, the following Event Monitor variables are automatically defined by FVS:

BSCLASS Before-thinning structural class code

ASCLASS After-thinning structural class code

BSTRDBH Before-thinning weighted average dbh of the uppermost stratum

ASTRDBH After-thinning weighted average dbh of the uppermost stratum

BCANCOV Before-thinning percent canopy cover for the stand

ACANCOV After-thinning percent canopy cover for the stand

BMAXHS Before-thinning height of tallest tree in uppermost stratum

AMAXHS After-thinning height of tallest tree in uppermost stratum

BMINHS Before-thinning height of shortest tree in uppermost stratum

AMINHS After-thinning height of shortest tree in uppermost stratum

BNUMSS Before-thinning total number of valid strata

ANUMSS After-thinning total number of valid strata

Reference: RMRS-GTR-24, Percent Canopy Cover and Stand Structure Statistics ...

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.3.2.2

# **SVS** (<u>S</u>tand <u>V</u>isualization <u>S</u>ystem input)

Variants: All

Generates output files specifically for running the Stand Visualization System (SVS) post processor. The SVS software is not a part of the FVS software. It is maintained by the Pacific Northwest Research Station. It generates 3D drawings of the stand based on information produced by FVS.

field 1: Plot geometry and tree placement. *Default = 1*

0 Square SVS layout, ignore FVS plot designations

1 Square SVS layout, position trees by FVS plot designation

2 Round SVS layout, ignore FVS plot designations

3 Round SVS layout, position trees by FVS plot designation

field 2: Grid size for ground surface definition file. This is the number of cells along each side of the square grid of colors used to cover the ground in the SVS images. A value of 0 (zero) indicates no ground surface definition file is to be used. *Range = 0-256, Default = 100*

field 3: Draw range poles. *Default = 0*

0 No range poles

1 Range poles are drawn at the edges of the SVS layout

field 4: Draw subplot boundaries. *Default = 0*

0 No FVS plot boundaries drawn

1 FVS plot boundaries are drawn as lines in the SVS layout

field 5: Ground grid color scheme for ground surface definition file. *Default = 2*

1 Reds/oranges

2 Tans

3 Reddish browns

4 Light greys

5 Lime greens

6 Dark greens

7 Medium bluegreens

8 Dark greens

9 Dark greys

10 Light browns

11 Khakis/browns

12 Light greens

13 Dark bluegreens

14 Chocolate browns

15 Dark tans

16 Yellows

17 Medium greys

18 Browns

19 Greens

20 Dark browns

field 6: Render SVS output in imperial or metric units . *Default = 0*

0 Output is generated in imperial units

1 Output is generated in metric units

Note: Use of this keyword does not automatically start the SVS post processor program.

Note: There are several output files created by the SVS keyword. An index file is produced which has the same base name as the simulation file with a *\_index.svs* appended. The image files associated with the index file are placed in a directory with the base name of the simulation file. The first image file is named with the simulation base name with *\_001.svs* appended, and subsequent files are named similarly using subsequent numbers in the names (e.g. simulation file *testrun.key* produces index file *testrun\_index.svs*, and image files *testrun\_001.svs*, *testrun\_002.svs*, etc.).

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.7

# **TCONDMLT** (<u>T</u>ree <u>C</u>ondition <u>MULT</u>iplier)

Variants: All

Related keywords: [SPECPREF](#_SPECPREF_(SPECies_removal), THINxxx

Sets the tree value class multiplier, special tree status multiplier and or plot density multiplier in the harvest priority algorithm. This affects the order in which trees are selected for removal when a harvest is implemented. When a thinning is implemented, tree records with the highest removal priority are selected first, and selection continues based on removal priority until the parameters of the thinning have been met, or until all records have been selected. The removal priority is determined by the equation below:

P = (Fd ∙ DBH) + SP + (Ft ∙ IMC) + Fm + (Fs ∙ STS) + (Fpba ∙ PBAi) + (Fpccf ∙ PCCFi) + (Fptpa ∙ PTPAi)

where:

Fd is equal to 1 if thinning from above, or -1 if thinning from below

DBH is tree diameter at breast height

SP is a user-specified species preference

Ft is a user-specified multiplier for the tree value class code

IMC is tree value class code

Fm is a user-specified dwarf mistletoe preference

Fs is a user-specified multiplier for the tree special status code

STS is tree special status code

Fpba is a user-specified multiplier for the point estimate of stand basal area

PBAi is stand basal area estimate for the inventory point where the tree is located

Fpccf is a user specified multiplier for the point estimate of stand crown competition factor

PCCFi is the estimate of the stand crown competition factor for the inventory point where the tree is located

Fptpa is a user-specified multiplier for the point estimate of stand trees per acre

PTPAi is stand trees per acre estimate for the inventory point where the tree is located

The relevant part of the equation for this keyword is:

P = (Fd ∙ DBH) + (Ft ∙ IMC) + (Fs ∙ STS) + (Fpba ∙ PBAi) + (Fpccf ∙ PCCFi) + (Fptpa ∙ PTPAi)

The tree value class multiplier Ft is applied to the value class of all tree records. A value of 0 (zero) causes value class to be ignored in determining removal priority. The special tree status multiplier Fs is applied to the special tree status of any records that were given a special tree status (a special tree status code is the severity code associated with a damage code of 55). Special tree status codes are arbitrary. They were incorporated as a mechanism to allow modification of the removal priority based on user-defined attributes that would be otherwise unavailable to the user. A value of 0 (zero) causes special tree status to be ignored in determining removal priority. Fpba, Fpccf and Fptpa are all multiplier that are applied based on point (or plot) density. Allowing users to increase (or decrease) the likelihood a tree will be removed based on the density of the tree’s point (or plot). The TCONDMLT keyword alone does not remove trees. It must be followed by one or more thinning keywords, which, in conjunction with the TCONDMLT keyword, determine the order of tree records selected.

field 1: Year or cycle in which the change is to be implemented. Once in effect it remains in effect until replaced by a subsequent multiplier. *Default = 1*

field 2: Tree value class multiplier. A positive value increases the chance for removal of lower value class trees. A negative value increases the chance for removal of higher value class trees. *Default = 0*

field 3: Special tree status multiplier. A positive value increases the chance of removal of trees with a high special tree status code. A negative value increases the chance of retention of trees with a high special tree status code. *Default = 0*

field 4: Point basal area multiplier. A positive value increases the chance of removal of trees on the densest plots. A negative value increases the chance of retention of trees on dense plots. *Default = 0*

field 5: Point crown competition factor multiplier. A positive value increases the chance of removal of trees on the densest plots. A negative value increases the chance of retention of trees on dense plots. *Default =0*

field 6: Point trees per acre multiplier. A positive value increases the chance of removal of trees on the densest plots. A negative value increases the chance of retention of trees on dense plots. *Default =0*

Note: This keyword remains in effect until a subsequent use of the keyword changes the multipliers.

Note: Keyword order may be important. If a TCONDMLT keyword is specified for the *same year* that a thinning keyword is specified, the multipliers will affect the thinning only if the TCONDMLT keyword appears in the keyword sequence before the thinning keyword.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

Caution: The TCONDMLT keyword has no effect on thinning done with the [THINDBH](#_THINDBH_(THIN_from) or [THINHT](#_THINHT_(THIN_from) keywords.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 26

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.2.4.1

# **TFIXAREA** (<u>T</u>otal <u>FIX</u>ed plot <u>AREA</u>)

Variants: All

Related keywords: [DESIGN](#_DESIGN_(sampling_DESIGN))

Specifies the total fixed-plot area for small-tree plots. This ensures that the trees per acre expansions are representative of the sampling design. This is useful when multiple small-tree plots are used at each of the plots specified in the tree data. For example, if at every point in a survey three 1/300-acre plots are installed for small trees, the total fixed area for the small-tree plots is 3/300 acre, which reduces to 1/100 acre. The value entered on this keyword is then is 100 (the inverse of 1/100). Trees per acre expansions for small trees will use a factor of 100 instead of 300.

field 1: Inverse of total small-tree fixed plot area (e.g. if there are 2 fixed area plots each of 1/100 acre on every plot, enter 50 in this field). *Default = 300*

Caution: Do not confuse multiple small-tree plots with a sampling design where different size small trees are recorded using different size fixed-plots. In the latter case the areas should NOT be added together. Instead, the tree counts for all small trees in the tree data will need to be modified to represent a single plot size, and the [DESIGN](#_DESIGN_(sampling_DESIGN)) keyword will specify the size of the new representative plot size used for the modified tree counts.

Note: The breakpoint diameter that determines the dbh below which trees were recorded using the small-tree fixed plots is specified on the [DESIGN](#_DESIGN_(sampling_DESIGN)) keyword.

Note: If a small-tree fixed plot area is specified on both the [DESIGN](#_DESIGN_(sampling_DESIGN)) and TFIXAREA keyword records, the value on the record occurring later in the keyword sequence will be used.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.1.2.3

# **THEN** (schedule if-<u>THEN</u> activities)

Variants: All

Related keywords: [IF](#_IF_(begin_IF-then), [ENDIF](#_ENDIF_(END_an), [AGPLABEL](#_AGPLABEL_(Acitvity_Group), [ALSOTRY](#_ALSOTRY_(ALSO_TRY)

Signifies the scheduling portion of an Event Monitor [IF](#_IF_(begin_IF-then)-THEN block. The Event Monitor keyword sequence must begin with an [IF](#_IF_(begin_IF-then) keyword. The next record must be a condition statement that evaluates to true or false. The next record is a THEN keyword. The sequence ends with an [ENDIF](#_ENDIF_(END_an) keyword. All keywords contained between the THEN and [ENDIF](#_ENDIF_(END_an) keywords will be executed whenever the condition is true. Any activity that can be normally scheduled can be alternatively scheduled within the Event Monitor [IF](#_IF_(begin_IF-then)-THEN block. The scheduling date (field 1) on the activity is then interpreted as a delay period. If the date entered is 10, the activity will be scheduled 10 years following the each date that the logical expression is true. Multiple activities can be scheduled in a single [IF](#_IF_(begin_IF-then)-THEN block, and all will be triggered by the same condition.

No fields are associated with this keyword when used outside the parallel processing extension.

Example: If stand basal area exceeds 100 square feet per acre, wait 10 years (first parameter of the [THINDBH](#_THINDBH_(THIN_from) keyword is now a delay period) and then thin the stand according to the [THINDBH](#_THINDBH_(THIN_from) parameters. Once this condition is true, wait 30 years (parameter on the [IF](#_IF_(begin_IF-then) keyword) before checking the condition again:

IF 30

BBA GT 100

THEN

THINDBH 10 0 99 1.0 0 0 0

ENDIF

Caution: The year/cycle field on activity keywords changes meaning to become a delay period when the keywords are included in an Event Monitor [IF](#_IF_(begin_IF-then)-THEN-[ENDIF](#_ENDIF_(END_an) block. Entering 2010 in the date field of an activity keyword that is in an [IF](#_IF_(begin_IF-then)-THEN-[ENDIF](#_ENDIF_(END_an) block will cause a delay period of 2010 years between the time the condition is true and the time the activity will be scheduled.

References: GTR INT-275, User’s Guide to the Event Monitor..., p. 2

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.5.1

# **THINABA** (<u>THIN</u> from <u>A</u>bove to <u>B</u>asal <u>A</u>rea target)

Variants: All

Related keywords: THINxxx, [SPECPREF](#_SPECPREF_(SPECies_removal), [TCONDMLT](#_TCONDMLT_(Tree_Condition), [CUTEFF](#_CUTEFF_(CUTting_EFFiciency))

Schedules a thinning from above to a basal-area-per-acre target. Only trees with dbh’s and heights within the user-defined ranges are considered for removal. The tree record with the largest diameter within the specified range is considered for removal first, and the proportion of that tree record specified in field 3 is removed. The tree record with the next largest diameter is considered next, then the next largest and so on until the residual basal area target is met or all records in the specified range have been considered. The residual target basal area is specified only for the user-defined range of dbh and height, and does *not* represent the total residual unless the range of dbh’s and heights includes all trees in the stand.

field 1: Year or cycle that thinning is scheduled. *Default = 1*

field 2: Target basal area in square feet per acre for the segment of the dbh and height distribution defined in fields 4-7. *An entry is required*

field 3: Cutting efficiency parameter specific to this thinning request (refer to the [CUTEFF](#_CUTEFF_(CUTting_EFFiciency)) keyword for description). *Range: 0.01-1.0, Default = 1.0*

field 4: Smallest dbh in inches to be considered for removal (greater than or equal). *Default = 0.0*

field 5: Largest dbh in inches to be considered for removal (less than). *Default = 999.0*

field 6: Shortest tree in feet to be considered for removal (greater than or equal). *Default = 0*

field 7: Tallest tree in feet to be considered for removal (less than). *Default = 999*

Caution: The specified residual target is for the user-defined range of dbh and height. The total residual will also include all trees that do not fall within this range.

Caution: If the cutting efficiency is set too low, the model may not be able to attain the residual target specified. The thinning request will be completed, but the residual stand condition will be greater than the specified target.

Caution: If a thinning keyword is embedded in an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, year (field 1) is interpreted as years from the time the condition is true until implementation, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after condition is true to thin the stand.)

Note: If field 2 is blank the keyword is ignored.

Note: If the initial stand condition is already less than the target specified, the thinning will be cancelled. Look at the “Activity Summary” portion of the standard FVS output to see which requests were implemented and which were cancelled.

Note: A thinning is always done in the first year of the cycle in which it is scheduled, even if the year entered in field 1 is not the first year of the cycle. If a thinning must occur in a particular year, a [TIMEINT](#_TIMEINT_(TIME_) keyword may be needed to change the length of a cycle so that the desired year for the thinning becomes the first year of a cycle.

Note: Multiple thinning keywords can be scheduled for the same year to simulate different aspects of a single harvest. Care must be taken to ensure that the dbh and height ranges do not unintentionally overlap, or the residual may not be what was expected. Total residuals must be calculated carefully.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 27

GTR INT-208, Supplement to the User’s Guide..., p. 16

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.2.4.2

# **THINATA** (<u>THIN</u> from <u>A</u>bove to <u>T</u>rees per <u>A</u>cre target)

Variants: All

Related keywords: THINxxx, [SPECPREF](#_SPECPREF_(SPECies_removal), [TCONDMLT](#_TCONDMLT_(Tree_Condition), [CUTEFF](#_CUTEFF_(CUTting_EFFiciency))

Schedules a thinning from above to a trees-per-acre target. Only trees with dbh’s and heights within the user-defined ranges are considered for removal. The tree record with the largest diameter within the specified range is considered for removal first, and the proportion of that tree record specified in field 3 is removed. The tree record with the next largest diameter is considered next, then the next largest and so on until the residual trees-per-acre target is met or all records in the specified range have been considered. The residual target trees per acre is specified only for the user-defined range of dbh and height, and does *not* represent the total residual unless the range of dbh’s and heights includes all trees in the stand.

field 1: Year or cycle that thinning is scheduled. *Default = 1*

field 2: Target trees per acre for the segment of the dbh and height distribution defined in fields 4-7. *An entry is required*

field 3: Cutting efficiency parameter specific to this thinning request (refer to the [CUTEFF](#_CUTEFF_(CUTting_EFFiciency)) keyword for description). *Range: 0.01-1.0, Default = 1.0*

field 4: Smallest dbh in inches to be considered for removal (greater than or equal). *Default = 0.0*

field 5: Largest dbh in inches to be considered for removal (less than). *Default = 999.0*

field 6: Shortest tree in feet to be considered for removal (greater than or equal). *Default = 0*

field 7: Tallest tree in feet to be considered for removal (less than). *Default = 999*

Caution: The specified residual target is for the user-defined range of dbh and height. The total residual will also include all trees that do not fall within this range.

Caution: If the cutting efficiency is set too low, the model may not be able to attain the residual target specified. The thinning request will be completed, but the residual stand condition will be greater than the specified target.

Caution: If a thinning keyword is embedded in an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, year (field 1) is interpreted as years from the time the condition is true until implementation, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after condition is true to thin the stand.)

Note: If field 2 is blank the keyword is ignored.

Note: If the initial stand condition is already less than the target specified, the thinning will be cancelled. Look at the “Activity Summary” portion of the standard FVS output to see which requests were implemented and which were cancelled.

Note: A thinning is always done in the first year of the cycle in which it is scheduled, even if the year entered in field 1 is not the first year of the cycle. If a thinning must occur in a particular year, a [TIMEINT](#_TIMEINT_(TIME_) keyword may be needed to change the length of a cycle so that the desired year for the thinning becomes the first year of a cycle.

Note: Multiple thinning keywords can be scheduled for the same year to simulate different aspects of a single harvest. Care must be taken to ensure that the dbh and height ranges do not unintentionally overlap, or the residual may not be what was expected. Total residuals must be calculated carefully.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 27

GTR INT-208, Supplement to the User’s Guide..., p. 16

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.2.4.2

# **THINAUTO** (<u>THIN</u> <u>AUTO</u>matically)

Variants: All

Related keywords: THINxxx, [SPECPREF](#_SPECPREF_(SPECies_removal), [TCONDMLT](#_TCONDMLT_(Tree_Condition), [CUTEFF](#_CUTEFF_(CUTting_EFFiciency))

Schedules automatic stocking control. Thinning from below is automatically scheduled whenever the stand density exceeds the user-defined upper limit management threshold. The thinning reduces stand density to the user-defined lower limit management threshold. Thresholds are defined as percentages of maximum stand density index.

field 1: Year or cycle that automatic stocking control is to begin. The need for thinning will be evaluated in that cycle, and in all subsequent cycles. *Default = 1*

field 2: Percentage of maximum SDI that defines the lower management limit for stand density. *Default = 45*

field 3: Percentage of maximum SDI that defines the upper management limit for stand density. *Default = 60*

field 4: Cutting efficiency parameter specific to automatic stocking control request (refer to the [CUTEFF](#_CUTEFF_(CUTting_EFFiciency)) keyword for description). *Range: 0.01-1.0, Default = 1*

Caution: Check the stocking guide used by the growth model to be sure lower and upper limits are appropriate for your area.

Caution: When using the KT or NI variant, an [SDIMAX](#_SDIMAX_(Stand_Density) keyword must be included in the simulation file and the SDI maximums must be set for all species, otherwise this keyword will result in a clearcut.

Caution: If the cutting efficiency is set too low, the model may not be able to attain the lower limit specified. The thinning request will be completed, but the residual stand condition will be denser than the lower limit specifies.

Note: If field 2 is blank the keyword is ignored.

Note: This keyword can create management scenarios that are impractical to implement on the ground. Using the Event Monitor, other sets of keywords can be created that achieve automatic stand density control using other thinning keywords. In this way the deficiencies of this keyword can be overcome.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 28

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.2.4.3

# **THINBBA** (<u>THIN</u> from <u>B</u>elow to <u>B</u>asal <u>A</u>rea target)

Variants: All

Related keywords: THINxxx, [SPECPREF](#_SPECPREF_(SPECies_removal), [TCONDMLT](#_TCONDMLT_(Tree_Condition), [CUTEFF](#_CUTEFF_(CUTting_EFFiciency))

Schedules a thinning from below to a basal-area-per-acre target. Only trees with dbh’s and heights within the user-defined ranges are considered for removal. The tree record with the smallest diameter within the specified range is considered for removal first, and the proportion of that tree record specified in field 3 is removed. The tree record with the next smallest diameter is considered next, then the next smallest and so on until the residual basal area target is met or all records in the specified range have been considered. The residual target basal area is specified only for the user-defined range of dbh and height, and does *not* represent the total residual unless the range of dbh’s and heights includes all trees in the stand.

field 1: Year or cycle that thinning is scheduled. *Default = 1*

field 2: Target basal area in square feet per acre for the segment of the dbh and height distribution defined in fields 4-7. *An entry is required*

field 3: Cutting efficiency parameter specific to this thinning request (refer to the [CUTEFF](#_CUTEFF_(CUTting_EFFiciency)) keyword for description). *Range: 0.01-1.0, Default = 1.0*

field 4: Smallest dbh in inches to be considered for removal (greater than or equal). *Default = 0.0*

field 5: Largest dbh in inches to be considered for removal (less than). *Default = 999.0*

field 6: Shortest tree in feet to be considered for removal (greater than or equal). *Default = 0*

field 7: Tallest tree in feet to be considered for removal (less than). *Default = 999*

Caution: The specified residual target is for the user-defined range of dbh and height. The total residual will also include all trees that do not fall within this range.

Caution: If the cutting efficiency is set too low, the model may not be able to attain the residual target specified. The thinning request will be completed, but the residual stand condition will be greater than the specified target.

Caution: If a thinning keyword is embedded in an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, year (field 1) is interpreted as years from the time the condition is true until implementation, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after condition is true to thin the stand.)

Note: If field 2 is blank the keyword is ignored.

Note: If the initial stand condition is already less than the target specified, the thinning will be cancelled. Look at the “Activity Summary” portion of the standard FVS output to see which requests were implemented and which were cancelled.

Note: A thinning is always done in the first year of the cycle in which it is scheduled, even if the year entered in field 1 is not the first year of the cycle. If a thinning must occur in a particular year, a [TIMEINT](#_TIMEINT_(TIME_) keyword may be needed to change the length of a cycle so that the desired year for the thinning becomes the first year of a cycle.

Note: Multiple thinning keywords can be scheduled for the same year to simulate different aspects of a single harvest. Care must be taken to ensure that the dbh and height ranges do not unintentionally overlap, or the residual may not be what was expected. Total residuals must be calculated carefully.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 27

GTR INT-208, Supplement to the User’s Guide..., p. 16

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.2.4.2

# **THINBTA** (<u>THIN</u> from <u>B</u>elow to <u>T</u>rees per <u>A</u>cre target)

Variants: All

Related keywords: THINxxx, [SPECPREF](#_SPECPREF_(SPECies_removal), [TCONDMLT](#_TCONDMLT_(Tree_Condition), [CUTEFF](#_CUTEFF_(CUTting_EFFiciency))

Schedules a thinning from below to a trees-per-acre target. Only trees with dbh’s and heights within the user-defined ranges are considered for removal. The tree record with the smallest diameter within the specified range is considered for removal first, and the proportion of that tree record specified in field 3 is removed. The tree record with the next smallest diameter is considered next, then the next smallest and so on until the residual trees-per-acre target is met or all records in the specified range have been considered. The residual target trees per acre is specified only for the user-defined range of dbh and height, and does *not* represent the total residual unless the range of dbh’s and heights includes all trees in the stand.

field 1: Year or cycle that thinning is scheduled. *Default = 1*

field 2: Target trees per acre for the segment of the dbh and height distribution defined in fields 4-7. *An entry is required*

field 3: Cutting efficiency parameter specific to this thinning request (refer to the [CUTEFF](#_CUTEFF_(CUTting_EFFiciency)) keyword for description). *Range: 0.01-1.0, Default = 1.0*

field 4: Smallest dbh in inches to be considered for removal (greater than or equal). *Default = 0.0*

field 5: Largest dbh in inches to be considered for removal (less than). *Default = 999.0*

field 6: Shortest tree in feet to be considered for removal (greater than or equal). *Default = 0*

field 7: Tallest tree in feet to be considered for removal (less than). *Default = 999*

Caution: The specified residual target is for the user-defined range of dbh and height. The total residual will also include all trees that do not fall within this range.

Caution: If the cutting efficiency is set too low, the model may not be able to attain the residual target specified. The thinning request will be completed, but the residual stand condition will be greater than the specified target.

Caution: If a thinning keyword is embedded in an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, year (field 1) is interpreted as years from the time the condition is true until implementation, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after condition is true to thin the stand.)

Note: If field 2 is blank the keyword is ignored.

Note: If the initial stand condition is already less than the target specified, the thinning will be cancelled. Look at the “Activity Summary” portion of the standard FVS output to see which requests were implemented and which were cancelled.

Note: A thinning is always done in the first year of the cycle in which it is scheduled, even if the year entered in field 1 is not the first year of the cycle. If a thinning must occur in a particular year, a [TIMEINT](#_TIMEINT_(TIME_) keyword may be needed to change the length of a cycle so that the desired year for the thinning becomes the first year of a cycle.

Note: Multiple thinning keywords can be scheduled for the same year to simulate different aspects of a single harvest. Care must be taken to ensure that the dbh and height ranges do not unintentionally overlap, or the residual may not be what was expected. Total residuals must be calculated carefully.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 27

GTR INT-208, Supplement to the User’s Guide..., p. 16

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.2.4.2

# **THINCC** (<u>THIN</u> to <u>C</u>anopy <u>C</u>over target)

Variants: All

Related keywords: THINxxx, [SPECPREF](#_SPECPREF_(SPECies_removal), [TCONDMLT](#_TCONDMLT_(Tree_Condition), [CUTEFF](#_CUTEFF_(CUTting_EFFiciency)), [CCADJ](#_CCADJ_(corrected_percent)

Schedules a thinning from a specified dbh range for any, or all, species to a percent canopy cover target. Canopy cover is corrected for crown overlap. If the target canopy cover is nonzero and the cutting control flag is zero, thinning occurs uniformly throughout the specified dbh range until the target is met (the cutting efficiency parameter is ignored and the cutting efficiency needed to complete the thinning is automatically calculated by the program). If the target canopy cover is nonzero and the cutting control flag is nonzero, then the cutting efficiency parameter is used, along with the Removal Priority Algorithm. If the cutting efficiency parameter is set so low that the target cannot be reached, the cutting efficiency is recalculated so that the target is met. Only trees of the user-specified species that are within the user-defined dbh range are considered for removal. The residual target canopy cover is specified only for that species and dbh range, and does *not* represent the total residual unless the dbh range includes all trees of all species in the stand.

field 1: Year or cycle that thinning is scheduled. *Default = 1*

field 2: Residual Canopy Cover (percent). *Default = 0*

field 3: Cutting efficiency parameter specific to this thinning request (refer to the [CUTEFF](#_CUTEFF_(CUTting_EFFiciency)) keyword). *Range: 0.01-1.0, Default = model computed*

field 4: Species code for trees to be removed in this cut. *Default = 0 (All)*

field 5: Smallest dbh in inches to be considered for removal (greater than or equal). *Default = 0.0*

field 6: Largest dbh in inches to be considered for removal (less than). *Default = 999.0*

field 7: Cutting control flag. *Default = 0*

0 = thin throughout the specified diameter range

1 = thin from below in the specified diameter range

2 = thin from above in the specified diameter range.

Canopy cover is calculated using the following equation:

C1 = 100 ( ∑[TPAi \* Ai] ) / 43560

where: C1 = percent canopy cover without accounting for overlap

TPAi = trees per acre represented by the ith tree record

Ai = projected crown area of the ith tree record in ft2/acre

C2 = 100 [1 – exp(-.01C1)]

where: C2 = percent canopy cover that accounts for overlap

C1 = percent canopy cover without accounting for overlap

Caution: The overlap correction only applies to the canopy cover percentage contained on an individual thinning request; the overlap correction does not account for overlap between multiple THINCC requests with different diameter ranges.

Caution: The specified residual target is for the user-specified species and user-defined range of dbh only. The total residual will also include all trees that do not fall within this range.

Caution: The Removal Priority Algorithm is only used when the cutting control flag is nonzero, (reference: [SPECPREF](#_SPECPREF_(SPECies_removal) and [TCONDMLT](#_TCONDMLT_(Tree_Condition) keywords)

Caution: If a thinning keyword is embedded in an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, year (field 1) is interpreted as years from the time the condition is true until implementation, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after condition is true to thin the stand.)

Note: If the initial stand condition is already less than the target specified, the thinning will be cancelled. Look at the “Activity Summary” portion of the standard FVS output to see which requests were implemented and which were cancelled.

Note: A thinning is always done in the first year of the cycle in which it is scheduled, even if the year entered in field 1 is not the first year of the cycle. If a thinning must occur in a particular year, a [TIMEINT](#_TIMEINT_(TIME_) keyword may be needed to change the length of a cycle so that the desired year for the thinning becomes the first year of a cycle.

Note: Multiple thinning keywords can be scheduled for the same year to simulate different aspects of a single harvest. Care must be taken to ensure that the dbh and height ranges do not unintentionally overlap, or the residual may not be what was expected. Total residuals must be calculated carefully.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

References: GTR RMRS-24, Percent Canopy Cover and Stand Structure Statistics from the Forest Vegetation Simulator. pp 1-2.

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.2.4.2.3

# **THINDBH** (<u>THIN</u> from a <u>DBH</u> range)

Variants: All

Related keywords: THINxxx, [CUTEFF](#_CUTEFF_(CUTting_EFFiciency))

Schedules a thinning from throughout a specified dbh range for any or all species to a basal area per acre or trees per acre target. If the target trees per acre or target basal area is nonzero, thinning occurs uniformly throughout the specified dbh range until the target is met (cutting efficiency is ignored). In other words, a calculated proportion of each of the eligible tree records is removed such that the target trees per acre or target basal area is exactly met. If both residual targets are 0 (zero), the cutting efficiency determines the proportion of trees represented by each eligible tree record that will be removed (residual targets are ignored). Only trees of the user-specified species that are within the user-defined dbh range are considered for removal. The residual target basal area per acre or trees per acre is specified only for that species and dbh range, and does *not* represent the total residual unless the dbh range includes all trees of all species in the stand.

field 1: Year or cycle that thinning is scheduled. *Default = 1*

field 2: Smallest dbh in inches to be considered for removal (greater than or equal). *Default = 0.0*

field 3: Largest dbh in inches to be considered for removal (less than). *Default = 999.0*

field 4: Cutting efficiency parameter specific to this thinning request (refer to the [CUTEFF](#_CUTEFF_(CUTting_EFFiciency)) keyword for description). *Range: 0.01-1.0, Default = 1*

field 5: Species code for trees to be removed in this cut. *Default = All*

field 6: Target trees per acre for the segment of the dbh distribution of the species defined in fields 2, 3, and 5. *Default = 0*

field 7: Target basal area in square feet per acre for the segment of the dbh distribution of the species defined in fields 2, 3, and 5. *Default = 0*

Caution: The specified residual target is for the user-specified species and user-defined range of dbh only. The total residual will also include all trees that do not fall within this range.

Caution: The Removal Priority Algorithm is not invoked with this keyword, therefore [SPECPREF](#_SPECPREF_(SPECies_removal) [TCONDMLT](#_TCONDMLT_(Tree_Condition) and MISTPREF keywords have no effect on thinnings that use THINDBH.

Caution: If a thinning keyword is embedded in an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, year (field 1) is interpreted as years from the time the condition is true until implementation, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after condition is true to thin the stand.)

Note: If the initial stand condition is already less than the target specified, the thinning will be cancelled. Look at the “Activity Summary” portion of the standard FVS output to see which requests were implemented and which were cancelled.

Note: A thinning is always done in the first year of the cycle in which it is scheduled, even if the year entered in field 1 is not the first year of the cycle. If a thinning must occur in a particular year, a [TIMEINT](#_TIMEINT_(TIME_) keyword may be needed to change the length of a cycle so that the desired year for the thinning becomes the first year of a cycle.

Note: Multiple thinning keywords can be scheduled for the same year to simulate different aspects of a single harvest. Care must be taken to ensure that the dbh and height ranges do not unintentionally overlap, or the residual may not be what was expected. Total residuals must be calculated carefully.

Note: If both the basal area per acre target and the trees per acre target are specified on the same keyword, the trees per acre target is used.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 24

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.2.3.2

# **THINHT** (<u>THIN</u> from a <u>H</u>eigh<u>T</u> range)

Variants: All

Related keywords: THINxxx, [CUTEFF](#_CUTEFF_(CUTting_EFFiciency))

Schedules a thinning from throughout a specified height range for any or all species to a basal area per acre or trees per acre target. If the target trees per acre or target basal area is nonzero, thinning occurs uniformly throughout the specified height range until one of the targets is met (cutting efficiency is ignored). In other words, a calculated proportion of each of the eligible tree records is removed such that the target trees per acre or target basal area is exactly met. If both residual targets are 0 (zero), the cutting efficiency determines the proportion of trees represented by each eligible tree record that will be removed (residual targets are ignored). Only trees of the user-specified species that are within the user-defined height range are considered for removal. The residual target basal area or trees per acre is specified only for that species and height range, and does *not* represent the total residual unless the height range includes all trees of all species in the stand.

field 1: Year or cycle that thinning is scheduled. *Default = 1*

field 2: Shortest tree in feet to be considered for removal (greater than or equal). *Default = 0*

field 3: Tallest tree in feet to be considered for removal (less than). *Default = 999*

field 4: Cutting efficiency parameter specific to this thinning request (refer to the [CUTEFF](#_CUTEFF_(CUTting_EFFiciency)) keyword for description). *Range: 0.01-1.0, Default = 1*

field 5: Species code for trees to be removed in this cut. *Default = All*

field 6: Target trees per acre for the segment of the height distribution of the species defined in fields 2, 3, and 5. *Default = 0*

field 7: Target basal area in square feet per acre for the segment of the height distribution of the species defined in fields 2, 3, and 5. *Default = 0*

Caution: The specified residual target is for the user-specified species and user-defined range of height only. The total residual will also include all trees that do not fall within this range.

Caution: The Removal Priority Algorithm is not invoked with this keyword, therefore [SPECPREF](#_SPECPREF_(SPECies_removal) [TCONDMLT](#_TCONDMLT_(Tree_Condition) and MISTPREF keywords have no effect on thinnings that use THINHT.

Caution: If a thinning keyword is embedded in an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, year (field 1) is interpreted as years from the time the condition is true until implementation, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after condition is true to thin the stand.)

Note: If the initial stand condition is already less than the target specified, the thinning will be cancelled. Look at the “Activity Summary” portion of the standard FVS output to see which requests were implemented and which were cancelled.

Note: A thinning is always done in the first year of the cycle in which it is scheduled, even if the year entered in field 1 is not the first year of the cycle. If a thinning must occur in a particular year, a [TIMEINT](#_TIMEINT_(TIME_) keyword may be needed to change the length of a cycle so that the desired year for the thinning becomes the first year of a cycle.

Note: Multiple thinning keywords can be scheduled for the same year to simulate different aspects of a single harvest. Care must be taken to ensure that the dbh and height ranges do not unintentionally overlap, or the residual may not be what was expected. Total residuals must be calculated carefully.

Note: If both the basal area per acre target and the trees per acre target are specified on the same keyword, the trees per acre target is used.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.2.3.3

# **THINMIST** (<u>THIN</u> trees with dwarf <u>MIST</u>letoe )

Variants: All

Related keywords: THINxxx

Schedules a thinning based on Dwarf Mistletoe rating (DMR). Trees can be removed based on their Dwarf Mistletoe Rating and diameter.

field 1: Year or cycle that thinning is scheduled. *Default = 1*

field2: Dwarf Mistletoe Rating (DMR) code for trees that are to be removed in this thinning. *Default = 0, which means rating of 1-6, (i.e. all infected trees)*

field 3: Smallest dbh in inches to be considered for removal (greater than or equal). *Default = 0.0*

field 4: Largest dbh in inches to be considered for removal (less than). *Default = 999.0*

field 5: Cutting efficiency parameter specific to this thinning request (refer to the [CUTEFF](#_CUTEFF_(CUTting_EFFiciency)) keyword for description). *Range: 0.01-1.0, Default = 1*

Caution: If a thinning keyword is embedded in an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, year (field 1) is interpreted as years from the time the condition is true until implementation, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after condition is true to thin the stand.)

Note: A thinning is always done in the first year of the cycle in which it is scheduled, even if the year entered in field 1 is not the first year of the cycle. If a thinning must occur in a particular year, a [TIMEINT](#_TIMEINT_(TIME_) keyword may be needed to change the length of a cycle so that the desired year for the thinning becomes the first year of a cycle.

Note: Multiple thinning keywords can be scheduled for the same year to simulate different aspects of a single harvest. Care must be taken to ensure that the dbh and height ranges do not unintentionally overlap, or the residual may not be what was expected. Total residuals must be calculated carefully.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.2.3.4.

# **THINPRSC** (<u>THIN</u> by <u>PR</u>e<u>SC</u>ription)

Variants: All

Related keywords: THINxxx, [CUTEFF](#_CUTEFF_(CUTting_EFFiciency))

Schedules a thinning based on prescription code. Prescription codes are numeric codes that are found in the input tree records (column 49). Prescription codes are user-defined, and have no inherent meaning in FVS. They are only useful in conjunction with this keyword. For example, if tree records that are to be removed have prescription code 2, and those that are to be left have prescription code 1, then field 3 of the THINPRSC keyword will be 2 and trees with that prescription code will be removed. The cutting efficiency determines the proportion of trees represented by a tree record that will be removed if that tree record contains the specified prescription code.

field 1: Year or cycle that prescription thinning is scheduled. *Default = 1*

field 2: Cutting efficiency parameter specific to this thinning request (refer to the [CUTEFF](#_CUTEFF_(CUTting_EFFiciency)) keyword for description). *Range: 0.01-1.0, Default = 1*

field 3: Prescription code for trees that are to be removed in this thinning. *Range: 2-9*

Caution: If a thinning keyword is embedded in an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, year (field 1) is interpreted as years from the time the condition is true until implementation, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after condition is true to thin the stand.)

Note: It may help to think of the prescription code in the input tree records (column 49) as a number painted on the live trees in the stand. Then think of the prescription code identified in this keyword (field 3) as instructing the harvest crew to cut trees with the identified number painted on them. The cutting efficiency determines the proportion of these trees to be cut.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.2.3.1

# **THINPT** (<u>THIN</u> by <u>P</u>oin<u>t</u>)

Variants: All

Related keywords: THINxxx, [POINTREF](#_POINTREF_(POINT_REFerence)), [SETPTHIN](#_SETPTHIN_(SETs_Point), [POINTGRP](#_POINTGRP_(POINT_GRouP))

Schedules a thinning from a specified dbh range for any, or all, species to a density target, specified using the the SETPTHIN keyword.. If the target relative density is nonzero and the cutting control flag is zero, thinning occurs uniformly throughout the specified dbh range until the target is met (the cutting efficiency parameter is ignored and the cutting efficiency needed to complete the thinning is automatically calculated by the program). If the target relative density is nonzero and the cutting control flag is nonzero, then the cutting efficiency parameter is used, along with the Removal Priority Algorithm. If the cutting efficiency parameter is set so low that the target cannot be reached, the cutting efficiency is recalculated so that the target is met. Only trees of the user-specified species that are within the user-defined dbh range are considered for removal. The residual target relative density is specified only for that species and dbh range, and does *not* represent the total residual unless the dbh range includes all trees of all species in the stand.

field 1: Year or cycle that thinning is scheduled. *Default = 1*

field 2: Residual Target for attribute specified on the SETPThin keyword . *Default = 0*

field 3: Cutting efficiency parameter specific to this thinning request (refer to the [CUTEFF](#_CUTEFF_(CUTting_EFFiciency)) keyword). *Range: 0.01-1.0, Default = model computed*

field 4: Species code for trees to be removed in this cut. *Default = 0 (All)*

field 5: Smallest dbh in inches to be considered for removal (greater than or equal). *Default = 0.0*

field 6: Largest dbh in inches to be considered for removal (less than). *Default = 999.0*

field 7: Cutting control flag. *Default = 0*

0 = thin throughout the specified diameter range

1 = thin from below in the specified diameter range

2 = thin from above in the specified diameter range.

Caution: The specified residual target is for the user-specified species and user-defined range of dbh only. The total residual will also include all trees that do not fall within this range.

Caution: The Removal Priority Algorithm is only used when the cutting control flag is nonzero, (reference: [SPECPREF](#_SPECPREF_(SPECies_removal) and [TCONDMLT](#_TCONDMLT_(Tree_Condition) keywords)

Caution: If a thinning keyword is embedded in an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, year (field 1) is interpreted as years from the time the condition is true until implementation, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after condition is true to thin the stand.)

Note: If the initial stand condition is already less than the target specified, the thinning will be cancelled. Look at the “Activity Summary” portion of the standard FVS output to see which requests were implemented and which were cancelled.

Note: A thinning is always done in the first year of the cycle in which it is scheduled, even if the year entered in field 1 is not the first year of the cycle. If a thinning must occur in a particular year, a [TIMEINT](#_TIMEINT_(TIME_) keyword may be needed to change the length of a cycle so that the desired year for the thinning becomes the first year of a cycle.

Note: Multiple thinning keywords can be scheduled for the same year to simulate different aspects of a single harvest. Care must be taken to ensure that the dbh and height ranges do not unintentionally overlap, or the residual may not be what was expected. Total residuals must be calculated carefully.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

# **THINQFA** (<u>THIN</u> <u>Q</u>-<u>F</u>actor <u>A</u>pproach)

Variants: All

Related keywords: THINxxx

Schedules uneven-aged thinning through a specified diameter range, to a basal area, trees per acre or stand density index target. The distribution of the thinning throughout the specified diameter range is based on a user specified q-factor, where the q-factor value is the ratio of trees in a diameter class to the number of trees in the next larger class.

field 1: Year or cycle that thinning is scheduled. *Default = 1*

field 2: Smallest dbh in inches to be considered for removal (greater than or equal). *Default = 0.0*

field 3: Largest dbh in inches to be considered for removal (less than). *Default = 24.0*

field 4: Species code for trees to be removed in this cut. *Default = 0 (All)*

field 5: Value for q-factor. *Default = 1.4*

field 6: Diameter class width in inches. *Default = 2.0*

field 7: Residual density for the specified diameter class and species specified.

*Default = 0*

Supplemental Record:

Use the first column of the supplemental record to specify the units for the residual density.

0 = Basal area per acre

1 = Trees per acre

2 = Stand density index

Caution: If the specified diameter range is not equally divisible by the specified diameter class width, the class representing the smallest diameter trees is incomplete (i.e., too narrow). When this occurs the incomplete class is excluded from the harvest, so no trees are cut in the incomplete class of the smallest diameter trees.

Caution: The diameter class width must not result in more than 30 diameter classes within the specified diameter range.

Note: By default the stand density index is calculated by the Reineke method. To thin to a residual value calculated using the Zeide method, use the SDICALC keyword with field 3 set to 2.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.2.4.2.5

# **THINRDEN** (<u>THIN</u> to <u>R</u>elative <u>DEN</u>sity target)

Variants: All

Related keywords: THINxxx, [SPECPREF](#_SPECPREF_(SPECies_removal), [TCONDMLT](#_TCONDMLT_(Tree_Condition), [CUTEFF](#_CUTEFF_(CUTting_EFFiciency))

Schedules a thinning from a specified dbh range for any, or all, species to a relative density target. If the target relative density is nonzero and the cutting control flag is zero, thinning occurs uniformly throughout the specified dbh range until the target is met (the cutting efficiency parameter is ignored and the cutting efficiency needed to complete the thinning is automatically calculated by the program). If the target relative density is nonzero and the cutting control flag is nonzero, then the cutting efficiency parameter is used, along with the Removal Priority Algorithm. If the cutting efficiency parameter is set so low that the target cannot be reached, the cutting efficiency is recalculated so that the target is met. Only trees of the user-specified species that are within the user-defined dbh range are considered for removal. The residual target relative density is specified only for that species and dbh range, and does *not* represent the total residual unless the dbh range includes all trees of all species in the stand.

field 1: Year or cycle that thinning is scheduled. *Default = 1*

field 2: Residual Relative Density. *Default = 0*

field 3: Cutting efficiency parameter specific to this thinning request (refer to the [CUTEFF](#_CUTEFF_(CUTting_EFFiciency)) keyword). *Range: 0.01-1.0, Default = model computed*

field 4: Species code for trees to be removed in this cut. *Default = 0 (All)*

field 5: Smallest dbh in inches to be considered for removal (greater than or equal). *Default = 0.0*

field 6: Largest dbh in inches to be considered for removal (less than). *Default = 999.0*

field 7: Cutting control flag. *Default = 0*

0 = thin throughout the specified diameter range

1 = thin from below in the specified diameter range

2 = thin from above in the specified diameter range.

Residual relative density is calculated using the equation included in Essential FVS: A User’s Guide to the Forest Vegetation Simulator, section 5.2.4.2.4. The summation in that equation is done only for trees of the user-specified species and dbh range.

Caution: The specified residual target is for the user-specified species and user-defined range of dbh only. The total residual will also include all trees that do not fall within this range.

Caution: The Removal Priority Algorithm is only used when the cutting control flag is nonzero, (reference: [SPECPREF](#_SPECPREF_(SPECies_removal) and [TCONDMLT](#_TCONDMLT_(Tree_Condition) keywords)

Caution: If a thinning keyword is embedded in an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, year (field 1) is interpreted as years from the time the condition is true until implementation, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after condition is true to thin the stand.)

Note: If the initial stand condition is already less than the target specified, the thinning will be cancelled. Look at the “Activity Summary” portion of the standard FVS output to see which requests were implemented and which were cancelled.

Note: A thinning is always done in the first year of the cycle in which it is scheduled, even if the year entered in field 1 is not the first year of the cycle. If a thinning must occur in a particular year, a [TIMEINT](#_TIMEINT_(TIME_) keyword may be needed to change the length of a cycle so that the desired year for the thinning becomes the first year of a cycle.

Note: Multiple thinning keywords can be scheduled for the same year to simulate different aspects of a single harvest. Care must be taken to ensure that the dbh and height ranges do not unintentionally overlap, or the residual may not be what was expected. Total residuals must be calculated carefully.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

References: Curtis, Robert O. 1982. A Simple Index of Stand Density for Douglas-fir. Forest Sci., 28(1):92-94.

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.2.4.2.4

# **THINRDSL** (<u>THIN</u> to <u>R</u>elative <u>D</u>ensity <u>S</u>i<u>L</u>vah target)

Variants: NE

Related keywords: THINxxx, [SPECPREF](#_SPECPREF_(SPECies_removal), [TCONDMLT](#_TCONDMLT_(Tree_Condition), [CUTEFF](#_CUTEFF_(CUTting_EFFiciency))

This keyword only works in the Northeast variant. The thinning will be cancelled unless the stand is one of the following five SILVAH forest types:

**Northern Hardwood** – stands that have at least 65% of total stand basal area in sugar maple, red maple, American beech, yellow birch, sweet birch, eastern hemlock, American basswood, cucumbertree, black cherry, white ash, or yellow-poplar.

**Northern hardwood-hemlock** – stands meeting the requirements for the northern hardwood type which also have at least 50% of their basal area in eastern hemlock.

**Allegheny hardwood** – stands meeting the requirements for the northern hardwood type that also have at least 25% of their basal area in black cherry, white ash, and yellow-poplar, and less than 50% of their basal area in eastern hemlock.

**Oak-hickory** – stands that have at least part of their basal area in any oak or hickory species.

**Transition** – stands that have at least 65% of their basal area in species of either the northern hardwood or oak-hickory types, but do not qualify for any of the other forest types alone.

This keyword schedules a thinning from a specified dbh range for any, or all, species to a relative density target. If the target relative density is nonzero and the cutting control flag is zero, thinning occurs uniformly throughout the specified dbh range until the target is met (the cutting efficiency parameter is ignored and the cutting efficiency needed to complete the thinning is automatically calculated by the program). If the target relative density is nonzero and the cutting control flag is nonzero, then the cutting efficiency parameter is used, along with the Removal Priority Algorithm. If the cutting efficiency parameter is set so low that the target cannot be reached, the cutting efficiency is recalculated so that the target is met. Only trees of the user-specified species that are within the user-defined dbh range are considered for removal. The residual target relative density is specified only for that species and dbh range, and does *not* represent the total residual unless the dbh range includes all trees of all species in the stand.

field 1: Year or cycle that thinning is scheduled. *Default = 1*

field 2: Residual Relative Density. *Default = 0*

field 3: Cutting efficiency parameter specific to this thinning request (refer to the [CUTEFF](#_CUTEFF_(CUTting_EFFiciency)) keyword). *Range: 0.01-1.0, Default = model computed*

field 4: Species code for trees to be removed in this cut. *Default = 0 (All)*

field 5: Smallest dbh in inches to be considered for removal (greater than or equal). *Default = 0.0*

field 6: Largest dbh in inches to be considered for removal (less than). *Default = 999.0*

field 7: Cutting control flag. *Default = 0*

0 = thin throughout the specified diameter range

1 = thin from below in the specified diameter range

2 = thin from above in the specified diameter range.

Residual relative density is calculated using the equation included in Essential FVS: A User’s Guide to the Forest Vegetation Simulator, section 5.2.4.2.4. The summations in that equation are done only for trees of the user-specified species and dbh range.

Caution: The specified residual target is for the user-specified species and user-defined range of dbh only. The total residual will also include all trees that do not fall within this range

Caution: The Removal Priority Algorithm is only used when the cutting control flag is nonzero, (reference: SPECPREF and TCONDMLT keywords)

Caution: If a thinning keyword is embedded in an IF-THEN-ENDIF sequence, year (field 1) is interpreted as years from the time the condition is true until implementation, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after condition is true to thin the stand.)

Note: If the initial stand condition is already less than the target specified, the thinning will be cancelled. Look at the “Activity Summary” portion of the standard FVS output to see which requests were implemented and which were cancelled.

Note: A thinning is always done in the first year of the cycle in which it is scheduled, even if the year entered in field 1 is not the first year of the cycle. If a thinning must occur in a particular year, a TIMEINT keyword may be needed to change the length of a cycle so that the desired year for the thinning becomes the first year of a cycle.

Note: Multiple thinning keywords can be scheduled for the same year to simulate different aspects of a single harvest. Care must be taken to ensure that the dbh and height ranges do not unintentionally overlap, or the residual may not be what was expected. Total residuals must be calculated carefully.

Note: The PARMS format may be used with this keyword. See the introduction for a description of this format.

References: Stout, Susan, L., Nyland, Ralph D. 1986. Role of species composition in relative density measurement in Allegheny hardwoods. Can. J. For. Res. 16:574-579.

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.2.4.2.4

Marquis, D. A.; Ernst, R. L.; 1992. User’s guide to SILVAH. Gen. Tech. Rep. NE-162. Warren, PA: U. S. Department of Agriculture, Forest Service, Northeastern Research Station. 130p.

# **THINSDI** (<u>THIN</u> to <u>S</u>tand <u>D</u>ensity <u>I</u>ndex target)

Variants: All

Related keywords: THINxxx, [SPECPREF](#_SPECPREF_(SPECies_removal), [TCONDMLT](#_TCONDMLT_(Tree_Condition), [CUTEFF](#_CUTEFF_(CUTting_EFFiciency))

Schedules a thinning from a specified dbh range for any, or all, species to a stand density index (SDI) target. If the target SDI is nonzero and the cutting control flag is zero, thinning occurs uniformly throughout the specified dbh range until the target is met (the cutting efficiency parameter is ignored and the cutting efficiency needed to complete the thinning is automatically calculated by the program). If the target SDI is nonzero and the cutting control flag is nonzero, then the cutting efficiency parameter is used, along with the Removal Priority Algorithm. If the cutting efficiency parameter is set so low that the target cannot be reached, the cutting efficiency is recalculated so that the target is met. Only trees of the user-specified species that are within the user-defined dbh range are considered for removal. The residual target SDI is specified only for that species and dbh range, and does *not* represent the total residual unless the dbh range includes all trees of all species in the stand.

field 1: Year or cycle that thinning is scheduled. *Default = 1*

field 2: Residual Stand Density Index (SDI). *Default = 0*

field 3: Cutting efficiency parameter specific to this thinning request (refer to the [CUTEFF](#_CUTEFF_(CUTting_EFFiciency)) keyword). *Range: 0.01-1.0, Default = model computed*

field 4: Species code for trees to be removed in this cut. *Default = 0 (All)*

field 5: Smallest dbh in inches to be considered for removal (greater than or equal). *Default = 0.0*

field 6: Largest dbh in inches to be considered for removal (less than). *Default = 999.0*

field 7: Cutting control flag. *Default = 0*

0 = thin throughout the specified diameter range

1 = thin from below in the specified diameter range

2 = thin from above in the specified diameter range.

Residual SDI is calculated using the equations included in Essential FVS: A User’s Guide to the Forest Vegetation Simulator, section 7.3.2.1. Summations in those equations are done only for trees of the user-specified species and dbh range.

Caution: The specified residual target is for the user-specified species and user-defined range of dbh only. The total residual will also include all trees that do not fall within this range.

Caution: The Removal Priority Algorithm is only used when the cutting control flag is nonzero, (reference: [SPECPREF](#_SPECPREF_(SPECies_removal) and [TCONDMLT](#_TCONDMLT_(Tree_Condition) keywords)

Caution: If a thinning keyword is embedded in an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, year (field 1) is interpreted as years from the time the condition is true until implementation, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after condition is true to thin the stand.)

Caution: An exact residual target may not be achieved when Reineke SDI is being assumed for a thinning that does not consider all DBH sizes and species in the stand. This behavior is related to the quadratic mean diameter of the entire stand being used in the derivation of the residual Reineke SDI value. Users can change the default SDI calculation method being assumed for the residual target with the SDICALC keyword.

Note: If the initial stand condition is already less than the target specified, the thinning will be cancelled. Look at the “Activity Summary” portion of the standard FVS output to see which requests were implemented and which were cancelled.

Note: A thinning is always done in the first year of the cycle in which it is scheduled, even if the year entered in field 1 is not the first year of the cycle. If a thinning must occur in a particular year, a [TIMEINT](#_TIMEINT_(TIME_) keyword may be needed to change the length of a cycle so that the desired year for the thinning becomes the first year of a cycle.

Note: Multiple thinning keywords can be scheduled for the same year to simulate different aspects of a single harvest. Care must be taken to ensure that the dbh and height ranges do not unintentionally overlap, or the residual may not be what was expected. Total residuals must be calculated carefully.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 24

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.2.4.2.2

# **TIMEINT** (<u>TIME</u> <u>INT</u>erval)

Variants: All

Related keywords: [NUMCYCLE](#_NUMCYCLE_(NUMber_of), [INVYEAR](#_INVYEAR_(INVentory_YEAR))

Specifies the length, in years, of any or all projection cycles. Many actions (e.g. thinnings) in FVS are implemented in the first year of the cycle in which they are scheduled, regardless of the actual year in the cycle that the action was scheduled. The only way to ensure that an action can be implemented in the same year that it is scheduled is to schedule the action in the first year of a cycle. This may not be possible if the cycles are left at their default length of ten years. A TIMEINT keyword can be used to change the length of a cycle so that the desired year for a particular action becomes the first year of a cycle.

field 1: Cycle number whose length is to be changed. Enter 0 (zero) to change the length of all projection cycles. *Default = 1*

field 2: Cycle length in years for the cycle(s) referenced in field 1. *Default = 10*

*(NC default = 5)*

Note: This keyword affects only the specified cycle(s). The cycle immediately following does *not* represent the remainder of a cycle to return the simulation to the same cycle break years. Instead, subsequent cycles are affected by other TIMEINT keywords, or are assigned default lengths.

Note: Multiple TIMEINT keywords can be scheduled for a simulation. If multiple TIMEINT keywords are scheduled to affect any particular cycle, the last encountered use of the keyword will override the effects of all the previous.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 8

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, ss. 4.1.3.1,

5.1.2

# **TOPKILL** (<u>TOPKILL</u> trees)

Variants: All

Related keywords: [HTGSTOP](#_HTGSTOP_(HeighT_Growth), [CRNMULT](#_CRNMULT_(CRowN_change)

Kills a portion of the top of trees for randomly selected tree records that fall within the user-specified parameters for species and height. This can be used to simulate damage from insects or logging.

field 1: Year or cycle in which topkill is to be applied. *Default = 1*

field 2: Species code for which topkill is to be applied. *Default = All*

field 3: Shortest tree in feet (greater than or equal) that will be affected. *Default = 0*

field 4: Tallest tree in feet (less than) that will be affected. *Default = 0*

field 5: Probability that a tree will sustain topkill. *Range: 0.0 - 1.0, Default = 0.0*

field 6: Mean proportion of total tree height lost to topkill (e.g. 0.2 will kill an average of 20% of the total height on selected trees). *Default = 1.0*

field 7: Standard deviation of the distribution of the proportion of total tree height killed. This allows for variability in topkill proportion among the selected trees. *Default = 0.0*

Note: Once a tree record has been affected by a TOPKILL keyword it will not get taller for the remainder of the simulation. Truncated height will be reported to the point of topkill. Reported volumes are calculated using the truncated height, however the old total tree height is used to determine stem form.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

References: GTR INT-208, Supplement to the User’s Guide..., p. 20

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.5.2.4

# **TREEDATA** (<u>TREE</u> <u>DATA</u> file)

Variants: All

Related keywords: [TREEFMT](#_TREEFMT_(TREE_), [SPCODES](#_SPCODES_(SPecies_CODES)), [OPEN](#_OPEN_(OPEN_a)

Specifies a file reference number for reading in tree data records. If this references an external file, a corresponding [OPEN](#_OPEN_(OPEN_a) keyword must also be included. If the file reference number is 15, then tree data records are inserted directly into the keyword file as supplemental records to this keyword (the last supplemental record must be -999 to signify the end of the tree data records). Refer to [TREEFMT](#_TREEFMT_(TREE_) for a description of the input format.

field 1: File reference number for the input tree data file. File reference numbers are a mechanism that FVS uses to keep track of external files. Numbers less than 30 are reserved for files that are currently used by FVS. If this field has a value of 15 then tree data records are entered as supplemental records. *Default = 2*

field 2: Flag to include plot specific site descriptors. Any numeric entry causes FVS to read plot descriptors from the tree data (columns 50-59). This information can be used by the Regeneration Establishment model.

field 3: Smallest dbh in inches to be considered for input (greater than or equal). All tree records with dbh less than this value will be ignored. *Default = 0.0*

field 4: Largest dbh in inches to be considered for input (less than). All tree records with dbh greater than or equal to this value will be ignored. *Default = 999.0*

field 5: Species code. All tree records with this species code will be ignored.

Caution: If a [TREEFMT](#_TREEFMT_(TREE_) keyword is used, it must precede the TREEDATA keyword.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 18

GTR INT-208, Supplement to the User’s Guide..., p. 17

GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 24

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.2.3.1

# **TREEFMT** (<u>TREE</u> data <u>F</u>or<u>M</u>a<u>T</u>)

Variants: All

Related keywords: [SPCODES](#_SPCODES_(SPecies_CODES)), [TREEDATA](#_TREEDATA_(TREE_DATA)

Provides a FORTRAN format statement that describes the layout of the tree data record. The following is the default tree format used to read the input tree variables

(I4,T1,I7,F6.0,I1,A3,F4.1,F3.1,2F3.0,F4.1,I1,6I2,2I1,I2,2I3,2I1,F3.0)

Where: I indicates “read as an integer” and the trailing number indicates the

number of columns to read (e.g. I4 indicates 4 columns are to be read as integer input).

F indicates “read as decimal input” and the trailing numeric code indicates the total number of columns and number of decimal places (e.g. F4.1 indicates 4 columns are to be read as decimal input and 1 decimal place will be kept. If no decimal point is present, the last digit is assumed to be tenths).

A indicates “read as alpha characters” and the trailing number indicates the number of columns to read (e.g. A3 indicates 3 columns are to be read, and letters or other characters may be present. Blanks are read in as well).

T indicates a tab to a specific column. The trailing number indicates the column of the first character to be read using the next format listed.

Commas (,) separate individual format specifications.

Numbers that precede a letter indicate that the format specification is repeated that number of times (e.g. 2I3 is equivalent to I3,I3).

No fields are associated with this keyword. The format statement is entered on two supplemental records.

Supplemental records:

Two supplemental records are required, each a maximum of 80 characters long. The supplemental records comprise a FORTRAN format statement of the type described above. If the entire format statement is included in a single supplemental record, the second supplemental record will be blank, but it must still be included.

Example:

TREEFMT

(I2,T1,I6,T10,F7.1,I1,T8,A2,T16,F5.2,F3.1,

2F3.0,F4.1,I1,T80,6I2,2I1,I2,2I3,2I1,F3.0)

Default Tree Data Input Format

*<u>VARIABLE FORMAT COLUMNS</u>*

Plot ID I4 1-4

Tree Number I7 1-7

Tree Count F6.0 8-13

Tree History I1 14

Species A3 15-17

Diameter at Breast Height F4.1 18-21

DBH Increment F3.1 22-24

Live Height F3.0 25-27

Height to Top Kill F3.0 28-30

Height Increment F4.1 31-34

Crown Ratio Code I1 35

Damage Code 1 I2 36-37

Severity Code 1 I2 38-39

Damage Code 2 I2 40-41

Severity Code 2 I2 42-43

Damage Code 3 I2 44-45

Severity Code 3 I2 46-47

Tree Value Class Code I1 48

Cut/Leave Prescription Code I1 49

Plot slope percent I2 50-51

Plot aspect in degrees I3 52-54

Plot habitat type code I3 55-57

Plot topographic position code I1 58

Plot site preparation code I1 59

Tree Age F3.0 60-62

Caution: If a [TREEDATA](#_TREEDATA_(TREE_DATA) keyword is used, it must follow the TREEFMT keyword.

Caution: If decimal input was specified in the format statement but no decimal point appears in the input, the decimal point will be assumed and its placement will be determined by the format statement. For example, the format statement F4.1 will cause input of 1234 to be read as 123.4.

Caution: Tree count is used in conjunction with the plot design information in the [DESIGN](#_DESIGN_(sampling_DESIGN)) keyword to determine the number of trees per acre each record represents. For example, a single seedling (tree count = 1) on one of five 1/100 acre fixed plots represents 20 seedlings per acre in the stand.

Note: Species and dbh are required fields. It is also suggested that minimally plot ID, tree count, tree history, and live height are included. In the absence of corresponding data, each tree record will be assumed to represent one live tree, all will be assumed to have been recorded on a single plot.

Note: If fields were not included in the tree data records tab to blank data columns and read blank data for those fields.

Note: If all tree records are ultimately reported by FVS as “other species” or something similar, an error has probably been made in the preparation of either the TREEFMT or [SPCODES](#_SPCODES_(SPecies_CODES)) keywords.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 19

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.2.3.2

# **TREELIST** (<u>TREELIST</u> file)

Variants: All

Related keywords: [CUTLIST](#_CUTLIST_(CUT_tree), [OPEN](#_OPEN_(OPEN_a)

Prints a list of tree records to an output treelist file.

field 1: Year or cycle in which treelist is to be printed. Enter 0 (zero) to print output for every cycle. *Default = 1*

field 2: File reference number for the output file. File reference numbers are a mechanism that FVS uses to keep track of external files. Numbers less than 30 are reserved for files that are currently used by FVS. *Default = 3*

field 3: Value to determine which header will be printed with the treelist. *Default = 0*

1 Encoded header record (machine readable, -999)

0 Header records describing each column (human readable)

‑1 Suppress all headers

field 4: Cycle 0/1 treelist printing flag. This field is ignored unless field 1 represents the first cycle of the simulation (i.e. field 1 = 1, or field 1 = first year of simulation). *Default = 0*

0 Print both cycle 0 and cycle 1

1 Print only cycle 1

2 Print only cycle 0 (beginning of simulation)

field 5: Live/dead treelist flag. *Default = 0*

1. Requests the normal live and recent mortaility tree list

≠0 (any value not equal to zero) Requests a dead tree list

field 6: *Not used*

field 7: Diameter increment printing for cycle 0. *Default = 0*

0 Print only cycle 0 dbh increments that were read from the input tree data

1 Print both cycle 0 input and cycle 0 estimated dbh increments

Note: If the TREELIST output is intended for use with post-processing programs, it must contain headers and be in the current format (i.e. field 3 must be 0, 1, or blank, and field 6 must be 0 or blank).

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 47

GTR INT-208, Supplement to the User’s Guide..., p. 14

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 4.3.3.1

# **TREESZCP** (<u>TREE</u> <u>S</u>i<u>Z</u>e <u>C</u>a<u>P</u>)

Variants: All

Related keywords: [MORTMULT](#_MORTMULT_(MORTality_MULTiplier)), [FIXMORT](#_FIXMORT_(FIXed_MORTality)), [BAIMULT](#_BAIMULT_(Basal_Area), [HTGSTOP](#_HTGSTOP_(HeighT_Growth)

Sets morphological limits for maximum tree diameter and height for a given species, and specifies a minimum mortality rate to be used when tree diameter exceeds the specified limit. Diameter growth or height growth will be greatly reduced for individual trees that exceed the specified diameter or height, respectively. Also, the specified diameter can be used as a surrogate for age to invoke senescence mortality. For example, if a tree record represents 10 trees per acre of the designated species and exceeds the specified maximum diameter, and the minimum mortality rate is set to 0.5, 5 trees per acre (50%) from that record will die due to this keyword if the normally predicted mortality rate for this tree record was less than 5 trees; if the normally predicted mortality rate for this tree record exceeded 5 trees, then that rate would be used and there would be no effect of this keyword on that tree record. These values are set once for the projection; they cannot be changed within a projection.

field 1: Species code to which the limits apply. *Default = All*

field 2: Morphological maximum diameter for this species. *Default = 999.0*

field 3: Minimum proportion of the tree record that will be killed. *Range: 0.0-1.0, Default = 1.0*

field 4: Maximum diameter use code. *Default = 0*

0 Use diameter for affecting both diameter growth and tree mortality.

1. Use diameter for affecting diameter growth only.
2. Use diameter for affecting mortality only.

field 5: Morphological maximum height for this species. *Default = 999.0*

Caution: This keyword may override BAMAX and SDIMAX related mortality..

Note: The PARMS format may not be used with this keyword.

References: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 6.5.5

# **VOLEQNUM** (<u>VOLUME</u> <u>EQ</u>uation <u>NUM</u>ber)

Variants: All

Related keywords: [BFVOLUME](#_BFVOLUME_(Board_Foot), [VOLUME](#_VOLUME_(cubic_foot)

Sets the volume equation number used to calculate volume. Equation numbers are from the Forest Service National Volume Estimator Library (NVEL). If you do not set the equation number, by default FVS will use the volume equation numbers designated to be used by the Forest Service Regional Offices. If you are unsure what equation number is used FVS will write out the equation number for each species in the Options Selected by Default Section of the Main Output file (\*.out).

field 1: Species code for which volume equation number is applied. *Default = All*

field 2: Cubic Foot Volume Equation Number. *Default = Blank*

field 3: Boardfoot Volume Equation Number. *Default = Blank*

Note: Form class for a species is the same regardless of whether cubic foot or board foot volume is being calculated. If both [BFVOLUME](#_BFVOLUME_(Board_Foot) and [VOLUME](#_VOLUME_(cubic_foot) are specified, the form class (field 6) used for both will be that specified on the keyword entered last.

Caution: If you are using a Region 6 variant, and you want to change to a different length Behres Hyperbola, you will need to change the form class that is used. This can be set using the BFVOLUME and/or VOLUME keywords.

Caution: Users will not be able to change cubic foot volume equations with this keyword when the FIAVBC keyword is in effect.

References: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.3.1

References: NVEL: http://www.fs.fed.us/fmsc/measure/volume/nvel/index.php

# **VOLUME** (cubic foot <u>VOLUME</u>)

Variants: All

Related keywords: [BFVOLUME](#_BFVOLUME_(Board_Foot), [MCDEFECT](#_MCDEFECT_(Merchantable_Cubic), [MCFDLN](#_MCFDLN_(Merchantable_Cubic), [VOLEQNUM](#_VOLEQNUM_(VOLUME_EQuation)

Sets the merchantability limits for cubic foot volume calculation. In the western half of the US, this keyword sets the merchantability limits for merchantable cubic foot volume. In the eastern half of the US, this keyword sets the merchantability limits for merchantable cubic foot volume and sawlog cubic foot volume.

field 1: Year or cycle number in which merchantability limits take effect. Once in effect they remain in effect until replaced. To affect the first cycle you must specify a 0 in field 1. *Default = 0 (all cycles)*

field 2: Species code for which the limits are to be changed. *Default = All*

field 3: Minimum merchantable DBH in inches.

*Defaults by variant. See variant overview documentation.*

field 4: Minimum top diameter.

*Defaults by variant. See variant overview documentation.*

field 5: Stump height in feet. *Default = 1.0*

field 6: Form class (used only in Region 6). For 16-foot log equations this is the diameter inside bark at a height of 17.3 feet as a percentage of outside-bark DBH. For 32-foot log equations this is the diameter inside bark at a height of 33.6 feet as a percentage of outside-bark DBH.

*Defaults by variant. See variant overview documentation*

field 7: Volume calculation method. *Default = 6*

5 Gevorkiantz volume equations (CS, LS, NE)

6 National Volume Estimator Library equations.

field 8: Minimum sawlog DBH in inches.

*Defaults by variant. See variant overview documentation.*

field 9: Minimum sawlog top diameter in inches.

*Defaults by variant. See variant overview documentation.*

field 10: Sawlog stump height in feet. *Default = 1.0*

Note: For any particular species this keyword remains in effect until a subsequent use of the keyword changes the limits for that species.

Note: Form class for a species is the same regardless of whether cubic foot or board foot volume is being calculated. If both [BFVOLUME](#_BFVOLUME_(Board_Foot) and VOLUME are specified, the form class (field 6) used for both will be that specified on the keyword entered last.

Note: Fields 8-10 will be ignored for all variants except CS, LS, NE, and SN.

Caution: If date or cycle are specified (i.e. the date/cycle is not blank and it is not zero) and the species field is either ALL or a species group, then you should be sure to specify all of the remaining parameters. If you do not specify all of the remaining parameters, then the default parameters for the other fields are the default parameters for species 1 (if ALL is selected) or species group 1 (species group is selected).

Caution: This keyword will not have any effect when the FIAVBC keyword is in use.

References: GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 22

GTR INT-208, Supplement to the User’s Guide..., p. 18

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.3.1

# **WSBW** (<u>W</u>estern <u>S</u>pruce <u>B</u>ud<u>W</u>orm model initialization)

Variants: Specialized variants that include the western spruce budworm model

Related keywords: [END](#_END_(END_special)

Signifies the beginning of keywords for the western spruce budworm extension. This extension has its own unique set of keywords. The WSBW keyword sequence must be terminated with an [END](#_END_(END_special) keyword. All keywords between WSBW and [END](#_END_(END_special) are considered western spruce budworm extension keywords.

No fields are associated with this keyword.

References: GTR INT-274, User’s Guide to the Western Spruce Budworm Modeling System

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 8.8

# **YARDLOSS** (<u>YARD</u>ing <u>LOSS</u>)

Variants: All

Related keywords: THINxxx

Designates a portion of a harvest to be left in the woods. This may reduce harvest volumes and is also used in determining fuel loading for the fire extension model.

field 1: Year or cycle in which harvesting is to incur yarding loss. *Default = 1*

field 2: Proportion of cut stems left in the stand. *Range: 0.0-1.0, Default = 0*

field 3: Proportion of left stems that are down. *Range: 0.0-1.0, Default = 0*

field 4: Proportion of branch wood left from removed stems. (If using the CS, LS, NE, or SN variant then it is the proportion of unmerchantable wood left from removed stems.) *Range: 0.0-1.0, Default = 1*

Note: This keyword works in conjunction with the thinning keywords. A thinning that is scheduled for the same cycle as the YARDLOSS keyword is in effect will reflect the losses specified.

Note: Keyword order may be important. If a YARDLOSS keyword is specified for the *same year* that a thinning keyword is specified, the losses will be applied to the thinning only if the YARDLOSS keyword appears in the keyword sequence before the thinning keyword

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.2.5

# **Appendix A: Species Codes**

**Species Codes - All Western Variants**

AB Alaska birch (resin birch)

AD alder species

AF subalpine fir

AJ alligator juniper

AS quaking aspen

AW Arizona white oak

AZ Arizona pinyon pine

BA balsam poplar

BC bristlecone pine

BD bigcone Douglas-fir

BE black spruce

BI bigtooth maple

BK bur oak

BL blue oak

BM bigleaf maple

BO California black oak

BR Brewer spruce

BS blue spruce

BU California buckeye

CB corkbark fir

CH bitter cherry

CI Chihuahuan pine

CJ California juniper

CL California laurel

CN California nutmeg

CO cottonwood species

CP Coulter pine

CW black cottonwood

CY canyon live oak

DF Douglas-fir

DG Pacific dogwood

EM Emory oak

EO Engelmann oak

ER eastern redcedar

ES Engelmann spruce

FC Fremont cottonwood

FL Oregon ash

FP foxtail pine

GA green ash

GB Great Basin bristlecone pine

GC giant chinquapin

GF grand fir

GO Gambel oak

GP California foothill pine

GS giant sequoia

HT hawthorn species

IC incense cedar

IO interior live oak

JP Jeffrey pine

KP knobcone pine

LL subalpine larch

LM limber pine

LO California live oak

LP lodgepole pine

LS Lutz’s spruce

MA Pacific madrone

MB birchleaf mountain mahogany

MC curl-leaf mountain mahogany

MH mountain hemlock

MM Rocky Mountain maple

MP Monterey pine

NC narrowleaf cottonwood

NF noble fir

OH tree, deciduous species

OJ oneseed juniper

OS tree, evergreen species

OT Unknown species

PB paper birch

PC Port Orford cedar

PD border pinyon

PI common pinyon

PL cherry and plum species

PM singleleaf pinyon

PP ponderosa pine

PW plains cottonwood

PY Pacific yew

RA red alder

RC western red cedar

RF California red fir

RM Rocky Mountain juniper

RW redwood

SF Pacific silver fir

SH Shasta red fir

SO silverleaf oak

SP sugar pine

SS Sitka spruce

SU Scouler’s willow

SW southwestern white pine

SY California sycamore

TA Tamarack

TO tanoak

UJ Utah juniper

VN vine maple

VO valley oak

WA white alder

WB whitebark pine

WE Washoe pine

WF white fir

WH western hemlock

WI willow species

WJ western juniper

WL western larch

WN walnut species

WO Oregon white oak

WP western white pine

WS white spruce

YC Alaska cedar

**Species Codes - All Eastern Variants**

AB American Beech

AC American Chestnut

AE American Elm

AH Am Hornbeam, Musclewood

AI Ailanthus

AP Apple Spp.

AS Ash Spp.

AW Atlantic White-Cedar

BA Black Ash

BB Birch Spp.

BC Black Cherry

BE Boxelder

BF Balsam Fir

BG Blackgum

BH Bitternut Hickory

BI Black Hickory

BJ Blackjack Oak

BK Black Locust

BL Black Willow

BM Black Maple

BN Butternut

BO Black Oak

BP Balsam Poplar

BR Bur Oak

BS Black Spruce

BT Bigtooth Aspen

BU Buckeye, Horsechestnut

BW American Basswood

BY Baldcypress

CA Catalpa Spp.

CB Cherrybark Oak

CC Chokecherry

CH Other Commercial Hardwoods

CK Chinkapin Oak

CM Chalk Maple

CO Chestnut Oak

CT Cucumbertree

CW Cottonwood/Poplar Spp.

DM Diamond Willow

DO Delta Post Oak

DP Dwarf Post Oak

DW Flowering Dogwood

EC Eastern Cottonwood

EH Eastern Hemlock

EL Elm Spp.

FM Florida Maple

FR Fir Spp.

GA Green Ash

GB Gray Birch

HA Silverbell Spp.

HB Hackberry Spp.

HH E. Hophornbeam

HI Hickory Spp.

HK Hackberry

HL Honeylocust

HM Hemlock Spp.

HS Select hickory

HT Hawthorn

HY American Holly

JP Jack Pine

JU Redcedar/Juniper Spp.

KC Kentucky Coffeetree

LB Loblolly-Bay

LK Laurel Oak

LL Longleaf Pine

LO Live Oak

LP Loblolly Pine

MA American Mtn-Ash

MB Mulberry Spp.

MG Magnolia Spp.

MH Mockernut Hickory

ML Bigleaf Magnolia

MM Mountain Maple

MP Maple Spp.

MS Southern Magnolia

MV Sweetbay

NC Non-commercial species

NK Nutall Oak

NP Northern Pin Oak

NS Norway Spruce

OB Ohio Buckeye

OG Ogeechee Tupelo

OH Other Live/Dead Hardwood

OK Oak-Deciduous Spp.

OL Other lowland species

OO Osage-Orange

OP Pine Spp.

OS Other Softwood

OT Other

OV Overcup Oak

PA Pumpkin Ash

PB Paper Birch

PC Pondcypress

PD Pond Pine

PE Pecan

PH Pignut Hickory

PI Spruce Spp.

PL Cherry/Plum Spp.

PN Pin Oak

PO Post Oak

PP Pitch Pine

PR Pin Cherry

PS Common Persimmon

PU Sand Pine

PW Paulownia, Empresstree

PY Swamp Cottonwood

PZ Ponderosa Pine

QA Quaking Aspen

QI Shingle Oak

QN Bluejack Oak

QS Shumard Oak

RA Redbay

RB River Birch

RC Eastern Redcedar

RD Eastern Redbud

RE Rock Elm

RL Slippery Elm

RM Red Maple

RN Red Pine

RO Northern Red Oak

RP Red pine

RS Red Spruce

RY Red Mulberry

SA Slash Pine

SB Sweet Birch

SC Scotch Pine

SD Sourwood

SE Serviceberry Spp.

SG Sugarberry

SH Shagbark Hickory

SI Siberian Elm

SK Southern Red Oak

SL Shellbark Hickory

SM Sugar Maple

SN Swamp Chestnut Oak

SO Scarlet Oak

SP Shortleaf Pine

SR Spruce Pine

SS Sassafras

ST Striped Maple

SU Sweetgum

SV Silver Maple

SW Swamp White Oak

SY Sycamore

TA Tamarack

TL Tupelo Spp.

TM Table Mtn Pine

TO Turkey Oak

TS Swamp Tupelo

UA Blue Ash

UH Other upland hardwoods

VP Virginia Pine

WA White Ash

WB White Basswood

WC Northern White-Cedar

WE Winged Elm

WH Water Hickory

WI Willow Spp.

WK Water Oak

WL Willow Oak

WM White Mulberry

WN Black Walnut

WO White Oak

WP Eastern White Pine

WR Water Birch

WS White Spruce

WT Water Tupelo

YB Yellow Birch

YP Yellow-Poplar

YY Yellow Buckeye

# **Regeneration Establishment Model Keywords**

This section provides descriptions of the keywords that are used with the Regeneration Establishment extension to the Forest Vegetation Simulator. With only a few exceptions, the keywords in this section are only recognized by FVS when they are contained in a sequence that begins with the keyword [ESTAB](#_ESTAB_(ESTABlishment_model)_1) and ends with the keyword [END](#_END_(END_of). Base model keywords are not recognized when they appear inside this sequence.

The following is a list of all the Regeneration Establishment model keywords. For a full description of the Regeneration Establishment model refer to GTR INT-279, *User’s Guide to Version 2 of the Regeneration Establishment Model: Part of the Prognosis Model*.

[AUTALLY](#_AUTALLY_(AUtomatic_seedling)

[BUDWORM](#_BUDWORM_(spruce_BUDWORM))

[BURNPREP](#_BURNPREP_(BURNing_site)

[END](#_END_(END_of)

[ESTAB](#_ESTAB_(ESTABlishment_model)_1)

[EZCRUISE](#_EZCRUISE_(Easy_CRUISE))

[HABGROUP](#_HABGROUP_(HABitat_type)

[HTADJ](#_HTADJ_(regeneration_HeighT)

[INGROW](#_INGROW_(INGROWth))

[MECHPREP](#_MECHPREP_(MECHanical_site)

[MINPLOTS](#_MINPLOTS_(MINimum_number)

[NATURAL](#_NATURAL_(NATURAL_regeneration))

[NOAUTALY](#_NOAUTALY_(NO_AUTomatic)

[NOINGROW](#_NOINGROW_(NO_automatic)

[NOSPROUT](#_NOSPROUT_(NO_stump)

[OUTPUT](#_OUTPUT_(OUTPUT_tables))

[PASSALL](#_PASSALL_(PASS_ALL)

[PLANT](#_PLANT_(PLANT_seedlings))

[PLOTINFO](#_PLOTINFO_(PLOT_INFOrmation))

[RANNSEED](#_RANNSEED_(RANdom_Number_1)

[RESETAGE](#_RESETAGE_(RESET_stand_1)

[SPECMULT](#_SPECMULT_(SPECies_occurrence)

[SPROUT](#_SPROUT_(stump_or)

[STOCKADJ](#_STOCKADJ_(STOCKing_ADJustment))

[TALLY](#_TALLY_(seedling_TALLY))

[TALLYONE](#_TALLYONE_(seedling_TALLY)

[TALLYTWO](#_TALLYTWO_(seedling_TALLY)

[THRSHOLD](#_THRSHOLD_(automatic_regeneration)

# **AUTALLY** (<u>AU</u>tomatic seedling <u>TALLY</u>)

Full Regeneration Establishment Extension

Variants: AK, CI, EM, KT, NI

Related keywords: [THRESHOLD](#_THRSHOLD_(automatic_regeneration), [NOAUTALY](#_NOAUTALY_(NO_AUTomatic), [TALLY](#_TALLY_(seedling_TALLY)), [TALLYONE](#_TALLYONE_(seedling_TALLY), [TALLYTWO](#_TALLYTWO_(seedling_TALLY)

Requests automatic scheduling of regeneration following thinnings in which certain thresholds are exceeded. When 10 to 30 percent of the trees per acre or total cubic foot volume is removed, a single regeneration tally is scheduled. When more than 30 percent of the trees per acre or total cubic foot volume is removed, a tally sequence is scheduled. These percentages can be modified using the THRESHOLD keyword.

No fields are associated with this keyword.

Note: This keyword is only used in FVS variants that have the capability for automatic prediction of natural regeneration (AK, CI, EM, KT, and NI).

Caution: The base model keyword [NOAUTOES](#_NOAUTOES_(NO_AUTOmatic) invokes the [NOAUTALY](#_NOAUTALY_(NO_AUTomatic), [NOINGROW](#_NOINGROW_(NO_automatic) and [NOSPROUT](#_NOSPROUT_(NO_stump) keywords.

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 8

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.2.4

# **BUDWORM** (spruce <u>BUDWORM</u>)

Regeneration Establishment Extension

Variants: AK, CI, EM, KT, NI

Specifies defoliation histories for western spruce budworm and the effects of budworm defoliation on regeneration success.

field 1: Year or cycle that defoliation began. A 0 (zero) or blank results in an error message.

field 2: Last year of defoliation. A 0 (zero) or blank is replaced with the value in field 1 resulting in one year of defoliation.

Note: This keyword is only used in FVS variants that have the capability for automatic prediction of natural regeneration (AK, CI, EM, KT, and NI).

Note: Up to 20 BUDWORM keyword records can be present in a projection.

Note: If budworm effects are represented by the Budworm Model then this keyword is not necessary.

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 11

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.1.5

# **BURNPREP** (<u>BURN</u>ing site <u>PREP</u>aration)

Regeneration Establishment Extension

Variants: AK, CI, EM, KT, NI

Related keywords: [MECHPREP](#_MECHPREP_(MECHanical_site)

Specifies the percentage of regeneration plots receiving site preparation by burning. When site preparation treatments have not been specified or assigned with BURNPREP or [MECHPREP](#_MECHPREP_(MECHanical_site) keywords, default equations are invoked. These equations predict the proportion of the stand receiving each of the three treatments (burning, mechanical scarification, and no disturbance) based on site characteristics such as slope, aspect, habitat type, residual basal area, elevation, and topographic position.

field 1: Year or cycle of site preparation. *Default = 0 (all cycles)*

field 2: Percentage of plots to be treated. *Range: 0-100, Default = 0*

Note: This keyword is only used in FVS variants that have the capability for automatic prediction of natural regeneration (AK, CI, EM, KT, and NI).

Note: The sum of mechanical and burn treatments must be less than, or equal to, 100 percent. If the sum is less than 100 percent, the difference is the percentage of undisturbed plots.

Note: Site preparations can be assigned to individual plots if desired. See [PLOTINFO](#_PLOTINFO_(PLOT_INFOrmation)) keyword.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 11

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.1.1

# **END** (<u>END</u> of regeneration sequence)

Regeneration Establishment Extension

Variants: ALL

Related keywords: [[ESTAB](#_ESTAB_(ESTABlishment_model)_1)](#_ESTAB_(ESTABlishment_model)_1)

Signifies the end of the Regeneration Establishment sequence of keywords that was begun with the [[ESTAB](#_ESTAB_(ESTABlishment_model)_1)](#_ESTAB_(ESTABlishment_model)_1) keyword. Essentially, the END keyword returns control of the simulation to the base FVS system after the Regeneration Establishment extension has been called.

No fields are associated with this keyword.

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 12

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3

# **ESRANSD** (<u>ES</u>tablishment <u>RAN</u>dom <u>N</u>umber <u>S</u>ee<u>D</u>)

Regeneration Establishment Extension

Variants: All

Reseeds the pseudorandom number generators used in the FVS model. A 0 (zero) generates a random number seed, which causes simulation results to vary with multiple runs.

field 1: Replacement value for the pseudorandom number seed (should be an odd integer). *Default = 55329*

Note: The FVS base model and the Regeneration Establishment extension use separate pseudorandom number generators. Each one can be reseeded independently. Using a ESRANSD keyword inside an [[ESTAB](#_ESTAB_(ESTABlishment_model)_1)](#_ESTAB_(ESTABlishment_model)_1)-[[END](#_END_(END_of)](#_END_(END_of) sequence affects the Regeneration Establishment extension.

References: \*GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 94

\*GTR INT-208, Supplement to the User’s Guide..., p. 14

\*GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 32

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.2.6

GTR INT‑394, Implications of Random Variation in the Stand Prognosis Model

\*GTR’s published prior to 6/30/2021 will refer to the Regeneration Establishment Random Number Keyword as RANSEED, this is because the keyword was changed to ESRANSD to reduce keyword duplicity with the Base Model RANSEED keyword.

# **ESTAB** (<u>ESTAB</u>lishment model)

Regeneration Establishment Extension

Variants: All

Related keywords: [[END](#_END_(END_of)](#_END_(END_of)

Signifies the beginning of keywords for the Regeneration Establishment extension. The ESTAB keyword sequence must be terminated with an [[END](#_END_(END_of)](#_END_(END_of) keyword. All keywords between ESTAB and [[END](#_END_(END_of)](#_END_(END_of) are considered Establishment extension keywords.

field 1: Year or cycle of disturbance or beginning of regeneration. The seedling tally sequence will begin in this year. *Default = Blank*

Caution: Some care is necessary when entering a disturbance date to ensure that the regeneration establishment model is called at the correct time. Pay close attention to cycle boundaries when entering disturbance date.

Caution: If the ESTAB keyword is embedded in an [IF](#_IF_(begin_IF-then)-[THEN](#_THEN_(schedule_if-THEN)-[ENDIF](#_ENDIF_(END_an) sequence, year of disturbance (field 1) is interpreted as years from the time the condition is true until establishment, or in other words, a lag time. (e.g. a 5 in field 1 means wait 5 years after condition is true to establish the stand.)

Note: The Regeneration Establishment extension keyword sequence must begin with an ESTAB keyword and end with an [[END](#_END_(END_of)](#_END_(END_of) keyword; all keywords contained within this sequence are considered Regeneration Establishment keywords.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 11

GTR INT-133, User’s Guide to the Stand Prognosis Model, p. 86

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3

# **EZCRUISE** (<u>E</u>asy <u>CRUISE</u>)

Full Regeneration Establishment Extension

Variants: AK, CI, EM, KT, NI

Requests prediction of the small tree component at the time of the inventory. This keyword is used if the stand inventory did not include regeneration less than 3 inches dbh.

No fields are associated with this keyword.

Note: This keyword is only used in FVS variants that have the capability for automatic prediction of natural regeneration (AK, CI, EM, KT, and NI).

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 12

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.1.8

# **HABGROUP** (<u>HAB</u>itat type <u>GROUP</u>)

Regeneration Establishment Extension

Variants: AK, CI, EM, KT, NI

Requests that an optional output table that shows habitat types within the habitat type groups shown in the regeneration summary output table be written to the standard FVS output file.

No fields are associated with this keyword.

Note: This keyword is only used in FVS variants that have the capability for automatic prediction of natural regeneration (AK, CI, EM, KT, and NI).

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 12

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.3

# **HTADJ** (regeneration <u>H</u>eigh<u>T</u> <u>ADJ</u>ustment)

Regeneration Establishment Extension

Variants: All

Specifies a species-specific initial height adjustment for newly established trees before the tree records are passed to the base FVS model.

field 1: Year or cycle the adjustment is to be applied. Once in effect it remains in effect until replaced by a subsequent multiplier. *Default = 1*

field 2: Species code for trees to be adjusted. *Default = All*

field 3: Height in feet to be added to the seedling height assigned by the Regeneration Establishment extension. A negative value results in a reduction in height. *Default = 0*

Note: The HTADJ keyword should not be confused with the FVS base model keyword [REGHMULT](#_REGHMULT_(REGeneration_Height), which is a multiplier.

Note: The value entered in field 3 can be positive or negative, but resulting heights will not be shorter than a preset minimum (usually 0.5 or 1.0 feet), nor taller than the height of a tree 3 inches dbh.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 13

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, ss. 5.4.3.2.1,

6.5.2.3

# **INGROW** (<u>INGROW</u>th)

Full Regeneration Establishment Extension

Variants: AK, CI, EM, KT, NI

Related keywords: [NOINGROW](#_NOINGROW_(NO_automatic)

Requests addition of new trees in the absence of disturbance in recent cycles. Ingrowth will occur every 20 years after the completion of a regeneration period if there are no regeneration activities scheduled for the next cycle. The objective is to account for regeneration that continues to become established in sparsely stocked stands or under the canopy of the overstory. Tree records that are created for ingrowth tallies can include trees up to 20 years old, so an assortment of tree sizes is added to the simulation.

No fields are associated with this keyword.

Note: This keyword is only used in FVS variants that have the capability for automatic prediction of natural regeneration (AK, CI, EM, KT, and NI).

Caution: The base model keyword [NOAUTOES](#_NOAUTOES_(NO_AUTOmatic) invokes the [NOAUTALY](#_NOAUTALY_(NO_AUTomatic) and [NOINGROW](#_NOINGROW_(NO_automatic) keywords.

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 8

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.2.4

# **MECHPREP** (<u>MECH</u>anical site <u>PREP</u>aration)

Regeneration Establishment Extension

Variants: AK, CI, EM, KT, NI

Related keywords: [BURNPREP](#_BURNPREP_(BURNing_site)

Specifies the percentage of regeneration plots receiving site preparation by mechanical means. When site preparation treatments have not been specified or assigned with MECHPREP or [BURNPREP](#_BURNPREP_(BURNing_site) keywords, default equations are invoked. These equations predict the proportion of the stand receiving each of the three treatments (burning, mechanical scarification, and no disturbance) based on site characteristics such as slope, aspect, habitat type, residual basal area, elevation, and topographic position.

field 1: Year or cycle of site preparation. *Default = 0 (all cycles)*

field 2: Percentage of plots to be treated. *Range: 0-100, Default = 0*

Note: This keyword is only used in FVS variants that have the capability for automatic prediction of natural regeneration (AK, CI, EM, KT, and NI).

Note: The sum of mechanical and burn treatments must be less than, or equal to, 100 percent. If the sum is less than 100 percent, the difference is the percentage of undisturbed plots.

Note: Site preparations can be assigned to individual plots if desired. See [PLOTINFO](#_PLOTINFO_(PLOT_INFOrmation)) keyword.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 11

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.1.1

# **MINPLOTS** (<u>MIN</u>imum number of <u>PLOTS</u>)

Regeneration Establishment Extension

Variants: All

Specifies the minimum number of regeneration plots to process. The regeneration model produces plot‑to‑plot variation in the number of trees per plot, species composition, and initial tree heights. Stand statistics are averages of plot predictions, so a large number of plots reduces the random variation for the stand. Plots are repeatedly doubled until the user-specified minimum number is reached.

field 1: Minimum number of plots to process. *Minimum = 20, Default = 50*

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 13

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.2.7

# **NATURAL** (<u>NATURAL</u> regeneration)

Regeneration Establishment Extension

Variants: All

Related keywords: [PLANT](#_PLANT_(PLANT_seedlings))

Specifies natural regeneration that will be added to the stand.

field 1: Year or cycle of regeneration. An entry is required, and must be equal to, or greater than, the disturbance date specified on the [[ESTAB](#_ESTAB_(ESTABlishment_model)_1)](#_ESTAB_(ESTABlishment_model)_1) keyword. (If you are adding the NATURAL keyword using the FVS Interface, it will automatically add the ESTAB keyword, and you do not have to specifying the date of disturbance.)

field 2: Species code for trees to be naturally regenerated. *Entry required*

field 3: Number of trees per acre of the species designated in field 2 to be regenerated. *Default = 0*

field 4: Percent survival expected for this species at the end of the current cycle.

*Range: 0-100, Default = 100*

field 5: Average seedling age in years for the year specified in field 1. *Default = 2*

field 6: Average seedling height in feet five years from the time of seedling appearance or at the end of the cycle, whichever is earlier.

field 7: Shade code. *Default = 0*

0 Seedlings occur uniformly on plots throughout the stand.

1 Seedlings occur more frequently on plots with more overstory basal area.

2 Seedlings occur more frequently on plots with less overstory basal area.

Note: A separate NATURAL keyword is necessary for each species.

Note: Use of this keyword sets [STOCKADJ](#_STOCKADJ_(STOCKing_ADJustment)) to 0.0 and activates the [NOINGROW](#_NOINGROW_(NO_automatic) and [NOAUTALY](#_NOAUTALY_(NO_AUTomatic) keywords.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

Caution: Seedling age does not have an effect in some variants on seedling height. For those variants that seedling age does have an effect on the regenerated trees, fill in seedling age or seedling height. Seedling age is used to estimate the height of the seedling at 5 years (or end of cycle whichever is earlier). If you enter a height it will ignore the seedling age entered, and will use the specified height as the height of the tree at 5 years (or end of cycle which ever comes first). Entering a seedling height is recommended and will improve model performance.

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 11

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.1.2

# **NOAUTALY** (<u>NO</u> <u>AUT</u>omatic seedling <u>TALLY</u>)

Full Regeneration Establishment Extension

Variants: AK, CI, EM, KT, NI

Related keywords: AUTALLY, [NOINGROW](#_NOINGROW_(NO_automatic), [NOSPROUT](#_NOSPROUT_(NO_stump)

Suppresses the automatic scheduling of regeneration following thinnings (see AUTALLY).

No fields are associated with this keyword.

Note: This keyword is only used in FVS variants that have the capability for automatic prediction of natural regeneration (AK, CI, EM, KT, and NI).

Note: The base model keyword [NOAUTOES](#_NOAUTOES_(NO_AUTOmatic) invokes the NOAUTALY and [NOINGROW](#_NOINGROW_(NO_automatic) keywords.

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 13

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.2.4

# **NOINGROW** (<u>NO</u> automatic <u>INGROW</u>th)

Full Regeneration Establishment Extension

Variants: AK, CI, EM, KT, NI

Related keywords: [INGROW](#_INGROW_(INGROWth)), [NOAUTALY](#_NOAUTALY_(NO_AUTomatic), [NOSPROUT](#_NOSPROUT_(NO_stump)

Suppresses the automatic scheduling of ingrowth (see [INGROW](#_INGROW_(INGROWth))).

No fields are associated with this keyword.

Note: This keyword is only used in FVS variants that have the capability for automatic prediction of natural regeneration (AK, CI, EM, KT, and NI).

Note: The base model keyword [NOAUTOES](#_NOAUTOES_(NO_AUTOmatic) invokes the [NOAUTALY](#_NOAUTALY_(NO_AUTomatic) and NOINGROW keywords.

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 13

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.2.4

# **NOSPROUT** (<u>NO</u> stump or root <u>SPROUT</u>ing)

Regeneration Establishment Extension

Variants: All

Related keywords: [SPROUT](#_SPROUT_(stump_or), [NOINGROW](#_NOINGROW_(NO_automatic), [NOAUTALY](#_NOAUTALY_(NO_AUTomatic)

Suppresses the automatic scheduling of root and stump sprouting following thinning (see [SPROUT](#_SPROUT_(stump_or)).

No fields are associated with this keyword.

Note: The base model keyword [NOAUTOES](#_NOAUTOES_(NO_AUTOmatic) does not invoke the NOSPROUT keyword.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.2.4

# **OUTPUT** (<u>OUTPUT</u> tables)

Regeneration Establishment Extension

Variants: All

Specifies printing of regeneration summary tables.

field 1: Summary table output flag. *Default = 1*

0 Suppress all output (tree records still passed to FVS model)

1 Print standard regeneration summary table

field 2: File reference number for output. If this field is left blank output will be written to the FVS output file. If the value is any number other than 16 or blank, then an associated output file needs to be opened with [OPEN](#_OPEN_(OPEN_a) keyword. *Default = 17*

Caution: The debug option produces a great deal of output that is not useful to most users.

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 12

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.3

# **PASSALL** (<u>PASS</u> <u>ALL</u> seedling records)

Full Regeneration Establishment Extension

Variants: AK, CI, EM, KT, NI

Specifies the maximum number of “acceptable” (value class 2) predicted seedlings per species per plot to be passed from the Regeneration Establishment model to the FVS tree list during the tally. The Regeneration Establishment model automatically passes all of the “best” or “desirable” (value class 1) predicted seedlings, which includes all planted seedlings, to the FVS tree list during the tally. It also passes all sprouts as “acceptable” (value class 2). In addition, in the full establishment model, up to five “acceptable” (value class 2) naturally regenerating seedlings of each species per regeneration plot are passed by default. PASSALL specifies a new maximum number of “acceptable” naturally regenerating seedlings of each species per plot to be passed. This does not affect the number of “best” seedlings passed or the number of sprouts passed.

field 1: Maximum number of “acceptable” (value class 2) naturally regenerating seedlings of each species per plot to pass to the base model. *Default = 1*

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 4

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.1.7

# **PLANT** (<u>PLANT</u> seedlings)

Regeneration Establishment Extension

Variants: All

Related keywords: [NATURAL](#_NATURAL_(NATURAL_regeneration))

Specifies planting of seedlings that will be added to the stand.

field 1: Year or cycle of regeneration. An entry is required, and must be equal to, or greater than, the disturbance date specified on the [[ESTAB](#_ESTAB_(ESTABlishment_model)_1)](#_ESTAB_(ESTABlishment_model)_1) keyword. (If you are adding the PLANT keyword using the FVS Interface, it will automatically add the ESTAB keyword, and you do not have to specifying the date of disturbance.)

field 2: Species code for trees to be naturally regenerated. *Entry required*

field 3: Number of trees per acre of the species designated in field 2 to be planted. *Default = 0*

field 4: Percent survival expected for this species at the end of the current cycle.

*Range: 0-100, Default = 100*

field 5: Average seedling age in years for the year specified in field 1. *Default = 2*

field 6: Average seedling height in feet five years from the time of planting or at the end of the cycle, whichever is earlier.

field 7: Shade code. *Default = 0*

0 Seedlings occur uniformly on plots throughout the stand.

1 Seedlings occur more frequently on plots with more overstory basal area.

2 Seedlings occur more frequently on plots with less overstory basal area.

Note: A separate PLANT keyword is necessary for each species.

Note: Planted trees are in addition to natural regeneration and do compete with naturals in the best tree selection process.

Note: The [STOCKADJ](#_STOCKADJ_(STOCKing_ADJustment)) keyword can be used in conjunction with planting to suppress natural regeneration so that only planted trees are passed to the FVS model.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

Caution: Seedling age does not have an effect in some variants on seedling height. For those variants that seedling age does have an effect on the regenerated trees, fill in seedling age or seedling height. Seedling age is used to estimate the height of the seedling at 5 years (or end of cycle whichever is earlier). If you enter a height it will ignore the seedling age entered, and will use the specified height as the height of the tree at 5 years (or end of cycle which ever comes first). Entering a seedling height is recommended and will improve model performance.

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 11

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.1.2

# **PLOTINFO** (<u>PLOT</u> <u>INFO</u>rmation)

Regeneration Establishment Extension

Variants: All

Related keywords: [NATURAL](#_NATURAL_(NATURAL_regeneration))

Specifies plot specific values for slope, aspect, habitat type, topographic position, and site preparation. This keyword is used when plot information is not contained on the tree data records. A separate record is required for each plot (either as a supplemental record or as a record in the file designated in field 1 and opened with an [OPEN](#_OPEN_(OPEN_a) keyword).

field 1: File reference number for input. If this field is left blank supplemental data records are assumed to follow immediately after the PLOTINFO keyword in the keyword file.

Supplemental record format:

Columns 1‑10: Plot identification number coded the same as in the FVS model. A record with a negative number in these columns must be present to signify the end of PLOTINFO supplemental data records.

Columns 11-12: Plot slope percent.

Column 13-15: Plot aspect in degrees.

Column 16‑18: Plot numeric habitat type code.

Column 19: Plot topographic position code.

1 Bottom

2 Lower slope

3 Mid-slope

4 Upper slope

5 Ridge top

Column 20: Plot site preparation code.

1 None

2 Mechanical

3 Burn

4 Road cut, road fill, or stockable road bed

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model, p.24,33

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.1.4

# **RESETAGE** (<u>RESET</u> stand <u>AGE</u>)

Regeneration Establishment Extension

Variants: All

Sets the stand age to zero to make FVS model output correspond to the actual age of the stand. Age is strictly for reporting purposes and has no effect on growth or survival prediction. Its only effect is on the calculation of mean annual increment. This keyword is useful when average stand age has changed due to thinnings and plantings.

field 1: Year or cycle that stand age is to be changed (usually the year of disturbance).

field 2: New stand age. *Default = 0*

Note: This is also a base model keyword. Both have exactly the same effect.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.1.3

# **SPECMULT** (<u>SPEC</u>ies occurrence <u>MULT</u>iplier)

Full Regeneration Establishment Extension

Variants: AK, CI, EM, KT, NI

Specifies a species-specific multiplier that increases or decreases the probability of a species’ occurrence in natural regeneration. The multiplier does not set the probability of a species’ occurrence; it is multiplied by the default probability to increase or decrease the probability of occurrence. Thus, a multiplier of 1.0 has no effect on the default probability for that species.

field 1: Year or cycle the multiplier takes effect. *Default = 1*

field 2: Species code to which the multiplier will be applied. *Entry required*

field 3: Multiplier value. *Range: 0.0-1.0, Default = 1.0*

Note: This keyword is only used in FVS variants that have the capability for automatic prediction of natural regeneration (AK, CI, EM, KT, and NI).

Note: A separate SPECMULT keyword record is needed for each species to be modified.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 13

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, ss. 5.4.3.2.3,

6.5.2.3

# **SPROUT** (stump or root <u>SPROUT</u>ing)

Regeneration Establishment Extension

Variants: All

Related keywords: [NOSPROUT](#_NOSPROUT_(NO_stump), [INGROW](#_INGROW_(INGROWth)), AUTALLY

Requests the automatic scheduling of root and stump sprouts after a thinning and allows users to change the number of regenerated sprouts and initial sprout heights. A value of less than 1.0 decreases the number and/or height of sprouts, and a value greater than 1.0 increases the number and/or height of sprouts. Only those species that are prone to stump or root sprouting will have this type of regeneration scheduled. This keyword has no effect on species that do not sprout. For most sprouting species this keyword is on by default.

field 1: Year or cycle the multiplier takes effect. Enter 0 (zero) to effect every cycle. *Default = 1*

field 2: Species to apply sprouting multipliers. *Default = all*

field 3: Number of sprouts multiplier. *Default = 1.0*

field 4: Sprout height multiplier. *Default = 1.0*

field 5: Smallest dbh in inches for application of multipliers (greater than or equal). *Default = 0*

field 6: Largest dbh in inches for application of multipliers (less than). *Default = 999*

Caution: The base model keyword [NOAUTOES](#_NOAUTOES_(NO_AUTOmatic) invokes the [NOAUTALY](#_NOAUTALY_(NO_AUTomatic), [NOINGROW](#_NOINGROW_(NO_automatic) and [NOSPROUT](#_NOSPROUT_(NO_stump) keywords.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

Reference: Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.2.4

# **STOCKADJ** (<u>STOCK</u>ing <u>ADJ</u>ustment)

Full Regeneration Establishment Extension

Variants: AK, CI, EM, KT, NI

Adjusts the probability of natural regeneration stocking upward or downward. The probability of stocking will be multiplied by the value entered in field 2, but the product will be bounded within the interval [0,1]. The multiplier is calculated by dividing the desired probability of stocking by the predicted probability of stocking. As an example, suppose the regeneration model predicts the probability of stocking 10 years after a harvest is 0.40 and it is desired to raise this figure to 0.50 in a subsequent run. The value to enter in field 2 is 1.25 (0.50/0.40 = 1.25). In other words, the desired probability is 1.25 times the predicted probability.

field 1: Year or cycle the multiplier takes effect. *Default = 1*

field 2: Multiplier for the probability of stocking. *Default = 1.0 (CI default = 0.0)*

Note: This keyword is only used in FVS variants that have the capability for automatic prediction of natural regeneration (AK, CI, EM, KT, and NI).

Note: If field 2 is blank or 0 (zero) natural regeneration is cancelled so that only planted trees regenerate. This is useful in simulating growth of plantations or to input a list of trees on a habitat type for which the Regeneration Establishment extension is not presently calibrated.

Note: The [PARMS](#_PARMS_Format) format may be used with this keyword. See the introduction for a description of this format.

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 15

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, ss. 5.4.3.2.2,

6.5.2.3

# **TALLY** (seedling <u>TALLY</u>)

Regeneration Establishment Extension

Variants: All

Related keywords: [TALLYONE](#_TALLYONE_(seedling_TALLY), [TALLYTWO](#_TALLYTWO_(seedling_TALLY), AUTALLY

Schedules a tally sequence for prediction of regeneration, and optionally supplies a disturbance year. Regeneration is reported in a summary called a tally. At each tally, new regeneration is added to the FVS Model tree list and a regeneration summary output table is printed. A tally will be predicted for every cycle boundary for 20 years following the beginning of the sequence. For example, if cycle lengths were 5 years, four tallies would result.

field 1: Year or cycle the tally sequence is to begin. *Entry required*

field 2: Optional field to supply the year of disturbance. This value takes precedence over the value in field 1 of the [[ESTAB](#_ESTAB_(ESTABlishment_model)_1)](#_ESTAB_(ESTABlishment_model)_1) keyword record. If blank, the year of disturbance is determined from field 1 of the [[ESTAB](#_ESTAB_(ESTABlishment_model)_1)](#_ESTAB_(ESTABlishment_model)_1) keyword record.

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p. 13

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.1.6

# **TALLYONE** (seedling <u>TALLY</u> <u>ONE</u>)

Regeneration Establishment Extension

Variants: All

Related keywords: [[TALLYTWO](#_TALLYTWO_(seedling_TALLY)](#_TALLYTWO_(seedling_TALLY), [TALLY](#_TALLY_(seedling_TALLY)), AUTALLY

Specifies the year in which the first regeneration tally is to occur, and optionally supplies a disturbance year. New seedlings as well as advanced regeneration (those trees that germinated and became established prior to the disturbance date) are passed to the base model. Regeneration is predicted at the end of the cycle, so the specified tally year should be one year prior to the end of the cycle. For example, if, in a simulation using 5-year cycles, a regeneration harvest is scheduled for 2010 and the first tally is desired 10 years later, the tally year specified in the TALLYONE keyword should be 2019 (one year prior to the 2020 cycle boundary). The TALLYONE keyword takes precedence over the tally sequence scheduled by the [[ESTAB](#_ESTAB_(ESTABlishment_model)_1)](#_ESTAB_(ESTABlishment_model)_1) keyword or the [TALLY](#_TALLY_(seedling_TALLY)) keyword.

field 1: Year the first regeneration tally is to be reported. *Entry required*

field 2: Optional field to supply the year of disturbance. This value takes precedence over the value in field 1 of the [[ESTAB](#_ESTAB_(ESTABlishment_model)_1)](#_ESTAB_(ESTABlishment_model)_1) keyword record. If blank, the year of disturbance is determined from field 1 of the [[ESTAB](#_ESTAB_(ESTABlishment_model)_1)](#_ESTAB_(ESTABlishment_model)_1) keyword record.

Note: At the first regeneration tally (TALLYONE), both planted trees and natural regeneration are passed to the FVS model.

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p.7,12

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.1.6

# **TALLYTWO** (seedling <u>TALLY</u> <u>TWO</u>)

Regeneration Establishment Extension

Variants: All

Related keywords: [TALLYONE](#_TALLYONE_(seedling_TALLY), [TALLY](#_TALLY_(seedling_TALLY)), AUTALLY

Specifies the year in which a subsequent regeneration tally is to occur, and optionally supplies a disturbance year (see [TALLYONE](#_TALLYONE_(seedling_TALLY)). A TALLYTWO may be scheduled any time after a [TALLYONE](#_TALLYONE_(seedling_TALLY) and within 20 years of the disturbance date. Multiple TALLYTWO keyword records may be scheduled. If a TALLYTWO is scheduled without a [TALLYONE](#_TALLYONE_(seedling_TALLY) being scheduled, the TALLYTWO is changed to a [TALLYONE](#_TALLYONE_(seedling_TALLY). Only new seedlings (those that germinated and became established subsequent to the previous tally) are passed to the base model. Regeneration is predicted at the end of the cycle, so the specified tally year should be one year prior to the end of the cycle. The TALLYTWO keyword takes precedence over the tally sequence scheduled by the [[ESTAB](#_ESTAB_(ESTABlishment_model)_1)](#_ESTAB_(ESTABlishment_model)_1) keyword or the [TALLY](#_TALLY_(seedling_TALLY)) keyword.

field 1: Year the second regeneration tally is to be reported. *Entry required*

field 2: Optional field to supply the year of disturbance. This value takes precedence over the value in field 1 of the [[ESTAB](#_ESTAB_(ESTABlishment_model)_1)](#_ESTAB_(ESTABlishment_model)_1) keyword record. If blank, the year of disturbance is determined from field 1 of the [[ESTAB](#_ESTAB_(ESTABlishment_model)_1)](#_ESTAB_(ESTABlishment_model)_1) keyword record.

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p.7,12

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.1.6

# **THRSHOLD** (automatic regeneration <u>THR</u>e<u>SHOLD</u>s)

Full Regeneration Establishment Extension

Variants: AK, CI, EM, KT, NI

Related keywords: AUTALLY

Changes the threshold values that schedule automatic regeneration tallies following thinnings. Values refer to the percentage of either trees per acre or total cubic foot volume removed in the thinnings. A single regeneration tally is scheduled if the percentage removed falls between the lower and upper percentages specified on this keyword. An entire tally sequence is scheduled if the percentage removed is greater than the upper percentage specified on this keyword. If this keyword is not used the lower percentage is 10 and the upper percentage is 30.

field 1: Lower removal percentage. *Range: 2.5-95.0, Default = 10*

field 2: Upper removal percentage. *Range: 5.0-97.5, Default = 30*

Note: The value in field 1 must be lower than the value in field 2.

Note: This keyword is only used in FVS variants that have the capability for automatic prediction of natural regeneration (AK, CI, EM, KT, and NI).

References: GTR INT-279, User’s Guide to the Regeneration Establishment Model..., p.8,13

Essential FVS: A User’s Guide to the Forest Vegetation Simulator, s. 5.4.3.2.5

The U.S. Department of Agriculture (USDA) prohibits discrimination in all its programs and activities on the basis of race, color, national origin, sex, religion, age, disability, political beliefs, sexual orientation, or marital or family status. (Not all prohibited bases apply to all programs.) Persons with disabilities who require alternative means for communication of program information (Braille, large print, audiotape, etc.) should contact USDA’s TARGET Center at (202) 720-2600 (voice and TDD).

To file a complaint of discrimination, write USDA, Director, Office of Civil Rights, Room 326-W, Whitten Building, 1400 Independence Avenue, SW, Washington, DC 20250-9410 or call (202) 720-5964 (voice or TDD). USDA is an equal opportunity provider and employer.