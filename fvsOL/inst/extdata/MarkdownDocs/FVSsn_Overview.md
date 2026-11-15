Southern (SN) Variant Overview of the Forest Vegetation Simulator

March 2026

![](data:image/png;base64...)

Longleaf pine shelterwood, Desoto NF

(Greg Janney, FS-R8)

Southern (SN) Variant Overview of the Forest Vegetation Simulator

# Authors and Contributors:

The FVS staff has maintained model documentation for this variant in the form of a variant overview since its release in 2001. The original authors were Dennis Donnelly and Barry Lilly. In 2008, the previous document was replaced with this updated variant overview. Gary Dixon, Christopher Dixon, Robert Havis, Chad Keyser, Stephanie Rebain, Erin Smith-Mateja, and Don Vandendriesche were involved with this update. Chad Keyser cross-checked information contained in this variant overview with the FVS source code.

FVS Staff. 2008 (revised March 30, 2026). Southern (SN) Variant Overview – Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 85p.

Table of Contents

[Authors and Contributors: ii](#_Toc225749534)

[1.0 Introduction 1](#_Toc225749535)

[2.0 Geographic Range 2](#_Toc225749536)

[3.0 Control Variables 5](#_Toc225749537)

[3.1 Location Codes 5](#_Toc225749538)

[3.2 Species Codes 9](#_Toc225749539)

[3.3 Habitat Type, Plant Association, and Ecological Unit Codes 11](#_Toc225749540)

[3.4 Site Index 12](#_Toc225749541)

[3.5 Maximum Density 16](#_Toc225749542)

[4.0 Growth Relationships 19](#_Toc225749543)

[4.1 Height-Diameter Relationships 19](#_Toc225749544)

[4.2 Bark Ratio Relationships 22](#_Toc225749545)

[4.3 Crown Ratio Relationships 24](#_Toc225749546)

[4.3.1 Crown Ratio Dubbing 24](#_Toc225749547)

[4.3.2 Crown Ratio Change 27](#_Toc225749548)

[4.3.3 Crown Ratio for Newly Established Trees 27](#_Toc225749549)

[4.4 Crown Width Relationships 28](#_Toc225749550)

[4.5 Crown Competition Factor 34](#_Toc225749551)

[4.6 Small Tree Growth Relationships 34](#_Toc225749552)

[4.6.1 Small Tree Height Growth 35](#_Toc225749553)

[4.6.2 Small Tree Diameter Growth 38](#_Toc225749554)

[4.7 Large Tree Growth Relationships 38](#_Toc225749555)

[4.7.1 Large Tree Diameter Growth 38](#_Toc225749556)

[4.7.2 Large Tree Height Growth 55](#_Toc225749557)

[5.0 Mortality Model 58](#_Toc225749558)

[6.0 Regeneration 62](#_Toc225749559)

[7.0 Volume 68](#_Toc225749560)

[8.0 Fire and Fuels Extension (FFE-FVS) 70](#_Toc225749561)

[9.0 Insect and Disease Extensions 71](#_Toc225749562)

[10.0 Literature Cited 72](#_Toc225749563)

[11.0 Appendices 76](#_Toc225749564)

[11.1 Appendix A. Ecological Unit Codes (EUC) 76](#_Toc225749565)

Quick Guide to Default Settings

| **Parameter or Attribute** | | **Default Setting** | | |
| --- | --- | --- | --- | --- |
| Number of Projection Cycles | | 1 (10 if using FVS GUI) | | |
| Projection Cycle Length | | 5 years | | |
| Location Code (National Forest) | | 80106 – NF in Alabama – Talledega Ranger District | | |
| Ecological Classification Code | | 231Dd (Quartzite and Talladega Slate Ridge) | | |
| Slope | | 5 percent | | |
| Aspect | | 0 (no meaningful aspect) | | |
| Elevation (Default location) | | 7 (700 feet) | | |
| Latitude (Default location) | | 32.37 | | |
| Longitude (Default location) | | 86.30 | | |
| Site Species | | WO | | |
| Site Index | | 70 (total age; 50 years) | | |
| Maximum Stand Density Index | | Forest Cover Type specific | | |
| Maximum Basal Area | | Forest Cover Type specific | | |
| Volume Equations | | National Volume Estimator Library | | |
| Volume Specifications: | | | |
| Pulpwood Volume | | Minimum DBH / Top Diameter Outside Bark | |
| Softwoods Default | 4 / 4 | |
| SR | 6 / 4 | |
| LP | 6 / 4 | |
| Hardwoods - Default | 4 / 4 | |
| LB | 6 / 4 | |
| WN | 6 / 4 | |
| SU | 6 / 4 | |
| MB | 6 / 4 | |
| WT | 6 / 4 | |
| TS | 6 / 4 | |
| WO | 6 / 4 | |
| Stump Height | 0.5 feet | |
| Sawtimber Volume | | Minimum DBH / Top Diameter Outside Bark | |
| Softwoods Default | | 10 / 7 | |
| JU on Ozark & St. Francis NFs | | 9 / 7 | |
| Hardwoods - Default | | 12 / 9 | |
| Stump Height | | 1.0 foot | |
| Sampling Design: | | | | |
| Large Trees (variable radius plot) | | 40 BAF | | |
| Small Trees (fixed radius plot) | | 1/300th Acre | | |
| Breakpoint DBH | | 5.0 inches | | |

# 1.0 Introduction

The Forest Vegetation Simulator (FVS) is an individual tree, distance independent growth and yield model with linkable modules called extensions, which simulate various insect and pathogen impacts, fire effects, fuel loading, snag dynamics, and development of understory tree vegetation. FVS can simulate a wide variety of forest types, stand structures, and pure or mixed species stands.

New “variants” of the FVS model are created by imbedding new tree growth, mortality, and volume equations for a particular geographic area into the FVS framework. Geographic variants of FVS have been developed for most of the forested lands in the United States.

The Southeast (SE) variant was developed in 1996 using relationships found in the Southeast TWIGS model and applied to Alabama, Georgia, and South Carolina. There was need for a variant that covered more of the forested area in the southeast United States.

Using data from Forest Inventory and Analysis (FIA), the Southern (SN) variant was developed using completely new growth equations and expanded to cover all southern states including the area previously covered by the Southeast TWIGS variant. Development of the SN variant of FVS began in 1998 and was released for production use in 2001. Development of the variant began as a cooperative effort of the Southern Research Station, Southern Regional Office, and the Forest Management Service Center using the FIA data from all 13 states of the Southern Region, Forest Service Research data, and data from the Bureau of Indian Affairs. All model relationships were developed by FMSC staff.

To fully understand how to use this variant, users should also consult the following publication:

* Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002)

This publication may be downloaded from the Forest Management Service Center (FMSC), Forest Service website. Other FVS publications may be needed if one is using an extension that simulates the effects of fire, insects, or diseases.

# 2.0 Geographic Range

The SN variant was fit to data from the states within the USDA Forest Service Southern Region. Data used in initial model development came from Forest Inventory and Analysis (FIA) data from all 13 states of the Southern Region, Forest Service research data, and data from the Bureau of Indian Affairs. Distribution of data samples for species fit from this data are shown in table 2.0.1.

**Table 2.0.1 The distribution of original growth sample trees by species for the SN variant.**

| **Species** | **Total**  **Number of Observations** | **Species** | **Total**  **Number of Observations** | **Species** | **Total**  **Number of Observations** |
| --- | --- | --- | --- | --- | --- |
|
|  |
| redcedar | 4132 | common persimmon | 1219 | black cherry | 2944 |
| spruce | 1141 | American beech | 4953 | white oak | 27487 |
| sand pine | 820 | ash | 5463 | scarlet oak | 6009 |
| shortleaf pine | 26008 | white ash | 1989 | southern red oak | 13442 |
| slash pine | 18736 | black ash | 3958 | cherrybark oak, swamp red oak | 4239 |
| spruce pine | 884 | green ash | 3958 | turkey oak | 2764 |
| longleaf pine | 9190 | honeylocust | 588 | laurel oak | 8105 |
| table mountain pine | 9860 | loblolly-bay | 1483 | overcup oak | 2960 |
| pitch pine | 735 | silverbell | 89 | blackjack oak | 3605 |
| pond pine | 2590 | American holly | 3417 | swamp chestnut oak | 1504 |
| eastern white pine | 2602 | butternut | 941 | chinkapin oak | 831 |
| loblolly pine | 92313 | black walnut | 941 | water oak | 24356 |
| Virginia pine | 9860 | sweetgum | 38847 | chestnut oak | 12188 |
| baldcypress | 6428 | yellow-poplar | 19207 | northern red oak | 8401 |
| pondcypress | 5578 | magnolia spp. | 6729 | Shumard oak | 505 |
| hemlock | 1141 | cucumbertree | 376 | post oak | 14841 |
| Florida maple | 455 | southern magnolia | 938 | black oak | 10119 |
| boxelder | 1426 | sweetbay | 6729 | live oak | 2916 |
| red maple | 28402 | bigleaf magnolia | 938 | black locust | 1990 |
| silver maple | 28402 | apple spp. | 539 | willow | 2134 |
| sugar maple | 2763 | mulberry spp. | 539 | sassafras | 1577 |
| buckeye, horsechestnut | 277 | water tupelo | 6104 | basswood | 763 |
| birch spp. | 2107 | blackgum | 10328 | elm | 3230 |
| sweet birch | 2107 | swamp tupelo | 17098 | winged elm | 2294 |
| American hornbeam | 3513 | eastern hophornbeam, | 840 | American elm | 2024 |
| hickory spp. | 24404 | sourwood | 5689 | slippery elm | 791 |
| catalpa | 972 | redbay | 1953 | softwoods, misc. | 4132 |
| hackberry spp. | 4485 | sycamore | 1892 | hardwoods, misc. | 840 |
| eastern redbud | 482 | cottonwood | 972 | unknown or not listed | 639 |
| flowering dogwood | 7775 | bigtooth aspen | 972 |  |  |

The SN variant covers forest areas in all of the southeastern states including Florida, Georgia, Alabama, Mississippi, Louisiana, the Carolinas, Virginia, Kentucky, Tennessee, Arkansas, and parts of Texas and Oklahoma. The suggested geographic range of use for the SN variant is shown in figure 2.0.1. In addition, the SN variant may be used to simulate the forest types within the Central States (CS) variant range in southern Missouri and southern Illinois.

![Picture of the suggested range map of SN variant.](data:image/jpeg;base64...)

**Figure 2.0.1 Suggested geographic range of use for the SN variant.**

# 3.0 Control Variables

FVS users need to specify certain variables used by the SN variant to control a simulation. These are entered in parameter fields on various FVS keywords available in the FVS interface or they are read from an FVS input database using the Database Extension.

## 3.1 Location Codes

Most location codes in the SN variant use a 4- or 5-digit code. The first digit of the code represents the Forest Service Region Number, the second and third digits represent the Forest Number, and the fourth and fifth digits represent the District Number. In some cases, a location code beginning with a “7” or “8” is used to indicate an administrative boundary that doesn’t use a Forest Service Region number (for example, other federal agencies, state agencies, or other lands).

If the location code is missing or incorrect in the SN variant, a default forest code of 80106 (National Forests in Alabama, Talledega Ranger District) will be used. Location codes recognized in the SN variant, and their associated default latitude, longitude, and elevation are shown in tables 3.1.1 and 3.1.2.

**Table 3.1.1 Location codes used in the SN variant.**

| **USFS National Forest** | **District** | **Location Code** | **Latitude** | **Longitude** | **Elevation** |
| --- | --- | --- | --- | --- | --- |
| National Forests in Alabama | Bankhead | 80101 | 32.37 | 86.30 | 7 (700 ft) |
|  | Conecuh | 80103 |  | | |
| Oakmulgee | 80104 |
| Shoal Creek | 80105 |
| Talledega | 80106 |
| Tuskegee | 80107 |
| Daniel Boone | Morehead | 80211 | 37.99 | 84.18 | 12 (1200 ft) |
|  | Stanton | 80212 |  | | |
| Berea | 80213 |
| London | 80214 |
| Somerset | 80215 |
| Stearns | 80216 |
| Redbird | 80217 |
| Chattahoochee-Oconee | Armuchee | 80301 | 34.34 | 83.82 | 17 (1700 ft) |
|  | Toccoa | 80302 |  | | |
| Brasstown | 80304 |
| Tallulah | 80305 |
| Chattooga | 80306 |
| Cohutta | 80307 |
| Oconee | 80308 |
| Cherokee | Hiwassee | 80401 | 35.16 | 84.88 | 22 (2200 ft) |
|  | Nolichucky | 80402 |  | | |
| Ocoee | 80403 |
| Tellico | 80404 |
| Unaka | 80405 |
| Watuga | 80406 |
| National Forests in Florida | Apalachicola | 80501 | 30.44 | 84.28 | 1 (100 ft) |
|  | Lake George | 80502 |  | | |
| Osceola | 80504 |
| Seminole | 80505 |
| Wakulla | 80506 |
| Kisatchie | Catahoula | 80601 | 31.32 | 92.43 | 2 (200 ft) |
|  | Calcasieu | 80602 |  | | |
| Kisatchie | 80603 |
| Winn | 80604 |
| Caney | 80605 |
| National Forests in Mississippi | Bienville | 80701 | 33.31 | 89.17 | 3 (300 ft) |
|  | Desoto | 80702 |  | | |
| Homochitto | 80704 |
| Chickasawhay | 80705 |
| Delta | 80706 |
| Holly Springs | 80707 |
| Tombigbee | 80717 |
| George Washington/Jefferson NFs | Deerfield | 80801 | 37.27 | 79.94 | 21 (2100 ft) |
|  | Dry River | 80802 |  | | |
| James River | 80803 |
| Lee | 80804 |
| Pedlar | 80805 |
| Warm Springs | 80806 |
| Blacksburg | 80811 |
| Clinch | 80812 |
| Glenwood | 80813 |
| Mt. Rogers | 80814 |
| New Castle | 80815 |
| Wythe | 80816 |
| Ouachita | Choctaw | 80901 | 34.50 | 93.06 | 9 (900 ft) |
|  | Caddo | 80902 |  | | |
| Cold Springs | 80903 |
| Fourche | 80904 |
| Jessieville | 80905 |
| Kiamichi | 80906 |
| Mena | 80907 |
| Oden | 80908 |
| Poteau | 80909 |
| Womble | 80910 |
| Winona | 80911 |
| Tiak | 80912 |
| Ozark & St. Francis NFs | Sylamore | 81001 | 35.28 | 93.13 | 13 (1300 ft) |
|  | Buffalo | 81002 |  | | |
| Bayou | 81003 |
| Pleasant Hill | 81004 |
| Boston Mountain | 81005 |
| Magazine | 81006 |
| St. Francis | 81007 |
| National Forests in North Carolina | Cheoah | 81102 | 35.60 | 82.55 | 25 (2500 ft) |
|  | Croatan | 81103 |  | | |
| Grandfather | 81105 |
| Appalachian (old) | 81104 |
| Highlands | 81106 |
| Pisgah | 81107 |
| Appalachian | 81108 |
| Tusquitee | 81109 |
| Uwharrie | 81110 |
| Wayah | 81111 |
| Francis Marion & Sumter NFs | Enoree | 81201 | 34.00 | 81.04 | 4 (400 ft) |
|  | Andrew Pickens | 81202 |  | | |
| Long cane | 81203 |
| Francis Marion | 81205 |
| National Forests in Texas | Angelina | 81301 | 31.34 | 94.73 | 3 (300 ft) |
|  | Davy Crockett | 81303 |  | | |
| Sam Houston | 81304 |
| Sabine | 81307 |
| Caddo/LBJ | 81308 |
| Mark Twain | All | 905 | 37.95 | 91.77 | 10 (1000 ft) |
| Shawnee | All | 908 | 37.74 | 88.54 | 4 (400 ft) |
| Savannah River Admin  (mapped to 81203) | All | 836 | 34.00 | 81.04 | 4 (400 ft) |
| Savannah River Proclaimed (mapped to 81203) | All | 824 | 34.00 | 81.04 | 4 (400 ft) |
| Land Between the Lakes Admin (mapped to 80216) | All | 860 | 37.99 | 84.18 | 12 (1200 ft) |
| Land Between the Lakes Admin (mapped to 80216) | All | 835 | 37.99 | 84.18 | 12 (1200 ft) |
| Dept. of Defense, Fort Bragg Military Reservation (mapped to 81110)[[1]](#footnote-2) | All | 701 | 35.60 | 82.55 | 25 (2500 ft) |

**Table 3.1.2 Bureau of Indian Affairs reservation codes used in the SN variant.**

| **Location Code** | **Location** |
| --- | --- |
| 7201 | Alabama-Coushatta Reservation (mapped to 813) |
| 7207 | Kiowa-Comanche-Apache- Fort Sill Apache Otsa (mapped to 809) |
| 7210 | Kaw Otsa (mapped to 810) |
| 7211 | Otoe-Missouria Otsa (mapped to 810) |
| 7212 | Pawnee Otsa (mapped to 810) |
| 7213 | Ponca Otsa (mapped to 810) |
| 7215 | Citizen Potawatomi Nation-Absentee Shawnee Otsa (mapped to 809) |
| 7216 | Iowa Otsa (mapped to 809) |
| 7218 | Sac And Fox Otsa (mapped to 809) |
| 7601 | Chickasaw Otsa (mapped to 80906) |
| 7602 | Quapaw Otsa (mapped to 81005) |
| 7603 | Eastern Shawnee Otsa (mapped to 81005) |
| 7604 | Seneca-Cayuga Otsa (mapped to 81005) |
| 7605 | Wyandotte Otsa (mapped to 81005) |
| 7606 | Miami Otsa (mapped to 81005) |
| 7607 | Peoria Otsa (mapped to 81005) |
| 7608 | Modoc Otsa (mapped to 81005) |
| 7609 | Osage Reservation (mapped to 81005) |
| 7610 | Creek Otsa (mapped to 80901) |
| 7611 | Cherokee Otsa (mapped to 81005) |
| 7612 | Choctaw Otsa (mapped to 80906) |
| 7613 | Seminole Otsa (mapped to 80901) |
| 8205 | Miccosukee Reservation (mapped to 80505) |
| 8207 | Poarch Creek Reservation (mapped to 80103) |
| 8210 | Catawba Reservation (mapped to 81201) |
| 8212 | Tunica-Biloxi Reservation (mapped to 80601) |
| 8213 | Coushatta Reservation (mapped to 80602) |
| 8219 | Eastern Cherokee Reservation (mapped to 81111) |
| 8220 | Seminole Fl Trust Land (mapped to 80505) |
| 8221 | Mississippi Choctaw Reservation (mapped to 80701) |

## 3.2 Species Codes

The SN variant recognizes 87 species, plus three other composite species categories. You may use FVS species codes, Forest Inventory and Analysis (FIA) species codes, or USDA Natural Resources Conservation Service PLANTS symbols to represent these species in FVS input data. Any valid eastern species code identifying species not recognized by the variant will be mapped to a similar species in the variant. The species mapping crosswalk is available on the FVS website variant documentation webpage. Any non-valid species code will default to the “other” category.

Either the FVS sequence number or species code must be used to specify a species in FVS keywords and Event Monitor functions. FIA codes or PLANTS symbols are only recognized during data input and may not be used in FVS keywords. Table 3.2.1 shows the complete list of species codes recognized by the SN variant.

**Table 3.2.1 Species codes used in the SN variant.**

| **Species Number** | **Species Code** | **FIA Code** | **PLANTS Symbol** | **Scientific Name1** | **Common Name1** |
| --- | --- | --- | --- | --- | --- |
| 1 | FR | 010 | ABIES | *Abies* | fir |
| 2 | JU | 057 | JUNIP | *Juniperus* | juniper |
| 3 | PI | 090 | PICEA | *Picea* | spruce |
| 4 | PU | 107 | PICL | *Pinus clausa* | sand pine |
| 5 | SP | 110 | PIEC2 | *Pinus echinata* | shortleaf pine |
| 6 | SA | 111 | PIEL | *Pinus elliottii* | slash pine |
| 7 | SR | 115 | PIGL2 | *Pinus glabra* | spruce pine |
| 8 | LL | 121 | PIPA2 | *Pinus palustris* | longleaf pine |
| 9 | TM | 123 | PIPU5 | *Pinus pungens* | Table Mountain pine |
| 10 | PP | 126 | PIRI | *Pinus rigida* | pitch pine |
| 11 | PD | 128 | PISE | *Pinus serotina* | pond pine |
| 12 | WP | 129 | PIST | *Pinus strobus* | eastern white pine |
| 13 | LP | 131 | PITA | *Pinus taeda* | loblolly pine |
| 14 | VP | 132 | PIVI2 | *Pinus viginiana* | Virginia pine |
| 15 | BY | 221 | TADI2 | *Taxodium distichum* | bald cypress |
| 16 | PC | 222 | TAAS | *Taxodium ascendens* | pond cypress |
| 17 | HM | 260 | TSUGA | *Tsuga* | hemlock |
| 18 | FM | 311 | ACBA3 | *Acer barbatum* | southern sugar maple |
| 19 | BE | 313 | ACNE2 | *Acer negundo* | boxelder |
| 20 | RM | 316 | ACRU | *Acer rubrum* | red maple |
| 21 | SV | 317 | ACSA2 | *Acer saccharinum* | silver maple |
| 22 | SM | 318 | ACSA3 | *Acer saccharum* | sugar maple |
| 23 | BU | 330 | AESCU | *Aesculus* | buckeye |
| 24 | BB | 370 | BETUL | *Betula* | birch |
| 25 | SB | 372 | BELE | *Betula lenta* | sweet birch |
| 26 | AH | 391 | CACA18 | *Carpinus caroliniana* | American hornbeam |
| 27 | HI | 400 | CARYA | *Carya* | hybrid hickory |
| 28 | CA | 450 | CATAL | *Catalpa* | catalpa |
| 29 | HB | 460 | CELTI | *Celtis* | hackberry |
| 30 | RD | 471 | CECA4 | *Cercis canadensis* | eastern redbud |
| 31 | DW | 491 | COFL2 | *Cornus florida* | flowering dogwood |
| 32 | PS | 521 | DIVI5 | *Diospyros virginiana* | common persimmon |
| 33 | AB | 531 | FAGR | *Fagus grandifolia* | American beech |
| 34 | AS | 540 | FRAXI | *Fraxinus* | ash |
| 35 | WA | 541 | FRAM2 | *Fraxinus americana* | white ash |
| 36 | BA | 543 | FRNI | *Fraxinus nigra* | black ash |
| 37 | GA | 544 | FRPE | *Fraxinus pennsylvanica* | green ash |
| 38 | HL | 552 | GLTR | *Gleditsia triacanthos* | honeylocust |
| 39 | LB | 555 | GOLA | *Gordonia lasianthus* | loblolly bay |
| 40 | HA | 580 | HALES | *Halesia* | silverbell |
| 41 | HY | 591 | ILOP | *Ilex opaca* | American holly |
| 42 | BN | 601 | JUCI | *Juglans cinerea* | butternut |
| 43 | WN | 602 | JUNI | *Juglans nigra* | black walnut |
| 44 | SU | 611 | LIST2 | *Liquidamber styraciflua* | sweetgum |
| 45 | YP | 621 | LITU | *Liriodendron tulipifera* | tuliptree |
| 46 | MG | 650 | MAGNO | *Magnolia* | magnolia |
| 47 | CT | 651 | MAAC | *Magnolia acuminata* | cucumber tree |
| 48 | MS | 652 | MAGR4 | *Magnolia grandiflora* | southern magnolia |
| 49 | MV | 653 | MAVI2 | *Magnolia virginiana* | sweetbay |
| 50 | ML | 654 | MAMA2 | *Magnolia macrophylla* | bigleaf magnolia |
| 51 | AP | 660 | MALUS | *Malus* | apple |
| 52 | MB | 680 | MORUS | *Morus* | mulberry |
| 53 | WT | 691 | NYAQ2 | *Nyssa aquatica* | water tupelo |
| 54 | BG | 693 | NYSY | *Nyssa sylvatica* | blackgum |
| 55 | TS | 694 | NYBI | *Nyssa biflora* | swamp tupelo |
| 56 | HH | 701 | OSVI | *Ostrya virginiana* | hophornbeam |
| 57 | SD | 711 | OXAR | *Oxydendrum arboreum* | sourwood |
| 58 | RA | 721 | PEBO | *Persea borbonia* | redbay |
| 59 | SY | 731 | PLOC | *Platanus occidentalis* | American sycamore |
| 60 | CW | 740 | POPUL | *Populus* | cottonwood |
| 61 | BT | 743 | POGR4 | *Populus grandidentata* | bigtooth aspen |
| 62 | BC | 762 | PRSE2 | *Prunus serotina* | black cherry |
| 63 | WO | 802 | QUAL | *Quercus alba* | white oak |
| 64 | SO | 806 | QUCO2 | *Quercus coccinea* | scarlet oak |
| 65 | SK | 812 | QUFA | *Quercus falcata* | southern red oak |
| 66 | CB | 813 | QUPA5 | *Quercus pagoda* | cherrybark oak |
| 67 | TO | 819 | QULA2 | *Quercus laevis* | turkey oak |
| 68 | LK | 820 | QULA3 | *Quercus laurifolia* | laurel oak |
| 69 | OV | 822 | QULY | *Quercus lyrata* | overcup oak |
| 70 | BJ | 824 | QUMA3 | *Quercus marilandica* | blackjack oak |
| 71 | SN | 825 | QUMI | *Quercus michauxii* | swamp chestnut oak |
| 72 | CK | 826 | QUMU | *Quercus muehlenbergii* | chinkapin oak |
| 73 | WK | 827 | QUNI | *Quercus nigra* | water oak |
| 74 | CO | 832 | QUPR2 | *Quercus prinus* | chestnut oak |
| 75 | RO | 833 | QURU | *Quercus rubra* | northern red oak |
| 76 | QS | 834 | QUSH | *Quercus shumardii* | Shumard’s oak |
| 77 | PO | 835 | QUST | *Quercus stellata* | post oak |
| 78 | BO | 837 | QUVE | *Quercus velutina* | black oak |
| 79 | LO | 838 | QUVI | *Quercus virginiana* | live oak |
| 80 | BK | 901 | ROPS | *Robinia pseudoacacia* | black locust |
| 81 | WI | 920 | SALIX | *Salix* | willow |
| 82 | SS | 931 | SAAL5 | *Sassafras albidum* | sassafras |
| 83 | BD | 950 | TILIA | *Tilia* | basswood |
| 84 | EL | 970 | ULMUS | *Ulmus* | elm |
| 85 | WE | 971 | ULAL | *Ulmus alata* | winged elm |
| 86 | AE | 972 | ULAM | *Ulmus americana* | American elm |
| 87 | RL | 975 | ULRU | *Ulmus rubra* | slippery elm |
| 88 | OS | 299 | 2TN |  | other softwood2 |
| 89 | OH | 998 | 2TB |  | other hardwood2 |
| 90 | OT | 999 | 2TREE |  | other2 |

1Set based on the USDA Forest Service NRM TAXA lists and the USDA Plants database.

2Other categories use FIA codes and NRM TAXA codes that best match the other category.

## 3.3 Habitat Type, Plant Association, and Ecological Unit Codes

The SN variant uses subregions within the ecoregion classification system as means to identify major geographic regions within the southern US (Cleland and others 2007; Keys and others 1995, McNab and Keyser 2011). Users enter subregion at the subsection level via an Ecological Unit Code (EUC). EUC affect species site index transformation, large tree diameter growth and the initialization of live surface fuels. Site index conversions are split via mountain and other province EUC. EUC are aggregated into ecoregion categories, delineated for the most part at the province level, for use in the large tree diameter growth model and for initializing live surface fuels.

A complete list of acceptable EUC and the mapping of EUC into ecoregion categories are shown in Appendix A. Digital spatial data for the EUC can be found on the FVS Documents page (Ecological Unit Codes): <https://www.fs.usda.gov/managing-land/forest-management/fvs/documents>.

If no EUC or an incorrect EUC is entered in the input data, then the default EUC code of 231Dd (Quartzite and Talladega Slate Ridge) is used. Users may enter the EUC or the EUC FVS sequence number on the STDINFO keyword, when entering stand information from a database, or when using the SETSITE keyword without the PARMS option. If using the PARMS option with the SETSITE keyword, users must use the FVS sequence number for the EUC. Note that the EUC is set to ‘232BQ’ for the Fort Bragg Military Reservation.

## 3.4 Site Index

Site index is used in the growth equations for the SN variant. Users should always use the site index curves from Carmean and others (1989) to estimate site index, as identified in table 3.4.1. If site index is available, a single site index for the whole stand can be entered, a site index for each individual species in the stand can be entered, or a combination of these can be entered. While a site index may be entered for any species, only those species identified in table 3.4.1 may be assigned as a valid site species. These species were identified as valid site index species by the Southern states Forest Inventory and Analysis Units at the time of model development. If site species is set to a non-valid species or site index is missing, the site species is set to white oak with a default site index set to 70.

Site indices for species not assigned a site index are converted from the site species site index using transformation equations outlined in Doolittle (1958) for the Southern Appalachian species and USDA Forest Service site index equivalency tables (USDA Forest Service 1992) for the Southern Piedmont and Mountains species. Species are grouped according to similar growth rates into nine site index groups. Determining each species site index is a four-step process. First, the relative site index of the site species is determined using the minimum and maximum site index values identified in table 3.4.1 and equation {3.4.1}. Second, a site index transformation index is computed using equation {3.4.2} for the site species; coefficients are located in table 3.4.2. Third, the relative site index for each of the site index groups is computed using equation {3.4.3}. Fourth, species site indices are computed using the relative site index for their assigned site index group using equation {3.4.4}. All non-valid site species are assigned a site index based on the relative site index of white oak (site group 9).

{3.4.1}*RISP* = (*SIsite* – *SImin*) / (*SImax* – *SImin*)

{3.4.2} MGSPIX = A + B \* (RSISP \* (SIGmax – SIGmin) + SIGmin )

{3.4.3} MGRSI = ((C + D \* MGSPIX) – SIGmin) / (SIGmax – SIGmin)

{3.4.4} SISP = MGRSI \* (SImax – SImin) + SImin

where:

RSISP is relative site index of site species

SIsite is site index of site species

*SImin* is site index minimum of species

*SImax* is site index maximum of species

*MGSPIX* is site index transformation index for the site species group

*SIGmin* is site index minimum of site species group

*SIGmax* is site index maximum of site species group

A and B are coefficients of the transformation index shown in table 3.4.2

*MGRSI*  is relative site index of each site index group

C and D are coefficients of the site index group shown in table 3.4.2

*SISP* is species site index

*MGRSI* is relative site index assigned in table 3.4.2

**Table 3.4.1 Site index equations and minimum and maximum site index ranges for the SN variant.**

| **Species Code** | **NC-128: Height Growth Equation (FIA species code/page number)** | **SImin** | **SImax** |
| --- | --- | --- | --- |
| FR1 | 012/70 | 15 | 100 |
| JU1 | 068/73 | 15 | 70 |
| PI1 | 097/88 | 15 | 80 |
| PU1 | 107/92 | 35 | 100 |
| SP1 | 110/93 | 35 | 105 |
| SA1 | 111/99 | 35 | 105 |
| SR1 | 097/88 | 45 | 90 |
| LL1 | 121/107 | 45 | 125 |
| TM | 068/73 | 35 | 70 |
| PP1 | 132/139 | 25 | 95 |
| PD1 | 128/117 | 35 | 105 |
| WP1 | 129/119 | 40 | 135 |
| LP1 | 131/125 | 40 | 125 |
| VP1 | 132/139 | 35 | 95 |
| BY1 | 611/36 | 30 | 120 |
| PC1 | 611/36 | 30 | 120 |
| HM1 | 261/142 | 35 | 90 |
| FM | 317/19 | 35 | 70 |
| BE | 316/16 | 35 | 70 |
| RM1 | 316/16 | 35 | 85 |
| SV | 317/19 | 30 | 105 |
| SM1 | 318/18 | 35 | 100 |
| BU | 318/18 | 25 | 90 |
| BB1 | 371/21 | 35 | 85 |
| SB1 | 371/21 | 35 | 70 |
| AH | 068/73 | 15 | 40 |
| HI | 400/25 | 25 | 85 |
| CA | 543/29 | 30 | 90 |
| HB | 068/73 | 15 | 90 |
| RD | 068/73 | 15 | 40 |
| DW | 068/73 | 15 | 45 |
| PS | 068/73 | 15 | 70 |
| AB1 | 531/26 | 35 | 85 |
| AS1 | 544/30 | 35 | 105 |
| WA1 | 541/28 | 35 | 95 |
| BA | 543/29 | 35 | 85 |
| GA | 544/30 | 35 | 105 |
| HL | 901/65 | 25 | 120 |
| LB | 043/72 | 15 | 50 |
| HA | 068/73 | 15 | 65 |
| HY | 531/26 | 35 | 70 |
| BN | 602/31 | 35 | 85 |
| WN | 602/31 | 35 | 85 |
| SU1 | 611/36 | 30 | 125 |
| YP1 | 621/39 (Mountain) | 30 | 135 |
| YP1 | 621/38 (Piedmont) | 30 | 135 |
| MG | 694/42 | 35 | 125 |
| CT1 | 802/52 | 25 | 115 |
| MS | 694/42 | 35 | 125 |
| MV | 694/42 | 15 | 75 |
| ML | 694/42 | 35 | 125 |
| AP | 068/73 | 15 | 40 |
| MB | 068/73 | 15 | 55 |
| WT | 691/41 | 30 | 105 |
| BG | 694/42 | 35 | 105 |
| TS | 694/42 | 35 | 95 |
| HH | 068/73 | 15 | 40 |
| SD | 068/73 | 15 | 70 |
| RA | 068/73 | 15 | 60 |
| SY1 | 621/39 | 30 | 120 |
| CW1 | 742/45 | 40 | 125 |
| BT1 | 743/47 | 30 | 90 |
| BC1 | 762/50 | 35 | 105 |
| WO1 | Upland Oak/52 | 25 | 115 |
| SO1 | Upland Oak/52 | 25 | 115 |
| SK1 | Upland Oak/52 | 25 | 115 |
| CB1 | 813/58 | 30 | 125 |
| TO | 068/73 | 25 | 65 |
| LK | 068/73 | 25 | 65 |
| OV1 | 828/60 | 35 | 95 |
| BJ | 068/73 | 25 | 65 |
| SN1 | 827/59 | 35 | 95 |
| CK | 802/52 | 35 | 75 |
| WK1 | 827/59 | 30 | 115 |
| CO1 | Upland Oak/52 | 25 | 115 |
| RO1 | Upland Oak/52 | 25 | 115 |
| QS1 | 813/58 | 15 | 125 |
| PO | 068/73 | 25 | 85 |
| BO1 | Upland Oak/52 | 25 | 115 |
| LO | 827/59 | 30 | 65 |
| BK | 901/65 | 25 | 95 |
| WI | 901/65 | 15 | 110 |
| SS | 068/73 | 15 | 80 |
| BD1 | 951/66 | 35 | 90 |
| EL | 972/68 | 35 | 90 |
| WE | 972/68 | 35 | 90 |
| AE | 972/68 | 35 | 90 |
| RL1 | 972/68 | 35 | 90 |
| OS | 068/73 | 15 | 55 |
| OH | 068/73 | 15 | 55 |
| OT | 068/73 | 15 | 55 |

1 Denotes valid site index site species.

**Table 3.4.2 Site index groups, species mapping and coefficients for site index transformations for the SN variant.**

| **Site Index Group** | **Site Index Species** | **Mapped Species** | **Site\*** | **A** | **B** | **C** | **D** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | SP | SP,SA,PD,HM | M | -7.1837 | 0.1633 | 44 | 6.13 |
| O | -10.000 | 0.2000 | 50 | 5.00 |
| 2 | SO | SO,WA,CT,RO,BO | M | -8.6809 | 0.1702 | 51 | 5.88 |
| O | -12.000 | 0.2000 | 60 | 5.00 |
| S | -16.000 | 0.2667 | 60 | 3.75 |
| 3 | YP | BY,PC,SU,SY,QS,YP | All | -4.0000 | 0.1000 | 40 | 10.00 |
| 4 | WP | LL,WP,LP | All | -9.4118 | 0.1569 | 60 | 6.38 |
| 5 | VP | JU,FR,PI,SR,PU,VP | All | -9.3913 | 0.1739 | 54 | 5.75 |
| 6 | SK | AS,BT,SK,RL | All | -10.000 | 0.2000 | 50 | 5.00 |
| 7 | CO | CO | All | -8.6809 | 0.1702 | 51 | 5.88 |
| 8 | PP | PP | All | -7.1839 | 0.1633 | 44 | 6.13 |
| 9 | WO | RM,SM,BB,SB,AB,CW,BC,  WO,CB,OV,SN,WK,BD | M | -8.7442 | 0.1860 | 47 | 5.38 |
| O | -10.000 | 0.2000 | 50 | 5.00 |

\*M = Mountain, O = Other, S = species 78(BO)

## 3.5 Maximum Density

Maximum stand density index (SDI) and maximum basal area (BA) are important variables in determining density related mortality and crown ratio change. Maximum basal area is a stand level metric that can be set using the BAMAX or SETSITE keywords. If not set by the user, a default value is calculated from maximum stand SDI each projection cycle. Maximum stand density index can be set for each species using the SDIMAX or SETSITE keywords. If not set by the user, a default value is assigned as discussed below.

The default maximum SDI is set by species or a user specified basal area maximum. If a user specified basal area maximum is present, the maximum SDI for all species is computed using equation {3.5.1}; otherwise, species SDI maximums are assigned from the SDI maximums shown in table 3.5.1. Maximum stand density index at the stand level is a weighted average, by basal area, of the individual species SDI maximums.

Stand SDI is calculated using the Zeide calculation method (Dixon 2002).

{3.5.1} *SDIMAXi =* *BAMAX* / (0.5454154 \* *SDIU)*

where:

*SDIMAXi* is species-specific SDI maximum

*BAMAX* is the user-specified stand basal area maximum

*SDIU* is theproportion of theoretical maximum density at which the stand reaches actual maximum density (default 0.85, changed with the SDIMAX keyword)

**Table 3.5.1 Stand density index maximums by species in the SN variant.**

| **Species Code** | **SDI Maximums\*** | **Mapped to** | **Species Code** | **SDI Maximums\*** | **Mapped to** |
| --- | --- | --- | --- | --- | --- |
| FR | 655 | balsam fir | MG | 492 | sweetbay |
| JU | 354 | eastern redcedar | CT | 415 |  |
| PI | 412 | white spruce | MS | 492 | sweetbay |
| PU | 499 | Virginia pine | MV | 492 |  |
| SP | 490 |  | ML | 492 | sweetbay |
| SA | 385 |  | AP | 422 | eastern redbud |
| SR | 490 | shortleaf pine | MB | 277 | red mulberry |
| LL | 332 |  | WT | 726 |  |
| TM | 398 | pitch pine | BG | 430 |  |
| PP | 398 |  | TS | 704 |  |
| PD | 310 |  | HH | 304 |  |
| WP | 529 |  | SD | 164 |  |
| LP | 480 |  | RA | 492 | sweetbay |
| VP | 499 |  | SY | 499 |  |
| BY | 692 |  | CW | 648 | eastern cottonwood |
| PC | 623 |  | BT | 520 |  |
| HM | 518 | eastern hemlock | BC | 384 |  |
| FM | 371 | sugar maple | WO | 361 |  |
| BE | 344 |  | SO | 315 |  |
| RM | 421 |  | SK | 342 |  |
| SV | 590 |  | CB | 405 |  |
| SM | 371 |  | TO | 326 | blackjack oak |
| BU | 371 | sugar maple | LK | 387 |  |
| BB | 400 | river birch | OV | 384 |  |
| SB | 350 |  | BJ | 326 |  |
| AH | 375 |  | SN | 417 | chestnut oak |
| HI | 276 | pignut hickory | CK | 336 |  |
| CA | 492 | sassafras | WK | 365 |  |
| HB | 420 | hackberry | CO | 417 |  |
| RD | 422 |  | RO | 414 |  |
| DW | 257 |  | QS | 342 | southern red oak |
| PS | 147 |  | PO | 311 |  |
| AB | 364 |  | BO | 370 |  |
| AS | 414 | green ash | LO | 410 |  |
| WA | 408 |  | BK | 343 |  |
| BA | 423 |  | WI | 447 | black willow |
| GA | 414 |  | SS | 492 |  |
| HL | 338 |  | BD | 526 | American basswood |
| LB | 492 | sweetbay | EL | 282 | American elm |
| HA | 430 | blackgum | WE | 263 |  |
| HY | 155 |  | AE | 282 |  |
| BN | 283 | black walnut | RL | 227 |  |
| WN | 283 |  | OS | 354 | eastern redcedar |
| SU | 430 |  | OH | 492 | sassafras |
| YP | 478 |  | OT | 421 | red maple |

\*Source of SDI maximums is an unpublished analysis of FIA data by John Shaw.

# 4.0 Growth Relationships

This chapter describes the functional relationships used to fill in missing tree data and calculate incremental growth. In FVS, trees are grown in either the small tree sub-model or the large tree sub-model depending on the diameter.

## 4.1 Height-Diameter Relationships

Height-diameter relationships in FVS are primarily used to estimate tree heights missing in the input data, and occasionally to estimate diameter growth on trees smaller than a given threshold diameter. In the SN variant, the model will dub in heights by one of two methods. By default, the SN variant will use the Curtis-Arney functional form as shown in equation {4.1.1} (Curtis 1967, Arney 1985). FVS can switch to a logistic height-diameter equation {4.1.2} (Wykoff, et.al 1982) that may be calibrated to the input data; however, the default in the SN variant is to use equation {4.1.1}.

FVS will not automatically use equation {4.1.2} even if you have enough height values in the input data. To override this default, the user must use the NOHTDREG keyword and change field 2 to a 1. Coefficients for the height-diameter equations are given in table 4.1.1. Tree records eligible for calibrating the height-diameter curve must have diameters greater than 3 inches.

**{4.1.1} Curtis-Arney equation**

*DBH* <u>></u> 3.0”*:* *HT* = 4.5 + P2 \* exp(-P3 \* *DBH* ^P4)

*DBH* < 3.0”: *HT* = ((4.5 + P2 \* exp(*-*P3 \* 3.0^ P4) – 4.51) \* (*DBH* – *Dbw*) / (3 – *Dbw*)) + 4.51

**{4.1.2}Wykoff functional form**

*HT* = 4.5 + exp (B1 + B2 / (*DBH* + 1.0))

where:

*HT* is tree height

*DBH* is tree diameter at breast height

*Dbw* is bud width diameter at 4.51 feet shown in table 4.1.1

B1 - B2 are species-specific coefficients shown in table 4.1.1

P2 - P4 are species-specific coefficients shown in table 4.1.2

**Table 4.1.1 Coefficients (P2 - P4), (B1 - B2), and Dbw for the height-diameter relationship equations {4.1.1}, {4.1.2}, and {4.1.3} in the SN variant.**

| **Species Code** | **Curtis-Arney Coefficients** | | | | **Wykoff Coefficients** | |
| --- | --- | --- | --- | --- | --- | --- |
| **P2** | **P3** | **P4** | **Dbw** | **Default B1** | **B2** |
| FR | 2163.946776 | 6.26880851 | -0.2161439 | 0.1 | 4.5084 | -6.0116 |
| JU | 212.7932729 | 3.47154903 | -0.3258523 | 0.3 | 4.0374 | -4.2964 |
| PI | 2163.946776 | 6.26880851 | -0.2161439 | 0.2 | 4.5084 | -6.0116 |
| PU | 3919.995225 | 6.87312726 | -0.19063343 | 0.5 | 4.2899 | -4.1019 |
| SP | 444.0921666 | 4.11876312 | -0.30617043 | 0.5 | 4.6271 | -6.4095 |
| SP\* | 444.0921666 | 4.11876312 | -0.30617043 | 0.5 | 4.705 | -7.904 |
| SA | 1087.101439 | 5.10450596 | -0.24284896 | 0.5 | 4.6561 | -6.2258 |
| SA\* | 110.3 | 7.0670 | -1.0420 | 0.5 | 4.787 | -8.015 |
| SR | 333.3145742 | 4.13108244 | -0.37092539 | 0.5 | 4.7258 | -6.7703 |
| LL | 98.56082813 | 3.89930709 | -0.86730393 | 0.5 | 4.5991 | -5.9111 |
| LL\* | 114.6 | 4.1840 | -0.6940 | 0.5 | 4.562 | -7.314 |
| TM | 691.5411919 | 4.19801014 | -0.1856823 | 0.5 | 4.2139 | -4.5419 |
| PP | 208.7773185 | 3.72806565 | -0.410875 | 0.5 | 4.3898 | -5.7183 |
| PD | 142.7468108 | 3.97260802 | -0.5870983 | 0.5 | 4.5457 | -6.8000 |
| PD\* | 623.9 | 4.7396 | -0.2763 | 0.5 | 4.806 | -9.573 |
| WP | 2108.844224 | 5.65948135 | -0.18563136 | 0.4 | 4.6090 | -6.1896 |
| LP | 243.860648 | 4.28460566 | -0.47130185 | 0.5 | 4.6897 | -6.8801 |
| LP\* | 184.3 | 4.2660 | -0.5496 | 0.5 | 4.79 | -8.5 |
| VP | 926.1802712 | 4.46209203 | -0.20053974 | 0.5 | 4.4718 | -5.0078 |
| BY | 119.5749091 | 4.13535453 | -0.79625456 | 0.2 | 4.6171 | -6.2684 |
| PC | 162.6505825 | 3.20796415 | -0.47880203 | 0.2 | 4.4603 | -5.0577 |
| HM | 266.4562239 | 3.99313675 | -0.38600287 | 0.1 | 4.5084 | -6.0116 |
| FM | 603.6736175 | 3.9896005 | -0.21651785 | 0.2 | 4.3164 | -4.0582 |
| BE | 287.9445676 | 3.27674704 | -0.26617485 | 0.2 | 4.2378 | -4.1080 |
| RM | 268.5564351 | 3.11432843 | -0.29411156 | 0.2 | 4.3379 | -3.8214 |
| SV | 80.51179925 | 26.98331005 | -2.02202808 | 0.2 | 4.5991 | -6.6706 |
| SM | 209.8555358 | 2.95281334 | -0.36787496 | 0.2 | 4.4834 | -4.5431 |
| BU | 630.9504602 | 4.51086779 | -0.26826208 | 0.3 | 4.5697 | -5.7172 |
| BB | 170.5253403 | 2.68833651 | -0.40080716 | 0.1 | 4.4388 | -4.0872 |
| SB | 68.92234069 | 43.33832185 | -2.44448482 | 0.1 | 4.4522 | -4.5758 |
| AH | 628.0209077 | 3.88103963 | -0.15387585 | 0.2 | 3.8550 | -2.6623 |
| HI | 337.6684758 | 3.62726466 | -0.32083172 | 0.3 | 4.5128 | -4.9918 |
| CA | 190.9797059 | 3.69278884 | -0.52730469 | 0.3 | 4.9396 | -8.1838 |
| HB | 484.7529797 | 3.93933286 | -0.25998833 | 0.1 | 4.4207 | -5.1435 |
| RD | 103.1767713 | 2.21695491 | -0.3596216 | 0.2 | 3.7512 | -2.5539 |
| DW | 863.0501053 | 4.38560239 | -0.14812185 | 0.1 | 3.7301 | -2.7758 |
| PS | 488.9349192 | 4.06503751 | -0.27180547 | 0.2 | 4.4091 | -4.8464 |
| AB | 526.1392688 | 3.89232121 | -0.22587084 | 0.1 | 4.4772 | -4.7206 |
| AS | 251.4042514 | 3.26919806 | -0.35905996 | 0.2 | 4.4819 | -4.5314 |
| WA | 91.35276617 | 6.99605268 | -1.22937669 | 0.2 | 4.5959 | -6.4497 |
| BA | 178.9307637 | 4.92861465 | -0.63777014 | 0.2 | 4.6155 | -6.2945 |
| GA | 404.9692122 | 3.39019741 | -0.255096 | 0.2 | 4.6155 | -6.2945 |
| HL | 778.9356784 | 4.20756452 | -0.18734197 | 0.1 | 4.3734 | -5.3135 |
| LB | 265.7422693 | 3.59041788 | -0.35232417 | 0.2 | 4.4009 | -5.0560 |
| HA | 2620.585492 | 5.84993689 | -0.18030935 | 0.2 | 4.4931 | -4.6501 |
| HY | 1467.643523 | 5.33438509 | -0.17395792 | 0.1 | 4.0151 | -4.3314 |
| BN | 285.8797853 | 3.52138815 | -0.3193688 | 0.3 | 4.5018 | -5.6123 |
| WN | 93.71042027 | 3.6575094 | -0.88246833 | 0.4 | 4.5018 | -5.6123 |
| SU | 290.90548 | 3.6239536 | -0.3720123 | 0.2 | 4.5920 | -5.1719 |
| YP | 625.7696614 | 3.87320571 | -0.23349496 | 0.2 | 4.6892 | -4.9605 |
| MG | 585.6609078 | 3.41972033 | -0.17661706 | 0.2 | 4.4004 | -4.7519 |
| CT | 660.1996521 | 3.92077102 | -0.21124354 | 0.2 | 4.6067 | -5.2030 |
| MS | 139.3315132 | 2.89981329 | -0.48514023 | 0.2 | 4.4004 | -4.7519 |
| MV | 184.1931837 | 2.84569124 | -0.36952511 | 0.2 | 4.3609 | -4.1423 |
| ML | 366.4744742 | 2.8733336 | -0.1819814 | 0.2 | 4.4004 | -4.7519 |
| AP | 574.0200612 | 3.86373895 | -0.16318776 | 0.2 | 3.9678 | -3.2510 |
| MB | 750.1823388 | 4.14262749 | -0.15940723 | 0.2 | 3.9613 | -3.1993 |
| WT | 163.9728054 | 2.76819717 | -0.44098009 | 0.2 | 4.4330 | -4.5383 |
| BG | 319.9788466 | 3.67313408 | -0.30651323 | 0.2 | 4.3802 | -4.7903 |
| TS | 252.3566527 | 3.24398683 | -0.33343129 | 0.2 | 4.4334 | -4.5709 |
| HH | 109.7324294 | 2.25025802 | -0.41297463 | 0.2 | 4.0322 | -3.0833 |
| SD | 690.4917743 | 4.15983216 | -0.18613455 | 0.2 | 4.1352 | -3.7450 |
| RA | 257.0532628 | 3.4047448 | -0.30291274 | 0.2 | 4.0965 | -3.9250 |
| SY | 644.3567687 | 3.92045786 | -0.21444786 | 0.1 | 4.6355 | -5.2776 |
| CW | 190.9797059 | 3.69278884 | -0.52730469 | 0.1 | 4.9396 | -8.1838 |
| BT | 66.6488871 | 135.4825559 | -2.88622709 | 0.2 | 4.9396 | -8.1838 |
| BC | 364.0247807 | 3.55987361 | -0.27263121 | 0.1 | 4.3286 | -4.0922 |
| WO | 170.1330787 | 3.27815866 | -0.48744214 | 0.2 | 4.5463 | -5.2287 |
| SO | 196.0564703 | 3.0067167 | -0.38499624 | 0.2 | 4.5225 | -4.9401 |
| SK | 150.4300023 | 3.13270999 | -0.49925872 | 0.1 | 4.5142 | -5.2205 |
| CB | 182.6306309 | 3.12897883 | -0.46391125 | 0.1 | 4.7342 | -6.2674 |
| TO | 2137.575644 | 5.80907868 | -0.15590506 | 0.2 | 3.9365 | -4.4599 |
| LK | 208.2300233 | 3.13834277 | -0.37158262 | 0.1 | 4.4375 | -4.6654 |
| OV | 184.0856396 | 3.49535241 | -0.46211544 | 0.2 | 4.5710 | -6.0922 |
| BJ | 157.4828626 | 3.38919504 | -0.39151499 | 0.2 | 3.9191 | -4.3503 |
| SN | 281.3413276 | 3.51695826 | -0.3336282 | 0.2 | 4.6135 | -5.7613 |
| CK | 72.7907469 | 3.67065539 | -1.09878979 | 0.1 | 4.3420 | -5.1193 |
| WK | 470.0617193 | 3.78892643 | -0.25123824 | 0.1 | 4.5577 | -4.9595 |
| CO | 94.54465221 | 3.42034111 | -0.818759 | 0.2 | 4.4618 | -4.8786 |
| RO | 700.0636452 | 4.10607389 | -0.21392785 | 0.2 | 4.5202 | -4.8896 |
| QS | 215.0009406 | 3.14204012 | -0.39067352 | 0.1 | 4.6106 | -5.4380 |
| PO | 765.2907525 | 4.22375114 | -0.18974706 | 0.1 | 4.2496 | -4.8061 |
| BO | 224.716279 | 3.11648501 | -0.35982064 | 0.2 | 4.4747 | -4.8698 |
| LO | 153.9588254 | 3.11348786 | -0.38947124 | 0.2 | 4.2959 | -5.3332 |
| BK | 880.2844971 | 4.59642097 | -0.21824277 | 0.1 | 4.4299 | -4.9920 |
| WI | 408.2772475 | 3.81808285 | -0.27210505 | 0.1 | 4.4911 | -5.7928 |
| SS | 755.1038099 | 4.39496421 | -0.21778831 | 0.1 | 4.3383 | -4.5018 |
| BD | 293.5715132 | 3.52261899 | -0.35122247 | 0.1 | 4.582 | -5.0903 |
| EL | 1005.80672 | 4.6473994 | -0.20336143 | 0.1 | 4.3744 | -4.5257 |
| WE | 1001.672885 | 4.57310438 | -0.18898217 | 0.1 | 4.5992 | -7.7428 |
| AE | 418.5941897 | 3.17038578 | -0.18964025 | 0.1 | 4.6008 | -7.2732 |
| RL | 1337.547184 | 4.48953501 | -0.14749529 | 0.1 | 4.6238 | -7.4847 |
| OS | 212.7932729 | 3.47154903 | -0.3258523 | 0.3 | 4.3898 | -5.7183 |
| OH | 109.7324294 | 2.25025802 | -0.41297463 | 0.2 | 3.9392 | -3.4279 |
| OT | 31021.35552 | 8.3958757 | -0.10372075 | 0.2 | 3.9089 | -3.0149 |

\* Coefficients for Fort Bragg Military Reservation

## 4.2 Bark Ratio Relationships

Bark ratio estimates are used to convert between diameter outside bark and diameter inside bark in various parts of the model. The equation is shown in equation {4.2.1} and coefficients (b1 and b2) for this equation by species are shown in table 4.2.1. Coefficients for the SN variant are based on Clark (1991).

{4.2.1} *DIB* = b1 + b2 \* (*DOB*) *BRATIO* = *DIB* / *DOB*

where:

*BRATIO* is species-specific bark ratio (bounded to 0.80 <u><</u> *BRATIO* <u><</u> 0.99)

*DIB* is tree diameter inside bark at breast height

*DOB* is tree diameter outside bark at breast height

b1, b2 are species-specific coefficients shown in table 4.2.1

**Table 4.2.1 Bark ratio coefficients by species for the SN variant.**

| **Species Code** | **b1** | **b2** | **Species Code** | **b1** | **b2** |
| --- | --- | --- | --- | --- | --- |
| FR | 0.05119 | 0.89372 | MG | -0.21140 | 0.94461 |
| JU | -0.27012 | 0.97546 | CT | -0.21140 | 0.94461 |
| PI | -0.17289 | 0.91572 | MS | -0.21140 | 0.94461 |
| PU | -0.39956 | 0.95183 | MV | -0.17978 | 0.92381 |
| SP | -0.44121 | 0.93045 | ML | -0.21140 | 0.94461 |
| SA | -0.55073 | 0.91887 | AP | -0.33014 | 0.94215 |
| SR | -0.13301 | 0.93755 | MB | -0.33014 | 0.94215 |
| LL | -0.45903 | 0.92746 | WT | -0.38140 | 0.97327 |
| TM | 0.05119 | 0.89372 | BG | 0.19899 | 0.88941 |
| PP | -0.58808 | 0.91852 | TS | -0.15231 | 0.93442 |
| PD | -0.51271 | 0.90245 | HH | -0.42001 | 0.94264 |
| WP | -0.31608 | 0.92054 | SD | -0.25063 | 0.94349 |
| LP | -0.48140 | 0.91413 | RA | -0.33014 | 0.94215 |
| VP | -0.31137 | 0.95011 | SY | -0.09192 | 0.96411 |
| BY | -0.27012 | 0.97546 | CW | -0.25063 | 0.94349 |
| PC | -0.94204 | 0.96735 | BT | -0.25063 | 0.94349 |
| HM | -0.04931 | 0.92272 | BC | -0.12958 | 0.94152 |
| FM | -0.09800 | 0.94646 | WO | -0.24096 | 0.93789 |
| BE | -0.09800 | 0.94646 | SO | -0.40860 | 0.94613 |
| RM | -0.09800 | 0.94646 | SK | -0.42141 | 0.93008 |
| SV | -0.09800 | 0.94646 | CB | -0.21801 | 0.93540 |
| SM | -0.09800 | 0.94646 | TO | -0.61021 | 0.95803 |
| BU | -0.35332 | 0.95955 | LK | -0.04612 | 0.93127 |
| BB | 0.21790 | 0.92290 | OV | -0.37973 | 0.94380 |
| SB | 0.21790 | 0.92290 | BJ | -0.61021 | 0.95803 |
| AH | -0.13040 | 0.97071 | SN | -0.49699 | 0.94832 |
| HI | -0.60912 | 0.94347 | CK | -0.34225 | 0.93494 |
| CA | -0.33014 | 0.94215 | WK | -0.30330 | 0.95826 |
| HB | -0.18338 | 0.95768 | CO | -0.43197 | 0.92120 |
| RD | -0.33014 | 0.94215 | RO | -0.52266 | 0.95215 |
| DW | -0.33014 | 0.94215 | QS | -0.61021 | 0.95803 |
| PS | -0.42001 | 0.94264 | PO | -0.26493 | 0.91899 |
| AB | -0.13040 | 0.97071 | BO | -0.70754 | 0.94821 |
| AS | -0.34316 | 0.93964 | LO | -0.70754 | 0.94821 |
| WA | -0.48735 | 0.93847 | BK | -0.37166 | 0.89193 |
| BA | -0.25063 | 0.94349 | WI | -0.25063 | 0.94349 |
| GA | -0.34316 | 0.93964 | SS | -0.25063 | 0.94349 |
| HL | -0.42001 | 0.94264 | BD | -0.35979 | 0.95322 |
| LB | -0.33014 | 0.94215 | EL | -0.42027 | 0.96305 |
| HA | -0.33014 | 0.94215 | WE | -0.42027 | 0.96305 |
| HY | -0.33014 | 0.94215 | AE | -0.42027 | 0.96305 |
| BN | -0.42001 | 0.94264 | RL | -0.42027 | 0.96305 |
| WN | -0.42001 | 0.94264 | OS | -0.38344 | 0.91915 |
| SU | -0.39271 | 0.95997 | OH | -0.33014 | 0.94215 |
| YP | -0.22976 | 0.92408 | OT | -0.25063 | 0.94349 |

## 4.3 Crown Ratio Relationships

Crown ratio equations are used for three purposes in FVS: (1) to estimate tree crown ratios missing from the input data for both live and dead trees; (2) to estimate change in crown ratio from cycle to cycle for live trees; and (3) to estimate initial crown ratios for regenerating trees established during a simulation.

### 4.3.1 Crown Ratio Dubbing

In the SN variant, crown ratio missing on dead trees in the input data is dubbed using equation set {4.3.1.1}.

{4.3.1.1} *DBH* <u><</u> 24: *X* = 0.70-0.40/24.0\**DBH*

*DBH* >24: *X* = 0.30

{4.3.1.2} *CR* = 1 / (1 + exp(*X+* *N(0,SD)*))

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.05 <u><</u> *CR* <u><</u> 0.95)

*DBH* is tree diameter at breast height

*N(0,SD)* is a random increment from a normal distribution with a mean of 0 and a standard deviation of SD

A Weibull-based crown model developed by Dixon (1985) as described in Dixon (2002) is used to predict crown ratio for all live trees. To estimate crown ratio using this methodology, the average stand crown ratio is estimated from stand density index using one of following five equations {4.3.1.3} – {4.3.1.7}. Weibull parameters are then estimated from the average stand crown ratio using equations in equation set {4.3.1.8}. Individual tree crown ratio is then set from the Weibull distribution, equation {4.3.1.9} based on a tree’s relative position in the diameter distribution and multiplied by a scale factor, shown in equation {4.3.1.10}, which accounts for stand density. Crowns estimated from the Weibull distribution are bounded to be between the 5 and 95 percentile points of the specified Weibull distribution. Equation reference and coefficients for each species are shown in table 4.3.1.1.

{4.3.1.3} *ACR*= exp[d0 + (d1 \* ln(*RELSDI*)) + (d2 \* *RELSDI*))]

{4.3.1.4} *ACR* = exp[d0 + (d1 \* ln(*RELSDI*)]

{4.3.1.5} *ACR* = d0 + (d2 \* *RELSDI*)

{4.3.1.6} *ACR* = d0 + (d1 \* log10(*RELSDI*))

{4.3.1.7} *ACR* = *RELSDI* / ((d0 \* *RELSDI*) + d1)

{4.3.1.8} Weibull parameters A, B, and C are estimated from average crown ratio

A = a0

B = b0 + b1 \* ACR, bounded to be greater than 3.0

C = c, bounded to be greater than 2.0

{4.3.1.9} *Y* = A + B(-ln(1-X))^(1/C)

{4.3.1.10} *SCALE =* 1 – 0.00167 \* (*CCF* – 100)

where:

*ACR* is the predicted average crown ratio for the species

*RELSDI* is the relative site density index ((Stand *SDI* / Maximum *SDI*) \* 10) and is bounded between 1.0 and 12.0

*A*, *B*, *C* are parameters of the Weibull crown ratio distribution

*Y* is a tree’s crown ratio expressed as a percent of total height

*X* is a trees rank in the diameter distribution (1 = smallest; ITRN = largest) divided by the total number of trees (ITRN) multiplied by *SCALE*, bounded between [0.05,0.95]

*SCALE* is a density dependent scaling factor (bounded to 0.3 <u><</u> *SCALE* <u><</u> 1.0)

*CCF* is the stand crown competition factor

a0, b0, b1, c0, c1, d0, and d1 are species-specific coefficients shown in table 4.3.1

**Table 4.3.1 Coefficients for crown ratio change equations {4.3.1} – {4.3.6} in the SN variant.**

| **Species Code** | ***ACR* Equation** | **d0** | **d1** | **d2** | **a** | **b0** | **b1** | **c** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| FR | 4.3.1.5 | 63.51 |  | -0.09 | 4.0659 | -6.8708 | 1.0510 | 4.1741 |
| JU | 4.3.1.5 | 67.64 |  | -2.25 | 2.4435 | -32.4837 | 1.6503 | 2.6518 |
| PI | 4.3.1.5 | 63.51 |  | -0.09 | 4.0659 | -6.8708 | 1.0510 | 4.1741 |
| PU | 4.3.1.6 | 54.0462 | -18.2118 |  | 4.3780 | -5.0254 | 0.9620 | 2.4758 |
| SP | 4.3.1.6 | 47.7297 | -16.352 |  | 4.6721 | -3.9456 | 1.0509 | 3.0228 |
| SA | 4.3.1.6 | 42.8255 | -15.0135 |  | 3.8940 | -4.7342 | 0.9786 | 2.9082 |
| SR | 4.3.1.4 | 4.17 | -0.23 |  | 5.0000 | -10.1125 | 1.0734 | 3.3218 |
| LL | 4.3.1.6 | 42.84 | -5.62 |  | 3.9771 | 14.3941 | 0.5189 | 3.7531 |
| TM | 4.3.1.6 | 45.8231 | -13.8999 |  | 3.9190 | 1.2933 | 0.7986 | 2.9202 |
| PP | 4.3.1.3 | 4.3546 | -0.5034 | 0.0163 | 3.9190 | 1.2933 | 0.7986 | 2.9202 |
| PD | 4.3.1.3 | 3.8904 | -0.3565 | 0.0478 | 4.3300 | -34.2606 | 1.7823 | 3.0554 |
| WP | 4.3.1.5 | 51.8 |  | -0.8 | 4.6496 | -11.4277 | 1.1343 | 2.9405 |
| LP | 4.3.1.3 | 3.8284 | -0.2234 | 0.0172 | 4.9701 | -14.6680 | 1.3196 | 2.8517 |
| VP | 4.3.1.3 | 4.1136 | -0.331 | 0.007 | 5.0000 | -10.2832 | 1.1019 | 2.4693 |
| BY | 4.3.1.6 | 48.2413 | -10.1014 |  | 5.0000 | -9.8322 | 1.1062 | 2.8512 |
| PC | 4.3.1.6 | 36.0855 | -5.4737 |  | 4.9986 | -9.6939 | 1.0740 | 2.3667 |
| HM | 4.3.1.5 | 63.51 |  | -0.09 | 4.0659 | -6.8708 | 1.0510 | 4.1741 |
| FM | 4.3.1.6 | 53.1867 | -9.4122 |  | 5.0000 | -18.6340 | 1.2622 | 3.6407 |
| BE | 4.3.1.6 | 61.9643 | -22.3363 |  | 5.0000 | -18.6340 | 1.2622 | 3.6407 |
| RM | 4.3.1.6 | 46.1653 | -6.088 |  | 4.7322 | -24.2740 | 1.4587 | 2.9951 |
| SV | 4.3.1.5 | 42.98 |  | 0.55 | 5.0000 | -18.6340 | 1.2622 | 3.6407 |
| SM | 4.3.1.5 | 48.2 |  | -0.01 | 4.6903 | -19.5613 | 1.2928 | 3.3715 |
| BU | 4.3.1.5 | 42.13 |  | -0.1 | 5.0000 | -18.6340 | 1.2622 | 3.6407 |
| BB | 4.3.1.3 | 3.7275 | -0.1124 | 0.0282 | 4.1939 | 1.2500 | 0.8795 | 3.1500 |
| SB | 4.3.1.3 | 3.8785 | -0.1749 | 0.0171 | 4.1939 | 1.2500 | 0.8795 | 3.1500 |
| AH | 4.3.1.3 | 3.9904 | -0.1496 | 0.0171 | 4.5640 | 0.9693 | 0.9093 | 3.0540 |
| HI | 4.3.1.3 | 3.9939 | -0.2117 | 0.0238 | 5.0000 | -29.1096 | 1.5626 | 3.5310 |
| CA | 4.3.1.6 | 48.03 | -13.21 |  | 4.8371 | -14.3180 | 1.2060 | 3.7345 |
| HB | 4.3.1.6 | 50.8266 | -14.5261 |  | 4.5671 | -49.1736 | 2.1311 | 2.9883 |
| RD | 4.3.1.6 | 44.5839 | -14.0874 |  | 5.0000 | 15.0407 | 0.6546 | 3.0344 |
| DW | 4.3.1.6 | 51.8467 | -14.1876 |  | 4.7093 | -9.6999 | 1.1020 | 2.7391 |
| PS | 4.3.1.3 | 3.8415 | -0.2879 | 0.0297 | 4.7093 | -9.6999 | 1.1020 | 2.7391 |
| AB | 4.3.1.6 | 59.09 | -4.99 |  | 4.6965 | -14.3809 | 1.2016 | 3.5571 |
| AS | 4.3.1.5 | 38.26 |  | -0.77 | 4.0098 | -12.7054 | 1.2224 | 2.7400 |
| WA | 4.3.1.3 | 3.7881 | -0.0634 | -0.0055 | 4.8776 | -11.6617 | 1.1668 | 3.8475 |
| BA | 4.3.1.5 | 35.49 |  |  | 4.0098 | -12.7054 | 1.2224 | 2.7400 |
| GA | 4.3.1.5 | 35.49 |  |  | 4.5987 | -16.9647 | 1.3925 | 3.3601 |
| HL | 4.3.1.4 | 3.82 | -0.1 |  | 4.9245 | -13.3135 | 1.2765 | 2.8455 |
| LB | 4.3.1.5 | 37.83 |  | -0.15 | 4.1992 | -16.8789 | 1.2949 | 2.7697 |
| HA | 4.3.1.3 | 4.4653 | -0.834 | 0.107 | 4.7093 | -9.6999 | 1.1020 | 2.7391 |
| HY | 4.3.1.5 | 52.05 |  | -0.11 | 4.6965 | -14.3809 | 1.2016 | 3.5571 |
| BN | 4.3.1.4 | 3.91 | -0.12 |  | 4.2967 | -17.7977 | 1.3186 | 3.0386 |
| WN | 4.3.1.4 | 3.91 | -0.12 |  | 4.2967 | -17.7977 | 1.3186 | 3.0386 |
| SU | 4.3.1.3 | 3.8153 | -0.0964 | 0.0055 | 4.6350 | -39.7348 | 1.9132 | 3.0574 |
| YP | 4.3.1.4 | 3.87 | -0.07 |  | 4.9948 | -11.1090 | 1.1089 | 3.8822 |
| MG | 4.3.1.5 | 44.71 |  | 0.4 | 5.0000 | 9.2520 | 0.7899 | 3.2166 |
| CT | 4.3.1.5 | 42.15 |  | -0.11 | 4.9829 | -5.2479 | 0.9552 | 3.8219 |
| MS | 4.3.1.5 | 44.71 |  | 0.4 | 5.0000 | 9.2520 | 0.7899 | 3.2166 |
| MV | 4.3.1.5 | 36.5 |  | -0.23 | 4.2299 | -32.4970 | 1.7316 | 2.7902 |
| ML | 4.3.1.5 | 44.71 |  | 0.4 | 5.0000 | 9.2520 | 0.7899 | 3.2166 |
| AP | 4.3.1.5 | 55.48 |  | -2.38 | 4.2932 | -7.1512 | 1.0504 | 2.7738 |
| MB | 4.3.1.5 | 42.32 |  | -1.08 | 4.8677 | -22.5591 | 1.4240 | 2.8686 |
| WT | 4.3.1.5 | 36.02 |  | -0.3 | 5.0000 | -15.1643 | 1.2524 | 3.1645 |
| BG | 4.3.1.5 | 41.01 |  | -0.21 | 4.6134 | -42.6970 | 1.9983 | 3.0081 |
| TS | 4.3.1.5 | 41.379 |  | -0.8012 | 4.8257 | -7.1092 | 1.0128 | 2.7232 |
| HH | 4.3.1.6 | 52.7207 | -11.484 |  | 5.0000 | 15.0407 | 0.6546 | 3.0344 |
| SD | 4.3.1.5 | 38.71 |  | -0.1 | 4.8677 | -22.5591 | 1.4240 | 2.8686 |
| RA | 4.3.1.5 | 38.03 |  | -0.09 | 3.5122 | 22.2798 | 0.3081 | 2.7868 |
| SY | 4.3.1.5 | 3.9839 | -0.0462 | -0.0248 | 4.5640 | -30.7592 | 1.6192 | 3.2836 |
| CW | 4.3.1.6 | 48.03 | -13.21 |  | 4.8371 | -14.3180 | 1.2060 | 3.7345 |
| BT | 4.3.1.6 | 48.03 | -13.21 |  | 4.8371 | -14.3180 | 1.2060 | 3.7345 |
| BC | 4.3.1.5 | 45.06 |  | -0.96 | 4.2932 | -7.1512 | 1.0504 | 2.7738 |
| WO | 4.3.1.4 | 4.05 | -0.12 |  | 5.0000 | -16.0927 | 1.2319 | 3.5016 |
| SO | 4.3.1.6 | 51.7 | -9.65 |  | 5.0000 | -4.6551 | 0.9593 | 3.8340 |
| SK | 4.3.1.4 | 3.92 | -0.09 |  | 5.0000 | -26.7842 | 1.6030 | 3.5160 |
| CB | 4.3.1.3 | 3.9112 | -0.1697 | 0.0147 | 5.0000 | -4.2993 | 1.0761 | 3.5922 |
| TO | 4.3.1.4 | 3.95 | -0.02 |  | 4.1406 | 13.6950 | 0.6895 | 3.0427 |
| LK | 4.3.1.6 | 54.36 | -11.3181 |  | 4.6329 | -1.2977 | 0.9438 | 3.2263 |
| OV | 4.3.1.6 | 57.82 | -18.45 |  | 5.0000 | 11.2401 | 0.7081 | 3.5258 |
| BJ | 4.3.1.6 | 56.42 | -14.13 |  | 4.1406 | 13.6950 | 0.6895 | 3.0427 |
| SN | 4.3.1.3 | 3.9344 | -0.0845 | 0.0043 | 4.4764 | -18.7445 | 1.3539 | 3.8384 |
| CK | 4.3.1.3 | 4.1233 | -0.1279 | -0.0142 | 5.0000 | -7.5332 | 1.0257 | 3.1662 |
| WK | 4.3.1.3 | 3.9116 | -0.2657 | 0.0509 | 5.0000 | -50.1177 | 2.1127 | 3.5148 |
| CO | 4.3.1.6 | 54.53 | -14.7 |  | 5.0000 | -9.7922 | 1.0728 | 3.6340 |
| RO | 4.3.1.4 | 3.9 | -0.07 |  | 5.0000 | -12.4107 | 1.1363 | 3.6430 |
| QS | 4.3.1.5 | 46.72 |  | -0.85 | 5.0000 | 5.0414 | 0.8032 | 3.6764 |
| PO | 4.3.1.6 | 44.34 | -5.23 |  | 4.7585 | -83.4596 | 3.0817 | 3.4788 |
| BO | 4.3.1.4 | 4.17 | -0.18 |  | 5.0000 | -6.5883 | 1.0266 | 3.5587 |
| LO | 4.3.1.5 | 49.27 |  | -0.72 | 5.0000 | 11.2401 | 0.7081 | 3.5258 |
| BK | 4.3.1.6 | 49.022 | -22.5732 |  | 3.5643 | -10.5101 | 1.2176 | 2.2033 |
| WI | 4.3.1.5 | 44.5295 |  | -1.0053 | 4.8547 | -17.1135 | 1.3108 | 3.2431 |
| SS | 4.3.1.5 | 38.85 |  | -0.99 | 4.9082 | -11.2413 | 1.1519 | 2.4971 |
| BD | 4.3.1.7 | 0.0283 | -0.012 |  | 4.2656 | -26.6773 | 1.5580 | 4.4024 |
| EL | 4.3.1.4 | 3.68 | -0.02 |  | 5.0000 | 1.1421 | 0.9141 | 3.0621 |
| WE | 4.3.1.6 | 43.64 | -10.03 |  | 4.9367 | 7.6678 | 0.9105 | 3.0303 |
| AE | 4.3.1.3 | 3.7366 | -0.0896 | 0.0151 | 5.0000 | 1.1421 | 0.9141 | 3.0621 |
| RL | 4.3.1.3 | 3.8487 | -0.2005 | 0.0276 | 4.7375 | -21.8810 | 1.5340 | 3.3558 |
| OS | 4.3.1.5 | 67.64 |  | -2.25 | 2.4435 | -32.4837 | 1.6503 | 2.6518 |
| OH | 4.3.1.3 | 3.78 | -0.02 | -0.02 | 4.1374 | 17.2956 | 0.4987 | 2.2670 |
| OT | 4.3.1.4 | 3.93 | -0.15 |  | 4.9041 | -2.5097 | 0.9225 | 2.7628 |

### 4.3.2 Crown Ratio Change

Crown ratio change is estimated after growth, mortality and regeneration are estimated during a projection cycle. Crown ratio change is the difference between the crown ratio at the beginning of the cycle and the predicted crown ratio at the end of the cycle. Crown ratio predicted at the end of the projection cycle is estimated for live tree records using the Weibull distribution, equations {4.3.1.3}-{4.3.1.10}, for all species. Crown change is checked to make sure it doesn’t exceed the change possible if all height growth produces new crown. Crown change is further bounded to 1% per year for the length of the cycle to avoid drastic changes in crown ratio. Equations {4.3.1.1} and {4.3.1.2} are not used when estimating crown ratio change.

### 4.3.3 Crown Ratio for Newly Established Trees

Crown ratios for newly established trees during regeneration are estimated using equation {4.3.3.1}. A random component is added in equation {4.3.3.1} to ensure that not all newly established trees are assigned exactly the same crown ratio.

{4.3.3.1} *CR* = 0.89722 – 0.0000461 \* *PCCF* + *RAN*

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.2 <u><</u> *CR* <u><</u> 0.9)

*PCCF* is crown competition factor on the inventory point where the tree is established

*RAN* is a small random component

## 4.4 Crown Width Relationships

The SN variant calculates the maximum crown width for each individual tree based on individual tree and stand attributes. Crown width for each tree is reported in the tree list output table and used to calculate percent canopy cover (*PCC*) and crown competition factor (CCF) within the model. When available, forest-grown maximum crown width equations are used to compute *PCC* and open-grown maximum crown width equations are used to compute *CCF*.

The SN variant computes tree crown width using equations {4.4.1} through {4.4.5}. Species equation assignment and coefficients are shown in tables 4.4.1 and 4.4.2 for forest- and open-grown equations, respectively. Equations are numbered via the FIA species code and equation number, i.e. the forest grown equation from Bechtold (2003) assigned to fir has the number: 01201.

{4.4.1} Bechtold (2003); Equation 01

*DBH* <u>></u> 5.0: *FCW* = a1 + (a2 \* *DBH*) + (a3 \* *DBH^*2) + (a4 \* *CR*) + (a5 \* *HI*)

*DBH* < 5.0: *FCW* = [a1 + (a2 \* *5.0*) + (a3 \* *5.0^*2) + (a4 \* *CR*) + (a5 \* *HI*)] \* *(DBH* / *5.0*)

{4.4.2} Bragg (2001); Equation 02

*DBH* <u>></u> 5.0: *FCW* = a1 + (a2 \* *DBH^*a3)

*DBH* < 5.0: *FCW* = [a1 + (a2 \* 5.0^a3)] \* (*DBH* / 5.0)

{4.4.3} Ek (1974); Equation 03

*DBH* <u>></u> 3.0: *OCW* = a1 + (a2 \* *DBH^*a3)

*DBH* < 3.0: *OCW* = [a1 + (a2 \* 3.0^a3)] \* (*DBH* / 3.0)

{4.4.4} Krajicek and others (1961); Equation 04

*DBH* <u>></u> 3.0: *OCW* = a1 + (a2 \* *DBH*)

*DBH* < 3.0: *OCW* = [a1 + (a2 \* 3.0)] \* (*DBH* / 3.0)

{4.4.5} Smith and others (1992); Equation 05

*DBH* <u>></u> 3.0: *OCW* = a1 + (a2 \* *DBH* \* 2.54) + (a3 \* (*DBH* \* 2.54)^ 2) \* 3.28084

*DBH* < 3.0: *OCW* = [a1 + (a2 \* 3.0 \* 2.54) + (a3 \* (3.0 \* 2.54)^ 2) \* 3.28084] \* (*DBH* / 3.0)

where:

*FCW* is crown width of forest grown trees (used in *PCC* calculations)

*OCW* is crown width of open-grown trees (used in *CCF* calculations))

*DBH* is tree diameter at breast height, if bounded

*CR*  is crown ratio expressed as a percent

*HI* is the Hopkins Index

*HI* = (*ELEVATION* - 887) / 100) \* 1.0 + (*LATITUDE* – 39.54) \* 4.0 + (-82.52 -*LONGITUDE*) \* 1.25

a1 - a5 are the coefficients shown in tables 4.4.1 and 4.4.2

**Table 4.4.1. Crown width equation assignment and coefficients for forest-grown trees in the SN variant.**

| **Species Code** | **Equation Number** | **a1** | **a2** | **a3** | **a4** | **a5** | **Limits and Bounds** | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| FR | 01201 | 0.6564 | 0.8403 |  | 0.0792 |  | *FCW* <u><</u> | 34 |
| JU | 06801 | 1.2359 | 1.2962 |  | 0.0545 |  | *FCW* <u><</u> | 33 |
| PI | 09401 | 0.3789 | 0.8658 |  | 0.0878 |  | *FCW* <u><</u> | 30 |
| PU | 13201 | -0.1211 | 1.2319 |  | 0.1212 |  | *FCW* <u><</u> | 34 |
| SP | 11001 | -2.2564 | 1.3004 |  | 0.1031 | -0.0562 | *FCW* <u><</u> | 34 |
| SA | 11101 | -6.9659 | 2.1192 | -0.0333 | 0.0587 | -0.0959 | *DBH* <u><</u> | 30 |
| SR | 11001 | -2.2564 | 1.3004 |  | 0.1031 | -0.0562 | *FCW* <u><</u> | 34 |
| LL | 12101 | -12.2105 | 1.3376 |  | 0.1237 | -0.2759 | *FCW* <u><</u> | 50 |
| TM | 12601 | -0.9442 | 1.4531 |  | 0.0543 | -0.1144 | *FCW* <u><</u> | 34 |
| PP | 12601 | -0.9442 | 1.4531 |  | 0.0543 | -0.1144 | *FCW* <u><</u> | 34 |
| PD | 12801 | -8.7711 | 3.7252 | -0.1063 |  |  | *DBH* <u><</u> | 18 |
| WP | 12901 | 0.3914 | 0.9923 |  | 0.1080 |  | *FCW* <u><</u> | 45 |
| LP | 13101 | -0.8277 | 1.3946 |  | 0.0768 |  | *FCW* <u><</u> | 55 |
| VP | 13201 | -0.1211 | 1.2319 |  | 0.1212 |  | *FCW* <u><</u> | 34 |
| BY | 22101 | -1.0183 | 0.8856 |  | 0.1162 |  | *FCW* <u><</u> | 37 |
| PC | 22101 | -1.0183 | 0.8856 |  | 0.1162 |  | *FCW* <u><</u> | 37 |
| HM | 26101 | 6.1924 | 1.4491 | -0.0178 |  | -0.0341 | *DBH* <u><</u> | 40 |
| FM | 31801 | 4.9399 | 1.0727 |  | 0.1096 | -0.0493 | *FCW* <u><</u> | 54 |
| BE | 31301 | 6.4741 | 1.0778 |  | 0.0719 | -0.0637 | *FCW* <u><</u> | 57 |
| RM | 31601 | 2.7563 | 1.4212 | 0.0143 | 0.0993 |  | *DBH* <u><</u> | 50 |
| SV | 31701 | 3.3576 | 1.1312 |  | 0.1011 | -0.1730 | *FCW* <u><</u> | 45 |
| SM | 31801 | 4.9399 | 1.0727 |  | 0.1096 | -0.0493 | *FCW* <u><</u> | 54 |
| BU | 40701 | 4.5453 | 1.3721 |  | 0.0430 |  | *FCW* <u><</u> | 54 |
| BB | 37301 | 11.6634 | 1.0028 |  |  |  | *FCW* <u><</u> | 68 |
| SB | 37201 | 4.6725 | 1.2968 |  | 0.0787 |  | *FCW* <u><</u> | 54 |
| AH | 39101 | 0.9219 | 1.6303 |  | 0.1150 | -0.1113 | *FCW* <u><</u> | 42 |
| HI | 40701 | 4.5453 | 1.3721 |  | 0.0430 |  | *FCW* <u><</u> | 54 |
| CA | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | *FCW* <u><</u> | 29 |
| HB | 46201 | 7.1043 | 1.3041 |  | 0.0456 |  | *FCW* <u><</u> | 51 |
| RD | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | *FCW* <u><</u> | 36 |
| DW | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | *FCW* <u><</u> | 36 |
| PS | 52101 | 3.5393 | 1.3939 |  | 0.0625 |  | *FCW* <u><</u> | 36 |
| AB | 53101 | 3.9361 | 1.1500 |  | 0.1237 | -0.0691 | *FCW* <u><</u> | 80 |
| AS | 54401 | 2.9672 | 1.3066 |  | 0.0585 |  | *FCW* <u><</u> | 61 |
| WA | 54101 | 1.7625 | 1.3413 |  | 0.0957 |  | *FCW* <u><</u> | 62 |
| BA | 54301 | 5.2824 | 1.1184 |  |  |  | *FCW* <u><</u> | 34 |
| GA | 54401 | 2.9672 | 1.3066 |  | 0.0585 |  | *FCW* <u><</u> | 61 |
| HL | 55201 | 4.1971 | 1.5567 |  | 0.0880 |  | *FCW* <u><</u> | 46 |
| LB | 65301 | 8.2119 | 0.9708 |  |  |  | *FCW* <u><</u> | 41 |
| HA | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | *FCW* <u><</u> | 36 |
| HY | 59101 | 4.5803 | 1.0747 |  | 0.0661 |  | *FCW* <u><</u> | 31 |
| BN | 60201 | 3.6031 | 1.1472 |  | 0.1224 |  | *FCW* <u><</u> | 37 |
| WN | 60201 | 3.6031 | 1.1472 |  | 0.1224 |  | *FCW* <u><</u> | 37 |
| SU | 61101 | 1.8853 | 1.1625 |  | 0.0656 |  | *FCW* <u><</u> | 50 |
| YP | 62101 | 3.3543 | 1.1627 |  | 0.0857 |  | *FCW* <u><</u> | 61 |
| MG | 65301 | 8.2119 | 0.9708 |  |  |  | *FCW* <u><</u> | 41 |
| CT | 65101 | 4.1711 | 1.6275 |  |  |  | *FCW* <u><</u> | 39 |
| MS | 65301 | 8.2119 | 0.9708 |  |  |  | *FCW* <u><</u> | 41 |
| MV | 65301 | 8.2119 | 0.9708 |  |  |  | *FCW* <u><</u> | 41 |
| ML | 65301 | 8.2119 | 0.9708 |  |  |  | *FCW* <u><</u> | 41 |
| AP | 76102 | 4.102718 | 1.396006 | 1.077474 |  |  | *FCW* <u><</u> | 52 |
| MB | 68201 | 13.3255 | 1.0735 |  |  |  | *FCW* <u><</u> | 46 |
| WT | 69101 | 5.3409 | 0.7499 |  | 0.1047 |  | *FCW* <u><</u> | 37 |
| BG | 69301 | 5.5037 | 1.0567 |  | 0.0880 | 0.0610 | *FCW* <u><</u> | 50 |
| TS | 69401 | 1.3564 | 1.0991 |  | 0.1243 |  | *FCW* <u><</u> | 41 |
| HH | 70101 | 7.8084 | 0.8129 |  | 0.0941 | -0.0817 | *FCW* <u><</u> | 39 |
| SD | 71101 | 7.9750 | 0.8303 |  | 0.0423 | -0.0706 | *FCW* <u><</u> | 36 |
| RA | 72101 | 4.2756 | 1.0773 |  | 0.1526 | 0.1650 | *FCW* <u><</u> | 25 |
| SY | 73101 | -1.3973 | 1.3756 |  | 0.1835 |  | *FCW* <u><</u> | 66 |
| CW | 74201 | 3.4375 | 1.4092 |  |  |  | *FCW* <u><</u> | 80 |
| BT | 74301 | 0.6847 | 1.1050 |  | 0.1420 | -0.0265 | *FCW* <u><</u> | 43 |
| BC | 76201 | 3.0237 | 1.1119 |  | 0.1112 | -0.0493 | *FCW* <u><</u> | 52 |
| WO | 80201 | 3.2375 | 1.5234 |  | 0.0455 | -0.0324 | *FCW* <u><</u> | 69 |
| SO | 80601 | 0.5656 | 1.6766 |  | 0.0739 |  | *FCW* <u><</u> | 66 |
| SK | 81201 | 2.1517 | 1.6064 |  | 0.0609 |  | *FCW* <u><</u> | 56 |
| CB | 81201 | 2.1517 | 1.6064 |  | 0.0609 |  | *FCW* <u><</u> | 56 |
| TO | 81901 | 5.8858 | 1.4935 |  |  |  | *FCW* <u><</u> | 29 |
| LK | 82001 | 6.3149 | 1.6455 |  |  |  | *FCW* <u><</u> | 54 |
| OV | 82301 | 1.7827 | 1.6549 |  | 0.0343 |  | *FCW* <u><</u> | 61 |
| BJ | 82401 | 0.5443 | 1.4882 |  | 0.0565 |  | *FCW* <u><</u> | 37 |
| SN | 83201 | 2.1480 | 1.6928 | -0.0176 | 0.0569 |  | *DBH* <u><</u> | 50 |
| CK | 82601 | 0.5189 | 1.4134 |  | 0.1365 | -0.0806 | *FCW* <u><</u> | 45 |
| WK | 82701 | 1.6349 | 1.5443 |  | 0.0637 | -0.0764 | *FCW* <u><</u> | 57 |
| CO | 83201 | 2.1480 | 1.6928 | -0.0176 | 0.0569 |  | *DBH* <u><</u> | 50 |
| RO | 83301 | 2.8908 | 1.4077 |  | 0.0643 |  | *FCW* <u><</u> | 82 |
| QS | 81201 | 2.1517 | 1.6064 |  | 0.0609 |  | *FCW* <u><</u> | 56 |
| PO | 83501 | 1.6125 | 1.6669 |  | 0.0536 |  | *FCW* <u><</u> | 45 |
| BO | 83701 | 2.8974 | 1.3697 |  | 0.0671 |  | *FCW* <u><</u> | 52 |
| LO | 83801 | 5.6694 | 1.6402 |  |  |  | *FCW* <u><</u> | 66 |
| BK | 90101 | 3.0012 | 0.8165 |  | 0.1395 |  | *FCW* <u><</u> | 48 |
| WI | 97201 | 1.7296 | 2.0732 |  | 0.0590 | -0.0869 | *FCW* <u><</u> | 50 |
| SS | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | *FCW* <u><</u> | 29 |
| BD | 95101 | 1.6871 | 1.2110 |  | 0.1194 | -0.0264 | *FCW* <u><</u> | 61 |
| EL | 97201 | 1.7296 | 2.0732 |  | 0.0590 | -0.0869 | *FCW* <u><</u> | 50 |
| WE | 97101 | 4.3649 | 1.6612 |  | 0.0643 |  | *FCW* <u><</u> | 40 |
| AE | 97201 | 1.7296 | 2.0732 |  | 0.0590 | -0.0869 | *FCW* <u><</u> | 50 |
| RL | 97501 | 9.0023 | 1.3933 |  |  | -0.0785 | *FCW* <u><</u> | 49 |
| OS | 06801 | 1.2359 | 1.2962 |  | 0.0545 |  | *FCW* <u><</u> | 33 |
| OH | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | *FCW* <u><</u> | 29 |
| OT | 31601 | 2.7563 | 1.4212 | 0.0143 | 0.0993 |  | *DBH* <u><</u> | 50 |

**Table 4.4.2 Crown width equation assignment and coefficients for open-grown trees for the SN variant.**

| **Species Code** | **Equation Number** | **a1** | **a2** | **a3** | **a4** | **a5** | **Limits and Bounds** | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| FR | 01203 | 0.3270 | 5.1160 | 0.5035 |  |  | *OCW* <u><</u> | 34 |
| JU | 06801 | 1.2359 | 1.2962 |  | 0.0545 |  | *OCW* <u><</u> | 33 |
| PI | 09403 | 3.5940 | 1.9630 | 0.8820 |  |  | *OCW* <u><</u> | 37 |
| PU | 13201 | -0.1211 | 1.2319 |  | 0.1212 |  | *OCW* <u><</u> | 34 |
| SP | 11005 | 0.5830 | 0.2450 | 0.0009 |  |  | *OCW* <u><</u> | 45 |
| SA | 11101 | -6.9659 | 2.1192 | -0.0333 | 0.0587 | -0.0959 | *DBH* <u><</u> | 30 |
| SR | 11005 | 0.5830 | 0.2450 | 0.0009 |  |  | *OCW* <u><</u> | 45 |
| LL | 12105 | 0.113 | 0.259 |  |  |  | *OCW* <u><</u> | 50 |
| TM | 12601 | -0.9442 | 1.4531 |  | 0.0543 | -0.1144 | *OCW* <u><</u> | 34 |
| PP | 12601 | -0.9442 | 1.4531 |  | 0.0543 | -0.1144 | *OCW* <u><</u> | 34 |
| PD | 12801 | -8.7711 | 3.7252 | -0.1063 |  |  | *DBH* <u><</u> | 18 |
| WP | 12903 | 1.6200 | 3.1970 | 0.7981 |  |  | *OCW* <u><</u> | 58 |
| LP | 13105 | 0.7380 | 0.2450 | 0.000809 |  |  | *OCW* <u><</u> | 66 |
| VP | 13201 | -0.1211 | 1.2319 |  | 0.1212 |  | *OCW* <u><</u> | 34 |
| BY | 22101 | -1.0183 | 0.8856 |  | 0.1162 |  | *OCW* <u><</u> | 37 |
| PC | 22101 | -1.0183 | 0.8856 |  | 0.1162 |  | *OCW* <u><</u> | 37 |
| HM | 26101 | 6.1924 | 1.4491 | -0.0178 |  | -0.0341 | *DBH* <u><</u> | 40 |
| FM | 31803 | 0.8680 | 4.1500 | 0.7514 |  |  | *OCW* <u><</u> | 54 |
| BE | 31301 | 6.4741 | 1.0778 |  | 0.0719 | -0.0637 | *OCW* <u><</u> | 57 |
| RM | 31603 | 0.00 | 4.7760 | 0.7656 |  |  | *OCW* <u><</u> | 55 |
| SV | 31701 | 3.3576 | 1.1312 |  | 0.1011 | -0.1730 | *OCW* <u><</u> | 45 |
| SM | 31803 | 0.8680 | 4.1500 | 0.7514 |  |  | *OCW* <u><</u> | 54 |
| BU | 40703 | 2.3600 | 3.5480 | 0.7986 |  |  | *OCW* <u><</u> | 54 |
| BB | 37301 | 11.6634 | 1.0028 |  |  |  | *OCW* <u><</u> | 68 |
| SB | 37201 | 4.6725 | 1.2968 |  | 0.0787 |  | *OCW* <u><</u> | 54 |
| AH | 39101 | 0.9219 | 1.6303 |  | 0.1150 | -0.1113 | *OCW* <u><</u> | 42 |
| HI | 40703 | 2.3600 | 3.5480 | 0.7986 |  |  | *OCW* <u><</u> | 54 |
| CA | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | *OCW* <u><</u> | 29 |
| HB | 46201 | 7.1043 | 1.3041 |  | 0.0456 |  | *OCW* <u><</u> | 51 |
| RD | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | *OCW* <u><</u> | 36 |
| DW | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | *OCW* <u><</u> | 36 |
| PS | 52101 | 3.5393 | 1.3939 |  | 0.0625 |  | *OCW* <u><</u> | 36 |
| AB | 53101 | 3.9361 | 1.1500 |  | 0.1237 | -0.0691 | *OCW* <u><</u> | 80 |
| AS | 54403 | 0.0000 | 4.7550 | 0.7381 |  |  | *OCW* <u><</u> | 61 |
| WA | 54101 | 1.7625 | 1.3413 |  | 0.0957 |  | *OCW* <u><</u> | 62 |
| BA | 54301 | 5.2824 | 1.1184 |  |  |  | *OCW* <u><</u> | 34 |
| GA | 54403 | 0.0000 | 4.7550 | 0.7381 |  |  | *OCW* <u><</u> | 61 |
| HL | 55201 | 4.1971 | 1.5567 |  | 0.0880 |  | *OCW* <u><</u> | 46 |
| LB | 65301 | 8.2119 | 0.9708 |  |  |  | *OCW* <u><</u> | 41 |
| HA | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | *OCW* <u><</u> | 36 |
| HY | 59101 | 4.5803 | 1.0747 |  | 0.0661 |  | *OCW* <u><</u> | 31 |
| BN | 60201 | 3.6031 | 1.1472 |  | 0.1224 |  | *OCW* <u><</u> | 37 |
| WN | 60201 | 3.6031 | 1.1472 |  | 0.1224 |  | *OCW* <u><</u> | 37 |
| SU | 61101 | 1.8853 | 1.1625 |  | 0.0656 | -0.0300 | *OCW* <u><</u> | 50 |
| YP | 62101 | 3.3543 | 1.1627 |  | 0.0857 |  | *OCW* <u><</u> | 61 |
| MG | 65301 | 8.2119 | 0.9708 |  |  |  | *OCW* <u><</u> | 41 |
| CT | 65101 | 4.1711 | 1.6275 |  |  |  | *OCW* <u><</u> | 39 |
| MS | 65301 | 8.2119 | 0.9708 |  |  |  | *OCW* <u><</u> | 41 |
| MV | 65301 | 8.2119 | 0.9708 |  |  |  | *OCW* <u><</u> | 41 |
| ML | 65301 | 8.2119 | 0.9708 |  |  |  | *OCW* <u><</u> | 41 |
| AP | 76102 | 4.102718 | 1.396006 | 1.077474 |  |  | *OCW* <u><</u> | 52 |
| MB | 68201 | 13.3255 | 1.0735 |  |  |  | *OCW* <u><</u> | 46 |
| WT | 69101 | 5.3409 | 0.7499 |  | 0.1047 |  | *OCW* <u><</u> | 37 |
| BG | 69301 | 5.5037 | 1.0567 |  | 0.0880 | 0.0610 | *OCW* <u><</u> | 50 |
| TS | 69401 | 1.3564 | 1.0991 |  | 0.1243 |  | *OCW* <u><</u> | 41 |
| HH | 70101 | 7.8084 | 0.8129 |  | 0.0941 | -0.0817 | *OCW* <u><</u> | 39 |
| SD | 71101 | 7.9750 | 0.8303 |  | 0.0423 | -0.0706 | *OCW* <u><</u> | 36 |
| RA | 72101 | 4.2756 | 1.0773 |  | 0.1526 | 0.1650 | *OCW* <u><</u> | 25 |
| SY | 73101 | -1.3973 | 1.3756 |  | 0.1835 |  | *OCW* <u><</u> | 66 |
| CW | 74203 | 2.934 | 2.538 | 0.8617 |  |  | *OCW* <u><</u> | 80 |
| BT | 74301 | 0.6847 | 1.1050 |  | 0.1420 | -0.0265 | *OCW* <u><</u> | 43 |
| BC | 76203 | 0.621 | 7.059 | 0.5441 |  |  | *OCW* <u><</u> | 52 |
| WO | 80204 | 1.8000 | 1.8830 |  |  |  | *OCW* <u><</u> | 69 |
| SO | 80601 | 0.5656 | 1.6766 |  | 0.0739 |  | *OCW* <u><</u> | 66 |
| SK | 81201 | 2.1517 | 1.6064 |  | 0.0609 |  | *OCW* <u><</u> | 56 |
| CB | 81201 | 2.1517 | 1.6064 |  | 0.0609 |  | *OCW* <u><</u> | 56 |
| TO | 81901 | 5.8858 | 1.4935 |  |  |  | *OCW* <u><</u> | 29 |
| LK | 82001 | 6.3149 | 1.6455 |  |  |  | *OCW* <u><</u> | 54 |
| OV | 82303 | 0.942 | 3.539 | 0.7952 |  |  | *OCW* <u><</u> | 78 |
| BJ | 82401 | 0.5443 | 1.4882 |  | 0.0565 |  | *OCW* <u><</u> | 37 |
| SN | 83201 | 2.1480 | 1.6928 | -0.0176 | 0.0569 |  | *DBH* <u><</u> | 50 |
| CK | 82601 | 0.5189 | 1.4134 |  | 0.1365 | -0.0806 | *OCW* <u><</u> | 45 |
| WK | 82701 | 1.6349 | 1.5443 |  | 0.0637 | -0.0764 | *OCW* <u><</u> | 57 |
| CO | 83201 | 2.1480 | 1.6928 | -0.0176 | 0.0569 |  | *DBH* <u><</u> | 50 |
| RO | 83303 | 2.8500 | 3.7820 | 0.7968 |  |  | *OCW* <u><</u> | 82 |
| QS | 81201 | 2.1517 | 1.6064 |  | 0.0609 |  | *OCW* <u><</u> | 56 |
| PO | 83501 | 1.6125 | 1.6669 |  | 0.0536 |  | *OCW* <u><</u> | 45 |
| BO | 83704 | 4.5100 | 1.6700 |  |  |  | *OCW* <u><</u> | 52 |
| LO | 83801 | 5.6694 | 1.6402 |  |  |  | *OCW* <u><</u> | 66 |
| BK | 90101 | 3.0012 | 0.8165 |  | 0.1395 |  | *OCW* <u><</u> | 48 |
| WI | 97203 | 2.8290 | 3.4560 | 0.8575 |  |  | *OCW* <u><</u> | 72 |
| SS | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | *OCW* <u><</u> | 29 |
| BD | 95101 | 1.6871 | 1.2110 |  | 0.1194 | -0.0264 | *OCW* <u><</u> | 61 |
| EL | 97203 | 2.8290 | 3.4560 | 0.8575 |  |  | *OCW* <u><</u> | 72 |
| WE | 97101 | 4.3649 | 1.6612 |  | 0.0643 |  | *OCW* <u><</u> | 40 |
| AE | 97203 | 2.8290 | 3.4560 | 0.8575 |  |  | *OCW* <u><</u> | 72 |
| RL | 97501 | 9.0023 | 1.3933 |  |  | -0.0785 | *OCW* <u><</u> | 49 |
| OS | 06801 | 1.2359 | 1.2962 |  | 0.0545 |  | *OCW* <u><</u> | 33 |
| OH | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | *OCW* <u><</u> | 29 |
| OT | 31603 | 0.00 | 4.7760 | 0.7656 |  |  | *OCW* <u><</u> | 55 |

1 Maximum crown widths and DBH have been assigned to prevent poor behavior beyond the source data. In addition, *CR* has been set to 90% for species using equation 01, Bechtold (2003).

## 4.5 Crown Competition Factor

The SN variant uses crown competition factor (*CCF*) as a predictor variable in some growth relationships. Crown competition factor (Krajicek and others 1961) is a relative measurement of stand density that is based on tree diameters. Individual tree *CCFt* values estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open-grown. Stand *CCF* is the summation of individual tree (*CCFt*)values. A stand *CCF* value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand. Crown competition factor for an individual tree is calculated using equation {4.5.1}, and is based on crown width of open-grown trees.

{4.5.1} All species

*DBH* > 0.1”: *CCFt* = 0.001803 \* *OCWt^*2

*DBH* <u><</u> 0.1”: *CCFt* = 0.001

where:

*CCFt* is crown competition factor for an individual tree

*OCWt* is open-grown crown width for an individual tree

*DBH* is tree diameter at breast height

## 4.6 Small Tree Growth Relationships

Trees are considered “small trees” for FVS modeling purposes when they are smaller than some threshold diameter. This threshold diameter is set to 3.0” for all species in the SN variant.

The small tree model is height growth driven, meaning height growth is estimated first and diameter growth is estimated from height growth. These relationships are discussed in the following sections.

### 4.6.1 Small Tree Height Growth

The small-tree height growth model predicts periodic potential height growth (POTHTG) from height growth curves using the Chapman-Richards nonlinear functional form for a particular species, see GTR-NC-128 (Carmean and others 1989). A linear function fills in the height growth curves from 0 at age 0 to the lower end of the height growth curve. Height growth is computed by subtracting the current predicted height from the predicted height 5 years in the future, as depicted in equation {4.6.1.1}. Coefficients for each species are located in table 4.6.1.1.

{4.6.1.1} *POTHT* = c1 \* SI^c2 \* [1.0 – exp (c3 \* *AGET*)]^(c4 \* (*SI* ^ c5))

where:

*POTHT* is predicted tree height, used for current and future height growth.

*SI* is species site index

*AGET* is tree age

A*GET* = 1./c3\*(ln(1-(*HT*/c1/*SI*^c2)^(1./c4/*SI*^c5)))

*HT* tree height in feet

c1 – c5 are species-specific coefficients

**Table 4.6.1.1 Height growth curve coefficients from GTR-NC-128 (Carmean and others 1989) for the SN variant.**

| **Species Code** | **NC-128 Height Growth Equation (FIA code / page number)** | **c1** | **c2** | **c3** | **c4** | **c5** |
| --- | --- | --- | --- | --- | --- | --- |
| FR | 012/70 | 2.077 | 0.9303 | -0.0285 | 2.8937 | -0.1414 |
| JU | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |
| PI | 097/88 | 1.3307 | 1.0442 | -0.0496 | 3.5829 | 0.0945 |
| PU | 107/92 | 1.266 | 1.0034 | -0.0365 | 1.5515 | -0.0221 |
| SP | 110/93 | 1.4232 | 0.9989 | -0.0285 | 1.2156 | 0.0088 |
| SA | 111/99 | 1.1557 | 1.0031 | -0.0408 | 0.9807 | 0.0314 |
| SR | 097/88 | 1.3307 | 1.0442 | -0.0496 | 3.5829 | 0.0945 |
| LL | 107/92 | 1.421 | 0.9947 | -0.0269 | 1.1344 | -0.0109 |
| TM | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |
| PP | 132/139 | 1.1204 | 0.9984 | -0.0597 | 2.4448 | -0.0284 |
| PD | 128/117 | 1.1266 | 1.0051 | -0.0367 | 0.678 | 0.0404 |
| WP | 129/119 | 3.2425 | 0.798 | -0.0435 | 52.0549 | -0.7064 |
| LP | 131/125 | 1.1421 | 1.0042 | -0.0374 | 0.7632 | 0.0358 |
| VP | 132/139 | 1.1204 | 0.9984 | -0.0597 | 2.4448 | -0.0284 |
| BY | 611/36 | 1.0902 | 1.0298 | -0.0354 | 0.7011 | 0.1178 |
| PC | 611/36 | 1.0902 | 1.0298 | -0.0354 | 0.7011 | 0.1178 |
| HM | 261/142 | 2.1493 | 0.9979 | -0.0175 | 1.4086 | -0.0008 |
| FM | 317/19 | 1.0645 | 0.9918 | -0.0812 | 1.5754 | -0.0272 |
| BE | 316/16 | 2.9435 | 0.9132 | -0.0141 | 1.658 | -0.1095 |
| RM | 316/16 | 2.9435 | 0.9132 | -0.0141 | 1.658 | -0.1095 |
| SV | 317/19 | 1.0645 | 0.9918 | -0.0812 | 1.5754 | -0.0272 |
| SM | 318/18 | 6.1308 | 0.6904 | -0.0195 | 10.1563 | -0.5330 |
| BU | 318/18 | 6.1308 | 0.6904 | -0.0195 | 10.1563 | -0.5330 |
| BB | 371/21 | 6.0522 | 0.6768 | -0.0217 | 15.4232 | -0.6354 |
| SB | 371/21 | 6.0522 | 0.6768 | -0.0217 | 15.4232 | -0.6354 |
| AH | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |
| HI | 400/25 | 1.8326 | 1.0015 | -0.0207 | 1.408 | -0.0005 |
| CA | 543/29 | 4.2286 | 0.7857 | -0.0178 | 4.6219 | -0.3591 |
| HB | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |
| RD | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |
| DW | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |
| PS | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |
| AB | 531/26 | 29.73 | 0.3631 | -0.0127 | 16.7616 | -0.6804 |
| AS | 544/30 | 1.6505 | 0.9096 | -0.0644 | 125.7045 | -0.8908 |
| WA | 541/28 | 4.1492 | 0.7531 | -0.0269 | 14.5384 | -0.5811 |
| BA | 543/29 | 4.2286 | 0.7857 | -0.0178 | 4.6219 | -0.3591 |
| GA | 544/30 | 1.6505 | 0.9096 | -0.0644 | 125.7045 | -0.8908 |
| HL | 901/65 | 0.968 | 1.0301 | -0.0468 | 0.1639 | 0.4127 |
| LB | 043/72 | 1.5341 | 1.0013 | -0.0208 | 0.9986 | -0.0012 |
| HA | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |
| HY | 531/26 | 29.73 | 0.3631 | -0.0127 | 16.7616 | -0.6804 |
| BN | 602/31 | 1.2898 | 0.9982 | -0.0289 | 0.8546 | 0.0171 |
| WN | 602/31 | 1.2898 | 0.9982 | -0.0289 | 0.8546 | 0.0171 |
| SU | 611/36 | 1.0902 | 1.0298 | -0.0354 | 0.7011 | 0.1178 |
| YP | 621/39 (Mountain) | 1.2673 | 1.0 | -0.0331 | 1.1149 | 0.0001 |
| YP | 621/38 (Piedmont) | 1.1798 | 1.0 | -0.0339 | 0.8117 | -0.0001 |
| MG | 694/42 | 1.3213 | 0.9995 | -0.0254 | 0.8549 | -0.0016 |
| CT | 802/52 | 1.2866 | 0.9962 | -0.0355 | 1.4485 | -0.0316 |
| MS | 694/42 | 1.3213 | 0.9995 | -0.0254 | 0.8549 | -0.0016 |
| MV | 694/42 | 1.3213 | 0.9995 | -0.0254 | 0.8549 | -0.0016 |
| ML | 694/42 | 1.3213 | 0.9995 | -0.0254 | 0.8549 | -0.0016 |
| AP | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |
| MB | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |
| WT | 691/41 | 1.2721 | 0.9995 | -0.0256 | 0.7447 | -0.0019 |
| BG | 694/42 | 1.3213 | 0.9995 | -0.0254 | 0.8549 | -0.0016 |
| TS | 694/42 | 1.3213 | 0.9995 | -0.0254 | 0.8549 | -0.0016 |
| HH | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |
| SD | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |
| RA | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |
| SY | 621/39 | 1.2673 | 1.0 | -0.0331 | 1.1149 | 0.0001 |
| CW | 742/45 | 1.2834 | 0.9571 | -0.068 | 100.0 | -0.9223 |
| BT | 743/47 | 5.2188 | 0.6855 | -0.0301 | 50.0071 | -0.8695 |
| BC | 762/50 | 7.1846 | 0.6781 | -0.0222 | 13.9186 | -0.5268 |
| WO | Upland Oak/52 | 1.2866 | 0.9962 | -0.0355 | 1.4485 | -0.0316 |
| SO | Upland Oak/52 | 1.2866 | 0.9962 | -0.0355 | 1.4485 | -0.0316 |
| SK | Upland Oak/52 | 1.2866 | 0.9962 | -0.0355 | 1.4485 | -0.0316 |
| CB | 813/58 | 1.0945 | 0.9938 | -0.0755 | 2.5601 | 0.0114 |
| TO | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |
| LK | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |
| OV | 828/60 | 1.3295 | 0.9565 | -0.0668 | 16.0085 | -0.4157 |
| BJ | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |
| SN | 827/59 | 1.3466 | 0.959 | -0.0574 | 8.9538 | -0.3454 |
| CK | 802/52 | 1.2866 | 0.9962 | -0.0355 | 1.4485 | -0.0316 |
| WK | 827/59 | 1.3466 | 0.959 | -0.0574 | 8.9538 | -0.3454 |
| CO | Upland Oak/52 | 1.2866 | 0.9962 | -0.0355 | 1.4485 | -0.0316 |
| RO | Upland Oak/52 | 1.2866 | 0.9962 | -0.0355 | 1.4485 | -0.0316 |
| QS | 813/58 | 1.0945 | 0.9938 | -0.0755 | 2.5601 | 0.0114 |
| PO | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |
| BO | Upland Oak/52 | 1.2866 | 0.9962 | -0.0355 | 1.4485 | -0.0316 |
| LO | 827/59 | 1.3466 | 0.959 | -0.0574 | 8.9538 | -0.3454 |
| BK | 901/65 | 0.968 | 1.0301 | -0.0468 | 0.1639 | 0.4127 |
| WI | 901/65 | 0.968 | 1.0301 | -0.0468 | 0.1639 | 0.4127 |
| SS | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |
| BD | 951/66 | 4.7633 | 0.7576 | -0.0194 | 6.511 | -0.4156 |
| EL | 972/68 | 6.4362 | 0.6827 | -0.0194 | 10.9767 | -0.5477 |
| WE | 972/68 | 6.4362 | 0.6827 | -0.0194 | 10.9767 | -0.5477 |
| AE | 972/68 | 6.4362 | 0.6827 | -0.0194 | 10.9767 | -0.5477 |
| RL | 972/68 | 6.4362 | 0.6827 | -0.0194 | 10.9767 | -0.5477 |
| OS | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |
| OH | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |
| OT | 068/73 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 |

For all species, a small random error is then added to the height growth estimate. The estimated height growth is then adjusted to account for cycle length, user defined small-tree height growth adjustments, and adjustments due to small tree height increment calibration from input data.

Height growth estimates from the small-tree model are weighted with the height growth estimates from the large tree model over a range of diameters (*Xmin* and *Xmax*) in order to smooth the transition between the two models. For example, the closer a tree’s *DBH* value is to the minimum diameter (*Xmin*), the more the growth estimate will be weighted towards the small-tree growth model. The closer a tree’s *DBH* value is to the maximum diameter (*Xmax*), the more the growth estimate will be weighted towards the large-tree growth model. If a tree’s *DBH* value falls outside of the range given by *Xmin* and *Xmax*, then the model will use only the small-tree or large-tree growth model in the growth estimate. The weight applied to the growth estimate is calculated using equation {4.6.1.2}, and applied as shown in equation {4.6.1.3}. The range of diameters for each species is shown in table 4.6.1.3.

{4.6.1.2}

*DBH* <u><</u> *Xmin: XWT* = 0

*Xmin* < *DBH* < *Xmax* : *XWT* = (*DBH* - *Xmin*) / (*Xmax* - *Xmin*)

*DBH* <u>></u> *Xmax*: *XWT* = 1

{4.6.1.3} Estimated growth = [(1 - *XWT*) \* *STGE*] + [*XWT* \* *LTGE*]

where:

*XWT* is the weight applied to the growth estimates

*DBH* is tree diameter at breast height

*Xmax* is the maximum *DBH* is the diameter range, set to 1.0”

*Xmin* is the minimum *DBH* in the diameter range, set to 3.0”

*STGE* is the growth estimate obtained using the small-tree growth model

*LTGE* is the growth estimate obtained using the large-tree growth model

### 4.6.2 Small Tree Diameter Growth

As stated previously, for trees being projected with the small tree equations, height growth is predicted first, and then diameter growth. So both height at the beginning of the cycle and height at the end of the cycle are known when predicting diameter growth. Small tree diameter growth for trees over 4.5 feet tall is calculated as the difference of predicted diameter at the start of the projection period and the predicted diameter at the end of the projection period, adjusted for bark ratio. These two predicted diameters are estimated using the species-specific height-diameter relationships discussed in section 4.1. By definition, diameter growth is zero for trees less than 4.5 feet tall.

## 4.7 Large Tree Growth Relationships

Trees are considered “large trees” for FVS modeling purposes when they are equal to, or larger than, some threshold diameter. This threshold diameter is set to 3.0” for all species in the SN variant.

The large-tree model is driven by diameter growth meaning diameter growth is estimated first, and then height growth is estimated from diameter growth and other variables. These relationships are discussed in the following sections.

### 4.7.1 Large Tree Diameter Growth

The large tree diameter growth model used in most FVS variants is described in section 7.2.1 in Dixon (2002). For most variants, instead of predicting diameter increment directly, the natural log of the periodic change in squared inside-bark diameter (ln(*DDS*)) is predicted (Dixon 2002; Wykoff 1990; Stage 1973; and Cole and Stage 1972). For variants predicting diameter increment directly, diameter increment is converted to the *DDS* scale to keep the FVS system consistent across all variants.

The SN variant predicts 5-year diameter growth using equation {4.7.1.1}. Coefficients for this equation are shown in tables 4.7.1.1 through 4.7.1.7.

{4.7.1.1} ln(*DDS* ) = b1 + (b2 \* ln(*DBH*)) + (b3 \* *DBH*^2) + (b4 \* ln(*CR*)) + (b5 \* *RELHT*) + (b6 \* *SI*) + (b7 \* *BA*) + (b8 \* *PBAL*) + (b9 \* *SLOPE*) + (b10\* cos(*ASP*) \* *SLOPE*) + (b11 \* sin(*ASP*) \* *SLOPE*) + *FORTYPE* + *ECOUNIT* + *PLANT*

where:

*DDS* is the predicted 5-year periodic change in squared inside-bark diameter

*DBH* is tree diameter at breast height

*CR* is crown ratio expressed as a percent

*RELHT* is relative height of subject tree to the Top Height of the stand

*SI* is site index of the species

*BA* is the stand basal area per acre

*PBAL* is the plot basal area in larger trees

*SLOPE* is the stand slope, scaled to a range of 0-1

*ASPECT* is the stand aspect in radians

*FORTYPE* is a current forest type group dependent coefficient shown in tables 4.7.1.3 and 4.7.1.4

*ECOUNIT* is an ecological unit group dependent coefficient shown in tables 4.7.1.5 and 4.7.1.6

*PLANT* is a managed pine stand coefficient shown in table 4.7.1.7

b1- b11 are species-specific coefficients shown in tables 4.7.1.1 and 4.7.1.2

Large-tree 5-year diameter growth for longleaf pine and loblolly pine on the Fort Bragg Military Reservation is predicted from equation set {4.7.1.2} (Shaw and others 2006). While not shown here, this diameter growth estimate is eventually converted to the *DDS* scale.

{4.7.1.2} Fort Bragg Military Reservation longleaf and loblolly pine equations

Longleaf pine: *DG*= (*DBH*\**BRATIO*)\*((-0.4553 \* (0.09737 - EXP(-0.2428 \* *DBH*))) + (0.05574 \* *CR)* – (0.0002965 \* *BA)* – (0.00002481 \* *PBA)* – (0.001192 \* (*PCT*^-0.9663)) + (0.0010110 \* *SI)* – (0.007711 \* *RELHT*))

Loblolly pine *DG*= (*DBH*\**BRATIO*)\*((-0.3428 \* (-0.1741 - EXP(-0.1328 \* *DBH*))) + (0.1145 \* *CR)* – (0.0001682 \* *BA)* – (0.00003978 \* *PBA)* – (0.159400 \* (*PCT*^-0.1299)) + (0.0006204 \* *SI)* + (0.02474 \* *RELHT*))

where:

*DG* is the predicted 5-year diameter growth

*DBH* is tree diameter at breast height

*BRATIO* is the bark ratio as expressed in Section4.1

*CR* is crown ratio expressed as a proportion

*BA* is the stand basal area per acre

*PBA* is the plot basal area per acre

*PCT* is the percentile in the distribution of tree basal area

*SI* is site index of the species

*RELHT* is relative height of subject tree to the Top Height of the stand

During data analysis and regression fitting for the large-tree diameter growth model, it became apparent that data for most species were concentrated in small to medium large trees and were lacking in the very large size classes. Since this could lead to overestimation of diameter growth in larger trees, a bounding function was established to decrease the growth rates for very large trees.

The bounding function is applied using the following concepts. For a tree with projected diameter less than or equal to the lower diameter-bounding limit, diameter growth is not modified. For a tree with a projected diameter greater than the lower diameter-bounding limit and less than or equal to the upper diameter-bounding limit, diameter growth is modified using equation {4.7.1.3}. For a tree with a projected diameter greater than the upper diameter-bounding limit, diameter growth is set to 0.048. The lower and upper diameter limits were determined from data used to fit the diameter growth models, hundreds of thousands of FVS simulations and from literature for maximum tree sizes (Harlow and Harrar 1968, Burns and Honkala 1990). The bounding limits for the diameter growth bounding function are located in Table 4.7.1.8. For twenty-three species, the bounding function was determined to produce unrealistic results and essentially turned off by setting the lower diameter limit to 998 inches.

{4.7.1.3} *DGBMOD* = max(1.0 + 0.9 \* ((*DBH* – *DBHLOW*) / (*DBHLOW* – *DBHHI*)), 0.048)

where:

*DGBMOD* is diameter growth bounding modifier

*DBH* is the predicted diameter at breast height

*DBHLOW* is the lower diameter-bounding limit

*DBHHI*is the upper diameter-bounding limit

**Table 4.7.1.1 Coefficients (b1- b6) for the non-categorical variables of the diameter increment model by species for the SN variant.**

| **Species Code** | **b1** | **b2** | **b3** | **b4** | **b5** | **b6** |
| --- | --- | --- | --- | --- | --- | --- |
| FR | -2.267851 | 1.442529 | -0.000548 | 0.568468 | -0.403762 | -0.001151 |
| JU | -1.864431 | 1.403065 | -0.001237 | 0.273616 | 0.177408 | -0.000374 |
| PI | -2.267851 | 1.442529 | -0.000548 | 0.568468 | -0.403762 | -0.001151 |
| PU | -3.791466 | 1.796179 | -0.005109 | 0.902185 | 0.000000 | -0.002009 |
| SP | -0.008942 | 1.238170 | -0.001170 | 0.053076 | 0.040334 | 0.004723 |
| SA | -1.641698 | 1.461093 | -0.002530 | 0.265872 | 0.069104 | 0.006851 |
| SR | -2.431165 | 1.691731 | -0.000945 | 0.588558 | -0.326169 | 0.000109 |
| LL | -1.331052 | 1.098112 | -0.001834 | 0.184512 | 0.388018 | 0.008774 |
| TM | -2.600803 | 1.525435 | -0.003519 | 0.615731 | 0.059646 | 0.001033 |
| PP | -3.639059 | 1.397394 | -0.001670 | 0.739443 | -0.193198 | 0.008731 |
| PD | -2.353114 | 1.425614 | -0.001694 | 0.455833 | -0.198222 | 0.007876 |
| WP | -3.497764 | 1.339503 | -0.000961 | 0.759060 | 0.605201 | 0.004214 |
| LP | 0.222214 | 1.163040 | -0.000863 | 0.028483 | 0.006935 | 0.005018 |
| VP | -2.600803 | 1.525435 | -0.003519 | 0.615731 | 0.059646 | 0.001033 |
| BY | -1.735969 | 1.505649 | -0.000054 | 0.132441 | -0.119572 | 0.003996 |
| PC | -4.224977 | 1.831739 | -0.000595 | 0.446234 | -0.125847 | 0.005975 |
| HM | -2.267851 | 1.442529 | -0.000548 | 0.568468 | -0.403762 | -0.001151 |
| FM | -1.685778 | 1.454506 | -0.000818 | 0.242436 | -0.140837 | 0.004360 |
| BE | -0.871047 | 1.217898 | -0.000105 | 0.240101 | 0.071213 | -0.000022 |
| RM | -2.260482 | 1.449834 | -0.000931 | 0.361311 | 0.282436 | 0.003444 |
| SV | -2.260482 | 1.449834 | -0.000931 | 0.361311 | 0.282436 | 0.003444 |
| SM | -2.313444 | 1.350084 | -0.000816 | 0.394806 | 0.631803 | -0.000542 |
| BU | -1.876225 | 1.197048 | -0.000778 | 0.183857 | 0.547747 | 0.010254 |
| BB | -1.092055 | 1.024946 | -0.000653 | 0.206770 | 0.489441 | 0.002354 |
| SB | -1.092055 | 1.024946 | -0.000653 | 0.206770 | 0.489441 | 0.002354 |
| AH | -1.281144 | 1.335625 | 0.000000 | 0.111128 | -0.244632 | 0.005347 |
| HI | -2.728289 | 1.548449 | -0.000761 | 0.203837 | 0.570012 | 0.004399 |
| CA | -1.068980 | 1.164191 | 0.000000 | 0.084279 | 0.501307 | 0.009700 |
| HB | -0.833167 | 1.190567 | 0.000000 | 0.193368 | 0.508738 | -0.000056 |
| RD | -1.062539 | 1.174050 | 0.000000 | 0.239942 | 0.411945 | -0.005893 |
| DW | -2.540719 | 1.293125 | -0.000856 | 0.368481 | -0.611245 | 0.004257 |
| PS | -2.524455 | 1.479865 | -0.001512 | 0.289171 | 0.243575 | 0.003369 |
| AB | -1.251887 | 1.349337 | -0.000447 | 0.193148 | 0.279322 | -0.000287 |
| AS | -2.954457 | 1.461691 | 0.000000 | 0.377819 | 0.185353 | 0.007104 |
| WA | -1.315283 | 1.216264 | -0.000080 | 0.087907 | 0.487191 | 0.003424 |
| BA | -0.897707 | 1.243091 | 0.000000 | 0.090158 | 0.496594 | -0.000465 |
| GA | -0.897707 | 1.243091 | 0.000000 | 0.090158 | 0.496594 | -0.000465 |
| HL | -0.314922 | 0.927191 | 0.000000 | 0.103234 | 0.538379 | 0.003038 |
| LB | -2.514589 | 1.459672 | -0.001317 | 0.654209 | 0.106808 | -0.003582 |
| HA | -2.352258 | 1.746852 | 0.000000 | 0.291502 | -1.771604 | 0.003239 |
| HY | -1.981934 | 1.456263 | -0.002061 | 0.215249 | -0.414064 | 0.004240 |
| BN | -2.354190 | 1.050171 | -0.000154 | 0.425328 | 0.616257 | 0.001348 |
| WN | -2.354190 | 1.050171 | -0.000154 | 0.425328 | 0.616257 | 0.001348 |
| SU | -1.324147 | 1.395884 | -0.000490 | 0.145539 | 0.256765 | 0.001993 |
| YP | -2.513351 | 1.495351 | -0.000756 | 0.530123 | 0.161718 | 0.000746 |
| MG | -2.516823 | 1.454173 | -0.000925 | 0.252335 | 0.243666 | 0.007223 |
| CT | -1.239592 | 1.063360 | -0.000092 | 0.243097 | 0.533202 | -0.003084 |
| MS | -1.477929 | 1.126474 | -0.000267 | 0.134257 | 0.539000 | 0.005884 |
| MV | -2.516823 | 1.454173 | -0.000925 | 0.252335 | 0.243666 | 0.007223 |
| ML | -1.477929 | 1.126474 | -0.000267 | 0.134257 | 0.539000 | 0.005884 |
| AP | -1.746231 | 1.234133 | -0.000017 | 0.285511 | 0.180572 | 0.002596 |
| MB | -1.746231 | 1.234133 | -0.000017 | 0.285511 | 0.180572 | 0.002596 |
| WT | -2.721782 | 1.599221 | -0.000162 | 0.351271 | 0.133939 | 0.001783 |
| BG | -1.508549 | 1.306362 | -0.000576 | 0.112403 | 0.121169 | 0.003356 |
| TS | -2.555720 | 1.303035 | 0.000000 | 0.319301 | -0.109064 | 0.006498 |
| HH | -1.431973 | 1.452294 | -0.001475 | 0.061077 | -0.208915 | 0.004856 |
| SD | -3.180040 | 1.355790 | -0.000784 | 0.532236 | 0.077021 | 0.005170 |
| RA | -2.096616 | 1.254708 | 0.000000 | 0.344067 | 0.176829 | 0.002656 |
| SY | -1.012995 | 1.272885 | -0.000238 | 0.234530 | 0.332494 | 0.000406 |
| CW | -1.068980 | 1.164191 | 0.000000 | 0.084279 | 0.501307 | 0.009700 |
| BT | -1.068980 | 1.164191 | 0.000000 | 0.084279 | 0.501307 | 0.009700 |
| BC | -2.610023 | 1.220310 | -0.000234 | 0.520739 | 0.181418 | 0.003897 |
| WO | -1.608339 | 1.468589 | -0.000778 | 0.139456 | 0.358369 | 0.004530 |
| SO | -2.284302 | 1.569893 | -0.000632 | 0.272422 | 0.206868 | 0.005065 |
| SK | -0.783581 | 1.432483 | -0.000412 | 0.044460 | 0.241383 | 0.003012 |
| CB | -0.295485 | 1.239946 | -0.000163 | 0.020622 | 0.431515 | 0.003830 |
| TO | -2.698130 | 1.622081 | -0.001703 | 0.354924 | -0.033854 | 0.000682 |
| LK | -1.561284 | 1.335456 | -0.000412 | 0.246163 | 0.381808 | 0.004714 |
| OV | -0.947174 | 1.376350 | -0.000482 | 0.099697 | 0.427943 | 0.001280 |
| BJ | -1.948938 | 1.611438 | -0.000844 | 0.135696 | 0.056739 | 0.002740 |
| SN | -1.321662 | 1.640507 | -0.000285 | 0.038193 | 0.086499 | 0.005844 |
| CK | -2.223515 | 0.937359 | 0.000212 | 0.286311 | 0.733279 | 0.008621 |
| WK | -0.845477 | 1.488444 | -0.000286 | 0.053292 | 0.130856 | 0.005330 |
| CO | -2.900655 | 1.347350 | -0.000533 | 0.300133 | 0.597032 | 0.008415 |
| RO | -2.732646 | 1.499450 | -0.000729 | 0.344764 | 0.466082 | 0.004632 |
| QS | -0.328678 | 1.282494 | -0.000351 | 0.071625 | 0.455600 | -0.001173 |
| PO | -1.430321 | 1.293728 | -0.000452 | 0.047937 | 0.514612 | 0.005466 |
| BO | -2.345845 | 1.450330 | -0.000674 | 0.251441 | 0.527504 | 0.005921 |
| LO | -3.640660 | 1.448503 | -0.000210 | 0.549199 | 0.073672 | 0.009377 |
| BK | -1.307911 | 0.963269 | 0.000000 | 0.268621 | 0.396699 | 0.003713 |
| WI | -1.109398 | 1.187096 | 0.000000 | 0.202056 | 0.093966 | 0.006303 |
| SS | -1.745126 | 1.313340 | -0.000179 | 0.201048 | 0.542693 | 0.004206 |
| BD | -1.848106 | 1.424209 | -0.001488 | 0.289244 | 0.253525 | 0.003499 |
| EL | -2.356235 | 1.479429 | -0.000517 | 0.425367 | -0.083383 | 0.002767 |
| WE | -0.790138 | 0.949707 | 0.000000 | 0.100266 | 0.348136 | 0.004360 |
| AE | -0.510736 | 1.164789 | 0.000000 | 0.127893 | 0.516517 | 0.000450 |
| RL | -0.229212 | 1.060275 | 0.000000 | 0.116801 | 0.430393 | -0.001806 |
| OS | -1.864431 | 1.403065 | -0.001237 | 0.273616 | 0.177408 | -0.000374 |
| OH | -1.431973 | 1.452294 | -0.001475 | 0.061077 | -0.208915 | 0.004856 |
| OT | -1.645961 | 1.447657 | -0.002158 | 0.241038 | 0.719652 | -0.003250 |

**Table 4.7.1.2 Coefficients (b7-b11) for the non-categorical variables of the diameter increment model by species for the SN variant.**

| **Species Code** | **b7** | **b8** | **b9** | **b10** | **b11** |
| --- | --- | --- | --- | --- | --- |
| FR | -0.000824 | -0.002503 | -0.241408 | 0.066508 | 0.086959 |
| JU | -0.003620 | -0.001890 | -0.231988 | 0.077542 | -0.025792 |
| PI | -0.000824 | -0.002503 | -0.241408 | 0.066508 | 0.086959 |
| PU | -0.005287 | -0.003203 | 0.501409 | -1.788107 | -1.231519 |
| SP | -0.004394 | -0.003271 | -0.704687 | 0.127667 | 0.028391 |
| SA | -0.002939 | -0.004873 | -0.018479 | -0.193157 | -0.251016 |
| SR | -0.001847 | -0.001394 | -0.324278 | 0.526867 | 0.009866 |
| LL | -0.002182 | -0.002898 | 0.225213 | 0.086883 | 0.107445 |
| TM | -0.002304 | -0.002716 | -0.217771 | 0.018819 | -0.052142 |
| PP | -0.002257 | -0.002188 | -0.317178 | 0.083538 | 0.150686 |
| PD | -0.003001 | -0.004510 | 0.685018 | -2.907934 | 1.683401 |
| WP | -0.000865 | -0.004065 | -0.372738 | -0.085193 | -0.035582 |
| LP | -0.003408 | -0.004184 | -0.759347 | 0.185360 | -0.072842 |
| VP | -0.002304 | -0.002716 | -0.217771 | 0.018819 | -0.052142 |
| BY | -0.000502 | -0.000768 | -0.560585 | -0.428140 | -0.739509 |
| PC | -0.000191 | -0.000600 | 2.356739 | -8.639114 | 5.615465 |
| HM | -0.000824 | -0.002503 | -0.241408 | 0.066508 | 0.086959 |
| FM | -0.003268 | -0.001923 | -0.339807 | -0.204878 | -0.147110 |
| BE | -0.001242 | -0.000826 | -0.613177 | 0.315909 | -0.237088 |
| RM | -0.002133 | -0.001383 | -0.097604 | -0.069753 | 0.094162 |
| SV | -0.002133 | -0.001383 | -0.097604 | -0.069753 | 0.094162 |
| SM | -0.001413 | -0.001527 | -0.032482 | -0.009543 | 0.005581 |
| BU | -0.004219 | -0.000586 | -0.178079 | 0.187157 | -0.108544 |
| BB | -0.002005 | -0.001848 | -0.192793 | -0.112449 | 0.113349 |
| SB | -0.002005 | -0.001848 | -0.192793 | -0.112449 | 0.113349 |
| AH | -0.003852 | -0.000644 | -0.224489 | 0.031993 | -0.160702 |
| HI | -0.003339 | -0.001029 | -0.245761 | 0.055798 | 0.080648 |
| CA | -0.001041 | -0.001349 | 0.075733 | -0.601088 | -0.757088 |
| HB | -0.001846 | -0.001776 | -0.179044 | 0.039673 | -0.071628 |
| RD | -0.001141 | -0.002822 | -0.391784 | 0.039121 | -0.038350 |
| DW | -0.003144 | -0.001235 | -0.282662 | -0.084011 | 0.104748 |
| PS | -0.001319 | -0.002784 | -0.327799 | -0.200696 | -0.145939 |
| AB | -0.002547 | -0.001176 | -0.380400 | 0.160386 | -0.088382 |
| AS | -0.002027 | -0.000779 | -0.619659 | 0.020132 | -0.020785 |
| WA | -0.000807 | -0.001262 | 0.018297 | -0.001091 | -0.021565 |
| BA | -0.000001 | -0.001450 | -0.158064 | -0.138225 | -0.081197 |
| GA | -0.000001 | -0.001450 | -0.158064 | -0.138225 | -0.081197 |
| HL | -0.001181 | -0.002489 | -0.107755 | 0.958763 | 0.823135 |
| LB | -0.000311 | -0.002192 | -3.469125 | -10.149549 | 1.404412 |
| HA | 0.000000 | -0.000770 | 0.335703 | -0.657751 | 0.585839 |
| HY | -0.003096 | -0.000394 | -0.303627 | 0.210525 | -0.159362 |
| BN | -0.000564 | -0.000588 | 0.133415 | -0.209729 | 0.014948 |
| WN | -0.000564 | -0.000588 | 0.133415 | -0.209729 | 0.014948 |
| SU | -0.002978 | -0.001940 | -0.502977 | 0.141477 | 0.003549 |
| YP | -0.001839 | -0.002217 | -0.321777 | -0.001645 | 0.064815 |
| MG | -0.001259 | -0.001111 | -0.025555 | 0.149606 | 0.032438 |
| CT | 0.000680 | -0.001643 | -0.308453 | -0.071496 | 0.265688 |
| MS | -0.002740 | -0.000886 | 0.405735 | -0.063579 | 0.017095 |
| MV | -0.001259 | -0.001111 | -0.025555 | 0.149606 | 0.032438 |
| ML | -0.002740 | -0.000886 | 0.405735 | -0.063579 | 0.017095 |
| AP | -0.001709 | -0.000099 | -0.872861 | -0.078948 | -0.023609 |
| MB | -0.001709 | -0.000099 | -0.872861 | -0.078948 | -0.023609 |
| WT | -0.000370 | -0.000262 | -0.023349 | 2.073647 | -2.213173 |
| BG | -0.002482 | -0.001013 | -0.296628 | -0.131968 | -0.031596 |
| TS | -0.001087 | -0.001185 | -0.130105 | -0.053688 | 0.149549 |
| HH | -0.003145 | 0.000000 | -0.422675 | -0.236535 | 0.201149 |
| SD | -0.002389 | -0.000797 | -0.292680 | 0.050523 | -0.008687 |
| RA | -0.002625 | -0.000811 | -1.762191 | 1.202555 | 0.383865 |
| SY | -0.000252 | -0.001608 | -0.092471 | 0.494599 | -0.367667 |
| CW | -0.001041 | -0.001349 | 0.075733 | -0.601088 | -0.757088 |
| BT | -0.001041 | -0.001349 | 0.075733 | -0.601088 | -0.757088 |
| BC | -0.002494 | -0.001904 | -0.071719 | -0.028196 | -0.180664 |
| WO | -0.002807 | -0.002269 | -0.223273 | 0.008526 | -0.032889 |
| SO | -0.001157 | -0.001315 | -0.204324 | -0.004871 | 0.048758 |
| SK | -0.003263 | -0.001913 | -0.312121 | 0.051221 | 0.109366 |
| CB | -0.002257 | -0.001826 | -0.105862 | 0.191286 | -0.324254 |
| TO | -0.002773 | -0.002901 | -1.084846 | -0.196932 | 0.514630 |
| LK | -0.001526 | -0.002253 | -0.704548 | 0.421803 | 0.296509 |
| OV | -0.001416 | -0.002636 | -0.666854 | -0.977891 | -0.311322 |
| BJ | -0.003558 | -0.001825 | -0.071837 | -0.147407 | 0.241882 |
| SN | -0.004171 | -0.001962 | -1.251051 | -0.342161 | 0.077775 |
| CK | -0.000299 | -0.001711 | -0.065269 | -0.008808 | 0.471906 |
| WK | -0.003479 | -0.001641 | -0.151128 | 0.073469 | -0.165679 |
| CO | -0.001112 | -0.001536 | -0.133852 | -0.056050 | 0.003947 |
| RO | -0.000908 | -0.001131 | -0.174932 | -0.042528 | 0.110336 |
| QS | -0.000482 | -0.002125 | -0.692617 | 0.176391 | 0.069174 |
| PO | -0.003306 | -0.001375 | -0.408878 | 0.009165 | 0.054469 |
| BO | -0.002235 | -0.000862 | -0.307814 | -0.033568 | 0.054762 |
| LO | -0.003217 | -0.000779 | -0.099727 | -0.174200 | -0.102828 |
| BK | -0.001858 | -0.001674 | -0.335364 | -0.084806 | 0.127896 |
| WI | 0.000000 | -0.001075 | -0.135482 | -0.083002 | 0.059529 |
| SS | -0.002593 | -0.000345 | -0.013340 | -0.021681 | -0.069965 |
| BD | -0.001236 | -0.002875 | -0.580068 | 0.235707 | -0.055862 |
| EL | -0.003132 | -0.001352 | -1.000956 | -0.064524 | -0.146557 |
| WE | -0.002975 | -0.001030 | -0.439374 | 0.272172 | 0.248287 |
| AE | -0.003114 | -0.001524 | -0.446461 | 0.228712 | 0.069806 |
| RL | -0.001330 | -0.002098 | 0.158824 | -0.216082 | 0.037837 |
| OS | -0.003620 | -0.001890 | -0.231988 | 0.077542 | -0.025792 |
| OH | -0.003145 | 0.000000 | -0.422675 | -0.236535 | 0.201149 |
| OT | 0.000000 | -0.002468 | -1.080004 | 0.112883 | 0.158354 |

**Table 4.7.1.3 *FORTYPE* values by species and forest type groups for the SN variant.**

| **Species Code** | **Base *FORTYPE*** | **FTLOHD** | **FTNOHD** | **FTOKPN** | **FTSFHP** | **FTUPHD** | **FTUPOK** | **FTYLPN** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| FR | FTUPOK | 0.000000 | -0.023264 | 0.294886 | -0.271743 | -0.004304 | 0.000000 | 0.039012 |
| JU | FTUPOK | 0.128828 | -0.020186 | 0.054362 | 0.000000 | 0.079239 | 0.000000 | 0.144288 |
| PI | FTUPOK | 0.000000 | -0.023264 | 0.294886 | -0.271743 | -0.004304 | 0.000000 | 0.039012 |
| PU | FTYLPN | 1.214007 | 0.000000 | 0.751229 | 0.000000 | 1.139953 | 0.239480 | 0.000000 |
| SP | FTYLPN | 0.106418 | 0.455020 | 0.017518 | 0.000000 | 0.066811 | -0.040181 | 0.000000 |
| SA | FTYLPN | 0.325861 | 0.000000 | 0.116235 | 0.000000 | 0.162020 | 0.410684 | 0.000000 |
| SR | FTLOHD | 0.000000 | 0.000000 | -0.098950 | 0.000000 | 0.072308 | -0.055071 | -0.236871 |
| LL | FTYLPN | 0.048216 | 0.000000 | 0.088872 | 0.000000 | 0.086720 | 0.106061 | 0.000000 |
| TM | FTYLPN | -0.059007 | 0.325781 | 0.045370 | 0.091999 | -0.004333 | -0.067779 | 0.000000 |
| PP | FTUPHD | 0.000000 | -0.110161 | -0.010394 | 0.043707 | 0.000000 | -0.315855 | 0.116814 |
| PD | FTYLPN | 0.187724 | 0.000000 | 0.044416 | 0.000000 | 0.482241 | 0.296549 | 0.000000 |
| WP | FTUPHD | -0.585211 | -0.062163 | -0.073668 | -0.198969 | 0.000000 | 0.022013 | 0.046063 |
| LP | FTYLPN | 0.126441 | -0.122163 | 0.050835 | 0.000000 | 0.063669 | -0.016885 | 0.000000 |
| VP | FTYLPN | -0.059007 | 0.325781 | 0.045370 | 0.091999 | -0.004333 | -0.067779 | 0.000000 |
| BY | FTLOHD | 0.000000 | -0.050765 | -0.201498 | 0.000000 | 0.194880 | 0.081554 | -0.324291 |
| PC | FTLOHD | 0.000000 | 0.000000 | -0.196837 | 0.000000 | 0.000000 | 0.000000 | -0.241760 |
| HM | FTUPOK | 0.000000 | -0.023264 | 0.294886 | -0.271743 | -0.004304 | 0.000000 | 0.039012 |
| FM | FTLOHD | 0.000000 | -0.581137 | -0.049388 | 0.000000 | -0.021913 | -0.323458 | 0.304165 |
| BE | FTLOHD | 0.000000 | 0.197314 | -0.002307 | -0.361488 | 0.213336 | -0.003385 | -0.252234 |
| RM | FTLOHD | 0.000000 | -0.008575 | -0.091712 | -0.226500 | -0.115718 | -0.233899 | -0.000042 |
| SV | FTLOHD | 0.000000 | -0.008575 | -0.091712 | -0.226500 | -0.115718 | -0.233899 | -0.000042 |
| SM | FTUPOK | 0.177698 | 0.081088 | -0.007830 | 0.268289 | 0.018085 | 0.000000 | -0.969059 |
| BU | FTNOHD | 0.276485 | 0.000000 | 0.000000 | 0.000000 | -0.158379 | -0.066001 | 0.000000 |
| BB | FTLOHD | 0.000000 | -0.090106 | -0.211483 | -0.112850 | -0.150287 | -0.229603 | -0.122245 |
| SB | FTLOHD | 0.000000 | -0.090106 | -0.211483 | -0.112850 | -0.150287 | -0.229603 | -0.122245 |
| AH | FTLOHD | 0.000000 | 0.107053 | -0.184779 | 0.000000 | -0.144979 | -0.125931 | -0.023984 |
| HI | FTUPOK | 0.307092 | 0.127121 | 0.075082 | 0.163686 | 0.145813 | 0.000000 | 0.091028 |
| CA | FTLOHD | 0.000000 | 0.000000 | -0.122639 | 0.000000 | -0.227215 | 0.428371 | -0.127654 |
| HB | FTLOHD | 0.000000 | -0.020917 | -0.227013 | 0.000000 | -0.046600 | -0.142184 | -0.373160 |
| RD | FTUPHD | -0.131762 | -0.159125 | 0.081533 | 0.000000 | 0.000000 | -0.091293 | 0.005318 |
| DW | FTUPOK | 0.193678 | 0.080191 | 0.227760 | -0.207255 | 0.123444 | 0.000000 | 0.395749 |
| PS | FTYLPN | 0.140335 | 0.008246 | -0.030083 | 0.000000 | 0.064726 | -0.063738 | 0.000000 |
| AB | FTUPOK | 0.139891 | 0.094979 | 0.112394 | 0.191476 | 0.098473 | 0.000000 | 0.301892 |
| AS | FTLOHD | 0.000000 | 0.065051 | -0.006241 | 0.243386 | 0.009788 | -0.041769 | -0.049053 |
| WA | FTUPOK | 0.112081 | 0.244086 | -0.042491 | 0.000000 | 0.199271 | 0.000000 | 0.256243 |
| BA | FTLOHD | 0.000000 | 0.003456 | -0.108803 | 0.000000 | -0.018640 | -0.085510 | -0.279440 |
| GA | FTLOHD | 0.000000 | 0.003456 | -0.108803 | 0.000000 | -0.018640 | -0.085510 | -0.279440 |
| HL | FTLOHD | 0.000000 | 0.000000 | -0.228299 | 0.000000 | -0.170453 | -0.178680 | -0.343244 |
| LB | FTLOHD | 0.000000 | 0.000000 | -0.063217 | 0.000000 | -0.297261 | 0.000000 | 0.065035 |
| HA | FTUPOK | 0.000000 | -0.063207 | 0.000000 | 0.000000 | -0.111645 | 0.000000 | 0.000000 |
| HY | FTLOHD | 0.000000 | -0.003095 | -0.007689 | 0.000000 | -0.082245 | -0.187742 | -0.008297 |
| BN | FTUPHD | 0.163749 | -0.176854 | -0.164651 | -0.557302 | 0.000000 | -0.156488 | -0.232630 |
| WN | FTUPHD | 0.163749 | -0.176854 | -0.164651 | -0.557302 | 0.000000 | -0.156488 | -0.232630 |
| SU | FTLOHD | 0.000000 | 0.057604 | -0.090836 | 0.491153 | -0.155894 | -0.168272 | 0.058458 |
| YP | FTUPHD | 0.083904 | 0.057388 | -0.055234 | -0.499954 | 0.000000 | -0.090655 | 0.053935 |
| MG | FTLOHD | 0.000000 | -0.326815 | -0.017682 | 0.000000 | -0.029526 | -0.096994 | -0.031043 |
| CT | FTUPOK | -0.295834 | 0.049636 | -0.353219 | 0.000000 | 0.008351 | 0.000000 | -0.627226 |
| MS | FTLOHD | 0.000000 | -0.153348 | 0.183663 | -0.024673 | 0.055907 | 0.109578 | 0.052422 |
| MV | FTLOHD | 0.000000 | -0.326815 | -0.017682 | 0.000000 | -0.029526 | -0.096994 | -0.031043 |
| ML | FTLOHD | 0.000000 | -0.153348 | 0.183663 | -0.024673 | 0.055907 | 0.109578 | 0.052422 |
| AP | FTLOHD | 0.000000 | -0.357484 | 0.010020 | 0.000000 | -0.023979 | -0.024950 | 0.272524 |
| MB | FTLOHD | 0.000000 | -0.357484 | 0.010020 | 0.000000 | -0.023979 | -0.024950 | 0.272524 |
| WT | FTLOHD | 0.000000 | 0.000000 | -0.203627 | 0.000000 | 0.066993 | 0.696768 | 0.045531 |
| BG | FTUPOK | 0.114656 | 0.063092 | 0.076702 | -0.447981 | 0.111483 | 0.000000 | 0.229180 |
| TS | FTLOHD | 0.000000 | 0.580807 | -0.116496 | 0.000000 | -0.110740 | -0.195302 | 0.006188 |
| HH | FTLOHD | 0.000000 | -0.154634 | -0.087145 | 0.000000 | -0.071133 | -0.204189 | 0.120468 |
| SD | FTUPOK | 0.076657 | 0.352409 | 0.079881 | -0.131538 | -0.023003 | 0.000000 | 0.300435 |
| RA | FTLOHD | 0.000000 | -1.199357 | -0.022774 | 0.000000 | 0.060206 | 0.390875 | -0.045807 |
| SY | FTLOHD | 0.000000 | -0.019656 | -0.262507 | 0.000000 | -0.150643 | -0.161551 | -0.239422 |
| CW | FTLOHD | 0.000000 | 0.000000 | -0.122639 | 0.000000 | -0.227215 | 0.428371 | -0.127654 |
| BT | FTLOHD | 0.000000 | 0.000000 | -0.122639 | 0.000000 | -0.227215 | 0.428371 | -0.127654 |
| BC | FTUPOK | 0.181563 | 0.303382 | 0.162524 | 0.000000 | 0.146052 | 0.000000 | 0.203538 |
| WO | FTUPOK | 0.214921 | 0.196181 | 0.106951 | 0.210088 | 0.100081 | 0.000000 | 0.154886 |
| SO | FTUPOK | 0.081994 | 0.174080 | 0.073767 | -0.126888 | 0.089055 | 0.000000 | 0.015718 |
| SK | FTUPOK | 0.148989 | 0.201455 | 0.055742 | 0.000000 | 0.068460 | 0.000000 | 0.047989 |
| CB | FTLOHD | 0.000000 | 0.130043 | -0.065943 | 0.000000 | -0.066026 | -0.114309 | -0.023093 |
| TO | FTUPOK | -0.049627 | 0.000000 | 0.167384 | 0.000000 | 0.099290 | 0.000000 | 0.184647 |
| LK | FTLOHD | 0.000000 | -0.127737 | 0.029504 | 0.000000 | -0.053091 | 0.012219 | 0.030690 |
| OV | FTLOHD | 0.000000 | -0.924265 | -0.183514 | 0.000000 | -0.083244 | -0.057771 | -0.076588 |
| BJ | FTUPOK | -0.123167 | 0.000000 | 0.000279 | 0.000000 | 0.170335 | 0.000000 | -0.096186 |
| SN | FTLOHD | 0.000000 | -0.286340 | 0.076760 | 0.000000 | 0.037457 | 0.010126 | 0.088233 |
| CK | FTUPOK | 0.086112 | 0.035396 | 0.021275 | 0.000000 | 0.111528 | 0.000000 | -0.518898 |
| WK | FTLOHD | 0.000000 | 0.044529 | -0.042926 | 0.000000 | -0.088049 | -0.085910 | -0.068603 |
| CO | FTUPOK | 0.237228 | 0.136033 | 0.030761 | -0.238190 | 0.096751 | 0.000000 | 0.053589 |
| RO | FTUPOK | 0.103731 | 0.207951 | 0.010721 | -0.023986 | 0.138142 | 0.000000 | 0.052338 |
| QS | FTUPOK | 0.139953 | 0.207603 | 0.009285 | 0.000000 | 0.132520 | 0.000000 | 0.219845 |
| PO | FTUPOK | 0.268975 | 0.482744 | 0.042786 | 0.000000 | 0.090618 | 0.000000 | 0.056597 |
| BO | FTUPOK | 0.049693 | 0.272007 | 0.034224 | -0.104624 | 0.071804 | 0.000000 | -0.044373 |
| LO | FTLOHD | 0.000000 | 0.000000 | 0.074099 | 0.000000 | 0.061718 | 0.229807 | -0.043042 |
| BK | FTUPHD | 0.138241 | 0.117354 | -0.097572 | 0.000000 | 0.000000 | -0.083039 | -0.046524 |
| WI | FTLOHD | 0.000000 | 0.000000 | 0.001536 | 0.000000 | 0.019648 | 0.165022 | -0.001371 |
| SS | FTUPHD | -0.058475 | 0.013995 | -0.139506 | 0.414214 | 0.000000 | -0.166983 | -0.018172 |
| BD | FTNOHD | 0.067203 | 0.000000 | 0.008236 | 0.000000 | -0.033491 | 0.012197 | 0.148520 |
| EL | FTLOHD | 0.000000 | -0.005493 | -0.263842 | 0.000000 | -0.054579 | -0.202033 | 0.071996 |
| WE | FTUPOK | 0.211919 | 0.112610 | 0.174149 | 0.000000 | 0.168458 | 0.000000 | 0.364012 |
| AE | FTLOHD | 0.000000 | -0.221068 | -0.019557 | 0.000000 | -0.210607 | -0.237209 | 0.137175 |
| RL | FTLOHD | 0.000000 | -0.232430 | -0.086137 | 0.000000 | -0.073558 | -0.242294 | 0.177563 |
| OS | FTUPOK | 0.128828 | -0.020186 | 0.054362 | 0.000000 | 0.079239 | 0.000000 | 0.144288 |
| OH | FTLOHD | 0.000000 | -0.154634 | -0.087145 | 0.000000 | -0.071133 | -0.204189 | 0.120468 |
| OT | NONE | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 |

**Table 4.7.1.4 Forest type mapping by forest type group of the diameter increment model for the SN variant.**

|  |  |  |
| --- | --- | --- |
| **Forest Type Group Code** | **Forest Type Group Name** | **FIA Forest Types**  **(see Appendix B, Dixon 2002)** |
| FTLOHD | Lowland Hardwoods | 168, 508, 601, 602, 605, 606, 607, 608, 702, 703, 704, 705, 706, 708 |
| FTNOHD | Northern Hardwoods | 701, 801, 805 |
| FTOKPN | Oak – Pine | 165, 403, 404, 405, 406, 407, 409 |
| FTSFHP | Spruce – Fir – Hemlock – Pine | 104, 105, 121, 124 |
| FTUPHD | Upland Hardwoods | 103, 167, 181, 401, 402, 506, 511, 512, 513, 519, 520, 802, 807, 809 |
| FTUPOK | Upland Oak | 501, 502, 503, 504, 505, 510, 514, 515 |
| FTYLPN | Yellow Pine | 141, 142, 161, 162, 163, 164, 166 |

**Table 4.7.1.5 *ECOUNIT* values by species and ecological unit group for the SN variant.**

| **Species Code** | **Base ECOUNIT** | **M221** | **M222** | **M231** | **221** | **222** | **231T** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| FR | M221 | 0.000000 | 0.000000 | 0.000000 | -0.121082 | 0.000000 | 0.022498 |
| JU | 231T | 0.131771 | 0.217904 | 0.436986 | 0.083896 | -0.005539 | 0.000000 |
| PI | M221 | 0.000000 | 0.000000 | 0.000000 | -0.121082 | 0.000000 | 0.022498 |
| PU | 232 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 |
| SP | 231L | -0.569409 | -0.252741 | -0.265699 | -0.694484 | -0.285112 | -0.504565 |
| SA | 232 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | -0.025549 |
| SR | 232 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 |
| LL | 232 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | -0.175073 |
| TM | 231T | -0.157516 | 0.000000 | 0.000000 | -0.107642 | -0.034553 | 0.000000 |
| PP | M221 | 0.000000 | 0.000000 | 0.000000 | 0.020105 | -0.297952 | 0.236656 |
| PD | 232 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 |
| WP | M221 | 0.000000 | 0.000000 | 0.000000 | -0.065630 | -0.450665 | 0.102041 |
| LP | 232 | -0.069716 | 0.581967 | 0.790149 | -0.584818 | -0.364073 | -0.183317 |
| VP | 231T | -0.157516 | 0.000000 | 0.000000 | -0.107642 | -0.034553 | 0.000000 |
| BY | 232 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.230225 | 0.457755 |
| PC | 232 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 |
| HM | M221 | 0.000000 | 0.000000 | 0.000000 | -0.121082 | 0.000000 | 0.022498 |
| FM | 231T | 0.000000 | 0.044974 | -0.121719 | 0.000000 | 0.289979 | 0.000000 |
| BE | 234 | -0.202911 | -0.354429 | 0.371150 | -0.282925 | -0.250799 | -0.351211 |
| RM | 232 | -0.010003 | -0.157820 | -0.046780 | 0.171661 | 0.170429 | -0.031739 |
| SV | 232 | -0.010003 | -0.157820 | -0.046780 | 0.171661 | 0.170429 | -0.031739 |
| SM | 222 | -0.074887 | -0.216260 | 0.000000 | 0.064792 | 0.000000 | -0.207182 |
| BU | M221 | 0.000000 | 0.000000 | 0.000000 | 0.168179 | 0.024888 | 0.029753 |
| BB | M221 | 0.000000 | 0.379877 | -0.528365 | 0.306760 | 0.167634 | 0.178981 |
| SB | M221 | 0.000000 | 0.379877 | -0.528365 | 0.306760 | 0.167634 | 0.178981 |
| AH | 232 | -0.260665 | -0.170424 | -0.314804 | -0.114680 | 0.043550 | -0.090864 |
| HI | 231T | 0.034070 | -0.221662 | -0.172720 | 0.042510 | -0.012725 | 0.000000 |
| CA | 234 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | -0.010636 | -0.380297 |
| HB | 234 | -0.435211 | -0.117993 | -0.495339 | -0.347813 | -0.336521 | -0.325780 |
| RD | 231T | 0.147356 | 0.184427 | -0.070292 | 0.281057 | 0.322736 | 0.000000 |
| DW | 231T | 0.101205 | 0.352912 | 0.166296 | 0.233779 | 0.104553 | 0.000000 |
| PS | 232 | 0.111933 | -0.023333 | 0.289483 | 0.480859 | 0.215139 | -0.049742 |
| AB | 232 | -0.191377 | -0.370162 | -0.181571 | -0.105676 | 0.093229 | 0.006941 |
| AS | 232 | 0.424837 | 0.000000 | 0.000000 | -0.181787 | 0.000000 | 0.073246 |
| WA | 222 | -0.082465 | -0.149061 | -0.241677 | -0.146698 | 0.000000 | -0.208643 |
| BA | 234 | 0.146900 | -0.443396 | -0.448423 | -0.133024 | -0.079056 | -0.119819 |
| GA | 234 | 0.146900 | -0.443396 | -0.448423 | -0.133024 | -0.079056 | -0.119819 |
| HL | 234 | -0.256637 | -0.149473 | 0.047390 | -0.341690 | -0.215198 | -0.396963 |
| LB | 232 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 |
| HA | M221 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | -0.211742 |
| HY | 232 | -0.126229 | 0.000000 | 0.000000 | -0.278119 | -0.179796 | 0.019636 |
| BN | 222 | -0.071073 | 0.374367 | -0.058790 | -0.072556 | 0.000000 | -0.015672 |
| WN | 222 | -0.071073 | 0.374367 | -0.058790 | -0.072556 | 0.000000 | -0.015672 |
| SU | 232 | 0.214847 | -0.027123 | -0.098745 | 0.311384 | 0.203471 | -0.034773 |
| YP | 231T | -0.035012 | 0.000000 | 0.000000 | 0.114831 | 0.255257 | 0.000000 |
| MG | 232 | -1.721210 | 0.000000 | 0.000000 | -0.438669 | 0.000000 | -0.316872 |
| CT | M221 | 0.000000 | -0.333954 | 0.000000 | 0.326227 | -0.158005 | -0.089037 |
| MS | 232 | -0.184013 | -0.708021 | 0.000000 | -0.947356 | 0.000000 | -0.256347 |
| MV | 232 | -1.721210 | 0.000000 | 0.000000 | -0.438669 | 0.000000 | -0.316872 |
| ML | 232 | -0.184013 | -0.708021 | 0.000000 | -0.947356 | 0.000000 | -0.256347 |
| AP | 231L | 0.352576 | 0.128982 | 0.243569 | 0.269060 | 0.000219 | -0.253490 |
| MB | 231L | 0.352576 | 0.128982 | 0.243569 | 0.269060 | 0.000219 | -0.253490 |
| WT | 232 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.186240 | -1.048379 |
| BG | 232 | -0.014903 | -0.266804 | -0.251634 | -0.000477 | 0.058798 | -0.116789 |
| TS | 232 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.018150 |
| HH | 232 | -0.041534 | 0.130420 | 0.212883 | 0.110701 | -0.130543 | -0.025850 |
| SD | 231T | 0.012432 | 0.000000 | 0.000000 | 0.160384 | 0.079502 | 0.000000 |
| RA | 232 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 |
| SY | 234 | -0.308437 | -0.468897 | -0.573635 | -0.163987 | -0.291934 | -0.312825 |
| CW | 234 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | -0.010636 | -0.380297 |
| BT | 234 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | -0.010636 | -0.380297 |
| BC | 231T | 0.290593 | 0.163528 | -0.111387 | 0.060201 | 0.089278 | 0.000000 |
| WO | 231T | -0.191164 | -0.155148 | -0.154994 | -0.063321 | -0.031876 | 0.000000 |
| SO | 231T | -0.258781 | 0.000000 | 0.000000 | -0.063421 | -0.023554 | 0.000000 |
| SK | 231L | -0.294531 | -0.267829 | -0.113549 | -0.146202 | -0.078697 | -0.142921 |
| CB | 231L | -0.303022 | -0.568197 | -0.001804 | -0.301395 | -0.106435 | -0.139157 |
| TO | 232 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | -0.141504 |
| LK | 232 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | -0.184740 |
| OV | 234 | 0.000000 | 0.000000 | -0.506825 | 0.000000 | 0.074902 | -0.083491 |
| BJ | 232 | -0.172582 | 0.107373 | -0.084775 | 0.127193 | -0.066699 | -0.052485 |
| SN | 232 | -0.252410 | 0.000000 | -0.278470 | -0.201638 | 0.222377 | -0.053375 |
| CK | 222 | -0.039862 | -0.110433 | -0.170239 | 0.024645 | 0.000000 | 0.126865 |
| WK | 232 | 0.197053 | 0.108061 | -0.061415 | -0.343207 | -0.056293 | -0.113493 |
| CO | M221 | 0.000000 | 0.000000 | 0.000000 | 0.151380 | 0.200026 | 0.204279 |
| RO | M221 | 0.000000 | 0.023769 | 0.058308 | 0.043448 | 0.036206 | 0.132129 |
| QS | 231L | -0.854641 | -0.590369 | -0.160338 | -0.190715 | -0.329148 | -0.237106 |
| PO | 231L | -0.042633 | -0.252560 | -0.243734 | -0.162999 | -0.160463 | -0.048463 |
| BO | 222 | -0.122266 | -0.144853 | -0.163130 | 0.021869 | 0.000000 | -0.048649 |
| LO | 232 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 |
| BK | M221 | 0.000000 | -0.174431 | 0.170467 | 0.016664 | 0.035772 | 0.047888 |
| WI | 234 | -0.316154 | 0.000000 | 0.000000 | -0.360580 | 0.031358 | 0.151013 |
| SS | 222 | -0.109616 | 0.068664 | -0.981901 | -0.066394 | 0.000000 | -0.153195 |
| BD | M221 | 0.000000 | 0.022312 | 0.378775 | 0.195305 | 0.106462 | -0.145798 |
| EL | 231T | 0.340206 | -0.330585 | 0.261703 | 0.431384 | -0.107188 | 0.000000 |
| WE | 231L | 0.117770 | -0.235842 | -0.435920 | -0.036156 | -0.229106 | 0.125704 |
| AE | 234 | -0.312702 | -0.097041 | -0.361568 | -0.127373 | -0.293653 | -0.413743 |
| RL | 231L | -0.167102 | -0.292978 | 0.084842 | -0.229308 | -0.287173 | -0.014656 |
| OS | 231T | 0.131771 | 0.217904 | 0.436986 | 0.083896 | -0.005539 | 0.000000 |
| OH | 232 | -0.041534 | 0.130420 | 0.212883 | 0.110701 | -0.130543 | -0.025850 |
| OT | NONE | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 |

1 - Mapping of ecological unit codes (subsection level) into the *ECOUNIT* groups is found in Appendix A.

**Table 4.7.1.6 *ECOUNIT* values by species and ecological unit group for the SN variant.**

| **Species Code** | **Base ECOUNIT** | **231L** | **232** | **234** | **255** | **411** |
| --- | --- | --- | --- | --- | --- | --- |
| FR | M221 | -0.097721 | 0.000000 | 0.000000 | 0.000000 | 0.000000 |
| JU | 231T | 0.490740 | 0.399497 | 0.938548 | 1.088152 | 0.000000 |
| PI | M221 | -0.097721 | 0.000000 | 0.000000 | 0.000000 | 0.000000 |
| PU | 232 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 |
| SP | 231L | 0.000000 | -0.113258 | 0.114097 | 0.092458 | 0.000000 |
| SA | 232 | 0.324111 | 0.000000 | 0.306793 | 0.000000 | -0.342293 |
| SR | 232 | -0.155764 | 0.000000 | -0.112223 | 0.000000 | 0.000000 |
| LL | 232 | -0.067793 | 0.000000 | 0.123262 | 0.000000 | 0.000000 |
| TM | 231T | 0.025073 | -0.150946 | 0.000000 | 0.000000 | 0.000000 |
| PP | M221 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 |
| PD | 232 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | -0.205608 |
| WP | M221 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 |
| LP | 232 | 0.256273 | 0.000000 | 0.281790 | 0.274618 | 0.000000 |
| VP | 231T | 0.025073 | -0.150946 | 0.000000 | 0.000000 | 0.000000 |
| BY | 232 | 0.154525 | 0.000000 | 0.021935 | 0.288209 | -0.033047 |
| PC | 232 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.156623 |
| HM | M221 | -0.097721 | 0.000000 | 0.000000 | 0.000000 | 0.000000 |
| FM | 231T | 0.416909 | 0.163106 | 0.451765 | 0.000000 | 0.000000 |
| BE | 234 | -0.156560 | -0.233523 | 0.000000 | -0.011673 | 0.000000 |
| RM | 232 | 0.111637 | 0.000000 | 0.283893 | 0.000000 | -0.340066 |
| SV | 232 | 0.111637 | 0.000000 | 0.283893 | 0.000000 | -0.340066 |
| SM | 222 | -0.145892 | 0.707850 | 0.289780 | 0.000000 | 0.000000 |
| BU | M221 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 |
| BB | M221 | 0.365419 | 0.236959 | 0.417591 | 1.151813 | 0.000000 |
| SB | M221 | 0.365419 | 0.236959 | 0.417591 | 1.151813 | 0.000000 |
| AH | 232 | 0.087924 | 0.000000 | 0.215406 | 0.000000 | 0.000000 |
| HI | 231T | 0.116846 | 0.113816 | 0.183886 | 0.441744 | 0.000000 |
| CA | 234 | -0.091346 | -0.145951 | 0.000000 | -0.227224 | 0.000000 |
| HB | 234 | -0.130359 | -0.212093 | 0.000000 | -0.208957 | 0.000000 |
| RD | 231T | 0.452072 | 0.552309 | 0.255957 | 0.576422 | 0.000000 |
| DW | 231T | 0.359721 | 0.093627 | 0.488202 | 0.000000 | 0.000000 |
| PS | 232 | 0.249350 | 0.000000 | 0.363787 | 0.317870 | 0.000000 |
| AB | 232 | -0.003611 | 0.000000 | -0.031277 | 0.000000 | 0.000000 |
| AS | 232 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | -0.795646 |
| WA | 222 | -0.015617 | -0.004213 | 0.151449 | -0.056292 | 0.000000 |
| BA | 234 | -0.116966 | -0.075746 | 0.000000 | -0.003469 | 0.000000 |
| GA | 234 | -0.116966 | -0.075746 | 0.000000 | -0.003469 | 0.000000 |
| HL | 234 | 0.095929 | -0.078848 | 0.000000 | 0.115297 | 0.000000 |
| LB | 232 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 |
| HA | M221 | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 |
| HY | 232 | 0.163182 | 0.000000 | -0.283774 | 0.941544 | 0.000000 |
| BN | 222 | 0.349608 | 0.255119 | 0.259162 | 0.352483 | 0.000000 |
| WN | 222 | 0.349608 | 0.255119 | 0.259162 | 0.352483 | 0.000000 |
| SU | 232 | 0.115389 | 0.000000 | 0.129382 | 0.492438 | 0.000000 |
| YP | 231T | 0.095383 | 0.113058 | 0.111540 | 0.000000 | 0.000000 |
| MG | 232 | 0.014928 | 0.000000 | 0.161649 | 0.000000 | 0.000000 |
| CT | M221 | 0.587498 | 0.575938 | 0.572974 | 0.000000 | 0.000000 |
| MS | 232 | -0.181586 | 0.000000 | 0.493509 | 0.000000 | 0.000000 |
| MV | 232 | 0.014928 | 0.000000 | 0.161649 | 0.000000 | 0.000000 |
| ML | 232 | -0.181586 | 0.000000 | 0.493509 | 0.000000 | 0.000000 |
| AP | 231L | 0.000000 | -0.119399 | 0.032415 | 0.498573 | 0.000000 |
| MB | 231L | 0.000000 | -0.119399 | 0.032415 | 0.498573 | 0.000000 |
| WT | 232 | 0.031801 | 0.000000 | -0.054588 | 0.000000 | 0.000000 |
| BG | 232 | 0.138867 | 0.000000 | -0.031436 | 0.375820 | 0.000000 |
| TS | 232 | 0.688179 | 0.000000 | 0.202859 | 0.000000 | 0.000000 |
| HH | 232 | 0.087497 | 0.000000 | 0.018385 | 0.255056 | 0.000000 |
| SD | 231T | 0.295282 | 0.057285 | 0.424776 | 0.000000 | 0.000000 |
| RA | 232 | 0.712083 | 0.000000 | 0.489307 | 0.000000 | -0.147600 |
| SY | 234 | -0.204430 | -0.167438 | 0.000000 | 0.122950 | 0.000000 |
| CW | 234 | -0.091346 | -0.145951 | 0.000000 | -0.227224 | 0.000000 |
| BT | 234 | -0.091346 | -0.145951 | 0.000000 | -0.227224 | 0.000000 |
| BC | 231T | 0.239920 | 0.125890 | 0.264833 | 1.901340 | 0.000000 |
| WO | 231T | 0.164710 | 0.031862 | 0.089972 | 0.448682 | 0.000000 |
| SO | 231T | 0.067643 | 0.087098 | 0.000000 | 0.000000 | 0.000000 |
| SK | 231L | 0.000000 | -0.137069 | 0.044499 | 0.189435 | 0.000000 |
| CB | 231L | 0.000000 | 0.000058 | -0.035715 | -0.198361 | 0.000000 |
| TO | 232 | 0.987526 | 0.000000 | 1.109686 | 1.446041 | 0.000000 |
| LK | 232 | 0.183278 | 0.000000 | 0.238162 | 0.768121 | -1.328540 |
| OV | 234 | 0.045341 | 0.062981 | 0.000000 | -0.065887 | 0.000000 |
| BJ | 232 | 0.178459 | 0.000000 | -0.037201 | 0.380348 | -0.741911 |
| SN | 232 | 0.006612 | 0.000000 | 0.007600 | 0.000000 | 0.000000 |
| CK | 222 | -0.010615 | 0.755389 | 0.471921 | 0.606309 | 0.000000 |
| WK | 232 | 0.076125 | 0.000000 | 0.122936 | 0.249718 | -0.261750 |
| CO | M221 | 0.295079 | 0.085617 | 0.080911 | 0.585065 | 0.000000 |
| RO | M221 | 0.163239 | 0.205401 | 0.433254 | 0.000000 | 0.000000 |
| QS | 231L | 0.000000 | -0.089086 | -0.190850 | -0.036830 | 0.000000 |
| PO | 231L | 0.000000 | -0.081158 | 0.159575 | 0.171401 | 0.000000 |
| BO | 222 | 0.151382 | 0.084829 | 0.369759 | -0.051983 | 0.000000 |
| LO | 232 | 0.000000 | 0.000000 | 0.268416 | 0.000000 | -0.639461 |
| BK | M221 | 0.371885 | 0.171124 | 0.240479 | 0.444606 | 0.000000 |
| WI | 234 | -0.120265 | -0.059706 | 0.000000 | -0.203095 | 0.000000 |
| SS | 222 | 0.075592 | -0.040417 | 0.333962 | 0.393517 | 0.000000 |
| BD | M221 | -0.155027 | -0.071987 | 0.920288 | 0.644926 | 0.000000 |
| EL | 231T | 0.045265 | 0.036098 | -0.318940 | 0.270984 | 0.000000 |
| WE | 231L | 0.000000 | 0.070072 | -0.022479 | 0.235360 | 0.000000 |
| AE | 234 | -0.127535 | -0.043112 | 0.000000 | 0.119860 | 0.000000 |
| RL | 231L | 0.000000 | -0.029868 | 0.210046 | -0.360256 | 0.000000 |
| OS | 231T | 0.490740 | 0.399497 | 0.938548 | 1.088152 | 0.000000 |
| OH | 232 | 0.087497 | 0.000000 | 0.018385 | 0.255056 | 0.000000 |
| OT | NONE | 0.000000 | 0.000000 | 0.000000 | 0.000000 | 0.000000 |

**Table 4.7.1.7 *PLANT* values by species for the SN variant.**

|  |  |
| --- | --- |
| **Species Code** | ***PLANT*** |
| PU | 0.173758 |
| SA | 0.227572 |
| LL | 0.110751 |
| WP | 0.098090 |
| LP | 0.245669 |

**Table 4.7.1.8 *DBHLOW* and *DBHHI* values of the diameter bounding function by species in the SN variant.**

| **Species Code** | ***DBHLOW*** | ***DBHHI*** | **Species Code** | ***DBHLOW*** | ***DBHHI*** |
| --- | --- | --- | --- | --- | --- |
| FR | 26.0 | 34.0 | MG | 32.5 | 43.0 |
| JU | 998.0 | 999.0 | CT | 27.0 | 72.0 |
| PI | 38.0 | 52.0 | MS | 36.5 | 84.0 |
| PU | 18.9 | 24.0 | MV | 32.5 | 43.0 |
| SP | 998.0 | 999.0 | ML | 36.5 | 84.0 |
| SA | 998.0 | 999.0 | AP | 21.2 | 22.0 |
| SR | 32.6 | 48.0 | MB | 23.6 | 30.0 |
| LL | 998.0 | 999.0 | WT | 63.8 | 89.0 |
| TM | 18.7 | 28.0 | BG | 998.0 | 999.0 |
| PP | 24.2 | 40.0 | TS | 33.0 | 60.0 |
| PD | 28.7 | 40.0 | HH | 18.6 | 24.0 |
| WP | 998.0 | 999.0 | SD | 16.7 | 24.0 |
| LP | 998.0 | 999.0 | RA | 19.2 | 36.0 |
| VP | 998.0 | 999.0 | SY | 56.6 | 125.0 |
| BY | 79.8 | 144.0 | CW | 46.5 | 144.0 |
| PC | 998.0 | 999.0 | BT | 48.0 | 60.0 |
| HM | 39.3 | 84.0 | BC | 26.9 | 84.0 |
| FM | 26.1 | 34.0 | WO | 998.0 | 999.0 |
| BE | 26.7 | 60.0 | SO | 34.5 | 48.0 |
| RM | 998.0 | 999.0 | SK | 42.3 | 84.0 |
| SV | 998.0 | 999.0 | CB | 46.2 | 84.0 |
| SM | 998.0 | 999.0 | TO | 17.2 | 26.0 |
| BU | 998.0 | 999.0 | LK | 48.1 | 84.0 |
| BB | 38.4 | 54.0 | OV | 48.0 | 60.0 |
| SB | 998.0 | 999.0 | BJ | 22.7 | 27.0 |
| AH | 17.3 | 27.0 | SN | 47.2 | 108.0 |
| HI | 998.0 | 999.0 | CK | 37.2 | 72.0 |
| CA | 46.5 | 144.0 | WK | 47.6 | 72.0 |
| HB | 32.9 | 60.0 | CO | 998.0 | 999.0 |
| RD | 11.3 | 13.4 | RO | 998.0 | 999.0 |
| DW | 9.7 | 12.0 | QS | 40.6 | 96.0 |
| PS | 22.4 | 27.0 | PO | 38.9 | 52.0 |
| AB | 42.8 | 60.0 | BO | 998.0 | 999.0 |
| AS | 30.7 | 60.0 | LO | 58.8 | 69.0 |
| WA | 33.4 | 84.0 | BK | 30.8 | 60.0 |
| BA | 36.0 | 48.0 | WI | 38.8 | 60.0 |
| GA | 37.0 | 48.0 | SS | 25.6 | 31.6 |
| HL | 33.2 | 72.0 | BD | 998.0 | 999.0 |
| LB | 28.1 | 33.4 | EL | 31.4 | 38.0 |
| HA | 20.5 | 36.0 | WE | 23.9 | 27.0 |
| HY | 998.0 | 999.0 | AE | 46.7 | 130.0 |
| BN | 30.0 | 36.0 | RL | 35.8 | 80.0 |
| WN | 32.9 | 96.0 | OS | 24.1 | 29.0 |
| SU | 39.6 | 60.0 | OH | 998.0 | 999.0 |
| YP | 998.0 | 999.0 | OT | 20.5 | 25.0 |

### 4.7.2 Large Tree Height Growth

In the SN variant, the large-tree height growth model follows the approach of Wensel and others (1987) where the potential height growth is calculated for every tree and modified based on individual tree crown ratio and relative height in the stand using equation {4.7.2.1}. Potential height growth is calculated using the methodology described in the small-tree height increment model.

The crown ratio modifying function uses Hoerl’s Special Function (HSF) form (Cuthbert and Wood 1971, p. 23) identified in equation {4.7.2.2} with a range of 0.0 to 1.0. The a-c parameters are chosen so that height growth is maximized for crown ratios between 45 and 75%.

{4.7.2.1} *HTG* = *POTHTG* \* (0.25 \* *HGMDCR* + 0.75 \* *HGMDRH*)

{4.7.2.2} *HGMDCR* = 100 \* *CR*^3.0 \* exp(-5.0\*CR)

where:

*HTG* is periodic height growth

*POTHTG* is the potential periodic height growth, see section 4.6.1.

*HGMDCR* is the crown ratio modifier (bounded to *HGMDCR* < 1.0)

*HGMDRH* is the relative height modifier

*CR* is crown ratio expressed as a proportion

The relative height modifying function (HGMDRH) is based on the height of the tree record compared to the top height of the stand, adjusted for shade tolerance. The modifying function is based on the Generalized Chapman-Richards function (Donnelly and Betters 1991, Donnelly and others 1992, and Pienaar and Turnbull 1973), whose parameters are set to attenuate height growth based on relative height and shade tolerance, see equation {4.7.2.3} – {4.7.2.7}. Coefficients for these equations are shown in tables 4.7.2.1 and 4.7.2.2. The modifier value (HGMDRH) decreases with decreasing relative height and species intolerance with a range between 0.0 and 1.0. Height growth reaches an upper asymptote of 1.0 at a relative height of 1.0 for intolerant species and 0.7 for tolerant species.

{4.7.2.3} *FCTRKX* = ((RHK/ RHYXS)^(RHM – 1)) – 1

{4.7.2.4} *FCTRRB* = (-1.0 \* RHR)/ (1 – RHB)

{4.7.2.5} *FCTRXB* = *RELHT*^ (1 – RHB) – RHXS^ (1 – RHB)

{4.7.2.6} *FCTRM* = 1 / (1 – RHM)

{4.7.2.7} *HGMDRH* = RHK \* (1 + *FCTRKX* \* exp(*FCTRRB*\**FCTRXB*))^*FCTRM*

where:

*RELHT* is the subject tree’s height relative to the 40 tallest trees in the stand

*HGMDRH* is the relative height modifier used in equation {4.7.2.1} above

RH… are coefficients based on shade tolerance of a species shown in table 4.7.2.1

**Table 4.7.2.1 Shade tolerance coefficients for equations {4.7.2.3} – {4.7.2.7} the SN variant.**

| **Shade Tolerance** | **RHR** | **RHYXS** | **RHM** | **RHB** | **RHXS** | **RHK** |
| --- | --- | --- | --- | --- | --- | --- |
| Very Tolerant | 20 | 0.20 | 1.1 | -1.10 | 0 | 1 |
| Tolerant | 16 | 0.15 | 1.1 | -1.20 | 0 | 1 |
| Intermediate | 15 | 0.10 | 1.1 | -1.45 | 0 | 1 |
| Intolerant | 13 | 0.05 | 1.1 | -1.60 | 0 | 1 |
| Very Intolerant | 12 | 0.01 | 1.1 | -1.60 | 0 | 1 |

**Table 4.7.2.2 Shade tolerance by species in the SN variant.**

| **Species Code** | **Shade Tolerance** | **Species Code** | **Shade Tolerance** |
| --- | --- | --- | --- |
| FR | Very Tolerant | MG | Tolerant |
| JU | Intolerant | CT | Intermediate |
| PI | Tolerant | MS | Tolerant |
| PU | Intolerant | MV | Intermediate |
| SP | Intolerant | ML | Tolerant |
| SA | Intolerant | AP | Intolerant |
| SR | Very Tolerant | MB | Tolerant |
| LL | Intolerant | WT | Intolerant |
| TM | Intolerant | BG | Tolerant |
| PP | Intolerant | TS | Intolerant |
| PD | Intolerant | HH | Tolerant |
| WP | Intermediate | SD | Tolerant |
| LP | Intolerant | RA | Tolerant |
| VP | Intolerant | SY | Intermediate |
| BY | Intermediate | CW | Very Intolerant |
| PC | Intermediate | BT | Very Intolerant |
| HM | Very Tolerant | BC | Intolerant |
| FM | Tolerant | WO | Intermediate |
| BE | Tolerant | SO | Very Intolerant |
| RM | Tolerant | SK | Intermediate |
| SV | Tolerant | CB | Intolerant |
| SM | Very Tolerant | TO | Intolerant |
| BU | Tolerant | LK | Tolerant |
| BB | Intolerant | OV | Intermediate |
| SB | Intolerant | BJ | Intolerant |
| AH | Very Tolerant | SN | Intolerant |
| HI | Intermediate | CK | Intolerant |
| CA | Intolerant | WK | Intolerant |
| HB | Intermediate | CO | Intermediate |
| RD | Tolerant | RO | Intermediate |
| DW | Very Tolerant | QS | Intolerant |
| PS | Very Tolerant | PO | Intolerant |
| AB | Very Tolerant | BO | Intermediate |
| AS | Tolerant | LO | Intermediate |
| WA | Intolerant | BK | Very Intolerant |
| BA | Intolerant | WI | Very Intolerant |
| GA | Tolerant | SS | Intolerant |
| HL | Intolerant | BD | Tolerant |
| LB | Tolerant | EL | Intermediate |
| HA | Tolerant | WE | Tolerant |
| HY | Very Tolerant | AE | Intermediate |
| BN | Intolerant | RL | Tolerant |
| WN | Intolerant | OS | Intermediate |
| SU | Intolerant | OH | Intermediate |
| YP | Intolerant | OT | Intermediate |

# 5.0 Mortality Model

The SN variant uses an SDI-based mortality model as described in Section 7.3.2 of Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002, referred to as EFVS). This SDI-based mortality model is comprised of two steps: 1) determining the amount of stand mortality (section 7.3.2.1 of EFVS) and 2) dispersing stand mortality to individual tree records (section7.3.2.2 of EFVS). In determining the amount of stand mortality, the summation of individual tree background mortality rates is used when stand density is below the minimum level for density dependent mortality (default is 55% of maximum SDI), while stand level density-related mortality rates are used when stands are above this minimum level.

The equation used to calculate individual tree background mortality rates for all species is shown in equation {5.0.1}, and this is then adjusted to the length of the cycle by using a compound interest formula as shown in equation {5.0.2}. Coefficients for these equations are shown in table 5.0.1. The overall amount of mortality calculated for the stand is the summation of the final mortality rate (*RIP*) across all live tree records.

{5.0.1} RI = [1 / (1 + exp(p0 + p1 \* DBH))]

{5.0.2} RIP = 1 – (1 – RI*)*^Y

where:

RI is the proportion of the tree record attributed to mortality

RIP is the final mortality rate adjusted to the length of the cycle

DBH is tree diameter at breast height

Y is length of the current projection cycle in years

p0 and p1 are species-specific coefficients shown in table 5.0.1

**Table 5.0.1 Coefficients used in the background mortality equation {5.0.1} in the SN variant.**

| **Species Code** | **p0** | **p1** | **Species Code** | **p0** | **p1** |
| --- | --- | --- | --- | --- | --- |
| FR | 5.1676998 | -0.0077681 | MG | 5.1676998 | -0.0077681 |
| JU | 9.6942997 | -0.0127328 | CT | 5.9617000 | -0.0340128 |
| PI | 5.1676998 | -0.0077681 | MS | 5.1676998 | -0.0077681 |
| PU | 5.5876999 | -0.0053480 | MV | 5.9617000 | -0.0340128 |
| SP | 5.5876999 | -0.0053480 | ML | 5.1676998 | -0.0077681 |
| SA | 5.5876999 | -0.0053480 | AP | 5.9617000 | -0.0340128 |
| SR | 5.1676998 | -0.0077681 | MB | 5.1676998 | -0.0077681 |
| LL | 5.5876999 | -0.0053480 | WT | 5.9617000 | -0.0340128 |
| TM | 5.5876999 | -0.0053480 | BG | 5.1676998 | -0.0077681 |
| PP | 5.5876999 | -0.0053480 | TS | 5.9617000 | -0.0340128 |
| PD | 5.5876999 | -0.0053480 | HH | 5.1676998 | -0.0077681 |
| WP | 5.5876999 | -0.0053480 | SD | 5.1676998 | -0.0077681 |
| LP | 5.5876999 | -0.0053480 | RA | 5.1676998 | -0.0077681 |
| VP | 5.5876999 | -0.0053480 | SY | 5.9617000 | -0.0340128 |
| BY | 5.5876999 | -0.0053480 | CW | 5.9617000 | -0.0340128 |
| PC | 5.5876999 | -0.0053480 | BT | 5.9617000 | -0.0340128 |
| HM | 5.1676998 | -0.0077681 | BC | 5.9617000 | -0.0340128 |
| FM | 5.1676998 | -0.0077681 | WO | 5.9617000 | -0.0340128 |
| BE | 5.1676998 | -0.0077681 | SO | 5.9617000 | -0.0340128 |
| RM | 5.1676998 | -0.0077681 | SK | 5.9617000 | -0.0340128 |
| SV | 5.1676998 | -0.0077681 | CB | 5.9617000 | -0.0340128 |
| SM | 5.1676998 | -0.0077681 | TO | 5.9617000 | -0.0340128 |
| BU | 5.1676998 | -0.0077681 | LK | 5.1676998 | -0.0077681 |
| BB | 5.9617000 | -0.0340128 | OV | 5.9617000 | -0.0340128 |
| SB | 5.1676998 | -0.0077681 | BJ | 5.9617000 | -0.0340128 |
| AH | 5.1676998 | -0.0077681 | SN | 5.9617000 | -0.0340128 |
| HI | 5.9617000 | -0.0340128 | CK | 5.9617000 | -0.0340128 |
| CA | 5.9617000 | -0.0340128 | WK | 5.9617000 | -0.0340128 |
| HB | 5.9617000 | -0.0340128 | CO | 5.9617000 | -0.0340128 |
| RD | 5.1676998 | -0.0077681 | RO | 5.9617000 | -0.0340128 |
| DW | 5.1676998 | -0.0077681 | QS | 5.9617000 | -0.0340128 |
| PS | 5.1676998 | -0.0077681 | PO | 5.9617000 | -0.0340128 |
| AB | 5.1676998 | -0.0077681 | BO | 5.9617000 | -0.0340128 |
| AS | 5.1676998 | -0.0077681 | LO | 5.9617000 | -0.0340128 |
| WA | 5.9617000 | -0.0340128 | BK | 5.1676998 | -0.0077681 |
| BA | 5.9617000 | -0.0340128 | WI | 5.1676998 | -0.0077681 |
| GA | 5.1676998 | -0.0077681 | SS | 5.1676998 | -0.0077681 |
| HL | 5.9617000 | -0.0340128 | BD | 5.1676998 | -0.0077681 |
| LB | 5.1676998 | -0.0077681 | EL | 5.1676998 | -0.0077681 |
| HA | 5.1676998 | -0.0077681 | WE | 5.1676998 | -0.0077681 |
| HY | 5.1676998 | -0.0077681 | AE | 5.1676998 | -0.0077681 |
| BN | 5.9617000 | -0.0340128 | RL | 5.1676998 | -0.0077681 |
| WN | 5.9617000 | -0.0340128 | OS | 5.5876999 | -0.0053480 |
| SU | 5.9617000 | -0.0340128 | OH | 5.9617000 | -0.0340128 |
| YP | 5.9617000 | -0.0340128 | OT | 5.9617000 | -0.0340128 |

When stand density-related mortality is in effect, the total amount of stand mortality is determined based on the trajectory developed from the relationship between stand SDI and the maximum SDI for the stand. This is explained in section 7.3.2.1 of EFVS.

Once the amount of stand mortality is determined based on either the summation of background mortality rates or density-related mortality rates, mortality is dispersed to individual tree records in relation to a tree’s height relative to the average stand height (RELHT) using equation {5.0.3}. This value is then adjusted by a species-specific mortality modifier representing the species shade tolerance shown in equation {5.0.4}.

The mortality model makes multiple passes through the tree records multiplying a record’s trees-per-acre value times the final mortality rate (MORT), accumulating the results, and reducing the trees-per-acre representation until the desired mortality level has been reached. If the stand still exceeds the basal area maximum sustainable on the site the mortality rates are proportionally adjusted to reduce the stand to the specified basal area maximum.

{5.0.3} MR = 0.84525 – (0.01074 \* PCTi) + (0.0000002 \* PCTi^3)

{5.0.4} MORT = MR \* (MWT) \* 0.1

where:

MR is the proportion of the tree record attributed to mortality (bounded: 0.01 <u><</u> MR <u><</u> 1)

*PCTi* is tree percentile in the distribution of stand basal area

MORT is the final mortality rate of the tree record

MWT is a mortality weight value shown in Table 5.0.2

**Table 5.0.2 MWT** **values for the mortality equation {5.0.4} in the SN variant.**

| **Species Code** | ***MWT*** | **Species Code** | ***MWT*** | **Species Code** | ***MWT*** |
| --- | --- | --- | --- | --- | --- |
| FR | 0.1 | DW | 0.1 | BT | 0.9 |
| JU | 0.7 | PS | 0.1 | BC | 0.7 |
| PI | 0.3 | AB | 0.1 | WO | 0.5 |
| PU | 0.7 | AS | 0.3 | SO | 0.9 |
| SP | 0.7 | WA | 0.7 | SK | 0.5 |
| SA | 0.7 | BA | 0.7 | CB | 0.7 |
| SR | 0.1 | GA | 0.3 | TO | 0.7 |
| LL | 0.7 | HL | 0.7 | LK | 0.3 |
| TM | 0.7 | LB | 0.3 | OV | 0.5 |
| PP | 0.7 | HA | 0.3 | BJ | 0.7 |
| PD | 0.7 | HY | 0.1 | SN | 0.7 |
| WP | 0.5 | BN | 0.7 | CK | 0.7 |
| LP | 0.7 | WN | 0.7 | WK | 0.7 |
| VP | 0.7 | SU | 0.7 | CO | 0.5 |
| BY | 0.5 | YP | 0.7 | RO | 0.5 |
| PC | 0.5 | MG | 0.3 | QS | 0.7 |
| HM | 0.1 | CT | 0.5 | PO | 0.7 |
| FM | 0.3 | MS | 0.3 | BO | 0.5 |
| BE | 0.3 | MV | 0.5 | LO | 0.5 |
| RM | 0.3 | ML | 0.3 | BK | 0.9 |
| SV | 0.3 | AP | 0.7 | WI | 0.9 |
| SM | 0.1 | MB | 0.3 | SS | 0.7 |
| BU | 0.3 | WT | 0.7 | BD | 0.3 |
| BB | 0.7 | BG | 0.3 | EL | 0.5 |
| SB | 0.7 | TS | 0.7 | WE | 0.3 |
| AH | 0.1 | HH | 0.3 | AE | 0.5 |
| HI | 0.5 | SD | 0.3 | RL | 0.3 |
| CA | 0.7 | RA | 0.3 | OS | 0.5 |
| HB | 0.5 | SY | 0.5 | OH | 0.5 |
| RD | 0.3 | CW | 0.9 | OT | 0.5 |

# 6.0 Regeneration

The SN variant contains a partial establishment model which may be used to input regeneration and ingrowth into simulations. A more detailed description of how the partial establishment model works can be found in section 5.4.5 of the Essential FVS Guide (Dixon 2002).

The regeneration model is used to simulate stand establishment from bare ground, or to bring seedlings and sprouts into a simulation with existing trees. Sprouts are automatically added to the simulation following harvest or burning of known sprouting species, see table 6.0.1.

**Table 6.0.1 Regeneration parameters by species in the SN variant.**

| **Species Code** | **Sprouting Species?** | **Minimum Bud Width (in)** | **Minimum Tree Height (ft)** | **Maximum Tree Height (ft)** |
| --- | --- | --- | --- | --- |
| FR | No | 0.1 | 0.50 | 23 |
| JU | No | 0.3 | 2.08 | 27 |
| PI | No | 0.2 | 0.50 | 21 |
| PU | No | 0.5 | 1.00 | 21 |
| SP | Yes | 0.5 | 1.32 | 22 |
| SA | No | 0.5 | 2.51 | 20 |
| SR | No | 0.5 | 0.50 | 24 |
| LL | No | 0.5 | 2.53 | 18 |
| TM | No | 0.5 | 2.75 | 18 |
| PP | No | 0.5 | 0.50 | 17 |
| PD | No | 0.5 | 5.05 | 22 |
| WP | No | 0.4 | 0.50 | 20 |
| LP | No | 0.5 | 4.70 | 20 |
| VP | No | 0.5 | 0.50 | 20 |
| BY | Yes | 0.2 | 1.33 | 20 |
| PC | Yes | 0.2 | 1.33 | 20 |
| HM | No | 0.1 | 0.66 | 20 |
| FM | Yes | 0.2 | 2.40 | 20 |
| BE | Yes | 0.2 | 1.35 | 20 |
| RM | Yes | 0.2 | 1.35 | 20 |
| SV | Yes | 0.2 | 2.03 | 20 |
| SM | Yes | 0.2 | 0.50 | 20 |
| BU | Yes | 0.3 | 0.50 | 20 |
| BB | Yes | 0.1 | 0.50 | 20 |
| SB | Yes | 0.1 | 0.50 | 20 |
| AH | Yes | 0.2 | 2.08 | 20 |
| HI | Yes | 0.3 | 0.51 | 20 |
| CA | Yes | 0.3 | 0.63 | 20 |
| HB | Yes | 0.1 | 2.08 | 20 |
| RD | Yes | 0.2 | 2.08 | 20 |
| DW | Yes | 0.1 | 2.08 | 20 |
| PS | Yes | 0.2 | 2.08 | 20 |
| AB | Yes | 0.1 | 0.50 | 20 |
| AS | Yes | 0.2 | 0.50 | 20 |
| WA | Yes | 0.2 | 0.50 | 20 |
| BA | Yes | 0.2 | 0.92 | 20 |
| GA | Yes | 0.2 | 0.50 | 20 |
| HL | Yes | 0.1 | 5.98 | 20 |
| LB | Yes | 0.2 | 0.94 | 20 |
| HA | Yes | 0.2 | 2.08 | 20 |
| HY | Yes | 0.1 | 0.50 | 20 |
| BN | Yes | 0.3 | 3.28 | 20 |
| WN | Yes | 0.4 | 3.28 | 20 |
| SU | Yes | 0.2 | 1.33 | 20 |
| YP | Yes | 0.2 | 0.89 | 20 |
| MG | Yes | 0.2 | 1.53 | 20 |
| CT | Yes | 0.2 | 1.38 | 20 |
| MS | Yes | 0.2 | 3.59 | 20 |
| MV | Yes | 0.2 | 3.59 | 20 |
| ML | Yes | 0.2 | 3.59 | 20 |
| AP | Yes | 0.2 | 2.08 | 20 |
| MB | Yes | 0.2 | 2.08 | 20 |
| WT | Yes | 0.2 | 4.15 | 20 |
| BG | Yes | 0.2 | 3.59 | 20 |
| TS | Yes | 0.2 | 3.59 | 20 |
| HH | Yes | 0.2 | 2.08 | 20 |
| SD | Yes | 0.2 | 2.08 | 20 |
| RA | No | 0.2 | 2.08 | 20 |
| SY | Yes | 0.1 | 0.89 | 20 |
| CW | Yes | 0.1 | 0.50 | 20 |
| BT | Yes | 0.2 | 0.50 | 20 |
| BC | Yes | 0.1 | 0.50 | 20 |
| WO | Yes | 0.2 | 1.38 | 20 |
| SO | Yes | 0.2 | 1.38 | 20 |
| SK | Yes | 0.1 | 1.38 | 20 |
| CB | Yes | 0.1 | 0.50 | 20 |
| TO | Yes | 0.2 | 2.75 | 20 |
| LK | Yes | 0.1 | 2.75 | 20 |
| OV | Yes | 0.2 | 0.50 | 20 |
| BJ | Yes | 0.2 | 2.75 | 20 |
| SN | Yes | 0.2 | 0.50 | 20 |
| CK | Yes | 0.1 | 1.38 | 20 |
| WK | Yes | 0.1 | 0.50 | 20 |
| CO | Yes | 0.2 | 1.38 | 20 |
| RO | Yes | 0.2 | 1.38 | 20 |
| QS | Yes | 0.1 | 0.50 | 20 |
| PO | Yes | 0.1 | 2.75 | 20 |
| BO | Yes | 0.2 | 1.38 | 20 |
| LO | Yes | 0.2 | 0.50 | 20 |
| BK | Yes | 0.1 | 5.98 | 20 |
| WI | Yes | 0.1 | 4.70 | 20 |
| SS | Yes | 0.1 | 2.08 | 20 |
| BD | Yes | 0.1 | 0.55 | 20 |
| EL | Yes | 0.1 | 0.50 | 20 |
| WE | Yes | 0.1 | 0.50 | 20 |
| AE | Yes | 0.1 | 0.50 | 20 |
| RL | Yes | 0.1 | 0.50 | 20 |
| OS | No | 0.3 | 2.08 | 20 |
| OH | No | 0.2 | 2.08 | 20 |
| OT | No | 0.2 | 2.08 | 20 |

The number of sprout records created for each sprouting species is found in table 6.0.2. For more prolific root suckering hardwood species, logic rule {6.0.1} is used to determine the number of sprout records. The trees-per-acre represented by each sprout record is determined using the general sprouting probability equation {6.0.2}. See table 6.0.2 for species-specific sprouting probabilities, number of sprout records created, and reference information.

Users wanting to modify or turn off automatic sprouting can do so with the SPROUT or NOSPROUT keywords, respectively. Sprouts are not subject to maximum and minimum tree heights found in table 6.0.2 and do not need to be grown to the end of the cycle because estimated heights and diameters are end of cycle values.

{6.0.1} For root suckering hardwood species

*DSTMPi* ≤ 5: NUMSPRC = 1

5 < *DSTMPi* ≤ 10: NUMSPRC = NINT(-1.0 + 0.4 \* *DSTMPi*)

*DSTMPi* > 10: NUMSPRC = 3

{6.0.2} TPAs = *TPAi* \* *PS*

{6.0.3} PS = [1 / (1 + exp(-(b0 + b1 \* *DSTMPi* i))]

{6.0.4} *PS =* ((57.3 - 0.0032 \* (*DSTMPi*^3) / 100)

{6.0.5} *PS =* (1 / (1 + exp(-(2.3656 - 0.2781 \* (*DSTMPi* / 0.7801)))))

{6.0.6} *PS =* (1 / (1+exp(-(-2.8058 + 22.6839 \* (1 / ((*DSTMPi* / 0.7788) - 0.4403))))))

where:

DSTMPi is the diameter at breast height of the parent tree

NUMSPRC is the number of sprout tree records

NINT rounds the value to the nearest integer

TPAs is the trees per acre represented by each sprout record

*TPAi* is the trees per acre removed/killed represented by the parent tree

PS is a sprouting probability (see table 6.0.2)

b0, b1 are species-specific coefficients

**Table 6.0.1 Regeneration parameters by species in the SN variant.**

| **Species Code** | **Sprouting Probability** | **b0** | **b1** | **Number of Sprout Records** | **Source** |
| --- | --- | --- | --- | --- | --- |
| SP | 0.42 for DBH < 7”,  0 for DBH > 7” |  |  | 1, 0 | Wayne Clatterbuck (personal communication), Ag. Handbook 654 |
| BY | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| PC | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| FM | 0.94 |  |  | 1 | Keyser and Loftis, 2014 |
| BE | 0.94 |  |  | 1 | Keyser and Loftis, 2014 |
| RM | {6.0.3} | 4.1975 | -0.1821 | 1 | Keyser and Loftis, 2014 |
| SV | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| SM | 0.73 |  |  | 1 | Keyser and Loftis, 2014 |
| BU | 0.96 |  |  | 1 | Keyser and Loftis, 2014 |
| BB | {6.0.3} | 3.3670 | -0.5159 | 1 | Keyser and Loftis, 2014 |
| SB | {6.0.3} | 3.3670 | -0.5159 | 1 | Keyser and Loftis, 2014 |
| AH | 0.94 |  |  | 1 | Keyser and Loftis, 2014 |
| HI | 0.95 |  |  | 1 | Keyser and Loftis, 2014 |
| CA | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| HB | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| RD | 0.94 |  |  | 1 | Keyser and Loftis, 2014 |
| DW | 0.94 |  |  | 1 | Keyser and Loftis, 2014 |
| PS | 0.94 |  |  | 1 | Keyser and Loftis, 2014 |
| AB | 0.93 |  |  | {6.0.1} | Keyser and Loftis, 2014 |
| AS | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| WA | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| BA | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| GA | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| HL | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| LB | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| HA | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| HY | 0.94 |  |  | 1 | Keyser and Loftis, 2014 |
| BN | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| WN | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| SU | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| YP | 0.79 |  |  | 1 | Keyser and Loftis, 2014 |
| MG | 0.95 |  |  | 1 | Keyser and Loftis, 2014 |
| CT | 0.69 |  |  | 1 | Keyser and Loftis, 2014 |
| MS | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| MV | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| ML | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| AP | 0.94 |  |  | 1 | Keyser and Loftis, 2014 |
| MB | 0.94 |  |  | 1 | Keyser and Loftis, 2014 |
| WT | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| BG | 0.72 |  |  | 1 | Keyser and Loftis, 2014 |
| TS | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| HH | 0.94 |  |  | 1 | Keyser and Loftis, 2014 |
| SD | 0.97 |  |  | 1 | Keyser and Loftis, 2014 |
| SY | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| CW | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| BT | {6.0.3} | 2.7386 | -0.1076 | {6.0.1} | Keyser and Loftis, 2014 |
| BC | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| WO | {6.0.3} | 2.4608 | -0.3093 | 1 | Keyser and Loftis, 2014 |
| SO | {6.0.3} | 3.8897 | -0.2260 | 1 | Keyser and Loftis, 2014 |
| SO\* | {6.0.4} |  |  | 1 | Johnson 1975  Ag. Handbook 654 |
| SK | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| CB | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| CB\* | {6.0.4} |  |  | 1 | Johnson 1975  Ag. Handbook 654 |
| TO | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| LK | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| OV | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| BJ | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| BJ\* | {6.0.5} |  |  | 1 | Johnson 1977  Ag. Handbook 654 |
| SN | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| CK | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| WK | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| CO | 0.78 |  |  | 1 | Keyser and Loftis, 2014 |
| RO | {6.0.3} | 3.2586 | -0.1120 | 1 | Keyser and Loftis, 2014 |
| RO\* | {6.0.4} |  |  | 1 | Johnson 1975  Ag. Handbook 654 |
| QS | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| PO | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| PO\* | {6.0.6} |  |  | 1 | Johnson 1977  Ag. Handbook 654 |
| BO | {6.0.3} | 3.1070 | -0.2128 | 1 | Keyser and Loftis, 2014 |
| LO | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| BK | 0.86 |  |  | {6.0.1} | Keyser and Loftis, 2014 |
| WI | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| SS | 0.94 |  |  | {6.0.1} | Keyser and Loftis, 2014 |
| BD | 0.99 |  |  | 1 | Keyser and Loftis, 2014 |
| EL | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| WE | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| AE | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |
| RL | {6.0.3} | 2.7386 | -0.1076 | 1 | Keyser and Loftis, 2014 |

\*For location codes 809\*\*, 810\*\*, 905\*\* and 908\*\* these species use the specified different equation.

Regeneration of seedlings must be specified by the user with the partial establishment model by using the PLANT or NATURAL keywords. Height of the seedlings is estimated in two steps. First, the height is estimated when a tree is 5 years old (or the end of the cycle – whichever comes first) by using the small-tree height growth equations found in section 4.6.1. Users may override this value by entering a height in field 6 of the PLANT or NATURAL keyword; however the height entered in field 6 is not subject to minimum height restrictions and seedlings as small as 0.05 feet may be established. The second step also uses the equations in section 4.6.1, which grow the trees in height from the point five years after establishment to the end of the cycle.

Seedlings and sprouts are passed to the main FVS model at the end of the growth cycle in which regeneration is established. Unless noted above, seedlings being passed are subject to minimum and maximum height constraints and a minimum budwidth constraint shown in table 6.0.2. After seedling height is estimated, diameter growth is estimated using equations described in section 4.6.2. Crown ratios on newly established trees are estimated as described in section 4.3.1.

Regenerated trees and sprouts can be identified in the treelist output file with tree identification numbers beginning with the letters “ES”.

# 7.0 Volume

Volume is calculated for four merchantability standards: total stem cubic feet, merchantable stem cubic feet, sawlog stem cubic feet, and sawlog stem board feet (calculated using International ¼-inch rule for the George Washington and Jefferson, Ouachita, Ozark and Saint Francis, and Francis Marion and Sumter National Forests, excluding the Andrew Pickens District, and calculated using Scribner rule for all other locations). Volume estimation is based on methods contained in the National Volume Estimator Library maintained by the Forest Products Measurements group in the Forest Management Service Center (Volume Estimator Library Equations 2009). The default merchantability standards for Southern Region forests in the SN variant are shown in table 7.0.1. The default merchantability standards for Eastern Region forests in the SN variant are shown in table 7.0.2.

Volume computation methods used by the Forest Inventory and Analysis (FIA) program can be requested with the FIAVBC keyword. This keyword encompasses the National Scale Volume and Biomass estimators (NSVB; Westfall et al. 2024) and regional equations used for woodland species (Burrill et al. 2024). More information about the FIAVBC keyword and required input variables can be found in the Essential FVS Guide (Dixon 2002).

**Table 7.0.1 Volume merchantability standards for Southern Region (Region 8) forests in the SN variant. Stump height is set to 0.5 feet and 1.0 feet for pulpwood and sawtimber volume respectively.**

| **Species /** **Location Code** | **Pulpwood**  **(Minimum DBH /**  **Top Diameter Outside Bark)** | **Sawtimber**  **(Minimum DBH /**  **Top Diameter Outside Bark)** |
| --- | --- | --- |
| Softwoods Default | 4.0 / 4.0 **inches** | 10.0 / 7.0 **inches** |
| JU on 81001 - 81007 | 4.0 / 4.0 inches | 9.0 / 7.0 inches |
| SR Default | 6.0 / 4.0 **inches** | 10.0 / 7.0 **inches** |
| LP Default | 6.0 / 4.0 **inches** | 10.0 / 7.0 **inches** |
| Softwoods on 81102, 81104, 81105, 81106, 81107, 81108, 81109, 81111 | 8.0 / 3.5 **inches** | 10.0 / 6.3 **inches** |
| JU on 81102, 81104, 81105, 81106, 81107, 81108, 81109, 81111 | 8.0 / 3.5 **inches** | 12.0 / 9.0 **inches** |
| WP on 81102, 81104, 81105, 81106, 81107, 81108, 81109, 81111 | 8.0 / 3.5 **inches** | 12.0 / 9.0 **inches** |
| BY on 81102, 81104, 81105, 81106, 81107, 81108, 81109, 81111 | 8.0 / 3.5 **inches** | 12.0 / 9.0 **inches** |
| PC on 81102, 81104, 81105, 81106, 81107, 81108, 81109, 81111 | 8.0 / 3.5 **inches** | 12.0 / 9.0 **inches** |
| HM on 81102, 81104, 81105, 81106, 81107, 81108, 81109, 81111 | 8.0 / 3.5 **inches** | 12.0 / 9.0 **inches** |
| Softwoods on 81103, 81110 | 5.6 / 3.5 **inches** | 11.0 / 6.3 **inches** |
| Hardwoods - Default | 4.0 / 4.0 **inches** | 12.0 / 9.0 **inches** |
| LB Default | 6.0 / 4.0 **inches** | 12.0 / 9.0 **inches** |
| WN Default | 6.0 / 4.0 **inches** | 12.0 / 9.0 **inches** |
| SU Default | 6.0 / 4.0 **inches** | 12.0 / 9.0 **inches** |
| MB Default | 6.0 / 4.0 **inches** | 12.0 / 9.0 **inches** |
| WT Default | 6.0 / 4.0 **inches** | 12.0 / 9.0 **inches** |
| TS Default | 6.0 / 4.0 **inches** | 12.0 / 9.0 **inches** |
| WO Default | 6.0 / 4.0 **inches** | 12.0 / 9.0 **inches** |
| Hardwoods on 81102, 81104, 81105, 81106, 81107, 81108, 81109, 81111 | 8.0 / 3.5 **inches** | 15.0 / 11.0 **inches** |
| Hardwoods on 81103, 81110 | 6.0 / 3.5 **inches** | 13.0 / 8.0 **inches** |

**Table 7.0.2 Volume merchantability standards for Eastern Region (Region 9) forests in the SN variant. Stump height is set to 0.5 feet and 1.0 feet for pulpwood and sawtimber volume respectively.**

| **Species /** **Location Code** | **Pulpwood**  **(Minimum DBH /**  **Top Diameter Outside Bark)** | **Sawtimber**  **(Minimum DBH /**  **Top Diameter Outside Bark)** |
| --- | --- | --- |
| Softwoods default | 5.0 / 4.0 **inches** | 9.0 / 7.6 **inches** |
| Hardwoods on 905 | 5.0 / 4.0 inches | 9.0 / 7.6 inches |
| Hardwoods on 908 | 6.0 / 5.0 inches | 11.0 / 9.6 inches |

For both cubic foot and board foot prediction, Clark’s profile models (Clark et al. 1991) are used for all species and all location codes in the SN variant. Equation number is 831CLKE\*\*\*, where \*\*\* signifies the three-digit FSH species code.

# 8.0 Fire and Fuels Extension (FFE-FVS)

The Fire and Fuels Extension to the Forest Vegetation Simulator (FFE-FVS) (Reinhardt and Crookston 2003) integrates FVS with models of fire behavior, fire effects, and fuel and snag dynamics. This allows users to simulate various management scenarios and compare their effect on potential fire hazard, surface fuel loading, snag levels, and stored carbon over time. Users can also simulate prescribed burns and wildfires and get estimates of the associated fire effects such as tree mortality, fuel consumption, and smoke production, as well as see their effect on future stand characteristics. FFE-FVS, like FVS, is run on individual stands, but it can be used to provide estimates of stand characteristics such as canopy base height and canopy bulk density when needed for landscape-level fire models.

For more information on FFE-FVS and how it is calibrated for the SN variant, refer to the updated FFE-FVS model documentation (Rebain, comp. 2010) available on the FVS website.

|  |
| --- |
|  |

# 9.0 Insect and Disease Extensions

FVS Insect and Disease models have been developed through the participation and contribution of various organizations led by Forest Health Protection. The models are maintained by the Forest Management Service Center and regional Forest Health Protection specialists. There are no insect and disease models currently available for the SN variant. However, FVS addfiles that simulate the effects of known agents within the SN variant may be found in chapter 8 of the Essential FVS Users Guide (Dixon 2002).

# 10.0 Literature Cited

Arner, S. L.; Woudenberg, S.; Waters, S.; Vissage, J; MacLean, C.; Thompson, M.; Hansen, M. 2001. National algorithm for determining stocking class, stand size class, and forest type for Forest Inventory and Analysis plots. Internal Rep. Newtown Square, PA: U. S. Department of Agriculture, Forest Service, Northeastern Research Station. 10p.

Arney, J. D. 1985. A modeling strategy for the growth projection of managed stands. Canadian Journal of Forest Research 15(3):511-518.

Bechtold, William A. 2003. Crown-diameter prediction models for 87 species of stand-grown trees in the eastern united states. Sjaf. 27(4):269-278.

Bragg, Don C. 2001. A local basal area adjustment for crown width prediction. Njaf. 18(1):22-28.

Burns, Russell M., and Barbara H. Honkala, tech. coords. 1990. Silvics of North America: Vol.1. Conifers; Vol.2. Hardwoods. Agriculture Handbook 654. U.S. Department of Agriculture, Forest Service, Washington, DC.

Burrill, Elizabeth A.; DiTommaso, Andrea M.; Turner, Jeffery A.; Pugh, Scott A.; Christensen, Glenn; Kralicek, Karin M.; Perry, Carol J.; Lepine, Lucie C.; Walker, David M.; Conkling, Barbara L. 2024. The Forest Inventory and Analysis Database, FIADB user guides, volume: database description (version 9.3), nationwide forest inventory (NFI). U.S. Department of Agriculture, Forest Service. 1026 p. [Online].

Carmean, Willard H.; Hahn, Jerold T.; Jacobs, Rodney D. 1989. Site index curves for forest tree species in the eastern United States. Gen. Tech. Report NC-128. St. Paul, MN: U.S. Department of Agriculture, North Central Forest Experiment Station. 142 p.

Clark, Alexander III; Souter, Ray A.; Schlaegal, Bryce E. 1991. Stem profile equations for Southern tree species. Res. Pap. SE-282. Asheville, NC: Forest Service, Southeastern Forest Experiment Station. 113 p.

Clatterbuck, Wayne K., Personal Communication, July 7, 2015.

Cleland, D.T.; Freeouf, J.A.; Keys, J.E., Jr.; Nowacki, G.J.; Carpenter, C; McNab, W.H. 2007. Ecological Subregions: Sections and Subsections of the Conterminous United States [1:3,500,000] [CD-ROM]. Sloan, A.M., cartog. Gen. Tech. Report WO-76. Washington, DC: U.S. Department of Agriculture, Forest Service.

Cole, D. M.; Stage, A. R. 1972. Estimating future diameters of lodgepole pine. Res. Pap. INT-131. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 20p.

Curtis, Robert O. 1967. Height-diameter and height-diameter-age equations for second-growth Douglas-fir. Forest Science 13(4):365-375.

Cuthbert, Daniel; Wood, Fred S. 1971. Fitting equations to data; computer analysis of multifactor data for scientists and engineers. Wiley-Interscience, New York. 342 p. (A 2nd edition is available: Wiley, New York. 1980. 458 p.)

Dixon, G. E. 1985. Crown ratio modeling using stand density index and the Weibull distribution. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 13p.

Dixon, Gary E. comp. 2002 (revised frequently). Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U.S. Department of Agriculture, Forest Service, Forest Management Service Center.

Donnelly, D. M.; Betters, D. R. 1991. Optimal control for scheduling final harvest in even-aged forest stands. Forest Ecology and Management 46:135-149.

Donnelly, Dennis M.; Betters, David R.; Turner, Matthew T.; Gaines, Robert E. 1992. Thinning even-aged forest stands: Behavior of singular path solutions in optimal control analyses. Res. Paper RM-307. Fort Collins, CO: U.S. Department of Agriculture, Rocky Mountain Forest and Range Experiment Station. 12 p.

Doolittle, Warren T. 1958. Site Index Comparisons for several Forest Species in the Southern Appalachians. Soil Science Society of America proceedings. 22(5). pp. 455-458.

Ek, Alan. 1974. Dimensional relationships of forest and open grown trees in Wisconsin. Univ. Of Wisconsin.

Harlow, William M., Harrar, Ellwood S. 1968. *Textbook of dendrology: covering important forest trees of the United states and Canada.* McGraw-Hill, New York. 512p.

Johnson, Robert L. 1975. Natural regeneration and development of Nuttall oak and associated species. USDA Forest Service, Research Paper SO-104. Southern Forest Experiment Station, New Orleans, LA. 12 p.

Johnson, Paul S. 1977. Predicting oak stump sprouting and sprout development in the Missouri Ozarks. USDA Forest Service, Research Paper NC-149. North Central Forest Experiment Station, St. Paul, MN. 11 p.

Keys, James E., Constance A. Carpenter, Susan L. Hooks, Frank G. Koenig, W. Henry McNab, Walter E. Russell, and Marie-Louise Smith. 1995. *Ecological Units of the Eastern United States: A First Approximation.* USDA Forest Service. Southern Region. {Note: Complete package consists of large paper map, Map Unit Tables document, and a CD-ROM.}

Keyser, T.L. and D.L. Loftis. 2014. Probability of stump sprouting models for southern Appalachian hardwood forests.Internal Rep. Asheville NC: U. S. Department of Agriculture, Forest Service, Southern Research Station.

Krajicek, J.; Brinkman, K.; Gingrich, S. 1961. Crown competition – a measure of density. For. Science 7(1):35-42.

McNab, W. Henry; Keyser Chad E. 2011. Revisions to the 1995 map of ecological subregions that affect users of the Southern variant of the Forest Vegetation Simulator. USDA Forest Service. Southern Research Station, e-Research Note, SRS-21; p. 4.

Pienaar, L.V.; Turnbull, K.J. 1973. The Chapmann-Richards generalization of von Bertalanffy’s growth model for basal area growth and yield in even-aged stands. For. Science. 19(1):2-22.

Rebain, Stephanie A. comp. 2010 (revised frequently). The Fire and Fuels Extension to the Forest Vegetation Simulator: Updated Model Documentation. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 379 p.

Reinhardt, Elizabeth; Crookston, Nicholas L. (Technical Editors). 2003. The Fire and Fuels Extension to the Forest Vegetation Simulator. Gen. Tech. Rep. RMRS-GTR-116. Ogden, UT: U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station. 209 p.

Shaw, J.D., G. Vacchiano, R.J. DeRose, A. Brough, A. Kusbach, and J.N. Long. 2006. Local calibration of the Forest Vegetation Simulator (FVS) using custom inventory data. Proceedings: Society of American Foresters 2006 National Convention. October 25-29, 2006, Pittsburgh, PA. [published on CD-ROM]: Society of American Foresters,Bethesda, MD.

Smith, w.r., r.m. Farrar, jr, p.a. Murphy, j.l. Yeiser, r.s. Meldahl,and j.s. Kush. 1992. Crown and basal area relationships of open-grown southern pines for modeling competition and growth.

Stage, A. R. 1973. Prognosis Model for stand development. Res. Paper INT-137. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 32p.

USDA Forest Service. 1992. Silvicultural Examination and Prescription Field Book. USDA Forest Service Southern region, Atlanta GA. USDA Forest Service, Southern Region. 32 p.

USDA Forest Service. 2017. S\_USA.EcomapSubsections [vector digital data]. Downloaded from FSGeodata Clearingouse, https://data.fs.usda.gov/geodata/edw/datasets.php?dsetParent=EcomapSubSections\_2007

Van Dyck, Michael G.; Smith-Mateja, Erin E., comps. 2000 (revised frequently). Keyword reference guide for the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

Wensel, Lee C.; Meerschaert, Walter J.; Biging, Greg S. 1987. Tree height and diameter growth models for northern California conifers. Hilgardia 55(8), 20 p.

Westfall, James A.; Coulston, John W.; Gray, Andrew N.; Shaw, John D.; Radtke, Philip J.; Walker, David M.; Weiskittel, Aaron R.; MacFarlane, David W.; Affleck, David L.R.; Zhao, Dehai; Temesgen, Hailemariam; Poudel, Krishna P.; Frank, Jereme M.; Prisley, Stephen P.; Wang, Yingfang; Sánchez Meador, Andrew J.; Auty, David; Domke, Grant M. 2024. A national-scale tree volume, biomass, and carbon modeling system for the United States. Gen. Tech. Rep. WO-104. Washington, DC: U.S. Department of Agriculture, Forest Service. 37 p.

Wykoff, W. R. 1990. A basal area increment model for individual conifers in the northern Rocky Mountains. For. Science 36(4): 1077-1104.

Wykoff, William R., Crookston, Nicholas L., and Stage, Albert R. 1982. User’s guide to the Stand Prognosis Model. Gen. Tech. Rep. INT-133. Ogden, UT: Forest Service, Intermountain Forest and Range Experiment Station. 112p.

# 11.0 Appendices

## 11.1 Appendix A. Ecological Unit Codes (EUC)

**Table 11.1.1 Ecological Unit codes (EUC) recognized in the SN variant.**

| **FVS Sequence Number** | **EUC Code** | **Name** | **Source1** | **Ecoregion Category** |
| --- | --- | --- | --- | --- |
| 1 | 221Db | Piedmont Upland | 0 | 221 |
| 2 | 221Dd | Triassic Basins | 2 | 231T |
| 3 | 221De | Northern Piedmont | 2 | 231T |
| 4 | 221Eb | Teays Plateau | 0 | 221 |
| 5 | 221Eg | Lower Scioto River Plateau | 2 | 222 |
| 6 | 221Ej | Eastern Knobs Transition | 2 | 222 |
| 7 | 221En | Kinniconick and Licking Knobs | 2 | 222 |
| 8 | 221Ha | Rugged Eastern Hills | 0 | 221 |
| 9 | 221Hb | Kinniconick and Licking Knobs | 2 | 221 |
| 10 | 221Hc | Southwestern Escarpment | 0 | 221 |
| 11 | 221Hd | Sequatchie Valley | 0 | 221 |
| 12 | 221He | Miami-Scioto Plain-Tipton Till Plain | 0 | 221 |
| 13 | 221Ja | Rolling Limestone Hills | 0 | 221 |
| 14 | 221Jb | Sandstone Hills | 0 | 221 |
| 15 | 221Jc | Holston Valley | 0 | 221 |
| 16 | 222Ab | Central Plateau | 1 | 222 |
| 17 | 222Ag | White River Hills | 1 | 222 |
| 18 | 222Ah | Elk River Hills | 1 | 222 |
| 19 | 222Al | Black River Ozark Border | 1 | 222 |
| 20 | 222Am | Springfield Plain | 1 | 222 |
| 21 | 222An | Springfield Plateau | 1 | 222 |
| 22 | 222Cb | Northern Deep Loess Hills and Bluffs | 1 | 222 |
| 23 | 222Cc | Deep Loess Hills and Bluffs | 1 | 222 |
| 24 | 222Cd | Clay Hills | 1 | 222 |
| 25 | 222Ce | Northern Loessial Hills | 1 | 222 |
| 26 | 222Cf | Northern Pontotoc Ridge | 1 | 222 |
| 27 | 222Cg | Upper Loam Hills | 1 | 222 |
| 28 | 222Ch | Ohio and Cache River Alluvial Plain | 1 | 222 |
| 29 | 222Da | Interior Western Coalfields | 1 | 222 |
| 30 | 222Db | Lower Ohio-Cache-Wabash Alluvial plains | 1 | 222 |
| 31 | 222Dc | Outer Western Coalfields | 1 | 222 |
| 32 | 222Dd | Marion Hills | 1 | 222 |
| 33 | 222De | Crawford Uplands | 1 | 222 |
| 34 | 222Dg | Southern Dripping Springs | 1 | 222 |
| 35 | 222Di | Lesser Shawnee Hills | 1 | 222 |
| 36 | 222Dj | Northern Dripping Springs | 1 | 222 |
| 37 | 222Ea | Eastern Highland Rim | 1 | 222 |
| 38 | 222Eb | Eastern Karst Plain | 1 | 222 |
| 39 | 222Ec | Outer Nashville Basin | 1 | 222 |
| 40 | 222Ed | Inner Nashville Basin | 1 | 222 |
| 41 | 222Ee | Highland Rim-Hilly and Rolling | 1 | 222 |
| 42 | 222Ef | Tennessee-Gasper Valley | 1 | 222 |
| 43 | 222Eg | Western Pennyroyal Karst Plain | 1 | 222 |
| 44 | 222Eh | Penneroyal Karst Plain | 1 | 222 |
| 45 | 222Ei | Western Knobs | 1 | 222 |
| 46 | 222Ej | Eastern Knobs Transition | 1 | 222 |
| 47 | 222Ek | Mitchell Karst Plains | 1 | 222 |
| 48 | 222En | Kinniconick and Licking Knobs | 1 | 222 |
| 49 | 222Eo | The Cliffs | 1 | 222 |
| 50 | 222Fa | Outer Bluegrass | 1 | 222 |
| 51 | 222Fb | Inner Bluegrass | 1 | 222 |
| 52 | 222Fc | Western Bluegrass | 1 | 222 |
| 53 | 222Fd | Northern Bluegrass | 1 | 222 |
| 54 | 222Ff | Scottsburg Lowland | 1 | 222 |
| 55 | 223Ab | Central Plateau | 2 | 222 |
| 56 | 223Ag | White River Hills | 2 | 222 |
| 57 | 223Ah | Elk River Hills | 2 | 222 |
| 58 | 223Am | Springfield Plain | 2 | 222 |
| 59 | 223An | Springfield Plateau | 2 | 222 |
| 60 | 223Bb | Brush Creek Hills | 2 | 222 |
| 61 | 223Bc | Mitchell Karst Plains | 2 | 222 |
| 62 | 223Bd | Western Knobs | 2 | 222 |
| 63 | 223Da | Interior Western Coalfields | 2 | 222 |
| 64 | 223Db | Lower Ohio-Cache-Wabash Alluvial Plains | 2 | 222 |
| 65 | 223Dc | Outer Western Coalfields | 2 | 222 |
| 66 | 223Dd | Marion Hills | 2 | 222 |
| 67 | 223De | Crawford Uplands | 2 | 222 |
| 68 | 223Dg | Southern Dripping Springs | 2 | 222 |
| 69 | 223Di | Lesser Shawnee Hills | 2 | 222 |
| 70 | 223Dj | Northern Dripping Springs | 2 | 222 |
| 71 | 223Ea | Eastern Highland Rim | 2 | 222 |
| 72 | 223Eb | Eastern Karst Plain | 2 | 222 |
| 73 | 223Ec | Outer Nashville Basin | 2 | 222 |
| 74 | 223Ed | Inner Nashville Basin | 2 | 222 |
| 75 | 223Ee | Highland Rim-Hilly and Rolling | 2 | 222 |
| 76 | 223Ef | Tennessee-Gasper Valley | 2 | 222 |
| 77 | 223Eg | Western Pennyroyal Karst Plain | 2 | 222 |
| 78 | 223Eh | Pennyroyal Karst Plain | 2 | 222 |
| 79 | 223Fa | Outer Bluegrass | 2 | 222 |
| 80 | 223Fb | Inner Bluegrass | 2 | 222 |
| 81 | 223Fc | Western Bluegrass | 2 | 222 |
| 82 | 223Fd | Northern Bluegrass | 2 | 222 |
| 83 | 223Ff | Scottsburg Lowland | 2 | 222 |
| 84 | 231Aa | Midland Plateau Central Uplands | 0 | 231T |
| 85 | 231Ab | Piedmont Ridge | 0 | 231T |
| 86 | 231Ac | Schist Plains | 0 | 231T |
| 87 | 231Ad | Lower Foot Hills | 0 | 231T |
| 88 | 231Ae | Charlotte Belt | 0 | 231T |
| 89 | 231Af | Carolina Slate | 0 | 231T |
| 90 | 231Ag | Schist Hills | 0 | 231T |
| 91 | 231Ah | Granite Hills | 0 | 231T |
| 92 | 231Ai | Opelika Plateau | 0 | 231T |
| 93 | 231Aj | Mica Rich Plateau | 0 | 231T |
| 94 | 231Ak | Lynchburg Belt | 1 | 231T |
| 95 | 231Al | Northern Piedmont | 1 | 231T |
| 96 | 231Am | Triassic Uplands | 1 | 231T |
| 97 | 231An | Western Coastal Plain-Piedmont Transition | 1 | 231T |
| 98 | 231Ao | Southern Triassic Uplands | 1 | 231T |
| 99 | 231Ap | Triassic Basins | 1 | 231T |
| 100 | 231Ba | Black Belt | 0 | 231L |
| 101 | 231Bb | Interior Flatwoods | 0 | 231L |
| 102 | 231Bc | Upper Clay Hills | 0 | 231L |
| 103 | 231Bd | Upper Loam Hills | 0 | 231L |
| 104 | 231Be | Transition Loam Hills | 0 | 231L |
| 105 | 231Bf | Floodplains and Terraces | 0 | 231L |
| 106 | 231Bg | Northern Loessial Hills | 1 | 231L |
| 107 | 231Bh | Deep Loess Hills and Bluffs | 1 | 231L |
| 108 | 231Bi | Deep Loess Plains | 1 | 231L |
| 109 | 231Bj | Jackson Hills | 0 | 231L |
| 110 | 231Bk | Northern or Southern Pontotoc Ridge | 0 | 231L |
| 111 | 231Bl | Jackson Prairie | 0 | 231L |
| 112 | 231Ca | Shale Hills and Mountain | 0 | 231T |
| 113 | 231Cb | Sandstone Plateau | 0 | 231T |
| 114 | 231Cc | Table Plateau | 0 | 231T |
| 115 | 231Cd | Sandstone Mountain | 0 | 231T |
| 116 | 231Ce | Moulton Valley | 0 | 231T |
| 117 | 231Cf | Southern Cumberland Valleys | 0 | 231T |
| 118 | 231Cg | Sequatchie Valley | 0 | 231T |
| 119 | 231Da | Chert Valley | 0 | 231T |
| 120 | 231Db | Sandstone-Shale and Chert Ridge | 0 | 231T |
| 121 | 231Dc | Sandstone Ridge | 0 | 231T |
| 122 | 231Dd | Quartzite and Talladega Slate Ridge | 0 | 231T |
| 123 | 231De | Shaley Limestone Valley | 0 | 231T |
| 124 | 231Ea | South Central Arkansas | 0 | 231L |
| 125 | 231Eb | Southwestern Arkansas | 0 | 231L |
| 126 | 231Ec | Ouachita Alluvial Valleys | 0 | 231L |
| 127 | 231Ed | Sabine Alluvial Valley | 1 | 231L |
| 128 | 231Ee | Southern Oklahoma Subsection | 0 | 231L |
| 129 | 231Ef | Piney Woods Transition | 0 | 231L |
| 130 | 231Eg | Sand Hills | 0 | 231L |
| 131 | 231Eh | Southern Loam Hills | 1 | 231L |
| 132 | 231Ei | Southwest Flatwoods | 1 | 231L |
| 133 | 231Ej | South Central Arkansas Flatwoods | 0 | 231L |
| 134 | 231Ek | Southwestern Arkansas Blackland Prairies | 0 | 231L |
| 135 | 231El | Trinity Alluvial Valley | 1 | 231L |
| 136 | 231Em | Red River Alluvial Plain | 1 | 231L |
| 137 | 231En | East Texas Timberlands-Cross Timbers | 1 | 231L |
| 138 | 231Eo | Red River Alluvial Plain | 2 | 231L |
| 139 | 231Fa | Gulf Coast Praries | 1 | 231L |
| 140 | 231Fb | Marshes and Inland Bays | 1 | 231L |
| 141 | 231Ga | Eastern Arkansas Valley and Ridges | 0 | 231L |
| 142 | 231Gb | Mount Magazine | 0 | 231L |
| 143 | 231Gc | Western Arkansas Valley and Ridges | 0 | 231L |
| 144 | 231Ha | Deep Loess Hills and Bluffs | 2 | 231L |
| 145 | 231Hb | Northern Loessial Hills | 2 | 231L |
| 146 | 231Hc | Deep Loess Plains | 2 | 231L |
| 147 | 231Hd | Clay Hills | 2 | 222 |
| 148 | 231He | Northern Deep Loess Hills and Bluffs | 2 | 222 |
| 149 | 231Hf | Ohio and Cache River Alluvial Plain | 2 | 222 |
| 150 | 231Hh | Southern Loessial Plains | 2 | 232 |
| 151 | 231Hi | Delmarva Upland | 2 | 232 |
| 152 | 231Ia | Midland Plateau Central Uplands-North | 2 | 231T |
| 153 | 231Ib | Lynchburg Belt | 2 | 231T |
| 154 | 231Ic | Charlotte Belt-North | 2 | 231T |
| 155 | 231Id | Carolina Slate-North | 2 | 231T |
| 156 | 231Ie | Southern Triassic Uplands | 2 | 231T |
| 157 | 231If | Western Coastal Plain-Piedmont Transition | 2 | 231T |
| 158 | 231Ig | Triassic Uplands | 2 | 231T |
| 159 | 232Ad | Western Chesapeake Uplands | 0 | 232 |
| 160 | 232Ba | Fragipan Loam Hills | 0 | 232 |
| 161 | 232Bb | Southern Loessial Plains | 1 | 232 |
| 162 | 232Bc | Cintronelle Plains | 0 | 232 |
| 163 | 232Bd | Southern Deep Loess Hills and Bluffs | 1 | 232 |
| 164 | 232Be | Florida Northern Highlands | 1 | 232 |
| 165 | 232Bf | Florida Central Highlands | 1 | 232 |
| 166 | 232Bg | South Coastal Plains | 0 | 232 |
| 167 | 232Bh | Gulf Southern Loam Hills | 0 | 232 |
| 168 | 232Bi | The Plains | 0 | 232 |
| 169 | 232Bj | Southern Loam Hills | 0 | 232 |
| 170 | 232Bk | Southern Clay Hills | 0 | 232 |
| 171 | 232Bl | Lower Loam and Clay Hills | 0 | 232 |
| 172 | 232Bm | Lower Clay Hills | 0 | 232 |
| 173 | 232Bn | Lower Loam Hills | 0 | 232 |
| 174 | 232Bo | Border Sand Hills | 0 | 232 |
| 175 | 232Bp | Wiregrass Plains | 0 | 232 |
| 176 | 232Bq | Sand Hills | 1 | 232 |
| 177 | 232Br | Atlantic Southern Loam Hills | 1 | 232 |
| 178 | 232Bs | Floodplains and Terraces | 0 | 232 |
| 179 | 232Bt | Delmarva Uplands | 1 | 232 |
| 180 | 232Bu | Southwestern Loam Hills | 1 | 232 |
| 181 | 232Bv | Northern Loam Plains | 1 | 232 |
| 182 | 232Bx | Eastern Chesapeake Lowland | 1 | 232 |
| 183 | 232Bz | Delmarva Outer Coastal Plain, Bays, and Islands | 1 | 232 |
| 184 | 232Ca | Upper Terraces | 0 | 232 |
| 185 | 232Cb | Lower Terraces | 0 | 232 |
| 186 | 232Cc | Okefenokee Uplands | 0 | 232 |
| 187 | 232Cd | Okefenokee Swamp | 0 | 232 |
| 188 | 232Ce | Coastal Marsh and Island | 0 | 232 |
| 189 | 232Cf | Bacon Terraces | 0 | 232 |
| 190 | 232Cg | Flatwoods Floodplains and Terraces | 0 | 232 |
| 191 | 232Ch | Tidal Area | 1 | 232 |
| 192 | 232Ci | Pamlico and Albemarle Sounds and Barrier Islands | 1 | 232 |
| 193 | 232Cj | Chesapeake Bay | 1 | 232 |
| 194 | 232Da | Immokalee Rise | 0 | 232 |
| 195 | 232Db | Gulf Coastal Lowlands | 0 | 232 |
| 196 | 232Dc | Gulf Coast Flatwoods-Bays and Barrier Islands | 1 | 232 |
| 197 | 232Dd | Mobile Bay, Sounds and Islands | 1 | 232 |
| 198 | 232De | Florida Gulf Coastal Bays and Islands | 1 | 232 |
| 199 | 232Ea | Gulf Coast Prairies | 0 | 232 |
| 200 | 232Eb | LA-TX Gulf Coast Marshes and Inland Bays | 0 | 232 |
| 201 | 232Ec | Lake Ponchartrain | 1 | 232 |
| 202 | 232Ed | Gulf Coast Bays and Islands | 1 | 232 |
| 203 | 232Ee | Lake Borgne, Sounds and Islands | 1 | 232 |
| 204 | 232Ef | LA Gulf Coast Marshes and Inland Bays | 2 | 232 |
| 205 | 232Fa | Southern Loam Hills | 0 | 232 |
| 206 | 232Fb | Southwest Flatwoods | 0 | 232 |
| 207 | 232Fc | Sabine Alluvial Valley | 0 | 232 |
| 208 | 232Fd | Neches Alluvial Valley | 1 | 232 |
| 209 | 232Fe | Piney Woods Transition | 0 | 232 |
| 210 | 232Ff | Red River Alluvial Plain | 2 | 234 |
| 211 | 232Ga | Eastern Beach and Lagoons | 0 | 232 |
| 212 | 232Gb | Eastern Beach and Dunes | 0 | 232 |
| 213 | 232Gc | Okeechobee Plain | 0 | 232 |
| 214 | 232Gd | Kissimmee River | 0 | 232 |
| 215 | 232Ha | Atlantic Southern Loam Hills | 2 | 232 |
| 216 | 232Hb | Eastern Chesapeake Lowland | 2 | 232 |
| 217 | 232Hc | Delmarva Outer Coastal Plain Bays and Islands | 2 | 232 |
| 218 | 232Ia | Lower Terraces | 2 | 232 |
| 219 | 232Ib | Tidal Area | 2 | 232 |
| 220 | 232Ja | Sand Hills | 2 | 232 |
| 221 | 232Jb | Northern Loam Plains | 2 | 232 |
| 222 | 232Jc | Southwestern Loam Hills | 2 | 232 |
| 223 | 232Jd | Lower Loam Hills | 2 | 232 |
| 224 | 232Je | Atlantic Southern Loam Hills | 2 | 232 |
| 225 | 232Jf | Gulf Southern Loam Hills | 2 | 232 |
| 226 | 232Jg | Floodplains and Terraces | 2 | 232 |
| 227 | 232Ka | Florida Northern Highlands | 2 | 232 |
| 228 | 232Kb | Florida Central Highlands | 2 | 232 |
| 229 | 232La | LA-MS Gulf Coast Flatwoods-Bays and Barrier Islands | 2 | 232 |
| 230 | 232Lb | GA-FL Gulf Coast Flatwoods-Bays and Barrier Islands | 2 | 232 |
| 231 | 232Lc | FL Gulf Coast Flatwoods-Bays and Barrier Islands | 2 | 232 |
| 232 | 234Aa | Southern Mississippi River Alluvial Plain | 0 | 234 |
| 233 | 234Ab | Crowleys Ridge | 1 | 234 |
| 234 | 234Ac | White and Black Rivers Alluvial Plain | 1 | 234 |
| 235 | 234Ad | Baton Rouge Terrace | 0 | 234 |
| 236 | 234Ae | Arkansas Grand Prairie | 1 | 234 |
| 237 | 234Af | Atchafalaya Alluvial Plain | 1 | 234 |
| 238 | 234Ag | Arkansas Alluvial Plain | 1 | 234 |
| 239 | 234Ah | Macon Ridge | 0 | 234 |
| 240 | 234Ai | Red River Alluvial Plain | 1 | 234 |
| 241 | 234Aj | Bastrop Ridge | 1 | 234 |
| 242 | 234Ak | Opelousas Ridge | 1 | 234 |
| 243 | 234Al | Teche Terrace | 1 | 234 |
| 244 | 234Am | St. Francis River Alluvial Plain | 1 | 234 |
| 245 | 234An | North Mississippi River Alluvial Plain | 1 | 234 |
| 246 | 234Ca | Red River Alluvial Plain | 2 | 234 |
| 247 | 234Cb | Atchafalaya Alluvial Plain | 2 | 234 |
| 248 | 234Cc | Teche Terrace | 2 | 234 |
| 249 | 234Cd | Opelousas Ridge | 2 | 234 |
| 250 | 234Da | North Mississippi River Alluvial Plain | 2 | 234 |
| 251 | 234Db | Crowley's Ridge | 2 | 234 |
| 252 | 234Dc | White and Black Rivers Alluvial Plain | 2 | 234 |
| 253 | 234Do | St. Francis River Alluvial Plain | 2 | 234 |
| 254 | 234Ea | Arkansas Alluvial Plain | 2 | 234 |
| 255 | 234Eb | Arkansas Grand Prairie | 2 | 234 |
| 256 | 234Ec | Bastrop Ridge | 2 | 234 |
| 257 | 251Ea | Scarped Osage Plains | 0 | 255 |
| 258 | 251Ec | Central Tallgrass | 1 | 255 |
| 259 | 251Ed | Elk Prairie | 1 | 255 |
| 260 | 251Fb | Eastern Flint Hills | 0 | 255 |
| 261 | 251Fc | Southern Flint Hills | 0 | 255 |
| 262 | 255Aa | Cross Timbers-Cherokee Prairies | 0 | 255 |
| 263 | 255Ab | Central Oklahoma Cross Timbers | 0 | 255 |
| 264 | 255Ac | Central Red Rolling Prairies | 0 | 255 |
| 265 | 255Ad | Southern Oklahoma Grand Prairies | 0 | 255 |
| 266 | 255Ae | Cross Timbers and Central Rolling Red Prairies | 0 | 255 |
| 267 | 255Af | Cross Timbers - Southern Oklahoma | 0 | 255 |
| 268 | 255Ag | Red River Alluvial Plain | 1 | 255 |
| 269 | 255Ah | Texas Eastern Cross Timbers | 1 | 255 |
| 270 | 255Ai | Texas Grand Prairie | 1 | 255 |
| 271 | 255Aj | Texas Western Cross Timbers | 1 | 255 |
| 272 | 255Ak | Southwestern Timbers | 1 | 255 |
| 273 | 255Am | Central Tall Grass Prairie | 2 | 255 |
| 274 | 255Ba | Blackland Prairie | 0 | 255 |
| 275 | 255Ca | Texas Claypan Savannah | 0 | 255 |
| 276 | 255Cc | Interior Savannah | 0 | 255 |
| 277 | 255Cd | Interior Blackland Prairie | 0 | 255 |
| 278 | 255Ce | Trinity Alluvial Valley | 0 | 255 |
| 279 | 255Cf | Blackland Prairie | 0 | 255 |
| 280 | 255Cg | Southern Texas Claypan Savannah | 0 | 255 |
| 281 | 255Ch | East Texas Timberlands-Cross Timbers | 2 | 231L |
| 282 | 255Da | Texas Coastal Prairies | 0 | 255 |
| 283 | 255Db | Brazos and Brazonia Alluvial Valley | 0 | 255 |
| 284 | 255Dc | Marshes-Inlands Bays-and Barrier Islands | 0 | 255 |
| 285 | 255Dd | Southern Texas Coastal Prarie and Savannah | 0 | 255 |
| 286 | 255Ea | Red River Alluvial Plain | 2 | 255 |
| 287 | 255Eb | Western Cross Timbers | 2 | 255 |
| 288 | 255Ec | Southwestern Cross Timbers | 2 | 255 |
| 289 | 255Ed | Texas Grand Prairie | 2 | 255 |
| 290 | 255Ee | Texas Eastern Cross Timbers | 2 | 255 |
| 291 | 411Aa | Lake Okeechobee | 1 | 411 |
| 292 | 411Ab | Everglades | 0 | 411 |
| 293 | 411Ac | Southern Slope | 0 | 411 |
| 294 | 411Ad | Atlantic Coastal Ridge | 0 | 411 |
| 295 | 411Ae | Coastal Lowlands-Tidal Marshes and Bays | 0 | 411 |
| 296 | 411Af | Big Cypress Spur | 0 | 411 |
| 297 | 411Ag | Florida Keys and Biscayne Bay | 1 | 411 |
| 298 | M221Aa | Ridge and Valley | 0 | M221 |
| 299 | M221Ab | Great Valley of Virginia | 0 | M221 |
| 300 | M221Ac | Northern Ridge and Valley | 2 | M221 |
| 301 | M221Ba | Northern High Allegheny Mountains | 0 | M221 |
| 302 | M221Bd | Eastern Allegheny Mountain and Valley | 0 | M221 |
| 303 | M221Be | Western Allegheny Mountain and Valley | 0 | M221 |
| 304 | M221Ca | Western Coal Fields | 0 | M221 |
| 305 | M221Cb | Eastern Coal Fields | 0 | M221 |
| 306 | M221Cc | Black Mountains | 0 | M221 |
| 307 | M221Cd | Southern Cumberland Mountains | 0 | M221 |
| 308 | M221Ce | Pine and Cumberland Mountains | 0 | M221 |
| 309 | M221Da | Northern Blue Ridge Mountains | 0 | M221 |
| 310 | M221Db | Central Blue Ridge Mountains | 0 | M221 |
| 311 | M221Dc | Southern Blue Ridge Mountains | 0 | M221 |
| 312 | M221Dd | Metasedimentary Mountains | 0 | M221 |
| 313 | M222Aa | The Boston Mountain | 1 | M222 |
| 314 | M222Ab | Boston Hills | 1 | M222 |
| 315 | M223Aa | Boston Mountains | 2 | M222 |
| 316 | M223Ab | Boston Hills | 2 | M222 |
| 317 | M231Aa | Fourche Mountains | 0 | M231 |
| 318 | M231Ab | West Central Ouachita Mountains | 0 | M231 |
| 319 | M231Ac | East Central Ouachita Mountains | 0 | M231 |
| 320 | M231Ad | Athens Piedmont Plateau | 0 | M231 |

1 - 0=both, 1= Keys and others (1995), 2 = Cleland and others 2007

**Table 11.1.2 Ecoregion categories in the SN variant.**

|  |  |
| --- | --- |
| **Ecoregion Category** | **Province Description (Keys and others 1995)** |
| M221 | Central Appalachian Broadleaf Forest - Coniferous Forest - Meadow |
| M222 | Ozark Broadleaf Forest Meadow |
| M231 | Ouachita Mixed Forest - Meadow |
| 221 | Eastern Broadleaf Forest (Oceanic) |
| 222 | Eastern Broadleaf Forest (Continental) |
| 231T | Southeastern Mixed Forest ( FVS Atlantic Piedmont) |
| 231L | Southeastern Mixed Forest (FVS Gulf Piedmont/Plains) |
| 232 | Outer Coastal Plain Mixed Forest |
| 234 | Lower Mississippi Riverine Forest |
| 255 | Prairie Parkland (Subtropical) |
| 411 | Everglades |

The U.S. Department of Agriculture (USDA) prohibits discrimination in all its programs and activities on the basis of race, color, national origin, sex, religion, age, disability, political beliefs, sexual orientation, or marital or family status. (Not all prohibited bases apply to all programs.) Persons with disabilities who require alternative means for communication of program information (Braille, large print, audiotape, etc.) should contact USDA’s TARGET Center at (202) 720-2600 (voice and TDD).

To file a complaint of discrimination, write USDA, Director, Office of Civil Rights, Room 326-W, Whitten Building, 1400 Independence Avenue, SW, Washington, DC 20250-9410 or call (202) 720-5964 (voice or TDD). USDA is an equal opportunity provider and employer.

1. For some species, a Dept. of Defense, Fort Bragg Military reservation code will use equations from Shaw and others (2006). [↑](#footnote-ref-2)