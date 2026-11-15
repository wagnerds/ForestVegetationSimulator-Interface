Essential FVS:

A User’s Guide to the Forest Vegetation Simulator

**Gary E. Dixon**

June 2026

![](data:image/png;base64...)

In accordance with Federal civil rights law and U.S. Department of Agriculture (USDA) civil rights regulations and policies, the USDA, its Agencies, offices, and employees, and institutions participating in or administering USDA programs are prohibited from discriminating based on race, color, national origin, religion, sex, gender identity (including gender expression), sexual orientation, disability, age, marital status, family/parental status, income derived from a public assistance program, political beliefs, or reprisal or retaliation for prior civil rights activity, in any program or activity conducted or funded by USDA (not all bases apply to all programs). Remedies and complaint filing deadlines vary by program or incident.

Persons with disabilities who require alternative means of communication for program information (e.g., Braille, large print, audiotape, American Sign Language, etc.) should contact the responsible Agency or USDA's TARGET Center at (202) 720-2600 (voice and TTY) or contact USDA through the Federal Relay Service at (800) 877-8339. Additionally, program information may be made available in languages other than English.

To file a program discrimination complaint, complete the USDA Program Discrimination Complaint Form, AD-3027, found online at [<u>How to File a Program Discrimination Complaint</u>](https://www.usda.gov/oascr/how-to-file-a-program-discrimination-complaint) and at any USDA office or write a letter addressed to USDA and provide in the letter all of the information requested in the form. To request a copy of the complaint form, call (866) 632-9992. Submit your completed form or letter to USDA by: (1) mail: U.S. Department of Agriculture, Office of the Assistant Secretary for Civil Rights, 1400 Independence Avenue, SW, Washington, D.C. 20250-9410; (2) fax: (202) 690-7442; or (3) email: <u>program.intake@usda.gov</u>.

USDA is an equal opportunity provider, employer, and lender.

**Abstract**

Dixon, Gary E. comp. 2002. Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 240p. (Revised: June 11, 2026)

This document synthesizes information in various users’ guides relating to the Forest Vegetation Simulator (FVS), and updates that information to be consistent with current model capabilities. This guide explains FVS data input requirements, the keyword system, model output interpretation, timing of management options, simulating management scenarios, regeneration event monitor use, conditionally scheduling activities, creating custom output variables, model calibration to local stand conditions, model multipliers, policy labeling, basic component model theory, available extensions, and lists common problems and their solution. This document is meant to serve as an initial reference for people of all skill levels with the FVS model.

Keywords: Forest Vegetation Simulator, forest management, simulation models, resource management.
**About the Author**

**![](data:image/jpeg;base64...)**Gary E. Dixon (retired) is a biometrician and served as the Forest Vegetation Simulator Group leader at the Washington Office’s Forest Management Service Center in Fort Collins, Colorado. Dr. Dixon received his B.S. (1973), M.S. (1974), and Ph.D. (1977) in forest biometrics at Colorado State University. He has worked on the development of tree growth models throughout most of his career. He joined the Forest Management Staff in 1982 and has worked with the model now known as the Forest Vegetation Simulator since that time. He retired from the Forest Service in 2008 but still actively participates in FVS development.

**Acknowledgements**

I would like to thank all those people that con­tributed to the preparation of this manual. Several colleagues have provided excellent technical reviews. In particular, I would like to thank Al Stage, Dennis Ferguson, Bill Wykoff, Nick Crookston, Bob Monserud, Michael Van Dyck, and Drew McMahan for their thorough and thoughtful suggestions.

I would like to thank the authors, whose words appear here, for allowing the reproduction of their work in this document.

I would like to thank colleagues at the Forestry Sciences Lab in Moscow, Idaho, and the Forest Management Service Center in Fort Collins, Colorado, for contributing to the continued develop­ment, testing, and support of the FVS software system.

And finally I would like to thank the many FVS users that have provided feedback and suggestions for improving the model.

Without the help of all these people, FVS would not be the powerful system that it is today.

**About this Guide**

This document is meant to update and enhance the set of General Technical Reports and Research Papers published by the Intermountain and the Rocky Mountain Research Stations, and other reference material relating to the Forest Vegetation Simulator. It is intended to bring together the essential parts of those documents, update certain portions, and serve as a basic reference for the general FVS user. This document contains portions of these publications verbatim. The original set of publications should still serve as the main technical reference for this model.

**How to use this Guide**

Anyone reading this document should also have the “Keyword Reference Guide for the Forest Vegetation Simulator” at hand. This can be downloaded from the Forest Management Service Center’s web site. When a keyword is mentioned in this document, it should be looked up in the keyword guide for a detailed discussion of the parameter fields and other explanatory notes. Any references in this document to the “Keyword Guide” are referencing this document.

Users should also obtain the FVS overview document for the variant specific to their geographic area from the same web site. With those two documents, plus this one, users should have a good start towards understanding and running FVS.

Users wanting to interact with FVS using a graphical user interface should obtain that software along with the “exercise guide” pertaining to their geographic area. These products are also available from the FMSC web site.

**Foreword**

The following discussion briefly chronicles the development of the Forest Vegetation Simulator (FVS). To credit everyone that contributed to program development would require much more than the available space—we apologize for the omissions. The intent, however, is to portray the vision, the cooperation, and the commitment of time and energy that are required to develop and gain acceptance for a large-scale forest management tool. FVS, and the suite of tools that support it, are the products of hundreds of contributors over a 30-year period. At present, there are more than 20 variants that represent conditions in a majority of forestlands in the United States. FVS is descended from the Prognosis Model, which was conceived by Al Stage (1973) and developed for forest conditions in the northern Rocky Mountains by Stage’s Research Work Unit within the USDA Forest Service Intermountain Research Station. Stage envisioned a stand-oriented forest growth projection system that was closely tied to a forest inventory system and could accommodate nearly any factor that might influence stand development. The first production version of Prognosis (Wykoff, Stage, and Crookston 1982) was limited to existing trees, and included models that predicted large-tree height and diameter increment, small-tree height and diameter increment, tree mortality, and crown change. This version incorporated a wide range of management options, but these options were more-or-less limited to different schemes for harvesting trees.

Stage provided overall direction for Prognosis development and also designed and fit the large-tree height growth models (Stage 1975). Dave Hamilton, Jr. led the effort to develop mortality models (Hamilton and Edwards 1976) and Chuck Hatch (University of Idaho) developed the crown change model (Hatch 1980). Bill Wykoff developed small-tree growth models and the large-tree diameter increment model (Wykoff 1983), and was responsible for managing code development and designing the thinning algorithms. Nick Crookston was responsible for much of the computer coding and designed the keyword system that controls the input of program options. This version of the Prognosis Model represented the 11 commercial species and most of the growing conditions that occur on forests in western Montana, northern Idaho, and eastern Washington. It also permitted thinning simulations with a broad array of tree removal strategies.

Before the first public release of Prognosis, work was already underway to expand the model’s capabilities. Dennis Ferguson led the development of a regeneration establishment model (Ferguson, Stage, and Boyd 1986; Ferguson and Crookston 1984), which permitted simulation of regeneration treatments. Melinda Moeur (1985) produced models that predicted shrub development and also provided descriptions of the vertical distribution of tree and shrub canopies. Nick Crookston and others (Crookston, Roelke, Burnell, and Stage 1978) developed the Mountain Pine Beetle Model, and Bob Monserud and Nick Crookston (Monserud and Crookston 1982) linked the Douglas-fir Tussock Moth Model to Prognosis. Crookston also developed the Event Monitor (Crookston 1985), which allowed management activities to be scheduled conditional on the level of virtually any state variable within the Prognosis system. The Event Monitor paved the way for the Parallel Processing Extension (Crookston and Stage 1991), which permitted the simultaneous projection of multiple stands, with treatments scheduled in accord with broad management policies. Scientists at the University of Idaho also contributed to Prognosis improvements. Cooperative studies provided data for the Regeneration Establishment Model, the small-tree growth models, and the shrub and cover models. In addition, Lee Medema and Chuck Hatch developed CHEAPO (Medema and Hatch 1982), which provided for economic evaluation of management alternatives.

Although Al Stage retired in 1994, he remained an active participant in Prognosis development until his death in 2008. The group he long directed continued development of Prognosis for the northern Rocky Mountains. More recent developments included extensions for western spruce budworm, mountain pine beetle, western root diseases, dwarf mistletoe, fire effects, and white pine blister rust. Growth models have been continually refined (Wykoff 1990; Hamilton 1986, 1990, Stage and Wykoff 1998), the Regeneration Establishment Model was revised to include a broader range of habitat types (Ferguson and Carlson 1993), CHEAPO was revised (Horn, Medema, and Schuster 1986), and the capabilities of the Event Monitor were greatly expanded (Crookston 1990).

Work to expand Prognosis to other geographic areas also began before the first public release of Prognosis. Ralph Johnson was hired as a mensurationist with the USDA Forest Service Northern Region in 1978, and worked closely with the Moscow team to develop a Prognosis variant for eastern Montana. Nelson Loftus, Richard Fitzgerald, and Carl Purri, all worked for National Forest System (NFS) Timber Management in the Washington Office (WO) and had visions of a national framework for growth and yield modeling. Doyle Turman who led a detached WO NFS Timber Management group in Fort Collins, Colorado, began implementing this vision. Dan Schroeder was a silviculturist working for Turman and teamed up with Johnson in 1981 to produce the Tetons variant of Prognosis. In 1982, Turman hired Gary Dixon for growth modeling biometric expertise and to handle the computer programming side of the growth and yield effort. Johnson, Schroeder, and Dixon propagated Prognosis variants throughout the western United States beginning with the Utah variant in 1982. Ralph Johnson moved from the Northern Region, joining Schroeder and Dixon at the WO detached Timber Management unit in Fort Collins, Colorado in 1985. Johnson continued to focus on the extension of Prognosis methodology to new forest types—fitting diameter and height growth equations to new geographic areas. Schroeder was instrumental in testing and validating new Prognosis variants, and working with Forest Planners using Prognosis. Dixon was instrumental in developing models for new variants and worked with the Moscow group to assure that code was consistent between variants. Gary developed the mortality models and crown ratio change models based on Stand Density Index that are used in many variants, and provided support for National Forest System users that accessed the program through Forest Service mainframe computer systems.

The USDA Forest Service Method Applications Group at Fort Collins, which evolved into the Forest Health Technology Enterprise Team (FHTET), was instrumental in development and integration of pest population models. FHTET assumed responsibility for the insect and pathogen extensions in the mid-1980’s. ESSA Technologies LTD, Vancouver, Canada, was also an important contributor to many of the insect, pathogen, and fire modeling efforts.

In the 1990’s, development of Prognosis was strongly influenced by the growing accessibility and computing power of personal computers. Wykoff ported Prognosis code to the personal computer and then worked with Dixon and Crookston to standardize program code and performance across computer platforms. This effort simplified maintenance of the growing number of variants. Along with increased program availability came an expanding user base and a growing need to provide user training and improve user access. The FMSC expanded to meet user’s needs, and also developed many pre- and post-processors to prepare data for simulations and assist in the interpretation of outputs. Richard Teck was added to support the training program and provide user assistance; Renate Bush joined the group to support development of variants for the eastern United States; and Dennis Donnelly fit variants for the Pacific Northwest Coastal Forests, and the Southern Region (R8).

The Fort Collins detached WO Timber Management Unit evolved into the Forest Management Service Center (FMSC), with national responsibility to provide computer support for forest management activities. Although most of the people have changed, the FMSC remains fully staffed to support FVS efforts. FMSC staff provides model training workshops, hot-line user support, special project assistance, software distribution, model calibration to new geographic areas, linkages to other corporate software, and general model maintenance, support, and enhancement.

Also in the 1990’s, the emphasis of forest management subtly shifted from a product orientation to an ecosystem management orientation. Prognosis was renamed the Forest Vegetation Simulator to recognize that the framework supported models developed in other regions such as TWIGS (Miner, Walters, and Belli 1988) and GENGYM (Edminster et al. 1991). The name change also reflects linkages to other ecosystem factors such as pest populations and fire, and emphasizes the model’s utility for predicting tree and stand development, including development of some subordinate vegetation, regardless of the management objective. Crookston developed a graphical user interface, Suppose (Crookston 1997), which greatly simplified the preparation of FVS simulations. Bob McGaughey (USDA Forest Service, PNW Research Station) developed a stand visualization system (McGaughey 1997) that provides detailed pictorial characterizations for any stand inventory. SVS has been linked to FVS to provide visual descriptions of stand simulations.

FVS continues to evolve today with efforts underway to model fire effects, represent spatial variability in stocking, and incorporate growth processes. It has linkages to corporate software including databases, geographic information systems, and the National Volume Estimator Library. FVS is a strong and living testament to the value of vision, focus, and long-term commitment to cooperative research and dedicated technology transfer.

William R. Wykoff
Gary E. Dixon
**Approximate FVS variant development timeline**

The following table presents a timeline to document when individual FVS variants were released for production field use in the United States. All variants except for the North Idaho variant were developed and released by the Forest Management Service Center. Also, all variants have been upgraded as new data became available and improved modeling technologies evolved.

| **Year** | **Variant released for production use:** |
| --- | --- |
| 1981 | North Idaho (NI) (retired in 2011 after release of the Inland Empire variant) |
| 1981 | Eastern Montana (EM) (upgraded to 19 species in 2009) |
| 1982 | Tetons (TT) (upgraded to 18 species in 2010) |
| 1983 | Utah (UT) (upgraded to 24 species in 2010) |
| 1984 | Southern Oregon / Northeast California (SO) (upgraded to 33 species in 2005) |
| 1985 | Southeast Alaska / Coastal British Columbia (AK) (replaced in 2021) |
| 1986 | Blue Mountains (BM) (upgraded to 18 species in 2009) |
| 1987 | Western Sierras (WS) (upgraded to 43 species in 2011) |
| 1987 | East Cascades (EC) (upgraded to 32 species in 2012) |
| 1988 | Central Idaho (CI) (upgraded to 19 species in 2011) |
| 1989 | Klamath Mountains (NC) (upgraded to 12 species in 2021) |
| 1990 | Central Rockies (CR) (upgraded to 38 species in 2009) |
| 1992 | West Cascades (WC) |
| 1993 | Lake States (LS), Central States (CS) |
| 1994 | Kootenai / Kaniksu / Tally Lake (KT) |
| 1995 | Pacific Northwest Coast (PN), Northeast (NE) |
| 1996 | Southeast (SE) (retired after the release of the Southern variant in 2001) |
| 1998 | Inland California / Southern Cascades (CA) (upgraded to 50 species in 2021) |
| 2001 | Southern (SN) |
| 2003 | Inland Empire (IE) (North Idaho expanded to 23 species) |
| 2021 | Alaska (AK) (replaced Southeast Alaska / Coastal BC version of AK) |

The Central Rockies variant was originally released as five separate variants; one for each of the GENGYM (Edminster et al. 1991) model types. It was later condensed into one variant with model type as one of the input parameters.

Some variants were developed that never made it into production use. These include a variant for the Nezperce National Forest in the late 1970’s or early 1980’s; a variant for Central Idaho developed by the University of Idaho in 1982 (this variant was unique in that it read in all model coefficients from an external file); a variant for longleaf pine around 1985, and an initial version of the Northeast variant in 1991. A variant for the Ozarks was in the initial development stages around 1995, but these plans were abandoned in favor of the Southern variant development.

New development efforts are continuously underway. As these efforts are put into production they will be added to the information above.

Essential FVS:
A User’s Guide to the Forest Vegetation Simulator

|  |  |
| --- | --- |
| **Compiled By:** | |
| **Gary E. Dixon (retired)** USDA Forest Service Forest Management Service Center 2150 Centre Ave., Bldg A, Ste 341a Fort Collins, CO 80526 | |
|  | |
| **Contributors** | |
| **Albert R. Stage (deceased)** USDA Forest Service 1221 South Main Moscow, ID 83843 | **Dennis Feguson (retired)** USDA Forest Service 1221 South Main Moscow, ID 83843 |
| **Nicholas L. Crookston (retired)** USDA Forest Service 1221 South Main Moscow, ID 83843 | **William R. Wykoff (retired)** USDA Forest Service 1221 South Main Moscow, ID 83843 |
| **Robert A. Monserud (retired)** USDA Forest Service 1221 SW Yamhill, Ste 200 Portland, OR 97205 | **David A. Hamilton Jr. (retired)** USDA Forest Service 1221 South Main Moscow, ID 83843 |
| **Melinda Moeur (retired)** USDA Forest Service 333 SW 1st Avenue Portland, OR 97208 |  |

# Table of Contents

[Table of Contents 2](#_Toc232072768)

[Keyword Index 7](#_Toc232072769)

[1.0 Introduction 13](#_Toc232072770)

[2.0 General System Overview 15](#_Toc232072771)

[2.1 FVS Related Terms 15](#_Toc232072772)

[2.2 The FVS Graphical User Interface 16](#_Toc232072773)

[2.2.1 Using the FVS GUI 17](#_Toc232072774)

[2.2.2 Inputs and Outputs 18](#_Toc232072775)

[3.0 General FVS Overview 19](#_Toc232072776)

[3.1 FVS Basic Description 19](#_Toc232072777)

[3.2 Design Criteria for FVS Development 20](#_Toc232072778)

[3.3 General Data Requirements 21](#_Toc232072779)

[3.4 General FVS Processing Sequence 22](#_Toc232072780)

[4.0 Basic Concepts 25](#_Toc232072781)

[4.1 The Keyword System 25](#_Toc232072782)

[4.1.1 Rules For Coding Keyword Records 28](#_Toc232072783)

[4.1.2 Keywords to Describe the Stand and Sampling Design 28](#_Toc232072784)

[4.1.2.1 Labeling the Output Tables 28](#_Toc232072785)

[4.1.2.2 Describing the Site on Which the Stand is Located 29](#_Toc232072786)

[4.1.2.3 Specifying the Sampling Information 31](#_Toc232072787)

[4.1.3 Keywords to Control Program Execution 33](#_Toc232072788)

[4.1.3.1 Controlling the Simulation Length and Cycle Intervals 33](#_Toc232072789)

[4.1.3.2 Documenting the Keyword Set 35](#_Toc232072790)

[4.1.3.3 Starting and Stopping a Simulation 36](#_Toc232072791)

[4.2 Getting the Data into FVS 36](#_Toc232072792)

[4.2.1 Sample Tree Data Description 37](#_Toc232072793)

[4.2.2 Tree Records and Default Format 44](#_Toc232072794)

[4.2.2.1 Tree Input Data Records in Database Format 44](#_Toc232072795)

[4.2.2.2 Tree Input Data Records in Text Format 45](#_Toc232072796)

[4.2.2.3 Stand Input Data Records 47](#_Toc232072797)

[4.2.3 Keywords Controlling Data Input 49](#_Toc232072798)

[4.2.3.1 Reading the Tree Input Data Records 49](#_Toc232072799)

[4.2.3.2 Changing the Data Format Specification 52](#_Toc232072800)

[4.2.3.3 Changing the Species Codes 52](#_Toc232072801)

[4.2.3.4 Interpreting Growth Increment Data 53](#_Toc232072802)

[4.2.4 Special Input Features 54](#_Toc232072803)

[4.2.5 Defining Species Groups 55](#_Toc232072804)

[4.2.6 Setting the Point Reference for a Simulation 56](#_Toc232072805)

[4.2.7 Defining Point Groups 57](#_Toc232072806)

[4.3 Interpreting FVS Model Output 58](#_Toc232072807)

[4.3.1 The Main FVS Output File 60](#_Toc232072808)

[4.3.1.1 The Input Summary Table 70](#_Toc232072809)

[4.3.1.1.1 Program Options Section 70](#_Toc232072810)

[4.3.1.1.2 Activity Schedule Section 71](#_Toc232072811)

[4.3.1.1.3 Calibration Statistics Section 71](#_Toc232072812)

[4.3.1.2 The Stand Composition Table 73](#_Toc232072813)

[4.3.1.3 The Tree and Stand Attributes Table 75](#_Toc232072814)

[4.3.1.4 The Summary Statistics Table 76](#_Toc232072815)

[4.3.1.4.1 Summary Statistics Section 76](#_Toc232072816)

[4.3.1.4.2 Activity Summary Section 76](#_Toc232072817)

[4.3.1.5 The Regeneration Summary Tables 76](#_Toc232072818)

[4.3.2 Optional Output Tables 77](#_Toc232072819)

[4.3.2.1 The Statistical Summary Table 77](#_Toc232072820)

[4.3.2.2 The Structural Statistics Table 77](#_Toc232072821)

[4.3.2.3 Outputs from Extensions 79](#_Toc232072822)

[4.3.3 Optional Output Files 80](#_Toc232072823)

[4.3.3.1 The Tree List Output File 80](#_Toc232072824)

[4.3.3.2 The Echoed Summary Output File 83](#_Toc232072825)

[4.3.3.3 The Calibration Statistics File 84](#_Toc232072826)

[4.3.3.4 The Stand Visualization File 85](#_Toc232072827)

[4.3.3.5 The FVSSTAND File 86](#_Toc232072828)

[4.3.4 Keywords Related to the Main Output File 86](#_Toc232072829)

[4.4 How Graphical User Interfaces Relate to this Section 86](#_Toc232072830)

[5.0 Intermediate Concepts 88](#_Toc232072831)

[5.1 Timing of Management Options 88](#_Toc232072832)

[5.1.1 Setting the Stage (INVYEAR revisited) 88](#_Toc232072833)

[5.1.2 Timing the Events (NUMCYCLE and TIMEINT revisited) 89](#_Toc232072834)

[5.2 Simulating Stand Management 90](#_Toc232072835)

[5.2.1 Specifying Minimum Harvest Levels 90](#_Toc232072836)

[5.2.2 Cutting Efficiency 90](#_Toc232072837)

[5.2.3 Thinning To Remove Specific Trees Or Classes Of Trees 91](#_Toc232072838)

[5.2.3.1 Prescription Thinning 91](#_Toc232072839)

[5.2.3.2 Diameter Limit Thinning 91](#_Toc232072840)

[5.2.3.3 Height Limit Thinning 92](#_Toc232072841)

[5.2.3.4 Mistletoe Sanitation Thinning 93](#_Toc232072842)

[5.2.4 Thinning To Control Stand Density 93](#_Toc232072843)

[5.2.4.1 Computing Removal Priority 93](#_Toc232072844)

[5.2.4.2 Specifying Thinning Method and Target Density 94](#_Toc232072845)

[5.2.4.2.1 Thinning From Above or Below to a Trees per Acre or Basal Area Target 95](#_Toc232072846)

[5.2.4.2.2 Thinning to a Stand Density Index Target 95](#_Toc232072847)

[5.2.4.2.3 Thinning to a Percent Canopy Cover Target 96](#_Toc232072848)

[5.2.4.2.4 Thinning to a Relative Density Target 97](#_Toc232072849)

[5.2.4.2.5 Thinning Using a Q-Factor Approach 99](#_Toc232072850)

[5.2.4.3 Point Density Control or Group Selection 99](#_Toc232072851)

[5.2.4.4 Automatic Stand Density Control 101](#_Toc232072852)

[5.2.5 Yarding Losses 101](#_Toc232072853)

[5.2.6 Pruning 101](#_Toc232072854)

[5.2.7 Management Activities in the FVS GUI 102](#_Toc232072855)

[5.3 Modifying Calculations 102](#_Toc232072856)

[5.3.1 Modifying Volume Calculations 102](#_Toc232072857)

[5.3.1.1 Changing Volume Equations and Merchantability Limits 103](#_Toc232072858)

[5.3.1.2 Entering Form and Defect Correction Factors 103](#_Toc232072859)

[5.3.1.3 FIA Volume, Biomass, and Carbon Computation Methods 104](#_Toc232072860)

[5.3.2 Modifying Crown Width Calculations 105](#_Toc232072861)

[5.4 Simulating Regeneration 106](#_Toc232072862)

[5.4.1 Regeneration Model Concepts 106](#_Toc232072863)

[5.4.1.1 Stump Sprouts 108](#_Toc232072864)

[5.4.1.2 Data Requirement and Inventory Considerations 108](#_Toc232072865)

[5.4.2 Full Establishment Model Concepts 109](#_Toc232072866)

[5.4.2.1 Automatic Tallies 110](#_Toc232072867)

[5.4.2.2 Ingrowth 110](#_Toc232072868)

[5.4.3 Regeneration Establishment Model Keywords 111](#_Toc232072869)

[5.4.3.1 Establishment Keywords for Silvicultural Prescriptions 111](#_Toc232072870)

[5.4.3.1.1 Specifying Site Preparation Treatments 111](#_Toc232072871)

[5.4.3.1.2 Specifying Trees to be Planted 112](#_Toc232072872)

[5.4.3.1.3 Resetting the Stand Age Following Harvesting 112](#_Toc232072873)

[5.4.3.1.4 Entering Plot Level Descriptor Variables 112](#_Toc232072874)

[5.4.3.1.5 Simulating Budworm Defoliation Damage on Seedlings 112](#_Toc232072875)

[5.4.3.1.6 Scheduling a Tally Sequence 113](#_Toc232072876)

[5.4.3.1.7 Passing All Acceptable Trees 113](#_Toc232072877)

[5.4.3.1.8 What if the Inventory did not Include Small Trees 114](#_Toc232072878)

[5.4.3.2 Establishment Keywords for Modifying Predictions 114](#_Toc232072879)

[5.4.3.2.1 Adjusting the Height of Individual Seedlings 114](#_Toc232072880)

[5.4.3.2.2 Adjusting the Probability of Stocking 114](#_Toc232072881)

[5.4.3.2.3 Adjusting the Species Occurrence 115](#_Toc232072882)

[5.4.3.2.4 Turning Features of the Regeneration Establishment Model On/Off 115](#_Toc232072883)

[5.4.3.2.5 Automatic Regeneration Tallies Following Thinning 115](#_Toc232072884)

[5.4.3.2.6 Changing the Random Number Sequence 115](#_Toc232072885)

[5.4.3.2.7 Changing the Number of Regeneration Plots 116](#_Toc232072886)

[5.4.3.3 Establishment Keyword for Controlling Model Output 116](#_Toc232072887)

[5.4.4 Interpreting Regeneration Model Output 117](#_Toc232072888)

[5.4.5 Simulating Natural Regeneration using the Partial Establishment Model 118](#_Toc232072889)

[5.5 Conditionally Scheduling Activities 119](#_Toc232072890)

[5.5.1 Basic Event Monitor Use 119](#_Toc232072891)

[5.5.1.1 Waiting Time for Activity Scheduling 120](#_Toc232072892)

[5.5.1.2 Example Event Monitor Sequence 120](#_Toc232072893)

[5.5.2 Event Monitor Rules 120](#_Toc232072894)

[5.5.2.1 When is the Event Monitor Called 121](#_Toc232072895)

[5.5.2.2 Pre-Defined Event Monitor Variables and Functions 121](#_Toc232072896)

[5.5.2.3 Rules for Coding Expressions 144](#_Toc232072897)

[5.6 Creating Custom Output Variables 145](#_Toc232072898)

[5.6.1 Writing Custom Variables to a Database 147](#_Toc232072899)

[5.7 Generating a Stand Visualization 147](#_Toc232072900)

[5.8 Generating Graphs, Charts, and Custom Output Tables 148](#_Toc232072901)

[6.0 Advanced Concepts 149](#_Toc232072902)

[6.1 Defining Keyword Parameter Using Variables or Expressions 149](#_Toc232072903)

[6.2 Simulating Natural Regeneration with the Partial Establishment Model 151](#_Toc232072904)

[6.3 Defining Stand Targets on FVS Thinning Keywords 151](#_Toc232072905)

[6.4 Calibration and Randomization 153](#_Toc232072906)

[6.4.1 Calculation of Scale Factors 153](#_Toc232072907)

[6.4.2 Randomization 155](#_Toc232072908)

[6.5 Defining and Using Model Multipliers 158](#_Toc232072909)

[6.5.1 FVS Component Models 158](#_Toc232072910)

[6.5.2 Types of FVS Multipliers 159](#_Toc232072911)

[6.5.2.1 Multipliers Computed Automatically by the Model 159](#_Toc232072912)

[6.5.2.2 Multipliers Applied Before Calibration 160](#_Toc232072913)

[6.5.2.3 Multipliers that Alter Regeneration 160](#_Toc232072914)

[6.5.2.4 Multipliers Applied After Calibration 160](#_Toc232072915)

[6.5.3 How to Determine Multiplier Values 163](#_Toc232072916)

[6.5.4 Reusing Multiplier Values in Multi-stand Projections 164](#_Toc232072917)

[6.5.5 Setting Morphological Limits for Maximum Tree Size 164](#_Toc232072918)

[6.6 Defining and Using Policy Labels 164](#_Toc232072919)

[6.6.1 The Activity Group Policy Label 165](#_Toc232072920)

[6.6.2 The Stand Policy Label 167](#_Toc232072921)

[6.6.3 How to Enter Policy Labels Using an FVS GUI 170](#_Toc232072922)

[6.7 Simulating the Effects of Climate Change 170](#_Toc232072923)

[6.7.1 Changing the Site Potential Through Time 170](#_Toc232072924)

[6.7.2 Changing Mortality and Growth Rates 171](#_Toc232072925)

[7.0 Internal Model Components 172](#_Toc232072926)

[7.1 Backdating the Stand 172](#_Toc232072927)

[7.1.1 Backdating Diameters 172](#_Toc232072928)

[7.1.2 Stand Density Statistics 173](#_Toc232072929)

[7.1.3 Filling In Missing Data Values 174](#_Toc232072930)

[7.1.3.1 Filling in Missing Heights 174](#_Toc232072931)

[7.1.3.2 Filling in Missing Crown Ratios 175](#_Toc232072932)

[7.2 Calculation of Scale Factors 175](#_Toc232072933)

[7.2.1 The Large-tree Diameter Increment Model 176](#_Toc232072934)

[7.2.2 The Small-tree Height Increment Model 178](#_Toc232072935)

[7.3 Predicting Mortality Rates 181](#_Toc232072936)

[7.3.1 The Prognosis Type Mortality Model 181](#_Toc232072937)

[7.3.1.1 The Individual Tree Equation 181](#_Toc232072938)

[7.3.1.2 Approach to Maximum Basal Area Equation 182](#_Toc232072939)

[7.3.1.3 Combining the Mortality Rate Estimates 182](#_Toc232072940)

[7.3.1.4 Model Behavior 182](#_Toc232072941)

[7.3.2 The SDI-Based Mortality Model 183](#_Toc232072942)

[7.3.2.1 Determining the Number of Mortality Trees 183](#_Toc232072943)

[7.3.2.2 Dispersing Mortality to Individual Tree Records 185](#_Toc232072944)

[7.3.2.3 Mortality in Over Mature Stands 186](#_Toc232072945)

[7.3.3 The TWIGS-Based Mortality Models 186](#_Toc232072946)

[7.3.4 SDI Computation Methods and How They Compare 187](#_Toc232072947)

[7.4 Changes in Crown Ratio 187](#_Toc232072948)

[7.4.1 The Prognosis Crown Model 188](#_Toc232072949)

[7.4.2 The Weibull-based Crown Model 189](#_Toc232072950)

[7.4.3 Crown Models from Other Modeling Systems 189](#_Toc232072951)

[7.5 Serial Correlation of Diameter Growth Rates 189](#_Toc232072952)

[7.6 Tree Record Compression 190](#_Toc232072953)

[8.0 FVS Extensions 192](#_Toc232072954)

[8.1 The Cover Extension 192](#_Toc232072955)

[8.2 The Fire and Fuels Extension 192](#_Toc232072956)

[8.2.1 Special Considerations using FFE Variables with the Event Monitor 193](#_Toc232072957)

[8.3 Dwarf Mistletoe 195](#_Toc232072958)

[8.4 Root Disease 196](#_Toc232072959)

[8.5 Blister Rust 197](#_Toc232072960)

[8.6 Bark Beetles 197](#_Toc232072961)

[8.6.1 Douglas-fir Beetle 197](#_Toc232072962)

[8.6.2 Mountain Pine Beetle 198](#_Toc232072963)

[8.6.3 Westwide Pine Beetle Model 198](#_Toc232072964)

[8.6.4 Southern Pine Beetle 199](#_Toc232072965)

[8.7 Tussock Moth 199](#_Toc232072966)

[8.8 Budworm 199](#_Toc232072967)

[8.9 Climate Change 200](#_Toc232072968)

[8.10 Economics Models 201](#_Toc232072969)

[8.11 Database Extension 201](#_Toc232072970)

[8.12 Parallel Processing Extension 201](#_Toc232072971)

[8.13 Other Extensions 202](#_Toc232072972)

[8.13.1 Oak Decline 202](#_Toc232072973)

[8.13.2 Gypsy Moth 202](#_Toc232072974)

[9.0 Common Problems, Their Cause, and Solutions 203](#_Toc232072975)

[9.1 FVS Error and Warning Messages 203](#_Toc232072976)

[9.2 Other Common Mistakes 222](#_Toc232072977)

[9.3 Forest Vegetation Simulator Problem Determination 223](#_Toc232072978)

[10.0 Literature Cited 225](#_Toc232072979)

[Appendix A 235](#_Toc232072980)

[Appendix B 237](#_Toc232072981)

## Keyword Index

| **Keyword** | **Primary Section Referenced** | **Page Number** |
| --- | --- | --- |
| ADDFILE | 4.2.4 | 54 |
| AGPLABEL | 6.6.1 | 165 |
| ATRTLIST | 4.3.3.1 | 80 |
| BAIMULT | 6.5.2.4 | 160 |
| BAMAX | 6.5.2.4 | 163 |
| BFDEFECT | 5.3.1.2 | 103 |
| BFFDLN | 5.3.1.2 | 103 |
| BFVOLUME | 5.3.1.1 | 103 |
| BRUST | 8.5 | 197 |
| CALBSTAT | 4.3.3.3, 6.4.1 | 84,154 |
| CCADJ | 4.3.2.2 | 78 |
| CHEAPO | 8.10 | 201 |
| CLIMATE | 8.9 | 200 |
| CLOSE | 4.2.4 | 55 |
| COMMENT | 4.1.3.2 | 35 |
| COMPRESS | 7.6 | 190 |
| COMPUTE | 5.6 | 145 |
| COVER | 8.1 | 192 |
| CRNMULT | 6.5.2.4 | 160 |
| CUTEFF | 5.2.2 | 90 |
| CUTLIST | 4.3.3.1 | 80 |
| CWEQN | 5.3.2 | 105 |
| CYCLEAT | 4.1.3.1 | 34, 89 |
| DATABASE | 8.11 | 201 |
| DATASCRN | 4.2.3.1 | 51 |
| DEBUG | 9.3 | 223 |
| DEFECT | 5.3.1.2 | 103 |
| DELOTAB | 4.3.4 | 86 |
| DESIGN | 4.1.2.3 | 32 |
| DFB | 8.6.1 | 198 |
| DFTM | 8.7 | 199 |
| DGSTDEV | 6.4.2 | 157 |
| ECHO | 4.2.4, 4.3.1.1.1, 4.3.4 | 55, 70, 86 |
| ECHOSUM | 4.3.3.2 | 83 |
| ECON | 8.10 | 201 |
| END | 4.1.3.2, 5.4.3, 5.6 | 35, 111, 146 |
| ENDFILE | 4.2.4 | 55 |
| ENDIF | 5.5.1 | 119 |
| ESTAB | 5.4.3 | 111 |
| FERTILIZ | 6.5.2.4 | 161 |
| FIAVBC | 5.3.1.3 | 104 |
| FIXCW | 6.5.2.4 | 161 |
| FIXDG | 6.5.2.4 | 161 |
| FIXHTG | 6.5.2.4 | 161 |
| FIXMORT | 6.5.2.4 | 161 |
| FMIN | 8.2 | 193 |
| FVSSTAND | 4.2.3.4, 4.3.3.5 | 54, 86 |
| GROWTH | 4.2.3.4 | 53 |
| HTGMULT | 6.5.2.4 | 160 |
| HTGSTOP | 6.5.2.4 | 161 |
| IF | 5.5.1 | 119 |
| INVYEAR | 4.1.2.3, 5.1.1 | 31, 88 |
| LOCATE | 4.1.2.2 | 31 |
| MANAGED | 4.1.2.2 | 31 |
| MCDEFECT | 5.3.1.2 | 103 |
| MCFDLN | 5.3.1.2 | 103 |
| MGMTID | 4.1.2.1 | 29 |
| MINHARV | 5.2.1 | 90 |
| MISTOE | 8.3 | 195 |
| MISTPREF | 5.2.4.1 | 94 |
| MODTYPE | 4.1.2.2 | 31 |
| MORTMSB | 7.3.2.3 | 186 |
| MORTMULT | 6.5.2.4 | 160 |
| MPB | 8.6.2 | 198 |
| NOAUTOES | 5.4.3.2.4 | 115 |
| NOCALIB | 6.4.1, 6.5.2.1 | 154, 159 |
| NODEBUG | 9.3 | 224 |
| NOECHO | 4.2.4, 4.3.1.1.1, 4.3.4 | 55, 70, 86 |
| NOHTDREG | 7.1.3.1 | 175 |
| NOSCREEN | 4.3.4 | 86 |
| NOSUM | 4.3.4 | 86 |
| NOTREES | 4.2 | 36 |
| NOTRIPLE | 6.4.2 | 156 |
| NUMCYCLE | 4.1.3.1, 5.1.2 | 33, 89 |
| NUMTRIP | 6.4.2 | 156 |
| OPEN | 4.2.3.1 | 50 |
| POINTGRP | 4.2.7 | 57 |
| POINTREF | 4.2.6 | 57 |
| PRMFROST | 4.1.2.2 | 31 |
| PROCESS | 4.1.3.3 | 36 |
| PRUNE | 5.2.6 | 101 |
| RANNSEED | 6.4.2 | 157 |
| RDIN | 8.4 | 196 |
| READCORD | 6.5.2.2 | 160 |
| READCORH | 6.5.2.2 | 160 |
| READCORR | 6.5.2.2 | 160 |
| REGDMULT | 6.5.2.4 | 160 |
| REGHMULT | 6.5.2.4 | 160 |
| RESETAGE | 5.4.3.1.3 | 112 |
| REUSCORD | 6.5.4 | 164 |
| REUSCORH | 6.5.4 | 164 |
| REUSCORR | 6.5.4 | 164 |
| REWIND | 4.2.4 | 55 |
| SCREEN | 4.3.4 | 86 |
| SDICALC | 7.3.4 | 187 |
| SDIMAX | 6.5.2.4 | 163 |
| SERLCORR | 7.5 | 190 |
| SETPTHIN | 5.2.4.3 | 100 |
| SETSITE | 6.7.1 | 171 |
| SITECODE | 4.1.2.2 | 30 |
| SPCODES | 4.2.3.3 | 52 |
| SPECPREF | 5.2.4.1 | 94 |
| SPGROUP | 4.2.5 | 56 |
| SPLABEL | 6.6.2 | 167 |
| SPLEAVE | 5.2.4.1 | 94 |
| STANDCN | 4.1.2.1 | 29 |
| STATS | 4.3.2.1 | 77 |
| STDIDENT | 4.1.2.1 | 28 |
| STDINFO | 4.1.2.2 | 29 |
| STOP | 4.1.3.3 | 36 |
| STRCLASS | 4.3.2.2 | 78 |
| SVS | 5.7 | 147 |
| TCONDMLT | 5.2.4.1 | 94 |
| TFIXAREA | 4.1.2.3 | 33 |
| THEN | 5.5.1 | 119 |
| THINABA | 5.2.4.2.1 | 95 |
| THINATA | 5.2.4.2.1 | 95 |
| THINAUTO | 5.2.4.4 | 101 |
| THINBBA | 5.2.4.2.1 | 95 |
| THINBTA | 5.2.4.2.1 | 95 |
| THINCC | 5.2.4.2.3 | 96 |
| THINDBH | 5.2.3.2 | 91 |
| THINHT | 5.2.3.3 | 92 |
| THINMIST | 5.2.3.4 | 93 |
| THINPRSC | 5.2.3.1 | 91 |
| THINPT | 5.2.4.3 | 100 |
| THINQFA | 5.2.4.2.5 | 99 |
| THINRDEN | 5.2.4.2.4 | 97 |
| THINRDSL | 5.2.4.2.4 | 97 |
| THINSDI | 5.2.4.2.2 | 95 |
| TIMEINT | 4.1.3.1, 5.1.2 | 33, 89 |
| TOPKILL | 6.5.2.4 | 161 |
| TREEDATA | 4.2.3.1 | 49 |
| TREEFMT | 4.2.3.2 | 52 |
| TREELIST | 4.3.3.1 | 80 |
| TREESZCP | 6.5.5 | 164 |
| VOLEQNUM | 5.3.1.1 | 103 |
| VOLUME | 5.3.1.1 | 103 |
| WSBW | 8.8 | 200 |
| YARDLOSS | 5.2.5 | 101 |

**Regeneration Establishment Model Keywords**

| **Keyword** | **Primary Section Referenced** | **Page Number** |
| --- | --- | --- |
| AUTALLY | 5.4.3.2.4 | 115 |
| BUDWORM | 5.4.3.1.5 | 112 |
| BURNPREP | 5.4.3.1.1 | 111 |
| END | 5.4.3 | 111 |
| ESTAB | 5.4.3 | 111 |
| EZCRUISE | 5.4.3.1.8 | 114 |
| HABGROUP | 5.4.3.3 | 116 |
| HTADJ | 5.4.3.2.1, 6.5.2.3 | 114, 160 |
| INGROW | 5.4.3.2.4 | 115 |
| MECHPREP | 5.4.3.1.1 | 111 |
| MINPLOTS | 5.4.3.2.7 | 116 |
| NATURAL | 5.4.3.1.2 | 112 |
| NOAUTALY | 5.4.3.2.4 | 115 |
| NOINGROW | 5.4.3.2.4 | 115 |
| NOSPROUT | 5.4.3.2.4 | 115 |
| OUTPUT | 5.4.3.3 | 116 |
| PASSALL | 5.4.3.1.7 | 114 |
| PLANT | 5.4.3.1.2 | 112 |
| PLOTINFO | 5.4.3.1.4 | 112 |
| RANNSEED | 5.4.3.2.6 | 116 |
| RESETAGE | 5.4.3.1.3 | 112 |
| SPECMULT | 5.4.3.2.3, 6.5.2.3 | 115, 160 |
| SPROUT | 5.4.1.1, 5.4.3.2.4 | 108, 115 |
| STOCKADJ | 5.4.3.2.2, 6.5.2.3 | 114, 160 |
| TALLY | 5.4.3.1.6 | 113 |
| TALLYONE | 5.4.3.1.6 | 113 |
| TALLYTWO | 5.4.3.1.6 | 113 |
| THRSHOLD | 5.4.3.2.5 | 115 |

**Selected Database Keywords**

| **Keyword** | **Primary Section Referenced** | **Page Number** |
| --- | --- | --- |
| ATRTLIDB | 4.3.3.1 | 83 |
| CALBSTDB | 4.3.3.3 | 85 |
| COMPUTDB | 6.4.1 | 147 |
| CUTLIDB | 4.3.3.1 | 83 |
| DSNIN | 4.2.2.3, 4.2.3.1 | 47, 52 |
| DSNOUT | 8.11 | 201 |
| INVSTATS | 4.3.2.1 | 77 |
| MISRPTS | 8.3 | 195 |
| REGREPTS | 5.4.3.3 | 116 |
| SQLIN | 8.11 | 201 |
| SQLOUT | 8.11 | 201 |
| STANDSQL | 4.2.2.3 | 47 |
| STRCLSDB | 4.3.2.2 | 79 |
| SUMMARY | 4.3.1.4.1 | 76 |
| TREELIDB | 4.3.3.1 | 83 |
| TREESQL | 4.2.3.1 | 52 |

# 1.0 Introduction

The Forest Vegetation Simulator (FVS) is a model used for predicting forest stand dynamics that is used extensively in the United States. FVS is the standard model used by various government agencies including the USDA Forest Service, USDI Bureau of Land Management, and USDI Bureau of Indian Affairs. It is also used by state agencies such as the Washington Department of Natural Resources and Custer State Park, industry, educational institutions, and private landowners.

Forest managers have used FVS extensively to summarize current stand conditions, predict future stand conditions under various management alternatives, and update inventory statistics. Output from the model is used as input to forest planning models and many other analysis tools. In addition, FVS has been linked to other Forest Service corporate software such as databases and geographic information systems.

Uses of FVS are not restricted to timber management applications. Other uses of FVS include considering how management practices affect stand structure and composition, determining suitability of stands for wildlife habitat, estimating hazard ratings for insect outbreaks or wildfires, and predicting losses from fire and insect outbreaks.

Forest managers are under ever increasing pressure to design and implement stand management alternatives that are biologically and economically sound and meet a wide variety of objectives. Costs associated with timber harvesting are continually increasing and any stand entry must generate enough revenue to justify the treatment. The generated revenue must cover the direct cost of the harvest and also the interest that could have been generated by using those monies in other investment alternatives. Generated revenue can be in the form of direct return on the timber harvested, or in delayed return from increased future revenue as a result of increased tree growth resulting from an intermediate treatment. Meanwhile, forest managers must maintain or improve the health, condition, and scenic value of the landscape, reduce the risk of catastrophic fires, and maintain canopy structure and diversity to satisfy various forest practices legislation. Traditional forest management practices such as clear cutting are often not acceptable. Forest Managers are faced with implementing innovative management alternatives of which the long-term effects on the resource are unknown.

However, forest managers have available to them an ever increasing array of tools which can aid resource management decisions. Computer technology has revolutionized land management decision analyses. Geographic information systems, relational databases, mapping technologies, visualization software, and growth and yield simulators are among the many tools currently available, and other software products are being rapidly developed. The Forest Vegetation Simulator is one of the products currently available to aid forest managers in making sound biological and economical management decisions.

This manual serves as a reference for FVS input preparation, model manipulation, and output interpretation. Model capabilities are well documented in peer-reviewed literature and the various General Technical Reports published by the Intermountain Research Station, Forestry Sciences Laboratory, in Moscow, Idaho (now part of the Rocky Mountain Research Station). Detailed descriptions of the structure and development of individual variants (see section 2.1) are given in variant overview documents. Many of these FVS related documents are available from the Forest Management Service Center’s web site.

# 2.0 General System Overview

Upon completion of this section, users should:

* Understand the various parts of the FVS modeling system.
* Be familiar with certain terms used when discussing FVS.

It is important to distinguish between the FVS growth model and the FVS graphical user interface:

**FVS** is the forest vegetation simulator growth model. Individual variants have been calibrated for many geographic areas across the United States.

A **Graphical User Interface** (GUI) is an application that offers the user a point-and-click way of quickly generating FVS keyword record files.

FVS can be (and is) used without a GUI. For example, a user could create a data file and keyword record file with their favorite system editor and run one of the FVS variants in command mode from a command line prompt. However, most users choose to utilize a GUI, which integrates most parts of the FVS system into an easy-to-use package.

The remainder of this paper will focus on operation of the FVS growth model itself. The way in which a graphical user interface pertains to various portions of this document will be pointed out. Documentation for all parts of the FVS suite of software tools can be found on the Forest Vegetation Simulator website.

## 2.1 FVS Related Terms

Certain terms are used in discussing FVS that may need further clarification:

**Variant** – When equations, such as those for tree growth, mortality, and volume, are developed for a specific geographic area and imbedded in the FVS framework, the resulting model is called a geographic *variant* of FVS.

**Base Model** – The term *base model* refers to all portions of FVS except the Cover, economic, insect and pathogen, and the Fire and Fuels Extensions.

**Extension** – An *extension* is an additional part of the FVS system that “extends” the capabilities of the base model to either simulate forest dynamics other than tree growth and mortality, or adds additional analysis capabilities such as those for landscape and economic analyses.

**Version** – The FVS *version* number is displayed as part of the heading on most output tables. The number represents the code repository revision used to build the FVS software. The version number is of little use to most users.

**Revision Number** – A revision number is also displayed as part of the heading on most output tables. The *revision* number gives the date the particular variant being run was last modified. The revision number is changed when any changes are made to the variant, and therefore it is very important to users. Checking this number against the date of executables available on the FVS web site will tell users whether the executable program they have is the most current revision available. This number should be referenced to specify the revision of FVS used for a particular simulation.

**Activity** – An *activity* is any FVS option that can be scheduled by year or cycle.

**Cycle** – A projection cycle is a period of time for which increments of tree characteristics are predicted.

**DBH** – The initials “DBH” appear in this document and refer to tree diameter measured at breast height, or 4.5 feet above the ground. Diameter at root collar or DRC may be substituted for DBH for those species on which DRC is commonly measured instead of DBH.

**QMD** – The initials “QMD” appear in this document and refer to quadratic mean diameter for the stand.

**Plot or Point** – The terms “plot” and “point” are synonymous in this document. The term “plot” is typically used to refer to either a fixed-area inventory plot or a variable radius inventory point.

## 2.2 The FVS Graphical User Interface

The FVS growth model is capable of reading input data, running a simulation, and creating output without the use of a graphical user interface (GUI). A general overview is provided in section 3.0. However, most users of FVS also use a GUI.

Several GUI applications have been developed specifically for use with FVS. The first was called Suppose (Crookston 1997). The Suppose GUI was retired in 2020 and has been replaced by a more robust interface.

The current FVS user interface was developed to run in a web browser. For that reason it is sometimes referred to as the browser-based interface, but it will be referred to here as the FVS GUI. There are two distinct configurations of this GUI. The first is an online configuration for which the suite of FVS tools is installed on a server, and the system is accessed via the internet. The second is a local configuration for which the suite of FVS tools is installed on the local computer. Both configurations utilize a web browser to run the FVS GUI.

The FVS GUI is a separate application installed alongside FVS, and it simplifies the task of creating the FVS simulation file. It also has a robust set of tools for creating and viewing additional outputs.

### 2.2.1 Using the FVS GUI

The online and local configurations have nearly identical “look and feel”. The interface has a main menu along the top containing a series of menu items (figure 2-1), each of which displays a different page. Each page has command items (e.g., buttons, text boxes, and check boxes) and some have secondary menus containing groups of command items. The spatial scope of a simulation is specified by picking the stands to include in the simulation. The temporal scope of a simulation is specified by setting the time scale. Management and other aspects of the simulation are specified by selecting components. After the simulation is run, the output may be selected and viewed in tabular or graphical form, reports may be generated, and custom queries may be utilized. Simulations can easily be modified by adding, deleting, or editing simulation contents.

![Main FVS GUI window  Screen image showing the main FVS GUI window as it appears when initially opened. There are no stands selected and no simulation contents.](data:image/png;base64...)

**Figure 2-1** — The initial “Runs” window of the FVS GUI as displayed in a browser window. Each tab on the upper tab bar opens a different window.

The FVS GUI has many other features not discussed here. This description is a very basic overview, and is not intended to provide a working knowledge of the program.

### 2.2.2 Inputs and Outputs

The FVS GUI requires correctly formatted input consisting of relational data describing the stands or plots, and the tree data associated with each. Refer to the Users Guide to the Database Extension (Crookston et al. 2003) for more information. Data in common database or spreadsheet formats can be imported by the GUI. Upon import, a copy of the data is created as an SQLite database file named FVS\_Data.db, and this copy is what is accessed when creating and running simulations.

The FVS GUI creates an FVS keyword record file (see section 3.1), which contains the information necessary to run the simulation. The GUI also creates an SQLite-formatted output database file named FVSOut.db to which some of the outputs are written when a simulation is run.

Many of the outputs from FVS can be viewed through the View Outputs feature in the FVS GUI. Outputs created in database (SQLite) format allow for creation of custom tabular and graphical outputs that can be viewed and saved.

# 3.0 General FVS Overview

*Primary technical references for this section: Stage 1973; Wykoff et al. 1982; Wykoff et al. 1990*

Upon completion of this section, users should:

* Have a general idea of what the FVS input and output files are.
* Understand the FVS design criteria.
* Be familiar with the general FVS processing sequence.

Regional variants of the Forest Vegetation Simulator have been calibrated for most forested areas of the United States. These variants differ in the way some growth components are con­structed. However, with a few modest exceptions, all variants use the same input pro­cedures and produce the same output tables.

## 3.1 FVS Basic Description

FVS is a semi-distance-independent individual tree growth and yield model (“semi-” because certain parts of the model localize competition and site variables to a plot (or point) basis within a stand). It treats a stand as the population unit and utilizes standard forest inventory or stand exam data. Local growth rates are used to adjust model growth relationships, which is a distinguishing feature of the model. FVS can portray a wide variety of forest types and stand structures ranging from even-aged to uneven-aged, and single to mixed species in single to multi-story canopies.

Two input files are generally used when running FVS. The first, a keyword record file, is required; the second, a tree data file or tree input table in a database file, is required when simulating an existing stand but not required when making a bare ground projection.

The keyword record file is the user’s way of telling the model what to do. Keyword records can be used to enter stand level parameters such as slope, aspect, elevation, sampling design specification, location such as forest and district, and site productivity. However, stand level parameters may also be input directly from a database (see section 4.2.2.3). Keywords are also used to describe management treatments, control the printing of output, compute custom variables, and adjust model estimates. Keyword records are mnemonic words (keywords) with associated data that provide information necessary and specific to the keyword action. The name of the keyword record file is echoed to the Options Selected by Input part of the FVS main output file for documentation purposes.

The tree data file is composed of records containing tree level information. Species and diameter at breast height are required on each tree record, and optional data includes tree count, diameter growth, height, height growth, crown ratio, and various other tree level information typically collected in inventory or stand exam procedures.

Four output files are generally produced from FVS. The first is produced for each simulation; the last three output files are optional and must be requested via keywords:

* The main output file contains information about keyword interpretation and scheduled activities, shows information about model calibration to the input data, provides stand composition statistics through time, tracks individual sample trees through time, produces a stand summary table of the entire simulation, and a summary of the management activities that were simulated.
* The tree list output file contains detailed information about all the individual tree records being projected.
* An output file containing only the summary table information from the main output file. This file is useful when summarizing information about many stands or providing information to various planning models.
* An output file containing information needed when running the economics model linked to FVS, and can be used for other auxiliary output such as detailed calibration data needed for a post-processor program to develop model multipliers over a broad geographic scale.

The length of time over which simulation results are desired is specified in terms of “cycles” (see section 2.1). The default cycle length is 10 years for most variants and the default number of cycles is 1 in all variants. However, the cycle length and number of cycles is easily adjusted using appropriate keywords. Note, however, the FVS GUI will typically set the number of cycles to 10 by default, unless the users specifies otherwise.

## 3.2 Design Criteria for FVS Development

Certain criteria were used in the original development of the Prognosis Model and these have carried over into the Forest Vegetation Simulator.

1. **Use existing inventory methods as sources of input and produce initial estimates of volume and growth that are consistent with estimates calculated with standard inventory compilation techniques**. This criterion ensures that the data obtained in detailed silvicultural examination procedures, as well as in nationwide forest inventories such as those conducted by Forest Inventory and Analysis units, can be used to initiate projections.
2. **Applicable in all timber types and stand conditions encountered in the inventory; growth predictions are consistent with growth rates measured in the inventory**. This feature assures that the program can accommodate all stands encountered in the inventory without forcing stands into inappropriate species composition or age structure classes.
3. **Treat stands as the basic unit of management; growth projections are dependent on interactions between trees within stands**. A stand is traditionally defined as an area of forest bounded by discontinuities in cover characteristics that are visible on aerial photographs at scales of ap­proximately 1:15,840. Regardless of how a stand is delineated, the stand is the projection unit.
4. **Incorporate growth of the current inventory into projections. This criterion serves two applications**. First, for analyses of individual stands, the samples of current increment localize the projections to allow for unique variations in site and environment that are not represented in the model parameters. Second, for forest-wide planning, the increment samples ensure consistency with inventory compilations of current annual increment and provide essential feedback of effects of past management planning.
5. **Provide links to other biotic and hydrologic components of the ecosystem and to economic analysis procedures for selecting the most appropriate management regimens**. By maintaining individual-tree resolution throughout the period of simulated time, estimates of future interactions between the stand and other components of the ecosystem can be based on as much detail as is available from inventories of the present situation. The tree species, however, are only part of the vegetation. Shrub and herbaceous species also compete with the trees and may be valued in their own right for forage and shelter for wildlife.

## 3.3 General Data Requirements

The model is designed to start with sample inventories of actual stands, or a bare ground condition. In either case the model needs some, or all, of following information, depending on the geographic variant used:

1. Site conditions:

* Slope
* Aspect
* Elevation
* Habitat type, Plant Association, or Ecoregion code
* Location (nearest National Forest, and in some cases Ranger District)
* Site Index
* Stand Density Index maximums, or basal area maximums
* Stand origin code (used in conjunction with FIAVBC keyword)

If starting with a sample inventory of a stand, the model also needs:

1. Inventory design used to measure the stand:

* Basal area factor for variable radius plots, or fixed plot area for large trees
* Fixed plot area for small trees
* Critical diameter when fixed plots are used to measure small trees and variable radius plots or different fixed plots are used to measure large trees
* Number of inventory plots
* Number of non-stockable plots

1. Characteristics of each tree measured in the inventory:

* Variables that must be recorded for all trees:
  + Identification for the plot on which the tree was measured
  + Species
  + Current DBH
* Variables that may be sub-sampled or omitted:
  + Number of trees represented by a record (when a single record is used to represent a class of trees, or when trees-per-acre values were recorded)
  + Tree History Code
  + Periodic diameter increment
  + Total tree height
  + Tree height to broken or dead top
  + Periodic height increment for seedling and sapling-sized trees
  + Crown Ratio
  + Tree Damage and Severity Codes (up to 3 pairs of codes)
  + Tree Value Class
  + Prescription Thinning Code (used in conjunction with THINPRSC keyword)
  + Cull, decay code, and woodland stem count (used in conjunction with FIAVBC keyword)

The model will work if given only a description of the inventory design and informa­tion on diameter, species, and plot identification for each inventoried tree. The other variables, however, serve to better describe unique site and tree characteristics and will improve the resolution of the projection. The model will accommodate up to 3000 individual tree records.

## 3.4 General FVS Processing Sequence

The general flow of operations within FVS is shown in figure 3-1. It is important to note three things: (1) all stand thinning requests scheduled within a cycle occur at the beginning of the cycle and growth and mortality are based on post-thinning conditions, (2) all regeneration becoming established within a cycle is passed to the FVS tree list at the end of the projection cycle, and (3) mortality occurs after growth and is based on post-growth conditions. In some cases, users must set cycle boundaries considering these attributes so that management activities occur when appropriate. Although the diagram is at a low level of resolution, it does show the relationship between major phases of the program.

A projection begins by reading the inventory records and the descriptions of selected management options. If periodic increment is measured on a sample of the tree records, the increment equations will be adjusted to reflect unique growth characteristics of the stand. The inventory is then compiled to produce tables that describe initial stand condi­tions. When this summary is complete, the first projection cycle begins.

Each projection cycle starts with a check of the Event Monitor to see if any custom variables need to be computed or management activities scheduled based on pre-thinning stand conditions. Next, any silvicultural actions that have been scheduled for the cycle are attempted. This is followed by another check of the event monitor to see if any custom variables need to be computed or management activities scheduled based on post-thinning stand conditions. Next, periodic diameter increment, periodic height increment, and periodic mortality rate are computed. These estimates are then adjusted for effects of insects and pathogens. Tree records resulting from regeneration within the cycle are created next, and change in crown ratios are computed for each tree record in the projection. Then, the tree attributes are updated, tree volumes are calculated, and tables that summarize projected stand conditions are compiled.
![Keyword processing flowchart  Flowchart showing the FVS processing sequence, including looping back when there are additional cycles to process.](data:image/x-emf;base64...)

**Figure 3-1** — Overview of the general FVS Processing Sequence

# 4.0 Basic Concepts

*Primary technical references for this section: Stage 1973; Wykoff et al. 1982; Wykoff et al. 1990*

This section is for the person looking at FVS for the first time and wondering how to operate the model. Upon completion of this section, users should:

* Understand the input requirements of the model
* Be able to build a basic no-treatment keyword set to run a simulation
* Know how to have the model read data correctly
* Have a basic understanding of how to interpret the output tables that are produced by the model

## 4.1 The Keyword System

Users communicate much of the information used by the Forest Vegetation Simulator through the keyword system. This simple system consists of a set of mnemonic words (keywords) associated with data (parameters). Data is entered in 10-column wide parameter fields. A single keyword and its associated parameters make up a keyword record. For example, the STDINFO keyword record is used to enter information about the site on which the stand is located (**ST**an**D** **INFO**rmation). The formatting is fixed, but simple and very efficient.

An example keyword record set is shown in figure 4-1. This figure illustrates the syntax of a keyword record file that could be used with the Inland Empire variant of FVS; the content of this example will be understood after reading subsequent sections of this guide. A corresponding tree data input file is shown in figure 4-3 and will be discussed in later sections.

A graphical user interface (GUI) application can be used to assist with the formatting of keyword records. The user is “intelligently” walked through parameter selection, and the GUI then formats the keyword records (see section 2.2). However, an understanding of the format and keyword record rules will be beneficial.

The keyword always begins in the first column of the keyword record. Depending on the keyword, up to eleven additional parameter fields on the record may be used to transmit alpha or numeric data. The pro­gram uses the data in these fields when the keyword record is implemented. Each parameter field consists of 10 columns and, if the decimal point is included, or the parameter is an alphabetic or alphanumeric value, the parameter may be entered anywhere within the field. If integer values are used, they must be right justified. The first parameter field begins in column 11 and ends in column 20 on the keyword record. A few keywords, such as the STDIDENT keyword shown in figure 4-1, have associated parameters that do not conform to this format, and therefore require supplemental records containing the necessary information.

A simplifying feature of the keyword system is that default values exist for almost all program options. A keyword is required only if the desired action differs from the default ac­tion. For example, the default length of a simulation is 1 projection cycle. If that is the desired action, a NUMCYCLE keyword does not need to be used. However, if the user wants a projection of a different length, the NUMCYCLE keyword should be entered with the appropriate projection length entered in the first field. The example in figure 4-1 is asking for a simulation length of 10 cycles. For the Inland Empire variant, which has a default cycle length of 10 years, this corresponds to a projection length of 100 years (10 cycles with each cycle being 10 years long).

It is important to note here that FVS graphical user interface (GUI) programs often have default values different than the FVS defaults. For example, the GUI will typically have a default of 10 cycles. This is not the FVS default, so the GUI automatically creates a NUMCYCLE keyword record and specifies 10 cycles unless the user specifies otherwise.

In addition to overall program defaults, most individual parameters associated with keywords have default values. If a parameter field is blank, the default value will be used. All parameter values (those entered and those assigned by default) associated with a keyword record are echoed to the Program Options Section of the Input Summary Table (see section 4.3.1.1). Returning to the example file, field 1 on the STDINFO record is used to specify the Forest Service Region and National Forest in which the stand is located. In the example file, the value entered for this parameter is 118.0 indicating the stand is in Forest Service Region 1 and Forest 18, which is the code used in the Inland Empire variant to represent the St. Joe National Forest. The default for this parameter field, in the Inland Empire variant, also happens to be 118. So in this case, the first parameter field on the STDINFO record could be left blank. The first three parameter fields on the DESIGN record have been left blank, so default values will be used for those parameters.

![Image of an example keyword set. This set of records could be used to simulate a prescription with the Inland Empire variant. ](data:image/jpeg;base64...)

**Figure 4-1** — An example keyword set. This set of records could be used to simulate a prescription with the Inland Empire variant. Shown in this example are keyword records, with keywords (columns 1 to 10) and parameters (10-column fields starting in column 11), and supplemental data records associated with some keywords such as STDIDENT and COMMENT. Also shown is a way of entering comment lines by having an asterisk (\*) as the first character. They are used here for clarity by breaking the keyword set into logically related groups

The final element of the keyword system is the supplemental data record. These records are required when the information needed to implement a keyword option is nonnumeric (other than alpha species codes) or ex­ceeds the seven-field limit. The exact format of the supplemental data records is dependent on the keyword selected and will be described on a case-by-case basis.

Specific keywords will be introduced in the course of describing how the Forest Vegetation Simulator works. Anyone reading this document should also have a current copy of the keyword guide (“Keyword Reference Guide for the Forest Vegetation Simulator”, Van Dyck and Smith-Mateja 2000). This keyword guide shows the default values in use for each of the parameter fields associated with each keyword. These defaults may be different by geographic variant. As keywords are added, changed, or deleted, this keyword guide is updated. It should be regarded as the only authoritative source for current keyword documentation. A current copy of this guide can be downloaded from the Forest Management Service Center’s web site. In addition, defaults are also listed in the overview document for each variant, which can also be downloaded from this web site.

### 4.1.1 Rules For Coding Keyword Records

The following rules govern the syntax and use of keywords in the Forest Vegetation Simulator keyword record file:

* All keywords start in column 1.
* The values (parameters) needed to implement an option are contained in up to eleven fields that are 10 columns wide. The first parameter field begins in column 11. A decimal point should be entered for all numeric values that are not integers. Integer values should either be right justified in the field or followed by a decimal point. Alphabetic or alphanumeric codes (species, plant association, etc.) can appear anywhere in the field and are not case specific.
* Blank fields are not treated as zeroes. If a blank field is found, the default value will be used. If zeroes are to be specified, they must be entered. Thus, only values that are different from the default parameter value need to be specified.
* If a keyword that has associated supplemental data records is used, all supplemental records must be provided.
* When two or more keyword records with conflicting options are specified, the last one specified will be used.

### 4.1.2 Keywords to Describe the Stand and Sampling Design

Among the first things a user will need to enter is information regarding the site on which the stand is located, information about when and how the data was collected, and desired simulation period length. Describing the sampling design used in collecting the data is necessary so FVS can interpret the tree input data correctly. Providing information about the site improves the accuracy of projections. In addition, users may want to label their output files for documentation purposes.

#### 4.1.2.1 Labeling the Output Tables

When making many simulations with the Forest Vegetation Simulator, it is often difficult to remember which individual simulation is displayed in an output table. Two keywords exist that help identify the output tables.

The STDIDENT keyword record allows you to assign an identification code to a stand. None of the keyword parameter fields are used, but one supplemental data record is required. This supplemental record contains the stand identification (such as S248112 shown below) in columns l-26. This ID appears with every output table in the main output file. The remainder of the columns, up through column 80 can be used to transmit a “title” which will also be reproduced at the beginning of each output table. The stand identification must not contain any blanks, and if the stand identification is less than 26 characters, a blank should be used to separate the identifier from the title. This is because the model looks for the first blank character on the supplemental record up to column 26; characters to the left of the blank are taken as the stand identification, and those to the right, up to column 80 as the title. In the example below, the stand identification is S248112 and the title for labeling the output tables is “SHELTERWOOD PRESCRIPTION FOR USER’S MANUAL”.

STDIDENT
S248112 SHELTERWOOD PRESCRIPTION FOR USER’S MANUAL

In addition to the stand identification, users may want to enter a special code to identify the silvicul­tural treatment or management regimen that is simulated in a projection. This code is entered with the MGMTID record. There are no associated parameters, but the code to be used is entered in the first four columns of a supplemental record. When the supplemental record is blank, the code is not printed; when MGMTID is not used, the code “NONE” is printed. For example, if a user were simulating a shelterwood scenario, the records

MGMTID
SHLT

would cause the label SHLT to be printed with each table in the main output file.

The STANDCN keyword record is similar to the STDIDENT keyword in that it allows you to assign an identifier to the stand. The identifier assigned using the STANDCN keyword record, however, is a control number, which must be unique among all stands in a simulation because the values are used as a primary key with the database extension (see section 8.11).

#### 4.1.2.2 Describing the Site on Which the Stand is Located

Many growth prediction equations in the Forest Vegetation Simulator use stand variables such as habitat type, slope, aspect, elevation, site index, and stand location. Stands should be delin­eated so that these variables are reasonably constant. Stretching this assumption when de­fining stands, and using some sort of “average value” for these variables, will increase the likelihood that projections will not be accurate. In particular, aspect is a circular function, and variables such as habitat type and stand location are represented by discrete classes; none of these have meaningful averages. This site level information can also be read directly from a database (see section 4.2.2.3).

The STDINFO keyword record is used to supply data on stand variables. This record has nine parameter fields specifying information on stand location, habitat type/plant association/ecological class code, stand age, aspect, slope, elevation, reference code for indicating the source of the habitat type/plant association/ecological class code, ecoregion, and stand origin code. Any values supplied for ecoregion and stand origin code in fields 8 and 9 are only used when the FIAVBC keyword is active. The reference code is used to indicate a habitat type/plant association/ecological class from a literature source other than the one used to fit the variant. The FSVEG database recognizes habitat type/plant association/ecological class codes from many sources. By knowing the literature source, FVS can translate the habitat type/plant association/ecological class code to one recognized by the variant.

In our example, the Inland Empire variant is being used, so codes entered must be those specific to this variant. Our example stand, S248112, is located in the St. Joe National Forest (code 118). This stand is on a northwest-facing slope (315 degrees) of approximately 30 percent at 3400 feet elevation (code = 34). The habitat type has been identified as Tsuga heterophylla/Clintonia uniflora(code = 570). This habitat type is one of the habitat types defined for the Inland Empire variant and listed in the variant overview document, so the habitat type reference code is not needed. The stand age at the time it was inventoried was 60 years. Lastly, the FIAVBC keyword is not being invoked so no information was specified for ecoregion or stand origin code (fields 8 and 9 not shown). The above data are entered into the Forest Vegetation Simulator using the following keyword record.

STDINFO 118 570 60 315 30 34 *~~b~~*[[1]](#footnote-1)

Valid entries for these fields are variant specific and are shown in the keyword guide and/or variant overview documents available on the Forest Management Service Center worldwide web site. Users should obtain the variant overview for the variant specific to their geographic area. If the stand in question is outside the boundaries of a National Forest, select the forest code associated with the nearest National Forest. If an invalid code is given, the default value will be used. However, in­valid elevation codes are not readily detected and all entries are assumed to be correct. Stand aspect is entered in degrees and slope is entered in percent for all variants.

Site index is an important predictor variable in many of the FVS variants. Site index and site species is provided to the model with the SITECODE keyword record. A site index can be entered for a particular site species, or site index values can be entered for each individual species. If site index is entered for a particular site species, the model translates that site index to a corresponding site index for each species in the variant for which an individual site index was not entered. If site index is not entered, then variant-specific default values are used. A site index table is printed in the main output file. Users should check this table to see if the site values are reflective of the stand they are projecting. When entering a site index value, users need to base the value on site curves that were used to build the variant relationships. These site index curves will be listed in the variant overview document.

If the site species is known it should also be entered with the SITECODE keyword record. If it is not specified, then site species defaults to the species specified on the first SITECODE keyword record with a non-zero, non-blank, species code. If this species code references a species group (section 4.2.5) then the site species defaults to the first species specified in the group. If such a keyword record is not present, then a variant-specific default value is assigned. The variant specific default value will be listed in the variant overview document. Site index species is also shown in the site index table printed in the main output file.

Stand location, in terms of latitude, longitude, state, and county can be entered using the LOCATE keyword record. Latitude is used for growth prediction in the Western Sierras variant, and in some insect and pathogen applications in the eastern United States. County is used in determining forest type in California. The state code is used to determine the National Volume Estimator equations to use for woodland species when the FIAVBC keyword is invoked. Otherwise, these values are only for informational purposes.

Another keyword relates to stand location and affects growth rates in some variants. Some variants include geographic sub-divisions that contain different growth equations. The MODTYPE keyword is used to indicate which model sub-division that the stand should be run with. This keyword is used to input model type, physiographic region, or forest type, depending on the variant.

Permafrost affects growth rates in the Alaska variant. The PRMFROST keyword is used to indicate whether the stand is in an area where permafrost exists.

Whether the stand is a managed stand, or a natural stand, affects growth rates in some variants. The MANAGED keyword is used to signify that a stand should be grown under a managed condition. If this keyword is not present, the stand will be grown as if it is a naturally occurring stand. The managed designation can be implemented at any time during a simulation. So a natural stand that is thinned can be grown under a managed condition from that point on. Most variants, however, do not contain this feature.

#### 4.1.2.3 Specifying the Sampling Information

Sampling information can be entered using keywords or read directly from a database (see section 4.2.2.3).

The INVYEAR keyword record is used to enter the inventory year, which is also used as the starting date for a projection. If the date is entered, options that are specified by date can be associated with a projection cycle (also see section 5.1.1). The example stand was inventoried in 1980.

INVYEAR 1980

The Forest Vegetation Simulator is an inventory-based projection system that will accommodate a variety of sampling designs, site characteristics, and stand structures. FVS will accommodate most sampling designs in which stands are delineated and individual sample trees within stands are selected with known probability. Acceptable designs include, but are not limited to:

* One or more fixed area plots per stand.
* One or more sample points within a stand where sample trees are selected using the same horizontal angle gauge.
* Combinations where trees smaller than a specified breakpoint diameter (BRK) are sampled using fixed area plots, and trees with diameter greater than or equal to BRK are sampled us­ing a horizontal angle gauge (Stage and Alley 1972), or fixed area plots of a different size.

If other designs are used, preprocessing may be required to assign sampling probabilities to the individual tree records prior to submitting the stand for projection. In general, the sampling design that is most efficient for representing a given stand structure will provide the most effective input data for the Forest Vegetation Simulator. Byrne and Stage (1988) outline a data structure useful for describing the sampling design within a stand. The data structure is able to incorporate changes in sampling design that commonly occur in maintaining permanent plot data.

The sampling design information is entered using the DESIGN keyword record. The example stand, from the St. Joe National Forest, was inventoried using a combination of fixed 1/300-acre plots for trees less than 5.0 inches in diameter, and variable radius plots sampled with a basal area factor 40 prism for trees 5.0 inches in diameter and larger. There were 11 sample plots within the stand, and 10 of the 11 were considered stockable (i.e., 1 plot considered nonstockable, meaning it is incapable of supporting trees). In this case, the following DESIGNrecords are equivalent because the default parameters for the first three fields of the DESIGN keyword record correspond to the values used to inventory the stand. Either of these keyword records could be used:

DESIGN 40 300 5 11 1 *~~b~~* *~~b~~*

or

DESIGN *~~b~~* *~~b~~* *~~b~~* 11 1 *~~b~~* *~~b~~*

If a fixed-area-plot sampling design was used, simply specify a value of BRK that ex­ceeds the diameter of the largest sample tree selected. For example, if 10 plots of 1/20‑acre size were used, the DESIGN record could read:

DESIGN *~~b~~* 20 999 11 1 *~~b~~* *~~b~~*

If, however, all sample trees were selected using 10 points and a horizontal angle gauge (basal area factor = 40), the value of BRK should be set to zero:

DESIGN 40 *~~b~~* 0 11 1 *~~b~~* *~~b~~*

If the sampling design uses two different sized fixed-area plots, the large-tree plot size is entered as a negative number. For example, if the design used a combination of fixed 1/100-acre plots for trees less than 5.0 inches in diameter, and fixed 1/20-acre plots for trees 5.0 inches and larger, the DESIGN record could read:

DESIGN -20 100 5 11 1 *~~b~~* *~~b~~*

If the values recorded in the inventory data have already been converted to trees-per-acre, then the original sampling design information should not be entered on the DESIGN record. Instead, the design should be shown as a single 1-acre fixed plot:

DESIGN *~~b~~* 1 999 11 1 *~~b~~* *~~b~~*

In cases where trees less than the BRK size are measured with a cluster of fixed area plots, rather than a single fixed area plot, users can enter the inverse of the sum of the fixed plots area in field 2, or use the TFIXAREA keyword to enter this value. For example, if two 1/20-acre fixed plots were used to measure small trees, the total fixed plot area is 1/10-acre and a value of 10 would be entered in field 2 of the design keyword or field 1 of the TFIXAREA keyword.

### 4.1.3 Keywords to Control Program Execution

The Forest Vegetation Simulator is structured around projection cycles. A cycle is a period of time for which increments of tree characteristics are predicted. All management activities are assumed to take place at the beginning of the cycle in which they are scheduled. An inventory report is prepared at the end of each cycle. Total simulation length is a function of the number and length of projection cycles.

Keyword record files can become extensive and complex. In many cases, users will want to enter text comments to document assumptions made in constructing the keyword sets, the source of formulas used, or provide an explanation of what the keyword set is designed to do. Methods to accomplish this are discussed in this section.

FVS also needs to know when it has reached the end of a set of keyword records that pertain to a stand. Keyword records used to signal the end of a keyword record set are also discussed.

#### 4.1.3.1 Controlling the Simulation Length and Cycle Intervals

The number of cycles and the length of each cycle are controlled by using the NUMCYCLE and TIMEINT records. The NUMCYCLE keyword record only contains one parameter field, and it specifies to the number of projection cycles desired. The TIMEINT keyword contains two parameter fields; the first is used to indicate the projection cycle, and the second to indicate how long, in years, this projection cycle should be. In all variants, the default number of cycles is 1 and cannot be increased beyond 40. FVS GUIs typically provide a parameter value of 10, which is the most commonly used setting of this parameter. In most variants the default cycle length is 10 years, although a few variants are based on a default cycle length of 5 years. Users should consult their variant overview document to determine the default cycle length for their particular variant.

In the current example, the Inland Empire variant has a default cycle length of 10 years, and a 100-year projection is desired, so we have included the following keyword record to accomplish this.

NUMCYCLE 10

In the following example, assume an inventory year of 2003, and a projection to the year 2050 is desired, using a 7-year first cycle to align projection reports with decades (i.e., 1st cycle running from 2003-2010), and the four subsequent cycles of 10 years each. The following three keywords would accomplish this, assuming the variant being used has default cycle lengths of 10 years.

INVYEAR 2003

NUMCYCLE 5

TIMEINT 1 7

The CYCLEAT keyword, in addition, can be used to add an additional cycle boundary in a particular year, essentially splitting an existing cycle into two cycles. It only has one parameter, the desired year. In the following example an additional cycle boundary has been inserted into the run in 2013.

CYCLEAT 2013

Cycles are used to define the input parameters that relate to the growth models in order to emphasize that the models predict periodic increments. Most of the models are based on either 5- or l0-year increment data and, in most cases, the period on which the models were derived, should be used. There are legitimate reasons, as in the above example, for using other period lengths (see related discussion in section 5.1.2.).

Some bias is associated with using period lengths other than the period length used to fit the models. The more these period lengths differ, the greater the bias, and the bias increases faster when longer cycles are used rather than shorter cycles. For example, if 10-year increment data were used to fit a model, then the bias associated with a 7 year cycle is smaller than the bias associated with a 13 year cycle, even though both are 3 year departures from the data used to fit the model. Generally, however, the bias associated with using period lengths that are within a few years of the period length used to fit the model is reasonably small.

#### 4.1.3.2 Documenting the Keyword Set

Explanatory text may be added to the keyword record file, and subsequent model output, to aid in interpretation. To enter this text, the COMMENT and END records can be used. These keywords define the begin­ning and end of a set of text that will be reproduced, verbatim, in the input summary table of the main output file. There are no restrictions on the number or format of records used to input comments except that the first three columns cannot contain the word “END” if the fourth column is blank. (Note: if END is omitted from the keyword record file, subsequent keyword records will be treated as part of the COMMENT packet, and the projection likely will fail.)

For example, a description of silvicultural objectives was added to the keyword record file and subsequent output for the simulation of our example prescription:

COMMENT

THE PRESCRIPTION CALLS FOR:

1. IMMEDIATE REMOVAL OF EXCESS TREES,

2. A COMMERCIAL THINNING AT AGE 90 TO REMOVE LODGEPOLE AND

LARCH,

3. A SHELTERWOOD REGENERATION TREATMENT AT AGE 120 FAVORING

GRAND FIR AND DOUGLAS-FIR,

4. AND AN OVERWOOD REMOVAL AT AGE 130.

END

An asterisk (\*) in the first column will also serve to indicate a comment to the model and is also shown in the example keyword record file. Records with an “\*” as the first character are simply echoed to the output file and then ignored by FVS. This feature provides an easy way for a user to “comment” a keyword record out of a simulation without actually removing it or placing it inside a COMMENT-END block. For example, in the example keyword set, shown in figure 4.1, an “\*” could be placed as the first character on the THINPRSC keyword record (e.g., \*THINPRSC…) and the prescription thinning would not be attempted by the model.

\* THIS COMMENT WILL BE ECHOED TO THE OUTPUT FILE

An exclamation point (!) in the first column can also be used. However, records beginning with an exclamation point are not echoed to the output file, they are simply ignored. When the FVS GUI builds an FVS keyword record file, it contains a lot of lines beginning with “!” character (actually it uses “!!” as the first two characters). These lines are recognized by the FVS GUI as instructions to the GUI, and are ignored by FVS. As a result, a user can run FVS directly from the command prompt and supply the GUI-generated keyword file as input. Whether running in command mode or under the control of the FVS GUI, the output will not be cluttered with GUI commands.

! THIS COMMENT WILL NOT BE ECHOED TO THE OUTPUT FILE

#### 4.1.3.3 Starting and Stopping a Simulation

Two keyword records have to do with starting and stopping a simulation. These are the PROCESS and STOP keyword records. The function of PROCESS is simply to terminate the input of the selected options. When PROCESS is encountered, the sample tree records are read, if they have not been read previously (see section 4.2.3.1), and the projection begins.

The PROCESS keyword is the logical end of the collection of keyword records that define the projection of a single stand. Many projections may be grouped into a keyword record file. In this case, PROCESS serves to separate the projections. Each projection is completed before the keyword records for the next projection are read.

If the record following PROCESS is anything other than an end-of-file or a STOP, the default parameter values are recalled in preparation for the next projection. The STOP record is the logical end of the keyword record file. When STOP is encountered, program execution ends. In reality, STOP functions the same as an end-of-file. However, it serves as a visual reminder of the logical extent of the keyword record file and a warning message is printed if STOP is not found.

The minimum input required to run an existing stand through FVS is a list of sample tree records, coded in accordance with the default tree record format, and a PROCESS record. In this case a one-cycle simulation would be made using default values for the stand information variables. The minimum input required to make a bare-ground projection will be discussed in a later section.

## 4.2 Getting the Data into FVS

The Forest Vegetation Simulator predicts future tree heights and diameters from initial stand and tree characteristics and estimates of periodic increment. This section discusses which variables the model expects to find on the input data records, discusses data format, provides methods to inform FVS how to interpret some of the input fields, and discusses special input features.

Input data can be read from fixed-format plain text or from a database (see section 8.11). The two primary types of input data are sample tree data and stand data. These are input from two different sources; either two different text files or two different database tables.

Before discussing the reading of tree data, it is important to mention the situation in which there are no input tree records, and a bare ground projection is desired. In this case, the user should insert a NOTREES keyword record into the keyword set. This tells FVS not to expect any tree data records, and to proceed with the simulation upon encountering the PROCESS keyword.

### 4.2.1 Sample Tree Data Description

There are a suite of variables used to describe trees and these are entered on the tree data input records. The model will accommodate up to 3000 individual tree records. Following is a description of what the variables are, how they should be coded, and how they are used in the Forest Vegetation Simulator. Some variables may be omitted or sub­-sampled. In these cases, zeroes and blanks are treated as missing values. Tree diameter is required or the data record will be ignored.

**Plot ID (ITRE).** Each stand inventory consists of 1 or more inventory plots or points. The term “plot” is used to describe a fixed area plot, a variable radius plot, or the combina­tion of the two when used to measure separate components of the stand (see the discus­sion of DESIGN in section 4.1.2.3).A unique numericcode should be assigned to each plot within a stand, and the code should be recorded on each record for a tree sampled on the plot. The plot ID’s are used to determine the number of plots in the stand when a plot count is not provided on the DESIGNrecord. It is also used to distinguish between plots when computing point density related values.

When non-stockable plots are present in the stand (i.e., plots that cannot support trees), users should insert a record in the data file with a unique plot number and a tree value class code of 8 (see figure 4-3, record 20) for each non-stockable plot, or insert a DESIGNrecord with the number of non-stockable plots specified, or both. The example presented here does both.

**Tree ID (IDTREE).** Trees are recorded on each inventory plot. A numericcode should be assigned to each tree recorded on a plot. When combined with the plot ID, the combination should form a unique numeric code for all tree records in the stand. These codes are used to keep track of individual tree records throughout a simulation, and are especially useful when analyzing the tree list output file.

**Number of trees represented by a record (PROB).** Trees on a plot that are similar (classed together) may be recorded on a single record. When this option is used, the number of trees in a class must be recorded (see figure 4-3, records 3 and 27). If PROBis not recorded, or if a zero is entered, the record is assumed to represent a single sample tree. PROB, in conjunction with the plot design parameters on the DESIGN keyword record, determines the trees per acre expansion.

**Tree history (ITH).** Tree history codes of 0-5 are used to represent live tree records that are projected by FVS. FVS does not distinguish between the various live tree codes. Tree history codes 6, 7, 8, and 9 indicate types of tree records that are not projected. The codes 6 and 7 trees (see figure 4-3, record 14) are assumed to have died during the mortality observation period (see discussion of the GROWTH keyword record in section 4.2.3.4).These records are used by the base model to backdate stand density statistics to the beginning of the growth measurement period for the purpose of incre­ment model calibration, and also by some insect and pathogen extensions. FVS makes no distinction between tree records coded with a tree history of 6 or 7. The codes 8 and 9 (see figure 4-3, record 5) represent trees that have been dead for longer periods of time. These records are included in the inventory list of trees but are not included in stand densities during calibration. FVS makes no distinction between tree records coded with a tree history of 8 or 9. Dead tree records are maintained through time only by the Fire and Fuels Extension. They are also useful for drawing stand images using the Stand Visualization System.

**Species (ISP).** Species is used in FVS to index the various growth models and categorize summaries. The species recognized by FVS and the default codes for these species are variant specific. Users should consult the variant overview document to determine the correct codes. The default codes may be replaced using the SPCODES keyword record (see section 4.2.3.3). All tree records with unrecognizable codes are treated as the last valid code for the variant, usually OT for “other”.

For example, some of the species codes contained in the Inland Empire variant are shown in table 4-1. The order in which the codes appear in table 4-1 (numeric sequence codes) is the order in which species are subscripted within the Inland Empire variant of FVS. The species codes contained in the FVS data input file can be the alpha code, the 3-digit FIA code, or the NRCS Plants code (but not the variant-specific numeric code unless the default codes are replaced using the SPCODES keyword record as shown in section 4.2.3.3). Plants codes can only be used if the DataBase extension is being used (section 8.11) or the input format is changed (section 4.2.3.2).

**Table 4-1** — Some of the tree species recognized by the Inland Empire variant with default coding conventions.

| **Common Name** | **Scientific Name** | **Sequence Code** | **Default alpha input code** | **Default FIA Code** |
| --- | --- | --- | --- | --- |
| Western white pine | *Pinus monticola* | 1 | WP | 119 |
| Western larch | *Larix occidentalis* | 2 | WL | 073 |
| Douglas-fir | *Pseudotsuga menziesii* | 3 | DF | 202 |
| Grand fir | *Abies grandis* | 4 | GF | 017 |
| Western hemlock | *Tsuga heterophylla* | 5 | WH | 263 |
| Western redcedar | *Thuja plicata* | 6 | RC | 241 |
| Lodgepole pine | *Pinus contorta* | 7 | LP | 108 |
| Engelmann spruce | *Picea engelmannii* | 8 | ES | 093 |
| Subalpine fir | *Abies lasiocarpa* | 9 | AF | 019 |
| Ponderosa pine | *Pinus ponderosa* | 10 | PP | 122 |

**Tree diameter breast height (DBH; measured in inches)**. Tree diameter is the most important tree attribute that is projected. Most of the models that predict changes in tree attributes are dependent on DBH.Trees smaller than 4.5 feet in height haven’t yet reached breast height, so, for these trees only, a zero or blank DBH is allowed (a value of 0.1 inch will be assigned when read). Alternatively, a small diameter can be assigned (for example, an estimated bud width, or 0.1 inch; see figure 4-3, records 3, 15, and 27). Regardless of whether it is recorded or assigned, DBH will not be incremented until projected height becomes greater than 4.5 feet. If DBHis not recorded for a tree 4.5 feet in height or greater, the record is ignored**.** When the sample tree records are plain text (not in a database) and the value entered for DBH does not contain a decimal point the value is assumed to be in tenths of inches (one implied decimal place). When the sample tree records are in a database the value is read as entered (no implied decimal place).

**Periodic diameter increment (DG; measured in inches).** Periodic diameter increment data is used to calibrate the diameter increment model. By default, if DGis measured on five or more sample trees of a species with a diameter of at least the specified threshold (3.0 inches for all variants) at the start of the growth period, the model for that species is calibrated (see section 6.4). The minimum number of observations required for calibration can be changed using the CALBSTAT keyword. Diameter increment data may be entered into FVS either as an inside bark diameter increment (future or past), or a second outside bark DBH measurement (future or past). If the second method is used, the program will automatically convert DGto an inside bark incre­ment prior to calibration. When the sample tree records are plain text (not in a database) and the value entered for DG does not contain a decimal point the value is assumed to be in tenths of inches (one implied decimal place). When the sample tree records are in a database the value is read as entered (no implied decimal place).

Stage (1960) recommends sub-sampling for diameter increment, with the sample trees selected in proportion to DBH2 or DBH3.

It is also recommended that a growth measurement period be used corresponding to the period used to fit the diameter growth models for the variant you are using (generally 10 years). The form of the diameter increment model was selected in part to enhance extrapolation to different period lengths. However, this capability can be easily abused without evaluating the biases (see section 4.1.3.1). Both the method of growth measurement and the length of the period are entered on the GROWTHkeyword record (see section 4.2.3.4).

**Tree height *(HT;* measured in feet).** Tree height is the second most important tree at­tribute that is projected. Height is used in the height increment and crown ratio calculations and in computing volume. Heights may be omitted from the tree records or they may be sub-sampled. If omitted, initial heights will be calculated using species-specific height-diameter relationships that are imbedded in the program. If height is sub-sampled, and three or more trees of a species have recorded heights and no apparent top damage, the param­eters of the height-diameter equation can be estimated from the input data. In some variants, this occurs automatically; in other variants the user must enable this feature (see the NOHTDREG keyword record in section 7.1.3.1).

When the top of the tree is missing or dead (damage code 96 or 97; see the damage code description in this section), the variable *HT* should be used to record the actual live height of the tree (see figure 4-2). This is the height that will be projected and used in growth predictions. Trees with top damage are not included in the height-diameter curve parameter estimates.

Two additional variables are needed to approximate a taper curve so that volume loss due to top-kill can be estimated (Monserud 1981). These are the estimated height if the tree were not top-killed *(NORMHT)*and the height to point of top-kill *(THT)*. *NORMHT*is initially computed from the height-diameter function, or it is set to the value entered for tree height if the tree height is greater than the height predicted from the height-diameter function. *NORMHT* is adjusted each cycle by adding the predicted height increment.

**Height to point of top-kill *(THT;* measured in feet).** When the top is dead or missing, the height to point of top-kill should be entered (see figure 4-2 and figure 4-3, records 6and 22). *THT* servesas a permanent point of truncation for volume calculations and is not incremented. When the damage code indicates a dead or missing top, and *THT* is not recorded, the height to the point of top-kill is assumed to be 80 percent of *NORMHT*. In any case, the heights are con­strained such that:

*THT <u><</u>HT <u><</u>NORMHT*

Record both *HT* and *THT,* if possible, for trees with visible top damage. Recording THT will have an effect, regardless of whether a damage code of 96 or 97 is recorded, or not.

**Periodic height increment *(HTG;* measured in feet).** Height increment is used to cali­brate the small-tree height increment model (see section 7.2.2) in the same way that diameter increment is used to calibrate the diameter increment model. By default, if *HTG*is measured on five or more sample trees of a species with a diameter less than the specified threshold (3 inches for the Alaska variant and 5 inches for all other variants) at the start of the growth period, the model for that species is calibrated (see section 6.4). The minimum number of observations required for calibration can be changed using the CALBSTAT keyword. *HTG* may be sub-sampled, but trees selected must have a DBH that is less than the threshold (see figure 4-3, records 10, 12, 13, and 26). Users can enter *HTG* into FVS, either by recording an increment (future or past), or a second height (future or past). If heights are recorded, *HTG* will be automatically converted to an increment prior to calibration. When the sample tree records are plain text (not in a database) and the value entered for *HTG* does not contain a decimal point the value is assumed to be in tenths of feet (one implied decimal place). If the database extension is used, the value is read as entered (no implied decimal place).

It is recommend that a period length be used corresponding to the period length used to fit the small-tree height models for the particular variant being used (generally 5 years). For periods longer than 5 years, it becomes increas­ingly difficult to measure increment without destructively sampling trees or using perma­nent sample plots. Both the method by which increment is measured and the period length are specified on the GROWTH keyword record (see section 4.2.3.4).

![Graph showing the measurements of various heights. HT is shown measured to the top of the highest live part, including to the tip of a normal tree, to the top of the live crown for a tree with a dead or broken top, and to the top of the new leader for a tree with a dead or broken top but a new live leader. THT is zero for a normal tree, the same as HT for a tree with a dead or broken top, and to the point of the break or death of the original stem in a tree with a new leader.](data:image/png;base64...)

**Figure 4-2** — Example of how the variables HT (tree height) and THT (height to point of top-kill) should be set for various types of trees. The tree on the left is a normal tree with no top damage. The middle tree has a dead top (which can be broken or intact). The tree on the right has a broken or dead top with a new leader.

**Crown ratio code (ICR).** The ratio of live crown length to total height is an important predictor of diameter increment. When using the default format for tree data input records, ICR should be coded into 10-percent classes (1 = 0-10 percent, 2 = 11-20 percent,...,9 = 81-100 percent). In this case, FVS converts ICR to crown ratio (CR) by giving CR a value equal to the class midpoint. When ICR is missing, a value is computed using imbedded equations. These equations are not calibrated from the input data.

If a different data format is specified with the TREEFMT keyword record (see section 4.2.3.2) and indicates that crown ratio will be read from two or more columns, rather than one, then live crown ratio can be entered as a percentage (10-100) of total tree height. Crown ratios less than 10 percent should be entered as a coded value of 1 as described above, and will be assigned a crown ratio of 5 percent within the model. Values of 2-9 would be converted to the corresponding 10-percent class midpoint as described above.

**Damage and Severity codes (IDCD).** Up to three pairs of damage and severity codes can be entered for each tree record. Damage codes recognized by the base version of FVS include those for:

top damage 96=broken/missing top, 97=dead top
severity rating not used for top damage; height to point of top-kill is used (see THT above)

dwarf mistletoe 30-34 with a severity rating of 0-6

special tree status 55 with a severity rating 1-99

percent volume For western variants:
25=percent defect for both merchantable cubic foot and board foot volume
26=percent defect for merchantable cubic foot volume only
27=percent defect for merchantable board foot volume only
For eastern variants:
25 = percent defect for both pulpwood volume and sawtimber volume
26 = percent defect for pulpwood volume
27 = percent defect for sawtimber volume (both cubic foot and board foot) severity rating 1-99, with 99 being considered 100% defect (also see section 5.3.1.2)

Other damage codes (see appendix A) relate to insect and pathogen damage and will be ignored by FVS unless a version of the model including those extensions is being used (see section 8).

The damage code 28 is not really a damage code at all. It is an indicator of a site tree. Site tree information is typically recorded to determine a site index for the stand. FVS can use this information in the calibration of the height-diameter relationships. The severity code associated with damage code 28 specifies how the tree was measured: 1=on plot and total tree age measured; 2=on plot and breast height age measured; 3=off plot and total age measured; and 4=off plot and breast height age measured. Trees off plot (severity codes 3 and 4) are not included in simulations.

The damage code 55 is also not really a damage code. It is an indicator that a Special Tree Status code is to be entered as the associated user-defined severity code. Special Tree Status code is a factor in the formula that computes removal priority for thinning requests (see section 5.2.4.1). The TCONDMLT keyword record can be used to include a preference for removal based on these codes.

**Tree value class code (IMC).** The tree value class is a factor in the formula that com­putes removal priority for thinning requests (see section 5.2.4.1). Four codes are allowed (codes 1,2,3, and 8), and all other codes will be converted to 3. When IMC is missing, a value of 1 is assigned. Generally code 1 is used to indicate desirable trees, code 2 to indicate acceptable trees, and code 3 to indicate live cull trees. The TCONDMLT keyword record can be used to include a preference for removal based on IMC code.

Code 8 is a special code used to include a null-record for a point that is non-stockable (see figure 4-3, record 20). Once the non-stockable point has been tallied, the record is ignored. The non-stockable point tally is used to estimate the proportion of stand area associated with non-stockable openings such as rock outcroppings. All stand statistics that are reported in the output are averaged across total stand area. The stand density statistics used for growth prediction, however, are averaged over only the stockable area.

**Short-run prescription recommendation (IPRSC).** One FVS management option is the removal of specific trees marked for harvesting. A value of IPRSC less than or equal to 1 indicates a leave tree. Other values (2 <u><</u> IPRSC) indicate a tree marked for removal. The THINPRSC keyword record is used to remove trees that have a specified IPRSC code (see section 5.2.3.1). The codes themselves have no intrinsic meaning, and are useful only in conjunction with the THINPRSC keyword record. If values greater than 9 are entered for IPRSC, then a TREEFMT keyword record must also be used to tell FVS to read IPRSC from 2 or more columns, rather than one.

**Tree Age (ABIRTH).** Tree age is used in some variants for estimation of large tree height growth. Providing an actual tree age for a tree record may improve height growth estimates in these variants.

**Cull (CULL).** Cull is the percent of cubic foot volume that is rotten or missing and is used to adjust volume, biomass, and carbon estimates when the FIAVBC keyword is invoked. When cull is not entered, a tree is assumed to have no cull and a default value of 0 is used.

**Decay code (DECAYCD).** A code ranging from 1 to 5, indicating the stage of decay in a standing dead tree. A default decay code of 3 is assumed when a decay code value is not entered for a dead tree record. These codes are used to adjust estimates of aboveground biomass and carbon during the year of inventory when the FIAVBC keyword is invoked. As described in Burrill et al. 2024, there are 5 recognized decay codes:

1: All limbs and branches are present; the top of the crown is still present; all bark remains; sapwood is intact, with minimal decay; heartwood is sound and hard.

2: There are few limbs and no fine branches; the top may be broken; a variable amount of bark remains; sapwood is sloughing with advanced decay; heartwood is sound at base but beginning to decay in the outer part of the upper bole.

3: Only limb stubs exist; the top is broken; a variable amount of bark remains; sapwood is sloughing; heartwood has advanced decay in upper bole and is beginning at the base.

4: Few or no limb stubs remain; the top is broken; a variable amount of bark remains; sapwood is sloughing; heartwood has advanced decay at the base and is sloughing in the upper bole.

5: No evidence of branches remains; the top is broken; <20 percent of the bark remains; sapwood is gone; heartwood is sloughing throughout.

**Woodland stem count (WDLD\_STEMS).** The number of stems used in the estimation of root collar diameter for a woodland species. A default value of 1 is assumed when a stem count value is not entered for a woodland species record. This value is only used for woodland species when the FIAVBC keyword is invoked. Users should consult the REF SPECIES table from the FIA database (Burrill et al. 2024) to determine what species are classified as woodland species.

This concludes the variables related to individual trees. However, an additional five variables can be included on the tree data input records. These variables are used to further refine natural regeneration estimates in variants having the full establishment model (see section 5.4). The variables are plot specific site descriptors including: plot slope percent, plot aspect code, plot habitat type, plot topographic position code, and plot site preparation code. These are not illustrated in figure 4-3. If used, these codes are required only for the first tree record for each plot. Codes and formats are described in section 5.4.1.5.

### 4.2.2 Tree Records and Default Format

Tree input data may be read from a database table or from an ASCII text file. The format of the data may be slightly different, but the same information is included in both formats with the exception that the database table can include additional information not able to be included in the text file.

#### 4.2.2.1 Tree Input Data Records in Database Format

A brief overview of the database input formats for tree data is presented here. For greater detail regarding the database input and everything else related to the database extension, refer to the Users Guide to the Database Extension (Crookston et al. 2003).

Table 4-2 specifies the default column names used to read tree data from an input database, as well as the data type for each column. It also specifies the units in which data should be recorded.

The variable names are not important for most users, as they refer to the variables used in the source code from which FVS is built. However, they are valuable here because they are included in parentheses in the tree data descriptions in the previous section.

**Table 4-2** — Default format for database tree records used in the Forest Vegetation Simulator

| **Column Name** | **Variable**  **Name** | **Data Type** | **Units** |
| --- | --- | --- | --- |
| Stand\_CN |  | Char(40) | — |
| Stand\_ID |  | Integer or Char(26) | — |
| StandPlot\_CN |  | Char(40) | — |
| StandPlot\_ID |  | Integer or Char(26) | — |
| Plot\_ID | ITRE | Double | — |
| Tree\_ID | IDTREE2 | Double | — |
| Tree\_Count | PROB | Double | trees |
| History | ITH | Double | — |
| Species | ISP | Char(8) | — |
| DBH or Diameter | DBH | Double | inches |
| DG | DG | Double | inches |
| Ht | HT | Double | feet |
| HtG | HTG | Double | feet |
| HtTopK | THT | Double | feet |
| CrRatio | ICR | Double | — |
| Damage1 | IDCD(1) | Double | — |
| Severity1 | IDCD(2) | Double | — |
| Damage2 | IDCD(3) | Double | — |
| Severity2 | IDCD(4) | Double | — |
| Damage3 | IDCD(5) | Double | — |
| Severity3 | IDCD(6) | Double | — |
| TreeValue | IMC | Double | — |
| Prescription | IPRSC | Double | — |
| Age | ABIRTH | Double | — |
| Slope | IPVARS(1) | Integer | percent |
| Aspect | IPVARS(2) | Integer | code |
| PV\_Code or Habitat | IPVARS(3) | Integer or Char(10) | code |
| TopoCode | IPVARS(4) | Double | code |
| SitePrep | IPVARS(5) | Double | code |
| Cull | RCULL | Double | percent |
| Decay code | IDECAY | Integer | code |
| Woodland stem count | IWDLDSTMS | Integer | — |

2 The variable IDTREE is a concatenation of plot ID and tree ID.

#### 4.2.2.2 Tree Input Data Records in Text Format

Prior to the development of the database extension, the most common format for tree data input was ASCII text files. This format can still be used, but care must be taken to ensure the spacing of the data exactly matches what is expected.

Figure 4-3 shows the sample tree records for the inventory of S248112. These records are organized in accordance with the default format (table 4-3). Table 4-3 also specifies the units in which data should be recorded and indicates the precision of the data to which the models were fitted. It should be noted that several of the variables have implied decimal places, which means if there is no decimal point in the data for that variable, FVS will assume there should be one and will insert one before the last digit. For example, DBH has one implied decimal place, so a DBH value of 45 is read in as 4.5.

![Image of sample tree records. The ruler at the top is shown only to identify column designations, and is not included with tree records. Shading has been included to help identify the different variables.](data:image/jpeg;base64...)

**Figure 4-3** — Sample tree records. The ruler at the top is shown only to identify column designations, and is not included with tree records. Shading has been included to help identify the different variables, as described in table 4-3.

**Table 4-3** — Default format for text-based tree records used in the Forest Vegetation Simulator

| **Variable** | **Variable**  **Name** | **Variable Type** | **Column(s)** | **Units** | **Implied decimal places1** |
| --- | --- | --- | --- | --- | --- |
| Plot ID | ITRE | integer | 1-4 | — | — |
| Tree ID | IDTREE2 | integer | 5-7 | — | — |
| Tree count | PROB | integer | 8-13 | trees | 0 |
| Tree history | ITH | integer | 14 | — | — |
| Species | ISP | alphanumeric | 15-17 | — | — |
| Diameter at breast height | DBH | real | 18-21 | inches | 1 |
| DBH increment | DG | real | 22-24 | inches | 1 |
| Live height | HT | real | 25-27 | feet | 0 |
| Height to top-kill | THT | real | 28-30 | feet | 0 |
| Height increment | HTG | real | 31-34 | feet | 1 |
| Crown ratio code | ICR | integer | 35 | — | — |
| Damage code | IDCD(1) | integer | 36-37 | — | — |
| Severity code | IDCD(2) | integer | 38-39 | — | — |
| Damage code | IDCD(3) | integer | 40-41 | — | — |
| Severity code | IDCD(4) | integer | 42-43 | — | — |
| Damage code | IDCD(5) | integer | 44-45 | — | — |
| Severity code | IDCD(6) | integer | 46-47 | — | — |
| Tree value class | IMC | integer | 48 | — | — |
| Prescription code | IPRSC | integer | 49 | — | — |
| Plot slope | IPVARS(1) | integer | 50-51 | percent | — |
| Plot aspect | IPVARS(2) | integer | 52-54 | code | — |
| Plot habitat type | IPVARS(3) | integer | 55-57 | code | — |
| Plot topographic position | IPVARS(4) | integer | 58 | code | — |
| Plot site preparation | IPVARS(5) | integer | 59 | code | — |
| Tree age | ABIRTH | real | 60-62 | years | 0 |

1 For example, DBH has one implied decimal place, therefore a DBH coded 45 indicates 4.5 inches. If a decimal point is included, the value is read as specified. The number of implied decimal places indicates the precision of the data to which the models were fitted. A dash (—) indicates that the entry is treated as an integer or alphanumeric variable, and no decimal point should be included, or implied, in the field.

2 The variable IDTREE contains the value in columns 1 through 7, so it is a concatenation of plot ID and tree ID.

#### 4.2.2.3 Stand Input Data Records

The database extension can be used to read stand data directly from a database. The database extension keyword DSNIN specifies the input database, and STANDSQL is used to initialize the FVS stand information. Refer to the Users Guide to the Database Extension (Crookston et al. 2003) for additional information. Table 4-4 specifies the default column names used to read stand data from an input database, as well as the data type for each column. It also specifies the units in which data should be recorded.

**Table 4-4** — Default format for database stand records used in the Forest Vegetation Simulator

| **Column Name** | **Data Type** | **Units** |
| --- | --- | --- |
| Stand\_CN | Char(40) | — |
| Stand\_ID | Integer or Char(26) | — |
| StandPlot\_CN | Char(40) | — |
| Plot\_ID | Double | — |
| StandPlot\_ID | Integer or Char(26) | — |
| Variant | Char\* | — |
| Inv\_Year | Integer | year |
| Groups | Char\* | — |
| AddFiles | Char\* | — |
| FVSKeywords | Char\* | — |
| Latitude | Double | degrees |
| Longitude | Double | degrees |
| Region | Integer | — |
| Forest | Integer | — |
| District | Integer | — |
| Compartment | Integer | — |
| Location | Integer | code |
| Ecoregion | Char(6) | code |
| PV\_Code or Habitat | Integer or Char(10) | code |
| PV\_Ref\_Code | Integer | code |
| Age | Integer | years |
| Aspect | Double | degrees |
| Slope | Double | percent |
| Elevation | Double | 100s of feet |
| ElevFt | Double | feet |
| Basal\_Area\_Factor | Double | — |
| Inv\_Plot\_Size | Double | 1/acre |
| Brk\_DBH | Double | inches |
| Num\_Plots | Integer | — |
| NonStk\_Plots | Integer | — |
| Sam\_Wt | Double | acres |
| Stk\_Pcnt | Double | percent |
| DG\_Trans | Integer | code |
| DG\_Measure | Integer | years |
| HTG\_Trans | Integer | code |
| HTG\_Measure | Integer | years |
| Mort\_Measure | Integer | years |
| Max\_BA | Double | ft2/acre |
| Max\_SDI | Double | — |
| Site\_Species | Integer or Char(8) | code |
| Site\_Index | Double | — |
| Model\_Type | Integer | code |
| Physio\_Region | Integer | code |
| Forest\_Type | Integer | code |
| State | Integer | code |
| County | Integer | code |
| Fuel\_Model | Integer | tons/acre |
| Fuel\_0\_25\_H or Fuel\_0\_25 | Double | tons/acre |
| Fuel\_25\_1\_H or Fuel\_25\_1 | Double | tons/acre |
| Fuel\_0\_1 | Double | tons/acre |
| Fuel\_1\_3\_H or Fuel\_1\_3 | Double | tons/acre |
| Fuel\_3\_6\_H or Fuel\_3\_6 | Double | tons/acre |
| Fuel\_6\_12\_H or Fuel\_6\_12 | Double | tons/acre |
| Fuel\_12\_20\_H or Fuel\_12\_20 or Fuel\_gt\_12 | Double | tons/acre |
| Fuel\_20\_35\_H or Fuel\_20\_35 | Double | tons/acre |
| Fuel\_35\_50\_H or Fuel\_35\_50 | Double | tons/acre |
| Fuel\_gt\_50\_H or Fuel\_gt\_50 | Double | tons/acre |
| Fuel\_0\_25\_S | Double | tons/acre |
| Fuel\_25\_1\_S | Double | tons/acre |
| Fuel\_1\_3\_S | Double | tons/acre |
| Fuel\_3\_6\_S | Double | tons/acre |
| Fuel\_6\_12\_S | Double | tons/acre |
| Fuel\_12\_20\_S | Double | tons/acre |
| Fuel\_20\_35\_S | Double | tons/acre |
| Fuel\_35\_50\_S | Double | tons/acre |
| Fuel\_gt\_50\_S | Double | tons/acre |
| Fuel\_Litter | Double | tons/acre |
| Fuel\_Duff | Double | tons/acre |
| Photo\_Ref | Integer | code |
| Photo\_Code | Char(13) | code |
| Stand Origin Code | Integer | code |

Although FVS can read stand input data from a database, it is not able to directly read stand input data from a text file. The retired Suppose GUI was able to read stand-level data from an input text file known as the Stand List File. In order to be used with the current FVS GUI, the Stand List File contents would need to be converted into the database format shown in table 4.4.

### 4.2.3 Keywords Controlling Data Input

If tree data input records are being read from a database or text file coded in the default format, with default species codes, coded crown ratio values, growth data consistent with the period lengths used to fit the models, and all data records contained in one file, then this section can be skimmed through. However, this is sometimes not the case. This section discusses keyword records that handle different tree data input situations.

#### 4.2.3.1 Reading the Tree Input Data Records

Several options are available for entering tree records. Only those available universally are discussed here.

For text input, tree records are read when TREEDATA is encountered, or when PROCESS is encountered if no TREEDATA record has been previously found. The tree records are read from the dataset[[2]](#footnote-2) referenced by the number that is specified in first parameter field on the TREEDATA record.

One option is to enter the tree records as supplemental data records for the TREEDATA keyword record. In this case, the dataset reference number (field 1) should be assigned the logical unit number for record input at the computer installation (logical unit 15 on most systems) and a special record containing the data value –999 must be added to the end of the tree record file. The example tree records could be inserted into the keyword record file as follows:

TREEDATA 15.0

0101 1 11LP 115 10 73 4 0 0 0 0 0 011

0102 2 11WH 65 23 30 8 0 0 0 0 0 011

[some records not displayed to conserve space]

0111 30 11GF 64 14 30 7 0 0 0 0 0 011

-999

The second option is to store the tree input data records in an independent text file and read the records directly from that file. This is accomplished with an OPEN keyword record in conjunction with the TREEDATA keyword record. The OPEN keyword record requests that an external file be opened. Five parameter fields and a supplemental record are associated with the OPEN keyword record.

The first parameter field of the OPEN keyword record specifies a file reference number to be used in opening the file. The supplemental record specifies a file name to be associated with the file reference number. For example, assume the tree data input records are stored in a file called S248112.DAT and the user wants to use those records in a simulation. The following keyword records would accomplish this:

OPEN 50

S248112.DAT

TREEDATA 50

The OPEN keyword tells FVS to open the file S248112.DAT and associate it with the file reference number 50. The TREEDATA keyword tells FVS to read the tree input data records from the file referenced by file reference number 50 (i.e., S248112.DAT).

The last tree record input option involves merging tree record files from different sources to form a single data file for projection. In this case, a TREEDATA record and an OPEN keyword record (or job control statement if running on a main-frame computer) for each file are required. For example, to merge the example stand (as illustrated above) with two other stands whose data are stored in the files STAND1.DAT and STAND2.DAT, the keyword record file might look like:

TREEDATA 15.0

0101 1 11LP 115 10 73 4 0 0 0 0 0 011

0102 2 11WH 65 23 30 8 0 0 0 0 0 011

[some records not displayed to conserve space]

0111 30 11GF 64 14 30 7 0 0 0 0 0 011

-999

OPEN 52

STAND2.DAT

TREEDATA 52

OPEN 52

STAND2.DAT

TREEDATA 52

In this example, the two additional stands are read from units 51 and 52, representing files STAND1.DAT and STAND2.DAT respectively. Data on the DESIGN and STDINFOkeyword records must reflect the composite characteristics of the merged stand. The input format can be changed between files using the TREEFMT keyword record, and the plot identifications (ITRE variable) are considered unique even if they have the same values in the two files.

An additional feature of the TREEDATA keyword allows users to screen data as they are read into the model. A species and diameter range can be entered using parameters on the keyword and the screening feature operates exactly as discussed below for the DATASCRN keyword. A data screen entered using fields on the TREEDATA keyword supersedes any existing data screen entered with the DATASCRN keyword. The ability to enter a data screen using the TREEDATA keyword is being phased out and users are encouraged to use the DATASCRN keyword instead.

The DATASCRN keyword can be used to screen data as they are read into the model. A species or species group, and a diameter range can be entered using parameters on the keyword. Users wanting to screen out more than one species should create a species group using the SPGROUP keyword and apply the screen to the group; multiple DATASCRN keywords are not allowed. Any tree record of the specified species, or in the specified species group, with a diameter that falls within this diameter range (greater than or equal to the lower diameter and less than the upper diameter) is read; all records with species other than the specified species, or those contained in the species group, will be read; and any tree record of the specified species, or in the specified species group, with a diameter outside this range (less than the lower diameter or greater than or equal to the upper diameter) is ignored. This feature is useful to screen excess numbers of seedlings out of the input data, but should only be used with care since the FVS model generally applies to the entire stand. The DATASCRN keyword must precede any TREEDATA keyword to which it applies. Also the SPGROUP keyword must precede any DATASCRN keyword using the defined species group name.

The third option is to store the tree input data records in a database and use the Database Extension to read the records directly from that file. For a discussion about reading input from a database, refer to the Users Guide to the Database Extension (Crookston et al. 2003), particularly sections describing use of the DSNIN and TREESQL keywords.

#### 4.2.3.2 Changing the Data Format Specification

The default tree record format for text-based tree records was illustrated in figure 4-3 and shown in table 4-3. However, the user’s inventory records may be formatted differently. In this case, it may not be necessary to modify the records prior to using the Forest Vegetation Simulator. If the essential variables have been measured and recorded, the FVS input format can be altered using the TREEFMT record. This record must be inserted in the keyword record file prior to the TREEDATA record. This is necessary so that FVS knows how to read the data before it actually tries to read them. Otherwise, it will read the input variables from the wrong fields or with the wrong specifications.

The TREEFMT record does not use any parameter fields but requires two sup­plemental data records containing a FORTRAN format statement that describes the tree records. Both supplemental data records must immediately follow TREEFMT even though one may be blank. For example, the following keyword records describe the default format.

TREEFMT

(I4,T1,I7,F6.0,I1,A3,F4.1,F3.1,2F3.0,F4.1,I1,

6I2,2I1,I2,2I3,2I1,F3.0)

#### 4.2.3.3 Changing the Species Codes

The tree records do not necessarily need to be modified when the species codes in the tree record file are different from the codes given in the variant overview document for the particular geographic variant being used. The way in which FVS inter­prets species codes can be changed instead. This change is accomplished with the SPCODES record. If a single species code is to be changed, the SPCODESrecord requires one parameter field to indicate the species for which the code is being replaced. This is followed by a single supplemental record, which contains the replacement species code in columns one through four. The SPCODES keyword record must precede the TREEDATA record in the keyword sequence.

For example, the following keyword records would change the species code for lodgepole pine in the Inland Empire variant (the seventh species listed in table 4-1) to LPP.

SPCODES 7

LPP

If all species codes are to be replaced, field 1 on the SPCODES keyword record is left blank. The new species codes are entered on supplemental data records according to the species sequence number in the variant. For example, if the data file contained the FVS sequence number (the third column of table 4-1), the records needed to replace the species codes in the Inland Empire variant could be entered as follows:

SPCODES

1 2 3 4 5 6 7 8 9 10 …

In the above example, the spacing is important. Each code must be confined to a 4-character-wide field, and the fields must be arranged consecutively on the supplemental record. If the variant contains more than 20 species codes additional supplemental records are included. If the variant has sequence numbers with no associated species, then those fields should be left blank. Note also that each species can be represented by one and only one code within a tree record file.

#### 4.2.3.4 Interpreting Growth Increment Data

The final aspect to consider with regard to the tree records is the interpretation of the periodic growth data. The projection always begins with the heights and diameters that were read as the variables HT and DBH. These variables should be measured at the same point in time. The Forest Vegetation Simulator routinely assumes that DBH is a current outside bark diameter and that DG is an estimate of past inside bark diameter increment (usually based on a 10-year period, but variant specific). Similar­ly, HT is assumed to be current height and HTG is an estimate of past height incre­ment (usually based on a 5-year period, but variant specific). These interpretations can be altered with the GROWTH record. The GROWTH record is also used to define the length of the period over which current mortality (tree history codes 6 and 7) was observed. The mortality observation period is assumed to be 5 years in length.

As was described earlier, increment estimates can be either directly measured or computed as the difference between two successive diameter or height measurements. Furthermore, the values for DBH and HT can describe the tree at either the start or the end of the growth period. Consequently, there are four possible measurement method codes, which are coded in fields 1 and/or 3 as follows:

0 Measurement made at the end of the growth measurement period. Increment measured directly and represents previous growth.

1 Measurement made at the end of the growth measurement period. A DBH or HT measurement made at the beginning of the growth measurement period is input as DG or HTG and increment is computed by subtraction.

2 Measurement made at the beginning of the growth measurement period. Increment measured directly and represents subsequent growth.

3 Measurement made at the beginning of the growth measurement period. A DBH or HT measurement made at the end of the growth measurement period is input as DG or HTG and increment is computed by subtraction.

If the FVSSTAND keyword record is used along with GROWTH measurement method 1 or 3, the GROWTH keyword record must precede the TREEDATA keyword record in the keyword sequence. This is necessary so past diameters and heights can be stored and passed correctly.

### 4.2.4 Special Input Features

Some FVS applications require the repeated use of a set of keyword records. For example, when the same form and defect correction factors or multipliers are used for a large number of projections, the associated keyword records must be entered with each projection. As an alternative, keyword records that are used frequently can be stored in an auxiliary file. This auxiliary file can then be opened using the OPEN keyword and accessed using an ADDFILE record in each projec­tion.

For example, assume some keywords specifying an uneven-aged management alternative are stored in an auxiliary file named “uneven.key”. The following keyword sequence could be used to access this file:

OPEN 40

UNEVEN.KEY

ADDFILE 40

Keyword records stored in the external file are brought into the keyword set at the point the ADDFILE record occurs. They are listed in the main FVS output file in the section that shows the keyword records that were read. The ADDFILE usually may be inserted anywhere prior to the PROCESS keyword record. Users should be mindful, however, of the implications relating to keyword order. For example, if a TREEFMT keyword record was stored in an external file and an ADDFILE keyword record referenced the external file, the ADDFILE keyword record must precede any TREEDATA keyword record in the keyword record set.

When a file is opened for data input (see section 4.2.3.1) or in association with an auxiliary keyword set (shown above), it is a good idea to close it. Beyond being tidy, this makes the unit number available to be used again at a different point in the keyword sequence. So a more complete sequence for accessing an auxiliary file would be as follows:

OPEN 40

UNEVEN.KEY

ADDFILE 40

CLOSE 40

Note that it is possible to include additional ADDFILE keywords within the external file (i.e., an ADDFILE within an ADDFILE is permitted), but that a different file reference number needs to be used at each “level” within the nested statements. The second parameter in the CLOSE keyword refers to the reference number for the calling or parent keyword file, from which keyword reading will continue. For example, if the “uneven.key” auxiliary file included instructions to open an additional auxiliary file called “defect.key,” the keyword set in “uneven.key” could look like this:

OPEN 41

DEFECT.KEY

ADDFILE 41

CLOSE 41 40

These stored keyword sets can represent very complex management scenarios and potentially be very large. Once they are proven to be error free, users may not want them listed in the main FVS output file as they are read. The NOECHO and ECHO keywords turn off and back on, respectively, the listing of keyword records to the FVS main output file. Including these two keywords as the first and last keyword records in the auxiliary file UNEVEN.KEY would accomplish this result.

If multiple projections are included in a single keyword set, the auxiliary keyword record file or tree record file may be re-entered without providing additional OPEN keyword records. To accomplish this use the REWIND keyword record to reposition the access point at the beginning of the specified file, and then include another ADDFILE or TREEDATA keyword record to access that file another time.

The REWIND keyword record must precede the associated ADDFILE or TREEDATA keyword records in any projection where a tree record file or auxiliary keyword record file are reread. In addition, a CLOSE keyword record should not be used when using the rewind feature, because the file needs to be open at the time the ADDFILE or TREEDATA keyword records are read by FVS.

Another keyword that is available, but seldom used, is the ENDFILE keyword record. This keyword record acts as an end-of-file to terminate writing of an output file. This keyword is only used when running FVS on mainframe computer systems while using computer tapes. It directs a “tape mark” to be written to the tape.

### 4.2.5 Defining Species Groups

Some FVS applications apply to more than one species in a stand, but not all species. Rather than repeating a set of keyword records for each species, it is possible to define a species group and use one set of keyword records that applies to all species in the group. Species groups are defined using the SPGROUP keyword record, which specifies the group name, followed by a supplemental record containing the FVS alpha code or sequence number (see section 4.2.1 and table 4-1) for each species contained in the group. Species codes are entered in free-form format on the supplemental record and are separated by one or more blank characters. Up to 150 characters can be specified on a single supplemental record. Species codes can be continued onto other supplemental records by inclusion of the “&” character at the end of a record, which signals FVS to continue reading species codes from the next supplemental record. The SPGROUP keyword record must precede any other keyword record that references the species group. Once a species group is defined, subsequent management action keyword records or Event Monitor functions referencing the species group will pertain to all species in the group.

In FVS, users can define up to 10 species groups. Each species group can contain up to 50 species codes. The species group name must be between 3 and 10 characters long, cannot contain any imbedded blanks, and cannot be “ALL” or the name of any pre-defined Event Monitor variable or function (section 5.5.2.2). Individual species may be contained in more than one group.

When using keyword records in FVS, species can be referenced by their 2-character alpha designation or numeric sequence number. Similarly, species groups can be referenced by their group name or FVS numeric sequence number. FVS numeric sequence numbers for species groups are assigned within FVS sequentially beginning with -1 and continuing to -10. However, users are encouraged to use the group name when referencing species groups and not the assigned FVS sequence number to facilitate clarity and avoid potential problems when SPGROUP keyword records contain errors upon keyword input.

The following example illustrates the use of species groups. For the NI variant, define a species group named BIGFOOT containing Douglas-fir, lodgepole pine, and ponderosa pine. The keyword records required are:

SPGROUP BIGFOOT

DF LP PP

Subsequent keyword records or Event Monitor functions referencing BIGFOOT in the species field would apply to all three of these species.

### 4.2.6 Setting the Point Reference for a Simulation

Plot, or inventory point, numbers are read from the tree input data records (variable ITRE; see section 4.2.1). As FVS reads a tree data input file, it keeps track of the point numbers as they appear in the input data, and keeps track of the sequential order in which they appeared in the input data. The point numbers that appear in the data can be any integer number; the FVS sequential point number ranges from 1 to the number of unique inventory points in the stand. An inventory point cross reference table listing the association between the point number as read from the tree input records and the FVS sequential point number appears at the end of the Options Selected by Default section of the main FVS output file. An example of this is shown in section 4.3.1.

Users have the ability to have some keyword actions and event monitor functions apply to an individual point basis. In these cases, FVS needs to know if the point number specified on the keyword or in the event monitor function is the inventory point number as read in the input data, or if it’s the sequential point number assigned by FVS as it read the input data. The POINTREF keyword record is used to make this distinction. By default FVS will expect the point numbers to be specified as they appeared in the input data. The danger of using the sequential point number is that this could be different from run to run for the same stand if the tree records appeared in a different order in the tree data input file in the different runs.

### 4.2.7 Defining Point Groups

Keyword actions and event monitor functions that apply to an individual point may also be applied to more than one inventory point. Rather than repeating a set of keyword records for each point, it is possible to define a point group and use one set of keyword records that applies to all points in the group. Point groups are defined using the POINTGRP keyword record, which specifies the group name followed by a supplemental record containing the input point number or FVS sequence number (see section 4.2.1), as specified on the POINTREF keyword record, for each point contained in the group. By default FVS will expect the point numbers to be specified as they appeared in the input data. Point numbers are entered in free-form format on the supplemental record and are separated by one or more blank characters. Up to 150 characters can be specified on a single supplemental record. Group codes can be continued onto other supplemental records by inclusion of the “&” character at the end of a record, which signals FVS to continue reading point numbers from the next supplemental record. The POINTGRP keyword record must precede any other keyword record that references the point group. Once a point group is defined, subsequent management action keyword records or Event Monitor functions referencing the point group will pertain to all points in the group.

In FVS, users can define up to 30 point groups. Each point group can contain up to 50 point numbers. The point group name must be between 3 and 10 characters long, cannot contain any imbedded blanks, and cannot be “ALL” or the name of any pre-defined Event Monitor variable or function (section 5.5.2.2). Individual points may be contained in more than one group.

When using keyword records in FVS, points can be referenced by their point number as designated in the input data, or by their numeric sequence number. Similarly, point groups can be referenced by their group name or FVS numeric sequence number. FVS numeric sequence numbers for point groups are assigned within FVS sequentially beginning with -1 and continuing to -30. However, users are encouraged to use the group name when referencing point groups and not the assigned FVS sequence number to facilitate clarity and avoid potential problems when POINTGRP keyword records contain errors upon keyword input.

The following example illustrates the use of point groups. For the IE variant, define a point group named MYPOINTS containing points 3, 46, and 102. The keyword records required are:

POINTGRP MYPOINTS

3 46 102

Subsequent keyword records or Event Monitor functions referencing MYPOINTS in the point field would apply to all three of these points.

## 4.3 Interpreting FVS Model Output

This section describes the main FVS output file in detail. It begins with a brief overview of the entire file. A detailed discussion of the various tables in the file begins with section 4.3.1.1 following the example output file in section 4.3.1.

When a projection begins, the keyword record file is processed and an activity schedule is prepared. The tree records are then checked for missing data and the growth models are calibrated based on the input increment data. The results of these activities are displayed in the first several sections of the main output file: the Options Selected by Input section, the Options Selected by Default section, the Activity Schedule, and the Calibration Statistics section. These are sometimes collectively referred to as the Input Summary Table.

As activities in the activity schedule are simulated, three additional output tables are prepared. These are the Stand Composition Table, the Sample Tree and Stand Attributes Table, and the Summary Statistics Table.

The first of these, the Stand Composition Table, displays the distribu­tions of important stand attributes relative to DBH and species. At each cycle endpoint, per acre distributions of trees and total cubic foot volume are described. In addition, total stand volume is displayed for two different utilization standards. Simulated removals are described with the same statistics, and the distribution of trees in the residual stand is then given. Development of the stand is shown by the distributions of volume accretion and volume mortality.

The Sample Tree and Stand Attributes Table displays the develop­ment of individual trees within the stand. In this table, the attributes of six trees are displayed along with several statistics that describe the stand conditions. The sample trees represent a cross section of the population of trees within the stand and the same trees are usually displayed each cycle. New sample trees are selected if regeneration, thinning, or tree record compression occurs since these events change the stand composition. The stand is described with an age estimate, three density statistics (basal area, crown competition factor, and trees per acre), estimates of average DBH, and average dominant height.

The next table in the main output file is the Summary Statistics Table. This table displays a summary of stand development and management activity. This table repeats stand statistics from the previous tables in a concise yield table format with one line allotted to each date in the activity schedule.

If any activities were scheduled, an Activity Summary is printed after the Summary Statistics Table. It displays the disposition of management activities throughout the simulation. This summary contains valuable information on which activities were dynamically scheduled, which were accomplished, and which were deleted or cancelled.

Following the Activity Summary, Regeneration Tables will appear in the main output file when any regeneration occurs during the simulation. This is a series of tables that describe the species, trees per acre, and average height of any regeneration occurring in the stand throughout the simulation.

An optional Statistics Table can be selected by using the STATS keyword record (see section 4.3.2.1). This table will appear in the main output file right after the Calibration Statistics Table, and just before the Stand Composition Table. This optional table displays a statistical description of the input (inventory) data. It includes volumes, trees per acre, and basal area for each species in the stand. The mean, standard deviation, coefficient of variation, and confidence limits across sample plots are also included for stand totals of these volume and density measures.

Other optional tables will appear in the main output file when using FVS extensions such as the Fire and Fuels Extension, the Cover extension, or the various extensions dealing with insects and pathogens.

Using appropriate keyword records, the following additional optional output files can be generated:

* The Summary Statistics Table may be copied to a file by using the ECHOSUM keyword record (see section 4.3.3.2).
* A file showing the at­tributes of all tree records in the simulation at cycle endpoints can be generated using the TREELIST keyword record (see section 4.3.3.1). Similar information for harvested trees is generated in the same file using the CUTLIST keyword record.
* A file containing large-tree diameter growth and small-tree height growth calibration statistics for all stands in a run can be generated using the CALBSTAT keyword record (see section 4.3.3.3).
* A file containing data necessary to run the FVS-Stand post-processor that builds additional stand and stock tables can be generated using the FVSSTAND keyword record (see section 4.3.3.5).
* A file containing data necessary to run the Cheapo economics model can be built using the CHEAPO keyword record (see section 8.1).
* A set of files containing the data necessary to run the Stand Visualization System program that produces a visual rendering of how the stand might look can be generated using the SVS keyword record (see section 5.7).
* A file containing data necessary to run the National Cruise processing program can be generated using the CRUZFILE keyword record (see section 4.3.3.6).

### 4.3.1 The Main FVS Output File

The following pages contain an example output file generated with the example keyword set shown in figure 4-1, the example data file shown in figure 4-3, and the Inland Empire geographic variant of the Forest Vegetation Simulator with a revision date of 07.15.2013. A detailed discussion of various tables in the file begins with section 4.3.1 following the example.

Historically, the intent was to report variables of two types: (1) biological based variables that affect forest growth, and (2) commodity based variables. As a result, there are two types of tables reported from the FVS model: (1) the biologically based tables which reflect stand conditions on the stockable area only (Stand Composition Table, Tree and Stand Attributes Table, Structural Statistics Table, and reports from the fire, cover, and regeneration establishment extensions), and (2) the commodity based tables and files which reflect stand conditions on the total stand area (Summary Statistics Table, Treelist Output file, FVSSTAND file, and Stand Visualization file).

As an illustration of the impact of stockable area, let's assume a 100-acre stand has a nonstockable area (like a rock quarry) covering 25 acres. Calculations based on total area will use 100 acres while calculations based on stockable area will use 75 acres. If there are 6000 trees in this stand, the trees-per-acre value reported in the Stand Composition Table (based on stockable area) will be 80 while the value reported in the Summary Statistics Table (based on total area) will be 60. For tree growth in the forest, the value of 80 is more relevant. For commodities per total unit of ground, the value of 60 may be more important.

Some of the tables written to the main output file are also able to be output directly to a database. Where this is possible, a notation has been made in the description. But the content of the output database tables is essentially identical to the content in the main output file, so the descriptions are valid for both types of output file.

FOREST VEGETATION SIMULATOR VERSION 0979 -- INLAND EMPIRE EXPANDED RV:07/15/13 08-14-2013 14:27:29

----------------------------------------------------------------------------------------------------------------------------------

OPTIONS SELECTED BY INPUT

KEYWORD FILE NAME: efvsbasic.key

----------------------------------------------------------------------------------------------------------------------------------

KEYWORD PARAMETERS:

-------- -----------------------------------------------------------------------------------------------------------------------

STDIDENT

STAND ID= S248112 SHELTERWOOD PRESCRIPTION FOR THE USER'S MANUAL

\*

COMMENT

THE PRESCRIPTION CALLS FOR:

IMMEDIATE REMOVAL OF EXCESS TREES,

A COMMERCIAL THINNING AT AGE 90 TO REMOVE LODGEPOLE AND LARCH,

A SHELTERWOOD REGENERATION TREATMENT AT AGE 120 FAVORING

GRAND FIR AND DOUGLAS-FIR, AND

AN OVERWOOD REMOVAL AT AGE 130, REMOVING ALL TREES OVER 3" DBH

END

\*

DESIGN BASAL AREA FACTOR= 40.0; INVERSE OF FIXED PLOT AREA= 300.0; BREAK DBH= 5.0

NUMBER OF PLOTS= 11; NON-STOCKABLE PLOTS= 1; STAND SAMPLING WEIGHT= 11.00000

PROPORTION OF STAND CONSIDERED STOCKABLE= 0.909

SEE "OPTIONS SELECTED BY DEFAULT" FOR FINAL DESIGN VALUES.

HABITAT TYPE WILL BE MAPPED TO 570 FOR THIS PROJECTION.

STDINFO FOREST-LOCATION CODE= 118; HABITAT TYPE=570; AGE= 60; ASPECT AZIMUTH IN DEGREES= 315.; SLOPE= 30.%

ELEVATION(100'S FEET)= 34.0; REFERENCE CODE=

\*

INVYEAR INVENTORY YEAR= 1990

NUMCYCLE NUMBER OF CYCLES= 10

\*

THINPRSC DATE/CYCLE= 1990; PROPORTION OF SELECTED TREES REMOVED= 0.999

\*

SPECPREF DATE/CYCLE= 2020; SPECIES= WL (CODE= 2); THINNING SELECTION PRIORITY= 999.

SPECPREF DATE/CYCLE= 2020; SPECIES= LP (CODE= 7); THINNING SELECTION PRIORITY= 9999.

THINBTA DATE/CYCLE= 2020; RESIDUAL= 157.00; PROPORTION OF SELECTED TREES REMOVED= 1.000

DBH OF REMOVED TREES WILL RANGE FROM 0.0 TO 999.0 INCHES, AND

HEIGHT OF REMOVED TREES WILL RANGE FROM 0.0 TO 999.0 FEET.

\*

SPECPREF DATE/CYCLE= 2050; SPECIES= DF (CODE= 3); THINNING SELECTION PRIORITY= -999.

SPECPREF DATE/CYCLE= 2050; SPECIES= GF (CODE= 4); THINNING SELECTION PRIORITY= -99.

THINBTA DATE/CYCLE= 2050; RESIDUAL= 35.00; PROPORTION OF SELECTED TREES REMOVED= 1.000

DBH OF REMOVED TREES WILL RANGE FROM 0.0 TO 999.0 INCHES, AND

HEIGHT OF REMOVED TREES WILL RANGE FROM 0.0 TO 999.0 FEET.

\*

THINDBH DATE/CYCLE= 2060; MINIMUM DBH= 3.0; MAXIMUM DBH= 999.0; PROPORTION OF SELECTED TREES REMOVED= 1.000

ALL SPECIES (CODE= 0) ARE TARGETED FOR THIS CUT.

\*

TREELIST DATE/CYCLE= 1; DATA SET REFERENCE NUMBER = 3.; HEADING SUPPRESSION CODE = 0.

(0=WITH HEADING, OTHER VALUES=SUPPRESS HEADING).

PROCESS PROCESS THE STAND.

NOTE: INPUT SPECIES CODE (L )WAS SET TO (WL ) FOR THIS PROJECTION.

NOTE: INPUT SPECIES CODE (C )WAS SET TO (RC ) FOR THIS PROJECTION.

----------------------------------------------------------------------------------------------------------------------------------

OPTIONS SELECTED BY DEFAULT

----------------------------------------------------------------------------------------------------------------------------------

TREEFMT (I4,T1,I7,F6.0,I1,A3,F4.1,F3.1,2F3.0,F4.1,I1,3(I2,I2),2I1,I2,2I3,2I1,F3.0)

DESIGN BASAL AREA FACTOR= 40.0; INVERSE OF FIXED PLOT AREA= 300.0; BREAK DBH= 5.0

NUMBER OF PLOTS= 11; NON-STOCKABLE PLOTS= 1; STAND SAMPLING WEIGHT= 11.00000

PROPORTION OF STAND CONSIDERED STOCKABLE= 0.909

STAND ATTRIBUTES ARE CALCULATED PER ACRE OF STOCKABLE AREA. STAND STATISTICS

IN SUMMARY TABLE ARE MULTIPLIED BY 0.909 TO INCLUDE TOTAL STAND AREA.

STDINFO FOREST-LOCATION CODE= 118; HABITAT TYPE=570; AGE= 60; ASPECT AZIMUTH IN DEGREES= 315.; SLOPE= 30.%

ELEVATION(100'S FEET)= 34.0; REFERENCE CODE=

SPECIES WP WL DF GF WH RC LP ES AF PP OT

SDI MAX 841. 841. 841. 841. 841. 841. 841. 841. 841. 841. 841.

NATIONAL VOLUME ESTIMATOR LIBRARY EQUATION NUMBERS

SPECIES CUBIC FOOT BOARD FOOT SPECIES CUBIC FOOT BOARD FOOT SPECIES CUBIC FOOT BOARD FOOT SPECIES CUBIC FOOT BOARD FOOT

------- ---------- ---------- ------- ---------- ---------- ------- ---------- ---------- ------- ---------- ----------

WP I00FW2W119 I00FW2W119 WL I00FW2W073 I00FW2W073 DF I00FW2W202 I00FW2W202 GF I00FW2W017 I00FW2W017

WH I00FW2W260 I00FW2W260 RC I00FW2W242 I00FW2W242 LP I00FW2W108 I00FW2W108 ES I00FW2W093 I00FW2W093

AF I00FW2W019 I00FW2W019 PP I00FW2W122 I00FW2W122 OT I00FW2W260 I00FW2W260

INVENTORY POINT CROSS REFERENCE (FVS SEQUENTIAL POINT NUMBER = POINT NUMBER AS ENTERED IN THE INPUT DATA):

1= 101; 2= 102; 3= 103; 4= 104; 5= 105; 6= 106; 7= 107; 8= 108; 9= 109

10= 110; 11= 111

----------------------------------------------------------------------------------------------------------------------------------

ACTIVITY SCHEDULE

STAND ID= S248112 MGMT ID= NONE SHELTERWOOD PRESCRIPTION FOR THE USER'S MANUAL

----------------------------------------------------------------------------------------------------------------------------------

CYCLE DATE EXTENSION KEYWORD DATE PARAMETERS:

----- ---- --------- -------- ---- ------------------------------------------------------------------------------------------

1 1990

BASE THINPRSC 1990 1.00

BASE TREELIST 1990 3.00 0.00

2 2000

3 2010

4 2020

BASE SPECPREF 2020 2.00 999.00

BASE SPECPREF 2020 7.00 9999.00

BASE THINBTA 2020 157.00 1.00 0.00 999.00 0.00 999.00

5 2030

6 2040

7 2050

BASE SPECPREF 2050 3.00 -999.00

BASE SPECPREF 2050 4.00 -99.00

BASE THINBTA 2050 35.00 1.00 0.00 999.00 0.00 999.00

8 2060

BASE THINDBH 2060 3.00 999.00 1.00 0.00 0.00 0.00

9 2070

10 2080

----------------------------------------------------------------------------------------------------------------------------------

CALIBRATION STATISTICS:

LP WH DF WL GF RC

---- ---- ---- ---- ---- ----

NUMBER OF RECORDS PER SPECIES 5 1 8 5 6 4

NUMBER OF RECORDS CODED AS RECENT MORTALITY 1 0 0 0 0 0

NUMBER OF RECORDS WITH MISSING HEIGHTS 1 0 0 1 0 0

NUMBER OF RECORDS WITH BROKEN OR DEAD TOPS 0 0 1 1 0 0

NUMBER OF RECORDS WITH MISSING CROWN RATIOS 0 0 0 0 0 0

NUMBER OF RECORDS AVAILABLE FOR SCALING

THE DIAMETER INCREMENT MODEL 3 1 4 3 5 2

RATIO OF STANDARD ERRORS

(INPUT DBH GROWTH DATA : MODEL) 1.00 1.00 1.00 1.00 1.10 1.00

WEIGHT GIVEN TO THE INPUT GROWTH DATA WHEN

DBH GROWTH MODEL SCALE FACTORS WERE COMPUTED 0.00 0.00 0.00 0.00 0.94 0.00

INITIAL SCALE FACTORS FOR THE

DBH INCREMENT MODEL 1.00 1.00 1.00 1.00 0.53 1.00

NUMBER OF RECORDS AVAILABLE FOR SCALING

THE SMALL TREE HEIGHT INCREMENT MODEL 0 0 3 0 0 1

INITIAL SCALE FACTORS FOR THE SMALL TREE

HEIGHT INCREMENT MODEL 1.00 1.00 1.00 1.00 1.00 1.00

NUMBER OF RECORDS WITH MISTLETOE 0 0 0 0 0 0

FOREST VEGETATION SIMULATOR VERSION 0979 -- INLAND EMPIRE EXPANDED RV:07/15/13 08-14-2013 14:27:30

STAND ID: S248112 MGMT ID: NONE SHELTERWOOD PRESCRIPTION FOR THE USER'S MANUAL

STAND COMPOSITION (BASED ON STOCKABLE AREA)

--------------------------------------------------------------------------------------------------------------------------

PERCENTILE POINTS IN THE

DISTRIBUTION OF STAND ATTRIBUTES BY DBH TOTAL/ACRE

STAND ----------------------------------------- OF STAND DISTRIBUTION OF STAND ATTRIBUTES BY

YEAR ATTRIBUTES 10 30 50 70 90 100 ATTRIBUTES SPECIES AND 3 USER-DEFINED SUBCLASSES

---- ----------- ------ ------ ------ ------ ------ ------ -------------- ------------------------------------------

(DBH IN INCHES)

1990 TREES 0.1 0.1 3.2 6.1 8.5 12.7 590. TREES 27.% DF2, 15.% GF2, 15.% GF1, 10.% RC2

VOLUME:

TOTAL 5.8 8.0 8.5 9.6 11.5 12.7 1843. CUFT 20.% LP1, 18.% GF1, 18.% WL1, 17.% DF1

MERCH 8.0 8.4 9.5 10.4 11.5 12.7 1214. CUFT 26.% LP1, 23.% WL1, 22.% DF1, 8.% GF1

MERCH 8.0 8.4 9.5 10.4 11.5 12.7 6386. BDFT 26.% WL1, 25.% LP1, 21.% DF1, 9.% WL2

REMOVAL 0.1 0.1 0.1 1.2 3.2 10.4 326. TREES 48.% DF2, 28.% GF2, 18.% RC2, 4.% WL2

VOLUME:

TOTAL 8.0 8.0 9.6 9.6 10.4 10.4 330. CUFT 35.% LP2, 33.% WL2, 27.% DF2, 5.% RC2

MERCH 8.0 8.0 9.6 9.6 10.4 10.4 260. CUFT 36.% LP2, 35.% WL2, 29.% DF2, 0.% ---

MERCH 8.0 8.0 9.6 9.6 10.4 10.4 1309. BDFT 44.% WL2, 30.% LP2, 26.% DF2, 0.% ---

RESIDUAL 4.0 5.3 6.2 7.9 9.5 12.7 264. TREES 33.% GF1, 19.% RC1, 19.% DF1, 13.% WL1

ACCRETION 5.3 6.2 7.9 9.4 10.9 12.7 92. CUFT/YR 27.% GF1, 22.% DF1, 16.% WL1, 12.% LP1

MORTALITY 6.1 7.9 8.4 9.5 11.5 12.7 15. CUFT/YR 36.% LP1, 32.% WL1, 19.% GF1, 10.% DF1

2000 TREES 0.1 0.1 0.1 0.1 7.7 15.6 1307. TREES 20.% GF1, 16.% GF2, 14.% WH2, 13.% WH1

VOLUME:

TOTAL 7.0 8.9 9.5 11.3 13.0 15.6 2287. CUFT 24.% GF1, 22.% DF1, 19.% LP1, 19.% WL1

MERCH 7.9 9.1 10.3 11.6 13.1 15.6 1727. CUFT 23.% DF1, 22.% LP1, 22.% WL1, 22.% GF1

MERCH 7.9 9.4 10.2 11.6 13.1 15.6 8657. BDFT 26.% WL1, 23.% DF1, 22.% LP1, 20.% GF1

ACCRETION 6.5 7.7 9.1 10.4 12.5 15.6 119. CUFT/YR 31.% GF1, 21.% DF1, 13.% WH1, 13.% WL1

MORTALITY 6.9 8.5 9.4 10.4 12.5 15.6 8. CUFT/YR 27.% WL1, 25.% GF1, 24.% LP1, 15.% DF1

2010 TREES 0.1 0.1 0.1 0.2 7.7 18.1 1855. TREES 19.% GF1, 14.% GF2, 13.% WH1, 13.% WH2

VOLUME:

TOTAL 8.2 9.8 11.1 12.9 14.7 18.1 3396. CUFT 27.% GF1, 22.% DF1, 16.% WL1, 15.% LP1

MERCH 8.6 10.2 11.2 13.0 14.8 18.1 2830. CUFT 26.% GF1, 21.% DF1, 18.% WL1, 16.% LP1

MERCH 8.5 10.1 11.2 13.1 14.8 18.1 14427. BDFT 26.% GF1, 22.% DF1, 19.% WL1, 17.% LP1

ACCRETION 7.7 9.4 10.6 12.2 14.3 18.1 140. CUFT/YR 30.% GF1, 22.% DF1, 17.% WH1, 11.% RC1

MORTALITY 7.8 9.8 10.5 11.8 14.3 18.1 13. CUFT/YR 26.% GF1, 22.% WL1, 19.% DF1, 19.% LP1

2020 TREES 0.1 0.2 0.3 0.7 10.5 20.0 1203. TREES 18.% GF1, 13.% RC2, 13.% WH1, 12.% WH2

VOLUME:

TOTAL 9.4 11.0 12.1 14.4 16.1 20.0 4669. CUFT 28.% GF1, 22.% DF1, 15.% WL1, 13.% LP1

MERCH 9.4 11.0 12.2 14.4 16.1 20.0 4041. CUFT 28.% GF1, 22.% DF1, 16.% WL1, 13.% LP1

MERCH 9.4 11.4 12.4 14.5 16.2 20.0 20367. BDFT 27.% GF1, 24.% DF1, 16.% WL1, 14.% LP1

REMOVAL 0.1 0.1 0.2 0.5 1.0 19.9 1046. TREES 15.% RC2, 14.% WH2, 14.% GF1, 14.% WH1

VOLUME:

TOTAL 9.7 11.0 11.6 12.4 14.3 19.9 1444. CUFT 48.% WL1, 42.% LP1, 6.% RC1, 3.% DF1

MERCH 10.5 11.4 11.6 12.4 14.3 19.9 1264. CUFT 50.% WL1, 43.% LP1, 5.% RC1, 1.% DF1

MERCH 10.5 11.5 11.7 12.5 14.3 19.9 6585. BDFT 51.% WL1, 43.% LP1, 4.% RC1, 2.% DF1

RESIDUAL 8.5 9.6 10.6 12.2 15.6 20.0 157. TREES 46.% GF1, 22.% DF1, 21.% RC1, 10.% WH1

ACCRETION 9.0 10.6 12.0 14.4 16.1 20.0 129. CUFT/YR 42.% GF1, 21.% DF1, 21.% WH1, 16.% RC1

MORTALITY 8.7 9.8 11.5 14.4 16.2 20.0 20. CUFT/YR 57.% GF1, 28.% DF1, 8.% WH1, 7.% RC1

2030 TREES 0.1 0.1 0.1 0.1 0.1 20.9 1678. TREES 15.% GF1, 15.% GF2, 13.% RC2, 13.% WH1

VOLUME:

TOTAL 10.6 12.9 14.6 16.6 18.0 20.9 4315. CUFT 40.% GF1, 28.% DF1, 19.% WH1, 14.% RC1

MERCH 10.6 13.0 15.0 16.7 18.0 20.9 3814. CUFT 40.% GF1, 28.% DF1, 19.% WH1, 12.% RC1

MERCH 10.6 13.1 15.4 17.2 18.2 20.9 19278. BDFT 40.% GF1, 30.% DF1, 20.% WH1, 10.% RC1

ACCRETION 10.6 12.3 13.7 16.6 18.0 20.9 150. CUFT/YR 42.% GF1, 22.% WH1, 20.% DF1, 16.% RC1

MORTALITY 10.3 11.9 13.7 16.6 18.0 20.9 13. CUFT/YR 43.% GF1, 28.% DF1, 17.% WH1, 13.% RC1

2040 TREES 0.1 0.1 0.1 0.1 0.3 22.9 1934. TREES 15.% GF1, 14.% WH1, 14.% RC2, 13.% GF2

VOLUME:

TOTAL 11.5 14.2 15.8 18.8 19.9 22.9 5689. CUFT 40.% GF1, 26.% DF1, 19.% WH1, 15.% RC1

MERCH 11.5 14.2 16.0 18.8 19.9 22.9 5086. CUFT 41.% GF1, 26.% DF1, 20.% WH1, 13.% RC1

MERCH 11.6 14.5 17.1 19.0 19.9 22.9 26716. BDFT 41.% GF1, 27.% DF1, 21.% WH1, 10.% RC1

ACCRETION 11.5 13.9 15.3 17.9 19.9 22.9 172. CUFT/YR 45.% GF1, 21.% WH1, 17.% DF1, 16.% RC1

MORTALITY 11.5 13.9 15.5 18.6 19.9 22.9 21. CUFT/YR 42.% GF1, 26.% DF1, 18.% WH1, 14.% RC1

2050 TREES 0.1 0.1 0.2 0.3 11.9 24.7 1208. TREES 18.% RC2, 15.% RC1, 14.% GF1, 14.% WH1

VOLUME:

TOTAL 12.7 15.6 17.4 20.2 21.9 24.7 7202. CUFT 42.% GF1, 24.% DF1, 20.% WH1, 15.% RC1

MERCH 12.7 15.6 17.6 20.4 21.9 24.7 6484. CUFT 42.% GF1, 24.% DF1, 20.% WH1, 13.% RC1

MERCH 12.9 16.0 18.6 20.4 21.9 24.7 35256. BDFT 43.% GF1, 25.% DF1, 22.% WH1, 11.% RC1

REMOVAL 0.1 0.1 0.2 0.3 0.8 24.7 1173. TREES 18.% RC2, 16.% RC1, 15.% GF1, 14.% WH1

VOLUME:

TOTAL 12.9 15.3 17.1 19.5 21.9 24.7 5505. CUFT 54.% GF1, 26.% WH1, 20.% RC1, 0.% DF2

MERCH 12.9 15.3 17.1 19.5 21.9 24.7 4928. CUFT 56.% GF1, 27.% WH1, 18.% RC1, 0.% DF2

MERCH 12.9 15.6 17.1 19.9 21.9 24.7 26609. BDFT 57.% GF1, 29.% WH1, 14.% RC1, 0.% DF2

RESIDUAL 0.9 11.0 13.3 18.7 21.4 24.2 35. TREES 94.% DF1, 6.% DF2, 0.% ---, 0.% ---

ACCRETION 11.0 13.3 17.7 20.4 22.1 24.2 36. CUFT/YR 100.% DF1, 0.% DF2, 0.% ---, 0.% ---

MORTALITY 11.0 17.0 17.8 20.4 22.1 24.2 11. CUFT/YR 100.% DF1, 0.% DF2, 0.% ---, 0.% ---

2060 TREES 0.1 0.1 0.1 0.1 0.1 25.5 1371. TREES 19.% GF2, 17.% GF1, 17.% DF1, 11.% WH1

VOLUME:

TOTAL 15.0 18.9 21.2 21.7 23.5 25.5 1951. CUFT 100.% DF1, 0.% DF2, 0.% ---, 0.% ---

MERCH 15.0 18.9 21.2 21.7 23.5 25.5 1809. CUFT 100.% DF1, 0.% DF2, 0.% ---, 0.% ---

MERCH 15.0 18.9 21.2 21.7 23.5 25.5 10380. BDFT 100.% DF1, 0.% DF2, 0.% ---, 0.% ---

REMOVAL 12.6 15.0 18.0 21.2 23.0 25.5 28. TREES 100.% DF1, 0.% DF2, 0.% ---, 0.% ---

VOLUME:

TOTAL 15.0 18.9 21.2 21.7 23.5 25.5 1949. CUFT 100.% DF1, 0.% DF2, 0.% ---, 0.% ---

MERCH 15.0 18.9 21.2 21.7 23.5 25.5 1809. CUFT 100.% DF1, 0.% DF2, 0.% ---, 0.% ---

MERCH 15.0 18.9 21.2 21.7 23.5 25.5 10380. BDFT 100.% DF1, 0.% DF2, 0.% ---, 0.% ---

RESIDUAL 0.1 0.1 0.1 0.1 0.1 2.6 1343. TREES 20.% GF2, 17.% GF1, 15.% DF1, 11.% WH1

ACCRETION 0.1 0.1 0.7 0.8 2.6 2.6 20. CUFT/YR 54.% DF1, 32.% DF2, 11.% WP1, 1.% WH1

MORTALITY 2.5 2.5 2.6 2.6 2.6 2.6 0. CUFT/YR 55.% DF1, 45.% DF2, 0.% ---, 0.% ---

2070 TREES 0.1 0.1 0.3 0.7 2.0 10.0 1959. TREES 21.% GF2, 17.% GF1, 15.% WH2, 12.% WH1

VOLUME:

TOTAL 2.0 2.9 4.0 5.0 10.0 10.0 201. CUFT 54.% DF1, 32.% DF2, 11.% WP1, 1.% WH1

MERCH 8.4 10.0 10.0 10.0 10.0 10.0 32. CUFT 72.% DF1, 28.% DF2, 0.% ---, 0.% ---

MERCH 8.4 8.4 10.0 10.0 10.0 10.0 153. BDFT 63.% DF1, 37.% DF2, 0.% ---, 0.% ---

ACCRETION 1.2 2.1 2.8 3.5 4.9 10.0 172. CUFT/YR 49.% DF1, 26.% DF2, 17.% WP1, 2.% WH1

MORTALITY 1.2 1.7 2.0 2.3 3.6 10.0 0. CUFT/YR 38.% DF1, 23.% WP1, 21.% DF2, 6.% WH1

2080 TREES 0.1 0.2 0.7 1.7 5.4 13.9 2052. TREES 20.% GF2, 16.% GF1, 14.% WH2, 13.% WH1

VOLUME:

TOTAL 4.1 6.7 8.1 9.6 9.9 13.9 1923. CUFT 49.% DF1, 26.% DF2, 16.% WP1, 2.% WH1

MERCH 7.7 8.4 9.3 9.8 11.8 13.9 1021. CUFT 53.% DF1, 32.% DF2, 13.% WP1, 2.% LP1

MERCH 7.6 8.4 9.3 9.8 11.8 13.9 5230. BDFT 57.% DF1, 30.% DF2, 11.% WP1, 2.% LP1

ACCRETION 4.0 5.4 7.0 8.6 9.8 13.9 265. CUFT/YR 51.% DF1, 24.% DF2, 15.% WP1, 3.% WP2

MORTALITY 2.7 6.0 7.7 9.0 9.9 13.9 8. CUFT/YR 46.% DF1, 25.% DF2, 16.% WP1, 3.% WH1

2090 TREES 0.1 0.8 1.7 3.3 9.5 17.6 1531. TREES 16.% GF2, 15.% DF1, 14.% GF1, 13.% WH2

VOLUME:

TOTAL 6.8 9.3 10.2 12.3 13.4 17.6 4493. CUFT 50.% DF1, 25.% DF2, 16.% WP1, 2.% WH1

MERCH 8.6 9.7 11.0 12.9 13.4 17.6 3323. CUFT 55.% DF1, 25.% DF2, 16.% WP1, 2.% WP2

MERCH 8.6 9.7 11.0 12.9 13.4 17.6 16523. BDFT 56.% DF1, 25.% DF2, 15.% WP1, 2.% WP2

FOREST VEGETATION SIMULATOR VERSION 0979 -- INLAND EMPIRE EXPANDED RV:07/15/13 08-14-2013 14:27:30

STAND ID: S248112 MGMT ID: NONE SHELTERWOOD PRESCRIPTION FOR THE USER'S MANUAL

------------------------------------------------------------------------------------------------------------------------------

ATTRIBUTES OF SELECTED SAMPLE TREES ADDITIONAL STAND ATTRIBUTES (BASED ON STOCKABLE AREA)

----------------------------------------------------------------- -----------------------------------------------------

INITIAL LIVE PAST DBH BASAL TREES QUADRATIC TREES BASAL TOP HEIGHT CROWN

TREES/A DBH HEIGHT CROWN GROWTH AREA PER STAND MEAN DBH PER AREA LARGEST COMP

YEAR %TILE SPECIES (INCHES) (FEET) RATIO (INCHES) %TILE ACRE AGE (INCHES) ACRE (SQFT/A) 40/A (FT) FACTOR

---- ------- ------- -------- -------- ------ --------- ------- ------ ----- --------- ------ --------- --------- -------

1990 ( 10 YRS)

10 GF2 0.10 3.00 65 0.00 0.0 90.00

30 DF2 0.10 2.00 55 0.00 0.0 90.00

50 RC2 3.20 17.00 45 0.60 3.0 30.00

70 GF1 6.10 38.00 75 1.20 24.8 19.71

90 LP1 8.50 59.34 25 1.03 62.4 10.15

100 DF1 12.70 67.00 35 1.60 100.0 4.55

60 5.1 590. 85. 63.4 104.8

RESIDUAL: 7.0 264. 71. 64.3 88.0

2000 \*\* ( 10 YRS)

10 GF2 0.10 1.07 83 0.00 0.0 8.86

30 WH2 0.10 1.34 82 0.00 0.0 8.97

50 GF1 0.10 1.61 84 0.00 0.0 3.59

70 DF2 0.10 2.28 86 0.00 0.1 6.07

90 RC1 7.71 33.21 68 1.81 31.0 12.81

100 DF1 15.58 78.16 33 2.49 100.0 1.09

70 3.7 1307. 95. 70.7 114.1

2010 \*\* ( 10 YRS)

10 GF2 0.10 1.16 90 0.00 0.0 7.11

30 WH1 0.10 1.89 88 0.00 0.0 4.93

50 GF1 0.11 2.81 87 0.00 0.0 0.54

70 WH1 0.21 4.72 83 0.10 0.1 2.15

90 GF1 7.72 46.33 59 1.14 11.5 7.98

100 DF1 18.11 87.71 31 2.20 100.0 0.27

80 3.5 1855. 127. 77.8 146.9

2020 ( 10 YRS)

10 GF2 0.11 3.41 90 0.00 0.0 3.72

30 WH1 0.11 3.75 88 0.00 0.0 2.99

50 GF1 0.32 7.39 87 0.19 0.1 0.28

70 WH1 0.59 8.50 83 0.36 0.2 1.32

90 GF1 8.55 53.57 56 0.76 10.4 7.61

100 DF1 19.98 95.53 29 1.62 100.0 0.26

90 4.9 1203. 159. 82.8 176.9

RESIDUAL: 11.7 157. 117. 79.9 135.6

2030 \*\* ( 10 YRS)

10 GF1 0.10 0.90 88 0.00 0.0 5.39

30 RC2 0.10 1.08 90 0.00 0.0 13.47

50 DF1 0.10 1.30 89 0.00 0.0 5.34

70 DF2 0.10 1.59 84 0.00 0.0 7.87

90 DF1 0.10 2.54 87 0.00 0.1 3.94

100 DF1 20.92 101.28 29 0.81 100.0 0.25

100 3.9 1678. 141. 87.5 156.5

2040 \*\* ( 10 YRS)

10 GF1 0.10 1.13 83 0.00 0.0 0.48

30 WH1 0.10 2.24 86 0.00 0.0 5.39

50 WH1 0.11 3.57 82 0.00 0.0 5.39

70 DF1 0.11 3.43 84 0.00 0.0 5.28

90 DF2 0.33 5.14 90 0.20 0.1 7.04

100 DF2 22.89 103.33 38 2.03 100.0 0.00

110 4.0 1934. 170. 94.9 181.9

2050 ( 10 YRS)

10 GF1 0.11 3.30 83 0.00 0.0 0.24

30 WH1 0.21 4.87 86 0.10 0.0 3.14

50 WH1 0.21 5.23 82 0.09 0.0 3.14

70 DF1 0.33 7.68 84 0.19 0.1 2.73

90 DF2 0.86 9.65 90 0.46 0.2 3.75

100 DF2 24.25 109.27 37 1.18 98.4 0.00

120 5.5 1208. 199. 100.1 206.3

RESIDUAL: 15.5 35. 46. 85.8 41.4

2060 \*\* ( 10 YRS)

10 GF2 0.10 1.32 90 0.00 0.0 6.60

30 GF2 0.10 1.68 83 0.00 0.0 14.46

50 WH1 0.10 2.05 87 0.00 0.1 5.28

70 AF1 0.10 2.75 85 0.00 0.1 4.82

90 WP1 0.10 4.09 90 0.00 0.1 5.15

100 DF2 25.55 114.91 40 1.69 100.0 0.00

130 2.6 1371. 51. 77.0 44.9

RESIDUAL: 0.2 1343. 0. 7.4 1.3

2070 \*\* ( 10 YRS)

10 WH2 0.10 1.60 88 0.00 0.1 4.23

30 WH2 0.10 2.86 87 0.00 0.2 10.56

50 GF1 0.32 7.17 82 0.20 0.7 4.82

70 WH2 0.68 11.62 87 0.54 3.4 15.10

90 DF2 1.99 20.72 84 1.63 22.7 20.62

100 DF1 10.04 63.14 90 6.46 100.0 1.92

140 1.2 1959. 16. 35.9 30.2

2080 \*\* ( 10 YRS)

10 WH2 0.10 1.47 90 0.00 0.0 7.80

30 WH2 0.21 5.96 88 0.10 0.1 8.51

50 GF2 0.66 10.94 90 0.51 0.4 4.24

70 WH2 1.74 19.04 87 0.75 3.7 10.10

90 DF1 5.35 40.39 90 2.63 27.6 5.16

100 DF1 13.90 76.94 90 3.34 100.0 1.92

150 3.0 2052. 100. 62.5 132.3

2090 ( 10 YRS)

10 WH2 0.21 5.13 90 0.10 0.0 4.85

30 WH2 0.71 10.37 88 0.47 0.1 5.33

50 GF2 1.42 16.16 90 0.70 0.9 2.62

70 WH2 2.52 23.95 87 0.73 3.8 8.59

90 DF1 9.69 51.19 93 3.76 49.7 4.94

100 DF1 17.65 88.51 86 3.25 100.0 1.85

160 4.9 1531. 198. 75.5 233.7

\*\* NOTE: DUE TO HARVEST, COMPRESSION, OR REGENERATION ESTABLISHMENT, NEW SAMPLE TREES WERE SELECTED.

FOREST VEGETATION SIMULATOR VERSION 0979 -- INLAND EMPIRE EXPANDED RV:07/15/13 08-14-2013 14:27:30

STAND ID: S248112 MGMT ID: NONE SHELTERWOOD PRESCRIPTION FOR THE USER'S MANUAL

SUMMARY STATISTICS (PER ACRE OR STAND BASED ON TOTAL STAND AREA)

--------------------------------------------------------------------------------------------------------------------------------------

START OF SIMULATION PERIOD REMOVALS AFTER TREATMENT GROWTH THIS PERIOD

--------------------------------------------- ----------------------- --------------------- ------------------ MAI ------

NO OF TOP TOTAL MERCH MERCH NO OF TOTAL MERCH MERCH TOP RES PERIOD ACCRE MORT MERCH FOR SS

YEAR AGE TREES BA SDI CCF HT QMD CU FT CU FT BD FT TREES CU FT CU FT BD FT BA SDI CCF HT QMD YEARS PER YEAR CU FT TYP ZT

---- --- ----- --- ---- --- --- ---- ----- ----- ----- ----- ----- ----- ----- --- ---- --- --- ---- ------ ---- ----- ----- ------

1990 60 536 77 184 95 63 5.1 1675 1104 5805 296 300 236 1190 64 135 80 64 7.0 10 84 13 18.4 201 23

2000 70 1188 87 236 104 71 3.7 2079 1570 7870 0 0 0 0 87 236 104 71 3.7 10 108 8 25.8 201 13

2010 80 1686 115 319 134 78 3.5 3087 2573 13116 0 0 0 0 115 319 134 78 3.5 10 127 12 35.1 201 13

2020 90 1093 144 350 161 83 4.9 4244 3673 18515 951 1313 1149 5986 106 183 123 80 11.7 10 118 18 43.4 201 13

2030 100 1525 128 341 142 88 3.9 3923 3467 17526 0 0 0 0 128 341 142 88 3.9 10 136 12 48.5 267 13

2040 110 1758 155 407 165 95 4.0 5172 4623 24287 0 0 0 0 155 407 165 95 4.0 10 157 19 54.6 267 13

2050 120 1098 181 420 188 100 5.5 6547 5894 32051 1066 5004 4480 24190 42 64 38 86 15.5 10 33 10 60.7 267 12

2060 130 1246 46 144 41 77 2.6 1773 1645 9436 25 1772 1645 9436 0 3 1 7 0.2 10 18 0 57.8 201 14

2070 140 1781 15 63 27 36 1.2 183 29 139 0 0 0 0 15 63 27 36 1.2 10 157 0 53.8 201 34

2080 150 1866 91 269 120 63 3.0 1748 928 4754 0 0 0 0 91 269 120 63 3.0 10 241 7 56.3 201 23

2090 160 1392 180 439 212 76 4.9 4084 3021 15021 0 0 0 0 180 439 212 76 4.9 0 0 0 65.8 201 12

ACTIVITY SUMMARY

STAND ID= S248112 MGMT ID= NONE SHELTERWOOD PRESCRIPTION FOR THE USER'S MANUAL

----------------------------------------------------------------------------------------------------------------------------------

CYCLE DATE EXTENSION KEYWORD DATE ACTIVITY DISPOSITION PARAMETERS:

----- ---- --------- -------- ---- -------------------- --------------------------------------------------------------------

1 1990

BASE THINPRSC 1990 DONE IN 1990 1.00

ESTB TALLY 1999 DONE IN 1999 1990.00

BASE TREELIST 1990 DONE IN 1999 3.00 0.00

2 2000

ESTB TALLY 2009 DONE IN 2009 1990.00 2.00

3 2010

4 2020

BASE SPECPREF 2020 DONE IN 2020 2.00 999.00

BASE SPECPREF 2020 DONE IN 2020 7.00 9999.00

BASE THINBTA 2020 DONE IN 2020 157.00 1.00 0.00 999.00 0.00 999.00

ESTB TALLY 2029 DONE IN 2029 2020.00

5 2030

ESTB TALLY 2039 DONE IN 2039 2020.00 2.00

6 2040

7 2050

BASE SPECPREF 2050 DONE IN 2050 3.00 -999.00

BASE SPECPREF 2050 DONE IN 2050 4.00 -99.00

BASE THINBTA 2050 DONE IN 2050 35.00 1.00 0.00 999.00 0.00 999.00

ESTB TALLY 2059 DONE IN 2059 2050.00

8 2060

BASE THINDBH 2060 DONE IN 2060 3.00 999.00 1.00 0.00 0.00 0.00

ESTB TALLY 2069 DONE IN 2069 2060.00

9 2070

ESTB TALLY 2079 DONE IN 2079 2060.00 2.00

10 2080

----------------------------------------------------------------------------------------------------------------------------------

FOREST VEGETATION SIMULATOR VERSION 0979 -- INLAND EMPIRE EXPANDED RV:07/15/13 08-14-2013 14:27:30

----------------------------------------------------------------------------

REGENERATION ESTABLISHMENT MODEL VERSION 2.0

STAND ID: S248112 MANAGEMENT CODE: NONE

----------------------------------------------------------------------------

SITE PREP SUMMARY PLOT HABITAT TYPE SUMMARY

------------------- ------------------------------------------------------

PREP:NONE MECH BURN SERIES:<--- DF --> <--- GF --> C WH <--- AF & MH --->

YEAR:1990 1990 1990 GROUP: 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16

PCT: 90 8 2 #PLOTS: 0 0 0 0 0 0 0 0 0 10 0 0 0 0 0 0

NOTE: 1 NON-STOCKABLE PLOTS EXCLUDED FROM THIS SUMMARY.

TALLY 1 AT 10 YEARS. PROBABILITY OF STOCKING IS 0.5941 IN THE FALL OF 1999.

SUMMARY OF ALL SUMMARY OF BEST TREES < 3.0 IN. DBH

TREES REGENERATING TREES REGENERATING BEING PROJECTED BY

DURING THIS TALLY. DURING THIS TALLY. THE PROGNOSIS MODEL

------------------- ------------------- -------------------

TREES % OF TREES % OF AVERAGE TREES % OF

SPECIES /ACRE TOTAL /ACRE TOTAL HEIGHT /ACRE TOTAL SPECIES

------- ----- ----- ----- ----- ------- ----- ----- -------

WP 25. 2. 25. 5. 2.7 25. 2. WP

WL 11. 1. 11. 2. 2.9 11. 1. WL

DF 140. 11. 67. 13. 2.4 105. 10. DF

GF 438. 36. 185. 35. 1.5 389. 36. GF

WH 378. 31. 149. 28. 1.6 326. 31. WH

RC 198. 16. 75. 14. 1.9 180. 17. RC

LP 15. 1. 15. 3. 3.0 15. 1. LP

AF 15. 1. 7. 1. 1.7 15. 1. AF

----- ----- -----

1219. 534. 1066.

TALLY 2 AT 20 YEARS. PROBABILITY OF STOCKING IS 0.7838 IN THE FALL OF 2009.

SUMMARY OF ALL SUMMARY OF BEST TREES < 3.0 IN. DBH

TREES REGENERATING TREES REGENERATING BEING PROJECTED BY

DURING THIS TALLY. DURING THIS TALLY. THE PROGNOSIS MODEL

------------------- ------------------- -------------------

TREES % OF TREES % OF AVERAGE TREES % OF

SPECIES /ACRE TOTAL /ACRE TOTAL HEIGHT /ACRE TOTAL SPECIES

------- ----- ----- ----- ----- ------- ----- ----- -------

WP 8. 1. 8. 3. 2.2 33. 2. WP

WL 3. 0. 3. 1. 2.9 14. 1. WL

DF 161. 16. 58. 19. 2.1 192. 12. DF

GF 334. 33. 95. 31. 1.4 545. 34. GF

WH 284. 28. 83. 27. 1.6 479. 29. WH

RC 197. 20. 45. 15. 1.8 317. 20. RC

LP 13. 1. 10. 3. 2.0 27. 2. LP

AF 5. 1. 3. 1. 1.3 16. 1. AF

----- ----- -----

1004. 307. 1623.

FOREST VEGETATION SIMULATOR VERSION 0979 -- INLAND EMPIRE EXPANDED RV:07/15/13 08-14-2013 14:27:30

----------------------------------------------------------------------------

REGENERATION ESTABLISHMENT MODEL VERSION 2.0

STAND ID: S248112 MANAGEMENT CODE: NONE

----------------------------------------------------------------------------

SITE PREP SUMMARY PLOT HABITAT TYPE SUMMARY

------------------- ------------------------------------------------------

PREP:NONE MECH BURN SERIES:<--- DF --> <--- GF --> C WH <--- AF & MH --->

YEAR:2020 2020 2020 GROUP: 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16

PCT: 90 8 2 #PLOTS: 0 0 0 0 0 0 0 0 0 10 0 0 0 0 0 0

NOTE: 1 NON-STOCKABLE PLOTS EXCLUDED FROM THIS SUMMARY.

TALLY 1 AT 10 YEARS. PROBABILITY OF STOCKING IS 0.8171 IN THE FALL OF 2029.

SUMMARY OF ALL SUMMARY OF BEST TREES < 3.0 IN. DBH

TREES REGENERATING TREES REGENERATING BEING PROJECTED BY

DURING THIS TALLY. DURING THIS TALLY. THE PROGNOSIS MODEL

------------------- ------------------- -------------------

TREES % OF TREES % OF AVERAGE TREES % OF

SPECIES /ACRE TOTAL /ACRE TOTAL HEIGHT /ACRE TOTAL SPECIES

------- ----- ----- ----- ----- ------- ----- ----- -------

WP 32. 2. 32. 4. 2.3 32. 2. WP

WL 5. 0. 5. 1. 3.5 5. 0. WL

DF 321. 15. 143. 18. 1.9 227. 15. DF

GF 624. 30. 191. 24. 1.3 445. 29. GF

WH 511. 24. 195. 25. 1.3 371. 24. WH

RC 515. 25. 151. 19. 1.3 372. 24. RC

LP 5. 0. 5. 1. 1.6 5. 0. LP

ES 14. 1. 14. 2. 1.4 14. 1. ES

AF 61. 3. 45. 6. 1.3 61. 4. AF

----- ----- -----

2088. 782. 1532.

TALLY 2 AT 20 YEARS. PROBABILITY OF STOCKING IS 0.8761 IN THE FALL OF 2039.

SUMMARY OF ALL SUMMARY OF BEST TREES < 3.0 IN. DBH

TREES REGENERATING TREES REGENERATING BEING PROJECTED BY

DURING THIS TALLY. DURING THIS TALLY. THE PROGNOSIS MODEL

------------------- ------------------- -------------------

TREES % OF TREES % OF AVERAGE TREES % OF

SPECIES /ACRE TOTAL /ACRE TOTAL HEIGHT /ACRE TOTAL SPECIES

------- ----- ----- ----- ----- ------- ----- ----- -------

WP 20. 3. 14. 7. 1.8 52. 3. WP

WL 0. 0. 0. 0. 0.0 6. 0. WL

DF 54. 7. 24. 13. 1.8 242. 14. DF

GF 215. 29. 32. 17. 1.2 476. 27. GF

WH 256. 34. 65. 35. 1.3 465. 26. WH

RC 174. 23. 40. 21. 1.7 457. 25. RC

LP 1. 0. 1. 0. 1.7 6. 0. LP

ES 1. 0. 1. 1. 1.7 15. 1. ES

AF 22. 3. 9. 5. 1.2 74. 4. AF

----- ----- -----

743. 186. 1793.

FOREST VEGETATION SIMULATOR VERSION 0979 -- INLAND EMPIRE EXPANDED RV:07/15/13 08-14-2013 14:27:30

----------------------------------------------------------------------------

REGENERATION ESTABLISHMENT MODEL VERSION 2.0

STAND ID: S248112 MANAGEMENT CODE: NONE

----------------------------------------------------------------------------

SITE PREP SUMMARY PLOT HABITAT TYPE SUMMARY

------------------- ------------------------------------------------------

PREP:NONE MECH BURN SERIES:<--- DF --> <--- GF --> C WH <--- AF & MH --->

YEAR:2050 2050 2050 GROUP: 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16

PCT: 90 8 2 #PLOTS: 0 0 0 0 0 0 0 0 0 10 0 0 0 0 0 0

NOTE: 1 NON-STOCKABLE PLOTS EXCLUDED FROM THIS SUMMARY.

TALLY 1 AT 10 YEARS. PROBABILITY OF STOCKING IS 0.8698 IN THE FALL OF 2059.

SUMMARY OF ALL SUMMARY OF BEST TREES < 3.0 IN. DBH

TREES REGENERATING TREES REGENERATING BEING PROJECTED BY

DURING THIS TALLY. DURING THIS TALLY. THE PROGNOSIS MODEL

------------------- ------------------- -------------------

TREES % OF TREES % OF AVERAGE TREES % OF

SPECIES /ACRE TOTAL /ACRE TOTAL HEIGHT /ACRE TOTAL SPECIES

------- ----- ----- ----- ----- ------- ----- ----- -------

WP 79. 5. 68. 9. 4.2 79. 6. WP

WL 16. 1. 16. 2. 3.3 16. 1. WL

DF 409. 25. 199. 26. 3.7 322. 24. DF

GF 667. 41. 232. 30. 1.9 498. 37. GF

WH 301. 19. 152. 20. 2.2 285. 21. WH

RC 113. 7. 78. 10. 1.7 113. 8. RC

LP 5. 0. 5. 1. 3.9 5. 0. LP

ES 16. 1. 11. 1. 2.3 16. 1. ES

AF 10. 1. 10. 1. 2.4 10. 1. AF

----- ----- -----

1615. 770. 1343.

FOREST VEGETATION SIMULATOR VERSION 0979 -- INLAND EMPIRE EXPANDED RV:07/15/13 08-14-2013 14:27:30

----------------------------------------------------------------------------

REGENERATION ESTABLISHMENT MODEL VERSION 2.0

STAND ID: S248112 MANAGEMENT CODE: NONE

----------------------------------------------------------------------------

SITE PREP SUMMARY PLOT HABITAT TYPE SUMMARY

------------------- ------------------------------------------------------

PREP:NONE MECH BURN SERIES:<--- DF --> <--- GF --> C WH <--- AF & MH --->

YEAR:2060 2060 2060 GROUP: 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16

PCT: 88 10 2 #PLOTS: 0 0 0 0 0 0 0 0 0 10 0 0 0 0 0 0

NOTE: 1 NON-STOCKABLE PLOTS EXCLUDED FROM THIS SUMMARY.

TALLY 1 AT 10 YEARS. PROBABILITY OF STOCKING IS 0.8806 IN THE FALL OF 2069.

SUMMARY OF ALL SUMMARY OF BEST TREES < 3.0 IN. DBH

TREES REGENERATING TREES REGENERATING BEING PROJECTED BY

DURING THIS TALLY. DURING THIS TALLY. THE PROGNOSIS MODEL

------------------- ------------------- -------------------

TREES % OF TREES % OF AVERAGE TREES % OF

SPECIES /ACRE TOTAL /ACRE TOTAL HEIGHT /ACRE TOTAL SPECIES

------- ----- ----- ----- ----- ------- ----- ----- -------

WP 27. 3. 27. 10. 4.3 99. 5. WP

WL 0. 0. 0. 0. 0.0 16. 1. WL

DF 63. 6. 22. 8. 5.1 284. 15. DF

GF 431. 42. 109. 42. 2.2 746. 40. GF

WH 411. 40. 80. 31. 2.4 519. 28. WH

RC 82. 8. 13. 5. 2.5 169. 9. RC

LP 4. 0. 4. 2. 5.1 9. 0. LP

ES 0. 0. 0. 0. 0.0 15. 1. ES

AF 15. 1. 7. 3. 2.9 25. 1. AF

----- ----- -----

1032. 263. 1881.

TALLY 2 AT 20 YEARS. PROBABILITY OF STOCKING IS 0.9495 IN THE FALL OF 2079.

SUMMARY OF ALL SUMMARY OF BEST TREES < 3.0 IN. DBH

TREES REGENERATING TREES REGENERATING BEING PROJECTED BY

DURING THIS TALLY. DURING THIS TALLY. THE PROGNOSIS MODEL

------------------- ------------------- -------------------

TREES % OF TREES % OF AVERAGE TREES % OF

SPECIES /ACRE TOTAL /ACRE TOTAL HEIGHT /ACRE TOTAL SPECIES

------- ----- ----- ----- ----- ------- ----- ----- -------

WP 4. 1. 4. 2. 2.4 34. 2. WP

WL 1. 0. 1. 0. 2.3 4. 0. WL

DF 90. 14. 45. 22. 2.4 106. 6. DF

GF 280. 42. 71. 34. 1.6 743. 45. GF

WH 202. 31. 63. 30. 1.5 530. 32. WH

RC 80. 12. 21. 10. 1.6 202. 12. RC

LP 0. 0. 0. 0. 0.0 4. 0. LP

ES 0. 0. 0. 0. 0.0 8. 0. ES

AF 3. 0. 2. 1. 1.5 20. 1. AF

----- ----- -----

659. 206. 1651.

#### 4.3.1.1 The Input Summary Table

The Input Summary Table displays information about the keyword and data records read from the input files. Users should review this information closely to verify that the projection is based on their intended silvicultural and ecological assumptions, and that their data records were read correctly. This table is comprised of three sections as discussed below, and facilitates record keeping and problem determination. It is one of the most important tables in the FVS main output file.

##### 4.3.1.1.1 Program Options Section

The Program Options Section is comprised of two parts. The Options Selected by Input part was designed to provide information about the keyword records that were included by the user. The Options Selected by Default part was designed to provide information about some of the default values that were used in the projection.

The keyword records are printed, as they are processed, along with descriptions of parameters and supplemental data associated with the keywords. Within this section of the output, messages may appear, such as:

FVS03 WARNING: FOREST CODE INDICATES THAT THE GEOGRAPHIC LOCATION IS OUTSIDE THE RANGE OF THE MODEL.

These messages are intended to bring attention to potential problems with keyword parameters. Even though the messages may indicate doubt, FVS usually assumes that users know what they are doing and the projection is continued unless program capacities have been exceeded. The possible warning messages, along with explanatory details and suggested user responses are shown in section 9.

Users may turn off and back on the printing of the keyword records to the main output file using the NOECHO and ECHO keywords, respectively, as discussed in section 4.2.4. However, this is only suggested when using keywords which are stored in auxiliary files and have been shown to be error free.

Several keyword records will be specifically printed if they are omitted from the input file. These records contain data that are particularly useful for resolving problems but may not be easily remembered. They include:

1. the tree record format (TREEFMT),
2. the sampling design parameters (DESIGN), and
3. the stand description data (STDINFO).

These data are printed immediately following the input keyword records, beneath the heading “OPTIONS SELECTED BY DEFAULT”. TREEFMT and DESIGN are examples of keyword records that appear in this section of the example output file.

This section also includes values of site index and stand density index maximums, by species, for variants that used these variables. Frequently, values are not entered for these variables for all species. By looking at this table, users can see how the model translated provided values, or the default values, for each species in the model. For most variants, a species cross-reference chart is also provided which shows the numeric code, the alpha code, and the corresponding FIA code, such as shown in table 4-1. In addition, a table is printed showing which volume equations from the National Volume Estimator Library were used for each species in the run.

The input keyword records are always displayed in the order that they are processed. Usually this order is unimportant, but there are exceptions. If a TREEDATA record is used and the species codes or the tree record format differ from the default specifications, the SPCODES and/or TREEFMT records must precede the TREEDATA record in the input file. Failure to meet this requirement will result in a variety of errors. Also, keyword order can be important when simulating thinning activities and using minimum harvest constraints or adjusting the cutting priority formula. These considerations will be discussed in section 5.2. Keyword order is also important when defining species groups as discussed in section 4.2.5.

##### 4.3.1.1.2 Activity Schedule Section

The Activity Schedule section follows the Program Options section. The management activities specified by keyword input are arranged in the order that they will be simulated. Parameters associated with the keyword are also displayed, along with the part of the FVS model that the keyword pertains to (e.g., “BASE” in the example output file indicating the base FVS model).

The dates on the activity schedule are calculated from the inventory year, as entered on the INVYEAR record, and the intervals specified on the TIMEINT record. These dates repre­sent projection cycle endpoints. In the example output file, cycle 1 is the period 1990-2000; cycle 2 is the period 2000-2010, and so on. For ease in understanding cycles, consider cycle 1 ending and cycle 2 beginning January 1, 2000. So in this example the first cycle contains the 10 growing seasons from 1990 through 1999.

Activities that are conditionally scheduled (see section 5.5) are not displayed in this table. These types of activities may, or may not, be scheduled depending on conditions occurring in the simulation. Check the Activity Summary section of the output file (see section 4.3.1.4.2) to see if conditionally scheduled activities were, in fact, scheduled.

##### 4.3.1.1.3 Calibration Statistics Section

After the keyword input is interpreted, and the tree input data records have been read, the tree records are scanned for missing height and crown ratio observations and missing values are estimated. Then, factors that scale growth predictions to match the in­put growth data are computed. These activities are reported in the Calibration Statistics sec­tion of the Input Summary Table.

This table is arranged by species encountered in the tree input data records. The first line of this section reports the total number of tree records read by species. The total number of tree records excludes records that were rejected because DBH was not recorded. It also excludes records of those trees that died before the start of the mortali­ty observation period (tree history codes 8 and 9). The count includes the trees that died during the mortality observation period (tree history codes 6 or 7). These recent mortality records are used to compute the stand density estimates that are used in scaling models and they may be used by some extensions. The number of recent mortality records is given immediately below the total tree record count. These records will be removed from the tree record file before the stand is pro­jected. If either of these counts appears to be inaccurate, the tree history codes, species codes, and tree record format should be checked.

The Forest Vegetation Simulator will accept records with omitted height or crown ratio observa­tions. However, these data must be estimated before the stand can be projected. Heights are usually predicted from DBH and species. Users should consult their variant overview document to see which specific equations and parameters are being used to estimate missing heights.

If three or more records for a species have measured heights, and the height-diameter calibration suppression flag is not set (see NOHTDREG keyword discussion, section 7.1.3.1) and the parameters of the equation used for that species will be calibrated to the input data. However, records with measured heights but dead or broken tops are not used. The total number of records less the number of records with missing heights and broken or dead tops gives the number of records available for calibrating the height-diameter relationship for a species.

The omitted crown ratio observations are estimated using a variety of stand and tree characteristics. Users should consult their variant overview document to see which equations are used. However, it’s strongly recommended that crown ratios for all sample trees be measured and recorded. If crown ratios and/or heights were recorded, and the output indicates they are missing, the tree record format is probably in error (see section 4.2.2).

Of the remaining entries in the calibration statistics table, all but the last one refer to the process of computing growth model scale factors. If increment data are provided with the tree records, the large-tree diameter increment model and the small-tree height increment model will be scaled to reflect local deviations from the regional growth trends represented in the models. In order to com­pute scale factors for either increment model, for any species, there must be at least a minimum number of in­crement observations. By default this minimum is five, but it can be changed using the CALBSTAT keyword. Diameter increment observations are accepted only from trees that were larger than some threshold diameter at the **start** of the growth measurement period. This threshold differs by variant, but is generally 3 inches DBH. Users should consult their variant overview document and look for definitions of what size of tree is considered a “large tree”. Height incre­ment observations are accepted only from trees that were less than 5 inches DBH at the **end** of the period. The number of records that is reported as available for scaling a model includes only those records that have measured increments and meet the above size restrictions.

The height increment scale factor is used as a direct multiplier of predicted height incre­ment. However, the diameter increment scale factor is used as a multiplier of change in squared diameter (DDS) and is, in effect, a multiplier of basal area increment. The rate of conversion of DDS to diameter increment is dependent on the magnitude of tree DBH.

The scale factors for both models should normally fall between 0.5 and 2.0. The model estimate of basal area increment derived from the extensive database used to fit the model is the best available predictor of long-term growth performance. As a stand is pro­jected through time, the basal area increment scale factors move toward a value that is one-half the difference between the initial scale factor and 1.0. The effect of this transition is to gradually replace sample-based estimates of increment with the model-based estimates.

The other entries in the calibration statistics table that relate to growth model scale factors are by-products of the diameter in­crement scaling process. They indicate how the distribution of the growth sample compares to the distribution of the database used to fit the model. The distribution variances are compared using the ratio of the standard deviation of the residuals for the growth sample to the model standard er­ror. If the values of this ratio consistently exceed 1.0, the user should carefully examine the growth measurement techniques used, including the methods used to delineate stands. It is assumed that stands are uniform with regard to slope, aspect, elevation, and habitat type. If this assumption is stretched too far, the variance in the growth sample residuals will be exaggerated.

One table entry is the weight given to the diameter increment sample during scaling. This weight is part of an empirical Bayes estimation process (Krutchkoff 1972) that is com­plex and will not be explained here. The interpretation of the weight, however, is quite sim­ple. Values in the vicinity of zero imply the models were not adjusted, while values close to 1.0 imply the models were adjusted. The weight is an expression of confidence that the growth sample represents a different population than does the database used to fit the model. In other words, a value of .90 would indicate a 90% certainty that the growth sample represents a different population than the database used to fit the model.

The final entry in the Calibration Statistic section shows the number of records on which dwarf mistletoe was recorded as a damaging agent. All western variants of FVS include the dwarf mistletoe extension as part of the base model code (see section 8.3).

#### 4.3.1.2 The Stand Composition Table

The Stand Composition Table portrays stand development over time, and displays the distributions of important stand attributes relative to DBH and species. Per acre values are calculated for the stockable area of the stand only. One line in the stand composition table is allotted to the description of each reported stand attribute at each cycle endpoint. The description consists of a terse label, per acre total for the attribute, the distribution of the attribute by DBH class, and the distribution of the attribute by species and tree value class. Per acre total is located near the center of the table and separates the distribution by DBH (located to the left of the total) from the distribution by species and tree value class (located to the right of the total).

The attributes summarized in the stand composition table include trees per acre, volume per acre for four merchantability standards, and annual per-acre accretion and mortality. Accretion and mortality are expressed in total stem cubic feet. Accretion is growth on trees surviving to the end of the cycle. The merchantability standards used in all variants include:

* Total stem cubic feet
* Merchantable stem cubic feet; default merchantability limits are variant specific (see section 5.3.1)
* Merchantable stem cubic feet sawtimber; default merchantability limits are variant specific (see section 5.3.1). Merchantable stem cubic feet sawtimber volume will not be reported in western variants unless the FIAVBC keyword is invoked.
* Merchantable stem board feet; default merchantability limits are variant specific (see section 5.3.1)

Users should refer to the appropriate variant overview document, or the descriptions of the BFVOLUME and VOLUME keywords in the FVS keyword guide, to see the default merchantability standards that are used for their particular variant. They should also refer to the variant overview document or the end of the “OPTIONS SELECTED BY DEFAULT” section of the main output file to see what volume equations were used. Volume equation numbers may be changed using the VOLEQNUM keyword.

The trees per acre and the volume per acre are reported at the beginning of the projection. These are repeated, along with accretion and mortality statistics, at the completion of each projection cycle. If there are any thinning requests in a cycle, the number of trees per acre and the volume per acre removed as well as the number of trees per acre in the residual stand are reported.

By compromising traditional format, the essence of a stand or stock table is captured in a single line of output in the Stand Composition Table. The compromise consists of defining the classes in the table as fixed percentages of the total for the attribute. Thus, the smallest class is defined as the interval between zero and the DBH such that 10 percent of the attribute is in trees that are the same size or smaller (0.1 in the 1990 TREES distribution of the example output). This value is referred to as the 10th percentile point in the distribution of the attribute by DBH. The 30th, 50th, 70th, 90th, and 100th percentile points in the distributions of each of the attributes are also identified. The intervals between these percentile points define five additional classes (10-30, 30-50, 50-70, 70-90, and 90-100). Traditional stand or stock tables can be generated with FVS post-processor programs.

The remaining information in the stand composition table concerns the distribution of each attribute by species and tree value class. Tree value class is entered with the tree record; some insect and pathogen extensions may change this value, but otherwise it remains unchanged within a projection. This variable has a value of 1, 2, or 3 and may influence the tree removal priority when the stand is thinned (see section 5.2.4.1). The percentage of each attribute that is distributed to each possible combination of species and tree value (there are combinations totaling 3 times the number of species in the variant) is computed. The percentages for the four largest combinations are then printed.

#### 4.3.1.3 The Tree and Stand Attributes Table

The growth of individual trees and the stand conditions that influence tree growth are recorded in the Tree and Stand Attributes Table. Per acre values are calculated for the stockable area of the stand only. Information presented in this table gives additional insight into the course of stand development. It also reflects how a cross section of trees in the stand responds to changes in stand structure.

The trees that are selected for display correspond to the diameters recorded for the percen­tile points in the initial trees per acre distribution (note: in the example output file, the percentile points diameters are those shown in the Stand Composition Table on the TREES line for the year 1990). These trees reflect a cross section of the stand and are followed throughout the projection. The initial percentile values are maintained to identify the trees. Beyond the initial report, however, these percentile values do not reflect the ac­tual percentile position of the trees in the stand. After harvest, regeneration, or tree list compression, trees are reselected according to the new diameter distribution percentile points. At the beginning of the projection, and at the end of each cycle, the following attributes are displayed for the selected trees:

* Species and tree value class
* Current DBH (outside bark)
* Current height
* Live crown ratio (expressed as a percent of total height)
* DBH increment (inside bark) for the preceding projection cycle
* Percentile in the stand basal area distribution
* Number of trees per acre represented by the record

The stand attributes reported are stand age, stand density, and average tree size. Stand density is described with trees per acre, basal area per acre, and crown competition factor. Average tree size is reported as quadratic mean DBH(the DBH of the tree of average basal area) and the average height of dominants. The average height of dominants is computed by averag­ing the heights of the 40 largest diameter trees per acre. When the stand is thinned at the start of a cycle, stand attributes are repeated to reflect the impact of thinning.

#### 4.3.1.4 The Summary Statistics Table

The Summary Statistics Table consists of two sections. The Summary Statistics summarizes stand conditions by cycle, and the Activity Summary shows the disposition of all activities scheduled during the simulation, including those that were conditionally scheduled.

##### 4.3.1.4.1 Summary Statistics Section

Many of the stand attributes that were contained in other parts of the main output file are repeated, in concise format, in the Summary Statistics. A single line in the table summarizes stand conditions at each cycle endpoint. This out­put was initially intended to reproduce yield data for subsequent processing. As a result, there are three fields in each record in which the program inserts user-supplied labels for the output: the sample weight, a stand identification label consisting of up to 26 characters, and a management identifier con­sisting of four-characters (see section 4.1.2.1). In addition, the summary table reports per acre trees and volume before thinning (to four merchantability standards), per acre trees and volume removed, basal area per acre after thinning, crown competition factor (CCF; see section 7.1.2), average dominant height (average height of the 40 largest diameter trees), and growth period length, accretion, and mortality. Accretion and mortality are in terms of total cubic feet per acre per year. Per acre values in the Summary Statistics are based on total stand area, and therefore include any nonstockable area.

The last two columns of this table report current forest cover type, stand size class, and stocking class (see appendix B). These statistics are useful for tracking a stand’s type-size-density class through time.

The Summary Statistics can also be output directly to a database. Refer to the Users Guide to the Database Extension (Crookston et al. 2003). There is a section that discusses the FVS\_Summary output table. Also see the description of the SUMMARY database keyword used to request these tables.

##### 4.3.1.4.2 Activity Summary Section

The Activity Summary is similar to the Activity Schedule discussed previously, with three important differences. First, an additional column in this section shows the activity disposition. Typical entries in this column are “DONE IN” followed by a year that the activity was done, “DELETED OR CANCELLED”, or “NOT DONE”. An activity marked as “NOT DONE” usually indicates an error (see section 9.2). Second, this table includes activities that were conditionally scheduled based on stand conditions in the simulation. Third, this table shows the values of keyword parameters that were computed dynamically by the model.

#### 4.3.1.5 The Regeneration Summary Tables

These tables will be discussed in section 5.4.4.

### 4.3.2 Optional Output Tables

#### 4.3.2.1 The Statistical Summary Table

The Statistical Summary Table (figure 4-4) displays a statistical description of the input (inventory) data. This table is printed as part of the main FVS output file when the STATS keyword record is included in the keyword set. The upper portion of this table contains per acre estimates of trees, basal area, and volumes broken down by species. Aboveground biomass and carbon will also be reported if the FIAVBC keyword is invoked. The lower portion of the table contains statistics for these same attributes for all species combined. Reported statistics are based on total stand area.

![Image of statistical summary table in main output file.](data:image/png;base64...)

**Figure 4-4** — Example of the Statistical Summary Table from the Forest Vegetation Simulator.

The Statistical Summary can also be output directly to a database as two separate tables. Refer to the Users Guide to the Database Extension (Crookston et al. 2003). There is a section that discusses the FVS\_Stats\_Species and FVS\_Stats\_Stand output tables. Also see the description of the INVSTATS database keyword used to request these tables.

#### 4.3.2.2 The Structural Statistics Table

Descriptors of stand structure have become an increasingly important consideration in prescribing management actions to preserve wildlife habitat and watershed values. FVS will search for up to three distinct canopy strata. For each significant stratum, the canopy cover corrected for crown overlap, major species, ranges of diameters, tree heights, and heights to crown base are displayed. From these data a structural class is assigned. Per acre values are calculated for the stockable area of the stand only.

The Structural Statistics Table (figure 4-5) (Crookston and Stage 1999) displays a description of the number of valid strata, percent canopy cover, and structural class for the stand. Included for each stratum are: the nominal diameter and height, the heights of the tallest and shortest trees, the crown base height, percent canopy cover, major species, and a code indicating if the stratum is invalid, valid, or the uppermost valid stratum. These statistics are output for the stand before simulated harvests and are repeated for post-harvest conditions. This table is printed as part of the main FVS output file when the STRCLASS keyword record is included in the keyword set.

Stand percent canopy cover (PCC) is the percentage of the ground area that is directly covered with tree crowns and is calculated based on the methodologies presented in Crookston and Stage (1999). Generally the crown area of a tree is computed using the formula for a circle as a function of crown radius. Crown radius is estimated using formulae that are different for each FVS geographic variant. Percent canopy cover may be obtained for the entire stand or based on species, tree value class, DBH, or height categories. All percent cover estimates computed in FVS are corrected for canopy overlap.

Percent canopy cover is computed by calculating the projected crown area represented by each tree record. This is adjusted to a percent using equation {4.3.2.2.1} and summed over all tree records in the grouping for which the percent canopy cover is being calculated. The sum is then corrected for canopy overlap using equation {4.3.2.2.2}.

{4.3.2.2.1} *C* = 100 ∙ ∑(0.00001803 ∙ *FCWi*2 ∙ *TPAi*)

{4.3.2.2.2} *PCC* = 100 ∙ [1 – e (*OCF* ∙ *C*)]

where:

*C* is uncorrected percent canopy cover

*FCWi* is estimated crown width for tree *i*

*TPAi* is trees per acre represented by tree record *i*

*PCC* is percent canopy cover corrected for canopy overlap

0.00001803 is a factor used to convert crown width in feet to the percent of an acre covered by the crown

*OCF* is the overlap correction factor, which has a default value of -0.01

∑ is summation over all trees in the stand

The default value of -.01 used for the overlap correction factor in equation {4.3.2.2.2} represents a random distribution of trees. For tree distributions other than random, the value of the overlap correction factor can be changed using the CCADJ keyword.

Canopy strata are initially defined by naturally occurring gaps in the distribution of tree heights. The gaps are found when the heights of two trees in a list sorted by height differ by more than 30 percent of the height of the taller tree and at least 10 feet. The two largest gaps define three potential strata. If there is only one gap, two potential strata are defined and if there are no gaps, one potential stratum is defined.

Initially defined strata must have over 5 percent canopy cover or they are rejected. Nominal stratum diameter and height are computed by averaging the nine sample trees centered on the 70th percentile tree. Once the strata are defined, the stand is classified as bare ground (BG), stand initiation (SI), stem exclusion (SE), understory reinitiation (UR), young forest multistrata (YM), old forest single stratum (OS), or old forest multistrata (OM) as a function of the number of strata, the nominal diameter of trees in the strata, and stocking.

Several features in FVS relate to the percent canopy cover and stand structure statistics. The classification logic can be tuned to achieve specific goals using the STRCLASS keyword. The Event Monitor contains pre-defined variables relating to the structural class, nominal diameter of the uppermost stratum, and percent canopy cover, and the SPMCDBH function allows the computation of percent canopy cover for any subset of the trees in the stand (see section 5.5.2.2). The THINCC keyword record allows users to thin stands to a specified percent canopy cover within a specified diameter range (see section 5.2.4.2.3).

The classification can vary between runs of FVS with different starting values of the random number generator (see section 6.4.2). This behavior is inherent in any classification system based on statistics sensitive to random variation such as average diameter of a subset of trees. When the stratum average diameter is near the class boundary, the classification of the stand in one class versus another is sensitive to the interaction between the arbitrary rules and the variation inherent in the sample data and in the processes of growth and regeneration.

![Image of structural statistics table in main output file.](data:image/jpeg;base64...)

**Figure 4-5** — Example of the Structural Statistics Table from the Forest Vegetation Simulator

The Structural Statistics table can also be output directly to a database. Refer to the Users Guide to the Database Extension (Crookston et al. 2003). There is a section that discusses the FVS\_StrClass output table. Also see the description of the STRCLSDB database keyword used to request this table.

#### 4.3.2.3 Outputs from Extensions

Several extensions to FVS produce special reports. These tables are printed as part of the main FVS output file when the appropriate keyword records are included in the keyword set (see section 8). Some can also be output directly to a database table using the appropriate database keyword record.

### 4.3.3 Optional Output Files

Several additional outputs may be specifically requested. These outputs are contained in files separate from the main output file. These output files can be used as input to other models, such as those for forest planning or economic analyses. The information written to some of these files can also be output directly to a database.

#### 4.3.3.1 The Tree List Output File

The Tree List Output File is a complete list of all tree records (figure 4-6) that can be generated in any or all cycles. This file is generated with the TREELIST or ATRTLIST keyword records and is based on total stand area. The tree list reports many tree attributes for all tree records being projected within an FVS run. The list generated with the TREELIST keyword represents stand conditions at the beginning of a projection cycle (or the end of the previous cycle). The list generated with the ATRTLIST keyword represents the stand after thinning at the beginning of a projection cycle. This file is useful for many purposes such as analyzing growth rates on individual trees, or tracking individual trees through time. Items contained in this file are described in table 4-5.

Harvested trees can also be included in this file with the same detailed information. Harvested trees are included by using the CUTLIST keyword record.

The header information shown in figure 4-6 can be replaced with a machine readable header record, similar to that shown in figure 4-7, using field 3 of the TREELIST and/or CUTLIST keyword record. The resulting file contains a header record with the information described below followed by the tree records as described in table 4-5. A file in this format is useful for further processing with auxiliary programs.

![Image of FVS Tree List Output File.](data:image/png;base64...)

**Figure 4-6** — Example of the Tree List Output from the Forest Vegetation Simulator.

**Table 4-5** — Data fields in the Tree List Output file.

| **Attribute** | **Description** |
| --- | --- |
| Tree Number | Unique identification number for the tree record. Plot ID (ITRE) and tree ID (IDTREE) are read from the input tree data. This number will be the tree ID if tree records are input from a database; otherwise this number will be a concatenation of the plot ID and the tree ID. |
| Tree Index | A sequential index number assigned to the tree records as they are processed by FVS. |
| SP Cd | Alpha species code. |
| SP No | The sequence number assigned to that species in the FVS variant used. |
| Tr Cl | Tree class. This is read from the input tree data as the tree value class code (IMC). |
| SS Cd | Special status code. This is read from the input tree data as the severity code associated with a damage code of 55 (see section 4.2.1). |
| Pnt Num | Point number. This is read from the input tree data as the plot ID (ITRE). |
| Trees per Acre | Trees per acre represented by the record. |
| Mortal per Acre | Trees per acre represented by the record that died that cycle. |
| Curr Diam | Current diameter at breast height in inches. |
| Diam Inc | Diameter increment in inches. This is the inside-bark diameter growth that cycle. In the inventory year only, a field on the TREELIST keyword record determines whether to display only measured increments (calculated increments are coded as zeors) or to display all increments. All increments are displayed for years other than the inventory year. |
| Curr Ht | Current height in feet. This height is used to determine taper on the stem for volume calculations. If the tree record represents trees with broken or dead tops, this is the height of the highest live limb. All trees with dead or broken tops are assumed to have a leader that becomes the new “top”. This is why even broken and dead top trees continue to increase in height. |
| Ht Incr | Height increment in feet. This is the height growth that cycle. Only measured increments are displayed for the inventory year. All increments are displayed for years other than the inventory year. |
| CR | Crown ratio percent. |
| Max CW | Maximum crown width in feet. |
| MS | Hawksworth dwarf mistletoe rating. |
| BA %-tile | Basal area percentile. This is the percentile ranking of the trees represented by the record when compared with the basal area of all trees in the stand. |
| Point BAL | Point basal area in larger trees. This is the basal area (in square feet per acre) in trees with the same plot designation and larger DBH than that record. |
| Tot Cu Ft Vol | This is the total cubic foot volume per tree represented by the record. When the FIAVBC keyword is in effect, this volume will be a sound volume estimate that has been reduced by cull. Since this is a per tree value it must be multiplied by the trees-per-acre value for the record in order to get the cubic foot volume for the entire record. |
| Mch Cu Ft Vol | This is the merchantable cubic foot volume per tree represented by the record. This is a net volume that has been reduced for defect. The defect percent applied is shown in MC Df (see below). When the FIAVBC keyword is in effect, this volume will be a sound volume estimate that has been reduced by cull. Since this is a per tree value it must be multiplied by the trees-per-acre value for the record in order to get the cubic foot volume for the entire record. |
| Saw Cu Ft Vol | This is the sawtimber cubic foot volume per tree represented by the record. This is a net volume that has been reduced for defect. The defect percent applied is shown in BF Df (see below). When the FIAVBC keyword is in effect, this volume will be a sound volume estimate that has been reduced by cull. Since this is a per tree value it must be multiplied by the trees-per-acre value for the record in order to get the cubic foot volume for the entire record. |
| Mch Bd Ft Vol | Merchantable board foot volume per tree represented by the record. This is a net volume that has been reduced for defect. The defect percent applied is shown in BF Df (see below). Since this is a per tree value it must be multiplied by the trees-per-acre value for the record in order to get the cubic foot volume for the entire record. |
| MC Df | Merchantable cubic foot defect percent. A value of 99 indicates 100% defect. |
| BF Df | Merchantable board foot defect percent. A value of 99 indicates 100% defect. |
| Trc Ht | Truncated height in feet. This is the height to the point of breakage or top-kill. This is the height used in determining volumes for the record. This height will not increase due to height growth. |

Data fields contained in the machine readable header record of the Tree List Output file include:

* Header indicator: -999 indicates that a new table follows
* Number of rows of data in the table
* FVS cycle number
* Year
* Stand ID
* Management ID
* FVS variant and version number
* Date of simulation run
* Time of simulation run
* Type of list (tree, dead, cut)
* Cycle length (years)
* Stand sampling weight
* FVS variant revision date
* Parallel processing code (obsolete).

The Tree List information can also be output directly to a database. Refer to the Users Guide to the Database Extension (Crookston et al. 2003). There is a section that discusses the FVS\_Treelist, FVS\_Cutlist, and FVS\_ATRTList output tables. Also see the description of the TREELIDB, CUTLIDB, and ATRTLIDB database keywords, which must be used in conjunction with the TREELIST, CUTLIST, and ATRTLIST keywords respectively to request these tables.

#### 4.3.3.2 The Echoed Summary Output File

The Echoed Summary Output File, frequently called the Echosum File, shown in figure 4-7, is a copy of the Summary Statistics Table stored without text headings in a supplemental output file. The file contains copies of the summary tables from all stands included in the projection. Each stands’ summary table is prefaced by a header record (beginning with –999) containing crucial information for identifying the stand, stand attributes, the date and time the simulation was run, and the version of FVS used to make the simulation. This file is a copy of the yield table resulting from the projection that can be read by other auxiliary programs and per acre values are based on total stand area. The copy of the Summary Statistics Table is requested with the ECHOSUM record.

When using the ECHOSUM option to produce a copy of the Summary Statistics Table, a four-character label can be added to assist subsequent proc­essing. The label is entered with the MGMTID record (see section 4.1.2.1).

![Image of the Echoed Summary Output file from the Forest Vegetation Simulator.](data:image/jpeg;base64...)

**Figure 4-7** — Example of the Echoed Summary Output file from the Forest Vegetation Simulator.

Data fields in the Echoed Summary Output File are the same as those shown in the Summary Statistics Table in the main FVS output file (see section 4.3.1.4). The header record contains the following information:

* Header indicator: -999 indicates that a new table follows
* Number of rows of data in the table
* Stand ID
* Management ID
* Stand sampling weight
* FVS variant code
* FVS variant version number
* Date of simulation run
* Time of simulation run
* FVS variant revision date
* Parallel processing code (obsolete).

The Summary Statistics information (from which the Echoed Summary Output is pulled) can be output directly to a database. Refer to section 4.3.1.4.1.

#### 4.3.3.3 The Calibration Statistics File

The Calibration Statistics File, shown in figure 4-8, contains the large-tree diameter growth and small-tree height growth calibration values by species. This file is useful for developing multipliers to correct for consistent biases in model output across a large geographic area. This file is produced by using the CALBSTAT keyword and serves as input to the Calibration Summary Statistics post-processing routine. In the example file below, the large-tree diameter growth model (indicated by “LD” in figure 4-8) calibrated for grand fir. None of the species had enough observations to calibrate the small-tree height growth model. However, if there were, these would have shown up with the designation “SH” in the Calibration Statistics File.

![Image of the Calibration Statistics file from the Forest Vegetation Simulator.](data:image/jpeg;base64...)

**Figure 4-8** — Example of the Calibration Statistics file from the Forest Vegetation Simulator.

See section 4.3.1.1.3 for a more comprehensive description of the statistical values. The Calibration Statistics file contains the following information:

Header record:

* CALBSTAT indicator
* FVS variant code
* FVS variant version number
* Date of simulation
* Time of simulation
* Stand ID
* Management ID
* Habitat type or plant association
* Site species sequence number
* Site index for the site species
* Stand age at inventory
* Variant revision date

Individual calibration records:

* Calibration indicator: CAL indicates that a species has been calibrated.
* Increment model that calibrated: LD indicates large-tree diameter growth; SH indicates small-tree height growth.
* Numeric species sequence code for the FVS variant.
* Alpha species code
* Number of input tree records of the specified species that include appropriate increment data for scaling the specified model.
* Initial scale factor calculated for the specified species and model.
* Ratio of standard errors in the input data records to the standard errors from the data used to build the FVS model.
* Relative weight given to the input growth data as opposed to the value contained in the FVS model when computing the initial scale factor. This weight is part of an empirical Bayes estimation process (Krutchkoff 1972) not described here.

The Calibration Statistics can also be output directly to a database. Refer to the Users Guide to the Database Extension (Crookston et al. 2003). There is a section that discusses the FVS\_CalibStats output table. Also see the description of the CALBSTDB database keyword used to request this table.

#### 4.3.3.4 The Stand Visualization File

The Stand Visualization System (SVS) software (McGaughey 1997) generates computer drawings of the stand based on information produced by FVS. Special output files, each recognizable by a “.svs” file extension, are produced when the SVS keyword is used in FVS. These files are specifically intended for running the Stand Visualization System program (see section 5.7) and are not illustrated here. When using the SVS keyword, an SVS tree list is produced at every cycle boundary. Additional SVS tree lists are produced after harvests and during fires simulated with the Fire and Fuels Extension (see section 8.2). Per acre values are based on total stand area.

The FVS graphical user interface has an integrated tool that displays the SVS images within the GUI under the Visualize menu. It is based on the same logic used to build the SVS program.

#### 4.3.3.5 The FVSSTAND File

This output file is generated with the FVSSTAND keyword and can be recognized by a file extension of “.fst”. The output file is like the Tree List output file with additional variables required by the FVS-Stand program appended to the end of each line. Per acre values are based on total stand area. The FVS-Stand program is obsolete, but the output file is still available from FVS.

If the GROWTH keyword record uses increment measurement methods 1 or 3 (repeated measurements of diameter or height), then the GROWTH record must precede the TREEDATA record in the keyword sequence so that past diameters and heights can be interpreted correctly for the FVS-Stand file.

### 4.3.4 Keywords Related to the Main Output File

The FVS system has four keywords related to the main output file. The SCREEN keyword can be used to have an abbreviated copy of the Summary Statistics Table copied to the terminal screen as the run progresses. This keyword is useful to reassure the user that the projection is actually running. The NOSCREEN keyword turns this feature off, and is the default condition. The DELOTAB keyword can be used to delete certain sections of the main output file. This keyword is useful to reduce the size of the output file if certain tables are not desired. The NOSUM keyword suppresses printing the Summary Statistics Table to the main output file and the NOECHO and ECHO keywords turn off, and back on, respectively the echoing of keyword input to the main output file.

## 4.4 How Graphical User Interfaces Relate to this Section

A graphical user interface (GUI) to the Forest Vegetation Simulator (see section 2.2) provides users with an easy and convenient way to set up FVS simulations. The FVS GUI is installed as part of the installation package available from the FVS web-site.

The GUI automatically generates many of the keywords discussed in this section. Stand-level information contained in the input data is used to build the STDINFO, GROWTH, INVYEAR, SITECODE, MODTYPE, LOCATE, and DESIGN keyword records. The SCREEN and NUMCYCLE keyword records are automatically included. Setting the time scale may also include a TIMEINT keyword record. Users can override the effects of these automatically generated keyword records by adding new keyword records (e.g., adding a SITECODE keyword record). FVS will use those added by the user in place of the ones the GUI automatically builds.

GUIs make use of the “!” commenting convention. Lines used by the GUI are often written to the keyword file with two exclamation points (!!) as the first characters. They may be scattered throughout the file. These lines are needed by the GUI in order to create windows correctly, display default values and ranges correctly, etc. These lines are treated as comments and are ignored by FVS. As with all comments beginning with an exclamation point, these lines are not written to the FVS main output file.

# 5.0 Intermediate Concepts

*Primary technical references for this section: Stage 1973; Wykoff et al. 1982; Wykoff et al. 1990, Ferguson and Crookston 1991, Crookston 1990*

This section is for the person who can run their data through FVS, has a basic idea of how to interpret the output, and is now ready to look at simulating management options and customize their runs. Upon completion of this section, users should:

* Understand how to schedule the timing of management options to achieve desired results.
* Be able to use the thinning keyword records to simulate stand management objectives.
* Be able to modify volume calculations.
* Be able to simulate regeneration.
* Understand how to conditionally schedule management activities.
* Be able to create custom output variables.
* Be able to generate stand visualizations.
* Know how to create graphs, charts, and custom output tables.

## 5.1 Timing of Management Options

The Forest Vegetation Simulator projects a stand of trees forward through time. Timing management options so they occur at the proper place in the temporal scale is important. This can easily be accomplished in FVS by adjusting the number of projection cycles and cycle length in relation to the inventory year. The NUM­CYCLE, TIMEINT, and INVYEAR records are used to adjust these parameters, and were introduced in section 4.1.3.1. In addition, users need to consider when events take place in the FVS processing sequence (see figure 3-1), and understand a few simple rules regarding how FVS treats multiple requests scheduled for the same cycle.

### 5.1.1 Setting the Stage (INVYEAR revisited)

Management option requests can be scheduled by year or by cycle. The year/cycle is always the first parameter on any management option keyword record. FVS will accommodate up to 40 projection cycles in a simulation. If the value of the year/cycle parameter on the management option request is 40 or less, it is assumed to be a cycle; if it is 41 or greater, it is assumed to be a year. If the INVYEAR keyword is missing, or contains a zero in the first field, then users should code management option requests using a cycle number, rather than a year.

There may be an advantage to including a valid INVYEAR keyword and using years to schedule management options. Multiple management option requests may be scheduled during any projection cycle. If a user is scheduling management option requests using years rather than cycles, then the user is free to change the cycle boundaries using the TIMEINT keyword record without having to decide how to also change the cycle field on the management options. If using years to schedule management option requests, these years do not need to coincide with the beginning of a cycle. Management option requests will be simulated in order of year, even within a single cycle. Users must still be careful when specifying these years so events occur in the order intended, but it may be easier to keep track of year ordering than it is to keep track of keyword record ordering. Only management option requests specified for the same year will be simulated in the order they occur in the input file.

### 5.1.2 Timing the Events (NUMCYCLE and TIMEINT revisited)

Thinning option requests are assumed to occur at the beginning of the cycle in which they are scheduled. Other management options, such as regeneration or those simulated in various model extensions, may not occur at the beginning of the cycle. If users want these options to occur in a specific year, then cycle boundaries may need to be adjusted to accomplish this. For example, assume in the example presented in figure 4-1, the user wanted the prescription thinning to occur in year 1993. If the user simply substituted 1993 for 1990 on the thinning request, the thinning would still be done in 1990 (i.e., it would be done at the beginning of the cycle in which it was scheduled, which is the cycle from 1990 to 2000). To get the prescription thinning to occur specifically in 1993, the user needs to create a cycle boundary at year 1993. Getting the prescription thinning to occur in year 1993 could be accomplished by adding two TIMEINT keyword records and replacing the NUMCYCLE and THINPRSC keyword records in that example as follows:

NUMCYCLE 11.

TIMEINT 1. 3.

TIMEINT 2. 7.

THINPRSC 1993. 0.999

The first cycle has been split from one 10-year cycle into two cycles of length 3 and 7 years. This creates a cycle boundary at year 1993. The prescription thinning scheduled for the year 1993 will occur in 1993 since that year now coincides with the beginning of the cycle in which it is scheduled. The number of cycles was increased from 10 to 11, to still achieve a 100-year simulation. However, users should be aware there is some bias created by using short projection cycles (see section 4.1.3.1).

An alternative to adding a cycle using the NUMCYCLE keyword record and adding the two TIMEINT keyword records is to add a CYCLEAT keyword record and specify a cycle boundary at 1993. This also splits the one 10-year cycle into two cycles of length 3 and 7 years.

## 5.2 Simulating Stand Management

This section describes available thinning options and illustrates simulation of various silvicultural treatments. Some of the thinning options allow selection of specific trees or classes of trees for removal. In other options, a removal priority is assigned on the basis of species, size (DBH), tree value class (IMC), mistletoe rating, and special tree status. The highest priority trees are then removed until a density target (basal area or trees per acre) is achieved. When using the den­sity target options, adjusting the relative weights of the components in the removal priority formula can control the types of trees removed.

The process of thinning involves the removal of trees. The method by which FVS simulates a harvest is very simple. Each tree record within FVS has a tree count attribute that indicates the number of trees per acre the tree record represents. If the other tree attributes (diameter, height, etc.) fall within the harvest parameters, then the tree count attribute is simply reduced to reflect how many of the trees per acre represented by this tree record are removed. It is possible to remove the entire trees per acre representation, or only a portion of the trees per acre representation, for a tree record during a harvest. FVS may process multiple thinning keywords in the same cycle. The tree count for each tree is reduced appropriately for each thinning scheduled for the same cycle.

### 5.2.1 Specifying Minimum Harvest Levels

Thinning requests can be constrained by specifying standards for minimum acceptable harvests. These standards may be expressed in terms of volume per acre (total cubic feet, merchantable cubic feet, sawtimber cubic feet, or board feet) or basal area per acre (square feet). Minimum acceptable harvests are specified by projection cycle. The accumulated removals across all thinning requests in a cycle must exceed the standards for all of the units of measure, or none of the thinning requests in that cycle will be implemented. The minimum harvest standards are specified using the MINHARV keyword record.

### 5.2.2 Cutting Efficiency

The proportion of trees/acre represented by a tree record that is to be removed in any thinning request is referred to as the cutting efficiency. The default cutting efficiency is 1.0 meaning all the trees represented by a tree record will be removed. However, the cutting efficiency, which must range between 0.0 and 1.0, can be changed using the keyword records. Cutting efficiency can be changed for an individual thinning using the cutting efficiency parameter on the thinning keywords, or can be changed globally using the CUTEFF keyword record. In some cases, where residual targets are specified, the model dynamically calculates the cutting efficiency necessary to achieve the target.

If a cutting efficiency value is supplied as part of a thinning request, it will only apply to that thinning re­quest. If a value is not supplied with the thinning request, the cutting efficiency param­eter associated with the CUTEFFrecord will be used.

While simple in concept, cutting efficiency affects simulation results differently depending on which thinning keyword record is processed. In some instances, it can cause a thinning to be cancelled, in others it can cause a thinning to fall short of its target, and sometimes it is ignored completely. Understanding how cutting efficiency operates under various circumstances may avoid potential problems. How FVS deals with cutting efficiency for each type of thinning request will be noted when describing the thinning request.

### 5.2.3 Thinning To Remove Specific Trees Or Classes Of Trees

The first thinning options considered are ones that allow the removal of specific trees, or trees that are contained in a class which is defined by species, species group, tree size, or mistletoe rating.

#### 5.2.3.1 Prescription Thinning

Prescription thinning is requested with the THINPRSC keyword record. The prescription thinning option uses the prescription codes (IPRSC, see section 4.2.1) that are input with the tree records. When a prescription thinning is requested, and a prescription code is entered in the appropriate parameter field, a proportion of all trees with that prescription code will be removed. This proportion is specified by the cutting efficiency parameter. For example, a THINPRSC record with prescription code 4 and cutting efficiency 0.8 would remove 80% of the trees represented by records with IPRSC code 4. All other records would be ignored by this thinning request.

Multiple requests for the prescription thinning option are possible to remove specific trees at specific times in the projection. When a prescription thinning is requested, and a prescription code is not entered in the appropriate parameter field, all trees with a value of IPRSC that is greater than or equal to 2 will be removed. For example, records number 3, 5, 6, 12, 13, 14, 15, 21, 22, 26, and 27 in figure 4-3 were marked for removal, and a specific prescription code was not entered on the THINPRSC keyword in the example keyword record file, figure 4-1. In this instance, all the above listed records would be removed.

Cutting efficiency is not changed when processing this type of thinning request. The proportion specified either by the global value or the cutting efficiency parameter on the thinning request is removed from all records scheduled for removal.

#### 5.2.3.2 Diameter Limit Thinning

The diameter limit thinning option is requested with the THINDBH record, and can be used to remove segments of the diameter distribu­tion. It is possible to limit the cut to individual species or species group, and either a residual trees or basal area per acre target for that species or species group in a specified diameter range. Thinning occurs uniformly throughout the specified diameter range. If a residual target is not specified, diameter limit thinning requests use the specified, or default, cutting efficiency to determine the proportion of each tree record to remove. However, if residual trees per acre or basal area per acre is specified, the model ignores the user-specified cutting efficiency and calculates the cutting efficiency needed to uniformly distribute the thinning throughout the diameter range and meet the specified target. The cutting efficiency used is reported in the Activity Summary Section of the Summary Statistics Table. The THINDBH keyword is especially useful for simulating treatments such as stand cleaning and overstory removal.

Thinning requested by a THINDBH keyword record is intended to remove a specified proportion of a diameter distribution, and priority weighting factors entered on the SPECPREF, TCONDMLT, and MISTPREF keyword records have no effect on these thinning requests (see section 5.2.4.1). In addition, the residual target is for the specified species or species group, and DBH range, and not a total stand residual. However, a way to make the residual target a total stand residual will be shown in the section 6.3 of this manual.

If both a basal area and a trees per acre target are specified on the same THINDBH keyword, the trees per acre target is used. However, neither target needs to be specified. Consider, for example, the keyword sequence:

THINDBH 2010. 5. 20. 1. ALL 70. 0.

THINDBH 2010. 20. 99. 1. DF 0. 10.

THINDBH 2010. 0. 5. 0.5 *~~b~~* *~~b~~* *~~b~~*

In year 2010, the first THINDBH would leave 70 trees per acre of whatever species are in the stand which are greater than, or equal to, 5.0 inches in diameter and less than 20.0 inches in diameter. The second THINDBH would remove only Douglas-fir with diameters 20.0 inches and larger, leaving 10 square feet of basal area in Douglas-fir with diameters greater than, or equal to, 20.0 inches. Species other than Douglas-fir which are 20.0 inches in diameter, or larger, would not be affected. In both of these cases, since residual targets are specified, the model ignores the specified cutting efficiency of 1.0 and calculates the cutting efficiency it needs to achieve the desired targets while spreading the harvest across the entire specified diameter class. The third THINDBH accounts for logging damage to understory trees and tells the model to remove 50 percent of all the trees less than 5.0 inches in diameter. The cutting efficiency specified on the third THINDBH request is used since a residual target was not specified.

#### 5.2.3.3 Height Limit Thinning

The height limit thinning option is requested with the THINHT keyword record. This keyword is also useful for simulating treatments such as stand cleaning and overstory removal. The height limit thinning option is analogous to the THINDBH keyword except it can be used to remove segments of the height distribu­tion. It is possible to limit the cut to an individual species or species group and to either a residual trees per acre or basal area per acre target for that species or species group in the specified height range. Thinning occurs uniformly throughout the specified height range. Cutting efficiency operates exactly the same as described for the THINDBH thinning request.

Thinning done with a THINHT keyword record does not use the cutting removal priority (see section 5.2.4.1). Therefore, the priority weighting factors entered on the SPECPREF, TCONDMLT, and MISTPREF keyword records have no effect on these thinning requests. In addition, the residual target is for the specified species or species group, and height range and not a total stand residual.

#### 5.2.3.4 Mistletoe Sanitation Thinning

The mistletoe thinning option is requested with the THINMIST keyword record. This keyword is useful for simulating mistletoe sanitation thinning. It is possible to remove all mistletoe infested trees, or limit the cut to trees with a specific mistletoe rating in the specified diameter range. Thinning occurs uniformly throughout the specified diameter range utilizing the specified cutting efficiency.

Thinning done with a THINMIST keyword record does not use the cutting removal priority (see section 5.2.4.1). Therefore, the priority weighting factors entered on the SPECPREF, TCONDMLT, and MISTPREF keyword records have no effect on this thinning request.

### 5.2.4 Thinning To Control Stand Density

The remaining stand management options reflect a somewhat different management philosophy. With these options stand density within a specified diameter and/or height class may be managed while giving consideration to tree size, species, species group, value class, mistletoe rating, and special status in determining priority for removal. The thinning request keyword specifies whether basal area per acre, trees per acre, or stand density index will be controlled. It also in­dicates whether small trees (thinning from below) or large trees (thinning from above) will be favored for removal. Other keywords are needed to specify the role of species, tree condition, dwarf mistletoe rating, and special tree status in determining the actual removal priority.

#### 5.2.4.1 Computing Removal Priority

Equation {5.2.4.1.1} is used to assign each tree a priority for removal (*P*).

{5.2.4.1.1} *P* = (*Fd* ∙ *DBH*) + *SP* + (*Ft* ∙ *IMC*) + *Fm* + (*Fs* ∙ *STS*) + (*Fpba* ∙ *PBAi*) +
(*F*pccf ∙ *PCCFi*) + (*F*ptpa ∙ *PTPAi*)

where:

*Fd* is equal to 1 if thinning from above, or -1 if thinning from below

*DBH* is tree diameter at breast height

*SP* is a user-specified species preference

*Ft* is a user-specified multiplier for the tree value class code

*IMC* is tree value class code (see section 4.2.1)

*Fm* is a user-specified dwarf mistletoe preference

*Fs* is a user-specified multiplier for the tree special status code

*STS* is tree special status code (see Damage and Severity codes in section 4.2.1)

*Fpba* is a user-specified multiplier for the point estimate of stand basal area

*PBAi* is stand basal area estimate for the inventory point where the tree is located

*Fpccf* is a user specified multiplier for the point estimate of stand crown competition factor

*PCCFi* is the estimate of the stand crown competition factor for the inventory point where the tree is located

*Fptpa* is a user-specified multiplier for the point estimate of stand trees per acre

*PTPAi* is stand trees per acre estimate for the inventory point where the tree is located

The probability that a tree will be removed in a thinning is proportional to *P*. The tree with the largest *P* is removed first. Thereafter, trees are selected for removal, in descend­ing order of *P*, until the residual stand density objective is achieved. By manipulating the values of *SP*, *Ft*, *Fm*, *Fs*, *Fpba*, *Fpccf*, and *Fptpa*, and choosing an appropriate density control option, a thinning strategy can be designed to attain a wide array of silvicultural objectives. The last three terms can be used to apply a thinning differentially to points based on stocking or to simulate group selection (see section 5.2.4.3).

The default values of *SP*, *Ft*, *Fm*, *Fs*, *Fpba*, *Fpccf*, and *Fptpa* are zero for all species. If a user does not alter these parameters, trees will be ordered by DBH. The SPECPREF and TCONDMLT records can be used to modify the values of *SP*, *Ft,* *Fs**Fpba*, *Fpccf*, and *Fptpa*. The MISTPREF keyword record can be used to modify the value of *Fm*.

A species can be eliminated from consideration for removal in a thinning by using the SPLEAVE keyword record. In other words, the designated species is considered a leave species and none of the trees of that species will be selected for removal.

#### 5.2.4.2 Specifying Thinning Method and Target Density

The keywords used to specify a density target, within a specified diameter and/or height class, also indicate whether thinnings are to be from above or from below. These keywords are defined as follows:

THINBTA Thin from below to a trees per acre target.

THINATA Thin from above to a trees per acre target.

THINBBA Thin from below to a basal area per acre target (square feet).

THINABA Thin from above to a basal area per acre target (square feet).

THINSDI Thin to a Stand Density Index target.

THINCC Thin to a Percent Canopy Cover target.

THINRDEN Thin to a Relative Density target (Curtis 1982).

THINRDSL Thin to a Relative Density target (Marquis and Ernst 1992).

##### 5.2.4.2.1 Thinning From Above or Below to a Trees per Acre or Basal Area Target

The THINBTA, THINATA, THINBBA, and THINABA keywords all require the same parameters specifying the year, target density, cutting efficiency, and class boundaries. Target density pertains only to the defined size class and does not reflect residual stand conditions. FVS does not dynamically adjust the cutting efficiency for thinning requests specified with these keywords, and each tree record is considered for thinning only once per thinning request. As a result, if the cutting efficiency is set too low, the model may not be able to attain the residual target specified on the thinning request. In this case, the thinning request will be completed, but the residual condition will exceed the specified target. If the initial condition is already less than the target specified, the thinning will be cancelled. Users should look at the “Activity Summary” portion of the output to see which thinning requests were simulated and which ones (if any) were cancelled. For the thinning requests that were simulated, users should also check the Summary Statistics table or the Tree and Stand Attributes table to assure the effect was what they intended.

##### 5.2.4.2.2 Thinning to a Stand Density Index Target

The THINSDI keyword is more complex than those discussed previously, but it is more versatile as well. When the appropriate method of calculation is used, Stand Density Index (Reineke 1933, Stage 1968, Zeide 1983, Shaw 2000) is a measure of stocking which describes density and is also sensitive to the diameter class distribution of the stand. In this respect, it goes beyond simple measures such as basal area to better represent irregularly structured stands. In other words, stand density index can distinguish between stands with similar basal areas but different diameter distributions. Section 7.3.2.1 contains the equations used to calculate stand density index.

THINSDI schedules a thinning from a specified diameter range for any species, species group, or all species to a stand density index (SDI) target. This keyword contains a cutting control parameter. Depending on the value of that parameter, this keyword can operate like a THINDBH, or like the four density target thinning requests described above.

If the specified target is nonzero and the cutting control flag is zero, thinning occurs uniformly throughout the specified diameter range. In this case, the specified cutting efficiency is ignored and the model computes the cutting efficiency it needs to spread the thinning through the diameter class and meet the specified target. The cutting priority algorithm is not used when the cutting control flag is set to zero. In this case, the keyword acts like the THINDBH keyword.

If the specified target is nonzero and the cutting control flag is nonzero, then thinning will be from below or above in the specified diameter class to the residual SDI target. In this case, both the specified cutting efficiency and the cutting priority algorithm are used. This is similar to the density target thinning requests described above. However, if the cutting efficiency is set so low that the target cannot be reached, the model recalculates the cutting efficiency to achieve the target. This behavior is different from that of the other density target thinning requests.

The cutting efficiency used is reported in the Activity Summary Section of the Summary Statistics Table.

##### 5.2.4.2.3 Thinning to a Percent Canopy Cover Target

The THINCC keyword record schedules a thinning from a specified diameter range for any species, species group, or all species to a percent canopy cover target. This keyword contains a cutting control parameter. Depending on the value of that parameter, this keyword can operate like a THINDBH, or like the four density target thinning requests described in section 5.2.4.2.1.

If the specified target is nonzero and the cutting control flag is zero, thinning occurs uniformly throughout the specified diameter range. In this case, the specified cutting efficiency is ignored and the model computes the cutting efficiency it needs to spread the thinning through the diameter class and meet the specified target. The cutting priority algorithm is not used when the cutting control flag is set to zero. In this case, the keyword acts like the THINDBH keyword.

If the specified target is nonzero and the cutting control flag is nonzero, then thinning will be from below or above in the specified diameter class to the residual percent canopy cover target. In this case, both the specified cutting efficiency and the cutting priority algorithm are used. This is similar to the density target thinning requests described above. However, if the cutting efficiency is set so low that the target cannot be reached, the model recalculates the cutting efficiency to achieve the target. This behavior is different from that of the other density target thinning requests discussed in section 5.2.4.2.1.

The cutting efficiency used is reported in the Activity Summary Section of the Summary Statistics Table.

Percent canopy cover is corrected for overlap in FVS. However no attempt is made to reconcile crown overlap between multiple THINCC thinning requests in the same cycle. The residual percent canopy cover on a THINCC thinning request pertains only to the specified species or species group, and diameter range, and does not represent the total stand residual unless the request includes all species and all diameters in the stand. For example, if a user scheduled two THINCC thinning requests for the same cycle, one leaving 20 percent canopy cover in trees less than 10.0 inches in diameter, and one leaving 30 percent canopy cover in trees greater than or equal to 10 inches in diameter, then the targets for each of these requests would be met exactly. However, the total stand percent canopy cover would not be 50 percent because some of the crowns in the upper diameter class overlap some of the crowns in the lower diameter class.

##### 5.2.4.2.4 Thinning to a Relative Density Target

The THINRDEN and THINRDSL keyword records schedule a thinning from a specified diameter range for any species, species group, or all species to a relative density target. These keywords contain a cutting control parameter. Depending on the value of that parameter, these keywords can operate like a THINDBH, or like the four density target thinning requests described in section 5.2.4.2.1.

If the specified target is nonzero and the cutting control flag is zero, thinning occurs uniformly throughout the specified diameter range. In this case, the specified cutting efficiency is ignored and the model computes the cutting efficiency it needs to spread the thinning through the diameter class and meet the specified target. The cutting priority algorithm is not used when the cutting control flag is set to zero. In this case, the keyword acts like the THINDBH keyword.

If the specified target is nonzero and the cutting control flag is nonzero, then thinning will be from below or above in the specified diameter class to the residual relative density target. In this case, both the specified cutting efficiency and the cutting priority algorithm are used. This is similar to the density target thinning requests described above. However, if the cutting efficiency is set so low that the target cannot be reached, the model recalculates the cutting efficiency to achieve the target. This behavior is different from that of the other density target thinning requests discussed in section 5.2.4.2.1.

The cutting efficiency used is reported in the Activity Summary Section of the Summary Statistics Table.

The THINRDEN keyword thins to a relative density target as defined by Curtis (1982). Equation {5.2.4.2.4.1) (Lu et al. 2017) is a tree-by-tree summation method used to calculate the relative density contribution of the trees in the range specified on the keyword.

{5.2.4.2.4.1} *RD* = ∑(*a* ∙ *TPAi* + *b* ∙ *DBHi*2 ∙ *TPAi*)

*a* = ((0.25 ∙ π)/242) ∙ *QMD*1.5

*b* = ((0.75 ∙ π)/242) ∙ *QMD*-0.5

where:

*RD* is relative density

*DBHi* is diameter at breast height of tree record *i*

*TPAi* is trees per acre of tree record *i*

*QMD* is the quadradic mean diameter for all trees in the stand

∑ is summation over all trees for which the contribution to RD is being calculated. For stand RD the summation is over all trees in the stand.

This measure of relative density is derived from Reineke’s SDI formulation and provides a simple and convenient scale of relative stand density. It is used extensively in the Pacific Northwest region of the United States.

The THINRDSL keyword thins to a relative density target as defined in the SILVAH model (Marquis and Ernst 1992) using equation {5.2.4.2.4.2}. This keyword is only for use in the Northeast variant and only when the stand is classified as one of the following five SILVAH forest types:

**Northern Hardwood** – stands that have at least 65% of total stand basal area in sugar maple, red maple, American beech, yellow birch, sweet birch, eastern hemlock, American basswood, cucumbertree, black cherry, white ash, or yellow-poplar.

**Northern hardwood-hemlock** – stands meeting the requirements for the northern hardwood type which also have at least 50% of their basal area in eastern hemlock.

**Allegheny hardwood** – stands meeting the requirements for the northern hardwood type that also have at least 25% of their basal area in black cherry, white ash, and yellow-poplar, and less than 50% of their basal area in eastern hemlock.

**Oak-hickory** – stands that have at least part of their basal area in any oak or hickory species.

**Transition** – stands that have at least 65% of their basal area in species of either the northern hardwood or oak-hickory types, but do not qualify for any of the other forest types alone.

{5.2.4.2.4.2} *RD* = ∑i ∑j[(*ai* + *bi* ∙ *DBHj* + *ci* ∙ *DBHj*2) ∙ *TPAj*]

where:

*RD* is relative density

*TPAj* is trees per acre represented by the *j*th tree of *i*th species group

*DBH* is diameter at breast height of the *j*th tree of *i*th species group

*ai*, *bi*, *ci* are coefficients for species group *i*

∑i is summation over all species groups

∑j is summation over all trees in species group *i*

Species Group 1: a = 0.0033033, b = 0.020426, c = 0.0006776

Species Group 2: a = -0.027142 , b = 0.024257, c = 0.0015225

Species Group 3: a = -0.0027935, b = 0.0058959, c = 0.0047289

Species groups for the Northeast variant were provided by Susan Stout and Todd Ristau (USFS, Northern Research Station). Northeast variant species not specifically assigned to a group use the coefficients for species group 2.

**Species Group 1:** ash species, white ash, yellow-poplar, black cherry, pin cherry

**Species Group 2:** eastern white pine, eastern hemlock, red maple, yellow birch, sweet birch, sweetgum, cucumbertree, quaking aspen, balsam poplar, eastern cottonwood, bigtooth aspen, northern red oak, other hardwood species, hackberry, common persimmon, American holly, magnolia species, blackgum, sourwood, black locust, sassafras, American basswood, white basswood, other elm species, American elm, slippery elm, boxelder, serviceberry, American hornbeam, flowering dogwood, hawthorn species, eastern hophornbeam

**Species Group 3:** sugar maple, hickory species, pignut hickory, shellbark hickory, shagbark hickory, mockernut hickory, American beech, white oak, bur oak, chinkapin oak, post oak, other oak species, scarlet oak, shingle oak, water oak, pin oak, chestnut oak, swamp white oak, swamp chestnut oak, black oak, cherrybark oak, willow oak, non-commercial hardwood species, striped maple

The residual relative density on either a THINRDEN or THINRDSL thinning request pertains only to the specified species or species group, and diameter range, and does not represent the total stand residual unless the request includes all species and all diameters in the stand.

##### 5.2.4.2.5 Thinning Using a Q-Factor Approach

The THINQFA keyword record schedules a thinning from a specified diameter range for any species, species group, or all species to a residual density target specified as basal area per acre, trees per acre, or stand density index. The diameter distribution of the residual trees of the specified species in the specified diameter range (trees per acre vs. diameter class) approximates, as closely as possible, an inverse, J-shaped curve determined by the specified Q-factor (or diminution quotient, often denoted Dq) and associated diameter class sizes (Meyer 1952).

In simple terms, the Q-factor is a value that, when multiplied by the desired number of trees in a diameter class, gives the desired number of trees in the adjacent class of smaller diameter trees.

Using the specified Q-factor, the residual trees-per-acre target is calculated for each specified diameter class so that the total specified residual density would be met. If the existing trees-per-acre value in any diameter class is less than the target, the targets of all classes with excess trees are increased in equal proportion so the total specified residual density will be met. Thinning occurs uniformly throughout each of the specified diameter classes. The cutting priority algorithm is not used. The keyword acts like a series of THINDBH keywords; one for each of the diameter classes. If the specified residual density for the entire specified diameter range is greater than the existing density for that range the keyword is canceled.

If the specified diameter range is not equally divisible by the specified diameter class width, the class representing the smallest diameter trees will be incomplete (i.e., too narrow). When this occurs the incomplete class is excluded from the harvest, so no trees are cut in the incomplete class of the smallest diameter trees.

#### 5.2.4.3 Point Density Control or Group Selection

FVS keeps track of the inventory point on which a tree is located. To simulate group selection or differentially treat a stand based on density within a stand, some form of point thinning can be used. This can be done in two ways within FVS.

The first way to apply a thinning on a point basis is to utilize the point density weighting factors on the TCONDMLT keyword in conjunction with any of the thinning options described in section 5.2.4 that utilize the removal priority formula. For example, a user wanting to reduce fire risk in a stand might want to treat the densest portion of a stand, as measured by trees per acre, and leave a residual of 80 trees per acre in the more open parts of a stand. The following keyword sequence would thin from below cutting trees off the inventory point with the most trees per acre first, then off the second densest point in terms of trees per acre, and so on, down to where there were 80 trees per acre left in the stand.

TCONDMLT 2010. 0. 0. 0. 0. 1000.

THINBTA 2010. 80.

The second way to apply a thinning on a point basis is to use the SETPTHIN and THINPT keyword records to apply a thinning to an individual inventory point. Multiple sets of these keywords could be used to apply different types of thinnings to different inventory points in the stand. For example, in year 2010, the following keyword sequence would thin inventory point 105 (as entered in the input data) from below and leave 20 trees per acre in trees less than 10 inches DBH and all trees 10 inches DBH and larger, and thin inventory point 110 across all diameters leaving a stand density index of 200 in the portion of the stand represented by this point.

POINTREF 1.

SETPTHIN 2010. 105. 1.

THINPT 2010. 20. 1. 0. 0. 10. 1.

SETPTHIN 2010. 110. 3.

THINPT 2010. 200.

In this example, the POINTREF keyword record (section 4.2.6) represents the default condition of telling FVS that point numbers (e.g., 105 and 110) will match those entered in the input data as opposed to the FVS sequential point number; it is shown in this example for clarity. The THINPT keyword operates exactly like a THINSDI keyword in terms of cutting efficiency and usage of the removal priority formula. The SETPTHIN and THINPT keywords must be used together and the SETPTHIN keyword record must immediately precede the THINPT keyword. The SETPTHIN keyword is telling FVS which point will be treated and what treatment attribute will be used, while the THINPT keyword is telling FVS the residual target, cutting efficiency, species, diameter range, and how to apply the treatment in the specified diameter range.

Users must realize when applying a point thinning using the THINPT keyword that each point is an independent estimate of the stand conditions and the FVS output is showing and average of all those independent estimates across the stand. So in the above example, if there were a total of 10 inventory points in the stand, leaving a residual of 20 trees per acre on point 105 is really leaving a residual of 2 trees per acre on that point since the point now represents 10 times the area on a stand basis. Once this concept is understood, the THINPT keyword is a powerful and versatile option that can be use to simulate many treatment scenarios that apply differentially to various parts of a stand.

#### 5.2.4.4 Automatic Stand Density Control

The last thinning option allows stand density to be maintained within a specific range of normal stocking as determined by maximum Stand Density Index. The Forest Vegetation Simulator contains maximum Stand Density Index (SDI) values for each species. Users should consult their variant overview documentation for default SDI values. Users can enter their own values if they want using the SDIMAX keyword record (see section 6.5.2.5). The maximum SDI for the stand is an average of the individual species SDI maximums, weighted by basal area. FVS also monitors the current stand SDI. This thinning option, invoked with the THINAUTO keyword, is dependent on the ratio between current stand SDI and the stand’s maximum SDI.

When automatic density control is used, the upper and lower limits of stand density (MIN and MAX) are defined as percentages of normal stocking as defined by maximum SDI. If the stand density is greater than MAX percent of normal at the beginning of a cycle, the number of trees in the stand will be reduced to MIN percent of normal by thinning from below. The cutting removal priority determines the order of removal.

Automatic density control may be started at the beginning of the projection or de­layed for any number of years. Once initiated, automatic control will be implemented in each subsequent cycle for which there is no other thinning request.

### 5.2.5 Yarding Losses

A special keyword exists to simulate losses that occur in yarding forest products during a thinning operation. The YARDLOSS keyword works in conjunction with thinning keywords to designate a portion of a harvest to be left in the woods. This may reduce harvest volumes and contributes to fuel loading for the Fire and Fuels Extension.

### 5.2.6 Pruning

Pruning is a silvicultural treatment that is accommodated in the Forest Vegetation Simulator by the PRUNE keyword. Pruning removes a portion of a tree’s crown when that tree is contained in a specified component of a stand. Options permit pruning to a specified height removing a specified proportion of a tree’s crown, or removing a specified length of a tree’s crown. These options can be called for with, or without, regard to the total proportion of a tree’s crown that would be removed. Prunings occur at the beginning of the cycle in which they are scheduled, but after all thinning requests scheduled in that cycle have been done, and prior to the second call to the Event Monitor (see figure 3-1).

### 5.2.7 Management Activities in the FVS GUI

Individual keyword records can be built in the FVS graphical user interface (GUI). The user selects the desired keyword and a window opens with boxes and/or lists used to enter the necessary information. Default values are often displayed when the keyword window is initialized.

However, the GUI also allows for access to the management keywords without referring to the sometimes cryptic keyword names. Instead, management keyword records are presented as “components” with names that use typical forestry vernacular. The FVS keywords are still behind the scenes, but it isn’t necessary to know their names. Some of these management components build a single keyword record, and others build a series of keyword records. Some actually use different keywords based on a selection made by the user. For example, a component window for thinning from above might give the user the option to select the residual density in terms of trees per acre or basal area per acre, and the selected option would determine whether a THINATA or THINABA keyword record is built. Regardless of the number of keyword records built or the combination of keywords used for the component, a single window is used to input all of the necessary information. When a component saved as part of the simulation, the corresponding keyword records are what is actually being saved behind the scenes. Those keyword records (not the component name shown in the GUI) will be reflected in the main FVS output file.

## 5.3 Modifying Calculations

Occasionally users may want to alter certain values that get calculated by the model. Users can easily alter either volume calculations or crown width calculations.

### 5.3.1 Modifying Volume Calculations

Both the merchantable cubic foot volume and the board foot volume indirectly influence the frequency of thinning through the minimum harvest constraints. These volume predic­tions also directly influence any comparison of alternative management strategies. There­fore, volume calculations are included as a part of the discus­sion of management options.

All FVS variants contain a choice of volume equations. The default is to use volume equations contained in the National Volume Estimator Library. These equations are regarded as the “standard” for the Forest Service, and they are also used in other agency software such as the National Cruise Program or Regional databases. In addition, each variant usually contains another set of equations that are commonly used in that geographic area, or users can enter their own volume equation coefficients.

Individual tree volumes are computed to four merchantability standards. Volumes are reported in total cubic feet from ground to tip, total merchantable cubic feet from the stump to a specified cubic foot merchantable top, total cubic feet of merchantable sawtimber from the stump to a specified sawtimber merchantable top, and total board feet from the stump to a specified board foot merchantable top. Sawtimber cubic foot volume will only be reported in western variants when the FIAVBC keyword is in use. The total merchantable cubic feet in eastern variants always includes the pulpwood and the merchantable sawtimber. Total pulpwood can be computed by subtracting merchantable sawtimber cubic feet from total merchantable cubic feet.

Volume calculations may be modified in three ways. First, different volume equations can be chosen. Second, merchantability limits can be changed. Third, form and defect correction factors can be implemented.

#### 5.3.1.1 Changing Volume Equations and Merchantability Limits

To select different volumes equation from the National Volume Estimator Library, select volume computation method that is different from the National Volume Estimator Library equations, or to change the merchantability specifications for volume computations, use the VOLEQNUM, VOLUME and BFVOLUME keyword records. The VOLEQNUM keyword record is used to select different equation numbers from the National Volume Estimator Library. The VOLUME keyword record pertains to merchantable and sawtimber cubic foot volume. The BFVOLUME keyword record pertains to board foot volume. Sawtimber volumes include the sawtimber portion of trees that contain both sawtimber and pulpwood. Users can specify the volume computation method, stump height, minimum top diameter, and mini­mum DBH to be used in estimating volumes. Users should consult their variant overview document to determine which volume computation methods are available for the variant they are using. Form class can also be changed with these keywords for volume computation methods that use form class. All these factors can be altered by cycle and by species.

#### 5.3.1.2 Entering Form and Defect Correction Factors

The other means of modifying volume predictions is through form and defect correction factors. Correction factors can be entered in three ways: (1) by entering the percent defect on the tree records, (2) by entering values for a linear interpolation function that computes the defect percentage based on the diameter of the tree, or (3) by entering parameters for form and defect log-linear correction equations that are used to compute a percent defect. Tree volume is then corrected for form and defect by multiplying the percent defect times the predicted gross volume. The percent defect applied to the tree record is the largest percent defect resulting from the three options. Both the cubic and board foot defect percentages applied to the tree record are printed in columns on the Tree List Output File (see section 4.3.3.1).

Defect percentages are entered on the tree input records by using the damage codes 25, 26, or 27 on the input tree records, and entering the percent defect in the corresponding severity field (see section 4.2.1). Parameters for the linear interpolation function are entered using the MCDEFECT, BFDEFECT, or DEFECT keyword records. Parameters for the log-linear correction equations are entered with the MCFDLN and BFFDLN keyword records. It is worth noting that keywords or measured defect used to adjust cubic foot volume estimates will not have any effect when the FIAVBC keyword is used.

There may be cases when users may not want to use the volume defect percentages recorded in the data and they don’t want to change the data files. For example, they may want FVS to output gross volumes even when defects are included in the input data, or the defect percentages in the data are of questionable value. Coding a value of 1 or greater in field 3 of the DEFECT keyword record will instruct FVS to ignore the volume defect percentages read as part of the data input record.

#### 5.3.1.3 FIA Volume, Biomass, and Carbon Computation Methods

Cubic foot volume, biomass, and carbon computation methods used by the Forest Inventory and Analysis program (FIA) are also available within the National Volume Estimator Library. The FIAVBC keyword can be used to invoke these methods in a simulation. The computation methods encompassed by this keyword include the National Scale Volume and Biomass estimators (NSVB, see Westfall et al. 2024) and regional equations assumed for woodland species (Burrill et al. 2024).

There are a few implementation details users should be aware of when the FIAVBC keyword is used. First, when the FIAVBC keyword is active, all species in the FVS variant will use FIA equations to estimate cubic foot volume, biomass, and carbon for the entire simulation timeframe. Cubic foot volume equations and merchantability limits cannot be altered with the VOLUME or VOLEQNUM keywords when the FIAVBC keyword is included in a simulation. In addition, users cannot apply defect to cubic foot volume with the DEFECT, MCDEFECT, and MCFDLN keywords or through damage and severity codes entered with the user’s tree data. Estimates of cubic foot volume, biomass, and carbon can be impacted by cull when this variable is collected for tree records (see section 4.2.1). Second, the species-specific carbon fractions described in Westfall et al. 2024 are used to convert all FIA wood and bark biomass estimates to carbon; however, a conversion factor of 0.5 is used to convert foliage biomass to carbon for all species. Finally, the average crown ratio values determined by ecological province code from Westfall et al. 2024 are not used in the computation of FIA biomass and carbon for live or dead trees with truncated tops. FVS dubs a crown ratio value (section 7.1.3.2) for all trees that do not have a measured crown ratio value during the inventory year and these values are used for biomass and carbon calculations.

There are several stand and tree level variables that should be considered when the FIAVBC keyword is active. Users should specify an ecoregion, Federal Information Processing Standards (FIPS) state code, and stand origin code (0 for naturally regenerated stand, 1 for artificially regenerated stand) for all stands in their inventory data. When specifying an ecoregion, a subsection code from Cleland et al. 2007 should be used for locations in the conterminous United States and a section code equivalent to the ecoregions derived in Nowacki et al. 2002 should be used for locations in Alaska. Digital spatial data for the ecological subsection codes from Cleland et al. 2007 and section codes based on Nowacki et al. 2002 can be found on the FVS documents webpage (Ecological Unit Codes): <https://www.fs.usda.gov/managing-land/forest-management/fvs/documents>. During a simulation, an ecological division code is determined from the input subsection or section code and is used to ensure that all relevant species assume the appropriate NSVB equations. FIPS state codes are used to assign the appropriate equations to use for woodland species and stand origin code will impact the NSVB equation assignment for loblolly pine and slash pine. Ecoregion, FIPS state code, and stand origin code can be entered for each stand in a user’s stand level inventory data (section 4.2.2.3). Alternatively, the STDINFO keyword can be used to specify ecoregion and stand origin code and the LOCATE keyword can be used to specify a FIPS state code for a given set of stands (section 4.1.2.2).

Cull, decay code, and woodland stem count are tree level variables that influence the calculations of FIA volume, biomass, and carbon. These variables can be specified for each tree record in a user’s tree level inventory data and are described in more depth in section 4.2.1.

When the FIAVBC keyword is used, cubic foot volume from the FIA computation methods will be reported in output tables where cubic foot volume is considered. Users may also request the FIA biomass and carbon event monitor variables when this keyword is active (see section 5.5.2.2). The FIAVBC keyword does not generate any additional output tables in a text file format but there are four database tables that can be produced with the FIAVBC keyword and database keywords from the Database Extension (section 8.11): FVS\_FIAVBC\_Summary, FVS\_FIAVBC\_TreeList, FVS\_FIAVBC\_AtrtList, and FVS\_FIAVBC\_CutList. These tables include FIA volume, biomass, and carbon attributes. More information about these tables and the keywords that create them can be found in the Users Guide to the Database Extension of the Forest Vegetation Simulator (Crookston et al. 2003).

### 5.3.2 Modifying Crown Width Calculations

Crown width estimates get printed in the Tree List Output File (see section 4.3.3.1) and are used in canopy cover calculations and some post-processing programs. Users can adjust crown width estimates by species or species group, and diameter range, using a multiplier entered on the FIXCW keyword (see section 6.5.2.4). Users can also enter coefficients for their own crown width equations if the equation is of the form of equation {5.3.2.1}, where *D* is tree diameter.

{5.3.2.1} *CROWN WIDTH* = *a*0 + (*a*1 ∙ *D*) + (*a*2 ∙ *Da*3)

Separate coefficients can be entered for trees less than a threshold diameter and for those that are greater than or equal to the threshold diameter. These coefficients and the threshold diameter are entered using the CWEQN keyword.

## 5.4 Simulating Regeneration

Forest stand characteristics change rapidly following a regeneration harvest. The new stand density, species composition, and tree vigor are determined during the regeneration period. No other silvicultural treatment creates such pronounced changes in the stand for long periods of time. Delays in obtaining stocking, poor stocking, or poor vigor reduce future yields.

The chances of achieving a regeneration goal depend on many factors that interact during the regeneration period. The Regeneration Establishment extension to the Forest Vegetation Simulator gives land managers a tool to predict the results of regeneration harvests, both as a guide for forest regeneration and as input to growth and yield planning. This extension quantifies results of the regeneration process in a statistically, and biologically sound manner. Uses of the regeneration model include the following:

* Deciding upon a regeneration prescription that best meets management objectives
* Linking regeneration to long-term growth and yield
* Predicting regeneration in long-term projections of succession or uneven-age management
* Developing harvesting schedules
* Helping in other areas of forest planning where regeneration is important for watershed, wildlife, esthetics, and so on.

Two versions of the Regeneration Establishment Model are used in FVS variants. One version is referred to as the “full” establishment model. This version has been calibrated for western Montana, central and northern Idaho, and coastal Alaska. It includes the full complement of establishment options that will be discussed below. The other version is referred to as the “partial” establishment model. This version only automatically simulates regeneration from stump sprouting; the user must provide information for planting and natural regeneration using keywords. This version is used in variants for which the full regeneration establishment model has not been specifically calibrated.

### 5.4.1 Regeneration Model Concepts

The Regeneration Establishment Model is called at the end of each projection cycle. Regeneration, however, can be scheduled for any year during a projection cycle and the trees are then grown to the end of the cycle by the regeneration model. The regeneration model creates a list of tree records describing new trees on 1/300-acre plots. A regeneration summary printed in the main output file reports the average probability of stocking for 1/300-acre plots, total trees per acre by species, identification of best trees from the list of total trees, and average estimated heights of best trees. New trees are added to plots that correspond to the inventory plots contained in the input data. Predictions are made for each plot, and then averaged to produce stand statistics.

The regeneration period is the number of years during which regeneration becomes established as a result of a disturbance. The length of the regeneration period varies depending on many factors, but for the purposes of FVS this period is set at 20 years. Regeneration that occurs after the regeneration period is called ingrowth. Ingrowth is both the result of succession by shade tolerant species and the continued regeneration of trees into gaps in the tree canopy.

The Regeneration Establishment Model is invoked following harvesting, growth, and mortality that occurs in the base model, thus the updated inventory is used to predict new regeneration. Regeneration is scheduled through the use of keywords (and by automatic calls in variants using the full establishment model). In a typical situation, a user would schedule regeneration following a simulated harvest. However, users may also want to schedule periodic regeneration to simulate ingrowth. In variants having the full establishment model, the regeneration model is automatically called when trees have been removed or when ingrowth is to be added to the stand.

Some spatial resolution is achieved in two ways. Although optional, each inventory plot can have unique at­tributes such as slope, aspect, habitat type, topographic position, and site preparation (see section 5.4.1.2). Also, the regeneration model uses plot specific values for overstory density, and overstory species composition, which are computed within the model. These features provide a way to better represent within-stand variation in site characteristics.

Regeneration is added to the FVS tree list at the end of the cycle in a regeneration tally. A tally is similar to results of a regeneration survey for a stand. At each tally, new regeneration may be added to the FVS tree list and a regeneration summary output table is printed. An example regeneration summary output table is shown in section 4.3 and discussed in section 5.4.4. Tally dates are a function of the cycle length and the year of disturbance. Whenever there is a cycle boundary within the 20-year regeneration period, a tally of regeneration will be pre­dicted and the new trees added to the tree list. Thus, 5-year cycle lengths would result in four tallies of regeneration. A series of tallies that occurs during a regeneration period is called a tally sequence.

Regeneration is assumed to occur in the spring of the year in which it is scheduled. Because regeneration is added at the end of the cycle, which corresponds to the fall of the year, the number of years of regeneration appears to be 1 year less than the cycle length. For example, if FVS were using 10-year cycles beginning in the year 2000, regeneration would be added in the “fall” of 2009. A total of 10 growing seasons have elapsed from 2000 to the fall of 2009. The new trees would appear in FVS summary tables beginning in 2010.

Multiple regeneration requests may be scheduled at any time. For example, several species could be planted in the same year. Similarly, several plantings could be scheduled for different times, either during the same regeneration period or different ones.

The regeneration model can simulate the effects of site preparation treatments. Individual plots may be mechanically scarified, burned, or left untreated. Site preparation treatments can occur at years other than the year of disturbance, but they should be scheduled sometime during the first tally. Site preparation treatments scheduled after the first tally in a tally sequence are cancelled because some trees from the first tally would be killed, and FVS has no way to predict this mortality at the present time.

Best trees play a key role in the FVS regeneration establishment model. This role is especially important in the full establishment model. The idea of best trees follows from the fact that many more trees reproduce than will exist in the mature forest (Wellner 1940). By selecting a few trees on each stocked plot, attention is focused on the growing stock that will contribute to yield. Best trees are chosen by the following rules:

* Select the two tallest trees on each 1/300-acre plot regardless of species.
* Select the one tallest tree of each additional species represented on the plot.
* If the first two rules do not total four trees, select in order of descending height from any remaining trees, if present, until four are chosen.

All best trees are passed to the FVS tree list for simulation of future stand development and are coded as being “desirable” trees (tree value class code 1, section 4.2.1). All planted trees are considered best trees. From the trees not chosen as best trees, up to five additional trees of each species per plot are passed to FVS but are coded as being “acceptable” trees (tree value class code 2, section 4.2.1). Additional acceptable trees may be passed to FVS using the PASSALL keyword record (see section 5.4.3.1.7).

#### 5.4.1.1 Stump Sprouts

Some variants of FVS represent species that produce sprouts from stumps or roots of harvested trees. For these variants, the Regeneration Establishment Model automatically adds regeneration sprouts to the tree list following harvests.

The species that sprout are different in the different variants of the Forest Vegetation Simulator, but all variants contain this feature. Both the number of sprouts and the sprout height can be adjusted using the SPROUT keyword. Information regarding sprouting trees is contained in a separate regeneration summary table in the main output file.

#### 5.4.1.2 Data Requirement and Inventory Considerations

The regeneration model is designed to utilize inventory data from a sample of 1/300 -acre circular plots that are representative of the stand. Each plot is projected separately so that unique properties of the plot influence its predicted contribution to the stand. Stand inventory values are substituted for plots for which plot-specific information was not provided.

The number of inventory plots to use as input to the model depends, in part, on micro-site variation within the stand (see section 5.4.1). A minimum of five plots is recommended. The regeneration model replicates the number of plots until 50 are available for projection. Plot replication means there will be within­-stand variation in seedling density, species composition, and heights.

The use of plot sizes other than 1/300-acre is permissible if it can be as­sumed that site descriptions are applicable. This simply means that infor­mation recorded for a different plot size would apply to a 1/300 -acre plot centered at the same location. However, the reported probability of stocking is for 1/300 -acre plots.

The data for the model were collected on individual 1/300 -acre plots. To fully utilize the model, users should:

* Inventory microsite attributes at each sample point: slope percent, aspect, site disturbance, habitat type, topographic position, and plot stockability.
* Set minimum height requirements for trees to be recorded as established. Default minimum heights by species are listed in each variant overview document.
* Record overstory basal area and species composition at each plot.

Plot information can be specified in two ways, either on the tree input data records, or using the PLOTINFO keyword record (see section 5.4.3.1.4). If entered on the tree input data records, the information is included in the tree input database as shown in table 4-2, or in the text-based tree data as shown in figure 4-3 and table 4-3. The columns containing this information, for both the PLOTINFO keyword record and the text-based tree data, are shown in table 5-1.

**Table 5-1** — Instructions for Entering Plot-Specific Variables

| **Plot Variable** | **Columns if using PLOTINFO keyword record** | **Columns if using Tree Input Data Records** | **Comments and Codes** |
| --- | --- | --- | --- |
| Plot Identification | 1-10 | 1-4 | Same numeric code used on tree records |
| Plot Slope | 11-12 | 50-51 | Percent Slope |
| Plot Aspect | 13-15 | 52-24 | Azimuth in degrees from north |
| Plot Habitat Type | 16-18 | 55-57 | Use numeric codes recognized by variant |
| Plot Topographic Position | 19 | 58 | 1 = bottom 2 = lower slope 3 = mid-slope 4 = upper slope 5 = ridge top |
| Plot Site Preparation | 20 | 59 | 1 = none 2 = mechanical 3 = burn 4 = road cuts, road fills, and stockable road beds |

### 5.4.2 Full Establishment Model Concepts

As was stated earlier, there are two versions of the Regeneration Establishment Model used in FVS variants, the “full” establishment model and the “partial” establishment model. The full establishment model has the capability of predicting natural regeneration and automatically including it in a simulation. In the partial establishment model the user must schedule natural regeneration. The only type of automatic natural regeneration included in both versions is stump sprouting. In both establishment models, the user must schedule all plantings.

When an actual inventory is used to initiate FVS, the regeneration model adjusts the probability of stocking to account for differences between the actual inventory and the predicted stocking. This feature adjusts the stocking curve (predicted) to coincide with a known reference point (inventory). A stand already stocked with many trees per acre has little room for increases in stocking whereas each additional seedling in a sparsely stocked stand has a greater probability of stocking another plot.

#### 5.4.2.1 Automatic Tallies

Sometimes, thinning requests remove enough trees to allow regeneration to become established. The full establishment model detects these situations, and regeneration activities are automatically scheduled when certain threshold values are exceeded. A single regeneration tally results if 10 to 30 percent of the trees per acre or total cubic foot volume is removed.

A 20-year tally sequence is scheduled when more than 30 percent of either trees per acre or cubic foot volume is removed. Users can change these threshold values using the THRSHOLD keyword (see section 5.4.3.2.5).

Site preparations for automatic tallies are predicted from default equa­tions. These equations predict the percentages of plots in the stand receiving each of the three site preparations (none, mechanical, and burn). Variables used to predict site preparations include residual overstory basal area, slope, aspect, habitat type, elevation, and topographic position.

#### 5.4.2.2 Ingrowth

Ingrowth is the addition of new trees to the FVS tree list in the absence of disturbance in recent cycles. Ingrowth occurs every 20 years after the completion of a regeneration period if there are no regeneration activities scheduled for the next cycle. The objective is to account for regen­eration that continues to become established in sparsely stocked stands or under the overstory canopy. Tree records that are created for in­growth tallies can include trees up to 20 years old, so an assortment of tree sizes is added to the tree list when ingrowth is represented.

To account for ingrowth, the regeneration model predicts trees that would occur on undisturbed plots. These trees survive and grow based on tree, site, and stand characteristics. Ingrowth is reported in an abbreviated summary table that simply lists trees per acre by species.

Data used to develop the regeneration model were not explicitly gathered to develop an ingrowth model. However, the data did contain many plots representing conditions where ingrowth occurs: fairly dense overstories within stands where no harvesting had been done. These undisturbed portions of selection/sanitation/salvage harvests were sampled because of the systematic arrangement of plots in the study.

### 5.4.3 Regeneration Establishment Model Keywords

The Regeneration Establishment Model is controlled through the use of keyword records. The first keyword in a regeneration model keyword set is always ESTAB and the last one is always END. The ESTAB keyword means that records to follow are for the regeneration model, and the END keyword signifies the end of regeneration keywords. Keyword records for the Regeneration Establishment Model are described in a separate section of the keyword guide.

Establishment keywords fall into three general classes:

* Those used to specify silvicultural prescriptions and establish seedlings,
* Those used to modify predictions, and
* Those used to control model output.

#### 5.4.3.1 Establishment Keywords for Silvicultural Prescriptions

Silvicultural prescriptions include site treatments and planting. As a result of these actions, users may want to reset the stand age, alter the tally sequence, or pass additional tree records to the FVS tree list. In addition, keywords are available to enter plot level site descriptors, estimate regeneration at the time of inventory if the inventory did not include small trees, and simulate the effects of budworm defoliation on regeneration success.

##### 5.4.3.1.1 Specifying Site Preparation Treatments

In the full establishment model, the prediction of natural regeneration is influenced by site preparation. Two types of site preparation treatments can be specified. These are by mechanical means and by burning. Default site preparations are predicted from imbedded equa­tions. Im­portant independent variables include residual overstory basal area, slope, aspect, habitat type, elevation, and topographic position. The user can specify the percentage of plots treated by mechanical means with the MECHPREP keyword record, and the percentage of plots treated by burning with the BURNPREP keyword record. If all plots are to be left untreated, users should specify a MECHPREP and BURNPREP of zero percent.The sum of the percentage of plots treated by these two methods should be less than, or equal to 100 percent. When the sum is less than 100 percent, the remaining plots are left untreated. Default values are 20 percent of the plots treated mechanically, 5 percent by burning, and 75 percent untreated.

##### 5.4.3.1.2 Specifying Trees to be Planted

Two keywords are available to specify regeneration that is to be added to the stand. The PLANT keyword record is for planting trees, and the NATURAL keyword record is for simulating user-specified natural regeneration. Both keywords contain exactly the same parameter fields, and operate in the same way. The reason for having both of these keyword records in FVS is for economic analyses using economics extensions to FVS. There is an economic cost associated with activities scheduled by a PLANT keyword record that is not associated with activities scheduled by a NATURAL keyword record. Both the PLANT and NATURAL keywords can be used in the same projection.

In the full establishment model, use of the NATURAL keyword implies that the user does not want to include the natural regeneration and ingrowth that are predicted by the model. The probability of stocking is set to zero (see section 5.4.3.2.2), and the use of the NOAUTALY and NOINGROW keyword records is implied.

##### 5.4.3.1.3 Resetting the Stand Age Following Harvesting

Stand age is used to compute mean annual increment, which is displayed in a column on the Summary Statistics Table. The initial stand age is specified as a parameter on the STDINFO keyword record (see section 4.1.2.2). Following a harvest that removes most, or all, of the stand overstory, users may want to reset the stand age. This is done using the RESETAGE keyword record. Although listed here as a regeneration establishment keyword record, the RESETAGE keyword is also considered a base model keyword and does not have to appear between the ESTAB and END keyword records. Failure to reset the stand age following significant harvesting will cause mean annual increment to be reported incorrectly in the Summary Statistics Table. However, if the harvesting is light, then the pre-treatment stand age might still be appropriate.

##### 5.4.3.1.4 Entering Plot Level Descriptor Variables

In the full regeneration establishment model slope, aspect, habitat type, topo­graphic position, and site preparation influence the prediction of regeneration. Plot level values for these attributes can be entered on the input tree data records as described in section 5.4.1.2. If these values are not included in the input tree data or are to be overridden the PLOTINFO keyword record is used. If plot level values have not been entered, stand level values from the STDINFO keyword record will be used (see section 4.1.2.2).

##### 5.4.3.1.5 Simulating Budworm Defoliation Damage on Seedlings

The effects of budworm defoliation on regeneration success can be simulated in two ways. The first is to run a version of the program that includes the budworm defoliation extension (Crookston et al. 1990). The second is to use the BUDWORM keyword record to input defoliation histories for western spruce budworm. The regeneration establishment model assumes there is no budworm defoliation present unless one of these options is used.

##### 5.4.3.1.6 Scheduling a Tally Sequence

The process of passing regeneration to the FVS tree list at the end of a projection cycle is called a “tally”. A tally sequence covers a 20-year regeneration period. The first tally in a regeneration sequence is called a “tallyone” in Regeneration Establishment Model nomenclature. Each of the other tallies in the sequence is called a “tallytwo”. At the time of the first tally, planted trees and advanced regeneration are passed to the FVS tree list. By default, this occurs at the first FVS cycle boundary following the date of establishment. Advanced regeneration refers to those trees that germinated and became established prior to the disturbance date. Subsequent tallies in a tally sequence pass trees becoming established since the previous tally. By default, this occurs at any cycle boundary subsequent to tallyone and within 20 years of the disturbance date. For example, a tallytwo occurs in the second FVS cycle boundary following the date of establishment in a simulation running on 10-year intervals, or at the second, third, and fourth cycle boundaries in a simulation running on 5-year intervals.

Tally sequences can be initiated by the user, or automatically initiated by the model. In most cases, users let the model control when a tally occurs. However, keyword records are available that allow users some flexibility in initiating and controlling tally sequences. An ESTAB keyword record initiates a tally sequence. In the full establishment model, a tally sequence can also be initiated by an ingrowth tally or a tally scheduled by thinning requests. Another way to initiate a tally sequence is by using the TALLY keyword record. This keyword record initiates a tally sequence in which a tally occurs any time there is an FVS cycle boundary during the next 20 years.

For example, the default cycle length in the Inland Empire variant is 10 years, and a tally sequence would consist of two tallies. However, if a user changed the cycle length to 5 years, this keyword would trigger a tally sequence consisting of four tallies.

There may be instances when users want to control when the tallies occur. In the example just given involving the Inland Empire variant running with 5-year cycles, the user may still want only two tallies, with the first occurring 10 years after the disturbance and the second 20 years after the disturbance. This can be accomplished by using the TALLYONE and TALLYTWO keyword records. Use of either of these keywords takes precedence over the tally sequence scheduled by either the ESTAB or TALLY keywords.

##### 5.4.3.1.7 Passing All Acceptable Trees

The Regeneration Establishment model makes a distinction between seedlings based on value class. All best trees (see section 5.4.1) are passed to the FVS tree list and are coded as being “desirable” trees (tree value class code 1, section 4.2.1). Best trees include all planted trees and, in the full establishment model, may include some naturally regenerating trees. Some “acceptable” trees (tree value class code 2, section 4.2.1) are also passed to the FVS tree list. These include stump sprouts in both establishment models; in the full establishment model, these may include up to five naturally regenerating trees of each species per plot, not chosen as best trees. In the full establishment model, these five trees do not necessarily represent all the additional trees that might become established. The PASSALL keyword can be used to direct the regeneration establishment model to pass all additional tree records generated by the regeneration establishment model to FVS with a tree value class of 2 (acceptable). This keyword has an effect only in the full establishment model, and only for natural regeneration that is predicted by the model.

##### 5.4.3.1.8 What if the Inventory did not Include Small Trees

Occasionally, a stand inventory does not include information on small trees. The FVS model cannot tell whether regeneration was not being recorded when the inventory was taken, or if it was being recorded but none was found. However, if the user knows that small trees were present and not recorded, and the FVS variant being used contains the full establishment model, then the EZCRUISE keyword can be used to estimate regeneration at the time of inventory. This keyword should only be used only if (1) the inventory did not include regeneration less than 3 inches in diameter, (2) the regeneration model will be called within 20 years of the inventory year, and (3) a variant with the full regeneration model is being used.

#### 5.4.3.2 Establishment Keywords for Modifying Predictions

Some applications might include simula­tion of forest insects and/or pathogens, advances in regeneration technology, or new silvicultural treatments. At other times, users may want to adjust the species composition or size of regenerating trees, or turn certain components of the regeneration establishment model on or off. The following keywords modify the behavior of the regeneration establishment model.

##### 5.4.3.2.1 Adjusting the Height of Individual Seedlings

Seedling height is an important parameter in FVS projections, and users should check newly established trees to see if their estimated height is reasonable for their age. Seedling height can be adjusted upward or downward using the HTADJ keyword record. The height of sprouts can be adjusted using the SPROUT keyword.

##### 5.4.3.2.2 Adjusting the Probability of Stocking

The proportion of plots on which regeneration becomes established is known as the probability of stocking. The full establishment model computes the probability of stocking based on plot attributes and uses this value in the prediction of natural regeneration. The value of this number is displayed in the Regeneration Establishment Tables in the main FVS output file. The probability of stocking can be adjusted upward or downward by using the STOCKADJ keyword record. If the multiplier on the STOCKADJ keyword record is 0.0, the model will not predict natural regeneration.

##### 5.4.3.2.3 Adjusting the Species Occurrence

The full establishment model predicts the species that will occur on a particular site based on habitat type, slope, aspect, and other plot attributes. In some cases, users may want to adjust the species that are coming into the stand. For example, a user might be running the Inland Empire variant on a habitat type that could contain western larch, but western larch is not currently present in the stand. The regeneration establishment model may be bringing western larch in through automatic tallies, and the user might not want this to happen. The probability of a species occurring can be adjusted using the SPECMULT keyword record.

##### 5.4.3.2.4 Turning Features of the Regeneration Establishment Model On/Off

The regeneration establishment model automatically creates root or stump sprouts when a species capable of root or stump sprouting is harvested or burned. In addition, the full establishment model automatically simulates ingrowth and triggers automatic tallies following harvesting. These features can be turned on or off throughout a projection using the following keyword records:

NOINGROW turns off the simulation of ingrowth
INGROW turns on the simulation of ingrowth

NOAUTALY turns off the automatic tallies following thinning requests
AUTALLY turns on the automatic tallies following thinning requests

NOSPROUT turns off the automatic sprouting when harvesting or burning sprouting species
SPROUT turns on the automatic sprouting when harvesting or burning sprouting species and adjusts both the number of sprouts and sprout heights

The NOAUTOES keyword record turns off all these features. NOAUTOES is a base model keyword record and does not have to appear within an ESTAB – END keyword sequence. This keyword also sets the probability of stocking to zero. So if this keyword is used to turn off regeneration in an FVS run, and later in the same run regeneration is to be turned back on, a STOCKADJ keyword must be included with a non-zero value in addition to the INGROW, AUTALLY, and/or SPROUT keywords.

##### 5.4.3.2.5 Automatic Regeneration Tallies Following Thinning

If thinning requests remove enough trees to allow regeneration to become established, the full establishment model will automatically trigger a tally sequence (see section 5.4.1). The threshold values that schedule the automatic regeneration tallies can be changed with the THRSHOLD keyword record.

##### 5.4.3.2.6 Changing the Random Number Sequence

The regeneration establishment model includes some random variation in the heights of seedlings, and random numbers are compared to the probability of stocking to determine if a plot is stocked and by which species. Giving the random number generator a different starting value can change the sequence of random numbers used in the establishment model, and thus the model output. Starting values can be changed using the RANNSEED keyword record.

RANNSEED is also a base model keyword, and the effects are localized to the model in which the keyword is used. If it appears within an ESTAB-END keyword sequence, only those random numbers within the regeneration establishment model are affected. If it appears outside an ESTAB-END keyword sequence, only those random numbers in the base model are affected (the regeneration establishment model is unaffected).

The variation that results from changing the pseudorandom number generator seed mimics the variation found in nature. In an actual inventory of a regenerating stand, results would change if a different set of plots were chosen to represent the stand. This would happen if a different starting position was used to sample plots with a line transect or sampling grid. Variation in actual inventories would also be expected if the harvesting were done at different years. Year-to-year fluctuations in weather, seed crops, animals, and so on would produce different results in the same stand if the stand were harvested one year as opposed to another.

##### 5.4.3.2.7 Changing the Number of Regeneration Plots

The regeneration establishment model replicates the number of plots (see section 5.4.1.2) to attain an adequate representation of within­ stand variation in seedling density, species composition, and heights. The default minimum number of plots to process is 50. This number can be changed with the MINPLOTS keyword record.

#### 5.4.3.3 Establishment Keyword for Controlling Model Output

Regeneration Summary Tables are printed at the end of the main FVS output file. The OUTPUT keyword record can be used to suppress these tables, or have them written to an external file for another use.

When using variants with the full establishment model, users can request an additional table showing habitat types within the habitat groups shown in the Regeneration Summary Tables. This additional table is requested with the HABGROUP keyword record.

The Regeneration Summary information can also be output directly to a database. Refer to the Users Guide to the Database Extension (Crookston et al. 2003). There is a section that discusses the FVS\_Regen\_Ingrowth, FVS\_RegenSitePrep, FVS\_Regen\_Sprouts and FVS\_Regen\_Tally tables. Also see the description of the REGREPTS database keyword used to request these tables.

### 5.4.4 Interpreting Regeneration Model Output

The regeneration model summary output tables appear at the end of the main FVS output file, and can optionally be output to database tables. Examine the example main output file shown in section 4.3 and the keyword record file set shown in figure 4-1. Notice that there are no regeneration establishment model keywords in the keyword file. Also remember that this example was generated with the Inland Empire variant, which includes the full establishment model, and the simulation is based on 10-year cycle lengths.

Looking at the Activity Summary Table, it can be seen that the first management activity, a prescription thinning, was done in 1990. The Summary Statistics Table shows that this thinning removed 296 trees per acre. This is more than 30 percent of the trees per acre in the stand, so a tally sequence was automatically triggered. Again, looking at the Activity Summary Table, it can be seen that a tally was automatically scheduled and completed in 1999 (10 growing seasons following the disturbance) and another was completed in 2009 (20 growing seasons following the disturbance). The first is a tallyone, and the second is a tallytwo (although you can’t tell that specifically from looking at the Activity Summary Table). Also notice that tallies are done in subsequent years. These are not associated with the tally sequence triggered by the prescription thinning because they are more than 20 years later, and a given tally sequence only covers 20 years. These additional tallies are associated with the other thinning requests.

Now look at the Regeneration Summary Tables. The first thing that appears is a site preparation summary. Since neither the MECHPREP nor BURNPREP keywords were used, the percentages displayed are default values computed by the model. The next thing that appears is a summary of the habitat types calculated for the different plots. Values displayed in these two summaries are significant only in predicting natural regeneration in the full establishment model.

At the time of tally 1 in the fall of 1999, there are 1,219 trees per acre regenerating in the stand. Of these, 534 are identified as best trees. The probability of stocking is 0.5941 after 10 growing seasons. The sub-table on the right side shows all trees in the tree list less than a threshold diameter (3.0 inches in the Inland Empire variant) that are being projected by the Forest Vegetation Simulator. In this case, there are 1066 trees in this category. These trees can be a mixture of trees existing prior to the regeneration, natural regeneration predicted by the model, or planted trees.

At the time of tally 2 in the fall of 2009, an additional 1004 trees per acre are established, 307 of these being best trees. The number of trees less than 3.0 inches in diameter now contains new trees from tally 2, plus trees still alive from tally 1 that are less than 3.0 inches in diameter (some from tally 1 may have grown to be 3.0 inches, or larger, and are not in this total). Similarly, regeneration resulting from the shelterwood cut appears in the stand in 2029 and 2039, and regeneration resulting from the overwood removal appears in 2069 and 2079.

The model output displays several aspects of the regeneration process:

* The probability of stocking, a number between 0.0 and 1.0, indicating the proportion of plots that are stocked
* The inventory of total trees per acre regenerated, by species
* A summary table of the best trees from the current tally of regeneration
* The regeneration-sized trees currently being projected by the Forest Vegetation Simulator

In the partial establishment model all trees resulting from the PLANT and NATURAL keyword records are passed as best trees, and trees resulting from root or stump sprouts do not compete in the best tree selection process. In the tally tables, therefore, the summary of best trees regenerating will refer to the same trees as the summary of all trees regenerating. A tally sequence is automatically invoked whenever the user schedules a planting or natural regeneration.

In the full establishment model, whenever planting, natural regeneration, or ingrowth occur outside of a tally sequence, an abbreviated table is produced. It contains trees per acre values only for those trees regenerating. These tables are similar to the one shown in figure 5-1.

![Image of the Forest Vegetation Simulator regeneration summary table.](data:image/jpeg;base64...)

**Figure 5-1** — Example Forest Vegetation Simulator regeneration summary.

### 5.4.5 Simulating Natural Regeneration using the Partial Establishment Model

FVS variants that are outside of western Montana, central and northern Idaho, and coastal Alaska contain the partial establishment model. Other than stump and root sprouting, the partial establishment model does not have equations for predicting natural regeneration. Whenever natural regeneration is desired, the user must schedule it using the NATURAL keyword record.

For example, suppose experience in an area shows 10 years after a regeneration har­vest, expected regeneration would be 250 Douglas-firs per acre averaging 5.5 feet tall, 75 lodgepole pines per acre averaging 8.0 feet tall, and 120 ponderosa pines per acre averaging 6.0 feet tall. The regeneration model can be instructed to create appropriate tree records with the regeneration keywords as follows:

ESTAB 2000.0

NATURAL 2009.0 3.0 250.0 *~~b~~* *~~b~~* 5.5

NATURAL 2009.0 7.0 75.0 *~~b~~* *~~b~~* 8.0

NATURAL 2009.0 10.0 120.0 *~~b~~* *~~b~~* 6.0

END

It is possible when using the partial establishment model to automatically include natural regeneration following significant harvests and to simulate ingrowth. These procedures will be discussed in section 6.2.

## 5.5 Conditionally Scheduling Activities

Stand management activities are often contingent upon several factors. Thinning may be called for if the stand is too dense, or spraying may be required if an insect population is causing too much damage. In previous sections, FVS users needed to foretell the occurrence of stand conditions that require management actions, and pre-schedule the model options that represent those actions using specific dates or cycles on the FVS keywords. The Event Monitor offers an alternative method of scheduling activities.

With the Event Monitor feature of FVS, users specify a set of conditions that must occur, or thresholds that must be reached. The conditions describe an event. Users also specify a set of management activities for the model to simulate when and if the event occurs. For example, a user might want to schedule a thinning only if the stand crown competition factor exceeds 150, trees per acre exceed 500, and age is greater than 20 and less than 60 years. Using the Event Monitor, the condition is specified via a logical expression followed by the activities (represented by FVS keyword options) that are to be invoked when that expression is true.

### 5.5.1 Basic Event Monitor Use

An event is designated by an IF keyword record, followed by a logical expression. The expression is coded on one or more supplemental data records. It may contain constants, arithmetic operators, parentheses, relational, and logical operators (GT, LT, EQ, AND, OR, etc.), and certain variables.

Following the logical expression, a THEN keyword record is entered. This keyword signals the end of the logical expression and the beginning of the activities that will be scheduled only when the expression is true. Activities scheduled by the Event Monitor can include any FVS keyword option (including those found in extensions) containing a cycle number or year in the first numeric field.

An ENDIF keyword is entered to signal the end of the activities that will be conditionally scheduled, and that normal FVS activity processing should resume.

#### 5.5.1.1 Waiting Time for Activity Scheduling

In normal FVS activity processing, the first field of any management activity keyword record is the date or cycle in which the activity is scheduled. When a management activity keyword record is included in an Event Monitor sequence, the value in the first field is called the waiting time. The value in the first field of activity keyword records is added to the year the event occurs, and the sum becomes the year the activity is scheduled.

#### 5.5.1.2 Example Event Monitor Sequence

The simple example described above will help illustrate these principles. The example can be reworded in Event Monitor verbiage as follows: If before-thinning crown competition factor (BCCF) is greater than 150, and before-thinning trees per acre (BTPA) is greater than 500, and age is greater than 20 and less than 60, then thin from below to a residual stand density of 300 trees per acre. This conditional thinning can be simulated with the following keyword records:

IF

BCCF GT 150 AND BTPA GT 500 AND &

AGE GT 20 AND AGE LT 60

THEN

THINBTA 0. 300.

ENDIF

These keyword records are further explained as follows:

Line 1: IF signals that a logical expression follows.

Lines 2 and 3: The logical expression is coded “free form” (that is, characters do not need to be placed in specific columns) on one or more supplemental data records that follow the IF keyword. Placing an ampersand (&) at the end of a line signals that the expression is continued on the following line.

Line 4: THEN signals that the activities (options specified by date or cycle) that follow will be scheduled only when the logi­cal expression is true.

Line 5: THINBTA is a thinning option that will be scheduled in the same year that the event occurs; thus, a zero is coded in field 1. The residual trees per acre are coded in field 2.

Line 6: ENDIF marks the end of the conditionally specified options.

### 5.5.2 Event Monitor Rules

As illustrated above, the IF keyword is used to signal that a logical expression follows. The THEN keyword signals that the activities that follow should be scheduled only when the logical expression is true. Note that several activities may fol­low a THEN keyword. Activities that follow the ENDIF keyword are not conditionally scheduled, and therefore do not depend on the logical expression. To use the Event Monitor effectively, users need to be aware of when it is called in the FVS processing sequence, which variables are predefined, and how to code expressions. More advanced features will be discussed in section 6.

#### 5.5.2.1 When is the Event Monitor Called

The Event Monitor evaluates expressions at two different times at the beginning of an FVS growth cycle (section 3.4, figure 3-1): once prior to thinning requests, and once after thinning requests. It is also called from the Fire and Fuels Extension (section 8.2) to compute FFE related variables if the FFE is being used. A logical expression that is based on before-thinning simulation conditions can be used to trigger a thinning request during the same cycle. However, if the logical expression uses values based on after-thinning conditions, this expression may not be used to schedule a thinning for the same cycle. This is because FVS, in its processing sequence, is already past the point of simulating thinning requests for the cycle. A thinning request based on after-thinning conditions can be scheduled for a later cycle by coding a waiting time longer than the current cycle length in the first field on the thinning request keyword.

CUT is the Event Monitor variable flag indicating whether or not a thinning has occurred. Users can schedule a thinning in response to detecting that a thinning has occurred, but the conditionally scheduled thinning cannot be simulated during the same cycle the event is detected because the event is, itself, another thinning.

The Regeneration Establishment Model is called near the end of a projection cycle. Therefore, it is possible to schedule establishment model activities, like site preparation and planting, as a response to simulation conditions before, or after, thinning.

Special considerations when scheduling activities based on Fire and Fuels Extension variables and functions are discussed in section 8.2.1.

#### 5.5.2.2 Pre-Defined Event Monitor Variables and Functions

The list of variables that can be used in expressions is shown in table 5-2. The list is divided into four groups based on when the variables are defined. If any vari­able is undefined when a logical expression is evaluated, the expression is false. Group 1 variables are always known; users can include them in expres­sions either by themselves or with those listed in the other groups.

Group 2 variables are undefined when the Event Monitor evaluates expressions prior to thinning requests. However, they are correctly defined when expressions are evaluated following thinning requests, even if no thinning requests are scheduled.

Group 3 variables measure change and are not defined until after the first FVS cycle. For example, the stand accretion is computed after the second time the Event Monitor evaluates logical expressions each cycle. Therefore, the stand accretion variable is assigned the accretion from the previous cycle. Variables such as DBA (the change in basal area from one cycle to the next) are computed by subtracting the value stored from the previous cycle from the current value. These variables are also undefined until the beginning of the second FVS projection cycle. Group 3 variables are defined after the second cycle starts.

Group 4 variables are assigned values by Forest Vegetation Simulator extensions. The value of these variables remains undefined unless the appropriate extension defines them.

Event monitor variables and functions that are most commonly thought of as commodity values (trees per acre, basal area per acre, and volume per acre) are based on total stand area, while those most commonly thought of as biological values (stand density index, crown competition factor, crown cover, etc.) are based on stockable area. This is important to note if users have non-stockable points in their inventory. The pre-defined variable PROPSTK can be used to convert between stand statistics based on stockable area and those based on total stand area. Users would divide a statistic based on total stand area by PROPSTK to obtain a statistic based on stockable area; users would multiply a statistic based on stockable area by PROPSTK to obtain a statistic based on total stand area.

**Table 5-2** — Variables that can be used within expressions are divided into four groups de­pending on when they are defined.

**Group 1: Always Defined**

| **Variable** | **Description** |
| --- | --- |
| AGE | Age at beginning of a cycle. |
| AGECMP | Estimated average age for the dominant size class (see Appendix B). |
| ASPECT | Aspect in degrees from STDINFO keyword. |
| BABVBIO | \*Before-thinning above ground biomass of wood and bark (tons/ac). |
| BABVCRB | \*Before-thinning above ground carbon in wood and bark (tons/ac). |
| BADBH | Before-thinning quadratic mean DBH. |
| BBA | Before-thinning basal area per acre. |
| BBDFT | Before-thinning board foot volume (Scribner for western variants; refer to variant overview for rules used in eastern variants). |
| BCANCOV | Before-thinning percent canopy cover for the stand (based on stockable area). Defined only when the STRCLASS keyword is used. |
| BCCF | Before-thinning crown competition factor (based on stockable area). |
| BDBHWTBA | Before-thinning basal-area-weighted average tree DBH. This variable is designed to estimate the average DBH of the overstory trees before thinning. |
| BFOLBIO | \*Before-thinning foliage biomass (tons/ac). |
| BFOLCRB | \*Before-thinning amount of carbon contained in foliage biomass (tons/ac). |
| BGMD | Before-thinning generalized mean diameter (also referred to as Reineke’s diameter; Zeide 1983). |
| BHTWTBA | Before-thinning basal-area-weighted average tree height. This variable is designed to estimate the average height of the overstory trees before thinning. |
| BMAXHS | Before-thinning height of the tallest tree in the uppermost stratum, defined when the STRCLASS keyword is used. |
| BMCUFT | Before-thinning merchantable cubic foot volume for all variants. |
| BMERBIO | \*Before-thinning merchantable wood biomass (tons/ac). |
| BMERCRB | \*Before-thinning amount of carbon contained in merchantable wood biomass (tons/ac). |
| BMINHS | Before-thinning height of the shortest tree in the uppermost stratum, defined when the STRCLASS keyword is used. |
| BNUMSS | Before-thinning total number of strata, defined when the STRCLASS keyword is used. |
| BRDEN | Before-thinning stand relative density (Curtis 1982) (based on stockable area). |
| BRDEN2 | Before-thinning stand relative density, SILVAH (Marquis and Ernst 1992) (based on stockable area). |
| BSAWBIO | \*Before-thinning sawlog wood biomass (tons/ac). |
| BSAWCRB | \*Before-thinning amount of carbon contained in sawlog wood biomass (tons/ac). |
| BSCLASS | Before-thinning structural class code. Defined only when the STRCLASS keyword is used. |
| BSCUFT | Before-thinning cubic sawlog volume. Only populated in western variants when ‘FIAVBC’ keyword is also used in simulation. |
| BSDI | Before-thinning stand density index (Reineke 1933) (based on stockable area). |
| BSDI2 | Before-thinning stand density index (Zeide 1983) (based on stockable area). |
| BSDIMAX | Before-thinning maximum stand density index. |
| BSTRDBH | Before-thinning weighted average DBH of the uppermost stratum. Defined only when the STRCLASS keyword is used. This is the average DBH of the 9 trees nearest the 70th percentile tree, before thinning, in the dominant stratum. |
| BTCUFT | Before-thinning total cubic foot volume for all variants. |
| BTOPHT | Before-thinning average top height (height, in feet, of 40 largest diameter trees). |
| BTPA | Before-thinning trees per acre. |
| CENDYEAR | Ending year of a cycle (same as the beginning year of the follow­ing cycle, minus 1). |
| COUNTY | Stand location, 3-digit FIA county code. |
| CYCLE | Cycle number. |
| ELEV | Elevation in feet from STDINFO keyword. |
| EVPHASE | 1.0 during the first call to the Event Monitor (i.e., before cutting, see figure 3-1) and 2.0 after cutting. |
| FORTYP | Forest type code determined from stand conditions throughout the projection (see appendix B). |
| HABTYPE | Habitat type code entered on the STDINFO keyword, or FVS plant association sequence number corresponding to the plant association entered on the STDINFO keyword. |
| INVYEAR | The inventory year of the stand. |
| LAT | The latitude of the stand. |
| LOCCODE | Forest location code representing the Region/Forest/District/Compartment of the stand. |
| LONG | The longitude of the stand. |
| MAI | Mean annual increment at the beginning of the cycle. Total cubic feet for all variants. |
| NO | The constant 0. |
| NUMTREES | Number of tree records stored by the model. |
| PROPSTK | Proportion of the stand considered stockable. |
| RANN | A uniform random number between 0 and 1. |
| SAMPWT | Sampling weight entered on the DESIGN keyword. |
| SILVAHFT | Forest type as defined in SILVAH (Marquis and Ernst 1992). |
| SITE | Stand site index entered on the SITECODE keyword. |
| SIZCLS | Stand size class code determined from stand conditions throughout the projection (see appendix B). |
| SLOPE | Slope percent from STDINFO keyword. |
| SMR | Stand mistletoe rating, computed when the variant contains the mistletoe extension. |
| STATE | Stand location, 2-digit FIA state code. |
| STKCLS | Stand stocking class code determined from stand conditions throughout the projection (see appendix B). |
| YEAR | Beginning year of a cycle. |
| YES | The constant 1. |

\*Requires use of FIAVBC keyword in simulation

**Group 2: Defined Only After Thinning Each Cycle**

| **Variable** | **Description** |
| --- | --- |
| AABVBIO | \*After-thinning above ground biomass of wood and bark (tons/ac). |
| AABVCRB | \*After-thinning above ground carbon in wood and bark (tons/ac). |
| AADBH | After-thinning quadratic mean DBH. |
| ABA | After-thinning basal area per acre. |
| ABDFT | After-thinning board foot volume (Scribner for western variants; refer to variant overview for rules used in eastern variants). |
| ACANCOV | After-thinning percent canopy cover for the stand (based on stockable area). Defined only when the STRCLASS keyword is used. |
| ACCF | After-thinning crown competition factor (based on stockable area). |
| ADBHWTBA | After-thinning basal-area-weighted average tree DBHr. This variable is designed to estimate the average DBH of the overstory trees after thinning. |
| AFOLBIO | \*After-thinning foliage biomass (tons/ac). |
| AFOLCRB | \*After-thinning carbon contained in foliage biomass (tons/ac). |
| AGMD | After-thinning generalized mean diameter (also referred to as Reineke’s diameter; Zeide 1983). |
| AHTWTBA | After-thinning basal-area-weighted average tree height. This variable is designed to estimate the average height of the overstory trees after thinning. |
| AMAXHS | After-thinning height of the tallest tree in the uppermost stratum. Defined only when the STRCLASS keyword is used. |
| AMCUFT | After-thinning merchantable cubic foot volume for all variants. |
| AMERBIO | \*After-thinning merchantable wood biomass (tons/ac). |
| AMERCRB | \*After-thinning carbon contained in merchantable wood biomass (tons/ac). |
| AMINHS | After-thinning height of the shortest tree in the uppermost stratum, defined when the STRCLASS keyword is used. |
| ANUMSS | After-thinning total number of strata, defined when the STRCLASS keyword is used. |
| ARDEN | After-thinning stand relative density (Curtis 1982) (based on stockable area). |
| ARDEN2 | After-thinning stand relative density, SILVAH (Marquis and Ernst 1992) (based on stockable area). |
| ASAWBIO | \*After-thinning sawlog wood biomass (tons/ac). |
| ASAWCRB | \*After-thinning carbon contained in sawlog wood biomass (tons/ac). |
| ASCLASS | After-thinning structural class code, defined when the STRCLASS keyword is used. |
| ASCUFT | After-thinning cubic sawlog volume. Will only be populated in western variants when the ‘FIAVBC’ keyword is used in the simulation. |
| ASDI | After-thinning stand density index (Reineke 1933) (based on stockable area). |
| ASDI2 | After-thinning stand density index (Zeide 1983) (based on stockable area). |
| ASDIMAX | After-thinning maximum stand density index. |
| ASTRDBH | After-thinning weighted average DBH of the uppermost stratum, defined when the STRCLASS keyword is used. This is the average DBH of the 9 trees nearest the 70th percentile tree, after thinning, in the dominant stratum. |
| ATCUFT | After-thinning total cubic foot volume for all variants. |
| ATOPHT | After-thinning average top height (height, in feet, of 40 largest diameter trees remaining). |
| ATPA | After-thinning trees per acre. |
| CUT | Set equal to 0.0 if no cutting occurred and equal to 1.0 if cutting did occur. This variable is only meaningful when EVPHASE is equal to 2. |
| RABVBIO | \*Removed above ground biomass of wood and bark (tons/ac). |
| RABVCRB | \*Removed above ground carbon in wood and bark (tons/ac). |
| RBDFT | Removed board foot volume (Scribner for western variants; refer to variant overview for rules used in eastern variants). |
| RFOLBIO | \*Removed foliage biomass (tons/ac). |
| RFOLCRB | \*Removed carbon contained in foliage biomass (tons/ac). |
| RMCUFT | Removed merchantable cubic foot volume for all variants. |
| RMERBIO | \*Removed merchantable wood biomass (tons/ac). |
| RMERCRB | \*Removed carbon contained in merchantable wood biomass (tons/ac). |
| RSAWBIO | \*Removed sawlog wood biomass (tons/ac). |
| RSAWCRB | \*Removed carbon contained in sawlog wood biomass (tons/ac). |
| RSCUFT | Removed cubic sawlog volume. Will only be populated in western variants when the ‘FIAVBC’ keyword is used in the simulation. |
| RTCUFT | Removed total cubic foot volume for all variants. |
| RTPA | Removed trees per acre |

\*Requires use of FIAVBC keyword in simulation

**Group 3: Defined After Cycle 2 Starts**

| **Variable** | **Description** |
| --- | --- |
| ACC | Accretion from last cycle. Total cubic feet/acre/year for all variants. Rounded to the nearest integer. |
| DBA | Basal area per acre at the beginning of current cycle minus the basal area at the beginning of previous cycle. |
| DBA% | Basal area per acre at the beginning of current cycle divided by the basal area at the beginning of previous cycle; then multiplied times 100. |
| DCCF | Crown competition factor at the beginning of current cycle minus the factor at the beginning of previous cycle (based on stockable area). |
| DCCF% | Crown competition factor at the beginning of current cycle divided by the factor at the beginning of previous cycle; then multiplied times 100 (based on stockable area). |
| DTPA | Number of trees per acre at the beginning of current cycle minus the number at the beginning of the previous cycle. |
| DTPA% | Trees per acre at the beginning of the current cycle divided by the number at the beginning of the previous cycle; then multi­plied times 100. |
| MORT | Mortality from last cycle. Total cubic feet/acre/year for all variants. Rounded to the nearest integer. |
| ORG%CC | Percent Canopy Cover using ORGANON methodology. |
| ORGAHT | Average height of the 40 largest diameter trees of ORGANON's “Big-6” species. |
| PAI | Periodic annual increment last cycle. Total cubic feet/acre for all variants. Rounded to the nearest integer. |

**Group 4: Defined by Extensions to the Forest Vegetation Simulator**

<u>Variables requiring the Fire and Fuels Extension (Reinhardt and Crookston 2003)</u>

|  |  |
| --- | --- |
| **Variable** | **Description** |
| FIRE | Value is 1 (Yes) when a fire was simulated in the past cycle, and 0 (No) otherwise. |
| FIREYEAR | Year of the most recent fire. |
| FISHERIN | Fisher resting habitat suitability index (Zielinski and other 2006). |
| CRBASEHT | Crown base height from the potential fire report. |
| CRBULKDN | Crown bulk density from the potential fire report. |
| CROWNIDX | Crowning index from the potential fire report. |
| MINSOIL | Percent mineral soil exposed when a fire is simulated. |
| TORCHIDX | Torching index from the potential fire report. |

<u>Variables requiring the Mountain Pine Beetle Impact Model Extension (David et al. 1993)</u>

|  |  |
| --- | --- |
| **Variable** | **Description** |
| MPBPROB | Probability of a mountain pine beetle outbreak in the current stand given that an outbreak is in the region. |
| MPBTPAK | The number of trees per acre killed by the mountain pine beetle during the previous cycle. |

<u>Variables requiring the Douglas-fir Tussock Moth Extension (Monserud and Crookston 1982)</u>

|  |  |
| --- | --- |
| **Variable** | **Description** |
| TM%DF | The average tree defoliation on Douglas-fir. |
| TM%GF | The average tree defoliation on grand fir. |
| TM%STND | The stand average tree defoliation level caused by the Douglas-­fir tussock moth during the previous cycle. |

<u>Variables requiring the ECON Extension (Renner 2001)</u>

| **Variable** | **Description** |
| --- | --- |
| DISCCOST | Accumulated discounted costs plus any “pretend” harvest costs in the cycle (present value costs). |
| DISCRATE | Discount rate as specified on the STRTECON keyword. |
| DISCREVN | Accumulated discounted revenues plus any “pretend” harvest revenues in the cycle (present value revenues). |
| ECBDFT | Merchantable sawtimber board foot volume valued (Scribner for western variants; refer to variant overview for rules used in eastern variants). Note: this represents only the volume specified to have economic value, so it may differ from board foot volumes reported elsewhere. |
| ECCUFT | Merchantable cubic foot volume valued for western variants. Merchantable cubic foot sawtimber volume valued for eastern variants. Note: this represents only the volume specified to have economic value, so it may differ from cubic foot volumes reported elsewhere. |
| FORSTVAL | Present net value of cash flows from harvested timber plus land value, including any “pretend” harvest cash flows in the cycle (value of forest). |
| HARVCOST | Total harvest costs from commercial harvests during the cycle, including any “pretend” harvest cost. (Defined only after thinning). |
| HARVREVN | Total revenue from commercial harvests during the cycle, including any “pretend” harvest revenue. (Defined only after thinning). |
| IRR | Internal rate of return in percent including any “pretend” harvest cash flows in the cycle. |
| PCTCOST | Total harvest cost from pre-commercial harvests during the cycle. (Defined only after pre-commercial thinning.). |
| PNV | Accumulated present net value period including “pretend” harvest cash flows in the cycle. |
| RPRODVAL | Present net value of cash flows from harvestable timber separate from land, including any “pretend” harvest cash flows in the cycle (value of trees). |
| SEV | Accumulated soil expectation value including “pretend” harvest cash flows in the cycle (soil expectation value). |
| UNDISCST | Accumulated undiscounted costs plus any “pretend” harvest costs in the cycle (undiscounted costs). |
| UNDISRVN | Accumulated undiscounted revenues plus any “pretend” harvest revenues in the cycle (undiscounted revenue). |

Table 5-3 lists operators and pre-defined functions that can be used in the Event Monitor. A function is like a variable, except the value it represents is dependent upon a set of parameters for which the user specifies values. The parameter values are contained between a set of parentheses following the name of the function. Commas separate multiple parameters. Species codes used in Event Monitor functions can be either the FVS alpha code, FVS sequence number, species group name, or species group sequence number. Full descriptions of the FVS model functions follow table 5-3.

**Table 5-3** — Event Monitor operators and pre-defined functions.

<u>FVS Model Functions</u>

| **Operator** | **Precedence1** | **Description** | **Example of Usage** |
| --- | --- | --- | --- |
| ACCFSP | 1st | See Below | ACCFSP(a) |
| ACORNS | 1st | See Below | ACORNS(a,b) |
| BCCFSP | 1st | See Below | BCCFSP(a) |
| BOUND | 1st | See Below | BOUND(a,b,c) |
| CARBSTAT | 1st | See Below | CARBSTAT(a) |
| DBHDIST | 1st | See Below | DBHDIST(a,b) |
| DECADE | 1st | See Below | DECADE(a,b,c,…) |
| FUELLOAD | 1st | See Below | FUELLOAD(a,b) |
| FUELMODS | 1st | See Below | FUELMODS(a,b) |
| HERBSHRB | 1st | See Below | HERBSHRB(a) |
| HTDIST | 1st | See Below | HTDIST(a) |
| INDEX | 1st | See Below | INDEX(X,x1, x2, … ,xn) |
| LININT | 1st | See Below | LININT(X,x1,x2,y1,y2) |
| MININDEX | 1st | See Below | MININDEX(x1,x2, … ,xn) |
| MAXINDEX | 1st | See Below | MAXINDEX(x1,x2, … ,xn) |
| NORMAL | 1st | See Below | NORMAL(a,b) |
| POINTID | 1st | See Below | POINTID(a) |
| POTFLEN | 1st | See Below | POTFLEN(a) |
| POTFMORT | 1st | See Below | POTFMORT(a) |
| POTFTYPE | 1st | See Below | POTFTYPE(a) |
| POTREINT | 1st | See Below | POTREINT(a) |
| POTSRATE | 1st | See Below | POTSRATE(a) |
| SALVVOL | 1st | See Below | SALVVOL(a,b,c) |
| SNAGS | 1st | See Below | SNAGS(a,b,c,d,e,f,g,h) |
| SPMCDBH | 1st | See Below | SPMCDBH(a,b,c,...) |
| STRSTAT | 1st | See Below | STRSTAT(a,b) |
| SUMSTAT | 1st | See Below | SUMSTAT(a,b) |
| TIME | 1st | See Below | TIME(a,b,c,…) |
| TREEBIO | 1st | See Below | TREEBIO(a,b,c,d,e,f,g,h) |

<u>Math Functions</u>

| **Operator** | **Precedence1** | **Description** | **Example of Usage** |
| --- | --- | --- | --- |
| ABS | 1st | Absolute value | ABS(a) |
| ALOG | 1st | Natural logarithm (base e) | ALOG(a) |
| ALOG10 | 1st | Common logarithm (base 10) | ALOG10(a) |
| EXP | 1st | e raised to a power | EXP(a) |
| FRAC | 1st | Truncate integer part 2 | FRAC(a/b) |
| INT | 1st | Truncate fractional part 3 | INT(a/b) |
| MAX | 1st | Maximum value of arguments | MAX(a,b, . . .) |
| MIN | 1st | Minimum value of arguments | MIN(a,b, . . .) |
| MOD | 1st | Modulus 4 | MOD(a,b) |
| SQRT | 1st | Square root | SQRT(a) |

<u>Trigonometric Functions (arguments in radians)</u>

| **Operator** | **Precedence1** | **Description** | **Example of Usage** |
| --- | --- | --- | --- |
| ARCCOS | 1st | Arc cosine | ARCCOS(a) |
| ARCSIN | 1st | Arc sine | ARCSIN(a) |
| ARCTAN | 1st | Arc tangent | ARCTAN(a) |
| COS | 1st | Cosine | COS(a) |
| SIN | 1st | Sine | SIN(a) |
| TAN | 1st | Tangent | TAN(a) |

<u>Arithmetic Operators</u>

| **Operator** | **Precedence1** | **Description** | **Example of Usage** |
| --- | --- | --- | --- |
| \*\* | 2nd | Exponentiate | A\*\*B |
| - | 3rd | Change sign | -A |
| \* | 4th | Multiply | A\*B |
| / | 4th | Divide | A/B |
| + | 5th | Add | A+B |
| - | 5th | Subtract | A-B |

<u>Logical Operators</u>

| **Operator** | **Precedence1** | **Description** | **Example of Usage** |
| --- | --- | --- | --- |
| EQ | 6th | Equal | A EQ B |
| NE | 6th | Not equal | A NE B |
| LT | 6th | Less than | A LT B |
| GT | 6th | Greater than | A GT B |
| LE | 6th | Less than or equal | A LE B |
| GE | 6th | Greater than or equal | A GE B |
| NOT | 7th | Logical not | NOT (A GT B) |
| AND | 8th | Logical and | (A GT B) AND (A LT C) |
| OR | 9th | Logical or 5 | (A GT B) OR (A LT C) |
| 1Operators are executed in order of precedence within parenthetical groups. For example consider the following: ALOG(a)\*\*2.+5/C, the log is taken first, the result is raised to the power of 2, then 5 is divided by C and added to the previous result. | | | |
| 2For example: FRAC(3.4) is equal to 0.4 | | | |
| 3For example: INT(3.4) is equal to 3.0 | | | |
| 4Returns the remainder after the first argument is divided by the second. For example: MOD(7,2) is equal to 1, and MOD(6,2) is equal to 0. | | | |
| 5Inclusive OR. For example: X OR Y is true if: X is true, Y is true, or both are true | | | |

**ACCFSP(a)** Returns the after-thinning crown competition factor (ACCFSP), or the **BCCFSP(a)** before-thinning crown competition factor (BCCFSP) for the species in­dicated as an argument to the function. Species codes are used as the argument. Either alpha species codes, numeric sequence codes, species group name, or species group sequence number may be used. If the species is represented by a numeric species sequence code, it is specific to the regional variant of the Forest Vegetation Simulator being used. For example, in the Inland Empire variant, species 7 is lodgepole pine. In this case, BCCFSP(7) is equivalent to BCCFSP(LP), the before-thinning crown competition factor for lodgepole pine in that variant. This function has one argument; a value for the argument is required since there is no default value.

**ACORNS(a,b)** Returns the number or weight of acorns per acre from the specified oak species as described by Rose et al. (2011). Acorns are assumed to come from dominant and co-dominant trees with DBH 5 inches or greater. This function is applicable to the central and southern Appalachian mountains and possibly throughout the eastern US where these species occur.

Argument 1: Code indicating which value to return, as follows:
1 = number of acorns per acre
2 = pounds of acorns per acre

Argument 2: Species code (species alpha code, species sequence number, species group name, or species group sequence number). Only trees of the specified species or species group that are also in the list of recognized oak species below will be included. Any species not in the recognized list are ignored. Code a zero (or All) to include all of the recognized oak species shown below.

Recognized Oak Species
BO = black oak
CO = chestnut oak
RO = northern red oak
SO = scarlet oak
WO = white oak

**BOUND(a,b,c)** Returns the second argument if it is greater than the first argu­ment and less than the third. If the second argument is less than the first argument, the first argument is returned; and if the sec­ond argument is greater than the third argument the third argu­ment is returned. If the first argument is greater than the third, the function is undefined. This function has three arguments; values for the arguments are required since there are no default values.

Argument 1: Lower bound of the range of allowed values.

Argument 2: Value to be bounded.

Argument 3: Upper bound of the range of allowed values. This value must be larger than the value entered for argument 1.

*Examples:*

*The value of BOUND(0.0,0.98,1.0) is 0.98;*

*The value of BOUND(0.0,1.9,1.0) is 1.0;*

*The value of BOUND(0.0,-28,1.0) is 0.0;*

*The value of BOUND(0.0,0.98,-11) is undefined;*

*The function BOUND(100,18641/(BADBH\*\*1.65),800) returns the value of the equation 18641/(BADBH\*\*1.65) and bounds the answer to be greater than or equal to 100 and less than 800. Notice this example uses the predefined event monitor variable BADBH.*

**CARBSTAT(a)** This function returns the amount of carbon stored in various carbon pools, in whatever units are designated with the CARBCALC keyword record. These carbon pools correspond to those reported in the carbon reports, which are generated by the Fire and Fuels Extension. This function has one argument; a value for the argument is required since there is no default value.

Argument 1: Code indicating the carbon pool, as follows:
1 = Total above ground live tree carbon
2 = Merchantable above ground live tree carbon
3 = Below ground live carbon (roots)
4 = Below ground dead carbon (roots of dead or cut trees)
5 = Standing dead carbon
6 = Down dead wood carbon
7 = Forest floor carbon
8 = Shrub and herb carbon
9 = Total stand carbon
10 = Total removed carbon
11 = Carbon released from fire
12 = Merchantable removed carbon in wood products
13 = Merchantable removed carbon in landfills
14 = Merchantable removed carbon emitted with energy capture
15 = Merchantable removed carbon emitted without energy capture
16 = Merchantable removed stored carbon (products + landfills)
17 = Merchantable removed carbon (all categories)

*Example: the function CARBSTAT(9) returns the total stand carbon in units specified on the CARBCALC keyword record.*

**DBHDIST(a,b)** Returns the diameter of the tree corresponding to the nominal percentile in the distribution of a specific attribute. For example, DBHDIST(3,4) returns the DBH of the 70th percentile tree (because the second argument is 4) in the distribution of trees per acre (because the first argument is 3). This function has two arguments; values for the arguments are required since there are no default values.

Argument 1: Code indicating which attribute to be used to create the distribution.
1 = accretion [total ft3/acre/year]
2 = mortality [total ft3/acre/year]
3 = trees per acre
4 = total cubic foot volume/acre
5 = merchantable cubic foot volume/acre
6 = board foot volume/acre
7 = removed trees/acre
8 = removed total cubic foot volume/acre
9 = removed merchantable cubic foot volume/acre
10 = removed board foot volume/acre
11 = residual trees/acre
12 = sawlog cubic foot volume/acre
13 = removed sawlog cubic volume/acre

Argument 2: Code for percentile in the distribution of the attribute
1 = 10th percentile
2 = 30th percentile
3 = 50th percentile
4 = 70th percentile
5 = 90th percentile
6 = 100th percentile
7 = Total of the attribute rather than DBH at the percentile

**DECADE(a,b,c,…)** Returns the argument that corresponds to the decade the run is currently in. For example, the value of DECADE(15,A/B,C\*\*2.1) will be 15 any time during the first decade of the run, A/B during the second, and C\*\*2.1 during the third and all subsequent decades. Decades are defined as offsets from the inventory year entered on the INVYEAR keyword. If 2001 is the inventory year, the first decade of the run is years 2001 through 2010, the second is years 2011 through 2020, and so on. As a result, some care is needed in using this function if cycle lengths are being adjusted with the TIMEINT keyword. This function does not have a set number of arguments; values for the arguments are required since there are no default values.

**DWDVAL(a,b,c,d)** This function, only available when using the Fire and Fuels Extension, returns the cubic foot volume per acre or percent cover of down woody debris, for a range of size classes and by decay class. The values correspond to those reported in the FFE down wood reports.

Argument 1: Code indicating which measurement is desired, as follows:
1 = down wood volume in cubic feet per acre
2 = down wood cover percent

Argument 2: Code indicating decay status. Only snags with the specified status will be included, as follows:
0 = all
1 = hard
2 = soft

Argument 3: Code indicating the smallest size class to be included, as follows:
1 = Greater than or equal to zero, less than 3 inches
2 = Greater than or equal to 3 inches, less than 6 inches
3 = Greater than or equal to 6 inches, less than 12 inches
4 = Greater than or equal to 12 inches, less than 20 inches
5 = Greater than or equal to 20 inches, less than 35 inches
6 = Greater than or equal to 35 inches, less than 50 inches
7 = Greater than or equal to 50 inches

Argument 4: Code indicating the largest size class to be included. Codes are the same as those described for Argument 3 above. The value used for Argument 4 must be greater than or equal to the value used for Argument 3. If these values are equal, the output will represent a single size class.

**FUELLOAD(a,b)** This function, only available when using the Fire and Fuels Extension, returns the course woody debris in tons per acre. Only a portion of the total debris is included as indicated by the lower (argument 1) and upper (argument 2) bounds. That is, the function includes all the kinds of woody debris within the range of lower to upper bounds. This function has two arguments; values for the arguments are required since there are no default values.

Argument 1: Code indicating the smallest woody debris size class to be included, as follows:
1 = Greater than or equal to zero, less than 0.25 inch
2 = Greater than or equal to 0.25 inch, less than 1 inch
3 = Greater than or equal to 1 inch, less than 3 inches
4 = Greater than or equal to 3 inches, less than 6 inches
5 = Greater than or equal to 6 inches, less than 12 inches
6 = Greater than or equal to 12 inches, less than 20 inches
7 = Greater than or equal to 20 inches, less than 35 inches
8 = Greater than or equal to 35 inch, less than 50 inches
9 = Greater than or equal to 50 inches
10 = Litter
11 = Duff = decayed material from the other classes

Argument 2: Code indicating the largest woody debris size class to be included. Codes are the same as those described for Argument 1 above. The value used for Argument 2 must be greater than or equal to the value used for Argument 1. If these values are equal, the output will represent a single size class.

*Example: the function FUELLOAD(2,4) returns the tons/acre of woody debris greater than or equal to 0.25 inches and less than 6 inches in diameter.*

**FUELMODS(a,b)** This function, only available when using the Fire and Fuels Extension, returns the model number or associated weight of a fuel model being used. This function has two arguments; values for the arguments are required since there are no default values.

Argument 1: Code indicating which of the four fuel models to use, as follows:
1 = first fuel model selected
2 = second fuel model selected
3 = third fuel model selected
4 = fourth fuel model selected

Argument 2: Code for which value to return, as follows:
1 = actual fuel model number
2 = fuel model weight as a percent

*Example: the function FUELMODS(1,2) returns the weight being used for the first fuel model that was selected.*

**HERBSHRB(a)** This function, only available when using the Fire and Fuels Extension, returns values for live surface fuels in tons per acre. The function will return a value for herbs, shrubs, or the total of herbs and shrubs. This function has one argument; a value for the argument is required since there is no default value.

Argument 1: Code indicating which value to return, as follows:
1 = live surface fuels of herbs in tons/acre
2 = live surface fuels of shrubs in tons/acre
3 = live surface fuels of herbs and shrubs in tons/acre

*Example: the function HERBSHRB(1) returns the live surface fuels of herbs in tons/acre.*

**HTDIST(a)** This function returns the height of the tree corresponding to the nominal percentile in the trees per acre distribution.

Argument 1: Percentile in the trees per acre distribution. The value must be between 1 and 100.

*Example: the function HTDIST(52) returns the height of the 52nd percentile tree in the trees per acre distribution.*

**INDEX(X,x1,x**2**,…,x**n**)** Returns x1 for X <u><</u> 1, x2 for X = 2, and xn for X <u>></u> n. This function does not have a set number of arguments; values for the arguments are required since there are no default values. The value of xn does not need to be defined unless X has the value of n (see the second example below). This differs from most event monitor functions which are undefined if any of the arguments are undefined.

*Example: the value of INDEX(X,10,20,30) is 10 for X < 1, 20 for X = 2, and 30 for X > 3*

*Example: the value of INDEX(CYCLE,0,TED) where TED is a user-defined variable, is 0 for the first cycle; in the second cycle (and all subsequent cycles), the value will be TED if TED has been defined, or it will be undefined if TED has not been defined. Notice this example uses the predefined event monitor variable CYCLE.*

**LININT** Returns a linear interpolation between points on a simple Y-over-X graph. This is a very powerful, and versatile, function. The general form is shown below, where (x1, y1),( x2, y2), . . . ,( xn, yn) define points on the graph and **X** is some arbitrary value along the X-axis.

LININT (**X**, x1, x2,..., xn, y1, y2,..., yn)

The function returns the appropriate value along the Y-axis derived from a linear interpola­tion on the line defined by connecting the points of the graph. Note that x1 through xn must be in ascending sequence (however, two consecutive x values can be the same as shown in the step function example below). If **X** is less than or equal to x1, then LININT returns the value of y1, and if **X** is greater than or equal to xn, LININT returns the value of yn.

At least 2 points must be provided, all arguments must be defined, and the total number of arguments must be an odd number. If any of these conditions are violated, the result of LININT is undefined. The maximum number of allowable points depends on the specific use within an expression and may vary by computer installation. In any case, up to 20 points should be permissible. This function does not have a set number of arguments; values for the arguments are required since there are no default values.

*Example: LININT can be used to describe mathematical relationships. The function LININT(BTOPHT,0,25,45,60,70,79,85,90,95,0,20,40,60,80,100,120,140,160) could be used to estimate stand age from average top height using the curve shown in figure 5-2. BTOPHT is a pre-defined event monitor variable.*

**Figure 5-2** — Event Monitor example: stand age as a function of top height.

*Example: LININT can be used as a step function or trigger (0 or 1) function. The function LININT(BADBH,5,5,0,1) would return a 0 if QMD is less than 5”, and a 1 if QMD was greater than or equal to 5”, as shown in figure 5-3. BADBH is a pre-defined event monitor variable.*

**Figure 5-3** — Event Monitor example: trigger function.

**MAXINDEX(x1,x2,…)** and **MININDEX(x1,x2,…)** These functions return the argument number (or index) of the argument with the maximum or minimum value respectively. These functions do not have a set number of arguments. Values for the arguments are required since there are no default values.

For example, the Inland Empire variant recognizes the three species western white pine (WP), Douglas-fir (DF), and western hemlock (WH) (see table 4-1). The function:

MAXINDEX (SPMCDBH(2,WP,0), SPMCDBH(2,DF,0), SPMCDBH(2,WH,0))

would return 1 if white pine represented the maximum basal area of the three species (since basal area of white pine is the first argument), or 2 or 3 if Douglas-fir or western hemlock represented the maximum basal area respectively.

**NORMAL(a,b)** This function returns a random number from a Normal distribution with a specified mean and standard deviation. This function has two arguments; values for the arguments are required since there are no default values. Arguments to the function are:

Argument 1: mean

Argument 2: standard deviation

For example, the function NORMAL(0,1) returns a random number from a standard Normal distribution with mean 0 and a standard deviation of 1. Values in this example are just as likely to be negative as positive. This could be useful for adding some random variation to some estimated value, or for triggering rare events.

**POINTID(a)** This function returns the inventory point number as read in the tree data input file corresponding to the FVS sequential point number “a”. This function has one argument; a value for the argument is required since there is no default value.

Argument 1: FVS sequential inventory point number

For example, using the example data set shown in Figure 4.3, the function POINTID(1) returns a value of 101 which is the inventory point number from the tree data input file corresponding to the FVS sequential point number of 1 (i.e., first unique inventory point number encountered in the tree data input file).

**POTFLEN(a)** This function, only available when using the Fire and Fuels Extension, returns the potential flame length that can be expected given nominal burning conditions. The terms “moderate” and “severe” are as defined in the potential fire report. This function has one argument; a value for the argument is required since there is no default value.

Argument 1: Code indicating the fire severity and flame type, as follows:
1 = severe fire total flame length in feet
2 = moderate fire total flame length in feet
3 = severe fire surface flame length in feet
4 = moderate fire surface flame length in feet

**POTFMORT(a)** This function, only available when using the Fire and Fuels Extension, returns the potential fire mortality. This function has one argument; a value for the argument is required since there is no default value.

Argument 1: Code indicating the units of mortality and the fire severity, as follows:
1 = potential severe fire mortality in percent of total basal area
2 = potential moderate fire mortality in percent of total basal area
3 = potential severe fire mortality in cubic foot volume per acre
4 = potential moderate fire mortality in cubic foot volume per acre

*Example: POTFMORT(2) returns the percent of the total basal area expected to be killed by a moderate fire.*

**POTFTYPE(a)** This function, only available when using the Fire and Fuels Extension, returns the fire type code (1 = surface fire, 2 = passive crown fire, 3 = active crown fire, 4 = conditional crown fire) for severe or moderate potential fires, as defined in the potential fire report. This function has one argument; a value for the argument is required since there is no default value.

Argument 1: Code indicating fire severity, as follows:
1 = potential severe fire
2 = potential moderate fire

*Example: POTFTYPE(2) returns a value of 1 through 4 indicating the fire type for a moderate fire, as defined in the potential fire report.*

**POTREINT(a)** This function, only available when using the Fire and Fuels Extension, returns the reaction intensity in BTU/ft2/min for severe or moderate potential fires, as defined in the potential fire report. This function has one argument; a value for the argument is required since there is no default value.

Argument 1: Code indicating fire severity, as follows:
1 = potential severe fire
2 = potential moderate fire

*Example: POTREINT(1) returns the reaction intensity in BTU/ft2/min for a severe fire, as defined in the potential fire report.*

**POTSRATE(a)** This function, only available when using the Fire and Fuels Extension, returns the spread rate in feet/min for severe or moderate potential fires, as defined in the potential fire report. This function has one argument; a value for the argument is required since there is no default value.

Argument 1: Code indicating spread rate type and fire severity, as follows:
1 = surface fire spread rate for a potential severe fire
2 = surface fire spread rate for a potential moderate fire
3 = final spread rate for a potential severe fire, taking any crown fire activity into account
4 = final spread rate for a potential moderate fire, taking any crown fire activity into account

*Example: POTSRATE(3) returns the final spread rate in feet/min, including any crown fire activity, for a sever fire, as defined in the potential fire report.*

**SALVVOL(a,b,c)** This function, only available when using the Fire and Fuels Extension, returns the salvage volume removed in total cubic feet per acre (western variants) or merchantable cubic feet per acre (eastern variants). It returns the cumulative volume of all salvage operations scheduled within a cycle. This function has three arguments; values for the arguments are required since there are no default values.

Argument 1: Species code (alpha code, species sequence number, species group name or species group sequence number). Only trees of the specified species or species group will be included. Code a zero (or All) for all species. Numeric species codes are variant specific.

Argument 2: Smallest DBH in inches to be included. Trees with a DBH greater than or equal to this value will be included.

Argument 3: Largest DBH in inches to be included. Trees with a DBH less than this value will be included.

*Example: the function SALVVOL(DF,9,999) returns the total cubic foot volume of Douglas-fir greater than or equal to 9.0” DBH that was salvaged.*

**SNAGS(a,b,c,d,e,f,g,h)** This function, available only when using the Fire and Fuels Extension, returns the volume. basal area, or number of snags per acre for a specified subset of the snag list. The function has 7 arguments; values for the first three arguments are required; default values are present for the last four arguments. The general form of the function is as follows:

SNAGS(measurement, species, snag type, lower DBH, upper DBH, lower height, upper height)

Argument 1: Code indicating which measurement is desired, as follows:
1 = number of snags per acre
2 = basal area per acre in snags
3 = total cubic foot volume per acre in snags

Argument 2: Species code (species alpha code, species sequence number, species group name, or species group sequence number). Only snags of the specified species or species group will be included. Code a zero (or All) for all species. Numeric species codes are variant specific.

Argument 3: Code indicating decay status. Only snags with the specified status will be included, as follows:

0 = both hard and soft snags
1 = hard snags only
2 = soft snags only

Argument 4: Smallest DBH in inches to be included. Trees with a DBH greater than or equal to this value will be included. The default value is 0.0

Argument 5: Largest DBH in inches to be included. Trees with a DBH less than this value will be included. The default value is 999.0

Argument 6: Shortest snag in feet to be included. Trees with a height greater than or equal to this value will be included. The default value is 0.0.

Argument 7: Tallest snag in feet to be included. Trees with a height less than this value will be included. The default value is 999.0.

*Example: the function SNAGS(1,ALL,2,0,999,20,999) returns the number of soft snags of all species and all diameters that are at least 20 feet tall.*

**SPMCDBH** Returns the trees, basal area, total cubic foot volume, merchantable cubic foot volume, sawlog cubic foot volume, merchantable board foot vol­ume, quadratic mean diameter, average height, percent cover, average mistletoe rating, stand density index, Curtis’ relative density, or average diameter growth per acre for a given species or species group, tree-value class, tree status, and range of di­ameter and height. Curtis’ relative density, as well as stand density index, values returned by this function are summations over all trees for which the contribution to these two metrics is being calculated. These metrics can be obtained for live trees, cut trees, dead trees, live trees after thinning, or mistletoe infected trees. These stand estimates may also be obtained by inventory point or averaged over all inventory points in the stand. This is one of the most widely used event monitor functions. The general form of the function is as follows:

SPMCDBH(measurement, species, tree-value class, lower DBH, upper DBH, lower height, upper height, tree status, point number)

The first three arguments are required since there are no default values for these arguments. Default values for the last six arguments are given below.

Argument 1: Code indicating which measurement is desired, as follows:
1 = trees per acre
2 = basal area per acre
3 = total cubic foot volume/acre
4 = merchantable board foot volume/acre for western variants; merchantable sawtimber board foot volume/acre for eastern variants
5 = quadratic mean diameter
6 = average height
7 = percent cover (corrected for crown overlap, based on stockable area)
8 = average dwarf mistletoe rating
9 = merchantable cubic foot volume/acre
10 = average diameter growth for the cycle
11 = stand density index (Reineke 1933) (based on stockable area)
12 = relative density as defined in SILVAH (Marquis and Ernst 1984) (based on stockable area)
13 = stand density index (Zeide 1983) (based on stockable area)

14 = Curtis’ relative density index (Curtis 2010) (based on stockable area)

15 = sawlog cubic foot volume/acre

Argument 2**:** Species code (alpha code, species sequence number, species group name, or species group sequence number). Only trees of the specified species or species group will be included. Code a zero (or All) for all species. Numeric species codes are variant specific.

Argument 3: Tree-value class (IMC codes 1,2, or 3; see section 4.2.1). Only trees of the specified value class will be included. Code a zero for all value classes.

Argument 4: Smallest DBH in inches to be included. Trees with a DBH greater than or equal to this value will be included. The default value is 0.0.

Argument 5: Largest DBH in inches to be included. Trees with a DBH less than this value will be included. The default value is 999.0.

Argument 6: Shortest tree in feet to be included. Trees with a height greater than or equal to this value will be included. The default value is 0.0.

Argument 7: Tallest tree in feet to be included. Trees with a height less than this value will be included. The default value is 999.0.

Argument 8: Code indicating tree status, as follows:
0 = live trees (this is the default value)
1 = recent mortality trees (i.e., died during the previous cycle)
2 = harvested trees
3 = residual (after thinning) live trees
4 = live mistletoe infected trees

Argument 9: Inventory point number. The default value is 0.0 which returns a stand estimate based on all inventory points in the stand. This inventory point number must be of the type specified for the run (see section 4.2.6).

*Examples using the Inland Empire variant:*

*SPMCDBH(1,LP,0) returns the trees per acre that are lodgepole pine;*

*SPMCDBH(2,0,3) returns the basal area/acre that is in IMC class 3;*

*SPMCDBH(3,3,1,10) returns the total cubic foot volume/acre that is Douglas-fir (species sequence number 3 in the North Idaho variant), IMC class 1, and in trees greater than, or equal to, 10 inches DBH;*

*SPMCDBH(3,3,1,10,20) is similar to the previous example, with the exception that the trees must be greater than or equal to 10 inches DBH and less than 20 inches DBH;*

*SPMCDBH(5,0,0,10,999,40,999,1) returns the quadratic mean diameter of recent mortality trees which are at least 10 inches DBH and at least 40 feet tall;*

**STRSTAT(a,b)** Returns a value from the Structural Statistics Table. To use this function, the structural statistics calculations must be turned on with the STRCLASS keyword. This function has two arguments; values for the arguments are required since there are no default values. The first argu­ment determines the attribute to be returned and the second determines whether the value is a before-thinning or after-thinning value.

Argument 1: Structural Statistics Table attribute. The following codes are used to re­trieve attributes available using STRSTAT:

1 = nominal DBH for stratum 1
2 = nominal height for stratum 1
3 = height of the tallest tree in stratum 1
4 = height of the shortest tree in stratum 1
5 = height to crown base for stratum 1
6 = canopy cover for stratum 1 (based on stockable area)
7 = first major species for stratum 1
8 = second major species for stratum 1
9 = stratum 1 status code
10 = trees per acre in stratum 1
11 = nominal DBH for stratum 2
12 = nominal height for stratum 2
13 = height of the tallest tree in stratum 2
14 = height of the shortest tree in stratum 2
15 = height to crown base for stratum 2
16 = canopy cover for stratum 2 (based on stockable area)
17 = first major species for stratum 2
18 = second major species for stratum 2
19 = stratum 2 status code
20 = trees per acre in stratum 2
21 = nominal DBH for stratum 3
22 = nominal height for stratum 3
23 = height of the tallest tree in stratum 3
24 = height of the shortest tree in stratum 3
25 = height to crown base for stratum 3
26 = canopy cover for stratum 3 (based on stockable area)
27 = first major species for stratum 3
28 = second major species for stratum 3
29 = stratum 3 status code
30 = trees per acre in stratum 3
31 = number of strata
32 = canopy cover (based on stockable area)
33 = structure class

Argument 2: Before-thinning or after-thinning flag
0 = return the before-thinning attribute
1 = return the after-thinning attribute

If the function references statistics that have not been com­puted, the value of STRSTAT is undefined.

*Example: the function STRSTAT(6,1) returns the total canopy cover in stratum 1 (the uppermost strata) after thinning has occurred in the cycle.*

**SUMSTAT(a,b)** Returns a value from the Summary Statistics Table. The first argu­ment determines the row (which is the same as the cycle number) and the second determines the column. Each column corresponds to a different stand attribute. This function has two arguments; values for the arguments are required since there are no default values.

Argument 1: Summary Statistics Table row (which is the same as the cycle number).

Argument 2: Summary Statistics Table column. Each column corresponds to a different stand attribute. The following codes are used to re­trieve attributes available using SUMSTAT:

1 = year
2 = stand age
3 = trees per acre
4 = total cubic foot volume/acre
5 = merchantable cubic foot volume/acre
6 = merchantable board foot volume per acre
7 = removed trees per acre
8 = removed total cubic foot volume/acre
9 = removed merchantable cubic foot volume/acre
10 = removed merchantable board foot volume
11 = basal area per acre after thinnings
12 = crown competition factor after thinnings (based on stockable area)
13 = top height (average height of the 40 largest diameter trees)
14 = cycle length (years)
15 = accretion [total ft3/acre/year]
16 = mortality [total ft3/acre/year]
17 = stand sampling weight
18 = forest cover type
19 = size class
20 = stocking class
21 = sawlog cubic foot volume/acre
22 = removed sawlog cubic foot volume/acre

If the row number (argument 1) references statistics that have not been com­puted, the value of SUMSTAT is undefined.

*Example: the function SUMSTAT(2,6) returns the total board foot volume in cycle 2; the value of this function would be undefined in cycle 1.*

**TIME(a,b,c,…)** Returns the first argument if the current year in the simulation is less than the second argument; returns the third argument if the current year in the simulation is greater or equal to the second argument and less than the fourth argument, and so on. This function is similar to the decade function, but the specific years that form the limits do not have to coincide with decade or cycle boundaries. It is also similar to the LININT function. This function does not have a set number of arguments; values for the arguments are required since there are no default values.

*Example: consider TIME (3.0, 2030, A/B, 2050, A\*C). For all the years of the simulation prior to 2030, the value of TIME will be 3.0. For the years 2030 to 2049, the value of time will be A/B. For year greater or equal to 2050, the value of TIME will be A\*C.*

*Example: assume there is an endemic level of 10 meadow voles per acre in aspen stands. Following clearcutting in 2011, the population of meadow voles per acre increases dramatically and peaks 10 years later. There is a fairly rapid die-off over the next 20 years followed by a more gradual decline back to the endemic level at 60 years following the clearcut. This hypothetical relationship is shown in figure 5-4 and could be represented with the following function:*

*TIME(10, 2011,10+3\*AGE,2021,50-AGE,2041,30-0.333\*AGE,2071,10)*

**Figure 5-4** — Event Monitor example: number of meadow voles following clear cutting.

**TREEBIO(a,b,c,d,e,f,g,h)** This function, available only when using the Fire and Fuels Extension, supplements information provided in the Fire and Fuels Extension All Fuels Report. It returns estimates of the biomass (dry weight tons per acre) of the specified trees. The specified trees can be live or dead, standing or removed, of a particular species or species group, and of a particular size range (DBH and height). The biomass returned can be the biomass of the stem, the crown, total tree biomass (i.e., stem plus crown), or, in some cases, only the live foliage. This function has eight arguments; values for the first three arguments are required since there are no default values.

Argument 1: Code indicating standing or removed trees, as follows:
-1 = standing trees
0 = removed trees
1 = both standing and removed trees

Argument 2: Code indicating live or dead trees, as follows:
-1 = dead trees
0 = live trees
1 = both dead and live trees

Argument 3: Code indicating stem or crown biomass, as follows:
-1 = stem biomass
0 = crown biomass (includes foliage)
1 = both stem and crown biomass (includes foliage)
2 = live Foliage. Warning: "live foliage" is calculated only for standing, live trees. Requesting "live foliage" with arguments 1 and 2 set to anything other than standing, live trees will result in an undefined function.

Argument 4: Species code (alpha code, species sequence number, species group name, or species group sequence number). Only trees of the specified species or species group will be included. Code a zero (or All) for all species. Numeric species codes are variant specific.

Argument 5: Smallest DBH in inches to be included. Trees with a DBH greater than or equal to this value will be included. The default value is 0.0.

Argument 6: Largest DBH in inches to be included. Trees with a DBH less than this value will be included. The default value is 999.0.

Argument 7: Shortest tree in feet to be included. Trees with a height greater than or equal to this value will be included. The default value is 0.0.

Argument 8: Tallest tree in feet to be included. Trees with a height less than this value will be included. The default value is 999.0.

*Example: the function TREEBIO(-1,0,1) returns the total stem and crown biomass in dry tons/acre of all standing live trees in the stand.*

#### 5.5.2.3 Rules for Coding Expressions

Expressions consist of variables, constants, parentheses, arithme­tic operators, and logical operators. When coding expressions, follow these rules:

* A parenthesis or blank must precede and follow logical operators: AGE GT 25 is valid, AGE GT(25) is valid, AGE GT25 is invalid.
* A parenthesis, constant, or variable must separate two arithmetic operators: AGE\*-2.5 is invalid**,** AGE\*(-2.5) and -2.5\*AGE are valid.
* Operators are executed in order of precedence given in table 5-3, or parentheses may be used to control the precedence of evaluation.
* When equally ranked operations are found, evaluation proceeds from left to right.
* Constants are treated as floating point numbers whether or not adecimal point is coded. For example, 300 is converted to 300.0.
* Arguments to functions are considered expressions. An argument to a function may reference any function including the original function. That is, DECADE(TIME(A,B,C),D/E,ALOG(4\*ALOG(F))) is valid if variables A through F are appropriately defined.
* Expressions may contain up to 150 characters per line. An ampersand (&) signals that expressions are continued on the next line. Any characters that follow the ampersand on the same line are output as comments.
* Expressions may contain up to 2000 characters. Strings of blanks count as one character; ampersands and characters that follow ampersands do not count.
* Species codes may be the FVS sequence numbers, alpha codes, species group name, or species group sequence number.
* The following are valid(and equivalent) logical expressions:
  (BTPA\*2 GE 1000 OR AGE GT 50.)
  (NOT BTPA LT 500) OR (NOT AGE LE 50.0)
  NOT (BTPA LT 500 AND AGE LE 50)
* The following are invalid:
  (ATPA .LT. 500.) — the inclusion of the periods before and after the less-than operator is valid in FORTRAN but notin the Event Monitor.
  (NOT (BTPA LT 50) — unbalanced parentheses.

## 5.6 Creating Custom Output Variables

The Event Monitor allows you to define up to 399 variables using a COMPUTE keyword record. The COMPUTE keyword record can be scheduled for specific years, and the value of variables may depend on an event. Variable definitions are provided on supplemental data records following the COMPUTE keyword record. Variable definitions contain a variable name, an equal sign, and an expression that specifies the numeric value of the variable. An example is shown below.

NORMST = 25000\*(BADBH+1)\*\*(–1.588)

When defining a variable, the variable name you assign:

* Must be eight characters or less in length
* May not be an FVS variable name, function name, or operator (see tables 5-2 and 5-3)
* May not be an FVS species code, although a species code may be a *part* of the name (for example, QMD\_LP is a valid name even though LP is an FVS species code)
* May not be a conditional keyword (if, then, endif, or end)
* May not include an ampersand (&)
* May not contain spaces, arithmetic operators (+, -, \*, /), periods, or any of these special characters: ^ ! " # % & ' : ; < = > ? @ [ \ ] ^ ` { | } ~
  The only special characters that can be used are: \_ (underscore) and $ (dollar sign)
* Should not begin with a number

When assigning a value to a variable, the expression found on the right-hand side of the equal sign must be a valid mathematical expression, and may contain any or all of the following elements:

* Numbers
* Arithmetic operators (+, -, \*, /, \*\*) and parentheses
* Math functions, and trigonometric functions (see table 5-3)
* Pre-defined FVS variables (see table 5-2)
* FVS model functions (see table 5-3)
* Variables previously defined using a COMPUTE keyword record

For long expressions an ampersand (&) is used to indicate that the expression is continued on the next record. The remainder of the expression is coded on subsequent supplemental data records using additional ampersands as necessary. Multiple variables may be defined within a single COMPUTE keyword record. Each variable definition begins on a new supplemental record, and since a new definition is not a continuation of the previous definition there should not be an ampersand at the end of the previous record. Enter an END keyword after the last expression record. Expressions defining a variable can be up to 2000 characters long.

The following keyword segment illustrates how to use the COMPUTE option.

COMPUTE 0.

NORMST = 25000\*(BADBH+1)\*\*(-1.588)

RATIO = NORMST/BTPA

END

1. The COMPUTE keyword has a “0.” in the first field indicating that the variables NORMST and RATIO should be calculated every cycle.
2. The variable NORMST is defined as stocking in trees per acre using an equation based on Haig’s (1932) yield tables for western white pine type (see Wykoff et al. 1982, page 71). The variable BADBH is a predefined Event Monitor variable representing the average before-thinning diam­eter at breast height (see group 1 in table 5-2).
3. The variable RATIO is the ratio between normal stocking and current stocking as measured in trees per acre. BTPA is the predefined Event Monitor variable representing before thinning trees per acre. In this formulation, when RATIO exceeds 1 then the stand is below normal stocking, and when RATIO is less than 1 then the stand is above normal stocking.
4. The END keyword signals the end of COMPUTE sequence.

Results of the calculations are reported in the Activity Summary Section of the Summary Statistics Table.

### 5.6.1 Writing Custom Variables to a Database

In addition to being reported in the Activity Summary in the main output file, the results of the COMPUTE calculations can be written directly to a database. The FVS\_Compute table is requested with the COMPUTDB database keyword. Refer to the Users Guide to the Database Extension (Crookston et al. 2003) for additional information.

## 5.7 Generating a Stand Visualization

A visual rendering of how the stand might look is a valuable tool for communicating how a particular management action can alter the appearance of the forest. The Stand Visualization System, SVS, (McGaughey 1997) software is a separate program maintained by the Pacific Northwest Research Station, and distributed along with FVS software. The first step in creating a stand visualization is to include the SVS keyword record in the keyword set. This keyword record tells FVS to generate an output file, with a .svs file extension, specifically formatted for running SVS. This file can be generated in either metric or imperial units.

The second step is to run the SVS software using the .svs file as input. Launch the WinSVS program and provide the .svs file name. If an index file was requested on the SVS keyword record, opening the index file allows access to all of the SVS files created for that simulation run.

The FVS GUI has SVS logic integrated, so it is able to display the SVS images without having to rely on the WinSVS program. This is done through the Visualize menu.

## 5.8 Generating Graphs, Charts, and Custom Output Tables

Variables that the user has defined, along with the values that FVS has calculated for those variables, are displayed in the Activity Summary section of the main FVS output file. This information is in addition to that contained in the standard FVS tables. The variables and their calculated values can also be written to an output database.

Users can import the variable values into other applications to create custom graphs, charts, and tables. The FVS GUI program also has the capability to create charts and graphs using the values calculated for user-defined variables.

# 6.0 Advanced Concepts

*Primary technical references for this section: Stage 1973; Wykoff et al. 1982; Wykoff et al. 1990; Crookston 1990; Hamilton 1994; Crookston and Stage 1991*

At this point users should be able to operate FVS, develop basic silvicultural prescriptions, generate some custom output variables or reports, and obtain stand visualizations. Upon completion of this section, users should:

* Understand how to define keyword parameters using variables or expressions.
* Know how to simulate natural regeneration in variants that only have the partial establishment model.
* Know how to set stand level thinning targets.
* Understand the role of randomization in model projections.
* Understand how to use model scale factors to adjust model performance.
* Understand how to use policy labels.

## 6.1 Defining Keyword Parameter Using Variables or Expressions

Up to this point in this manual, keyword parameters have been fixed values specified by the user. However, it is possible, for all of the thinning keywords, all of the growth rate multiplier keywords, the keywords that control top-kill, the mortality multiplier keywords, and the defect keywords, to code variables or expressions in place of constant parameters. If a keyword is not an activity keyword, this feature may not be used.

To code an expression on an activity keyword record, the following steps should be taken:

1. Code the keyword in the first eight columns and the date/cycle in field 1 of the keyword record as done when this feature is not used.
2. For the other parameters, code

**PARMS** (arg1,arg2,...,argn)

where the remaining parameters for the keyword record are coded sequentially inside the parentheses. The “P” in PARMS must be between columns 21 and 30 of the keyword record. Each “argn” is an ex­pression using constants and variables found in table 5-2, any of the functions and operators from table 5-3 except the logical operators, and any user-defined computed variables.

1. Ensure that parameter values are within legal limits. For example, the cutting efficiency used on a thinning keyword must be between 0.0 and 1.0. When the PARMS feature is not used, FVS ensures that the values are within legal limits. Because FVS uses a different keyword processing procedure when PARMS is used, the model does not check for legitimate values.
2. Supply ALL of the parameters used by the activity keyword. When the PARMS feature is not used, default values are supplied when a keyword field is left blank. When the PARMS feature is used, default values are not supplied for blank fields because of the different processing procedure just mentioned.
3. Use variables that are defined when the activity is scheduled by FVS. If the PARMS function references a variable that is not defined when the activity is called for by the model, the activity is CANCELED. For example, group 2 variables (see table 5-2) are only defined after thinning in each cycle. If a residual thinning density is specified based on a group 2 variable, the function will be undefined at the time FVS tries to schedule the thinning, and the thinning will be canceled.
4. When coding the PARMS specification, use an ampersand (&) to continue the specification on to the following keyword record.
5. The PARMS feature can be used on activities that are conditionally scheduled, or those scheduled for a specific date or cycle.

The following examples illustrate use of the PARMS feature.

Example 1:

THINDBH 2001. 10.

THINDBH 2001. PARMS(10.,999.,1.,0.,0.,0.)

These two THINDBH keywords are equivalent; both request that all trees between 10 and 999 inches in diameter be cut (fields 2 and 3), that the cutting efficiency be 1.0 (field 4), that all species be cut (field 5), and that the residual trees per acre and basal area per acre within the cut diameter class be zero (fields 6 and 7). Note that only the lower diameter is specified in the first keyword, and defaults are supplied by FVS for other fields.

Example 2:

THINBTA 2001. PARMS(BTPA-SPMCDBH(1,0,3), &

1.,0.,999.,0.,999.)

In this example, the residual stand density for a thin from below to a trees per acre value is computed using the Event Monitor variable BTPA, before thinning trees per acre, and the SPMCDBH function (described in section 5.5.2.2). The residual trees per acre is the difference between the total number of trees and the num­ber of trees that carry tree-value class code 3 (IMC=3).

Example 3:

COMPUTE 0.

NORMST = 25000\*(BADBH+1)\*\*(-1.588)

RATIO = NORMST/BTPA

END

IF

RATIO LT 1.0

THEN

THINDBH 0. PARMS(0.,999.,1-RATIO,ALL,0.,0.)

ENDIF

This sequence results in a cutting schedule such that a normal stocking curve is followed. The compute portion of this example is the same as shown in section 5.6. In this example, when the stand is in an overstocked condition (i.e., when RATIO is less than 1) a thinning request is scheduled. The value of 1-RATIO is the cutting efficiency needed to reduce the stand to the normal stocking level with the THINDBH thinning option. Other arguments specify all of the trees in the diameter range and all species.

## 6.2 Simulating Natural Regeneration with the Partial Establishment Model

Automatic pulses of trees classified as ingrowth trees (see section 5.4.2.2) only happen in variants containing the full establishment model. Ingrowth for FVS variants that do not have equations pre­dicting natural regeneration can be simulated through use of the Event Monitor features previously discussed.

For example, assuming 10-year cycles, the following keyword sequence will add 50 ponderosa pine seedlings and 20 Douglas-fir seedlings per acre every 20 years beginning with cycle 4.

IF

(FRAC(CYCLE/2) EQ 0 AND CYCLE GT 3)

THEN

ESTAB

NATURAL 0.0 PP 50.0

NATURAL 0.0 DF 20.0

MECHPREP 0.0 0.0

TALLYONE 9.0

END

ENDIF

A MECHPREP or BURNPREP keyword record specifying 0.0 percent site preparation is needed to keep all plots untreated.

## 6.3 Defining Stand Targets on FVS Thinning Keywords

When coding residual targets on FVS thinning keyword records, the target corresponds to the diameter and/or height class defined by other parameters on the thinning request. It is not always straight forward, or obvious, how to achieve a desired stand level thinning target under these circumstances. However, it can be done using event monitor capabilities.

For example, consider a stand with 170 trees/acre distributed as follows:

* 50 trees/acre less than 3.0 inches DBH;
* 100 trees/acre 3.0 inches DBH and larger, but less than 20 inches DBH;
* 20 trees/acre 20.0 inches DBH and larger;

If the management scenario is to thin from below leaving 80 trees/acre in the stand, that can easily be accommodated by expanding the diameter range on the THINBTA keyword to encompass the whole stand. Such as the following:

THINBTA 2001 80 1.0 0. 999. 0. 999.

Since all trees in the stand are included in the specified diameter and height classes, the class target of 80 corresponds to the stand target in this instance.

However, if the management scenario is to thin from below leaving 80 trees per acre in the stand, but confine the thinning to trees greater than or equal to 3.0 inches DBH but less than 20.0 inches DBH, it’s not so simple. Obviously, in this simple example 90 trees must be removed from the middle size class. The remaining 10 trees in this class when added to the 70 trees outside the class would leave 80 trees in the stand. One way to solve the problem is to do the math by hand and code a keyword such as:

THINBTA 2001 10 1.0 3. 20. 0. 999.

Most stands are far too complicated to work this out by hand, and the only way to do that would be to run the stand once without management to see what numbers to use, compute the required parameter values, and rerun the stand with the management included. If more than one thinning was scheduled, this would be an iterative, time consuming, laborious, and error prone procedure. The event monitor greatly simplifies the process.

As illustrated in previous sections, the event monitor function SPMCDBH can be used to return one of several attributes across tree species, value class, diameter class, and height class. It can be used with live trees, recent mortality trees, or harvested trees. Consider the following sequence:

COMPUTE 0

TPAL3 = SPMCDBH(1,0,0,0.,3.) *computes live trees/acre in trees < 3.0” DBH*

TPAG20 = SPMCDBH(1,0,0,20.) *computes live trees/acre in trees <u>></u> 20.0” DBH*

END

THINBTA 2001 PARMS(MAX(0.,80-TPAL3-TPAG20) &

,1.,3.,20.,0.,999.)

This sequence computes the variables TPAL3 and TPAG20 as defined above, and uses those variables to set the target on the THINBTA keyword. The value of TPAL3 would be 50, and the value of TPAG20 would be 20, so the value of the expression for the residual target would be 80 (the stand target) – 50 –20 = 10 trees/acre. This THINBTA would leave 10 trees/acre in the 3.0 <u><</u> DBH < 20.0 range and 80 trees/acre in the stand, which achieves the desired objective. The MAX function is used to ensure that the trees per acre target is greater than or equal to zero.

The SPMCDBH expressions could be coded directly into the PARMS statement eliminating the whole compute section and defining two extra variables. So the following expression is equivalent to the entire sequence shown above:

THINBTA 2001 PARMS(MAX(0.,80-SPMCDBH(1,0,0,0.,3.)- &

SPMCDBH(1,0,0,20.)),1.,3.,20.,0.,999.)

Results of the calculations are reported in the Activity Summary Section of the Summary Statistics Table.

## 6.4 Calibration and Randomization

A variant does a reasonably good job of projecting yields for managed and unmanaged stands in the geographic area for which it was fit. However, situations exist where the model may perform poorly. The FVS model includes several features that facilitate improvement of performance in these situations:

1. FVS includes a built-in scaling procedure that adjusts the small-tree height increment model and the large-tree diameter increment model so that predicted growth matches observed growth for the median trees. Scale factor calculations can be modified or bypassed.
2. Random effects have been represented in FVS in various ways (Stage 1973). There are options that alter or entirely suppress the application of these random effects.
3. Options to input multipliers for all the increment functions have been provided. Additional options that affect the behavior of the mortality models can be targeted to specific species or species groups, and to specific cycles.

The first two of these are discussed in this section, and the third one is discussed in the next section.

### 6.4.1 Calculation of Scale Factors

The increment models contained in FVS are based on the best available data. For the most part, the data are representative of growing conditions in the geographic area for which the variant was fit, and the models produce relatively unbiased estimates of growth. However, it is reasonable to expect considerable variation about the expected value of the predictions for any set of values of the predictor variables. Many sites perceived to be the same, in terms of the variables used to predict growth, are in fact dif­ferent, and the differences are reflected in growth rates. The tree is a good in­tegrator of site factors, and tree growth is a good indicator of site capability.

Available increment data are used to modify predictions. Most commonly, data are available for periodic diameter increment. Periodic height increment, on smaller trees, can be readily measured as well.

The scaling procedure (Stage 1973), when stripped of statistical condiments, is really quite simple. Both the large-tree diameter growth model and the small-tree height growth model are linear with logarithmically scaled dependent variables. Therefore, the model intercepts are, in effect, growth multipliers. An increment is predicted to match each observed increment for a species, and differences are sorted. The me­dian difference is then added to the model for that species, on the logarithmic scale, as an additional intercept term (see section 7.2 for detailed information).

The diameter increment scale factors are attenuated over time. On long-term projections, the base model is assumed to be a more stable estimate of growth potential than is the scale factor. The attenuation is asymptotic to one-half the difference between the initial scale factor value and one. The rate of attenuation is dependent only on time, and has a half-life of 25 years. Figure 6-1 shows this attenuation for two examples: (1) an initial scale factor of 2.0, and (2) an initial scale factor of 0.5. In the first case, the attenuation goal is 1.5 (half the difference between the initial scale factor of 2.0 and one). At 25 years, the value is 1.75 (halfway between 2.0 and 1.5); at 50 years the value is 1.62 (halfway between 1.75 and 1.5); at 75 years the value is 1.56 (halfway between 1.62 and 1.5; and at 100 years the value is 1.53 (halfway between 1.56 and 1.5. Similarly, the attenuation goal in the second example is 0.75 (half the difference between the initial scale factor of 0.5 and one).

Scale factors are calculated for a species with five or more sample trees meeting size requirements for the scale factor (see section 4.2.1 variables DG and HTG). The minimum number of observations required for calibration can be changed using the CALBSTAT keyword record (the minimum value is 3).

The calculation of scale factors can be suppressed by inserting a NOCALIB keyword record in the keyword record file. There are no associated parameters. This option is useful when compar­ing the influence of site characteristics such as elevation, habitat type, slope, aspect, and location on stand development (see related discussion in section 6.5.2.1).

The calibration procedure described above changes the increment prediction in a pro­portional manner. It does not influence the relative effects of the predictor variables and there is no change in the shape of the response surface.

FVS models are high-level abstractions. The connections between the selected set of predictor variables and physiological processes that actually control tree growth are, at best, tenuous. Therefore, it is unreasonable to assume that growth responses in locations with substantially different environmental limitations will be the same. It is more likely the shape of the response surface in these locations, relative to the selected set of predictor variables, will be different. When this is the case, the models should be refit.

![](data:image/x-wmf;base64...)

**Figure 6-1** — Example of scale factor attenuation.

### 6.4.2 Randomization

Random effects are incorporated in the Forest Vegetation Simulator in the manner originally described by Stage (1973), and subsequently updated to reflect changes in program control variables. The program assigns all random effects to the distribution of errors associated with the prediction of the logarithm of basal area increment. Basal area increment was selected to reflect the stochastic variation because the effects of differing diameter growth rates extend in highly nonlinear ways through most of the remaining components of the model. This distribution of errors is assumed to be Normal, with a mean of zero. The variance of this Normal distribution is computed as a weighted average of two estimates; the first estimate is derived from the regression analysis that developed the prediction function, and the second estimate is the standard deviation of the differences between the recorded growth for the sample trees in the population (transformed to the logarithm of basal area increment) and their corresponding regression estimates. The weights assigned to these two estimates are (1) the number of observations by species and/or habitat type in the database for the model for the prior component of error, and (2) the number of growth-sample trees in the stand for the second component of error (Mehta 1972).

The random component of change in tree diameter is treated in two ways, depending on how many tree records make up the stand being projected. When there are many tree records, the effects of any one random deviation on the growth rate of one tree would be blended with many other trees, and the stand totals should be quite stable estimates. Accordingly, a random deviate from the specified distribution is added to the logarithm of basal area increment.

When relatively few sample trees represent the stand, however, a different strategy is used. In order to increase the number of replications of the random effects, two additional records augment each tree record. These new records duplicate all characteristics of the tree except the predicted change in diameter and the number of trees per acre represented by the source tree record. The trees per acre value of the original tree record are reduced to 60 percent of its current value. The two new records are given 15 and 25 percent of the original value; thus, the three records together still represent the same number of trees per acre. This process is known as tripling.

Each of these three records is associated with one of the three portions of the error distribution characterizing the deviations about prediction (figure 6-2). The first record, representing 60 percent of the population (approximately the center of the distribution), is given a prediction corresponding to the average value of the deviations in that portion of the Normal distribution. This “biased” point is indicated by point A in figure 6-2. The se­cond record, representing the upper 25 percent of the error distribution, is given a prediction corresponding to point B; and likewise, the record for the lower 15 percent is given a prediction corresponding to point C. With this method, the weighted average prediction for the three records is equal to the estimate associated with the original record.

Unless otherwise specified, records will be tripled twice or until additional tripling would exceed the program storage capacity for tree records (currently set to 3000). The maximum number of triples can be increased or decreased by using the NUMTRIP record or suppressed entirely with the NOTRIPLE record.

![](data:image/x-wmf;base64...)

**Figure 6-2** — Location of prediction points (A, B, and C) for three fractions of the normal distribution.

The region of the Normal distribution from which random increments are drawn is bounded by <u>+</u> 2 standard deviations. These bounds can be changed with the DGSTDEV record.

Random errors are drawn from the Normal distribution by using Batchelor’s technique as described in Tocher (1963). This technique requires three pseudorandom uniform numbers to produce each Normal deviate. The uniform pseudorandom numbers are generated with the Marsaglia-Bray composite algorithm (Marsaglia and Bray 1968). The uniform random number generator is automatically reset prior to each FVS run so that a given set of tree records and control variables will always produce the same projection output in a specific computing environment.

It is possible to manually reseed the random number generator and thus produce varia­tion in projection results. There are three seeds involved and they can be replaced with the RANNSEED record. Seeds can be replaced individually or as a group. The new seeds should be odd integer values. If they are otherwise, they will automatically be converted to odd integers by trun­cating fractions and/or adding 1. Hamilton (1991) recommends that in almost all applications of the model, it would be wise to make at least two or three projections (using different random seeds for each projection) rather than to rely on the results of a single simulation. Further, some research applications of the model requiring high precision levels may need substantially more replications to stabilize variance estimates of projected values.

## 6.5 Defining and Using Model Multipliers

Multipliers that permit users to adjust model performance for specific stand or environmental conditions are an important part of the Forest Vegetation Simulator. However, care must be taken when using model multipliers, and users need to understand which multipliers affect which part of the FVS model before attempting to use them. Affected portions of the model may not be intuitively obvious by just reading the appropriate keyword description. Furthermore, improper use may lead to unrealistic biological results (such as unrealistic height/diameter ratios), or in extreme cases to model run failure (such as when variables in model functions get pushed outside their permitted ranges). Hamilton (1994) presents a more detailed discussion of this topic.

These features are not intended as a vehicle for molding FVS output to match preconceived notions of stand development. The range of an FVS variant can be effectively extended by judicious use of scaling factors and multipliers. However, changes should be approached with caution, and they should be based on increment and yield data. In most cases where extensive modification is necessary, re-estimation of some or all model parameters is in order. If data are available, estimation procedures are fairly routine (Stage 1973, 1975; Cole and Stage 1972; Hamilton and Edwards 1976).

### 6.5.1 FVS Component Models

The FVS model has four primary components that can be adjusted by multipliers. The four components are: height growth, diameter growth, crown change, and mortality. The first three of these can be further divided into submodels that pertain to “small” trees and those that pertain to “large” trees (see figure 3-1). It is important to understand how these components interact to understand how model multipliers are affecting simulation results.

For the diameter growth component, the breakpoint DBH between the small-tree submodel and the large-tree submodel varies by geographic variant and the user should consult the appropriate variant overview document to determine this value. In some, like the Inland Empire variant, the breakpoint is at 3.0 inches DBH. However in others, like the Central Rockies variant, the breakpoint DBH varies by species. The main point to remember is that this is a hard break. That is to say, when a tree’s diameter is below the breakpoint, its diameter growth is predicted using the small-tree diameter growth equations, and when it is equal to or larger than the breakpoint its diameter growth is predicted using the large-tree diameter growth equations.

For the height growth component, there are two breakpoint diameters. The purpose of this logic is to assure a smooth transition in height growth as a tree increases in size. If a tree’s DBH is below the first breakpoint diameter, height growth is predicted using the small-tree height growth equations. If a tree’s DBH is above the second breakpoint diameter, height growth is predicted using the large-tree height growth equations. And if a tree’s DBH is between the breakpoint diameters, then height growth is a weighted average of the estimates from both the small-tree and large-tree height growth equations. These breakpoint diameters are both variant specific AND species specific, so users should consult the appropriate variant overview document to determine these values.

The crown change component operates similarly to the diameter growth component. In some variants, there is a hard break between the small and large trees that is variant specific. In other variants, there is no distinction between small and large trees for the crown change component.

Users need to keep in mind the FVS processing sequence (see figure 3-1) when contemplating which multipliers to use and how a particular multiplier might affect simulation results. Within an FVS projection cycle, the processing sequence of these components is: large-tree diameter growth, large-tree height growth, small-tree height growth, small-tree diameter growth, mortality, and crown change. In addition, users need to examine the variant overview document to understand which location, stand, and tree attributes affect these components (i.e., which variables are used in which equations).

The FVS small-tree model is height growth driven. That is to say, for small trees, height growth is predicted first, and other attributes are predicted from height growth and other factors. The FVS large-tree model is diameter growth driven. For large trees, diameter growth is predicted first, and other attributes are predicted from diameter growth and other factors.

### 6.5.2 Types of FVS Multipliers

There are four types of multipliers in FVS, and each type affects model performance differently. Each type is useful to simulate somewhat different effects.

#### 6.5.2.1 Multipliers Computed Automatically by the Model

The first type of multipliers includes those computed automatically by the model. These are the small-tree height growth scale factor and the large-tree diameter growth scale factor (the two driving components of the respective submodels). These scale factors, or multipliers, alter predicted growth estimates. Values for these multipliers are shown in the Calibration Statistics Table in the main FVS output file (see sections 4.3.1 and 4.3.1.1.3).

These multipliers are designed to modify model growth predictions so they more closely match any available growth observations that are present in the input data for the site being projected. The purpose of these multipliers is to account for variation in growth due to factors that are not explicitly used in the model (e.g., climatic effects, variation with a vegetative type, differences due to genetic improvement, etc.). The value of these multipliers is automatically attenuated over time to a value that is one-half the difference between the large-tree diameter growth scale factor and one (see figure 6-1 and section 6.4.1). Users can turn off the automatic calculation of these multipliers by using the NOCALIB keyword. Users might consider this option if the observed growth rates in the data are not reflective of the general site capabilities, or are suspected of containing errors.

#### 6.5.2.2 Multipliers Applied Before Calibration

The second type of multipliers alters FVS model components before calibration occurs. They are a permanent adjustment to the simulation (i.e., they are not attenuated over time and cannot be changed once the simulation has started). These multipliers are input using the READCORD, READCORR, and READCORH keywords. These keywords are designed to correct any consistent biaswhen the model is applied to a group of stands. In effect, these multipliers are changing the model to a different mean response level.

The most common use of these multipliers is to correct any consistent model bias observed when running a landscape analysis. However, these multipliers are also useful for extending the effective range of a variant outside the geographic area for which it was fit. Because these multipliers are applied before model calibration, individual stands can still be calibrated to account for stand-to-stand variability using the first type of multipliers discussed above.

#### 6.5.2.3 Multipliers that Alter Regeneration

The third type of multipliers modifies how the regeneration establishment model works. They are mentioned in this section because people usually don’t think of them as being multipliers. These include multipliers that change the heights of seedlings, the probability of stocking, or the species occurrence. These last two are applicable only in variants with the full establishment model. Keywords to enter these multipliers are HTADJ, STOCKADJ, and SPECMULT, respectively. These keywords must be used inside an ESTAB – END keyword sequence. Refer to section 5.4.3.2 for a complete description of these keywords.

#### 6.5.2.4 Multipliers Applied After Calibration

The fourth types of multipliers are those applied to model components after calibration has occurred. These multipliers are not attenuated over time and their value can be changed from projection cycle to projection cycle. These multipliers can be tailored to a particular species or species group, and in some cases, they can be applied to a specific diameter range. These multipliers are designed to simulate the effects such as silvicultural treatments or environmental changes that might be expected to affect a given stand, but are not otherwise specifically included in the model (e.g., fertilization effects, insect outbreaks, stand stagnation, etc.).

Keywords used to enter the fourth type of multipliers are:
BAIMULT large-tree diameter growth multiplier
HTGMULT large-tree height growth multiplier
REGHMULT small-tree height growth multiplier
REGDMULT small-tree diameter growth multiplier
CRNMULT crown change multiplier
MORTMULT mortality multiplier

Five other keywords fall into this category, but they are applied slightly differently than those described above. The FIXDG and FIXHTG keywords adjust diameter growth and height growth, respectively. However, these are applied at the end of a cycle after all other growth calculations. As such, these multipliers are applied in addition to any other diameter or height growth multipliers in use. The FIXMORT keyword applies to mortality. Using this keyword, the user can modify, or even replace, the mortality rates calculated by the model. The FIXCW keyword adjusts the estimated crown widths. Crown widths are used to compute canopy cover statistics in various parts of the model and do not affect any of the growth calculations. The FERTILIZ keyword simulates the 10-year effects of fertilizing with 200 pounds of nitrogen per acre. Both diameter growth and height growth are affected.

Two final keywords are included in this section. These keywords are specifically intended to mimic insect and disease effects in the absence of an extension to handle the disturbance agent. The HTGSTOP keyword is used to either stop, or reduce, height growth, and the TOPKILL keyword is used to kill a portion of the trees’ crown. Both operate on randomly selected tree records that fall within the user-specified species or species group, and height class parameters. The TOPKILL keyword is also useful for simulating logging damage to residual trees. For top-killed trees, it is assumed that a new leader will develop. This is why top-killed trees will continue to grow in height, from the point of top-kill, in subsequent years. Both of these keywords affect growth in subsequent cycles.

When using this fourth type of multiplier, users must have knowledge of how the primary components are interacting, and keep in mind the FVS processing sequence, to avoid confounding multiplier effects and creating unrealistic simulations. When used correctly, however, they provide a powerful tool for creating accurate simulations for a particular stand.

The following discussion applies to most variants and illustrates considerations that must be taken into account in using multipliers of this fourth type. Users should consult the overview document for their particular variant to see what other factors, if any, they should consider.

* In the small-tree model, height growth is predicted first, and diameter growth is predicted from small-tree height growth. Therefore, the small-tree height growth multiplier (REGHMULT) will affect BOTH height and diameter growth for small trees.
* Following the same logic, the small-tree diameter growth multiplier (REGDMULT) will only affect diameter growth for small trees.
* In the large-tree model, diameter growth is predicted first, and height growth is predicted from diameter growth (and other factors). Therefore, the large-tree diameter growth multiplier (BAIMULT) will affect both diameter growth and height growth for large trees.
* Large-tree diameter growth is not a function of height or height growth. The large-tree height growth multiplier (HTGMULT) will only affect large-tree height growth.
* Since large-tree height growth is weighted with small-tree height growth for some portion of the diameter range (see section 6.5.1), REGHMULT and HTGMULT could both potentially affect some trees.
* Since the FIXDG and FIXHTG multipliers are applied after all other growth calculations, they have no effect on each other.
* Crown ratio is affected by both diameter and height. Therefore multipliers on either diameter growth or height growth will affect crown change. Conversely, crown ratio is a predictor variable in some diameter growth and some height growth equations. Therefore, a crown change multiplier (CRNMULT) may affect diameter and/or height growth, but only in subsequent cycles.
* Mortality is a function of diameter. Therefore, multipliers that affect diameter growth (BAIMULT, REGDMULT, FIXDG) also affect mortality. Mortality is not a function of height, so height growth multipliers will not affect mortality. Conversely, diameter and/or height growth can be affected by stand density. Therefore, a mortality multiplier (MORTMULT or FIXMORT) will affect diameter and height growth estimates in subsequent cycles.
* The effects of a fertilizer treatment are accounted for after all growth and mortality have been predicted. So the FERTILIZ keyword will only affect mortality in subsequent cycles.

Considerations, like these, must go into using the fourth type of multipliers. While the set of multipliers needed in any given situation may be unique, some generalizations can be made. When the objective is to simulate a factor that changes overall growth rate, such as fertilization, multipliers needed would probably include a small-tree height growth multiplier, a large-tree height growth multiplier applied only to trees less than the break point diameter discussed for diameter growth (those larger trees still being grown by the height-growth-driven small-tree model), and a large-tree diameter growth multiplier. This set of multipliers would change overall growth rates for all trees while maintaining the height/diameter relationships built into the model. If the objective was to also change this height/diameter ratio, then either a diameter growth multiplier for small trees and/or a height growth multiplier for large trees could be added to the above set. Users should be careful using both a height growth multiplier and a large-tree diameter growth multiplier to simulate a treatment that is expected to increase both height increment and diameter increment. Increases in both diameter growth and height growth can be simulated by applying EITHER a height increment multiplier for small trees OR a diameter growth multiplier for large trees. Both are used together only when the height/diameter ratio needs to be adjusted. Users should consult Hamilton (1994) for more information about the use of multipliers within FVS.

There is an additional method by which the mortality predictions can be modified. One component of the mortality model is an estimate of maximum basal area attainable on each habitat type, or an estimate of the maximum Stand Density Index attainable on the site. These estimates can be replaced for a projection by using the BAMAX or SDIMAX keyword records.

These options have proven to be useful when applying an FVS variant outside of the geographic range for which it was fit. For example, grand fir stands in the Blue Mountains of northeastern Oregon exhibit growth rates that are similar to rates experienced on grand fir habitat types in northern Idaho. However, the stands in the Blue Mountains do not appear to attain the stand densities that are possible in the Inland Empire. A maximum basal area can be entered to account for this difference. Mortality predictions will then assure that the maximum is not ex­ceeded, but growth rates will be unaffected.

### 6.5.3 How to Determine Multiplier Values

One possibility for extending the effective range of a Forest Vegetation Simulator variant is to use the scale factors as a means of calibration. If a representative inventory of stands from a new area is available with increment data, the stands can be projected with the variant for a single cycle to generate scale factors. If there is a consistent bias in the scale factors for any species, the average value of the scale factors for that species can be entered into the Forest Vegetation Simulator in subsequent runs, and the model will be adjusted accordingly prior to scaling. In effect, the average scale factor becomes a new estimate of the model intercept.

The FVS system contains features to help users calculate suitable multiplier values. Generally, this is a six-step process. First, insert the CALBSTAT keyword into the keyword set for each stand in the area and process the stands. This will generate the auxiliary file discussed in section 4.3.3.3. Second, examine the values in this file and determine the source of any values that seem extremely high or low. Errors in the data input records or the keyword parameters could be the cause. Third, for any stands with unresolved sources of error, or with calibration values that are not reflective of the area, remove the CALBSTAT keyword. Fourth, rerun the set of stands. Fifth, run the Calibration Statistics post-processing program to determine the average large-tree diameter growth scale factor and the average small-tree height growth scale factor for the area. Sixth, if these average scale factor values are different from 1.0, enter these values as multipliers using the READCORD, READCORR, and READCORH keywords described above, and rerun the set of stands.

While this might sound like a laborious process, the FVS GUI programs make the changes to the keyword record files, processing the runs, and linkage to the Calibration Statistics very easy. The time consuming part of this task occurs if many data errors need to be resolved. If the data are clean, and the keyword records are properly parameterized, this process is quite painless.

### 6.5.4 Reusing Multiplier Values in Multi-stand Projections

Scale factors that are entered as multipliers in the above manner can be used in subsequent projections in the same run stream without being reentered. The multipliers are entered in the first stand in the run. In subsequent stands, the REUSCORD, REUSCORR, and/or REUSCORH keyword records, respectively, are inserted for stands in which the scale factors are to be reused. These keywords contain no parameter fields or supplemental data records. This is a valuable feature when making changes using a system editor and making runs in a DOS mode. However, when using an FVS GUI program, it is easier and more straightforward to duplicate the multiplier keywords for each stand.

### 6.5.5 Setting Morphological Limits for Maximum Tree Size

Sometimes projected tree diameters or heights may exceed those observed in the field. This can occur in unusually long simulations, in cases where multipliers are inappropriately applied, when input site productivity measures such as site index are out of line, and for a variety of other reasons. These are all cases where setting morphological limits for maximum tree diameter and height can keep the projected tree sizes within reasonable limits.

In other cases, users may want to model tree senescence. FVS does not consider tree age when calculating mortality estimates. Tree diameter can be used as a surrogate for age to invoke a specified mortality rate for large (old) trees. This might be especially important in long projections commonly done for forest planning.

Morphological maximum diameter and height, senescence mortality rate, and whether the specified diameter is for use as a morphological maximum, or a trigger to invoke senescence mortality, or both, can all be entered using the TREESZCP keyword record. These values can be set for individual species, species groups, or all species. They are set once for the projection and cannot be changed within a projection.

When morphological size limits are invoked, diameter growth or height growth will be greatly reduced for individual trees in the simulation that exceed the specified diameter or height, respectively. This keeps the tree heights and diameters within reasonable limits. When using the specified diameter to model senescence mortality, if a tree’s diameter exceeds the specified diameter the predicted mortality rate is compared to the specified mortality rate and the higher mortality rate is used. This gives users the ability to phase larger (older) trees out of the simulation.

## 6.6 Defining and Using Policy Labels

Using management policy labels provides an easy and quick way to switch between different management actions in analyzing alternatives for a single stand, or to switch between different management actions for different stands in a multi-stand simulation. In this section, the focus is on understanding how to define policy labels and what policy labeling can do.

### 6.6.1 The Activity Group Policy Label

A management policy can be expressed by stating the management actions that will be taken if, and when, a specific situation exists. An event (or logical expression that states the circumstances for treatment) and the management activities triggered by that event, taken together, may be viewed as a management rule. One or more rules may be considered a management policy state­ment.

A management policy statement is composed of three elements. The first two elements described above can be recognized as a basic event monitor sequence (see section 5.5.1). The third element is the name of the management policy that the management rule should be associated with. This is accomplished by including the AGPLABEL keyword record, along with its associated supplemental record(s) containing the management policy name(s), as part of the activity set immediately following the THEN and before the activity to be scheduled.

For example, assume the variant being used does not have a full establishment model and regeneration of non-sprouting species needs to be explicitly specified. A possible management policy statement might be: if a harvest occurs that removes between 20 and 50 percent of the basal area, then plant 220 Engelmann spruce per acre, and label this policy “SHELTERWOOD”. The following FVS keyword sequence reflects this management policy:

IF

CUT EQ 1.0 AND (BBA-ABA)/BBA LT 0.8 AND (BBA-ABA)/BBA GT 0.5

THEN

AGPLABEL

SHELTERWOOD

ESTAB

PLANT 0.0 ES 220.

END

ENDIF

The label (e.g., SHELTERWOOD) is called an activity group label set because more than one name may be associated with the activity group.Each label must be separated by one comma and the total number of characters for all policies may not exceed 100, including commas. An ampersand (&) indicates the list is continued on the next record. Sequences of more than one blank are converted to one blank and lower-case letters may be used. Any character may be used as part of the label except com­mas, periods, and ampersands.

A condition described with a logical expression combined with a set of activities is considered a rule of stand management. One or more rules may be used to de­fine a stand management policy. Two or more rules can be related to one stand management policy by labeling them with the same label.

For example, assume a stand management policy states: for stands with more than 200 square feet of basal area in spruce, commercially thin them using group selection; clearcut 25 percent of the stand, and leave 70 percent of existing basal area in the remaining 75 percent of the stand; establish 360 trees/acre in the clearcut patches, and assume no regeneration in the remaining stand; there will be no re-entry and thinning will be from below to the target basal area; label this management policy “GROUPSELECT”. Although this could be defined with one rule, it is illustrated with two rules linked together via the activity group policy label.

IF 999

SPMCDBH(2,ES,0) GT 200

THEN

THINBBA 0 PARMS(SPMCDBH(2,0,0)\*0.525, &

1.,0.,999.,0.,999.)

AGPLABEL

GROUPSELECT

ENDIF

IF

CUT EQ 1.0

THEN

ESTAB

PLANT 0.0 ES 90. *~~b~~* *~~b~~* 2.

END

AGPLABEL

GROUPSELECT

ENDIF

The first part of this keyword set pertains to the thinning specification. The “999” on the IF keyword indicates that once the condition is true and the activity is simulated, FVS should not consider this activity again for 999 years. This invokes the no re-entry part of the management policy. The SPMCDBH(2,ES,0) returns the basal area in Engelmann spruce and illustrates how functions can be used in condition statements. The target basal area on the thinning request illustrates how functions and variables can be used in a PARMS statement. In this case, the basal area left in the stand will be 70 percent of the basal area on 75 percent of the area (0.70 \* 0.75 = 0.525; SPMCDBH(2,0,0) returns the total basal area in the stand and the Event Monitor variable BBA could have been used instead). This is the correct residual basal area, but FVS assumes it is spread throughout the stand rather than in clearcut and thinned groups. However, it’s the best portrayal of group selection that FVS can currently provide.

The second part of this keyword set pertains to the establishment of seedlings. The variable CUT in the condition statement is a pre-defined Event Monitor variable that has a value of 1 if a harvest occurred and a value of 0 otherwise. The 90 seedlings being established corresponds to 360 trees/acre and only one-quarter acre planted (360/4 = 90). Again FVS will assume these seedlings are scattered throughout the stand, however the last parameter on the PLANT keyword record specifies that more of the seedlings are planted on the points with fewer residual trees.

Both activity groups contain the same activity group policy label. So both will apply to any stand containing a matching stand policy label. Which brings us to the second part of understanding policy labeling, the Stand Policy Label.

### 6.6.2 The Stand Policy Label

A Stand Policy Label setis a list of policies that apply to the stand and it is entered using the SPLABEL keyword. An activity group will not be scheduled if its label set and the stand’s label set do not contain a common member. The stand policy label(s) are entered on a supplemental record(s), just as with the activity group policy label. Each label must be separated by one comma and the total number of characters for all labels may not exceed 100 including commas.

For example, expanding on examples shown previously, assume the Central Rockies variant is being used and the stand management policy is as follows:

For stands with at least 200 square feet of basal area in spruce, commercially thin them using group selection; clearcut 25 percent of the stand, and leave 75 percent of existing basal area in the remaining 75 percent of the stand; establish 360 trees/acre in the clearcut patches, and assume no regeneration in the remaining stand; there will be no re-entry and thinning will be from below to the target basal area; label this management policy “GROUPSELECT”. Furthermore, for stands with more than 100 but less than 200 square feet of basal area in spruce, commercially thin them using a uniform shelterwood cut from below, leaving 70 percent of existing basal area; no re-entry; and establish 220 Engelmann spruce per acre; label this management policy “SHELTERWOOD”.

To simulate this stand management policy, the following keyword set is developed:

INVYEAR 2001.

STDINFO 204. 138.

MODTYPE 4.

DESIGN 0. 1.0 999. 4. 0.

SITECODE ES 85.

NUMCYCLE 10.

COMPUTE 0.

ESBA = SPMCDBH(2,ES,0)

CUTTYPE = 0

END

\*

\* shelterwood thinning specification

\*

IF 999.

ESBA GT 100 AND ESBA LT 200

THEN

THINBBA 0. PARMS(BBA\*0.7,1.,0.,999.,0.,999.)

COMPUTE 0.

CUTTYPE = 1

END

AGPLABEL

SHELTERWOOD

ENDIF

\*

\*shelterwood establishment specification

\*

IF

CUT EQ 1.0 AND CUTTYPE EQ 1

THEN

ESTAB

PLANT 0.0 ES 220.

END

AGPLABEL

SHELTERWOOD

ENDIF

\*

\* group selection thinning specification

\*

IF 999.

ESBA GE 200

THEN

THINBBA 0. PARMS(BBA\*0.525,1.,0.,999.,0.,999.)

COMPUTE 0.

CUTTYPE = 2

END

AGPLABEL

GROUPSELECT

ENDIF

\*

\* group selection establishment specification

\*

IF

CUT EQ 1.0 AND CUTTYPE EQ 2

THEN

ESTAB

PLANT 0.0 ES 90.

END

AGPLABEL

GROUPSELECT

ENDIF

\*

\* stand policy label specification

\*

SPLABEL

GROUPSELECT

\*

PROCESS

STOP

This keyword set is similar to ones presented previously in this section, but there are a few differences. The user-defined variable ESBA is defined using a compute statement and subsequently used in the condition statements. The pre-defined event monitor variable BBA is used in the PARMS statements. The variable CUTTYPE will have a value of 1 if a shelterwood thinning was done, a value of 2 if a group selection thinning was done, and a value of 0 otherwise. The keyword set is annotated and separated into logical blocks using comment records beginning with the “\*” character.

The important thing to notice, however, is the inclusion of the SPLABEL keyword and the stand policy label “GROUPSELECT”. When this simulation is run, only the two activity groups labeled with the “GROUPSELECT” activity group policy labels will be considered by FVS. The two activity groups labeled with the “SHELTERWOOD” activity group policy labels will not be considered in this simulation. By simply changing the supplemental record for the stand policy label from “GROUPSELECT” to “SHELTERWOOD”, the opposite would be true. The activity groups labeled with “SHELTERWOOD” would be considered, and the two labeled with “GROUPSELECT” would not. This gives users an easy way to evaluate different management alternatives for a stand, using a single keyword set. In addition, if the supplemental record is changed to include both policy labels,

SPLABEL

GROUPSELECT, SHELTERWOOD

then all four activity groups are considered in the simulation. In this case, the appropriate treatment gets applied depending on the basal area of Engelmann spruce in the stand. It is under this scenario that the variable CUTTYPE comes into play to determine how much regeneration to bring into the stand. Consider what would happen if the condition on the two establishment activity groups were simply “CUT EQ 1” instead of “CUT EQ 1 AND CUTTYPE EQ x”. The first regeneration activity group is labeled with the activity group label “SHELTERWOOD”, and the second with “GROUPSELECT”. Because the stand policy label set contains both activity group policy labels, both regeneration activity groups would be triggered because the value of the variable CUT would be 1 regardless of which type of thinning occurred. This would result in too much regeneration being simulated (e.g., 220 + 90 = 310 trees/acre).

Users need to be aware of a few more rules regarding policy labeling.

1. If more than one SPLABEL set is specified for a stand, or if more than one AGPLABEL set is specified for a single activity group, the sets specified last will be used and the others will be ignored.
2. If no SPLABEL set is specified, the default stand policy label set is the union over all of the activity group policy label sets.
3. The SPLABEL set is assigned to activity groups where no AGPLABEL is defined.
4. If no SPLABEL and no AGPLABEL keywords are used in the run, then the model uses none of the logic associated with the labeling scheme.

Policy labeling is most useful when including several stands in a simulation. Management policies can be developed for any number of different situations, and descriptive activity group policy labels can be included. Any particular management policy is considered only for those stands that have a stand policy label in common with the specified activity group policy label(s).

Policy labeling can be very useful in evaluating different management alternatives for a single stand using a single keyword set (as shown in the example keyword set in this section), or for running groups of stands such as all stands in a watershed.

### 6.6.3 How to Enter Policy Labels Using an FVS GUI

The FVS GUI program automatically builds the SPLABEL keyword records using the grouping codes specified in the stand-level data in the input database (Crookston et al. 2003). All grouping codes specified for a stand are added to the Stand Policy Label set for that stand.

The FVS GUI program does not automatically build the AGPLABEL keyword records, so if needed they must be entered by the user. Users can build them using the “free form editor” option when selecting keywords, or they can build them external to the GUI as part of an addfile which is subsequently included in a simulation.

## 6.7 Simulating the Effects of Climate Change

Climate is constantly changing; vegetation is constantly changing in response to climatic changes. These changes may be as subtle as an increase or decrease in site potential for a species, or as dramatic as the site becoming unsuitable for a species currently present and suitable for a species currently not present. Genetic variation is also an important consideration when considering how a particular genotype will react in response to climatic changes.

An extension was developed to make FVS more sensitive to climatic changes (see section 8.9). But there are ways to simulate the effects of climate change through base model keywords as well.

### 6.7.1 Changing the Site Potential Through Time

In traditional growth modeling, site potential is assumed to be constant. Climate change research indicates that this tenet may not be true. Indicators like site index and habitat type or some other measure of potential vegetation, integrate climatic and genetic factors for a given site. Short of having equations fit with climatic variables replacing these integrating parameters, changing the integrating parameters through time can give users some indication of potential climatic effects. In FVS, users can change site index or the potential vegetation measure through time using the SETSITE keyword record. The variant overview document should be referenced to determine which of these site potential parameters are being used for a particular variant. Site index values may be changed for individual species or species groups.

### 6.7.2 Changing Mortality and Growth Rates

Climate change may affect mortality rates differently for different species in different locations. The same is true for mortality rates. In FVS, users can change mortality rates through time for specific species or species groups using the FIXMORT keyword record. There are several keywords that can be used to change growth rates through time. Refer to section 6.5.2.4 for a discussion of all the keywords that can be used for these purposes.

# 7.0 Internal Model Components

*Primary technical references for this section: Stage 1973; Wykoff et al. 1982; Wykoff et al. 1990; Hamilton and Edwards 1976; Hamilton 1986*

Information presented in previous sections of this manual will enable users to prepare input and keyword sets for a Forest Vegetation Simulator projection and interpret the resulting output. The FVS Model is a set of mathematical models that represent tree and stand development. A basic understanding of these models is essential to effective program use. For this reason, this section contains a description of important equations and operations that lead to each stand projection. Upon completion of this section, Users should:

* Know what missing data values are filled in.
* Have a basic understanding of the self-calibration feature of FVS.
* Have a basic understanding of the large-tree diameter increment model.
* Have a basic understanding of the small-tree height increment model.
* Have a basic understanding of the mortality model.
* Have a basic understanding of the crown change model.
* Know more about the volume calculations.
* Know what serial correlation does in the large-tree diameter growth model.
* Know what tree record compression is all about.

The first part of this section concerns the initiation of a projection. First FVS reads and interprets any user instructions and all inventory records. Before the actual projection can begin, however, several housekeeping chores must be performed.

## 7.1 Backdating the Stand

The FVS Model uses a forward-projection technique. The predictions of growth are dependent on the tree and stand conditions at the start of the growth period. In addition, FVS needs to calibrate certain growth equations to match stand conditions. As a result, FVS backdates the stand by subtracting growth and adding in recent mortality to obtain a representation of stand and tree conditions at a point in the past. FVS then projects the stand forward and compares the projected stand with the existing stand to calibrate the growth relationships.

### 7.1.1 Backdating Diameters

When current diameter breast height (DBH) and past periodic increment (DG) are entered, diameters must be backdated before growth models are calibrated. FVS assumes that DBH is measured outside bark while diameter increment is measured inside bark. In order to backdate diameters properly, an adjustment of the form of equation {7.1.1} is made to correct for bark growth (Monserud 1979).

{7.1.1} *DBH*0 = *DBH* – *k* ∙ *DG*

where *DBH*0 is the diameter outside bark at the start of the growth period, *DG* is diameter increment inside bark, and *k* is a species-specific bark growth adjustment factor. The value of *k* is species and variant dependent, and usually a function of tree diameter and sometimes height. Values of *k*, or equations to predict *k*, are given in the variant overview document. Note that *k* = 1/*BRATIO,* where *BRATIO* the bark ratio.

Stand density statistics are compiled using tree diameters and, therefore, all diameters must be backdated even though increments are not measured on all trees. In order to backdate trees without measured diameter increments, FVS computes the basal area ratio using equation {7.1.2} for all trees with measured increments.

{7.1.2} ![](data:image/x-wmf;base64...)

The values of *BAR* are averaged by species, and equation {7.1.3} is used to apply the average ratios to trees with missing increments.

{7.1.3} ![](data:image/x-wmf;base64...)

When none of the trees for a species have measured increments, *BAR* is assumed to be equal to 1.0.

### 7.1.2 Stand Density Statistics

Three stand density descriptors are used by the FVS Model. These descriptors are basal area per acre, crown competition factor (CCF) and the basal area percentile distribution. Before density statistics can be computed, the number of trees per acre (PROB) associated with each tree record must be determined. PROB is a function of tree DBH and the sampling design parameters (see section 4.1.2.3). Equation {7.1.2.1} is used for fixed area plots.

{7.1.2.1} ![](data:image/x-wmf;base64...)

Equation {7.1.2.2} is used for variable radius plots.

{7.1.2.2} ![](data:image/x-wmf;base64...)

where:

*N* is number of sample plots in the stand

*A* is area of a sample plot (acre)

*BAF* is basal area factor for horizontal angle gauge (ft2/acre/tree)

*DBH* is tree diameter at breast height

When the density statistics are backdated, the PROBs for recent mortality records (tree history codes 6 and 7) are multiplied by the ratio of diameter increment measurement period length to mortality observation period length. Periodic growth of recent mortality records is as­sumed to be zero. These records will be deleted from the tree record file when program ini­tialization is completed.

To compute basal area per acre, FVS simply sums the product of trees per acre and tree basal area across all tree records. Basal area per acre is computed for the entire stand and for each inventory point. Some growth functions are dependent on point basal area rather than stand basal area.

Crown competition factor (Krajicek et al. 1961) is a relative measurement of stand density that is also based on tree diameters. Tree values of CCF estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open grown. Stand CCF is the summation of individual tree (CCFi) values. A value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand. CCF is also computed for the entire stand and for each inventory point since some growth equations use point CCF as a dependent variable. CCF equations and coefficients are species and variant specific. These are shown in the variant overview document.

The basal area percentile distribution is a measure of the relative size of the trees in the stand (Stage 1973). It indicates the competitive status of each tree to some extent. The basal area percentile rank of a tree (PCT) is the percentage of total stand basal area repre­sented by that tree and all trees that are the same size or smaller. The largest tree in the stand has a PCT of 100 and successively smaller trees have successively smaller rankings. All trees must have PCT greater than zero.

The percentile value is used in calculating variables representing the amount of basal area in the stand, or on the point, in trees larger than the subject tree. These variables represent a measure of competition and social position, and are important in predicting tree growth.

### 7.1.3 Filling In Missing Data Values

Tree heights and crown ratios may be sub-sampled in the input data. When this is the case, FVS will fill in the missing values with estimated values.

#### 7.1.3.1 Filling in Missing Heights

When tree heights are missing, a height-diameter function is used to estimate the missing values. This function is also used in most variants to estimate diameter growth on trees smaller than some threshold diameter (see section 6.5.1). In most variants, the height-diameter relationship can be calibrated to the input data, for any given species, if the data contains enough height measurements for that species. In some variants, the default condition is that automatic calibration of the height-diameter relationship is turned “off”; in other variants the default condition has automatic calibration of this relationship turned “on”. The default condition has to do with how reliable the default equations are across a broad range of site conditions. The variant overview document should list the default for the variant being used.

In some instances, the user will want to either turn this feature on, or off. Calibration of the height-diameter equation in variants having this feature can be turned off, or on, using the NOHTDREG keyword. This feature can be toggled off or on for individual species, all species, or all species contained in a species group, in a run.

Several equation forms are used for default height-diameter functions in various variants. The variant overview document should contain a description of equations used in the particular variant of interest. In addition to the default equations, variants that allow automatic calibration of the height-diameter function contain the logistic functional form:

![](data:image/x-wmf;base64...)

where C0 and C1 are species-dependent constants for the individual variant. This equation form is used if FVS is calibrating the height-diameter function. In this case, when there are three or more tree records for a species with measured heights and undamaged tops, the C0 coefficient for the height-diameter model for that species are estimated from the input data. Three trees are an adequate sample only if the trees are undamaged and they represent the en­tire diameter range in the stand. More than three is strongly encouraged.

#### 7.1.3.2 Filling in Missing Crown Ratios

Methods used to estimate crown ratios that are missing from the input data are different depending on the variant being used and tree diameter. Two types of methods are used. One method estimates missing crown ratios as a function of stand and tree variables such as habitat type, diameter, basal area, height, percentile in the basal area distribution, or crown competition factor. The second assigns crown ratios from a Weibull distribution whose parameters are estimated from relative Stand Density Index and other variables. Some variants use a combination of these methods depending on tree diameter. Equations used for trees 3 inches in diameter, and larger, are part of the algorithm used to predict change in crown ratio and will be discussed in more detail in section 7.4. However, in most variants, equations for trees less than 3 inches in diameter are different from those used for the larger trees. The variant overview document should be consulted for specific equations, coefficients, and sizes of trees the method applies to.

## 7.2 Calculation of Scale Factors

When periodic increment data are provided to the FVS Model, the imbedded incre­ment models will be adjusted to reflect local conditions. Both the large-tree diameter increment model and the small-tree height increment model may be calibrated. In both cases, the calibration factor is a multiplier that is a weighted average between the median ratio of observed to predicted values and 1.0. The weight is dependent on how closely the variation in the resid­uals for the stand being calibrated matches the variation in the residuals for the data used to build the model (Stage 1973, 1981). If the calculated scale factor for a species is outside the range (0.08 – 12.18), then an error message is printed to the main output file and calibration of the appropriate growth model is turned off for that species. A value outside this range corresponds to a calculated scale factor that is more than 2.5 standard deviations away from the expected mean calibration value for that species and is usually indicative of some problem with the growth measurements in the tree input data.

### 7.2.1 The Large-tree Diameter Increment Model

Predicting increments in the dimensions of the trees that comprise the stand simulates stand development. The first and most important prediction is large-tree diameter increment. All facets of predicted tree development are dependent in part on diameter or diameter increment. The behavior of the FVS Model as a whole is, therefore, strongly influ­enced by the behavior of the diameter increment model and the subsequent use of DBHand diameter increment in the prediction of other tree attributes. The following discussion points out some desirable attributes of the large-tree diameter increment model.

Actually, in most variants, FVS does not predict diameter increment. Rather, it derives diameter increment from predicted periodic change in squared inside-bark diameter (dds) (Stage 1973; Cole and Stage 1972):

{7.2.1.1} *dds* = (*dib* + *DG*)2 – *dib*2
 = 2 ∙ *dib* ∙ *DG* + *DG*2

where:

*DG* is periodic increment in inside bark diameter

*dib* is inside bark diameter at the beginning of the growth period.

*dib* = (1 / *k*) ∙ *DBH*; where *k* is a species dependent bark adjustment factor

Equation {7.2.1.1} can be rearranged to become equation {7.2.1.2} to calculate diameter increment.
{7.2.1.2} ![](data:image/x-wmf;base64...)

The choice of dependent variable is a matter of sta­tistical convenience: the trend in ln(dds) relative to ln(DBH) is linear and the residuals on this scale have a nearly homogeneous variance. These conclusions are based on hundreds of thousands of data points and are consistent across many species represented in western variants and the southern variant.

In variants where diameter increment is predicted directly, the estimate of diameter increment is converted to a dds scale to keep other parts of the FVS system consistent across all variants.

In most variants, the diameter increment model is specified something like equation {7.2.1.3} (Wykoff 1990).

{7.2.1.3} ![](data:image/x-wmf;base64...)

where:

*HAB* is a constant dependent on habitat type, plant association, or site index

*LOC* is a constant dependent on location (National Forest, Indian Reservation, BLM Administrative Unit, etc.)

*ASP* is stand aspect

*SL* is stand slope ratio (percent / 100)

*EL* is stand elevation (usually in hundreds of feet)

*CCF* is stand crown competition factor

*CR* is ratio of crown length to total tree height

*BAL* is total basal area per acre in trees that are larger than the subject tree

*b*1-*b*12 are regression coefficients dependent on species and/or location

Other variables, such as point CCF or point BAL, may appear in the equation in some variants. The variant overview document will contain the equation specification and coefficient values particular to the variant being used.

Site factors are included in the model in two general ways. The effects of habitat type and location are readily observed but difficult to quantify. These effects are included in the model by varying intercepts. Slope, aspect, and elevation are treated as continuous variables.

The location intercepts are generally developed by first estimating coefficients for each National Forest, or administrative unit. National Forests and other administrative units that have statistically similar coefficients are then grouped into location classes. This same procedure is repeated to group habitat types into habitat classes. As a result, when moving from one administrative unit or vegetation type to another, there is a discrete shift in the incre­ment function.

A modification of Stage’s (1976) transformation to incorporate aspect and slope as a continuous circular effect is used. The modification is the addition of a slope-squared term that allows optimum growth to occur at other than infinite or level slopes. The optimal aspect varies by species. Most species grow better on south facing moderate slopes. Mod­erate slopes tend to be well drained with adequate soil, and the growing season is longer on the warmer southern exposures.

Elevation is also transformed so that an optimum is possible. That optimum normally oc­curs at an elevation that is in the middle of the range for a species. Although the optimal level of most predictor variables is within the range of species occurrence, the effects are independently estimated, and there is no guarantee that there exists a site at which all predictor variables are at their optimum level. For example, optimum growth of western redcedar in the Inland Empire variant is expected on a south aspect, 90 percent slope at an elevation of 2300 feet in a cedar/devil’s club (code = 550) habitat type in the Nezperce or Clearwater National Forests. This combination of site factors would be difficult, if not im­possible to find.

Within FVS, errors are propagated from a normal distribution on the log scale and then converted to real scale. Therefore, a log bias correction is not needed. Its application would, in fact, be incorrect and lead to large over predictions of growth over time (Wykoff 2010).

So far, features of the model over which we have no control have been described. Through management, stand density and the distribution of trees among size classes can be adjusted, and the development of crowns can be influenced. Trees with large crowns and trees in dominant crown positions will grow more rapidly than subordinate trees with smaller crowns. As stand density increases, the growth rates of all trees will be suppressed. If a stand is thinned by removing the smaller stems, the diameter increment of the residual stems will increase in proportion to the reduction in stand density. Over the long run, the residual trees will have larger crowns, which will enhance future development. If the larger trees are removed, the residual trees will respond with yet faster growth rates because we have improved their position in the canopy.

To this point, the growth model has been examined in two- or three-dimensional space. This viewpoint has made it easy to see the influence of a given variable on tree growth. However, this simplistic view can be misleading. Most forest stands are a com­plex of species and size classes. Within this complex, any change in one of the variables used to predict growth will usually be associated with changes in one or more of the other predic­tor variables.

Within a stand, at any point in time, the largest diameter increment attained by any tree of a given species is likely to be attained by the largest tree of the species. The growth rate of a suppressed tree culminates at a smaller diameter, than does the growth rate of a dominant tree. In a relatively even-aged stand, however, culmination of all trees of a species will occur at about the same time. As a result, at any time, the relationship between diameter incre­ment and diameter is monotonic or sigmoid increasing, with slope depending on stand density. Through time, this relationship flattens and its maximum decreases.

### 7.2.2 The Small-tree Height Increment Model

For smaller sized trees it is difficult to sample for periodic diameter increment. There may be less than 10 years’ growth at breast height, and removal of an increment core could severely damage the tree. However, with many species counting whorls and measuring internodes can estimate height increments for small trees for periods up to 5 years. This is a common inventory procedure.

Height growth for small trees is a driving force in tree development as they compete for light and vertical growing space. Because of this, the small-tree portion of the Forest Vegetation Simulator is a height growth driven model. That is to say, for small trees less than some threshold diameter (see section 6.5.1) height growth is estimated first, and diameter growth is predicted from height growth.

Because the small-tree height increments can be measured with relative ease, and because the height growth equation is so influential in the development of small trees, FVS includes a calibration procedure for the small-tree height increment model. This procedure is analogous to the procedure used in the large-tree diameter increment model. The median residual between observed and predicted height increments is computed on the logarith­mic scale and incorporated in the prediction equation as an additional intercept term.

Equations used to predict small-tree height increment vary by species and variant. However, they are usually dependent on factors such as site characteristics, stand density, social position, and crown ratio. The variant overview document contains equations and coefficients particular to the variant being used.

The difficulty with this approach centers on the choice of a break point diameter at which the switch is made from a height growth driven small-tree model to a diameter growth driven large-tree model. This is best illustrated by discussing experiences developing the North Idaho variant. Stage (1975) developed a periodic height increment model based on the differential of the allometric relationship between height (HT) and diameter (DBH). Periodic (10-year) height increment (HTG1) is predicted as a function of HT, DBH, 10-year DBH increment (DG), species, and habitat type.

A series of modifications were implemented in the basic model to force height increment to slow down in very tall trees even though diameter increment may still be quite substantial. In the modified form shown in equation {7.2.2.1}, coefficients of the DG and HT2 terms are dependent on habitat type and coefficients of the DBH term are dependent on species.

{7.2.2.1} ln(*HTG*1) = *HAB* + *SPP* + *b*1 ∙ ln(*HT*) + *b*2 ∙ ln(*DBH*) + *b*3 ∙ ln(*DG*) +
*b*4 ∙ *HT*2

where:

*HAB* is a constant dependent on habitat type

*SPP* is a constant dependent on species

*b*1-*b*4 are regression slope coefficients dependent on species and/or habitat

In Stage’s height increment model, many of the effects related to site characteristics and stand conditions are indirectly represented in the diameter increment term. In addition, Stage’s model was applicable to all sizes of trees, and is used for large-tree height growth estimation in the North Idaho variant.

Subsequently, the independent model shown in equation {7.2.2.2} was developed by Wykoff et al. (1982) to predict periodic (5-year) height increment (*HTG*2) for small trees. This model has explicit site and stand density vari­ables and no diameter increment term.

{7.2.2.2} ln(*HTG*2) = *LOC* + *HAB* + *SPP* + *b*1 ∙ ln(*HT*) + *b*2 ∙ *CCF* + *b*3 ∙ SL ∙ cos(*ASP*) + *b*4 ∙ *SL* ∙ sin(*ASP*) + *b*5 ∙ *SL*

where:

*HAB* is a constant dependent on habitat type, plant association, or site index

*LOC* is a constant dependent on location code (National Forest)

*SPP* is a constant dependent on species

*ASP* is stand aspect

*SL* is stand slope ratio (percent / 100)

*CCF* is stand crown competition factor

*b*1-*b*5 are regression slope coefficients dependent on species and/or location

With two independent models to predict the same attribute (height growth of the small trees), they were unable to find a suitable tree size for transition between models. Regardless of the diameter chosen as a breakpoint, a discontinuity in the response surface existed.

This problem was resolved by using a simple switching function. For trees with DBH less than a threshold diameter, the height increment prediction is based entirely on the small-tree model; for trees with DBH greater than a second threshold diameter, the prediction is based entirely on the large-tree model. If DBH is between the two threshold diameters, the two estimates are combined using equations {7.2.2.3} and {7.2.2.4}, with the large-tree prediction (*HTG*1) being given weight of *HWT*, and the small-tree prediction (*HTG*2) being given a weight of (l-*HWT*).

{7.2.2.3} *HTG = HWT* ∙ *HTG1 + (1 - HWT)* ∙ *HTG2*

{7.2.2.4} *HWT* = (*treeDBH - lowerDBH)/(upperDBH - lowerDBH)*

where:

*lowerDBH* is the lower threshold diameter

*upperDBH* is the upper threshold diameter

*treeDBH* is the tree’s diameter at breast height

Examining the composite behavior of the model reveals that the height incre­ment curve increases rapidly to a maximum at 3 to 5 inches DBH and then gradually decreases, much in the fashion of the classical increment curve (Assmann 1970). The ef­fect of increasing density is to suppress height increment—directly through the CCF term in the small-tree model, indirectly through the DG term in the large-tree model.

In an undisturbed even-aged stand, the height and diameter increment models work together to produce increasingly flattened height-diameter curves over time.

## 7.3 Predicting Mortality Rates

The Forest Vegetation Simulator base model mortality predictions are intended to reflect background or nor­mal mortality rates. Increases in mortality from insects, pathogens, and fire are accounted for in the various FVS extensions (see section 8). Mortality from other causes, such as logging damage, animal damage, or wind events, needs to be simulated with FVS keywords. There are three types of mortality models used in FVS: (1) the original Prognosis type mortality model; (2) the Stand Density Index based mortality model; and (3) the TWIGS based mortality models.

### 7.3.1 The Prognosis Type Mortality Model

The Prognosis type mortality model is used in variants where there were enough inventory data suitable for developing the equations. Two independent equations are in­volved in the prediction. They are related with a weighting function.

#### 7.3.1.1 The Individual Tree Equation

The first part of the mortality rate estimate uses equation {7.3.1.1.1} (Wykoff 1986, Hamilton 1990) to predict annual mortality rate as a function of habitat type, species, diameter, diameter increment, estimated potential diameter increment, stand basal area, and relative diameter.

{7.3.1.1.1} ![](data:image/x-wmf;base64...)

where:

*Ra* is estimated annual mortality rate

*g* is periodic annual DBH increment for the previous growth period adjusted for difference in potential annual DBH increment by habitat type and administrative unit

*RDBH* is the ratio of tree DBH to the arithmetic mean stand DBH

*b*0-*b*6 are species-specific coefficients

*Ra* is multiplied by a factor based on Reineke’s (1933) Stand Density Index that accounts for expected differences in mortality rates on different habitat types and National Forests (Hamilton 1986). For purposes of this equation, diameter and diameter increment are bounded. If diameter is less than 0.5 inch, diameter is set to 0.5 inch; if diameter is less than 1 inch and diameter increment is less than 0.05 inch, diameter increment is set to 0.05 inch.

#### 7.3.1.2 Approach to Maximum Basal Area Equation

The second part of the mortality rate estimate uses equations {7.3.1.2.1} and {7.3.1.2.2}, which are dependent on the proximity of stand basal area to the assumed maximum for a site, and on the estimated rate of basal area increment. The rate estimate is designed to absorb an increasing proportion of gross stand basal area increment (*BAI*) as *BA* approaches a maximum (*BAMAX*). If *BA* is exactly equal to *BAMAX*, the rate estimate will be such that *BAI* is equal to zero. Estimation of the number of stems per acre 10 years hence (*SB*10) is an intermediate step in the rate calculation. As stand basal area approaches the maximum for the site, the value of *Rb* approaches 1.

{7.3.1.2.1} ![](data:image/x-wmf;base64...)

where:

*TB*10 is average basal area per tree 10 years in the future

= 0.005454154 ∙ (*QMD* + *G*10)2

(where (*G*10 is the estimated 10-year change in *QMD*)

Then,

{7.3.1.2.2} ![](data:image/x-wmf;base64...)

where:

*Rb* is the annual approach to maximum basal area mortality rate

*S*0 is current stocking in stems per acre

#### 7.3.1.3 Combining the Mortality Rate Estimates

Equation {7.3.1.3.1} is used to calculate the mortality rate actually applied to a tree record (*Rt*) as is a weighted average of *Ra* and *Rb*. The weights applied to the respective estimates are also dependent on the proximity of stand basal area to the maximum basal area for the site.

{7.3.1.3.1} *Rt* = *Rb* ∙ *W* + *Ra* ∙ (1-*W*)

where:

![](data:image/x-wmf;base64...)

#### 7.3.1.4 Model Behavior

When there are a relatively large number of small trees in the stand, the predicted mortal­ity rates for small trees are relatively high. The mortality rates predicted for large trees are unaffected by the number of trees in the stand. As stand basal area increases, however, mortality rates for all trees increase.

On the stand level, the effect of increasing density on mortality rates can be observed by comparing accretion and net total cubic foot volume increment. With all other fac­tors held constant (including time), accretion continues to increase, even at very high levels of stand basal area. As stand basal area approaches *BAMAX*, however, net volume incre­ment rapidly approaches zero.

### 7.3.2 The SDI-Based Mortality Model

The Stand Density Index (SDI) based mortality model (Dixon 1986, Johnson and Dixon 1986) is used in variants where there were not enough inventory data suitable for developing the Prognosis type mortality model, and no other suitable mortality model existed. The model has two steps. In the first step, the number of mortality trees is determined; in the second step, this mortality is dispersed to the individual tree records in FVS.

#### 7.3.2.1 Determining the Number of Mortality Trees

Three types of mortality are estimated: (1) background mortality, (2) density related mortality and (3) breakup of over mature stands. Density related mortality accounts for mortality in stands that are dense enough for competition to be the causal agent. Mortality associated with the breakup of over mature stands is mainly age related and is discussed in section 7.3.2.3. All other mortality is attributable to background mortality. (This discussion relates to base model mortality. Mortality caused by insects, pathogens, fire, or another disturbance agent is handled in FVS extensions or user supplied keyword record files.)

Background mortality gives way to density related mortality based on the relationship between current and maximum Stand Density Index. By default, density related mortality begins when the stand SDI is above 55 percent of maximum SDI, and stand density peaks at 85 percent of maximum SDI. These percentages can be adjusted using the SDIMAX keyword. Background mortality is used when current stand SDI is below 55 percent of maximum SDI. The 55 percent value is referred to as the lower limit of density related mortality, and the 85 percent value is the upper limit.

Users can set maximum SDI values for any species, species group, or all species with the SDIMAX keyword, or use the variants’ default values. The stand SDI maximum is calculated using equation {7.3.2.1.1} as a weighted average of the individual species SDI maximums. The weights are based on the basal area each individual species represents in the stand. The weighted maximum SDI is calculated each growth cycle, and mortality is determined based on the stands’ position relative to the maximum SDI. Over time, maximum SDI changes as the species mix in the stand changes.

{7.3.2.1.1} ![](data:image/x-wmf;base64...)

where:

*StndMaxSDI* is maximum SDI for the entire stand

*MaxSDI*i is maximum SDI for species *i*

*BA*i is total basal area of species *i*

*StndBA* is total basal area for the stand

There are two different methods that can be used to calculate SDI. The methods are based on the computation described by Reineke (1933) and Zeide (1983) respectively. The default method used to calculate the current stand SDI varies by Forest Service region. Regardless of the default method used, the SDICALC keyword can be used to request the alternative calculation.

In the Forest Service Pacific Northwest and Northern Regions, the default calculation of the current stand SDI is based on Reineke’s computation, however it is calculated on a tree-by-tree basis using equation {7.3.2.1.2} (Stage 1968).

{7.3.2.1.2} *SDI* = ∑(*a* ∙ *TPAi* + *b* ∙ *DBHi2* ∙ *TPAi*)

*a* = 10-1.605 ∙ (1 - 1.605/2) ∙ *QMD*1.605

*b* = 10-1.605 ∙ (1.605/2) ∙ *QMD*(1.605 - 2)

where:

*DBHi* is diameter at breast height of tree record *i*

*TPAi* is trees per acre of tree record *i*

*QMD* is the quadratic mean diameter for all trees in the stand

∑ is summation over all trees for which the contribution to SDI is being calculated. For stand SDI the summation is over all trees in the stand.

In all Forest Service regions other than the Pacific Northwest and Northern Regions, the default calculation of the current stand SDI is based on Zeide’s computation, however it is calculated on a tree-by-tree basis using equation {7.3.2.1.3} (Shaw 2000).

{7.3.2.1.3} *SDI* = ∑(*TPAi* ∙ (*DBHi*/10)1.605)

where:

*DBHi* is diameter at breast height of tree record *i*

*TPAi* is trees per acre of tree record *i*

∑ is summation over all trees for which the contribution to SDI is being calculated. For stand SDI the summation is over all trees in the stand.

Section 7.3.4 explains the SDI computation methods in greater detail and describes how they differ.

If the stand SDI at the time of inventory is above the upper limit of density related mortality plus 5 percent (e.g., 90% if using the default value of 85% for the upper limit), then the maximum SDI is automatically reset. The new maximum is set so the stand SDI at the time of inventory corresponds to the upper limit of density related mortality. If the stand SDI at the time of inventory is greater than the upper limit of density related mortality, but within 5 percent, then the stand stocking will be reduced to the upper limit the first projection cycle.

The relationship between stand SDI at the time of inventory and the maximum SDI determines the trajectory a stand will take throughout the projection. Certain management actions, such as a thinning, may change this trajectory. This trajectory can be thought of as a relationship between trees per acre on the y-axis and quadratic mean diameter on the x-axis. For density related mortality, this trajectory determines how many trees will die in the projection cycle. This density related mortality is then dispersed to individual tree records as described in section 7.3.2.2.

For background mortality, a mortality rate formula determines the number of trees dying. The background mortality rate (*Ra*) is calculated using equation {7.3.2.1.4} as an annual rate. The background mortality rate for the cycle is calculated using the compound interest formula equation {7.3.2.1.5}. This is patterned after Hamilton (1986). Coefficients are variant and species dependent and are listed in the variant overview document. Once background mortality is determined for each tree record, the total number of trees dying during the cycle is the sum of the individual tree background rates. This total number of mortality trees is then dispersed to individual tree records as described in section 7.3.2.2.

{7.3.2.1.4} ![](data:image/x-wmf;base64...)

where:

*Ra* is annual background mortality rate

*DBH* is tree diameter at breast height

{7.3.2.1.5} *RIP* = 1 – [1- *Ra*] *YRS*

where:

*RIP* is background mortality rate for the current projection cycle

*YRS* is number of years in the current projection cycle

#### 7.3.2.2 Dispersing Mortality to Individual Tree Records

Once the number of mortality trees has been determined, the mortality needs to be dispersed across the individual tree records. Mortality in FVS is achieved by adjusting the number of trees per acre a record represents. Tree records are processed, each receiving a calculated mortality, until the total number of mortality trees has been achieved. All tree records will receive some mortality in a projection.

Mortality rates for individual tree records are determined by an equation that is variant dependent. The variant overview document should be consulted for the specific equation form and coefficients in the variant being used. In general though, the rate is partially dependent on shade tolerance of individual species. The more intolerant species have higher mortality rates than the tolerant species. The rate is also dependent on a tree’s social position as measured by its’ rank in the basal area distribution. Trees with a lower rank (e.g., understory tree) receive heavier mortality than those with a higher rank (e.g., overstory tree). And finally, the rate is dependent on a tree’s vigor as measured by crown ratio. Trees with a lower crown ratio receive higher mortality than trees with a higher crown ratio. The mortality model makes multiple passes through the tree records multiplying a record’s trees per acre value times the mortality rate, accumulating the results, and reducing the trees per acre representation until the desired mortality level has been reached.

A final check is made to make sure the stand does not exceed the basal area maximum sustainable on the site. Maximum basal area for the stand can be entered using the BAMAX keyword. If not provided, it is calculated from the maximum Stand Density Index. If necessary, individual tree mortality values, determined using the variant specific mortality distribution discussed above, are proportionately adjusted to reduce the stand to the specified basal area maximum.

Many FVS users are more familiar with basal area maximums rather than SDI maximums as a measure of site capacity. If basal area maximum is specified and SDI maximum is not specified, then equation {7.3.2.2.1} is used to compute SDI maximum from the basal area maximum.

{7.3.2.2.1} SDImax = BAmax / 0.54542

#### 7.3.2.3 Mortality in Over Mature Stands

Mortality associated with over mature stands can be simulated using parameters entered with the MORTMSB keyword. This relationship, referred to as a Mature Stand Boundary (Shaw and Long, 2007), determines the number of additional trees that need to be killed to simulate the breakup of over mature stands. As opposed to density related mortality, which is dispersed to individual tree records as described in section 7.3.2.2, this additional mortality is applied to the largest trees in the stand in accordance with the mortality efficiency specified with the MORTMSB keyword. For this type of mortality, FVS is using tree size as a surrogate indicator of tree age. This type of mortality is not simulated unless specifically invoked by the user.

### 7.3.3 The TWIGS-Based Mortality Models

The SDI-based mortality models are used in all eastern variants. Mortality is dispersed to individual tree records using relationships found in the TWIGS type mortality models (Teck and Hilt 1990, Buchman et al. 1983, Buchman 1983, Buchman and Lentz 1984). These equations are variant dependent and actually predict survival rate, rather than mortality rate. Survival rate is predicted as a function of diameter, diameter growth, basal area in larger trees, and/or site index. The survival rate is converted to a mortality rate for FVS processing. The variant overview document should be consulted for the specific equation form and coefficients in the variant being used. In addition, background mortality is estimated as 1/10th of the calculated TWIGS mortality rate for each individual tree record.

### 7.3.4 SDI Computation Methods and How They Compare

Stand Density Index was originally formulated by Reineke (1933). Reineke’s SDI computation is based on the quadratic mean diameter of the stand and was developed for even-aged conditions. Stage (1968) presented a way to disaggregate SDI to individual trees (or conversely, to aggregate SDI by individual trees). Both computations yield exactly the same result.

Zeide (1983) recommended that the mean diameter used in the Reineke calculation should not be the quadratic mean diameter, but rather a value Dr (Reineke’s diameter) computed using the 1.605 power and root to account for an aggregation bias in Reineke’s calculation. This bias is due to SDI being a function of D1.605 while quadratic mean diameter used in Reineke’s calculation is a function of D2. Long and Daniel (1990) showed that the aggregation bias was significant when applying the SDI concept to uneven-aged stands, and published their own summation method (patterned after Stage’s summation method) to eliminate this bias when computing SDI on an individual tree basis. This computational method was popularized by Shaw (2000) who provided a shortcut computational method of the Long and Daniel formulation. The Zeide calculation using Dr and the Shaw/Long and Daniel summation method both yield the same result.

The two different computational methods discussed above do not produce the same results. The Shaw/Long and Daniel formulation produces lower SDI values than the Reineke/Stage formulation. This difference is trivial for even-aged stands but increases as stands represent more uneven-aged conditions.

The SDICALC keyword can be used to specify which of these two methods is used to compute SDI.

## 7.4 Changes in Crown Ratio

The ratio of live crown length to total tree height is a good indicator of tree vigor. As such, it is an important predictor of periodic increment even though it has substantial shortcomings. Crown ratio changes slowly with time, but it does change. However, very limited data describing the rate of change are available. The dearth of data can be attributed in part to the difficulty of objective crown ratio measurement. Limbs are not systematically distrib­uted on the bole, and it is difficult to pinpoint a base of live crown that is physiologically meaningful. As a result, crown ratio measurements and predictions are subjective, im­precise, and prone to variation in measurement. Nevertheless, the utility of crown ratio as a predic­tor substantially outweighs the difficulties associated with its measurement.

Just as with the mortality models, there are several crown models used in different FVS variants. These include: (1) the Prognosis crown model; (2) the Weibull-based crown model; and (3) crown models from other modeling systems. The variant overview document should be consulted to determine which type is in the variant being used.

### 7.4.1 The Prognosis Crown Model

Equation {7.4.1.1} is used in the original Prognosis model to predict change in crown ratio. It was developed by Hatch (1980). The model predicts crown ratio as a function of species, habitat type, stand basal area (BA), crown competition factor (CCF), tree DBH, tree height (HT), and the tree’s percentile in the stand basal area distribution (PCT):

{7.4.1.1} ![](data:image/x-wmf;base64...)

where:

*HAB* is an intercept dependent on species and habitat type

*b*1-*b*14 are species dependent coefficients

To estimate change in crown ratio, crown ratio is predicted based on stand and tree at­tributes at the beginning and at the end of a cycle. The first prediction is then subtracted from the second prediction to obtain a difference. This difference is added to the actual crown ratio to effect the change.

There are some additional operational constraints on this crown model. Theoretically, crowns should just touch when CCF is equal to 100. It is assumed the effect of density will be negligible below this threshold. When CCF is less than 100, predictions made at the end of the cycle use the same CCF and BA values that were used to make predictions at the start of the cycle. It is also assumed that thinning will encourage crown development. How­ever, when the stand is thinned from below, a trees’ basal area percentile is reduced for the residual trees, with the result that predicted crowns are smaller. To avoid this anomaly, when the stand is thinned the same percentile value is used when making predictions at both the start and the end of the cycle.

For most species, crown ratio decreases, as the tree gets larger. A dominant tree (as measured by basal area percentile) tends to have a larger crown than a similar-sized tree in a subordinate crown position (assuming the two trees are in different stands). The effect of increasing stand density is to reduce crown ratio. However, as trees become large, the predicted changes in crown ratio become very small.

### 7.4.2 The Weibull-based Crown Model

The Weibull-based crown model (Dixon 1985) is used in most western variants. The distribution of crown ratios within a stand is assumed to follow a Weibull distribution (Johnson and Kotz 1970). First, the mean stand crown ratio is estimated from Stand Density Index. Next, parameters of the Weibull distribution are estimated from mean stand crown ratio. And finally, individual trees are assigned a crown ratio from the specified Weibull distribution based on their rank in the diameter distribution, and scaled by a density-dependent scale factor.

Changes in crown ratios from one projection cycle to the next are obtained from the difference in the crown ratios picked from the appropriate Weibull distributions at the beginning and end of a projection cycle. Crown ratios may increase, decrease, or stay the same depending on tree growth and changes in the stand structure. Crown ratio change is bounded to 1 percent per year to avoid unrealistic changes from one cycle to the next when there are dramatic changes is stand structure.

Values of crown ratio for individual trees are normally assigned between the .05 and .95 percentile points of the cumulative distribution function for the specified Weibull distribution. However, a scaling factor that is a function of stand crown competition factor can change this range.

The Weibull-based crown model is very responsive to changes in the tree and the surrounding stand. With thinning, the crown ratios lengthen; conversely, if density increases, the crown ratios recede. A dominant tree (as measured by basal area percentile) tends to have a larger crown than a similar-sized tree in a subordinate crown position in the same stand.

### 7.4.3 Crown Models from Other Modeling Systems

For some FVS variants, growth model relationships are taken from another modeling system and imbedded in the FVS framework. Consequently, there are a few other crown models used in FVS variants. These include the GENGYM (Edminster et al. 1991) crown model, the TWIGS based crown models (Minor, Walters, and Belli 1988; Holdaway 1986), and the BGC process-based crown model (Milner et al. in press, see section 8.9). Users should consult their variant overview document to determine if they are using a variant containing these crown models. If so, the particular reference should be consulted for further information.

## 7.5 Serial Correlation of Diameter Growth Rates

Diameter growth estimates from the large-tree model are composed of an estimated growth from a regression equation, combined with a random error assigned from the error distribution of the regression model. In FVS, a portion of the error term is correlated with the error term from the previous cycle (Stage and Wykoff 1993). This provides a more consistent estimate of diameter growth than if the error term was assigned totally at random from cycle to cycle. In other words, trees that are growing well tend to keep growing well, and those that are growing poorly tend to keep growing poorly.

The procedure assumes that annual tree rings can be characterized by an autoregressive moving average (ARMA(1,1)) time series model. Furthermore, periodic increment is assumed to be distributed as the sum of x random values with the variance-covariance matrix defined by the serial correlation function of the ARMA(1,1) model, where x is the number of years in the growth period.

Users can adjust parameters of the ARMA(1,1) model using the SERLCORR keyword. Setting both parameters to zero will turn off the serial correlation feature. However, users are encouraged to not change the parameters unless they thoroughly understand ARMA(1,1) models.

## 7.6 Tree Record Compression

When there are many records in the FVS tree list, the record compression algorithm can reduce the number of records while maintaining within-stand variation in tree attributes that are important for increment prediction. As a result, the number of calculations required for the projection can be substantially reduced without significant bias in the output. Shortening the FVS tree list also provides space for new records created by the regeneration establishment model. FVS may compress a tree list automatically after heavy mortality to improve processing efficiency. In addition, the regeneration establishment model and root disease extension can also invoke compression. Users can initiate tree list compression with the COMPRESS keyword record.

The compression algorithm uses a multivariate Eigen analysis to compute a score for each tree. This score is based on tree attributes that are important for increment prediction. The records are then combined based on the relative closeness of their scores. The algorithm first looks for the largest gaps between scores, and then splits the classes with the greatest variance. The user can control both the number of tree records that will remain following compression, and the percentage of new records that will be determined by finding the largest gaps in the classification space.

Some care is necessary when calling for tree list compression. If COMPRESS is specified for the first or second cycle, the tree records may subsequently be tripled. In this case, the record-tripling feature may also need to be suppressed (see section 6.4.2).

The tree list compression algorithm may yield slightly different results depending on the computing environment. Wykoff et al. (1990) discuss this problem in detail. When making runs on different computer platforms and comparing results, if the results are different, tree record compression may have occurred. Users can see this by looking through the Activity Summary Table. If “COMPRESS” is listed as one of the activities, then tree list compression has occurred. Next the Summary Statistics Table or other tables in the main output file can be checked to see if the run results were the same up to that point in each simulation. If this is the case, then the compression algorithm is likely the cause of the difference.

# 8.0 FVS Extensions

Extensions to the Forest Vegetation Simulator predict: (1) the interaction between specific insects or pathogens and stand and tree development, (2) shrub cover and browse availability and tree canopy coverage, (3) economic ramifications of individual stand prescriptions, (4) snag dynamics, (5) fuel loading, and (6) fire effects on tree growth and mortality. They also provide linkages to data bases and allow users to run an entire landscape of stands at one time. A brief description of each extension is presented here so the user is aware that they exist. Specific documentation for each of these extensions can be obtained from the FVS Internet web site. The Forest Health Assessment & Applied Sciences Team, a Washington Office State and Private Forestry detached unit in Fort Collins, Colorado, maintains the insect and pathogen extensions; the Cover, Fire and Fuels, and Economic extensions are maintained by the Forest Management Service Center.

## 8.1 The Cover Extension

The COVER extension to the Forest Vegetation Simulator (Moeur 1985) provides three types of information: (1) a description of the amount of cover and foliage in the tree canopy by height class, (2) the height and cover of shrubs, forbs, and grasses in the understory, and (3) a summary of overstory and understory cover and biomass for the stand. The extension may be used to evaluate how management practices may change stand characteristics important to wildlife, such as thermal cover and hiding cover, browse production, and the interactions of shrubs and trees that determine vertical and horizontal stand structure. Other uses include: examining dynamics of the shrub community affecting stand succession and competition with regeneration; looking at vertical crown form and foliage distribution important to feeding and dispersal patterns of insects; and predicting canopy and ground cover development which affect the hydrologic characteristics of a stand following a harvest.

The COVER extension is linked to several western variants, but it has only been calibrated for Idaho, northeastern Washington, northwestern Montana, and northwestern Wyoming. In variants outside these areas, the extension has still been useful for evaluations involving cover, but not for shrubs. Even though the predictions are not technically accurate for areas outside the range the extension is calibrated for, trends in the numbers are indicative of effects likely from management.

Users invoke the extension with the COVER keyword. An END keyword terminates the sequence. All keywords between the COVER and END keywords are assumed to be COVER model keywords.

## 8.2 The Fire and Fuels Extension

The Fire and Fuels Extension to the Forest Vegetation Simulator (Reinhardt and Crookston 2003; Reinhardt, Crookston, Rebain 2007) integrates FVS with elements from existing models of fire behavior and fire effects. It predicts the effects of stand development and management actions on fuel dynamics, fire behavior, and fire effects. The extension also represents the effects of fire on stand characteristics and stand development. The Fire and Fuels Extension can produce tables that include various snag reports, fuel reports, a burn condition report, fuel consumption report, fire-based mortality report, a potential fire report, a soil heating report, carbon accounting report, and various other information. The FFE extension uses relationships from the BEHAVE and FOFEM fire models, along with other equations to simulate fuel accumulation and decay, and snag dynamics. The snag model is extremely useful for wildlife considerations regardless of whether a user is interested in the fire effects.

The model does not simulate fire spread or the probability of fire. It calculates potential fire intensity over time, under defined conditions, as a measure of the fire hazard of stand and fuel conditions. However, users can schedule a fire and the model computes its intensity, its effects on different stand components, and the associated emissions.

Users invoke the FFE extension with the FMIN keyword. An END keyword terminates the sequence. All keywords between the FMIN and END keywords are assumed to be FFE model keywords. There are more than a dozen different tables that can be generated from the FFE extension. Some are written to the main output file and others are written to separate files. Refer to the FFE-FVS Updated Model Documentation (Rebain et al. 2010) for detailed information.

The FFE output tables can also be output directly to a database. Refer to the Users Guide to the Database Extension (Crookston et al. 2003). There is a section that discusses the all of the FFE output tables. Also see the description of the keywords used to request these tables.

### 8.2.1 Special Considerations using FFE Variables with the Event Monitor

Users can compute custom variables using FFE Event Monitor variables and functions in the same manner as described in sections 5.5 and 5.6. Since COMPUTE is a base model keyword these variables will only get reported on cycle boundaries. The values of these computed variables will match those shown in the fire and fuels output reports.

FVS makes projections on a growth cycle basis. The Event Monitor is called three times; twice at the beginning of the cycle in FVS, and once from the FFE. The call to the Event Monitor from the FFE is after the second call to the Event Monitor which follows thinning in FVS. So some FFE Event Monitor variables for the current cycle get defined after the FVS Event Monitor calling sequence.

Because of the FVS and FFE calling sequence, there are some caveats to using an IF-THEN-ENDIF keyword sequence conditioned on FFE variables and functions. The pre-defined variables CRBASEHT, CROWNIDX, TORCHIDX, and CRBULKDN, and the FFE functions FUELLOAD, FUELMODS, POTFMORT, POTFLEN, and TREEBIO cannot be used directly in an IF-THEN-ENDIF keyword sequence. This is because current values of these variables and functions are not defined when FVS is processing the IF-THEN-ENDIF request. Users wanting to condition activities on these variables and functions must do this indirectly. Further, the value of the conditional FFE variable will represent conditions following thinning the previous cycle. For example, a user could schedule a thinning when the torching index following thinning in the previous cycle is less than 15 miles-per-hour with the following sequence:

COMPUTE 1

TEM = 99

TID = 9999

END

COMPUTE 0

TEM = TID

TID = TORCHIDX

END

IF 0

TEM LT 15

THEN

THINDBH 0 0 12 1 ALL 0 0

ENDIF

The first compute keyword sequence is only done in the first cycle and initializes the variables named TEM (for temporary) and TID (for torching index) to 99 and 9999, respectively. The IF-THEN-ENDIF keyword sequence is done every cycle following the computes. The second compute keyword sequence is done every cycle in two parts. The first part setting the value of the variable TEM to the value stored in the variable TID gets done in the first call to the Event Monitor by FVS. The second part setting the value of TID to the value of the FFE variable TORCHIDX gets done in the third call to the Event Monitor which occurs from the FFE code following thinning.

So the processing sequence would be as follows: 1) in the first cycle set TEM to 99, TID to 9999, and TEM to the value stored in TID (which is 9999); 2) in the first cycle check value of the variable TEM to see if it is less than 15, which it isn’t; 3) in the first cycle set the value of the variable TID to the value of the variable TORCHIDX (say 10) which is defined when the Event Monitor gets called from FFE during the first year of the first cycle; 4) in the second cycle set TEM to the value in TID (in this case 10) which represents the torching index in the first year of the first cycle following thinning; 5) in the second cycle check the value of the variable TEM (now 10) to see if it is less than 15. It is, so schedule a diameter limit thinning for this cycle. 6) in the second cycle set the value of the variable TID to the value of the variable TORCHIDX (say 30) which represents the torching index in the first year of the second cycle following thinning. And so forth until the end of the simulation.

At the current time, conditioning IF-THEN-ENDIF keyword sequences on FFE variables and functions mentioned above is an awkward procedure. Perhaps a better solution will be found in future model development. Values of the FFE variables FIRE, FIREYEAR, and MINSOIL, and the FFE functions SNAGS and SALVVOL, are not affected by the processing sequence.

## 8.3 Dwarf Mistletoe

The Dwarf Mistletoe Impact Model (Hawksworth et al. 1995) simulates the spread and intensification of dwarf mistletoe (*Arceuthobium spp*.) throughout a stand, and estimates the effects of dwarf mistletoe on tree and stand development. This extension is available with all western variants of FVS and is based on the Hawksworth (1977) 6-class dwarf mistletoe rating system (the tree crown is divided into thirds; each third is rated as 0 = no infection, 1 = light infection, or 2 = heavy infection; ratings for each third are added to obtain the rating for a tree which can range from 0 (no infection) to 6 (heavy infection in each third).

The model accounts for three indicators when projecting the impact of dwarf mistletoe on a tree or stand. The first of these is the change in an individual tree’s dwarf mistletoe rating (DMR) as mistletoe spreads through a stand. This measure also includes the intensification of dwarf mistletoe within trees that are already infected. Factors that affect the likelihood of DMR increasing, or decreasing, include tree species, current DMR, diameter, stand density, and height growth. The second indicator is the change in periodic diameter growth caused by the dwarf mistletoe infestation. This indicator is based on tree species and current DMR. For some species, low levels of dwarf mistletoe infection have no adverse effects on diameter growth; for other species a growth loss is present even with low levels of infection. The third indicator is the mortality caused by the dwarf mistletoe infestation. Predicted mortality depends on species, DMR, diameter, and site index. As with other insect and pathogen extensions, the estimate of mortality with DMR is compared to the estimate of mortality from the FVS base model, and the greater of the two values is used as the model’s estimate of mortality.

This extension is part of the base model code for all western variants. As such, the model will be automatically invoked when dwarf mistletoe damage codes are present in the FVS input tree data, and mistletoe output tables (figure 8-1) will be included in the main output file. The mistletoe tables can also be output directly to a database. Refer to the Users Guide to the Database Extension (Crookston et al. 2003). There is a section that discusses the FVS\_DM\_Spp\_Sum, FVS\_DM\_Stnd\_Sum, and FVS\_DM\_Sz\_Sum output tables. Also see the description of the MISRPTS database keyword used to request these tables.

Keywords are used to alter the removal preference of dwarf mistletoe-infected trees (see 5.2.4.1), alter the effects on diameter growth, change mistletoe spread and intensification probabilities, alter the effects on mortality, change other parts of the model, or turn the model off so dwarf mistletoe effects are not accounted for in the projection. Users invoke the dwarf mistletoe extension with the MISTOE keyword. An END keyword terminates the sequence. All keywords between the MISTOE and END keywords are assumed to be mistletoe model keywords.

DWARF MISTLETOE INFECTION AND MORTALITY STATISTICS SUMMARY TABLE

(BY SPECIES; TOP 4 MOST INFECTED SPECIES)

----------------------------------------------------------------------------------------------------------------------------

Stand ID: Management Code: NONE Revision code: 991201

DMRs and DMIs calculated for trees with DBH >= 1.0

MEAN DMR = Average dwarf mistletoe rating for all trees of that species.

MEAN DMI = Average dwarf mistletoe rating for infected-only trees of that species.

TPA INFECTED TPA MORTALITY % TPA % TPA COMPOSITION

YEAR MEAN DMR MEAN DMI WITH DM FROM DM INFECTED MORTALITY OF STAND (%TPA)

---- --------------- --------------- ------------------- ------------------- --------------- --------------- ---------------

PP \*\* \*\* \*\* PP \*\* \*\* \*\* PP \*\* \*\* \*\* PP \*\* \*\* \*\* PP \*\* \*\* \*\* PP \*\* \*\* \*\* PP \*\* \*\* \*\*

--- --- --- --- --- --- --- --- ---- ---- ---- ---- ---- ---- ---- ---- --- --- --- --- --- --- --- --- --- --- --- ---

1993 0.7 0.0 0.0 0.0 2.5 0.0 0.0 0.0 7 0 0 0 1 0 0 0 13 0 0 0 1 0 0 0 100 0 0 0

2003 1.2 0.0 0.0 0.0 1.8 0.0 0.0 0.0 35 0 0 0 2 0 0 0 68 0 0 0 3 0 0 0 100 0 0 0

2013 1.8 0.0 0.0 0.0 2.1 0.0 0.0 0.0 42 0 0 0 2 0 0 0 86 0 0 0 4 0 0 0 100 0 0 0

2023 3.2 0.0 0.0 0.0 3.8 0.0 0.0 0.0 34 0 0 0 6 0 0 0 83 0 0 0 15 0 0 0 100 0 0 0

2033 3.2 0.0 0.0 0.0 4.0 0.0 0.0 0.0 27 0 0 0 4 0 0 0 80 0 0 0 13 0 0 0 100 0 0 0

2043 3.0 0.0 0.0 0.0 3.9 0.0 0.0 0.0 22 0 0 0 3 0 0 0 76 0 0 0 12 0 0 0 100 0 0 0

DWARF MISTLETOE INFECTION AND MORTALITY STATISTICS SUMMARY TABLE

(STAND COMPOSITE; PER ACRE)

----------------------------------------------------------------------------------------------------------------

Stand ID: Management Code: NONE Revision code: 991201

DMRs and DMIs calculated for trees with DBH >= 1.0

MEAN DMR = Average dwarf mistletoe rating for all trees in the stand. \* --WARNING-- Calculation may

MEAN DMI = Average dwarf mistletoe rating for infected-only trees in the stand. include nonhost species.

START OF CYCLE DM INFECTION DM MORTALITY

------------------ ------------------ ------------------ \*

TREES BA VOL TREES BA VOL TREES BA VOL %TPA %VOL %TPA %VOL MEAN MEAN

YEAR AGE /ACRE SQFT CU FT /ACRE SQFT CU FT /ACRE SQFT CU FT INF INF MORT MORT DMR DMI

---- --- ----- ---- ----- ----- ---- ----- ----- ---- ----- ---- ---- ---- ---- ---- ----

1993 91 54 13 379 7 5 150 1 0 14 13 40 1 4 0.7 2.5

2003 101 52 19 576 35 8 232 2 1 18 68 40 3 3 1.2 1.8

2013 111 49 26 818 42 11 352 2 1 29 86 43 4 4 1.8 2.1

2023 121 41 32 1056 34 14 464 6 2 64 83 44 15 6 3.2 3.8

2033 131 34 37 1290 27 16 558 4 2 77 80 43 13 6 3.2 4.0

2043 141 29 41 1502 22 17 633 3 3 94 76 42 12 6 3.0 3.9

**Figure 8-1** — Example of the Dwarf Mistletoe tables from the Forest Vegetation Simulator.

## 8.4 Root Disease

The Western Root Disease Model (Frankel 1998) simulates the increased mortality and reduced growth effects of four root diseases on forty tree species. The root diseases include P- and S-type annosus (*Heterobasidion annosum* (Fr.) Bref.), armillaria (*Armillaria ostoyae* (Romag.) Herink), and laminated root rot (*Phellinus weirii* (Murrill) R. L. Gilbertson). As root disease intensifies in a tree, growth decreases, and eventually the tree dies. Trees whose health and vigor have been compromised by root disease are also susceptible to successful bark beetle attacks and windthrow. Therefore, this extension also includes the ability to simulate windthrow and four types of bark beetles. The model involves five basic concepts: 1) root disease centers, 2) expansion of the root disease centers, 3) infection of trees within centers, 4) intensification of root disease within a tree, and 5) the “carry over” effect of root disease from a harvested stand to the regeneration. The model has many parameters and users can control these with keywords. Treatments include stump removal and treatment of stumps with borate.

The root disease extension is available only in special versions of some variants for which that model has been developed. Most of the western FVS variants have a corresponding root disease extension variant. Users invoke the root disease extension with the RDIN keyword. An END keyword terminates the sequence. All keywords between the RDIN and END keywords are assumed to be root rot model keywords.

## 8.5 Blister Rust

The White Pine Blister Rust Model has not been kept compatible with the base model, so it is currently not available. When it is made compatible, this extension will again be made available. The description that follows has been retained in anticipation of its eventual availability.

The White Pine Blister Rust Model (Mcdonald, Hoff, and Wykoff 1981) simulates top-kill and mortality resulting from white pine blister rust (*Cronartium ribicola* Fisch.) on western white pine. The model does not estimate growth reduction due to the infection. The model is driven by a rust index that is a measure of the white pine blister rust infection level or rust potential for a site, area, or stand. Initial values of the rust index can be provided by the user, calculated from current infections indicated in the inventory data, or calculated based on *Ribes* populations. Three alternate hosts of *Ribes* are represented in the model. Keywords are available to control input parameters, and manage existing infections via pruning branch cankers or excising bole cankers. The model has recently been enhanced to also recognize sugar pine as a host species but specific model parameter values for sugar pine have not been developed.

The blister rust extension is available only in special versions of some variants for which that model has been developed. Selected western FVS variants have a corresponding root disease extension variant. Users invoke the blister rust extension with the BRUST keyword. An END keyword terminates the sequence. All keywords between the BRUST and END keywords are assumed to be blister rust model keywords.

## 8.6 Bark Beetles

Three extensions are available for simulating bark beetles. These are the Douglas-fir Beetle Impact Model, the Lodgepole Pine Mountain Pine Beetle Impact Model, and the Westwide Pine Beetle Model. In addition, a keyword set is available for simulating effects of the southern pine beetle using event monitor functions.

### 8.6.1 Douglas-fir Beetle

The Douglas-fir Beetle Impact Model has not been kept compatible with the base model, so it is currently not available. When it is made compatible, this extension will again be made available. The description that follows has been retained in anticipation of its eventual availability.

The Douglas-fir Beetle Impact Model (Marsden, Eav, and Thompson 1994) simulates the impacts of the Douglas-fir beetle (*Dendroctonus pseudotsugae* Hopk.) on Douglas-fir. This model deals with epidemic levels of the beetle and is not useful for simulating endemic beetle levels. The main beetle impact is represented by mortality in large diameter dominant, and co-dominant, Douglas-fir in a stand. There are no impacts on tree growth represented in the model; however, it does include impacts from windthrow. Keywords are available to control beetle outbreaks, beetle effects on mortality, and model initialization parameters.

The Douglas-fir beetle extension is available only in special versions of some variants for which that model has been developed. Most of the western FVS variants have a corresponding Douglas-fir beetle extension variant. Users invoke the Douglas-fir beetle extension with the DFB keyword. An END keyword terminates the sequence. All keywords between the DFB and END keywords are assumed to be Douglas-fir beetle model keywords.

### 8.6.2 Mountain Pine Beetle

The Lodgepole Pine Mountain Pine Beetle Impact Model has not been kept compatible with the base model, so it is currently not available. When it is made compatible, this extension will again be made available. The description that follows has been retained in anticipation of its eventual availability.

The Lodgepole Pine Mountain Pine Beetle Impact Model simulates the mortality impacts of mountain pine beetles (Dendroctonus ponderosae Hopk.) on lodgepole pine. It is a single stand model and does not recognize conditions or events occurring in neighboring stands. Two simulation methods are available. The first utilizes the mountain pine beetle rate of loss model developed by Cole and McGregor (1983), and the second utilizes the mountain pine beetle population dynamics model developed by Burnell (1977) (also see Crookston et al. 1978; David et al. 1993). Both of these methods operate by assigning FVS tree records to diameter classes. Two-inch classes are used in the Cole and McGregor method. Users can define the diameter classes with the Burnell method. As with the Douglas-fir beetle model, this model only addresses epidemic beetle levels, and does not represent endemic levels. Keywords are available to control beetle outbreaks, beetle effects on mortality, and model initialization parameters.

The mountain pine beetle extension is available only in special versions of some variants for which that model has been developed. Most of the western FVS variants have a corresponding mountain pine beetle extension variant. Users invoke the mountain pine beetle extension with the MPB keyword. An END keyword terminates the sequence. All keywords between the MPB and END keywords are assumed to be mountain pine beetle model keywords.

### 8.6.3 Westwide Pine Beetle Model

The Westwide Pine Beetle Model (WWPB) (FHTET, in press) simulated the mortality impacts of mountain pine beetle (Dendroctonus ponderosae Hopkins), western pine beetle (Dendroctonus brevicomis LeConte), and Ips (spp) on western pine tree species. It utilized the FVS Parallel Processing Extension (Crookston and Stage 1991), which is no longer supported, so the WWPB model is also no longer supported.

### 8.6.4 Southern Pine Beetle

A specific extension does not exist for southern pine beetle ((*Dendroctonus frontalis*)*,* Zimmermann (*Coleoptera: Scolytidae*)) effects; however, keyword sets have been built to simulate these effects. Individual stands are evaluated with a hazard rating system to determine the susceptibility of the stand to southern pine beetle infestations. A beetle outbreak is scheduled if a random number is less than or equal to the estimated probability, or risk, in that cycle. If an outbreak is scheduled, tree mortality is increased in southern pines based on the stands hazard rating. Hazard rating methodology varies throughout the South base on pine community characteristics and regional differences. As a result, there are different keyword record files for the coastal, piedmont, and mountain areas of the South. Growth effects are not accounted for in these keyword sequences. The appropriate keyword set can be brought into a simulation with the ADDFILE keyword (see section 4.2.3.4) and makes heavy use of event monitor capabilities discussed elsewhere in this guide.

## 8.7 Tussock Moth

The Douglas-fir Tussock Moth Outbreak Model has not been kept compatible with the base model, so it is currently not available. When it is made compatible, this extension will again be made available. The description that follows has been retained in anticipation of its eventual availability.

The Douglas-fir Tussock Moth Outbreak Model (Monserud and Crookston 1982) simulates the effects of Douglas-fir tussock moth (*Orgyia pseudotsugata* McDunnough) on true firs and inland Douglas-fir. The model estimates growth loss and increases in mortality associated with this insect and functions on a tree class system rather than on individual tree records. The default number of tree classes is 20, but users can change this number with a keyword. Outbreaks are scheduled either randomly or by specific dates. Users can provide the initial number and allocation of first instar larvae, as well as parameters estimating foliage biomass, chemical or viral control, and other model functions. This extension also offers its own salvage management action to remove surviving host trees of a specific minimum defoliation at the end of an outbreak.

The tussock moth extension is available only in special versions of some variants for which that model has been developed. Most of the western FVS variants have a corresponding tussock moth extension variant. Users invoke the Douglas-fir tussock moth extension with the DFTM keyword. An END keyword terminates the sequence. All keywords between the DFTM and END keywords are assumed to be tussock moth model keywords.

## 8.8 Budworm

The Western Spruce Budworm Damage Model has not been kept compatible with the base model, so it is currently not available. When it is made compatible, this extension will again be made available. The description that follows has been retained in anticipation of its eventual availability.

The Western Spruce Budworm (WSB) Damage Model predicts top-kill, height growth, diameter growth, and tree mortality impacts of western spruce budworm (*Choristoneura occidentalis* Freeman) defoliation on spruce and fir host tree species (Crookston 1991). This model is formed of two components of the Western Spruce Budworm Modeling System (Sheehan et al. 1989, Crookston et al. 1990), foliage dynamics and damage. The complete modeling system represented complex budworm population dynamics, but those portions of the model are no longer in service. The damage model allows users to specify defoliation patterns by tree species, size class, crown third, and needle age class (Crookston et al. 1990). There are three size classes, and four foliage age classes defining the foliage/defoliation patterns for each budworm host species. The damage model is not responsive to changing stand conditions and requires users to make detailed predictions about defoliation patterns for the entire simulation period. For the user’s evaluation of the specified defoliation patterns, there are two output tables available, a cumulative damage summary and periodic damage tables at each FVS cycle boundary displaying the results of budworm defoliation on FVS model trees.

The western spruce budworm extension is available only in special versions of some variants for which that model has been developed. Most of the western FVS variants have a corresponding western spruce budworm extension variant. Users invoke the western spruce budworm extension with the WSBW keyword. An END keyword terminates the sequence. All keywords between the WSBW and END keywords are assumed to be budworm model keywords.

## 8.9 Climate Change

The Forest Vegetation Simulator was developed for use in a static climate, so the base model is not designed to reflect the impacts of climate change. For the western conterminous United States, a climate extension known as Climate–FVS (Crookston et al. 2010) was developed to take climate change into account when predicting forest dynamics. There is currently no climate extension for the eastern US or for Alaska.

Climate-FVS contains components that modify mortality and growth rates, plus rules for establishing new trees. Species viability scores are read from an external file that can be created using a web-based service designed specifically for this purpose. Users invoke the Climate-FVS extension with the CLIMATE keyword. An END keyword terminates the sequence. All keywords between the CLIMATE and END keywords are assumed to be Climate-FVS keywords.

The database extension can be used to write Climate-FVS summary information directly to a database. The CLIMREDB database keyword is used to request creation of the FVS\_Climate table. Refer to the Users Guide to the Database Extension (Crookston et al. 2003) for additional information.

Prior to development of the Climate-FVS, there was a model called FVS-BGC (McMahan et al. 2002) that was a hybrid model between the Forest Vegetation Simulator and another empirically based, yet climate driven, process model Stand-BGC (Milner and Coble 1995). FVS-BGC is now obsolete.

## 8.10 Economics Models

An economic analysis extension called ECON (Renner 2001) allows for evaluation of the economic ramifications of individual stand prescriptions. In addition to providing information for basic economic analysis, ECON provides functionality for specifying rotation lengths, allows for use of the event monitor feature of FVS in scheduling activities based on economic parameters, and provides for enhanced reporting of revenues based on log dimensions. Users invoke the ECON extension with the ECON keyword. An END keyword terminates the sequence. All keywords between the ECON and END keywords are assumed to be ECON extension keywords.

Prior to the development of the ECON extension, an extension called CHEAPO II (Medema and Hatch 1982) was available. Unlike other extensions, CHEAPO II didn’t interact dynamically with FVS. The CHEAPO keyword was used to invoke the extension, which was used to create an external file used as input to a separate program.

## 8.11 Database Extension

The database extension to FVS (DB-FVS) allows users to initialize input from relational databases and/or directly output FVS predictions into databases. Its use is described in the Users Guide to the Database Extension of the Forest Vegetation Simulator (Crookston et al. 2003). Users provide a file name of a database object or a Data Source Name (DSN) and other connection information, and the DB-FVS software can then interact with the specified database. The extension links FVS to SQLite databases, other SQL-based databases (e.g., Oracle), Excel spreadsheet files, and Access database files. The Database Extension is available for use with all variants. Users invoke the DB-FVS extension with the DATABASE keyword. An END keyword terminates the sequence. All keywords between the DATABASE and END keywords are assumed to be DB-FVS extension keywords.

The input and output databases are specified with the DSNIN and DSNOUT database keywords respectively. The STANDSQL and TREESQL keywords are used for initializing stand and tree information respectively. SQLIN and SQLOUT specify structured query language (SQL) statements to run on the input or output database respectively. Other database keywords are used to specify which output tables are desired.

## 8.12 Parallel Processing Extension

The Parallel Processing Extension (PPE) (Crookston and Stage 1991) allowed users to simulate multi-stand treatment scheduling at the landscape level, accomplish resource supply analysis, simulate contagion in pest-dynamic models, and create and analyze decision trees. The PPE is no longer available as an extension, but much of its functionality is available through features now contained in the base model.

## 8.13 Other Extensions

In the absence of an actual FVS extension, keyword sets have been developed to simulate the effects of different pests and other disturbances. Many have been saved as addfiles. Some are able to be applied widely, and others are more regional in nature. Availability of the addfiles varies greatly. Several examples are presented here.

### 8.13.1 Oak Decline

A keyword set has been developed to simulate the long-term effects of oak decline in the South. Individual stands are evaluated with a risk rating system to determine the susceptibility of the stand to the disease. Oak decline mortality is invoked if a drawn random number is less than or equal to the estimated probability, or risk, in that cycle. Reductions in diameter growth and crown ratio are also simulated. The appropriate keyword set can be brought into a simulation with the ADDFILE keyword (see section 4.2.3.4) and makes heavy use of event monitor capabilities discussed elsewhere in this guide.

### 8.13.2 Gypsy Moth

A keyword set is under development to simulate the effects of Gypsy Moth outbreaks. When finished and tested, this keyword set can be brought into a simulation with the ADDFILE keyword (see section 4.2.3.4) and makes heavy use of event monitor capabilities discussed elsewhere in this guide.

# 9.0 Common Problems, Their Cause, and Solutions

Regardless of a user’s competence with FVS, occasionally simulation results will be suspect or the simulation will fail to execute completely. This section is designed to help users decipher the cryptic FVS error messages, troubleshoot the most common problems, and hopefully resolve the problem on their own.

The user needs to be aware that the following assumptions are always made by the Forest Vegetation Simulator:

1. The tree data file is always correct; the Forest Vegetation Simulator does not check the tree data file for errors. For example, FVS will accept a tree that is 400 feet tall and 2 inches in diameter as a valid input record. However, computational errors will likely result when the model tries to predict this tree’s growth.
2. Supplemental data records (those that follow some keyword records, such as STDIDENT and TREEFMT) are always coded correctly; the Forest Vegetation simulator does not check supplemental data records. For example, errors that are due to an incor­rectly specified tree data format will probably generate incorrect results and/or error messages that seem to be completely unrelated to the tree data format.

## 9.1 FVS Error and Warning Messages

The Forest Vegetation Simulator may print any of the following warning messages to the main output file. The insect, pathogen, Cover, and Fire and Fuels Extensions may print other error messages. If the warning message is not represented here, and one of these extensions is being used, the applicable user’s manual should be consulted. Some undocumented messages indicate a probable system error. All error and warning messages are also printed to the FVS\_Error table in the output database. Refer to the Users Guide to the Database Extension for details on the FVS\_Error table (Crookston et al. 2003). If a run con­tains a message that is not described in the descriptions that follow or in another appropriate manual, the FVS helpdesk user support staff at the Forest Management Service Center should be contacted.

Most errors and warnings in FVS have an associated severity, with more severe errors assigned higher numeric severity values. When an error or warning message is written, FVS generates a “stop code”. If there is more than one error or warning message written, the stop code reflects the highest severity value encountered in the entire simulation. Stop codes can have values of 10 (least severe), 20, 30, or 40 (most severe). If a stop code was generated during a simulation it is written to the terminal screen if the SCREEN keyword record has been included in the simulation. It is the last thing written to the screen for a simulation, and is of the format “STOP XX”, where XX represents the stop code. The severity values included in the descriptions below indicate the associated stop code that would be generated if this were the most severe problem encountered during the entire simulation.

**FVS01 ERROR: INVALID KEYWORD WAS SPECIFIED. RECORDS READ = XXXX**

*Program Action*

If the Forest Vegetation Simulator cannot interpret a keyword, the keyword is ignored. The unrecognized keyword is shown just above this error message in the output file. Error severity = 20.

*User Response*

The most likely cause of this error is that the keyword has been misspelled or the keyword name does not begin in column 1. Find the incorrect keyword, correct it, and rerun the projection. If using a version of the model that contains one or more extensions (such as, the Fire and Fuels extension, or mountain pine beetle insect model), or the regeneration establishment feature or event monitor is being used, it is possible to get this error message when a valid keyword is specified but is placed in the incorrect position in the keyword record sequence. For example, the PLANT keyword needs to be inside an ESTAB – END keyword sequence so FVS knows it is a regeneration establishment model keyword. As another example, the ENDIF keyword record must be preceded by an IF keyword record.

**FVS02 ERROR: NO “STOP” RECORD IN KEYWORD FILE; RECORDS READ = XXXX; END-OF-FILE.**

*Program Action*

The projection is terminated. Error severity = 20.

*User Response*

If this error occurs after the desired projection is over, no further action is needed.

If the message is printed before the projection is over, the probable error is the mis­placement of an end-of-file indicator in the keyword record file. Remove the misplaced end-of-file indicator, insert a STOP keyword record at the end of the keyword record file if it is missing, and rerun the projection.

**FVS03 WARNING: FOREST CODE INDICATES THE GEOGRAPHIC LOCATION IS OUTSIDE THE RANGE OF THE MODEL. DEFAULT CODE IS USED.**

*Program Action*

The FVS growth models use the nearest National Forest to identify geographic location. When the forest code is incorrectly specified or missing from the STDINFO keyword, a National Forest central to the geographical range of the variant being using is assumed. No severity is assigned to this warning.

*User Response*

The variant overview document should be consulted for valid National Forest codes. The most applicable forest code should be chosen and entered on the STDINFO keyword record. If an FVS GUI program is being used, the code may be entered with the stand-level information in the input data file, and it will be written to the STDINFO keyword. If the default code is most applicable, no response is necessary.

**FVS04 ERROR: A REQUIRED PARAMETER IS MISSING OR A PARAMETER IS INCORRECT; KEYWORD IGNORED.**

*Program Action*

Supplemental information regarding the keyword record precedes this er­ror message. Error severity = 20.

*User Response*

Some keyword records require that one or more parameters be specified and that they are within a particular range of values. For example, the model will not run for more than 40 cycles; therefore, coding 50 in field 1 of the NUMCYCLE record will result in an error. Note that incorrectly entering numeric data can easily result in a value being out of range. The value “20” entered in field 1 of the NUMCYCLE record will be read by the program as “200” if the “2” is in column 18 and the “0” is not followed by a decimal point. The parameters entered on the offending keyword should be examined. Common errors include: integer values that are not right justified in the 10 column parameter fields; real values that are not within the appropriate 10 column parameter field; alpha species codes that are incorrect for the variant being used; a species group name referenced before the species group has been defined; parameter values that are outside the allowable range for that parameter; parameter expressions that are incorrectly specified or missing when using the PARMS feature; expressions that are too long (see FVS05 ERROR). The problem should be corrected and the projection should be rerun.

**FVS05 ERROR: EXPRESSION IS TOO LONG.**

*Program Action*

The Forest Vegetation Simulator limits user-defined expressions to be 2000 characters or less in length. Expressions that are longer than 2000 characters generate this error message, the expression is ignored, and processing continues. Supplemental information regarding the specified keyword record precedes this error message. Error severity = 20.

*User Response*

Shorten the expression by breaking it into two or more separate expressions, or by making better use of event monitor functions and variables, and the projection should be rerun.

**FVS06 ERROR: KEYWORD RECORD WAS INCORRECTLY READ. RECORDS READ= XXXX**

*Program Action*

The record is ignored; supplemental information regarding the specified keyword record precedes this error message. Error severity = 20.

*User Response*

This error message appears to be obsolete. If a user encounters this message, they should look for obvious errors, rerun the projection, and report the error to the FVS helpdesk.

**FVS07 WARNING: A TREEFMT OR SPCODES RECORD FOLLOWS A TREEDATA RECORD.**

*Program Action*

The Forest Vegetation Simulator continues processing. Warning severity = 10.

*User Response*

This warning is caused by misplacing a TREEDATA record before a SPCODES or TREEFMT record. The keyword record file should be checked to assure that TREEFMT, SPCODES, and TREEDATA records are in the proper order. Users should also assure that the dataset reference number on the TREEDATA record is correctly referencing the correct tree record file.

**FVS08 WARNING: TOO FEW PROJECTABLE TREE RECORDS. PROJECTABLE RECORDS: XX; TREE RECORDS: XXXX; STAND ID: XXXXXXXX**

*Program Action*

This warning occurs when, the tree data have been read, a PROCESS record is en­countered, and no projectable tree records have been read. Projectable tree records are those for live trees with the species and DBH specified. If there are no projectable tree records, the projection of this stand is terminated; however, the next stand in the sequence will be projected (if running multiple stands). Warning severity = 10.

*User Response*

The most probable cause is attempting to project a very small stand. The stand may have to be deleted from the analysis or combined with an adjacent stand. Two TREEDATA keyword records may be used to combine stands.

If the warning message indicates that several tree records were read but the Forest Vegetation simulator accepted none, the most probable causes are that all the trees are dead, the tree data format has been incorrectly specified, or the TREEFMT has been placed after the TREEDATA keyword.

**FVS09 WARNING: PLOT COUNTS DO NOT MATCH DATA ON THE DESIGN RECORD; DESIGN RECORD DATA USED. PLOT COUNT = XXXX; NONSTOCKABLE COUNT = XXXX**

*Program Action*

The Forest Vegetation Simulator uses the plot count to calculate the trees per acre represented by each tree record. The nonstockable count deducts nonstockable points (such as, rock out­croppings and roads) from the stand area for density calculations. This warning message is printed when either the plot count or nonstockable count determined from reading the tree data records differs from the values coded on the DESIGN record. Warning severity = 10.

*User Response*

Check the trees/acre values as printed in the stand composition and sample tree record tables. If the output is acceptable, no response is necessary. For example, if the tree data input file contains the trees per acre representation of each tree record expanded to a per acre basis but retains unique plot identifications on the records, and then indicates the data is from a 1-acre fixed plot, this warning message will be printed, but can be ignored.

One probable cause of incorrect plot counting is incorrectly specifying the tree data for­mat thus causing the model to read the plot identifications from the wrong columns. A TREEDATA keyword record that precedes a TREEFMT keyword record is another possible cause.

**FVS10 ERROR: OPTION/ACTIVITY STORAGE AREA IS FULL; REQUEST(S) IGNORED.**

*Program Action*

If the storage area that holds activities that are specified to occur at a specified date or cycle (such as, thinning requests) is full when options are specified, the program ignores the keyword records and continues processing. Note that there may be occasions when this error is printed during the projection; in this case, the overfilling was a result of the program attempting to dynamically schedule activities. Error severity = 20.

*User Response*

The program can hold 4,000 activities, nearly 8,000 activity parameters, and 399 user-defined variables per simulation. Limit the number of activities to stay within the memory bounds of the program. In many cases, keyword record files can be rewritten to drastically reduce storage area requirements.

**FVS11 ERROR: REQUESTED EXTENSION IS NOT PART OF THIS PROGRAM.**

*Program Action*

Information regarding the extension-specific keyword precedes this error message. The Forest Vegetation Simulator ignores the keyword and continues processing. Usually, several FVS01 (invalid keyword) error messages follow this error because most extensions require their own set of keywords. Error severity = 30.

*User Response*

Some extensions to FVS are not available for all geographic areas. For example, for the eastern variants the mountain pine beetle extension is not available. The keyword file should to be changed to remove keywords associated with the missing extension and the projection should be rerun.

**FVS12 ERROR: ERROR COMPILING EXPRESSION RENDERS IT USELESS. IT WILL BE IGNORED.**

*Program Action*

Information regarding the invalid expression precedes this error message. The Forest Vegetation Simulator ignores the expression and processing continues. Error severity = 20.

*User Response*

This error message usually signifies a syntax error in an event monitor expression. Check the offending expression carefully. Look for unmatched parenthesis, illegal characters, illegal file names, etc. Correct any mistakes and rerun the projection.

**FVS13 ERROR: THE MAXIMUM NUMBER OF USABLE TREE RECORDS HAVE BEEN PROCESSED. NUMBER READ = XXXX; PLOT COUNT = XXX**

*Program Action*

The Forest Vegetation Simulator can handle 3,000 projectable tree records and 500 plots from a given stand. When either of these values is exceeded the projection is terminated. Error severity = 20.

*User Response*

If the plot count is exceeded but the tree record count is not, the probable causes are an incorrectly specified tree data format or the occurrence of a TREEDATA keyword record before the TREEFMT keyword record (see FVS07 ERROR). Either can cause the plot identification codes to be read from the wrong columns of the tree records. In some cases, the format is accurate—the stand simply has over 500 plots. In these cases, two options are available:

The format specification can be changed to read the plot identification from a blank or constant column on the tree records. Then the actual plot count is specified on the DESIGN record. This will generate the warning message FVS09, but in this case that message can be ignored.

A sample can be drawn from the plot list and only the sampled plots projected.

If the tree record count is too high, the stand may have to be split. One technique is to systematically select plots for deletion from the tree record file.

**FVS14 WARNING: HABITAT/PLANT ASSOCIATION/ECOREGION CODE WAS NOT RECOGNIZED; HABITAT/PLANT ASSOCIATION/ECOREGION SET TO DEFAULT CODE.**

*Program Action*

The Forest Vegetation Simulator did not recognize the habitat type, plant association, or ecoregion code that was entered on the STDINFO keyword. The model uses the default value and continues processing. Warning severity = 10.

*User Response*

Check the variant overview document for valid codes for the variant being used. In some variants, habitat type does not affect projections, in others it does. The value should be corrected if necessary and the projection should be rerun. If an FVS GUI program is being used, the code is read from the stand-level information in the input data file and is automatically written to the STDINFO record. The invalid code should be changed in the input data file.

**FVS15 ERROR: ATTEMPT TO REDEFINE A RESERVED VARIABLE. EXPRESSION IGNORED.**

*Program Action*

Information regarding the invalid expression precedes this error message. The Forest Vegetation Simulator ignores the expression and processing continues. Error severity = 20.

*User Response*

The most common cause of this error message is a user using one of the variables shown in section 5.5.2.2 on the left-hand side of an equals sign. Examine the offending expression, change the variable name, and rerun the projection.

**FVS16 ERROR: KEYWORD ENTERED IS USED IN WRONG CONTEXT AND WAS IGNORED. RECORDS READ = XXXX**

*Program Action*

Information regarding the keyword record precedes this error message. The Forest Vegetation Simulator ignores the keyword record and processing continues. Error severity = 20.

*User Response*

This type of error typically occurs when something is out of order in an Event Monitor sequence. For example, if the condition statement is missing or incorrect. This error is typically seen along with FVS12. Examine the offending Event Monitor sequence, correct as necessary, and rerun the projection.

**FVS17 ERROR: EVENT MONITOR STORAGE AREA IS FULL.**

*Program Action*

The Forest Vegetation Simulator ignores the expression and processing continues. Error severity = 20.

*User Response*

The Forest Vegetation Simulator can accommodate up to 160 activity groups in any projection. An IF-THEN-ENDIF sequence counts as one activity group; an ALSOTRY counts as an activity group. If this error is encountered, users must somehow reduce the number of activity groups in the run. Condensing two or more activity groups into one by judicious use of the Event Monitor can frequently do this. Another cause is scheduling activity groups every cycle when they really don’t need to be.

**FVS18 ERROR: ATTEMPT TO SCHEDULE A GROUP OF ACTIVITIES FAILED.**

*Program Action*

The Forest Vegetation Simulator ignores the expression and processing continues. Error severity = 30.

*User Response*

This type of error occurs when the Event Monitor is trying to schedule an event and there is not enough space in the activity arrays (see FVS17) or the Event Monitor cannot link a scheduled activity to an activity group. In either case, users need to examine the offending Event Monitor sequence, correct as necessary, and rerun the projection.

**FVS19 ERROR: INCORRECT RECORD TYPE OR END OF DATA FOUND WHILE READING SAMPLE TREE SCRATCH FILE.**

*Program Action*

The projection of the stand is terminated. Error severity = 40.

*User Response*

This error occurs when the Forest Vegetation Simulator is trying to generate the Tree and Stand Attributes Table (see section 4.3.1.3) and prematurely encounters the end of the data, or encounters records that are other than those expected. Problems that generate this error may be difficult for users to diagnose. Refer these problems to the FVS hot-line for assistance.

**FVS20 WARNING: SAMPLE TREE AND STAND ATTRIBUTE TABLE SCRATCH FILE IS EMPTY; TABLE NOT PRINTED.**

*Program Action*

The Forest Vegetation Simulator suppresses printing of the Tree and Stand Attributes Table (see section 4.3.1.3) and processing continues. Warning severity = 10.

*User Response*

This type of warning occurs when the first thing FVS encounters when reading the associated scratch file is an end-of-file marker. This usually just means that sample trees were not selected and the warning can be ignored.

**FVS21 ERROR: AN EXPRESSION WAS INCORRECTLY COMPUTED; ANSWER IS IGNORED.**

*Program Action*

The Forest Vegetation Simulator ignores the expression and processing continues. Error severity = 20.

*User Response*

This type of error usually occurs when an Event Monitor sequence references an undefined variable, or the expression is attempting to divide by zero. Examine the offending expression, correct as necessary, and rerun the projection.

**FVS22 ERROR: OVER 9 ALTERNATIVE ACTIVITY GROUPS SPECIFIED, CURRENT GROUP MAY NOT BE SCHEDULED.**

*Program Action*

The Forest Vegetation Simulator ignores additional activity groups and processing continues. Error severity = 20.

*User Response*

This error occurs when using an IF-THEN-ALSOTRY-ENDIF construct in the Event Monitor and more than 9 activity groups are specified (1 THEN keyword and more than 8 ALSOTRY keywords between the IF and the ENDIF keywords). Break into smaller groups and rerun the projection.

**FVS23 WARNING: PLANT ASSOCIATION (FIELD 2) NOT RECOGNIZED.**

*Program Action*

The Forest Vegetation Simulator did not recognize the plant association that was entered on the STDINFO keyword. The model uses the default value and continues processing. Warning severity = 10.

*User Response*

Check the variant overview document for valid codes for the variant being used. In some variants, plant association does not affect projections, in others it does. The value should be corrected if necessary and the projection should be rerun. If an FVS GUI program is being used, the code is read from the stand-level information in the input data file and is automatically written to the STDINFO record. The invalid code should be changed in the input data file.

**FVS24 WARNING: MODEL TYPE (FIELD 2) NOT RECOGNIZED.**

This error message is now obsolete and should not be encountered.

*Program Action*

The Forest Vegetation Simulator does not recognize the model type that was entered on the MODTYPE keyword. The model uses the default value and continues processing. Warning severity = 10.

*User Response*

Check the variant overview document for valid codes for the variant being used. In some variants, model type does not affect projections, in others it does. The value should be corrected if necessary and the projection should be rerun.

**FVS25 ERROR: INCORRECT USE/PLACEMENT OF PARMS; KEYWORD IGNORED.**

*Program Action*

Information regarding the keyword record precedes this error message. The Forest Vegetation Simulator ignores the keyword and processing continues. Error severity = 20.

*User Response*

When using the PARMS feature to code keywords, the “P” in PARMS must start between columns 21 and 30 of the keyword record. See section 6.1 for additional rules. Examine the offending PARMS statement, correct as necessary, and rerun the projection.

**FVS26 ERROR: GENERAL REPORTS SCRATCH FILE CANNOT BE OPENED.**

*Program Action*

The Forest Vegetation Simulator does not open the file and processing continues. Error severity = 30.

*User Response*

Refer this error to the FVS helpdesk.

**FVS27 WARNING: CALCULATED CALIBRATION VALUE OUTSIDE REASONABLE RANGE. CALIBRATION OF THIS SPECIES IS BEING TURNED OFF.**

*Program Action*

The Forest Vegetation Simulator turns off calibration of the large-tree diameter growth model, or the small tree-height growth model, for this species and processing continues. Error severity = 20.

*User Response*

This error occurs when either the large-tree diameter growth, or small-tree height growth, calibration value computed from the input data exceeds 2.5 standard deviations from the expected mean calibration value for this species. This is usually caused by an error in the input data. Check the input site index values, habitat type, diameter growth values, height growth values, and tree history codes. Correct any errors and rerun the simulation. If no errors are spotted, refer this error to the FVS helpdesk.

**FVS28 ERROR: MAXIMUM NUMBER OF 30 SPECIES GROUPS HAS ALREADY BEEN DEFINED; KEYWORD IGNORED.**

*Program Action*

The Forest Vegetation Simulator ignores the keyword and processing continues. Error severity = 20.

*User Response*

Reduce the number of defined species groups to 10 or less and rerun the simulation.

**FVS29 ERROR: A SPECIES CODE WAS NOT RECOGNIZED. THIS SPECIES WILL BE IGNORED.**

*Program Action*

The Forest Vegetation Simulator does not include the species in the species group and processing continues. Error severity = 20.

*User Response*

This error occurs when a user defines a species group using the SPGROUP keyword record and one of the species codes on the supplemental record is not recognized. Check the species codes on the supplemental record and make sure they correspond to the appropriate 2-character alpha code or FVS numeric species number for your variant. The recognized codes can be found in Appendix A of the Keyword Guide or in the variant overview. Correct any errors and rerun the simulation.

**FVS30 ERROR: KEYWORD WAS USED OUT OF REQUIRED SEQUENCE AND IS IGNORED.**

*Program Action*

Information regarding the keyword record precedes this error message. The Forest Vegetation Simulator ignores the keyword and processing continues. Error severity = 20.

*User Response*

This error occurs when keywords that must appear in a particular order in the simulation are not in that order. Examine the keyword sequence, correct as necessary, and rerun the projection.

**FVS31 ERROR: .KCP OR .ADD FILE CAN NOT BE OPENED.**

*Program Action*

The Forest Vegetation Simulator ignores the keyword and processing continues. Error severity = 20.

*User Response*

This error occurs when a user tries to include auxiliary keywords stored in an external file into a simulation run using the OPEN and ADDFILE keyword records. Check on your computer to make sure the file exists. Then check the specified pathname on the supplemental record and make sure it matches where the file is stored on your computer. Correct any errors and rerun the simulation.

**FVS32 WARNING: PV REFERENCE CODE WAS NOT RECOGNIZED; HABITAT/PLANT ASSOCIATION/ECOREGION SET TO DEFAULT CODE.**

*Program Action*

The Forest Vegetation Simulator did not recognize the PV reference code that was entered on the STDINFO keyword. The model uses the default value and continues processing. Warning severity = 10.

*User Response*

Check the variant overview document for valid codes for the variant being used. In some variants, habitat type/plant association/ecoregion does not affect projections, in others it does. The value should be corrected if necessary and the projection should be rerun. If an FVS GUI program is being used, the reference code is read from the stand-level information in the input data file and is automatically written to the STDINFO record. The invalid code should be changed in the input data file.

**FVS33 WARNING: PV CODE WAS NOT RECOGNIZED; HABITAT/PLANT ASSOCIATION/ECOREGION SET TO DEFAULT CODE.**

*Program Action*

The Forest Vegetation Simulator did not recognize the PV code that was entered on the STDINFO keyword. The model uses the default value and continues processing. Warning severity = 10.

*User Response*

Check the variant overview document for valid codes for the variant being used. In some variants, habitat type/plant association/ecoregion does not affect projections, in others it does. The value should be corrected if necessary and the projection should be rerun. If an FVS GUI program is being used, the code is read from the stand-level information in the input data file and is automatically written to the STDINFO record. The invalid code should be changed in the input data file.

**FVS34 WARNING: PV CODE/PV REFERENCE CODE COMBINATION WAS NOT RECOGNIZED; HABITAT/PLANT ASSOCIATION/ECOREGION SET TO DEFAULT CODE.**

*Program Action*

The PV code and PV reference code entered on the STDINFO keyword are valid codes, but the Forest Vegetation Simulator did not recognize the combination of the two. The model uses default values and continues processing. Warning severity = 10.

*User Response*

Check the variant overview document for valid codes for the variant being used. In some variants, habitat type/plant association/ecoregion does not affect projections, in others it does. The values should be corrected if necessary and the projection should be rerun. If an FVS GUI program is being used, the codes are read from the stand-level information in the input data file and are automatically written to the STDINFO record. The invalid code should be changed in the input data file.

**FVS35 WARNING: THE NUMBER OF NONSTOCKABLE PLOTS EQUALS THE TOTAL NUMBER OF PLOTS. NUMBER OF NONSTOCKABLE PLOTS SET TO ZERO.**

*Program Action*

The Forest Vegetation Simulator uses the plot count to calculate the trees per acre represented by each tree record. The nonstockable count deducts nonstockable points (such as rock out­croppings and roads) from the stand area for density calculations. This warning message is printed when the plot count equals the nonstockable count as determined from the values coded on the DESIGN record or the input database file. This would result in a stockability of zero, meaning the stand can not support trees. The number of nonstockable plots is set to zero and processing continues. Warning severity = 10.

*User Response*

Check the trees/acre values as printed in the stand composition and sample tree record tables. If the output is acceptable, no response is necessary.

One probable cause of incorrect nonstockable plot counting is incorrectly coding the number of stockable plots, as opposed to nonstockable plots, on the DESIGN keyword or in the input database file.

**FVS36 WARNING: EXCESSIVE TREE HEIGHT: UNABLE TO CALCULATE VOLUME FOR TREE RECORD, VOLUME SET TO ZERO.**

*Program Action*

The Forest Vegetation Simulator calculates zero volume for the specified tree and processing continues. Warning severity = 10.

*User Response*

Check the input tree height and tree diameter values. Correct any errors and rerun the simulation.

**FVS37 ERROR: MAXIMUM NUMBER OF 30 POINT GROUPS HAS ALREADY BEEN DEFINED; KEYWORD IGNORED.**

*Program Action*

The Forest Vegetation Simulator ignores the keyword and processing continues. Error severity = 20.

*User Response*

Reduce the number of defined point groups to 30 or less and rerun the simulation.

**FVS38 ERROR: MORE PLOTS FOUND IN TREE DATA THAN SPECIFIED IN STAND DATA; PROJECTION TERMINATED.**

*Program Action*

The Forest Vegetation Simulator will terminates the simulation. Error severity = 30.

*User Response*

Correct the input data regarding the number of plots specified in the stand data or the plot numbers in the tree data. Perhaps tree records for a plot was included in the stand that should not have been.

**FVS39 WARNING: USER DEFINED VARIABLE NAME CONTAINS INVALID SPECIAL CHARACTERS. EQUATION IGNORED.**

*Program Action*

The Forest Vegetation Simulator ignores the equation and processing continues. Error severity = 10.

*User Response*

Correct the variable name and avoid use of invalid special characters. The \_(underscore) and $ (dollar sign) are the only valid special characters for use in variable names.

**NO FILE CONNECTED TO UNIT**

*Program Action*

The Forest Vegetation Simulator projection is terminated.

*User Response*

This error occurs when the Forest Vegetation Simulator attempts to read from, or write to, a file for which a file reference unit number has not been defined. For example, the Fire and Fuels Extension SNAGOUT keyword requires that a file reference number be entered in field 4. This file should also be referenced with an OPEN keyword (see section 4.2.3.1) to link the file name with the file reference unit. If either of these steps is omitted, this error will occur. The correct sequence to write the snag output table to a file named SNAG.OUT would be:

OPEN 40
SNAG.OUT
FMIN
SNAGOUT ~~b~~ ~~b~~ ~~b~~ 40
END

**FVS40 WARNING: TREE RECORD REPRESENTING GREATER THAN 1000 TPA ENCOUNTERED. MAY CAUSE MATHEMATICAL ERRORS.**

*Program Action*

The Forest Vegetation Simulator Projection continues. Warning severity = 10.

*User Response*

Verify that the input data is valid. Note that tree records representing an extraordinarily large TPA can limit variability in growth and mortality in projections. Consider splitting extraordinarily large single input records into multiple records representing the same TPA of the original record.

**FVS41 WARNING: INITIAL STAND STOCKING OF xxx TREES/ACRE IS MORE THAN 5% ABOVE THE UPPER LIMIT OF xxx TREES/ACRE. UPPER LIMIT IS BASED ON A SDI MAXIMUM OF xxx AND AN UPPER BOUND OF xxx PERCENT OF MAXIMUM. MAXIMUM SDI BEING RESET TO xxx FOR FURTHER PROCESSING.**

*Program Action*

The Forest Vegetation Simulator resets the maximum Stand Density Index and processing continues. Warning severity = 10.

*User Response*

If this warning message is encountered, the variant used has an SDI based mortality model (see section 7.3.2), and the initial stand stocking is above the maximum SDI that is in effect at the beginning of the projection. The SDI maximums printed for each species in the “Options Selected by Default” section, right after the keyword echoing, in the main output file should be checked. If these are not correct, then correct values should be set using the SDIMAX keyword record. If these are correct, the trees per acre and other stand values in the summary output file should be checked. If these are too high, then there was a problem reading the tree data records. Check the DESIGN keyword specification and the TREEFMT specification, correct any problems, and rerun the projection. If all of these things seem to be correct, then the projection is probably okay. If there are further concerns, contact the FVS helpdesk for assistance.

**FVS42 WARNING: IMPROPER FILED INPUT IDENTIFIED. DEFAULT VALUE FOR FIELD WILL BE USED.**

*Program Action*

The Forest Vegetation Simulator uses a default value and processing continues. Warning severity = 10.

*User Response*

If this warning message is encountered, user should verify accuracy of keyword inputs.

**FVS43 WARNING: FIAVBC REQUESTED BUT ECODIVISION CODE NOT RECOGNIZED OR MISSING. USING ‘0000’ BY DEFAULT**

*Program Action*

The Forest Vegetation Simulator uses a default value (‘0000’) for the Ecodivision, and processing continues. Warning severity = 10.

*User Response*

If this warning message is encountered, user should ensure a valid ecodivision code is input either in the FVS\_StandInit (FVS\_PlotInit) table through the ‘Ecoregion’ column or through the STDINFO keyword.

**FVS44 WARNING: STATE CODE MISSING FROM INPUT. DEFAULT WOODLAND VOLUME EQUATIONS WILL BE USED FOR FIAVBC.**

*Program Action*

The Forest Vegetation Simulator will not select state specific woodland species volume equations and will instead use a default equation when the FIAVBC keyword is active. Warning severity = 10.

*User Response*

If this warning message is encountered, users should verify that a valid FIA state code is input in the FVS\_StandInit (FVS\_PlotInit) table through the ‘State’ column or through the LOCATE keyword.

**FVS45 WARNING: BFVOLEQU KEYWORD NO LONGER ACTIVE**

*Program Action*

The Forest Vegetation Simulator ignores keyword request and processing continues. Warning severity = 10.

*User Response*

If this warning message is encountered, users should remove the BFVOLEQU keyword from their .key file. If there are further concerns, contact the FVS helpdesk for assistance.

**FVS46 WARNING: CFVOLEQU KEYWORD NO LONGER ACTIVE**

*Program Action*

The Forest Vegetation Simulator ignores keyword request and processing continues. Warning severity = 10.

*User Response*

If this warning message is encountered, users should remove the CFVOLEQU keyword from their .key file. If there are further concerns, contact the FVS helpdesk for assistance.

**FVS47 WARNING: A DEPRECATED BOARD-FOOT VOLUME COMPUTATION METHOD HAS BEEN REQUESTED. METHOD CODE 6 (NATIONAL VOLUME ESTIMATOR LIBRARY) WIL BE USED BY DEFAULT**

*Program Action*

The Forest Vegetation Simulator will used method code 6 for board-foot volume computation and continue processing. Warning severity = 10.

*User Response*

If this warning message is encountered, users should check their requested method code in the BFVOLUME keyword. If there are further concerns, contact the FVS helpdesk for assistance.

**FVS48 WARNING: A DEPRECATED CUBIC FOOT VOLUME COMPUTATION METHOD HAS BEEN REQUESTED. METHOD CODE 6 (NATIONAL VOLUME ESTIMATOR LIBRARY) WIL BE USED BY DEFAULT**

*Program Action*

The Forest Vegetation Simulator will used method code 6 for cubic foot volume computation and continue processing. Warning severity = 10.

*User Response*

If this warning message is encountered, users should check their requested method code in the VOLUME keyword. If there are further concerns, contact the FVS helpdesk for assistance.

**FVS49 WARNING: VOLUME KEYWORD HAS BEEN RECOGNIZED BUT HAS BEEN DEACTIVED BY A PREVIOUS CALL TO USE FIAVBC FOR COMPUTATION OF CUBIC FOOT VOLUMES**

*Program Action*

The Forest Vegetation Simulator will ignore the keyword and continue processing. Warning severity = 10.

*User Response*

The VOLUME keyword cannot be used in a keyword set in conjunction with the FIAVBC keyword. If this warning message is encountered, users should remove the VOLUME keyword from the simulation.

**FVS50 WARNING: DEFECT / MCDEFECT / MCFDLN KEYWORD HAS BEEN RECOGNIZED BUT HAS BEEN DEACTIVATED BY A PREVIOUS CALL TO USE FIAVBC 'FOR COMPUTATION OF CUBIC FOOT VOLUMES. SETTING BOARD FOOT VALUES WITH DEFECT KEYWORD IS PERMITTED.**

*Program Action*

The Forest Vegetation Simulator will ignore keywords that attempt to alter cubic foot volume defect modifications and continue processing. Warning severity = 10.

*User Response*

When using the FIAVBC keyword, cubic foot volume defects can only be input through the FVS\_TreeInit table via the CULL column. The keywords DEFECT, MCDEFECT, and MCFDLN should not be used to attempt to input cubic foot volume defects when the FIAVBC keyword is used in the same simulation. If there are further concerns, contact the FVS helpdesk for assistance.

**FVS51 WARNING: BFFDLN KEYWORD HAS BEEN RECOGNIZED. DUE A PREVIOUS CALL TO USE FIAVBC, BFFDLN WILL ONLY APPLY TO COMPUTATION OF BOARD FOOT VOLUMES BUT WILL NOT AFFECT CUBIC SAWLOG VOLUMES**

*Program Action*

The Forest Vegetation Simulator will apply the requested defect to board foot volumes only. Processing continues normally. Warning severity = 10

*User Response*

When using the FIAVBC keyword, cubic foot volume defects can only be input through the FVS\_TreeInit table via the CULL column. The keyword BFFDLN should not be used to input cubic foot volume defects when the FIAVBC keyword is used in the same simulation. The input of board foot volume defect via the BFFDLN keyword is still permitted when the FIAVBC keyword is used in a simulation. If there are further concerns, contact the FVS helpdesk for assistance.

**FVS52 WARNING: USE OF DATABASE KEYWORDS VBCSUMDB, VBCTRLDB, VBCCUTDB, VBCATRDB MUST INCLUDE USE OF BASE KEYWORD FIAVBC.**

*Program Action*

The Forest Vegetation Simulator will not generate the requested table and continue processing. Warning severity = 20

User Response

If this warning message is encountered, users should include the FIAVBC keyword in any simulation that requests specific FIAVBC tables. If there are further concerns, contact the FVS helpdesk for assistance.

**FVS53 WARNING: INVALID ATTEMPT TO SET SCUFT IN MINHARV KEYWORD.  VALUE WILL BE IGNORED.**

*Program Action*

The Forest Vegetation Simulator will ignore cubic sawlog volume limit requests from the MINHARV keyword and continue to process. Warning severity = 10

*User Response*

Use of cubic sawlog minimum harvest limits is not supported in western variants when using standard volume computation methods (method code 6). Users of western variants should either use FIAVBC keyword in conjunction with requests to set cubic sawlog minimum harvest requirements or remove the request to set cubic sawlog minimum harvest values.

## 9.2 Other Common Mistakes

Values may be encountered in the FVS output files that are obviously wrong, or the output may not be exactly what was intended, and no warning or error messages have been printed. These cases are usually caused by data input or keyword errors and are easy to correct. Some of the most common errors are shown below.

**All the trees show up as species “OT” or other**

This problem results from the Forest Vegetation Simulator not recognizing the tree species code on the tree data input records. The variant overview document should be checked to see that the codes being using are the ones recognized by the model. If they aren’t, then either correct the codes, or use the SPCODES keyword (see section 4.2.3.3) to tell the model which codes to use. If the species codes are correct, then the problem is in the tree data format specification (see TREEFMT record). Correct any problems and rerun the projection.

**The trees per acre and other stand attributes do not match the stand inventory**

These problems result from an error on the sampling design information (DESIGN keyword record, which an FVS GUI program creates automatically from stand-level input data), or an error on the tree data format specification (TREEFMT keyword record), or errors in the data file itself. Look at the first two lines in the Calibration Statistics table. If either the number of records per species or the number of mortality records per species is incorrect, examine the species codes, data format, and tree history codes. If these values are correct, then the problem is either in the design specification or the trees per acre values on the tree data input records (see “PROB” variable in section 4.2.1). Correct any problems and rerun the projection.

**The trees are growing too fast (or slow)**

These problems can result from a number of sources. First, the scale factors for the large-tree diameter growth model and the small-tree height growth model should be checked. These are shown in the Calibration Statistics section of the main output file. These values should be in the range (0.5 – 2.0) for all species. If the scale factors are outside the range indicated, check the diameter and height growth values in the tree data input file to see if they are reasonable. The values of the stand parameters (STDINFO keyword) in the keyword section of the output file should be checked. The site index values printed in the “Options Selected by Default” section of the main output file should be checked. If the SITECODE keyword was included by the user, verify that the site index reference and the base ages used for the site index values match those in the variant overview. Correct any problems and rerun the projection. If an FVS GUI program is being used, corrections may need to be made in the input data file. If none of these checks reveal any problems, contact the FVS helpdesk for further assistance.

**None of the management activities are simulated**

The Activity Schedule section of the main output file should be checked. If activities are scheduled by year or cycle and these activities do not appear in this table, then the problem is likely the result of an inconsistency between the inventory year, and the year or cycle in which the activities are scheduled. Either the INVYEAR keyword record was not specified and a year is used in the date/cycle field of the keyword records, or an INVYEAR keyword record was specified and a cycle number is used in the date/cycle field, or the year is outside the projection interval. Correct the inconsistency and rerun the projection.

If the activities are shown in this table, but not being done, then conditions in the simulation are not allowing the activities. For example, the user schedules a thin to a basal area target of 100 square feet, but there isn’t 100 square feet of basal area in the target class. This is not necessarily a problem. The specifications on any management activity keywords should be checked. Any problems should be corrected and the projection should be rerun, if necessary.

If activities are being scheduled conditionally (see section 5.5) they will not appear in the Activity Schedule. If they also do not appear in the Activity Summary, then either the condition was never met or there is an error in the condition statement. If conditionally scheduled activities appear in the Activity Summary as DELETED or CANCELED, then conditions in the simulation are not allowing the activity to be done, as described above.

**The projection looks okay, but the stand table post-processor program shows twice as many trees as the main output file, or the tree list output file has duplicate cycles in it**

This problem is caused by multiple TREELIST keywords for the same cycle. Often users insert a TREELIST keyword indicating a “0” in the first field (i.e., a tree list for all cycles) and then include another TREELIST keyword for a specific cycle. Eliminate duplications and rerun the projection.

## 9.3 Forest Vegetation Simulator Problem Determination

The remaining options relate to determining causes of program malfunctions. This section is mainly intended for persons maintaining FVS code. To trace these problems, many output statements that report the results of intermediate calculations on a tree-by-tree basis have been added to the computer code. These special output statements can be invoked with the DEBUG keyword record in any or all cycles. However, this output is most useful when examined in conjunction with a listing of the computer code. The NODEBUG keyword can be used to turn off this output. The DEBUG option generates a great deal of output.

# 10.0 Literature Cited

Arner, S. L.; Woudenberg, S.; Waters, S.; Vissage, J; MacLean, C.; Thompson, M.; Hansen, M. 2001. National algorithm for determining stocking class, stand size class, and forest type for Forest Inventory and Analysis plots. Internal Rep. Newtown Square, PA: U. S. Department of Agriculture, Forest Service, Northeastern Research Station. 10p.

Assmann, E. 1970. The principles of forest yield study. Pergamon Press, Oxford. 506 p.

Behre, C. E. 1927. Form class taper tables and volume tables and their application. J.Agric. Res. 35673-744.

Brookes, M. H.; Stark, R. W.; Campbell, R. W. eds. 1978. The Douglas-fir tussock moth: a synthesis. Tech. Bull. 1585. Washington, DC: U. S. Department of Agriculture, Forest Service. 331p.

Buchman, R. G. 1983. Survival predictions for major Lake States tree species. Res. Pap. NC-233. St. Paul, MN: U. S. Department of Agriculture, Forest Service, North Central Forest Experiment Station. 7p.

Buchman, R. G.; Pederson, S. P.; Walters, N. R. 1983. A tree survival model with application to species of the Great Lakes Region. Can. J. For. 13(4): 601-608.

Buchman, R. G.; Lentz, E. L. 1984. More Lake States tree survival predictions. Res. Note NC-312. St. Paul, MN: U. S. Department of Agriculture, Forest Service, North Central Forest Experiment Station. 6p.

Burrill, Elizabeth A.; DiTommaso, Andrea M.; Turner, Jeffery A.; Pugh, Scott A.; Christensen, Glenn; Kralicek, Karin M.; Perry, Carol J.; Lepine, Lucie C.; Walker, David M.; Conkling, Barbara L. 2024. The Forest Inventory and Analysis Database, FIADB user guides, volume: database description (version 9.3), nationwide forest inventory (NFI). U.S. Department of Agriculture, Forest Service. 1026 p. [Online]. Available at web address: https://research.fs.usda.gov/understory/forest-inventory-and-analysis-database-user-guide -nfi

Burnell, D. G. 1977. A dispersal-aggregation model for mountain pine beetle in lodgepole pine stands. Res. Popul. Ecol. 19:99-106

Byrne, J. C.; Stage, A. R. 1988. A data structure for describing sampling designs to aid in compilation of stand attributes. Res. Pap. INT-247. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 20p.

Cleland, D.T.; Freeouf, J.A.; Keys, J.E.; Nowacki, G.J.; Carpenter, C.A.; and McNab, W.H. 2007. Ecological Subregions: Sections and Subsections for the conterminous United States. Gen. Tech. Report WO-76D [Map on CD-ROM] (A.M. Sloan, cartographer). Washington, DC: U.S. Department of Agriculture, Forest Service, presentation scale 1:3,500,000; colored.

Cole, D. M.; Stage, A. R. 1972. Estimating future diameters of lodgepole pine. Res. Pap. INT-131. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 20p.

Cole, W. E.; McGregor, M. D. 1983. Estimating the rate and amount of tree loss from mountain pine beetle infestation. Res. Pap. INT-318. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 22p.

Crookston, N. L. 1985. User’s guide to the event monitor: an addition to the Prognosis Model. Gen. Tech. Rep. INT-196. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Research Station. 36p.

Crookston, N. L. 1990. User’s guide to the event monitor: part of the Prognosis Model version 6. Gen. Tech. Rep. INT-275. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Research Station. 21p.

Crookston, N. L. 1991. Foliage dynamics and tree damage components of the western spruce budworm modeling system. Gen. Tech. Rep. INT-282. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Research Station. 40p.

Crookston, N. L. 1997. Suppose: an interface to the Forest Vegetation Simulator. In: Teck, R.; Moeur, M.; Adams, J. compilers. Proceedings: Forest Vegetation Simulator conference. 1997 February 3-7, Fort Collins, CO. pp. 7-14. Gen. Tech. Rep. INT-373. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Research Station. 222p.

Crookston, N. L.; Colbert, J. J.; Thomas, P. W.; Sheehan, K. A.; Kemp, W. P. 1990. User’s guide to the western spruce budworm modeling system. Gen. Tech. Rep. INT-274. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Research Station, 40p.

Crookston, N. L.; Gammel, D. L.; Rebain, S.; Robinson, D. C. E.; Keyser, C. 2003 (revised frequently). User’s guide to the Database Extension of the Forest Vegetation Simulator Version 2.0. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

Crookston, N.L.; Rehfeldt, G.E.; Dixon, G.E.; Weiskittel, A.R. 2010. Addressing climate change in the 1031 forest vegetation simulator to assess impacts on landscape forest dynamics. Forest Ecology and 1032 Management. 260:1198-1211.

Crookston, N. L.; Roelke, R. C.; Burnell, D. G.; Stage, A. R. 1978. Evaluation of management alternatives for lodgepole pine stands using a stand projection model. In: Kibbee, D. L.; Berryman, A. A.; Amman, G. D.; Stark, R. W., Eds. Theory and practice of mountain pine beetle management in lodgepole pine forests. Proceedings of a Symposium, 25-27 April 1978. Washington State University, Pullman, WA. pp. 114-122. Forest, Wildlife and Range Experiment Station, University of Idaho, Moscow, ID.

Crookston, N. L.; Stage, A. R. 1991. User’s guide to the parallel processing extension of the Prognosis Model. Gen. Tech. Rep. INT-281. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Research Station. 87p.

Crookston, N. L.; Stage, A. R. 1999. Percent canopy cover and stand structure statistics from the Forest Vegetation Simulator. Gen. Tech. Rep. RMRS-24. Ogden, UT: U. S. Department of Agriculture, Forest Service, Rocky Mountain Research Station. 11p.

Curtis, R. O. 1982. A simple index of stand density for Douglas-fir. For. Science. 28(1):92-94.

Curtis, R. O. 2010. Effect of Diameter Limits and Stand Structure on Relative Density Indices: A Case Study. Western Journal of Applied Forestry. 25(4):169-175.

David, L. R.; Thompson, M. K.; Williams-Cipriani, J. C. 1993. Reference guide for mountain pine beetle model keywords. Internal Rep. MAG-93-2. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Pest Management Methods Application Group. 30p.

Dixon, G. E. 1985. Crown ratio modeling using stand density index and the Weibull distribution. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 13p.

Dixon, G. E. 1986. Prognosis mortality modeling. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 10p.

Edminster, C. B.; Mowrer, H. T.; Mathiasen, R. L.; Schuler, T. M.; Olsen, W. K.; Hawksworth, F. G. 1991. GENGYM: a variable density stand table projection system calibrated for mixed conifer and ponderosa pine stands in the southwest. Res. Paper RM-297. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Rocky Mountain Forest and Range Experiment Station. 32p.

Ferguson, D. E.; Carlson, C. E. 1993. Predicting regeneration establishment with the Prognosis Model. Res. Paper INT-467. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Research Station. 54p.

Ferguson, D. E.; Crookston, N. L. 1984. User’s guide to the regeneration establishment model — a Prognosis Model extension. Gen. Tech. Rep. INT-161. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Research Station. 23p.

Ferguson, D. E.; Crookston, N. L. 1991. User’s guide to version 2 of the regeneration establishment model: part of the Prognosis Model. Gen. Tech. Rep. INT-279. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Research Station. 34p.

Ferguson, D. E.; Stage, A. R.; Boyd, R. J., Jr. 1986. Predicting regeneration in the grand fir-cedar-hemlock ecosystem of the northern Rocky Mountains. For. Science Monograph 26, 41p.

FHTET. In press. Westwide Pine Beetle Model user’s guide. Internal report. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Health Technology Enterprise Team.

Frankel, S. J., technical coordinator. 1998. User’s guide to the western root disease model, version 3.0. Gen. Tech. Rep. PSW-165. Albany, CA: U. S. Department of Agriculture, Forest Service, Pacific Southwest Research Station. 164p.

Haig, I. T. 1932. Second-growth yield, stand, and volume tables for the western white pine type. Tech. Bull. 323. Washington, DC: U. S. Department of Agriculture. 67p.

Hamilton, D. A., Jr. 1986. A logistic model of mortality in thinned and unthinned mixed conifer stands of northern Idaho. For. Science 32(4): 989-1000.

Hamilton, D. A., Jr. 1990. Extending the range of applicability of an individual tree mortality model. Can. J. For. Res. 20(8): 1212-1218.

Hamilton, D. A., Jr. 1991. Implications of random variation in the Stand Prognosis Model. Res. Note INT-394. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Research Station. 11p.

Hamilton, D. A., Jr. 1994. Uses and abuses of multipliers in the Stand Prognosis Model. Gen. Tech. Rep. INT-310. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Research Station. 9p.

Hamilton, D. A., Jr.; Edwards, B. M. 1976. Modeling the probability of individual tree mortality. Res. Paper INT-185. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Research Station. 22p.

Hatch, C. R. 1980. Modeling tree crown size using inventory data. In: Johan, K.; Schmid-Haas, P. eds. Growth of single trees and development of stands. Proceedings of the Joint meeting IUFRO working groups S4.01-02 (Estimation of Increment) and S4.02-03 (Inventories on Successive Occasions); 1979 September 10-14, Vienna, Austria. pp. 93-99.

Hawksworth, F. G. 1977. The 6-class dwarf mistletoe rating system. Gen. Tech. Rep. RM-48. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Rocky Mountain Forest and Range Experiment Station. 7p.

Hawksworth, F. G.; Williams-Cipriani, J. C.; Eav, B. B.; Geils, B. G.; Johnson, R. R.; Marsden, M. A.; Beatty, J. S.; Shubert, G. D.; Robinson, D. C. E. 1995. Dwarf mistletoe impact modeling system user’s guide and reference manual. Internal Rep. MAG-95-2. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Pest Management Methods Application Group. 120p.

Holdaway, M. R. 1986. Modeling tree crown ratio. For. Chron. 62:451-455.

Holling, C. S., ed. 1978. Adaptive environmental assessment and management. New York: John Wiley & Sons.

Horn, J. E.; Medema, E. L.; Schuster, E. G. 1986. User’s guide to CHEAPO II — economic analysis of Stand Prognosis Model outputs. Gen. Tech. Rep. INT-211. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Research Station. 38p.

Johnson, R. A.; Dixon, G. E. 1986. Adapting models: problems and benefits from incorporating stand density index into the Prognosis Model. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 17p.

Johnson, N. L.; Kotz, S. 1970. Continuous univariate distributions-1. Houghton Mifflin, New York. 300 p.

Krutchkoff, R. G. 1972. Empirical Bayes estimation. Am. Statist. 26(5):14-16.

Long, J. N.; Daniel, T. W. 1990. Assessment of growing stock in uneven-aged stands. West. J. Appl. For. 5:93-96.

Lu, H. B.; Martin, F.; Johnson, R. 2017. Theoretical Foundation of Stage’s Formulation of Stand Density Index. In: Keyser, Chad E.; Keyser, Tara L., eds. 2017. Proceedings of the 2017 Forest Vegetation Simulator (FVS) e-conference. Gen. Tech. Rep. SRS-224. Asheville, NC: U.S. Department of Agriculture, Forest Service, Southern Research Station: 64-69.

Marquis, D. A.; Ernst, R. L.; 1992. User’s guide to SILVAH. Gen. Tech. Rep. NE-162. Warren, PA: U. S. Department of Agriculture, Forest Service, Northeastern Research Station. 130p.

Marsaglia, G.; Bray, T. M. 1968. One line random number generators and their use in combination. Comm. ACM 11(11) :757-759.

Marsden, M. A.; Eav, B. B.; Thompson, M. K. 1994. User’s guide to the Douglas-fir beetle impact model. Internal Rep. MAG-93-9. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Pest Management Methods Application Group. 160p.

Mcdonald, G. I.; Hoff, R. J.; Wykoff, W. R. 1981. Computer simulation of white pine blister rust epidemics I. Model formulation. Res. Pap. INT-258. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 136p.

McGaughey, R. J. 1997. Visualizing forest stand dynamics using the stand visualization system. In: Proceedings, 1997 ASPRS-ACSM-RTI Spring Convention. 1997 April 7-10. Seattle, WA. Bethesda, MD: American Congress on Surveying and Mapping 4:248-257.

McMahan, A. J.; Milner, K. S.; Smith, E. L. 2002. FVS-BGC: a process-model extension to the Forest Vegetation Simulator. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Health Technology Enterprise Team. 51p.

Medema, E. L.; Hatch, C. R. 1982. Computerized help for economic analysis of Prognosis Model outputs: a user’s manual. Contribution no. 227. Moscow, ID: University of Idaho, Forest, Wildlife, and Range Experiment Station. 72p.

Mehta, J. S. 1972. On utilizing information from a second sample in estimating the scale parameter for a family of symmetric distributions. J. Am. Statist. Assoc. 67(338): 448-452.

Meyer, H.A. 1952. Structure, growth, and drain in uneven-aged forests. J. For. 50: 85-92.

Milner, K. S.; Coble, D. W. 1995. The ground surface vegetation model: a process-based approach to modeling vegetative interactions. Unpublished manuscript.

Miner, C. L.; Walters, N. R.; Belli, M. L. 1988. A guide to the TWIGS program for the North Central United States. Gen. Tech. Rep. NC-125. St. Paul, MN: U. S. Department of Agriculture, Forest Service, North Central Experiment Station. 105p.

Moeur, M. 1985. COVER: A user’s guide to the CANOPY and SHURBS extension of the Stand Prognosis Model. Gen. Tech. Rep. INT-190. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Research Station. 49p.

Monserud, R. A. 1979. Relations between inside and outside bark diameter at breast height for Douglas-fir in northern Idaho and northwestern Montana. Res. Note INT-266. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 8p.

Monserud, R. A. 1981. Estimating truncated tree volumes with the Behre hyperboloid and existing total volume equations. For. Science. 27(2):253-265.

Monserud, R. A.; Crookston, N. L. 1982. A user’s guide to the combined Stand Prog­nosis and Douglas-fir tussock moth outbreak model. Gen. Tech. Rep. INT-127. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 49p.

Nowacki, G.; Spencer, P.; Fleming, M.; [and others]. 2002. Unified ecoregions of Alaska: 2001. U.S. Geological Survey Open-File Report 2002-297 (map).

Rebain, S. A.; Reinhardt, E. D.; Crookston, N. L.; Beukema, S. J.; Kurz, W. A.; Greenough, J. A.; Robinson, D. C. E.; Lutes, D. C. 2010 (revised frequently). The Fire and Fuels Extension to the Forest Vegetation Simulator: Updated Model Documentation. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

Reineke, L. H. 1933. Perfecting a stand density index for even aged forests. J. Agric. Res. 46:627-638.

Reinhardt, E. D.; Crookston, N. L. (Technical Editors). 2003. The Fire and Fuels Extension to the Forest Vegetation Simulator. Gen. Tech. Rep. RMRS-GTR-116. Ogden, UT: U. S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, 209p.

Reinhardt, E. D.; Crookston, N. L.; Rebain, S. A. (Technical Editors). 2007. The Fire and Fuels Extension to the Forest Vegetation Simulator. Addendum to RMRS-GTR-116. Ogden, UT: U. S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, 208p.

Renner, D. 2001. Economic extension (ECON) to FVS, Release 1.0 user’s manual. [draft]. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Rocky Mountain Research Station. 48p.

Rose, A. K.; Greenberg, C. H.; Fearer, T. M. (2011), Acorn production prediction models for five common oak species of the eastern United States. The Journal of Wildlife Management. DOI: 10.1002/jwmg.291

Running, S. W.; Coughlan, J. C. 1988. A general model of forest ecosystem processes for regional applications: I. Hydrologic balance, canopy gas exchange and primary production processes. Ecol. Modelling 42:125-154.

Shaw, J. D. 2000. Application of stand density index to irregularly structured stands. West. J. Appl. For. 15(1):40-42.

Shaw, John D.; Long, James N. 2007. A density management diagram for longleaf pine stands with application to red-cockaded woodpecker habitat. Southern Journal of Applied Forestry. 31(1): 28-38.

Sheehan, K. A.; Kemp, W. P.; Colbert, J. J.; Crookston, N. L. 1989. The western spruce budworm model: structure and content. Gen. Tech. Rep. PNW-241. Portland, OR: U. S. Department of Agriculture, Forest Service, Pacific Northwest Forest and Range Experiment Station. 70p.

Smith, D. M. 1962. The practice of silviculture. 7th edition. New York: John Wiley and Sons. 578p.

Stage, A. R. 1960. Computing growth from increment cores with point sampling. J. For. 58(7):531-533.

Stage, A. R. 1968. A tree-by-tree measure of site utilization for grand fir related to stand density index. Res. Note INT-77. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 7p.

Stage, A. R. 1973. Prognosis Model for stand development. Res. Paper INT-137. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 32p.

Stage, A. R. 1975. Prediction of height increment for models of forest growth. Res. Paper INT-164. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 20p.

Stage, A. R. 1976. An expression for the effect of slope, aspect, and habitat type on tree growth. For. Science. 22(4):457-460.

Stage, A. R. 1981. Use of self calibration procedures to adjust general regional yield models to local conditions. Paper presented to XVII IUFRO World Congress S.4.01 Sept. 6-17, 1981.

Stage, A. R.; Alley, J. R. 1972. An inventory design using stand examinations for plan­ning and programming timber management. Res. Pap. INT-126. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 17p.

Stage, A. R.; Wykoff, W. R. 1993. Calibrating a model of stochastic effects on diameter increment for individual-tree simulations of stand dynamics. For. Science 39(4):692-705.

Stage, A. R.; Wykoff, W. R. 1998. Adapting distance-independent forest growth models to represent spatial variability: effects of sampling design on model coefficients. For. Science 44(2):224-238.

Teck, R. M.; Hilt, D. E. 1990. Individual-tree probability of survival model for the Northeastern United States. Res. Pap. NE-642. Radnor, PA: U. S. Department of Agriculture, Forest Service, Northeastern Forest Experiment Station. 10p.

Tocher, K. D. 1963. The art of simulation. D. Von Nostrand Co., Inc., Princeton, N.J. 184 p.

Van Dyck, M. G.; Smith-Mateja, E. E. comp. 2000 (revised frequently). Keyword reference guide for the forest vegetation simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

Wellner, C. A. 1940. Relationships between three measures of stocking in natural reproduction of the western white pine type. J. For. 38: 636-638.

Westfall, James A.; Coulston, John W.; Gray, Andrew N.; Shaw, John D.; Radtke, Philip J.; Walker, David M.; Weiskittel, Aaron R.; MacFarlane, David W.; Affleck, David L.R.; Zhao, Dehai; Temesgen, Hailemariam; Poudel, Krishna P.; Frank, Jereme M.; Prisley, Stephen P.; Wang, Yingfang; Sánchez Meador, Andrew J.; Auty, David; Domke, Grant M. 2024. A national-scale tree volume, biomass, and carbon modeling system for the United States. Gen. Tech. Rep. WO-104. Washington, DC: U.S. Department of Agriculture, Forest Service. 37 p. https://doi.org/10.2737/WO-GTR-104.

Wykoff, W. R. 1983. Predicting basal area increment for individual northern Rocky Mountain conifers. In: Pollanschutz, J., ed. Forest growth modelling and simulation. Proceedings of the meeting of IUFRO working group S4.01-00 (Mensuration, Growth and Yield); 1982 October 4-8, Vienna, Austria. pp. 127-143.

Wykoff, W. R. 1986. Supplement to the User’s Guide for the Stand Prognosis Model—Version 5.0. Gen. Tech. Rep. INT-208. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Research Station. 36p.

Wykoff, W. R. 1990. A basal area increment model for individual conifers in the northern Rocky Mountains. For. Science 36(4): 1077-1104.

Wykoff, W. R. 2010. Personal communication 4/27/2010.

Wykoff, W. R.; Crookston, N. L.; Stage, A. R. 1982. User’s guide to the Stand Prognosis Model. Gen. Tech. Rep. INT-133. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 112p.

Wykoff, W. R.; Dixon, G. E.; Crookston, N. L.; Sleavin, K. E.; Renner, D. L. 1990. Release notes: Prognosis Model version 6. Gen. Tech. Rep. [Draft]. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Research Station. 154p.

Zeide, B. 1983. The mean diameter for stand density index. Can. J. For. Res. 13:1023-1024.

Zielinski, William J.; Truex, Richard L.; Dunk, Jeffrey R.; Gaman, Tom. 2006. Using forest inventory data to assess fisher resting habitat suitability in California. Ecological Applications 16(3): 1010-1025.

# Appendix A

**Table A** — FVS Input Tree Data Damage and Severity Codes for Insect and Disease Models

|  |  |  |  |
| --- | --- | --- | --- |
| **Dam** | **Sev** | **Model** | **Comments** |
| 02 | 03 | Lodgepole MPB | Mountain pine beetle successful attack on Lodgepole pine |
| 01 | 00,03 | Westwide Pine Beetle | Bark beetle (general) |
| 02 | 00,03 | Westwide Pine Beetle | Mountain pine beetle |
| 05 | 00,03 | Westwide Pine Beetle | Western pine beetle |
| 06 | 00,03 | Westwide Pine Beetle | Pine engraver beetle |
| Severity codes blank, 00, and 03 represent a successful bole attack when the tree history indicates a live tree (beetle damage and severity codes are not processed when the tree history code indicates a dead tree) | | | |
| 03 | 03-99 | Douglas-fir Beetle | Successful Douglas-fir beetle attack |
| 11 | 01-09 | Western Spruce budworm | Not recognized or processed at this time |
| 13 | 01-09 | Douglas-fir Tussock Moth | Not recognized or processed at this time |
| 30 | 00-06 | Dwarf Mistletoe | Dwarf mistletoe on species other than LP, WL, DF, or PP |
| 31 | 00-06 | Dwarf Mistletoe | Lodgepole mistletoe |
| 32 | 00-06 | Dwarf Mistletoe | Western larch mistletoe |
| 33 | 00-06 | Dwarf Mistletoe | Douglas-fir mistletoe |
| 34 | 00-06 | Dwarf Mistletoe | Ponderosa pine mistletoe |
| Severity codes 00-06 are Hawksworth dwarf mistletoe rating system. Damage codes 30-34 are treated the same for all tree species defined as dwarf mistletoe host species. | | | |
| 36 |  | Blister Rust | Recognized but not utilized at this time |
| 60 | 00-03 | Root Disease | Non-specific root disease |
| 61 | 00-03 | Root Disease | Armillaria |
| 62 | 00-03 | Root Disease | Phellinus |
| 64 | 00-03 | Root Disease | Annosus (both P-type and S-type) |
| Severity codes are defined as follows: | | | |
| 00,01 | Tree is within 30 feet of a root disease infected tree | | |
| 02 | Symptoms of root disease detected on the tree | | |
| 03 | Symptoms of root disease and crown deterioration detected | | |
| Also, if the severity code is 01 and the tree diameter is not more than 5 inches, then the tree is regarded as an uninfected small tree in the disease center; if the severity code is 00 or 01 and the tree diameter is greater than 5 inches, the tree is regarded as an infected large tree. | | | |

# Appendix B

**Table B** — Coding Guide: Forest Typing Algorithm[[3]](#footnote-3)10

| **Type**  **Code** | **Forest Type** | **Group**  **Code** | **Forest Group** |
| --- | --- | --- | --- |
| 101 | Jack pine | 100 | White-red-jack pine |
| 102 | Red pine |  |  |
| 103 | Eastern White pine |  |  |
| 104 | White pine-hemlock |  |  |
| 105 | Eastern Hemlock |  |  |
| 121 | Balsam fir | 120 | Spruce-fir |
| 122 | White spruce |  |  |
| 123 | Red spruce |  |  |
| 124 | Red spruce-balsam fir |  |  |
| 125 | Black spruce |  |  |
| 126 | Tamarack |  |  |
| 127 | Northern white cedar |  |  |
| 141 | Longleaf pine | 140 | Longleaf-slash pine |
| 142 | Slash pine |  |  |
| 161 | Loblolly pine | 160 | Loblolly-shortleaf pine |
| 162 | Shortleaf pine |  |  |
| 163 | Virginia pine |  |  |
| 164 | Sand pine |  |  |
| 165 | Table-mountain pine |  |  |
| 166 | Pond pine |  |  |
| 167 | Pitch pine |  |  |
| 168 | Spruce pine |  |  |
| 181 | Eastern redcedar | 180 | Pinyon-Juniper |
| 182 | Rocky mountain juniper |  |  |
| 183 | Western Juniper |  |  |
| 184 | Juniper-woodland |  |  |
| 185 | Pinyon-juniper woodland |  |  |
| 201 | Douglas-fir | 200 | Douglas-fir |
| 202 | Port orford cedar |  |  |
| 221 | Ponderosa pine | 220 | Ponderosa pine |
| 222 | Incense cedar |  |  |
| 223 | Jeffry-Coulter-Bigcone Douglas-fir |  |  |
| 224 | Sugar pine |  |  |
| 241 | Western white pine | 240 | Western white pine |
| 261 | White fir | 260 | Fir-spruce-Mountain hemlock |
| 262 | Red fir |  |  |
| 263 | Noble fir |  |  |
| 264 | Pacific silver fir |  |  |
| 265 | Engelmann spruce |  |  |
| 266 | Engelmann spruce-subalpine fir |  |  |
| 267 | Grand fir |  |  |
| 268 | Subalpine fir |  |  |
| 269 | Blue spruce |  |  |
| 270 | Mountain hemlock |  |  |
| 271 | Alaska yellow cedar |  |  |
| 281 | Lodgepole pine | 280 | Lodgepole pine |
| 301 | Western hemlock | 300 | Hemlock-Sitka spruce |
| 304 | Western redcedar |  |  |
| 305 | Sitka spruce |  |  |
| 321 | Western larch | 320 | Western larch |
| 341 | Redwood | 340 | Redwood |
| 342 | Giant Sequoia |  |  |
| 361 | Knobcone pine | 360 | Other western softwoods |
| 362 | Southwest white pine |  |  |
| 363 | Bishop pine |  |  |
| 364 | Monterey pine |  |  |
| 365 | Foxtail-Bristlecone pine |  |  |
| 366 | Limber pine |  |  |
| 367 | Whitebark pine |  |  |
| 368 | Misc. Western softwoods |  |  |
| 371 | California mixed conifer | 370 | California mixed conifer |
| 381 | Scotch pine | 380 | Exotic softwoods |
| 383 | Other exotic softwoods |  |  |
| 401 | White pine-red oak-white ash | 400 | Oak-pine |
| 402 | Eastern redcedar-hardwood |  |  |
| 403 | Longleaf pine-oak |  |  |
| 404 | Shortleaf pine-oak |  |  |
| 405 | Virginia pine-southern red oak |  |  |
| 406 | Loblolly pine-hardwood |  |  |
| 407 | Slash pine-hardwood |  |  |
| 409 | Other pine-hardwood |  |  |
| 501 | Post-blackjack oak | 500 | Oak-hickory |
| 502 | Chestnut oak |  |  |
| 503 | White oak-red oak-hickory |  |  |
| 504 | White oak |  |  |
| 505 | Northern red oak |  |  |
| 506 | Yellow poplar-white oak-red oak |  |  |
| 507 | Sassafras-persimmon |  |  |
| 508 | Sweetgum-Yellow poplar |  |  |
| 509 | Bur oak |  |  |
| 510 | Scarlet oak |  |  |
| 511 | Yellow poplar |  |  |
| 512 | Black walnut |  |  |
| 513 | Black locust |  |  |
| 514 | Southern scrub oak |  |  |
| 515 | Chestnut-black-scarlet oak |  |  |
| 519 | Red maple-oak |  |  |
| 520 | Mixed upland hardwoods |  |  |
| 601 | Swamp chestnut-cherrybark oak | 600 | Oak-gum-cypress |
| 602 | Sweetgum-Nuttall-willow oak |  |  |
| 605 | Overcup oak-water hickory |  |  |
| 606 | Atlantic white-cedar |  |  |
| 607 | Bald cypress-water tupelo |  |  |
| 608 | Sweetbay-swamp tupelo-red maple |  |  |
| 701 | Black ash-American elm-red maple | 700 | Elm-ash-cottonwood |
| 702 | River birch-sycamore |  |  |
| 703 | Cottonwood |  |  |
| 704 | Willow |  |  |
| 705 | Sycamore-pecan-American elm |  |  |
| 706 | Sugarberry-hackberry-elm-green ash |  |  |
| 707 | Silver maple-American elm |  |  |
| 708 | Red maple-lowland |  |  |
| 709 | Cottonwood-willow |  |  |
| 722 | Oregon ash |  |  |
| 801 | Sugar maple-beech-Yellow birch | 800 | Maple-beech-birch |
| 802 | Black cherry |  |  |
| 803 | Cherry-ash-yellow poplar |  |  |
| 805 | Hard maple-basswood |  |  |
| 807 | Elm-ash-locust |  |  |
| 809 | Red maple-upland |  |  |
| 901 | Aspen | 900 | Aspen-birch |
| 902 | Paper birch |  |  |
| 904 | Balsam poplar |  |  |
| 911 | Red alder | 910 | Alder-maple |
| 912 | Bigleaf maple |  |  |
| 921 | Gray pine | 920 | Western oak |
| 922 | California black oak |  |  |
| 923 | Oregon white oak |  |  |
| 924 | Blue oak |  |  |
| 925 | Deciduous oak woodland |  |  |
| 926 | Evergreen oak woodland |  |  |
| 931 | Coast live oak |  |  |
| 932 | Canyon-interior live oak |  |  |
| 941 | Tan oak | 940 | Tanoak-laurel |
| 942 | California laurel |  |  |
| 943 | Giant chinkapin |  |  |
| 951 | Pacific madrone | 950 | Other western hardwoods |
| 952 | Mesquite woodland |  |  |
| 953 | Mountain brush woodland |  |  |
| 954 | Intermountain maple woodland |  |  |
| 955 | Misc. western hardwoods |  |  |
| 981 | Sable Palm | 980 | Tropical hardwoods |
| 982 | Mangrove |  |  |
| 991 | Paulownia | 990 | Exotic hardwoods |
| 992 | Melaluca |  |  |
| 993 | Eucalyptus |  |  |
| 995 | Other exotic hardwoods |  |  |
| 996 | FVS other softwoods | 99# | FVS types |
| 997 | FVS other hardwoods |  |  |
| 998 | FVS other species |  |  |
| 999 | Nonstocked | 999 | Nonstocked |

**<u>Size Class</u>**

Assign each tree to one of the following size classes based on DBH.

|  |  |  |
| --- | --- | --- |
|  | **Size Class** | **Class Boundaries** |
| Small | Seedling-sapling | DBH < 5” |
| Medium | Poletimber | 5” <u><</u> DBH <u><</u> 9” for softwoods 5” <u><</u> DBH <u><</u> 11” for hardwoods |
| Large | Sawtimber | 9” <u><</u> DBH for softwoods 11” <u><</u> DBH for hardwoods |

Assign the stand size class based upon the following table:

|  |  |  |
| --- | --- | --- |
| **Condition** | **Stand Size Class** | **Code** |
| Poletimber stocking <u><</u> Sawtimber stocking | Sawtimber | 1 |
| Poletimber stocking <u>></u> Sawtimber stocking | Poletimber | 2 |
| Seedling-sapling stocking > 50% of total stocking | Seedling-sapling | 3 |
| Chaparral/Woodland | Chaparral | 4 |
| Total stocking < 10 | Nonstocked | 5 |

**<u>Stocking Class</u>**

The class is assigned by comparing this total stocking with the following class boundaries:

|  |  |  |
| --- | --- | --- |
| **Stocking Class** | **Class Boundaries** | **Code** |
| Overstocked | Total Stocking > 100 | 1 |
| Fully Stocked | 60 <u><</u> Total Stocking <u><</u> 100 | 2 |
| Moderately Stocked | 35 <u><</u> Total Stocking < 60 | 3 |
| Poorly Stocked | 10 <u><</u> Total Stocking < 35 | 4 |
| Nonstocked | 0 <u><</u> Total Stocking < 10 | 5 |

1. The symbol “*~~b~~* ” is used here and elsewhere to indicate a blank field. No attempt was made to maintain accurate spacing in the keyword examples. Instead, an entry is provided for each field. [↑](#footnote-ref-1)
2. A dataset is a standard input/output device (usually an independent file) that may be accessed by the FVS. Datasets are assigned unique numbers, and are accessed through the use of these numbers. Numbers less than 30 are reserved by the FVS for standard input and output files. For example, dataset number 2 is for tree data input and dataset number 3 is for TREELIST output. [↑](#footnote-ref-2)
3. 10 Arner et al. 2001. [↑](#footnote-ref-3)