Western Sierra Nevada (WS) Variant Overview of the Forest Vegetation Simulator

September 2025

![](data:image/jpeg;base64...)

Mixed conifer Stand, Tahoe National Forest

(Rich Johnson, FS-R5)

Western Sierra Nevada (WS) Variant Overview of the Forest Vegetation Simulator

# Authors and Contributors:

The FVS staff has maintained model documentation for this variant in the form of a variant overview since its release in 1987. The original author was Gary Dixon. In 2008, the previous document was replaced with this updated variant overview. Gary Dixon, Christopher Dixon, Robert Havis, Chad Keyser, Stephanie Rebain, Erin Smith-Mateja, and Don Vandendriesche were involved with this update. Stephanie Rebain cross-checked information contained in this variant overview with the FVS source code. Gary Dixon expanded the species list and made significant updates to this variant overview in 2011. In 2021, Mark Castle fit and added model relationships for redwood.

FVS Staff. 2008 (revised September 23, 2025). Western Sierra Nevada (WS) Variant Overview – Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 89p.

Table of Contents

[Authors and Contributors: ii](#_Toc209542993)

[1.0 Introduction 1](#_Toc209542994)

[2.0 Geographic Range 2](#_Toc209542995)

[3.0 Control Variables 3](#_Toc209542996)

[3.1 Location Codes 3](#_Toc209542997)

[3.2 Species Codes 5](#_Toc209542998)

[3.3 Habitat Type, Plant Association, and Ecological Unit Codes 7](#_Toc209542999)

[3.4 Site Index 7](#_Toc209543000)

[3.4.1 Region 5 Site Class 8](#_Toc209543001)

[3.5 Maximum Density 10](#_Toc209543002)

[4.0 Growth Relationships 13](#_Toc209543003)

[4.1 Height-Diameter Relationships 13](#_Toc209543004)

[4.2 Bark Ratio Relationships 16](#_Toc209543005)

[4.3 Crown Ratio Relationships 18](#_Toc209543006)

[4.3.1 Crown Ratio Dubbing 18](#_Toc209543007)

[4.3.2 Crown Ratio Change 22](#_Toc209543008)

[4.3.3 Crown Ratio for Newly Established Trees 22](#_Toc209543009)

[4.4 Crown Width Relationships 23](#_Toc209543010)

[4.4.1 Region 5 Crown Width 23](#_Toc209543011)

[4.5 Crown Competition Factor 25](#_Toc209543012)

[4.6 Small Tree Growth Relationships 27](#_Toc209543013)

[4.6.1 Small Tree Height Growth 27](#_Toc209543014)

[4.6.2 Small Tree Diameter Growth 31](#_Toc209543015)

[4.7 Large Tree Growth Relationships 32](#_Toc209543016)

[4.7.1 Large Tree Diameter Growth 32](#_Toc209543017)

[4.7.2 Large Tree Height Growth 40](#_Toc209543018)

[5.0 Mortality Model 47](#_Toc209543019)

[6.0 Regeneration 51](#_Toc209543020)

[7.0 Volume 55](#_Toc209543021)

[8.0 Fire and Fuels Extension (FFE-FVS) 58](#_Toc209543022)

[9.0 Insect and Disease Extensions 59](#_Toc209543023)

[10.0 Literature Cited 60](#_Toc209543024)

[11.0 Appendices 65](#_Toc209543025)

[11.1 Appendix A. Distribution of Data Samples 65](#_Toc209543026)

[11.2 Appendix B: Plant Association Codes 65](#_Toc209543027)

Quick Guide to Default Settings

|  |  |  |
| --- | --- | --- |
| **Parameter or Attribute** | **Default Setting** | |
| Number of Projection Cycles | 1 (10 if using FVS GUI) | |
| Projection Cycle Length | 10 years | |
| Location Code (National Forest) | 517 – Tahoe National Forest | |
| Plant Association Code | 0 (Unknown) | |
| Slope | 5 percent | |
| Aspect | 0 (no meaningful aspect) | |
| Elevation | 45 (4500 feet) | |
| Latitude / Longitude | Latitude | Longitude |
| All location codes | 39 | 120 |
| Site Species | PP | |
| Site Index | 100 | |
| Maximum Stand Density Index | Species specific | |
| Maximum Basal Area | Based on maximum stand density index | |
| Volume Equations | National Volume Estimator Library | |
| Merchantable Cubic Foot Volume Specifications: | | |
| Minimum DBH / Top Diameter | Hardwoods | Softwoods |
| Region 5 | 7.0 / 4.5 inches | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| Merchantable Board Foot Volume Specifications: | | |
| Minimum DBH / Top Diameter | Hardwoods | Softwoods |
| Region 5 | 10.0 / 6.0 inches | 10.0 / 6.0 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| Sampling Design: | | |
| Large Trees (variable radius plot) | 40 BAF | |
| Small Trees (fixed radius plot) | 1/300th Acre | |
| Breakpoint DBH | 5.0 inches | |

# 1.0 Introduction

The Forest Vegetation Simulator (FVS) is an individual tree, distance independent growth and yield model with linkable modules called extensions, which simulate various insect and pathogen impacts, fire effects, fuel loading, snag dynamics, and development of understory tree vegetation. FVS can simulate a wide variety of forest types, stand structures, and pure or mixed species stands.

New “variants” of the FVS model are created by imbedding new tree growth, mortality, and volume equations for a particular geographic area into the FVS framework. Geographic variants of FVS have been developed for most of the forested lands in the United States.

The Western Sierra Nevada (WS) variant was developed in 1987 covering the mixed-conifer forest type in California and extreme western Nevada. Data used to fit the model included Forest Service forest inventories and stand examinations, and PSW research study plots throughout the area. Leroy Dolph from the PSW Research Station fit some of the model relationships along with the FMSC staff.

Since the variant’s development in 1987, some of the functions have been adjusted and improved as more data has become available, and as model technology has advanced. In 2011, this variant was expanded from 11 species to 43 species. The two species groupings, black oak / other hardwood and tanoak / giant chinquapin, were split into individual species and 30 new species were added. For the newly added species, equations for sugar pine were used for western white pine and mountain hemlock; Douglas-fir equations were used for bigcone Douglas-fir; white fir equations were used for Pacific silver fir; black oak / other hardwood equations were used for California live oak, canyon live oak, blue oak, Valley oak, interior live oak, and bigleaf maple; ponderosa pine equations were used for Monterey pine; tanoak / giant chinquapin equations were used for quaking aspen, California laurel, Pacific madrone, and Pacific dogwood; lodgepole pine equations from the Inland California and Southern Cascades (CA) variant were used for lodgepole pine and whitebark pine; knobcone pine equations from the CA variant were used for singleleaf pinyon, knobcone pine, foxtail pine, Coulter pine, limber pine, California foothill pine, Washoe pine, western juniper, Utah juniper, and California juniper; curl-leaf mountain mahogany equations from the South Central Oregon and Northeast California (SO) variant were used for curl-leaf mountain mahogany; and bristlecone pine equations from the Central Rockies (CR) variant were used for Great Basin bristlecone pine. In 2021, Mark Castle fit and added model relationships for redwood.

To fully understand how to use this variant, users should also consult the following publication:

* Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002)

This publication may be downloaded from the Forest Management Service Center (FMSC), Forest Service website. Other FVS publications may be needed if one is using an extension that simulates the effects of fire, insects, or diseases.

# 2.0 Geographic Range

The WS variant was fit to data representing the mixed-conifer forest type in California and extreme western Nevada. Data used in initial model development came from Forest Service forest inventories and stand examinations, and PSW research study plots throughout the area. Distribution of data samples for species fit from this data are shown in Appendix A.

The WS variant covers forest areas in eastern California and western Nevada. The suggested geographic range of use for the WS variant is shown in figure 2.0.1.

![Picture of the suggested geographic range of the WS variant of FVS.](data:image/jpeg;base64...)**Figure 2.0.1 Suggested geographic range of use for the WS variant.**

Within USFS Region 5, the following forests and districts should use the WS variant: all districts of the Plumas NF, San Bernardino NF, Sequoia NF, Sierra NF, Stanislaus NF, Tahoe NF, and Toiyabe NF (Warbington 2004, based on Spreadsheet provided by Ralph Warbington, R5 Ecosystem Planning Staff, Remote Sensing Lab, http://www.fs.fed.us/r5/rsl/).

# 3.0 Control Variables

FVS users need to specify certain variables used by the WS variant to control a simulation. These are entered in parameter fields on various FVS keywords available in the FVS interface or they are read from an FVS input database using the Database Extension.

## 3.1 Location Codes

The location code is a 3- or 4-digit code where, in general, the first digit of the code represents the Forest Service Region Number, and the last two digits represent the Forest Number within that region. In the WS variant, a 5-digit code may be entered where the last two digits represent the District Number. In some cases, a location code beginning with a “7” or “8” is used to indicate an administrative boundary that doesn’t use a Forest Service Region number (for example, other federal agencies, state agencies, or other lands).

The default value for latitude, which is used as a growth predictor variable, is set by Forest Service Forest and District codes. If the District code is not entered, a default is set by Forest. If the location code is missing or incorrect in the WS variant, a default forest code of 517 (Tahoe National Forest) will be used. Location codes recognized in the WS variant are shown in tables 3.1.1. and 3.1.2.

**Table 3.1.1 Location codes used in the WS variant.**

| **USFS National Forest** | **Forest Code** | **District** | **District Code** | **Latitude** |
| --- | --- | --- | --- | --- |
| Eldorado | 503 | Not Specified | -- | 38 |
| Amador | 51 | 38 |
| Georgetown | 53 | 39 |
| Pacific | 55 | 38 |
| Placerville | 56 | 38 |
| Plumas | 511 | Not Specified | -- | 39 |
| Beckworth | 01 | 40 |
| Greenville | 52 | 40 |
| La Porte | 53 | 39 |
| Oroville | 54 | 39 |
| Milford | 55 | 39 |
| Quincy | 56 | 39 |
| Sequoia | 513 | Not Specified | -- | 35 |
| Hume Lake | 51 | 36 |
| Western Divide | 52 | 36 |
| Hot Springs | 53 | 35 |
| Green Horn | 54 | 35 |
| Cannell Meadows | 56 | 35 |
| Sierra | 515 | Not Specified | -- | 37 |
| Mariposa | 51 | 37 |
| Pineridge | 53 | 37 |
| Kings River | 54 | 36 |
| Minarets | 55 | 37 |
| Bass Lake | 57 | 37 |
| Stanislaus | 516 | Not Specified | -- | 38 |
| Mi-Wok | 51 | 38 |
| Calaveras | 52 | 38 |
| Summit | 53 | 38 |
| Groveland | 54 | 37 |
| Tahoe | 517 | Not Specified | -- | 39 |
| Yuba River | 53 | 39 |
| American River | 54 | 39 |
| Nevada City | 55 | 39 |
| Sierraville | 56 | 39 |
| Truckee | 57 | 39 |
| Toiyabe (mapped to 516) | 417 | All | -- | 38 |
| Angeles (mapped to 513) | 501 | All | -- | 35 |
| Cleveland (mapped to 513) | 502 | All | -- | 35 |
| Inyo (mapped to 513) | 504 | All | -- | 35 |
| Los Padres (mapped to 513) | 507 | All | -- | 35 |
| San Bernadino (mapped to 513) | 512 | All | -- | 35 |
| Lake Tahoe Basin Management Unit (mapped to 503) | 519 | All | -- | 38 |

**Table 3.1.2 Bureau of Indian Affairs reservation codes used in the WS variant.**

| **Location Code** | **Location** |
| --- | --- |
| 7712 | Pyramid Lake Paiute Reservation (mapped to 417) |
| 7713 | Reno-Sparks Indian Colony (mapped to 417) |
| 7715 | Walker River Reservation (mapped to 417) |
| 7801 | Berry Creek Rancheria (mapped to 511) |
| 7808 | Enterprise Rancheria (mapped to 511) |
| 7814 | Fort Independence Reservation (mapped to 504) |
| 7817 | North Fork Off-Reservation Tl (mapped to 515) |
| 7825 | Bishop Reservation (mapped to 504) |
| 7827 | Tule River Reservation (mapped to 513) |
| 7828 | Lone Pine Reservation (mapped to 504) |
| 7832 | Tuolumne Rancheria (mapped to 516) |
| 7835 | Timbi-Sha Shoshone Reservation (mapped to 504) |
| 7847 | Agua Caliente Indian Reservation (mapped to 512) |
| 7849 | Cahuilla Reservation (mapped to 512) |
| 7850 | Campo Indian Reservation (mapped to 502) |
| 7851 | Capitan Grande Reservation (mapped to 502) |
| 7852 | Barona Reservation (mapped to 502) |
| 7853 | Ewiiaapaayp Reservation (mapped to 502) |
| 7854 | Inaja And Cosmit Reservation (mapped to 502) |
| 7855 | La Jolla Reservation (mapped to 502) |
| 7856 | Los Coyotes Reservation (mapped to 502) |
| 7857 | Manzanita Reservation (mapped to 502) |
| 7858 | Mesa Grande Reservation (mapped to 502) |
| 7859 | Morongo Reservation (mapped to 512) |
| 7860 | Pala Reservation (mapped to 502) |
| 7861 | Pauma And Yuima Reservation (mapped to 502) |
| 7862 | Pechanga Reservation (mapped to 502) |
| 7863 | Santa Rosa Rancheria (mapped to 512) |
| 7865 | Santa Ysabel Reservation (mapped to 502) |
| 7866 | Soboba Reservation (mapped to 512) |
| 7867 | Viejas Reservation (mapped to 502) |

## 3.2 Species Codes

The WS variant recognizes 41 species, plus two other composite species categories. You may use FVS species codes, Forest Inventory and Analysis (FIA) species codes, or USDA Natural Resources Conservation Service PLANTS symbols to represent these species in FVS input data. Any valid western species code identifying species not recognized by the variant will be mapped to a similar species in the variant. The species mapping crosswalk is available on the FVS website variant documentation webpage. Any non-valid species code will default to the “other hardwood” category.

Either the FVS sequence number or species code must be used to specify a species in FVS keywords and Event Monitor functions. FIA codes or PLANTS symbols are only recognized during data input and may not be used in FVS keywords. Table 3.2.1 shows the complete list of species codes recognized by the WS variant.

When entering tree data, users should substitute diameter at root collar (DRC) for diameter at breast height (DBH) for woodland species (singleleaf pinyon and the junipers).

**Table 3.2.1 Species codes used in the WS variant.**

| **Species Number** | **Species Code** | **FIA Code** | **PLANTS Symbol** | **Scientific Name1** | **Common Name1** |
| --- | --- | --- | --- | --- | --- |
| 1 | SP | 117 | PILA | *Pinus lambertiana* | sugar pine |
| 2 | DF | 202 | PSME | *Pseudotsuga menziesii* | Douglas-fir |
| 3 | WF | 015 | ABCO | *Abies concolor* | white fir |
| 4 | GS | 212 | SEGI2 | *Sequoiadendron giganteum* | giant sequoia |
| 5 | IC | 081 | CADE27 | *Calocedrus decurrens* | incense cedar |
| 6 | JP | 116 | PIJE | *Pinus Jeffreyi* | Jeffrey pine |
| 7 | RF | 020 | ABMA | *Abies magnifica* | California red fir |
| 8 | PP | 122 | PIPO | *Pinus ponderosa* | ponderosa pine |
| 9 | LP | 108 | PICO | *Pinus contorta* | lodgepole pine |
| 10 | WB | 101 | PIAL | *Pinus albicaulis* | whitebark pine |
| 11 | WP | 119 | PIMO3 | *Pinus monticola* | western white pine |
| 12 | PM | 133 | PIMO | *Pinus monophylla* | singleleaf pinyon |
| 13 | SF | 011 | ABAM | *Abies amabilis* | Pacific silver fir |
| 14 | KP | 103 | PIAT | *Pinus attenuate* | knobcone pine |
| 15 | FP | 104 | PIBA | *Pinus balfouriana* | foxtail pine |
| 16 | CP | 109 | PICO3 | *Pinus coulteri* | Coulter pine |
| 17 | LM | 113 | PIFL2 | *Pinus flexilis* | limber pine |
| 18 | MP | 124 | PIRA2 | *Pinus radiata* | Monterey pine |
| 19 | GP | 127 | PISA2 | *Pinus sabiniana* | California foothill pine |
| 20 | WE | 137 | PIWA | *Pinus washoensis* | Washoe pine |
| 21 | GB | 142 | PILO | *Pinus longaeva* | Great Basin bristlecone pine |
| 22 | BD | 201 | PSMA | *Pseudotsuga macrocarpa* | bigcone Douglas-fir |
| 23 | RW | 211 | SESE3 | *Sequoia sempervirens* | redwood |
| 24 | MH | 264 | TSME | *Tsuga mertensiana* | mountain hemlock |
| 25 | WJ | 064 | JUOC | *Juniperus occidentalis* | western juniper |
| 26 | UJ | 065 | JUOS | *Juniperus osteosperma* | Utah juniper |
| 27 | CJ | 062 | JUCA7 | *Juniperus californica* | California juniper |
| 28 | LO | 801 | QUAG | *Quercus agrifolia* | California live oak |
| 29 | CY | 805 | QUCH2 | *Quercus chrysolepsis* | canyon live oak |
| 30 | BL | 807 | QUDO | *Quercus douglasii* | blue oak |
| 31 | BO | 818 | QUKE | *Quercus kelloggii* | California black oak |
| 32 | VO | 821 | QULO | *Quercus lobata* | valley oak |
| 33 | IO | 839 | QUWI2 | *Quercus wislizeni* | interior live oak |
| 34 | TO | 631 | LIDE3 | *Lithocarpus densiflorus* | tanoak |
| 35 | GC | 431 | CHCHC4 | *Chrysolepis chrysophylla* var. *chrysophylla* | giant chinquapin |
| 36 | AS | 746 | POTR5 | *Populus tremuloides* | quaking aspen |
| 37 | CL | 981 | UMCA | *Umbellularia californica* | California laurel |
| 38 | MA | 361 | ARME | *Arbutus menziesii* | Pacific madrone |
| 39 | DG | 492 | CONU4 | *Cornus nuttallii* | Pacific dogwood |
| 40 | BM | 312 | ACMA3 | *Acer macrophyllum* | bigleaf maple |
| 41 | MC | 475 | CELE3 | *Cercocarpus ledifolius* | curl-leaf mountain mahogany |
| 42 | OS | 299 | 2TN |  | other softwood2 |
| 43 | OH | 998 | 2TB |  | other hardwood2 |

1Set based on the USDA Forest Service NRM TAXA lists and the USDA Plants database.

2Other categories use FIA codes and NRM TAXA codes that best match the other category.

## 3.3 Habitat Type, Plant Association, and Ecological Unit Codes

In the WS variant, plant association codes are only used in the Fire and Fuels Extension (FFE) to set fuel loading in cases where there are no live trees in the first cycle. Plant association codes recognized in the WS variant are shown in Appendix B. If an incorrect plant association code is entered or no code is entered, FVS will use the default plant association code, which is 0 (unknown). Users may enter the plant association code or the plant association FVS sequence number on the STDINFO keyword, when entering stand information from a database, or when using the SETSITE keyword without the PARMS option. If using the PARMS option with the SETSITE keyword, users must use the FVS sequence number for the plant association.

## 3.4 Site Index

Site index is used in some of the growth equations in the WS variant. Users should always use the same site curves that FVS uses as shown in table 3.4.1. If site index is available, a single site index for the whole stand can be entered, a site index for each individual species in the stand can be entered, or a combination of these can be entered. A site index value must be greater than or equal to 8, otherwise the value is considered a R5 site class code, see section 3.4.1. If site index is missing or incorrect, the site species is set to ponderosa pine with a default site index set to 100.

**Table 3.4.1 Site index reference curves for species in the WS variant.**

| **Species Code** | **Reference** | **BHA or TTA\*** | **Base Age** |
| --- | --- | --- | --- |
| SP, DF, WF, IC, JP, PP, WP, PM, SF, MP, BD, RW, MH, OS | Dunning (1942); Dunning and Reineke (1933) | TTA | 50 |
| LO, CY, BL, BO, VO, IO, TO, GC, AS, CL, MA, DG, BM, OH | Powers (1972) | BHA | 50 |
| LP, WB, KP, FP, CP, LM, GP, WE, WJ, UJ, CJ | Dunning (1942); Dunning and Reineke (1933) | TTA | 50 |
| RF | Dolph (1991) | BHA | 50 |
| MC | Curtis, Herman, Francis, and Demars (1974) | BHA | 100 |
| GB | Alexander (1967) | TTA | 100 |
| RW, GS | Krumland and Eng (2005)\*\* | BHA | 50 |
| \* Equation is based on total tree age (TTA) or breast height age (BHA)  \*\* Equation form is presented on page 34 and coefficients are provided on page 68 | | | |

For all species except Great Basin bristlecone pine and curl-leaf mountain mahogany, default site indices for species not assigned a site index are determined based on the site index of the site species (height at base age) with an adjustment for the reference age differences between the site species and the target species.

Site index values can be entered directly using the sources listed above or as a Region 5 site class as described in section 3.4.1. Default values for all species except Great Basin bristlecone pine and mountain-mahogany are then assigned as described above or in section 3.4.1. Default values for Great Basin bristlecone pine and mountain-mahogany are assigned based on the ratio of the California red fir site index to its’ potential site index range and the potential site index ranges of GB and MC. Potential site index ranges for this calculation are limited to10-134 for RF, 20-60 for Great Basin bristlecone pine, and 5-23 for mountain-mahogany. Equation {3.4.1} is used to assign the default site index for Great Basin bristlecone pine and equation {3.4.2} is used for mountain-mahogany.

{3.4.1} *SIgb =* 20 + (((*SIrf*-10) / (134 – 10))\*(60 – 20))

{3.4.2} *SImc =* 5 + (((*SIrf*-10) / (134 – 10))\*(23 – 5))

where:

*SIgb* is the estimated default site index for Great Basin bristlecone pine

*SImc* is the estimated default site index for curl-leaf mountain mahogany

*SIrf*is the site index for California red fir

### 3.4.1 Region 5 Site Class

In Region 5 forests, the site index values can either be entered directly or based on the Region 5 site class (0-7) as shown in table 3.4.1.1. Site class codes of 0-5 were adapted for Region 5 by Jack Levitan from Duncan Dunning's site index curves (Dunning 1942, Dunning & Reineke 1933).

If a Region 5 site class is entered, it is converted to a site index for each species within the model using a two-step process. First, the Region 5 site class is converted to a 50-year site index as shown in table 3.4.1.1 (personal communication with Ralph Warbington in March 2008).

**Table 3.4.1.1 Region 5 site class values converted into 50-year site index in the WS variant.**

| **REGION 5 SITE CLASS** | **(BREAST HT AGE)**  **50-YEAR SITE INDEX** |
| --- | --- |
| 0 | 106 |
| 1 | 90 |
| 2 | 75 |
| 3 | 56 |
| 4 | 49 |
| 5 | 39 |
| 6 | 31 |
| 7 | 23 |

Second, site index for an individual species is determined by multiplying the 50-year site index by a species-specific adjustment factor which is shown in table 3.4.1.2.

**Table 3.4.1.2 Region 5 adjustment factors for 50-year site index values in the WS variant.**

| **Species Code** | **Adjustment Factor** |
| --- | --- |
| SP | 0.90 |
| DF | 1.00 |
| WF | 1.00 |
| GS | 1.00 |
| IC | 0.76 |
| JP | 1.00 |
| RF | 1.00 |
| PP | 1.00 |
| LP | 0.90 |
| WB | 0.90 |
| WP | 0.90 |
| PM | 1.00 |
| SF | 1.00 |
| KP | 0.90 |
| FP | 0.90 |
| CP | 0.90 |
| LM | 0.90 |
| MP | 1.00 |
| GP | 0.90 |
| WE | 0.90 |
| GB | 0\* |
| BD | 1.00 |
| RW | 1.00 |
| MH | 0.90 |
| WJ | 0.90 |
| UJ | 0.90 |
| CJ | 0.90 |
| LO | 0.60 |
| CY | 0.45 |
| BL | 0.45 |
| BO | 1.00 |
| VO | 0.60 |
| IO | 0.50 |
| TO | 0.60 |
| GC | 0.50 |
| AS | 0.75 |
| CL | 0.55 |
| MA | 0.60 |
| DG | 0.50 |
| BM | 0.50 |
| MC | 0\* |
| OS | 0.90 |
| OH | 0.57 |

## 3.5 Maximum Density

Maximum stand density index (SDI) and maximum basal area (BA) are important variables in determining density related mortality and crown ratio change. Maximum basal area is a stand level metric that can be set using the BAMAX or SETSITE keywords. If not set by the user, a default value is calculated from maximum stand SDI each projection cycle. Maximum stand density index can be set for each species using the SDIMAX or SETSITE keywords. If not set by the user, a default value is assigned as discussed below.

The default maximum SDI is set by species or a user specified basal area maximum. If a user specified basal area maximum is present, the maximum SDI for all species is computed using equation {3.5.1}; otherwise, species SDI maximums are assigned from the SDI maximums shown in table 3.5.1. Maximum stand density index at the stand level is a weighted average, by basal area, of the individual species SDI maximums.

Stand SDI is calculated using the Zeide calculation method (Dixon 2002).

{3.5.1} *SDIMAXi* = *BAMAX* / (0.5454154 \* *SDIU)*

where:

*SDIMAXi* is species-specific SDI maximum

*BAMAX* is the user-specified stand basal area maximum

*SDIU* is theproportion of theoretical maximum density at which the stand reaches actual maximum density (default 0.85, changed with the SDIMAX keyword)

**Table 3.5.1 Stand density index maximums by species in the WS variant.**

| **Species Code** | **SDI Max** | **Source\*** | **Mapped to** |
| --- | --- | --- | --- |
| SP | 561 | Shaw |  |
| DF | 570 | Shaw |  |
| WF | 800 | PSW |  |
| GS | 1052 | Shaw |  |
| IC | 576 | Shaw |  |
| JP | 365 | PSW |  |
| RF | 1000 | PSW |  |
| PP | 365 | PSW |  |
| LP | 679 | Shaw |  |
| WB | 621 | Shaw |  |
| WP | 272 | Shaw |  |
| PM | 358 | Shaw |  |
| SF | 790 | Shaw |  |
| KP | 679 | Shaw | lodgepole pine |
| FP | 409 | Shaw | limber pine |
| CP | 365 | PSW | Jeffrey pine |
| LM | 409 | Shaw |  |
| MP | 365 | PSW | ponderosa pine |
| GP | 214 | Shaw | blue oak |
| WE | 365 | PSW | Jeffrey pine |
| GB | 409 | Shaw | limber pine |
| BD | 570 | Shaw | Douglas-fir |
| RW | 1052 | Shaw |  |
| MH | 687 | Shaw |  |
| WJ | 272 | Shaw |  |
| UJ | 497 | Shaw |  |
| CJ | 272 | Shaw | western juniper |
| LO | 667 | Shaw | canyon live oak |
| CY | 667 | Shaw |  |
| BL | 214 | Shaw |  |
| BO | 406 | Shaw |  |
| VO | 440 | Shaw | Oregon white oak |
| IO | 667 | Shaw | canyon live oak |
| TO | 785 | Shaw |  |
| GC | 785 | Shaw | tanoak |
| AS | 562 | Shaw |  |
| CL | 406 | Shaw | California black oak |
| MA | 515 | Shaw |  |
| DG | 406 | Shaw | California black oak |
| BM | 629 | Shaw |  |
| MC | 501 | Shaw |  |
| OS | 365 | PSW | Jeffrey pine |
| OH | 406 | Shaw | California black oak |

\*Sources include an unpublished analysis of FIA data by John Shaw (Shaw) and a review of current data/literature by Pacific Southwest Research Station (PSW).

# 4.0 Growth Relationships

This chapter describes the functional relationships used to fill in missing tree data and calculate incremental growth. In FVS, trees are grown in either the small tree sub-model or the large tree sub-model depending on the diameter.

## 4.1 Height-Diameter Relationships

Height-diameter relationships in FVS are primarily used to estimate tree heights missing in the input data, and occasionally to estimate diameter growth on trees smaller than a given threshold diameter. In the WS variant, the method used to dub in heights depends on species, tree diameter, and whether or not calibration of the height-diameter relationship to the input data has occurred. By default, the WS variant will use the Wykoff logistic form as shown in equation {4.1.1} (Wykoff, et.al 1982), an alternate dubbing function based on the location code as shown in equation {4.1.2}, or the Curtis-Arney functional form as shown in equation {4.1.3} (Curtis 1967, Arney 1985). Coefficients (B1, B2) for equation {4.1.1} are shown in Table {4.1.1}. Coefficients (a, b, c) for equation {4.1.2} are shown in Table {4.1.2}. Coefficients for equation {4.1.3} are shown in Table {4.1.3}.

For sugar pine, Douglas-fir, white fir, incense cedar, Jeffrey pine, California red fir, ponderosa pine, western white pine, Monterey pine, bigcone Douglas-fir, mountain hemlock, and other softwood: If calibration of the height-diameter relationship does not occur, then equation {4.1.1} is used for trees with a diameter of 3.0 inches or less, and equation {4.1.2} is used for trees with a diameter larger than 3.0 inches. If calibration of the height-diameter relationship does occur, then equation {4.1.1} is used for trees of all sizes. Estimated heights for incense cedar are modified using equation {4.1.5}.

For Pacific silver fir, Great Basin bristlecone pine, California live oak, canyon live oak, blue oak, California black oak, valley oak, interior live oak, tanoak, giant chinquapin, quaking aspen, California laurel, Pacific madrone, Pacific dogwood, bigleaf maple, and other hardwood: equation {4.1.1} is used for all trees regardless of whether calibration of the height-diameter relationship has occurred or not.

For giant sequoia, lodgepole pine, whitebark pine, singleleaf pinyon, knobcone pine, foxtail pine, Coulter pine, limber pine, California foothill pine, Washoe pine, redwood, western juniper, Utah juniper, and California juniper: If calibration of the height-diameter relationship does not occur, then equation {4.1.3} is used. If calibration of the height-diameter relationship does occur, then equation {4.1.1} is used.

For curl-leaf mountain mahogany: If calibration of the height-diameter relationship does not occur then equation {4.1.3} is used. If calibration of the height-diameter relationship does occur, then trees with a diameter less than 5.0 inches use equation {4.1.3} and trees with a diameter of 5.0 inches or larger use equation {4.1.1}

If the input data contains at least three measured heights for a species, then FVS can calibrate the Wykoff height-diameter function and recalculate the value of B1 in equation {4.1.1} from the input data. The calculated value, specific to the stand, replaces the default value shown in table 4.1.1. In the event that the calculated value is less than zero, the default is used. For lodgepole pine, whitebark pine, singleleaf pinyon, knobcone pine, foxtail pine, Coulter pine, limber pine, California foothill pine, Washoe pine, western juniper, Utah juniper, and California juniper calibration of the height-diameter relationship does not happen by default but it can be turned on using the NOHTDREG keyword by entering “1” in field 2. For all other species, calibration of the height-diameter relationship is turned on by default.

{4.1.1} Wykoff height-diameter relationship:

HT = 4.5 + exp(B1 + B2 / (*DBH* + 1.0))

{4.1.2} R5 forest-level height-diameter relationship:

*HT* = a + b \* *DBH*^0.5 + c \* *DBH*^0.5 \* (6.0 – *SC*)^0.5

{4.1.3} Curtis-Arney height-diameter relationship:

DBH <u>></u> *Z*: HT = 4.5 + P2 \* exp(-P3 \* DBH^P4)

*DBH* < *Z*: *HT* = ((4.5 + P2 \* exp(-P3 \* *Z*^P4) – 4.51) \* (*DBH* – 0.3) / (Z – 0.3)) + 4.51

{4.1.4} Height-diameter relationship for curl-leaf mountain mahogany with DBH < 5.0”

*HT* = 0.0994 + 4.9767 \* *DBH*

{4.1.5} Adjustment made for incense cedar

*HT* = *HT* \* 0.76

where:

*HT* is tree height

*DBH* is tree diameter at breast height

*SC* is the region 5 site class (as described in section 3.4)

B1 - B2 are species-specific coefficients shown in table 4.1.1

a, b, c are location-specific coefficients shown in table 4.1.2

*Z* is the DBH value shown in table 4.1.3

P2 - P4 are species-specific coefficients shown in table 4.1.3

**Table 4.1.1 Coefficients for the logistic Wykoff equation {4.1.1} in the WS variant.**

| **Species Code** | **Default B1** | **B2** |
| --- | --- | --- |
| SP | 4.86039 | -9.32795 |
| DF | 4.86039 | -9.32795 |
| WF | 4.86039 | -9.32795 |
| GS | 5.3401 | -15.9354 |
| IC | 4.86039 | -9.32795 |
| JP | 4.86039 | -9.32795 |
| RF | 4.86039 | -9.32795 |
| PP | 4.86039 | -9.32795 |
| LP | 4.8358 | -9.2077 |
| WB | 4.8358 | -9.2077 |
| WP | 4.86039 | -9.32795 |
| PM | 4.6843 | -6.5516 |
| SF | 4.86039 | -9.32795 |
| KP | 4.6843 | -6.5516 |
| FP | 4.6843 | -6.5516 |
| CP | 4.6843 | -6.5516 |
| LM | 4.6843 | -6.5516 |
| MP | 4.86039 | -9.32795 |
| GP | 4.6843 | -6.5516 |
| WE | 4.6843 | -6.5516 |
| GB | 4.1920 | -5.1651 |
| BD | 4.86039 | -9.32795 |
| RW | 5.3401 | -15.9354 |
| MH | 4.86039 | -9.32795 |
| WJ | 4.6843 | -6.5516 |
| UJ | 4.6843 | -6.5516 |
| CJ | 4.6843 | -6.5516 |
| LO | 4.80420 | -9.92422 |
| CY | 4.80420 | -9.92422 |
| BL | 4.80420 | -9.92422 |
| BO | 4.80420 | -9.92422 |
| VO | 4.80420 | -9.92422 |
| IO | 4.80420 | -9.92422 |
| TO | 4.80420 | -9.92422 |
| GC | 4.80420 | -9.92422 |
| AS | 4.80420 | -9.92422 |
| CL | 4.80420 | -9.92422 |
| MA | 4.80420 | -9.92422 |
| DG | 4.80420 | -9.92422 |
| BM | 4.80420 | -9.92422 |
| MC | 5.1520 | -13.5760 |
| OS | 4.86039 | -9.32795 |
| OH | 4.80420 | -9.92422 |

**Table 4.1.2 Coefficients for the height-diameter equation {4.1.2} in the WS variant.**

| **Location Code** | **USFS National Forest** | **a** | **b** | **c** |
| --- | --- | --- | --- | --- |
| 503 | Eldorado | -17.7893 | 8.4685 | 7.6272 |
| 511 | Plumas | -17.2775 | 10.4642 | 6.2137 |
| 513 | Sequoia | -16.5610 | 8.8542 | 7.3138 |
| 515 | Sierra | -15.4964 | 9.7091 | 6.4437 |
| 516 | Stanislaus | -12.4808 | 7.7915 | 7.1568 |
| 517 | Tahoe | -14.7932 | 8.3094 | 6.9113 |

**Table 4.1.3 Coefficients and *Z* values for equation {4.1.3} in the WS variant.**

| **Species Code** | **Curtis-Arney Coefficients** | | | |
| --- | --- | --- | --- | --- |
| **P2** | **P3** | **P4** | ***Z*** |
| GS | 595.1068 | 5.8103 | -0.3821 | 3.0 |
| LP | 99.1568 | 12.1300 | -1.3272 | 5.0 |
| WB | 99.1568 | 12.1300 | -1.3272 | 5.0 |
| PM | 101.5170 | 4.7066 | -0.9540 | 2.0 |
| KP | 101.5170 | 4.7066 | -0.9540 | 2.0 |
| FP | 101.5170 | 4.7066 | -0.9540 | 2.0 |
| CP | 101.5170 | 4.7066 | -0.9540 | 2.0 |
| LM | 101.5170 | 4.7066 | -0.9540 | 2.0 |
| GP | 101.5170 | 4.7066 | -0.9540 | 2.0 |
| RW | 595.1068 | 5.8103 | -0.3821 | 3.0 |
| WE | 101.5170 | 4.7066 | -0.9540 | 2.0 |
| WJ | 101.5170 | 4.7066 | -0.9540 | 2.0 |
| UJ | 101.5170 | 4.7066 | -0.9540 | 2.0 |
| CJ | 101.5170 | 4.7066 | -0.9540 | 2.0 |
| MC | 1709.7229 | 5.8887 | -0.2286 | 3.0 |

## 4.2 Bark Ratio Relationships

Bark ratio estimates are used to convert between diameter outside bark and diameter inside bark in various parts of the model. Two functionals forms are used to calculate bark ratio. For all species except redwood and giant sequoia, equation {4.2.1} is used to calculate bark ratio. Redwood and giant sequoia use equation {4.2.2} to calculate bark ratio. Coefficients (b1 and b2) for these equations by species are shown in table 4.2.1.

{4.2.1} *BRATIO* = b1 – b2 \* (1/*DBH*)

{4.2.2} DIB = b1 \* DBH^b2 *BRATIO* = *DIB* / *DBH*

where:

*BRATIO* is species-specific bark ratio (for curl-leaf mountain mahogany: bounded to 0.8 <u><</u> *BRATIO* <u><</u> 0.99)

b1 - b2 are species-specific coefficients shown in table 4.2.1

*DBH* is tree diameter at breast height (bounded to *DBH* <u>></u> 1.0)

*DIB* is tree diameter inside bark at breast height

**Table 4.2.1 Coefficients (b1-b2) for equations {4.2.1} – {4.2.2} in the WS variant.**

| **Species Code** | **b1** | **b2** | **Equation to use** |
| --- | --- | --- | --- |
| SP | 0.8863 | 0. | {4.2.1} |
| DF | 0.8839 | 0. | {4.2.1} |
| WF | 0.8911 | 0. | {4.2.1} |
| GS | 0.7012 | 1.04862 | {4.2.2} |
| IC | 0.8374 | 0. | {4.2.1} |
| JP | 0.8967 | 0. | {4.2.1} |
| RF | 0.8911 | 0. | {4.2.1} |
| PP | 0.8967 | 0. | {4.2.1} |
| LP | 0.9 | 0. | {4.2.1} |
| WB | 0.9 | 0. | {4.2.1} |
| WP | 0.8863 | 0. | {4.2.1} |
| PM | 0.9329 | 0. | {4.2.1} |
| SF | 0.8911 | 0. | {4.2.1} |
| KP | 0.9329 | 0. | {4.2.1} |
| FP | 0.9329 | 0. | {4.2.1} |
| CP | 0.9329 | 0. | {4.2.1} |
| LM | 0.9329 | 0. | {4.2.1} |
| MP | 0.8967 | 0. | {4.2.1} |
| GP | 0.9329 | 0. | {4.2.1} |
| WE | 0.9329 | 0. | {4.2.1} |
| GB | 0.9625 | 0.1141 | {4.2.1} |
| BD | 0.8839 | 0. | {4.2.1} |
| RW | 0.7012 | 1.04862 | {4.2.2} |
| MH | 0.8863 | 0. | {4.2.1} |
| WJ | 0.9329 | 0. | {4.2.1} |
| UJ | 0.9329 | 0. | {4.2.1} |
| CJ | 0.9329 | 0. | {4.2.1} |
| LO | 0.8374 | 0. | {4.2.1} |
| CY | 0.8374 | 0. | {4.2.1} |
| BL | 0.8374 | 0. | {4.2.1} |
| BO | 0.8374 | 0. | {4.2.1} |
| VO | 0.8374 | 0. | {4.2.1} |
| IO | 0.8374 | 0. | {4.2.1} |
| TO | 0.8374 | 0. | {4.2.1} |
| GC | 0.8374 | 0. | {4.2.1} |
| AS | 0.8374 | 0. | {4.2.1} |
| CL | 0.8374 | 0. | {4.2.1} |
| MA | 0.8374 | 0. | {4.2.1} |
| DG | 0.8374 | 0. | {4.2.1} |
| BM | 0.8374 | 0. | {4.2.1} |
| MC | 0.9 | 0. | {4.2.1} |
| OS | 0.8967 | 0. | {4.2.1} |
| OH | 0.8374 | 0. | {4.2.1} |

## 4.3 Crown Ratio Relationships

Crown ratio equations are used for three purposes in FVS: (1) to estimate tree crown ratios missing from the input data for both live and dead trees; (2) to estimate change in crown ratio from cycle to cycle for live trees; and (3) to estimate initial crown ratios for regenerating trees established during a simulation.

### 4.3.1 Crown Ratio Dubbing

In the WS variant, crown ratios missing in the input data are predicted using different equations depending on tree species and size. For all species except Great Basin bristlecone pine, giant sequoia, and redwood, live trees less than 1.0” in diameter and dead trees of all sizes use equation {4.3.1.1} and one of the equations listed below, {4.3.1.2} - {4.3.1.4}, to compute crown ratio. Species group assignment and equation number used by species is found in table 4.3.1.1. Equation coefficients are found in table 4.3.1.2.

{4.3.1.1} *X* = R1 + R2 \* *DBH* + R3 \* *HT* + R4 \* *BA* + R5 \* *PCCF* + R6 \* *HTAvg /HT* + R7 \* *HTAvg* + R8 \* *BA* \* *PCCF* + R9 \* *MAI*

{4.3.1.2} *CR* = 1 / (1 + exp(*X+* *N(0,SD)*)) where absolute value of (*X* + *N(0,SD)*) < 86

{4.3.1.3} *CR* = (((*X* + *N(0,SD)*) - 1) \* 10 + 1) / 100

{4.3.1.4} *CR* = ((*X* - 1) \* 10 + 1) / 100

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.10 <u><</u> *CR* <u><</u> 0.95)

*DBH* is tree diameter at breast height

*HT* is tree height

*BA* is total stand basal area

*PCCF* is crown competition factor on the inventory point where the tree is established

*HTAvg* is average height of the 40 largest diameter trees in the stand

*MAI* is stand mean annual increment

*N(0,SD)* is a random increment from a normal distribution with a mean of 0 and a standard deviation of SD

R1 – R9 are species-specific coefficients shown in table 4.3.1.1

**Table 4.3.1.1 Species group and equation assignment by species in the WS variant.**

| **Species Code** | **Species Group** | **Equation Number** | **Species Code** | **Species Group** | **Equation Number** |
| --- | --- | --- | --- | --- | --- |
| SP | 1 | {4.3.1.2} | MH | 1 | {4.3.1.2} |
| DF | 2 | {4.3.1.2} | WJ | 3 | {4.3.1.3} |
| WF | 2 | {4.3.1.2} | UJ | 3 | {4.3.1.3} |
| IC | 2 | {4.3.1.2} | CJ | 3 | {4.3.1.3} |
| JP | 2 | {4.3.1.2} | LO | 1 | {4.3.1.2} |
| RF | 2 | {4.3.1.2} | CY | 1 | {4.3.1.2} |
| PP | 1 | {4.3.1.2} | BL | 1 | {4.3.1.2} |
| LP | 3 | {4.3.1.3} | BO | 1 | {4.3.1.2} |
| WB | 3 | {4.3.1.3} | VO | 1 | {4.3.1.2} |
| WP | 1 | {4.3.1.2} | IO | 1 | {4.3.1.2} |
| PM | 3 | {4.3.1.3} | TO | 4 | {4.3.1.2} |
| SF | 2 | {4.3.1.2} | GC | 4 | {4.3.1.2} |
| KP | 3 | {4.3.1.3} | AS | 4 | {4.3.1.2} |
| FP | 3 | {4.3.1.3} | CL | 4 | {4.3.1.2} |
| CP | 3 | {4.3.1.3} | MA | 4 | {4.3.1.2} |
| LM | 3 | {4.3.1.3} | DG | 4 | {4.3.1.2} |
| MP | 1 | {4.3.1.2} | BM | 1 | {4.3.1.2} |
| GP | 3 | {4.3.1.3} | MC | 5 | {4.3.1.4} |
| WE | 3 | {4.3.1.3} | OS | 1 | {4.3.1.2} |
| BD | 2 | {4.3.1.2} | OH | 1 | {4.3.1.2} |

**Table {4.3.1.2} Coefficients by species group for equation {4.3.1.1} in the WS variant.**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Coefficient** | **1** | **2** | **3** | **4** | **5** |
| R1 | -1.66949 | -0.426688 | 6.489813 | -2.19723 | 5 |
| R2 | -0.209765 | -0.093105 | 0 | 0 | 0 |
| R3 | 0 | 0.022409 | -0.029815 | 0 | 0 |
| R4 | 0.003359 | 0.002633 | -0.009276 | 0 | 0 |
| R5 | 0.011032 | 0 | 0 | 0 | 0 |
| R6 | 0 | -0.045532 | 0 | 0 | 0 |
| R7 | 0.017727 | 0 | 0 | 0 | 0 |
| R8 | -0.000053 | 0.000022 | 0 | 0 | 0 |
| R9 | 0.014098 | -0.013115 | 0 | 0 | 0 |
| SD | 0.5\* | 0.6957\*\* | 2.0426 | 0.2 | 0.5 |

\*0.4942 for ponderosa pine and Monterey pine; 0.6124 for California live oak, canyon live oak, blue oak, California black oak, valley oak, interior live oak, bigleaf maple and other hardwood.

\*\*0.9310 for incense cedar

For all species except Great Basin bristlecone pine, giant sequoia, and redwood, a Weibull-based crown model developed by Dixon (1985) as described in Dixon (2002) is used to predict crown ratio for all live trees 1.0” in diameter or larger. To estimate crown ratio using this methodology, the average stand crown ratio is estimated from stand density index using equation {4.3.1.5}. Weibull parameters are then estimated from the average stand crown ratio using equations in equation set {4.3.1.6}. Individual tree crown ratio is then set from the Weibull distribution equation {4.3.1.7} based on a tree’s relative position in the diameter distribution and multiplied by a scale factor, shown in equation {4.3.1.8}, which accounts for stand density. Crowns estimated from the Weibull distribution are bounded to be between the 5 and 95 percentile points of the specified Weibull distribution. Equation coefficients for each species are shown in table 4.3.1.3.

{4.3.1.5} *ACR* = d0 + d1 \* *RELSDI* \* 100.0

where: RELSDI = SDIstand / SDImax

{4.3.1.6} Weibull parameters A, B, and C are estimated from average crown ratio

*A* = a0

*B* = b0 + b1 \* ACR (*B* <u>></u> 3)

*C* = c0 + c1 \* ACR (*C* <u>></u> 2)

{4.3.1.7} *Y* = 1-exp(-((*X*-A)/B)^C)

{4.3.1.8}

Used for sugar pine, Douglas-fir, white fir, incense cedar, Jeffrey pine, California red fir, ponderosa pine, western white pine, Pacific silver fir, Monterey pine, bigcone Douglas-fir, mountain hemlock, California live oak, canyon live oak, blue oak, California white oak, interior live oak, tanoak, giant chinquapin, quaking aspen, California laurel, Pacific madrone, Pacific madrone, Pacific dogwood, bigleaf maple, other softwood, and other hardwood:

*SCALE =* 1 – 0.00333 \* (*CCF* – 50)

Used for lodgepole pine, whitebark pine, singleleaf pinyon, knobcone pine, foxtail pine, Coulter pine, limber pine, California foothill pine, Washoe pine, western juniper, Utah juniper, California juniper:

*SCALE* = 1.5 – *CCF*

Used for MC:

*SCALE =* 1 – 0.00167 \* (*CCF* – 100)

where:

*ACR* is predicted average stand crown ratio for the species

*SDIstand* is stand density index of the stand

*SDImax* is maximum stand density index

*A*, *B*, *C* are parameters of the Weibull crown ratio distribution

*X* is a tree’s crown ratio expressed as a percent / 10

*Y* is a tree’s rank in the diameter distribution (1 = smallest; ITRN = largest) divided by the total number of trees (ITRN) multiplied by *SCALE*

*SCALE* is a density dependent scaling factor(bounded to 0.3 <u><</u> *SCALE* <u><</u> 1.0)

*CCF* is stand crown competition factor

a0, b0-1, c0-1, and d0-1 are species-specific coefficients shown in table 4.3.1.3

**Table 4.3.1.3 Coefficients for the Weibull parameter equations {4.3.1.5} and {4.3.1.6} in the WS variant.**

| **Species Code** | **a0** | **b0** | **b1** | **c0** | **c1** | **d0** | **d1** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| SP | 0 | 0.32957 | 1.03916 | -0.83314 | 0.91493 | 7.12189 | -0.02817 |
| DF | 0 | 0.39996 | 1.03150 | -0.98287 | 0.88449 | 5.91609 | -0.00943 |
| WF | 0 | 0.17606 | 1.07984 | -0.89140 | 0.76518 | 6.86237 | -0.03278 |
| IC | 0 | 0.15500 | 1.08747 | 0.85877 | 0.40125 | 6.32336 | -0.02987 |
| JP | 2 | -1.24580 | 0.94476 | -10.54490 | 2.45822 | 7.33055 | -0.01539 |
| RF | 0 | 0.16601 | 1.08150 | 0.91420 | 0.45768 | 6.14578 | -0.02781 |
| PP | 0 | 0.20199 | 1.07198 | 0.75409 | 0.52191 | 6.15172 | -0.01994 |
| LP | 0 | -0.13121 | 1.15976 | 2.59824 | 0 | 4.89032 | -0.01884 |
| WB | 0 | -0.13121 | 1.15976 | 2.59824 | 0 | 4.89032 | -0.01884 |
| WP | 0 | 0.32957 | 1.03916 | -0.83314 | 0.91493 | 7.12189 | -0.02817 |
| PM | 0 | 0.16267 | 1.07340 | 3.28850 | 0 | 6.48494 | -0.02325 |
| SF | 0 | 0.17606 | 1.07984 | -0.89140 | 0.76518 | 6.86237 | -0.03278 |
| KP | 0 | 0.16267 | 1.07340 | 3.28850 | 0 | 6.48494 | -0.02325 |
| FP | 0 | 0.16267 | 1.07340 | 3.28850 | 0 | 6.48494 | -0.02325 |
| CP | 0 | 0.16267 | 1.07340 | 3.28850 | 0 | 6.48494 | -0.02325 |
| LM | 0 | 0.16267 | 1.07340 | 3.28850 | 0 | 6.48494 | -0.02325 |
| MP | 0 | 0.20199 | 1.07198 | 0.75409 | 0.52191 | 6.15172 | -0.01994 |
| GP | 0 | 0.16267 | 1.07340 | 3.28850 | 0 | 6.48494 | -0.02325 |
| WE | 0 | 0.16267 | 1.07340 | 3.28850 | 0 | 6.48494 | -0.02325 |
| BD | 0 | 0.39996 | 1.03150 | -0.98287 | 0.88449 | 5.91609 | -0.00943 |
| MH | 0 | 0.32957 | 1.03916 | -0.83314 | 0.91493 | 7.12189 | -0.02817 |
| WJ | 0 | 0.16267 | 1.07340 | 3.28850 | 0 | 6.48494 | -0.02325 |
| UJ | 0 | 0.16267 | 1.07340 | 3.28850 | 0 | 6.48494 | -0.02325 |
| CJ | 0 | 0.16267 | 1.07340 | 3.28850 | 0 | 6.48494 | -0.02325 |
| LO | 0 | -0.14217 | 1.15448 | 0.59185 | 0.37245 | 4.00579 | -0.00522 |
| CY | 0 | -0.14217 | 1.15448 | 0.59185 | 0.37245 | 4.00579 | -0.00522 |
| BL | 0 | -0.14217 | 1.15448 | 0.59185 | 0.37245 | 4.00579 | -0.00522 |
| BO | 0 | -0.14217 | 1.15448 | 0.59185 | 0.37245 | 4.00579 | -0.00522 |
| VO | 0 | -0.14217 | 1.15448 | 0.59185 | 0.37245 | 4.00579 | -0.00522 |
| IO | 0 | -0.14217 | 1.15448 | 0.59185 | 0.37245 | 4.00579 | -0.00522 |
| TO | 0 | -0.14217 | 1.15448 | 0.59185 | 0.37245 | 4.00579 | -0.00522 |
| GC | 0 | -0.14217 | 1.15448 | 0.59185 | 0.37245 | 4.00579 | -0.00522 |
| AS | 0 | -0.14217 | 1.15448 | 0.59185 | 0.37245 | 4.00579 | -0.00522 |
| CL | 0 | -0.14217 | 1.15448 | 0.59185 | 0.37245 | 4.00579 | -0.00522 |
| MA | 0 | -0.14217 | 1.15448 | 0.59185 | 0.37245 | 4.00579 | -0.00522 |
| DG | 0 | -0.14217 | 1.15448 | 0.59185 | 0.37245 | 4.00579 | -0.00522 |
| BM | 0 | -0.14217 | 1.15448 | 0.59185 | 0.37245 | 4.00579 | -0.00522 |
| MC | 0 | -0.23830 | 1.18016 | 3.04 | 0 | 4.62512 | -0.01604 |
| OS | 0 | -0.09800 | 1.11809 | 4.05181 | 0 | 6.35669 | -0.00846 |
| OH | 0 | -0.14217 | 1.15448 | 0.59185 | 0.37245 | 4.00579 | -0.00522 |

Great Basin bristlecone pine uses equations {4.3.1.9} and {4.3.1.10} to estimate crown ratio for live and dead trees missing crown ratios in the inventory.

{4.3.1.9} *CL* = -0.59373 + 0.67703 \* *HT*

{4.3.1.10} *CR* = (*CL* / *HT*) \* 100

where:

*CL* is crown length in feet (bounded 1.0 <u><</u> *CL*  <u><</u> *HT*)

*CR* is crown ratio expressed as a percent (bounded to 0.10 <u><</u> *CR* <u><</u> 0.95)

*HT* is total tree height

For giant sequioa and redwood, equation {4.3.1.11} and equation {4.3.1.12} are used to compute crown ratio for live trees less than 1” and dead trees of all sizes. For live redwood greater than 1”, equation {4.3.1.11} and equation {4.3.1.13} are used to compute crown ratio.

{4.3.1.11} *X* = -1.021064 + 0.309296 \* ln(*H\*12/D)* + 0.869720 \* *PRD -* 0.116274 \* *D/QMDPLT*

{4.3.1.12} *CR* = 1 / (1 + exp(*X +* *N(0,SD)*))

{4.3.1.13} *CR* = 1 / (1 + exp(*X*))

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.05 <u><</u> *CR* <u><</u> 0.95)

*D* is tree diameter at breast height

*H* is tree height

*PRD* isrelative density of the inventory point (point Zeide SDI / point SDI max)

*QMDPLT* is quadratic mean diameter of the inventory point (constrained to minimum of 1”)

*N(0,SD)* is a random increment from a normal distribution with a mean of 0 and a standard deviation of SD (0.15)

### 4.3.2 Crown Ratio Change

Crown ratio change is estimated after growth, mortality and regeneration are estimated during a projection cycle. Crown ratio change is the difference between the crown ratio at the beginning of the cycle and the predicted crown ratio at the end of the cycle. Crown ratio predicted at the end of the projection cycle is estimated for live tree records using the Weibull distribution, equations {4.3.1.5}-{4.3.1.8}, for all species except Great Basin bristlecone pine, giant sequoia, and redwood. For Great Basin bristlecone pine, crown ratio predicted at the end of the projection cycle is estimated using equations {4.3.1.9} and {4.3.1.10}. For giant sequoia and redwood, crown ratio predicted at the end of the projection cycle is estimated using equations {4.3.1.11) and {4.3.1.13}. Crown change is checked to make sure it doesn’t exceed the change possible if all height growth produces new crown. Crown change is further bounded to 1% per year for the length of the cycle to avoid drastic changes in crown ratio. Equations {4.3.1.1} – {4.3.1.4} are not used when estimating crown ratio change.

### 4.3.3 Crown Ratio for Newly Established Trees

Crown ratios for newly established trees during regeneration are estimated using equation {4.3.3.1}. A random component is added in equation {4.3.3.1} to ensure that not all newly established trees are assigned exactly the same crown ratio.

{4.3.3.1} *CR* = 0.89722 – 0.0000461 \* *PCCF* + *RAN*

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.2 <u><</u> *CR* <u><</u> 0.9)

*PCCF* is crown competition factor on the inventory point where the tree is established

*RAN* is a small random component

## 4.4 Crown Width Relationships

The WS variant calculates the maximum crown width for each individual tree, based on individual tree and stand attributes. Crown width for each tree is reported in the tree list output table and used for percent canopy cover (*PCC*) calculations in the model.

### 4.4.1 Region 5 Crown Width

The WS variant calculates the maximum crown width for each individual tree, based on individual tree and stand attributes. Crown width for each tree is reported in the tree list output table and used for percent canopy cover (*PCC*) calculations in the model. Crown width is calculated by using equations {4.4.1.1} – {4.4.1.5}. If a tree has a *DBH* greater than or equal to its threshold diameter (given as *DBHT*), then it uses equation {4.4.1.1}, {4.4.1.2}, or {4.4.1.3} depending on the species. If a tree has a *DBH* less than its threshold diameter, then it uses equation {4.4.1.4} or {4.4.1.5} depending on the height of the tree. Coefficients, equation reference, and threshold diameter values for these equations are shown in table 4.4.1.1 by species.

{4.4.1.1} *DBH* <u>></u> *DBHT*: *CW* = a1 + a2 \* *DBH*

{4.4.1.2} *DBH* <u>></u> *DBHT*: *CW* = a1 \* *DBH^*a2

{4.4.1.3} *DBH* <u>></u> *DBHT*: *CW* = a1 + a2 \* *DBH* + a3 \* *DBH^*2

{4.4.1.4} *HT* < 4.5’ and *DBH* < *DBHT*: *CW* = *HT* \* s1

{4.4.1.5} *HT* <u>></u> 4.5’ and *DBH* < *DBHT*: *CW* = d1 + d2 \* *DBH*

where:

*CW* is maximum tree crown width

*DBH* is tree diameter at breast height

*DBHT* is threshold diameter shown in table 4.4.1.1

*HT* is tree height

s1, d1-2, and a1-3 are species-specific coefficients shown in table 4.4.1.1

**Table 4.4.1.1 Coefficients and equation reference for R5 Crown Width equations {4.4.1.1} – {4.4.1.5} in the WS variant.**

| **Species Code** | **Equation Used\*** | ***DBHT*** | **d1** | **d2** | **a1** | **a2** | **a3** | **s1** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| SP | {4.4.1.1} | 7.4 | 3.5 | 0.338 | -1.476 | 1.01 | 0 | 0.7778 |
| DF | {4.4.1.1} | 5 | 3.62 | 1.37 | 6.81 | 0.732 | 0 | 0.7778 |
| WF | {4.4.1.1} | 5 | 3.26 | 1.103 | 5.82 | 0.591 | 0 | 0.7778 |
| GS | {4.4.1.1} | 5 | 3.5 | 1.1 | 6 | 0.6 | 0 | 0.7778 |
| IC | {4.4.1.1} | 5 | 3.5 | 1.192 | 7.11 | 0.47 | 0 | 0.7778 |
| JP | {4.4.1.2} | 5 | 3.5 | 0.5754 | 1.52 | 0.891 | 0 | 0.7778 |
| RF | {4.4.1.1} | 5 | 3.5 | 1.063 | 6.71 | 0.421 | 0 | 0.7778 |
| PP | {4.4.1.2} | 5 | 3.77 | 0.7756 | 2.24 | 0.763 | 0 | 0.7778 |
| LP | {4.4.1.2} | 5 | 3.5 | 0.6492 | 1.91 | 0.784 | 0 | 0.7778 |
| WB | {4.4.1.2} | 5 | 3.5 | 0.8496 | 2.37 | 0.736 | 0 | 0.7778 |
| WP | {4.4.1.1} | 7.6 | 3.5 | 0.329 | -0.997 | 0.92 | 0 | 0.7778 |
| PM | {4.4.1.1} | 5 | 3.5 | 1.1 | 6 | 0.6 | 0 | 0.7778 |
| SF | {4.4.1.1} | 5 | 3.26 | 1.103 | 5.82 | 0.591 | 0 | 0.7778 |
| KP | {4.4.1.1} | 5 | 3.5 | 1.1 | 6 | 0.6 | 0 | 0.7778 |
| FP | {4.4.1.1} | 5 | 3.5 | 1.1 | 6 | 0.6 | 0 | 0.7778 |
| CP | {4.4.1.2} | 5 | 3.5 | 1.7618 | 3.9347 | 0.7086 | 0 | 0.7778 |
| LM | {4.4.1.1} | 5 | 3.5 | 1.1 | 6 | 0.6 | 0 | 0.7778 |
| MP | {4.4.1.1} | 5 | 3.5 | 1.1 | 6 | 0.6 | 0 | 0.7778 |
| GP | {4.4.1.2} | 5 | 3.5 | 1.9108 | 3.8273 | 0.7624 | 0 | 0.7778 |
| WE | {4.4.1.1} | 5 | 3.5 | 1.1 | 6 | 0.6 | 0 | 0.7778 |
| GB | {4.4.1.1} | 5 | 3.5 | 1.1 | 6 | 0.6 | 0 | 0.7778 |
| BD | {4.4.1.1} | 5 | 3.5 | 5.5672 | 27.030 | 0.8612 | 0 | 0.7778 |
| RW | {4.4.1.1} | 5 | 3.62 | 1.37 | 6.81 | 0.732 | 0 | 0.7778 |
| MH | {4.4.1.1} | 5 | 3.5 | 0.852 | 4.72 | 0.608 | 0 | 0.7778 |
| WJ | {4.4.1.2} | 5 | 3.5 | 1.6684 | 4.31 | 0.628 | 0 | 0.7778 |
| UJ | {4.4.1.2} | 5 | 3.5 | 1.6684 | 4.31 | 0.628 | 0 | 0.7778 |
| CJ | {4.4.1.2} | 5 | 3.5 | 1.6684 | 4.31 | 0.628 | 0 | 0.7778 |
| LO | {4.4.1.2} | 5 | 2.5 | 3.2150 | 5.3732 | 0.7707 | 0 | 0.5556 |
| CY | {4.4.1.1} | 5 | 2.5 | 2.19 | 5 | 1.69 | 0 | 0.5556 |
| BL | {4.4.1.2} | 5 | 2.5 | 2.2175 | 4.49 | 0.688 | 0 | 0.5556 |
| BO | {4.4.1.1} | 5 | 2.5 | 2.7 | 10 | 1.2 | 0 | 0.5556 |
| VO | {4.4.1.2} | 5 | 2.5 | 2.2816 | 4.5628 | 0.6925 | 0 | 0.5556 |
| IO | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| TO | {4.4.1.1} | 13.4 | 2.23 | 1.63 | 10 | 1.05 | 0 | 0.5556 |
| GC | {4.4.1.3} | 5 | 2.15 | 1.646 | 2.98 | 1.55 | -0.014 | 0.5556 |
| AS | {4.4.1.1} | 5 | 2.5 | 1.22 | 0.5 | 1.62 | 0 | 0.5556 |
| CL | {4.4.1.1} | 5 | 2.5 | 4.2956 | 12.733 | 2.249 | 0 | 0.5556 |
| MA | {4.4.1.1} | 5 | 3.11 | 1.008 | 1.0 | 1.43 | 0 | 0.5556 |
| DG | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| BM | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| MC | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| OS | {4.4.1.1} | 5 | 3.5 | 1.1 | 6 | 0.6 | 0 | 0.7778 |
| OH | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |

\*Equation refers to the species-specific equation used when *DBH* <u>></u> *DBHT*

## 4.5 Crown Competition Factor

The WS variant uses crown competition factor (*CCF*) as a predictor variable in some growth relationships. Crown competition factor (Krajicek and others 1961) is a relative measurement of stand density that is based on tree diameters. Individual tree *CCFt* values estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open-grown. Stand *CCF* is the summation of individual tree (*CCFt*)values. A stand *CCF* value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand.

Crown competition factor for sugar pine, Douglas-fir, white fir, giant sequoia, incense cedar, Jeffrey pine, California red fir, ponderosa pine, Western white pine, Pacific silver fir, Monterey pine, bigcone Douglas-fir, redwood, mountain hemlock, California live oak, canyon live oak, blue oak, California black oak, valley oak, interior live oak, tanoak, giant chinquapin, quaking aspen, California laurel, Pacific madrone, Pacific dogwood, bigleaf maple, other softwood, and other hardwood is calculated using equation {4.5.1}. Coefficients for the species using these equations are shown in table 4.5.1.

{4.5.1} *CCFt* equations

*DBH* <u>></u> 1.0”: *CCFt* = ((R1 + *DBH*\*R2)^2.0) \* 0.001803

0.1” < *DBH* < 1.0”: *CCFt* = RDA \* *DBH*^RDB

*DBH* <u><</u> 0.1”: *CCFt* = 0.001

where:

*CCFt* is crown competition factor for an individual tree

*DBH* is tree diameter at breast height

R1, R2, RDA, RDB are species-specific coefficients shown in table 4.5.1

**Table 4.5.1 Coefficients for *CCF* equation {4.5.1} in the WS variant.**

| **Species Code** | **R1** | **R2** | **RDA** | **RDB** |
| --- | --- | --- | --- | --- |
| SP | 6.74 | 0.623 | 0.007244 | 1.8182 |
| DF | 6.81 | 0.732 | 0.017299 | 1.5571 |
| WF | 5.82 | 0.591 | 0.015248 | 1.7333 |
| GS | 5.82 | 0.591 | 0.011109 | 1.725 |
| IC | 7.11 | 0.47 | 0.008915 | 1.78 |
| JP | 3.1 | 0.839 | 0.007875 | 1.736 |
| RF | 6.71 | 0.421 | 0.011402 | 1.756 |
| PP | 5.13 | 0.658 | 0.007813 | 1.778 |
| WP | 6.74 | 0.623 | 0.007244 | 1.8182 |
| SF | 5.82 | 0.591 | 0.015248 | 1.7333 |
| MP | 5.13 | 0.658 | 0.007813 | 1.778 |
| BD | 6.81 | 0.732 | 0.017299 | 1.5571 |
| RW | 5.82 | 0.591 | 0.011109 | 1.725 |
| MH | 6.74 | 0.623 | 0.007244 | 1.8182 |
| LO | 10 | 1.2 | 0.009187 | 1.76 |
| CY | 10 | 1.2 | 0.009187 | 1.76 |
| BL | 10 | 1.2 | 0.009187 | 1.76 |
| BO | 10 | 1.2 | 0.009187 | 1.76 |
| VO | 10 | 1.2 | 0.009187 | 1.76 |
| IO | 10 | 1.2 | 0.009187 | 1.76 |
| TO | 10 | 1.05 | 0.011109 | 1.725 |
| GC | 10 | 1.05 | 0.011109 | 1.725 |
| AS | 10 | 1.05 | 0.011109 | 1.725 |
| CL | 10 | 1.05 | 0.011109 | 1.725 |
| MA | 10 | 1.05 | 0.011109 | 1.725 |
| DG | 10 | 1.05 | 0.011109 | 1.725 |
| BM | 10 | 1.2 | 0.009187 | 1.76 |
| OS | 7.07 | 0.551 | 0.009884 | 1.6667 |
| OH | 10 | 1.2 | 0.009187 | 1.76 |

Crown competition factor for lodgepole pine, whitebark pine, singleleaf pinyon, knobcone pine, foxtail pine, Coulter pine, limber pine, California foothill pine, Washoe pine, western juniper, Utah juniper, and California juniper is computed from crown width using equation {4.5.2}. Crown width equations for these species were shown in section 4.4.

{4.5.2} *CCFt* = 0.001803 \* *CW*^2

where:

*CCFt* is crown competition factor for an individual tree

*CW* is maximum tree crown width

Crown competition factor for curl-leaf mountain mahogany is computed using equation {4.5.3}.

{4.5.3} *CCFt* equations:

*DBH* < 1.0”: *CCFt* = 0.0524 \* *DBH*

*DBH* <u>></u> 1.0”: *CCFt* = 0.0204 + 0.0246 \* *DBH* + 0.0074 \* *DBH*^2

where:

*CCFt* is crown competition factor for an individual tree

*DBH* is tree diameter at breast height

Crown competition factor for Great Basin bristlecone pine is computed using equation {4.5.4}.

{4.5.4} *CCFt equations*:

*DBH* <u><</u> 0.1”: *CCFt* = 0.001

0.1” < *DBH* < 10.0”*CCFt* = 0.009187 \* *DBH*^1.76

*DBH* <u>></u> 10.0”: *CCFt* = 0.01925 + 0.01676 \* *DBH* + 0.00365 \* *DBH*^2

where:

*CCFt* is crown competition factor for an individual tree

*DBH* is tree diameter at breast height

## 4.6 Small Tree Growth Relationships

Trees are considered “small trees” for FVS modeling purposes when they are smaller than some threshold diameter. The threshold diameter is set to 3.0” for all species in the WS variant except for Great Basin bristlecone pine which has a threshold diameter of 99.0”. The equations presented in this section are used to model growth on trees of all sizes for Great Basin bristlecone pine.

The small tree model is height-growth driven, meaning height growth is estimated first and diameter growth is estimated from height growth. These relationships are discussed in the following sections.

### 4.6.1 Small Tree Height Growth

The small-tree height increment model predicts 10-year height growth for Great Basin bristlecone pine and curl-leaf mountain mahogany, and 5-year height growth for all other species. Height growth for all species in the WS variant, except for Great Basin bristlecone pine, giant sequoia, redwood, and curl-leaf mountain mahogany, is estimated by using equations {4.6.1.1} – {4.6.1.4}. Equation reference and site index adjustment factors are shown in table 4.6.1.1.

{4.6.1.1} Used for: sugar pine, incense cedar, Jeffrey pine, ponderosa pine, lodgepole pine, whitebark pine, western white pine, singleleaf pinyon, knobcone pine, foxtail pine, Coulter pine, limber pine, Monterey pine, California foothill pine, Washoe pine, mountain hemlock, western juniper, Utah juniper, California juniper, and other softwood

*HTG* = c1 \* exp(0.7452 – (0.003271 \* *BAL*) – (0.1632 \* *CR*) + (0.0217 \* *CR*^2) + (0.00536\* *SI*)) \* (0.8 + (0.004 \* (*SI* – 50)))

{4.6.1.2} Used for: Douglas-fir, white fir, California red fir, Pacific silver fir, bigcone, and Douglas-fir

*HTG* = (c1 + exp(-0.2495 – (0.00111 \* *BAL*) + (0.01 \* *CR*2))) \* c2 \* [0.8 + (0.004 \* (*SI* – 50)))

{4.6.1.3} Used for: California live oak, canyon live oak, blue oak, California black oak, valley oak, interior live oak, bigleaf maple, and other hardwood

*HTG* = exp(3.817 – (0.7829 \* ln(*BAL*)))

{4.6.1.4} Used for: tanoak, giant chinquapin, quaking aspen, California laurel, Pacific madrone, Pacific dogwood

*HTG* = exp(3.385 – (0.5898 \* ln(*BAL*)))

where:

*HTG* is estimated 5-year height growth

*BAL* is total basal area in trees larger than the subject tree

*CR* is crown ratio expressed as a percent divided by 10

*SI* is species site index

*c1, c2* are species-specific coefficients shown in table 4.6.1.1

**Table 4.6.1.1 Equation reference, diameter bounds, and coefficients by species for small-tree height growth in the WS variant.**

| **Species Code** | ***HTG* Equation** | **c1** | **c2** | ***Xmin*** | ***Xmax*** |
| --- | --- | --- | --- | --- | --- |
| SP | {4.6.1.1} | 1.75 | 0 | 2.0 | 3.5 |
| DF | {4.6.1.2} | 1.00 | 2.5 | 2.0 | 3.5 |
| WF | {4.6.1.2} | 0.75 | 2.0 | 2.0 | 3.5 |
| GS | {4.6.1.11} | 1.00 | 2.0 | 2.0 | 10.0 |
| IC | {4.6.1.1} | 1.75 | 0 | 2.0 | 3.5 |
| JP | {4.6.1.1} | 1.50 | 0 | 2.0 | 3.5 |
| RF | {4.6.1.2} | 0.75 | 2.0 | 2.0 | 3.5 |
| PP | {4.6.1.1} | 1.50 | 0 | 2.0 | 3.5 |
| LP | {4.6.1.1} | 1.75 | 0 | 2.0 | 4.0 |
| WB | {4.6.1.1} | 1.75 | 0 | 2.0 | 4.0 |
| WP | {4.6.1.1} | 1.75 | 0 | 2.0 | 3.5 |
| PM | {4.6.1.1} | 1.75 | 0 | 2.0 | 4.0 |
| SF | {4.6.1.2} | 0.75 | 2.0 | 2.0 | 3.5 |
| KP | {4.6.1.1} | 1.75 | 0 | 2.0 | 4.0 |
| FP | {4.6.1.1} | 1.75 | 0 | 2.0 | 4.0 |
| CP | {4.6.1.1} | 1.75 | 0 | 2.0 | 4.0 |
| LM | {4.6.1.1} | 1.75 | 0 | 2.0 | 4.0 |
| MP | {4.6.1.1} | 1.50 | 0 | 2.0 | 3.5 |
| GP | {4.6.1.1} | 1.75 | 0 | 2.0 | 4.0 |
| WE | {4.6.1.1} | 1.75 | 0 | 2.0 | 4.0 |
| GB | n/a | n/a | n/a | 99.0 | 199.0 |
| BD | {4.6.1.2} | 1.00 | 2.5 | 2.0 | 3.5 |
| RW | {4.6.1.11} | 1.00 | 2.0 | 2.0 | 10.0 |
| MH | {4.6.1.1} | 1.75 | 0 | 2.0 | 3.5 |
| WJ | {4.6.1.1} | 1.75 | 0 | 2.0 | 4.0 |
| UJ | {4.6.1.1} | 1.75 | 0 | 2.0 | 4.0 |
| CJ | {4.6.1.1} | 1.75 | 0 | 2.0 | 4.0 |
| LO | {4.6.1.3} | 0 | 0 | 1.0 | 3.5 |
| CY | {4.6.1.3} | 0 | 0 | 1.0 | 3.5 |
| BL | {4.6.1.3} | 0 | 0 | 1.0 | 3.5 |
| BO | {4.6.1.3} | 0 | 0 | 1.0 | 3.5 |
| VO | {4.6.1.3} | 0 | 0 | 1.0 | 3.5 |
| IO | {4.6.1.3} | 0 | 0 | 1.0 | 3.5 |
| TO | {4.6.1.4} | 0 | 0 | 2.0 | 3.5 |
| GC | {4.6.1.4} | 0 | 0 | 2.0 | 3.5 |
| AS | {4.6.1.4} | 0 | 0 | 2.0 | 3.5 |
| CL | {4.6.1.4} | 0 | 0 | 2.0 | 3.5 |
| MA | {4.6.1.4} | 0 | 0 | 2.0 | 3.5 |
| DG | {4.6.1.4} | 0 | 0 | 2.0 | 3.5 |
| BM | {4.6.1.3} | 0 | 0 | 1.0 | 3.5 |
| MC | n/a | n/a | n/a | 2.0 | 4.0 |
| OS | {4.6.1.1} | 1.50 | 0 | 2.0 | 3.5 |
| OH | {4.6.1.3} | 0 | 0 | 1.0 | 3.5 |

Potential height growth for Great Basin bristlecone pine is estimated using equation {4.6.1.5}.

{4.6.1.5} *POTHTG* = ((*SI* / 5.0) \* (*SI* \* 1.5 - *H*) / (*SI* \* 1.5)) \* 0.83

where:

*POTHTG* is potential 10-year height growth

*SI* is species site index on a base-age basis

*H* is total tree height

Potential height growth is then adjusted based on stand density (*PCTRED*) as computed with equation {4.6.1.6}, and crown ratio (*VIGOR*) as shown in {4.6.1.7}. Height growth is then estimated using equation {4.6.1.8}.

{4.6.1.6} *PCTRED* = 1.1144 – 0.0115\**Z* + 0.4301E-04 \* *Z*^2 – 0.7222E-07 \* *Z*^3 + 0.5607E-10 \* *Z*^4 – 0.1641E-13 \* *Z*^5

where: *Z* = *HTAvg* \* (*CCF* / 100)

{4.6.1.7} *VIGOR* = 1 – ((1 – (150 \* *CR*^3 \* exp(-6 \* *CR*)) + 0.3) / 3)

{4.6.1.8} *HTG* = *POTHTG* \* *PCTRED* \* *VIGOR*

where:

*HTG* is estimated height growth for the cycle

*POTHTG* is potential 10-year height growth

*PCTRED* is reduction in height growth due to stand density (bounded to 0.01 <u><</u> *PCTRED* <u><</u> 1)

*HTAvg* is average height of the 40 largest diameter trees in the stand

*CCF* is stand crown competition factor

*VIGOR* is reduction in height growth due to tree vigor (bounded to *VIGOR* <u><</u> 1.0)

*CR* is a tree’s live crown ratio (compacted) expressed as a proportion

Potential height growth for curl-leaf mountain mahogany is computed using equation {4.6.1.9}. Potential height growth is then modified as shown in {4.6.1.8} with the PCTRED adjustment shown in {4.6.1.6} and the VIGOR adjustment shown in {4.6.1.10}.

{4.6.1.9} *POTHTG* = ((1.47043 + 0.23317 \* SI) / (31.56252 – 0.05586 \* SI)) \* 10

{4.6.1.10} *VIGOR* = (150 \* *CR*^3 \* exp(-6 \* *CR*)) + 0.3

For giant sequoia and redwood, a potential height growth curve is used to estimate small tree height growth. Height growth is computed by subtracting the current predicted height from the predicted height 5 years in the future, as depicted in equation {4.6.1.11}.

{4.6.1.11} *POTHTG* = 2.242202 \* *SI* \* [1.0 – exp (-0.010742 \* *AGE1*)]^ 0.919076

where:

*POTHTG* is predicted tree height, used for current and future height growth

*SI* is species site index

*AGE1* is tree age

A*GE1* = 1/ -0.010742 \*(ln(1-(*HT*/2.242202/*SI*)^(1/ 0.919076))

For all species, a small random error is added to the height growth estimate. The estimated height growth (*HTG*) is then adjusted to account for cycle length, user defined small-tree height growth adjustments, and adjustments due to small tree height model calibration from the input data.

Height growth estimates from the small-tree model are weighted with the height growth estimates from the large tree model over a range of diameters (*Xmin* and *Xmax*) in order to smooth the transition between the two models. For example, the closer a tree’s *DBH* value is to the minimum diameter (*Xmin*), the more the growth estimate will be weighted towards the small-tree growth model. The closer a tree’s *DBH* value is to the maximum diameter (*Xmax*), the more the growth estimate will be weighted towards the large-tree growth model. If a tree’s *DBH* value falls outside of the range given by *Xmin* and *Xmax*, then the model will use only the small-tree or large-tree growth model in the growth estimate. The weight applied to the growth estimate is calculated using equation {4.6.1.12} and applied as shown in equation {4.6.1.13}. The range of diameters where this weighting occurs for each species is shown in table 4.6.1.1.

{4.6.1.12}

DBH <u><</u> Xmin: XWT = 0

Xmin < DBH < Xmax: XWT = (DBH - Xmin) / (Xmax - Xmin)

DBH <u>></u> Xmax: XWT = 1

{4.6.1.13}

Estimated growth = [(1 - *XWT*) \* *STGE*] + [*XWT* \* *LTGE*]

Giant sequoia and redwood estimated growth = [(1 - *XWT*) \* ((*STGE + LTGE*)/*2.0)*] + [*XWT* \* *LTGE*]

where:

*XWT* is the weight applied to the growth estimates

*DBH* is tree diameter at breast height

*Xmax* is the maximum *DBH* where weighting between small and large tree models occurs

*Xmin* is the minimum *DBH* where weighting between small and large tree models occurs

*STGE* is the growth estimate obtained using the small-tree growth model

*LTGE* is the growth estimate obtained using the large-tree growth model

### ****4.6.2 Small Tree Diameter Growth****

As stated previously, for trees being projected with the small tree equations, height growth is predicted first, and then diameter growth. So, both height at the beginning of the cycle and height at the end of the cycle are known when predicting diameter growth. Small tree diameter growth for trees over 4.5 feet tall is calculated as the difference of predicted diameter at the start of the projection period and the predicted diameter at the end of the projection period, adjusted for bark ratio. In the WS variant, for all species except Great Basin bristlecone pine, curl-leaf mountain mahogany, giant sequoia, and redwood, diameter growth of small trees is a weighted average of the small-tree and large tree predictions when the *DBH* is between 1.5” and 3.0”. Diameter growth estimates for giant sequoia and redwood are weighted with the diameter growth estimates from the large-tree model when DBH is between 2” and 7”. By definition, diameter growth is zero for trees less than 4.5 feet tall. Small-tree diameter at the start and end of the projection period are estimated using equations {4.6.2.1} – {4.6.2.5} or the height-diameter equations discussed in section 4.1 depending on species.

{4.6.2.1} Used for sugar pine, incense cedar, Jeffrey pine, ponderosa pine, western white pine, Monterey pine, mountain hemlock, and other softwood

*DBH* = -0.6197 + (0.2626 \* *HT*)

{4.6.2.2} Used for Douglas-fir, white fir, California red fir, Pacific silver fir, and bigcone Douglas-fir.

*DBH* = -0.6096 + (0.2433 \* *HT*)

{4.6.2.3} Used for California live oak, canyon live oak, blue oak, California black oak, valley oak, interior live oak, tanoak, giant chinquapin, quaking aspen, California laurel, Pacific madrone, Pacific dogwood, bigleaf maple, and other hardwood

*DBH* = [-9.92422 / (ln(*HT* – 4.5) – 4.80420)] – 1.0

where:

*DBH* is tree diameter at breast height

*HT* is tree height

Giant sequoia, lodgepole pine, whitebark pine, singleleaf pinyon, knobcone pine, foxtail pine, Coulter pine, limber pine, California foothill pine, Washoe pine, redwood, western juniper, Utah juniper, and California juniper use the same height-diameter relationship discussed for these species in section 4.1, solved for diameter as a function of height.

Great Basin bristlecone pine uses equation {4.6.2.4}.

{4.6.2.4} *DBH* = 10 \* (*HT* – 4.5) / (*SI* – 4.5)

where:

*DBH* is tree diameter at breast height

*HT* is tree height

*SI* is site index

Curl-leaf mountain mahogany uses the inventory equation discussed in section 4.1 to calculate the two diameters as discussed at the beginning of this section. If calibration of the height-diameter curve is turned off or does not take place, equation {4.6.2.5} is used to calculate a direct estimate of diameter growth.

{4.6.2.5} *DG* = 0.1 \* *HTG*

where:

*DG* is estimated tree diameter growth

*HTG* is estimated tree height growth

## 4.7 Large Tree Growth Relationships

Trees are considered “large trees” for FVS modeling purposes when they are equal to, or larger than, some threshold diameter. In the WS variant, this threshold diameter is set to 99.0” for Great Basin bristlecone pine and 3.0” for all other species.

The large-tree model is driven by diameter growth meaning diameter growth is estimated first, and then height growth is estimated from diameter growth and other variables. These relationships are discussed in the following sections. Great Basin bristlecone pine uses the equations discussed in section 4.6 for trees of all sizes and is not discussed in this section.

### 4.7.1 Large Tree Diameter Growth

The large tree diameter growth model used in most FVS variants is described in section 7.2.1 in Dixon (2002). For most variants, instead of predicting diameter increment directly, the natural log of the periodic change in squared inside-bark diameter (ln(*DDS*)) is predicted (Dixon 2002; Wykoff 1990; Stage 1973; and Cole and Stage 1972). For variants predicting diameter increment directly, diameter increment is converted to the *DDS* scale to keep the FVS system consistent across all variants.

The WS variant predicts diameter growth using equation {4.7.1.1} for sugar pine, incense cedar, ponderosa pine, western white pine, Monterey pine, mountain hemlock, and other softwood trees of all sizes, and Douglas-fir, white fir, Jeffrey pine, Pacific silver fir, and bigcone Douglas-fir with a DBH greater than or equal to 10.0”. Equation {4.7.1.2} is used to estimate an adjustment factor to more closely represent observed growth data for incense cedar. Coefficients for equation {4.7.1.1} are shown in tables 4.7.1.1 – 4.7.1.3.

{4.7.1.1} ln(*DDS)* = b1 + (b2 \* *EL*) + (b3 \* *EL*^2) + (b4 \* ln(*SI*)) + (b5 \* sin(*ASP*) \* *SL*) + (b6 \* cos(*ASP*) \* *SL*) + (b7 \* *SL*) + (b8 \* *SL*^2) + (b9 \* ln(*DBH*)) + (b10 \* *CR*) + (b11 \* *CR*^2) + (b12 \* *DBH*^2) + (b13 \* *BAL* / (ln(*DBH* + 1.0))) + (b14 \* *PCCF*) + (b15 \* ln(*BA*)) + b16 + *CADJ*

{4.7.1.2} Adjustment factor equation for IC (CADJ = 0.0 for all other species)

*CADJ* = 0.30 \* (0.80 + 0.004 \* (*SI* – 50))

where:

*DDS* is the square of the 10-year diameter growth increment

*EL* is stand elevation in hundreds of feet

*SI* is species site index

*ASP* is stand aspect

*SL* is stand slope

*CR* is crown ratio expressed as a proportion

*DBH* is tree diameter at breast height

*BAL* is total basal area in trees larger than the subject tree

*PCCF* is crown competition factor on the inventory point where the tree is established

*BA* is total stand basal area

*CADJ* is an adjustment factor for incense cedar

b1 is a location-specific coefficient shown in table 4.7.1.2

b2- b16 are species-specific coefficients shown in table 4.7.1.1

**Table 4.7.1.1 Coefficients (b2 – b16) for equation 4.7.1.1 in the WS variant.**

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Coefficient** | **Species Code** | | | | | | |
| **SP, WP, MH** | **DF, BD** | **WF, SF** | **IC** | **JP** | **PP, MP** | **OS** |
| b2 | 0.01919 | 0.00489 | 0 | -0.00919 | 0.00304 | 0.00323 | 0 |
| b3 | -0.00025 | 0 | 0 | 0.00019 | 0 | 0 | 0 |
| b4 | 0.5827 | 0.504 | 0.526 | 0.3737 | 0.96412 | 0.6828 | 0.4401 |
| b5 | -0.0035 | 0 | -0.1183 | 0 | 0.05342 | 0.09668 | 0 |
| b6 | 0.01664 | 0 | -0.1804 | 0 | -0.16447 | 0.26986 | 0 |
| b7 | 0.7603 | 0 | 0 | 0 | -0.05469 | 0.90804 | 0 |
| b8 | -2.2339 | 0 | 0 | 0 | 0 | -2.04028 | 0 |
| b9 | 1.0857 | 0.8641 | 1.2854 | 1.29079 | 0.51047 | 0.96103 | 1.1783 |
| b10 | 0.391 | 0.4246 | -1.0191 | -0.0906 | 0.91422 | 0.4126 | 0.9492 |
| b11 | 0 | 0 | 0.9104 | 0 | 0.27758 | 0 | 0 |
| b12 | -0.000288 | -0.00029 | -0.000584 | -0.00061 | -0.000222 | -0.000375 | -0.00066 |
| b13 | -0.00579 | -0.01127 | -0.00628 | -0.00544 | -0.01282 | -0.01265 | -0.00016 |
| b14 | -0.00058 | -0.00018 | -0.00091 | -0.00098 | -0.00099 | -0.00084 | 0 |
| b15 | -0.1313 | 0 | -0.21056 | -0.23182 | -0.0188 | -0.1431 | -0.327 |
| b16 | 0 | 0 | – 0.15032 | 0 | 0 | 0 | 0 |

**Table 4.7.1.2 b1 values by location class for equation {4.7.1.1} in the WS variant.**

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Location Class** | **Species Code** | | | | | | |
| **SP, WP, MH** | **DF, BD** | **WF, SF** | **IC** | **JP** | **PP, MP** | **OS** |
| 1 | -0.70344 | -0.526 | 0.0755 | 0.02786 | -1.81306 | -0.8882 | -0.02772 |
| 2 | -0.90272 | -0.9842 | -0.3099 | 0.21393 | 0 | -1.0712 | 0.1327 |
| 3 | 0 | 0 | -0.044 | -0.04927 | 0 | 0 | 0 |

**Table 4.7.1.3 Location class by species index and location code for equation {4.7.1.1} in the WS variant.**

| **Location Code – USDA**  **National Forest** | **Species Code** | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **SP, WP, MH** | **DF, BD** | **WF, SF** | **IC** | **JP** | **PP, MP** | **OS** |
| 503 – Eldorado  519 – Lake Tahoe Basin Mgmt Unit | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 511 – Plumas | 2 | 1 | 2 | 1 | 1 | 2 | 1 |
| 513 – Sequoia  501 – Angeles  502 – Cleveland  504 – Inyo  507 – Los Padres  512 – San Bernadino | 2 | 2 | 3 | 2 | 1 | 2 | 1 |
| 515 – Sierra | 2 | 1 | 3 | 3 | 1 | 1 | 1 |
| 516 – Stanislaus | 1 | 1 | 1 | 1 | 1 | 2 | 2 |
| 517 – Tahoe | 2 | 1 | 3 | 1 | 1 | 1 | 1 |

Diameter growth for California red fir with diameter greater than or equal to 10.0” is predicted using equation {4.7.1.3}. Coefficients for equation {4.7.1.3} are shown in tables 4.7.1.4 and 4.7.1.5.

{4.7.1.3} ln(*DDS)* = b1 + (b2 \* *EL*) + (b3 \* *SI*) + (b4 \* *SL*^2) + (b5 \* ln(*DBH*)) + (b6 \* (*DBH*^2 / 1000)) + (b7 \* (*PBAL* / (ln(*DBH* + 1.0) \* 100))) + (b8 \* ln(P*BA*)) + (b9 \* *CRID*)

{4.7.1.4} *CRID* = (ICR^2) / (ln(DBH + 1) \* 1000)

where:

*DDS* is the square of the 10-year diameter growth increment

*EL* is stand elevation in hundreds of feet

*SI* is species site index

*SL* is stand slope

*DBH* is tree diameter at breast height

*PBAL* is total basal area in trees larger than the subject tree on the inventory point where the tree is located

*PBA* is total stand basal area on the inventory point where the tree is located

*ICR* is tree crown ratio expressed as a percent

*CRID* is a transformation of crown ratio and tree diameter (equation {4.7.1.4})

b1 is a location-specific coefficient shown in table 4.7.1.5

b2- b9 are species-specific coefficients shown in table 4.7.1.4

**Table 4.7.1.4 Coefficients (b2 – b9) for equation 4.7.1.3 in the WS variant.**

|  |  |  |
| --- | --- | --- |
| **Coefficient** | **Species Code** | |
|  | **RF** |
| b2 |  | -0.007 |
| b3 |  | 0.00734 |
| b4 |  | -0.834 |
| b5 |  | 1.53339 |
| b6 |  | -0.47442 |
| b7 |  | -0.44256 |
| b8 |  | -0.12359 |
| b9 |  | 0.35739 |

**Table 4.7.1.5 b1 values by latitude for equation {4.7.1.3} in the WS variant.**

|  |  |  |
| --- | --- | --- |
| **Latitude** | **Species Code** | |
|  | **RF** |
| <u><</u> 35 |  | 0.1434 |
| 36 |  | 0.3191 |
| 37 |  | 0.1434 |
| 38 |  | 0.2246 |
| <u>></u>39 |  | 0.1434 |

The WS variant predicts diameter growth using equation {4.7.1.5} for Douglas-fir, white fir, Jeffrey pine, California red fir, Pacific silver fir, and bigcone Douglas-fir with a DBH less than 10.0”. Coefficients for equation {4.7.1.5} are shown in tables 4.7.1.6 – 4.7.1.8.

{4.7.1.5} ln(*DDS)* = b1 + (b2 \* *EL*) + (b3 \* ln(*SI*)) + (b4 \* sin(*ASP*) \* *SL*) + (b5 \* cos(*ASP*) \* *SL*) + (b6 \* *SL*) + (b7 \* ln(*DBH*)) + (b8 \* *CR*) + (b9 \* ln(*BA*)) + (b10 \* *BAL* / (ln(*DBH* + 1.0))) + (b11 \* *PCCF*)

where:

*DDS* is the square of the 10-year diameter growth increment

*EL* is stand elevation in hundreds of feet

*SI* is species site index

*ASP* is stand aspect

*SL* is stand slope

*CR* is crown ratio expressed as a proportion

*DBH* is tree diameter at breast height

*BAL* is total basal area in trees larger than the subject tree

*PCCF* is crown competition factor on the inventory point where the tree is established

*BA* is total stand basal area

b1 is a location-specific coefficient shown in table 4.7.1.7

b2- b11 are species-specific coefficients shown in table 4.7.1.6

**Table 4.7.1.6 Coefficients (b2 – b11) for equation 4.7.1.5 in the WS variant.**

|  |  |  |
| --- | --- | --- |
| **Coefficient** | **Species Code** | |
| **DF, WF, RF, SF, BD** | **JP** |
| b2 | 0 | -0.00164 |
| b3 | 0.233713 | 0.40657 |
| b4 | 0 | 0.26785 |
| b5 | 0 | -0.14671 |
| b6 | 0 | 0.56709 |
| b7 | 1.64163 | 1.23864 |
| b8 | 0 | 0.64311 |
| b9 | -0.52776 | -0.48754 |
| b10 | -0.00205 | -0.00189 |
| b11 | -0.00105 | -0.00096 |

**Table 4.7.1.7 b1 values by location class for equation {4.7.1.5} in the WS variant.**

|  |  |  |
| --- | --- | --- |
| **Location Class** | **Species Code** | |
| **DF, WF, RF, SF, BD** | **JP** |
| 1 | 1.53962 | 0.74162 |
| 2 | 0 | 0.59493 |
| 3 | 0 | 0.854515 |

**Table 4.7.1.8 Location class by species index and location code for equation {4.7.1.5} in the WS variant.**

| **Location Code – USDA**  **National Forest** | **Species Code** | |
| --- | --- | --- |
| **DF, WF, RF, SF, BD** | **JP** |
| 503 – Eldorado  519 – Lake Tahoe Basin Mgmt Unit | 1 | 1 |
| 511 – Plumas | 1 | 2 |
| 513 – Sequoia  502 – Cleveland  504 – Inyo  507 – Los Padres  512 – San Bernadino | 1 | 1 |
| 501 – Angeles | 1 | 3 |
| 515 – Sierra | 1 | 1 |
| 516 – Stanislaus | 1 | 1 |
| 517 – Tahoe | 1 | 1 |

Diameter growth is predicted using equations {4.7.1.6} and {4.7.1.7} for California live oak, canyon live oak, blue oak, California black oak, valley oak, interior live oak, tanoak, giant chinquapin, quaking aspen, California laurel, Pacific madrone, Pacific dogwood, bigleaf maple, and other hardwood. Coefficients for equation {4.7.1.7} are shown in table 4.7.1.9.

{4.7.1.6} ln(*DDS)* = ln(e^(*TDDS*) \* 2)

{4.7.1.7} *TDDS* = b1 + (b2 \* ln(*SI*)) + (b3 \* sin(*ASP*) \* *SL*) + (b4 \* cos(*ASP*) \* *SL*) + (b5 \* *SL*) + (b6 \* *SL*^2) + (b7 \* ln(*DBH*)) + (b8 \* *CR*) + (b9 \* *CR*^2) + (b10 \* *DBH*^2) + (b11 \* *BAL* / (ln(*DBH* + 1.0))) + (b12 \* *PCCF*) + (b13 \* *RELHT*)

where:

*DDS* is the square of the 10-year diameter growth increment

*TDDS* is the natural logarithm of the square of the 5-year diameter growth increment

*SI* is species site index

*ASP* is stand aspect

*SL* is stand slope

*CR* is crown ratio expressed as a proportion

*DBH* is tree diameter at breast height

*BAL* is total basal area in trees larger than the subject tree

*PCCF* is crown competition factor on the inventory point where the tree is established

*RELHT* is tree height divided by average height of the 40 largest diameter trees in the stand

b1- b13 are species-specific coefficients shown in table 4.7.1.9

**Table 4.7.1.9 Coefficients (b1 – b13) for equation 4.7.1.7 in the WS variant.**

| **Coefficient** | **Species Code** | |
| --- | --- | --- |
| **LO, CY, BL, BO, VO, IO, BM, OH** | **TO, GC, AS, CL, MA, DG** |
| b1 | -2.68349 | -0.94563 |
| b2 | 0.32093 | 0.012 |
| b3 | -0.11954 | -0.03587 |
| b4 | 0.08632 | -0.19935 |
| b5 | 0.85815 | 0.7353 |
| b6 | -1.17209 | -0.99561 |
| b7 | 1.23911 | 0.99531 |
| b8 | -1.20841 | 2.08524 |
| b9 | 2.31782 | -0.98396 |
| b10 | -0.000338 | -0.000373 |
| b11 | -0.00199 | -0.00147 |
| b12 | 0 | -0.0018 |
| b13 | 0 | 0.50155 |

Diameter growth for curl-leaf mountain mahogany of all sizes is predicted using equation {4.7.1.8}.

{4.7.1.8} ln(*DDS)* = -0.107648 + (-0.75986\* *EL*) + (0.001193 \* *EL*^2) + (0.227307 \* ln(*SI*)) + (-0.86398 \* sin(*ASP*) \* *SL*) + (0.085958 \* cos(*ASP*) \* *SL*) + (0.889596 \* ln(*DBH*)) + (1.732535 \* *CR*) + (-0.001265 \* *BAL* / (ln(*DBH* + 1.0))) + (-0.000981 \* *BA*)

Large tree diameter growth for lodgepole pine, whitebark pine, singleleaf pinyon, knobcone pine, foxtail pine, Coulter pine, limber pine, California foothill pine, Washoe pine, western juniper, Utah juniper, and California juniper is predicted using equation {4.7.1.9}. Coefficients for equation {4.7.1.9} are shown in table 4.7.1.10.

{4.7.1.9} *DDS* = b1 + (b2 \* ln(*SI*)) + (b3 \* sin(*ASP*) \* *SL*) + (b4 \* cos(*ASP*) \* *SL*) + (b5 \* ln(*DBH*)) + (b6 \* *CR*) + (b7 \* *CR*^2) + (b8 \* *DBH*^2) + (b9 \* *PCCF*) + (b10 \* ln(*BA*)) + (b11 \* *BAL*)

where:

*DDS* is the square of the diameter growth increment

*SI* is species site index

*ASP* is stand aspect

*SL* is stand slope

*CR* is crown ratio expressed as a proportion

*DBH* is tree diameter at breast height

*BAL* is total basal area in trees larger than the subject tree

*PCCF* is crown competition factor on the inventory point where the tree is established

*BA* is total stand basal area

*BAL* is total stand basal area in trees larger than the subject tree

b1- b11 are species-specific coefficients shown in table 4.7.1.10

**Table 4.7.1.10 Coefficients (b1 – b11) for equation 4.7.1.9 in the WS variant.**

| **Coefficient** | **Species Code** | |
| --- | --- | --- |
| **LP, WB** | **PM, KP, FP, CP, LM, GP, WE, WJ, UJ, CJ** |
| b1 | -2.05883 | 0.56440 |
| b2 | 0.566946 | 0 |
| b3 | 0 | 0.951834 |
| b4 | 0 | 0.64987 |
| b5 | 1.218279 | 1.077154 |
| b6 | 3.167164 | -0.276387 |
| b7 | -1.568333 | 1.063732 |
| b8 | -0.001418 | 0 |
| b9 | -0.000338 | 0 |
| b10 | -0.267873 | 0 |
| b11 | 0 | -0.000893 |

Diameter growth for Great Basin bristlecone pine is estimated using the equations shown in section 4.6.2 for trees of all sizes.

For sugar pine, Douglas-fir, white fir, incense cedar, Jeffrey pine, California red fir, ponderosa pine, western white pine, Pacific silver fir, Monterey pine, bigcone Douglas-fir, mountain hemlock, California live oak, canyon live oak, blue oak, California black oak, valley oak, interior live oak, bigleaf maple, other softwood, and other hardwood, the 10-year *DDS* estimate is bounded to not exceed a maximum value computed with equation {4.7.1.10} with coefficients shown in table 4.7.1.11.

{4.7.1.10} *DDSMAX* = a1 + a2 \* (ln*(CR) \* DBH*)

where:

*DDSMAX* is the maximum 10-year ln(*DDS*) allowed for the tree

*CR* is tree crown ratio expressed as a percent

*DBH* is tree diameter at breast height

a1 - a2 are coefficients shown in table 4.7.1.11

**Table 4.7.1.11 Coefficients for the maximum ln(*DDS*) equation in the WS variant.**

| **Species Code** | **a1** | **a2** |
| --- | --- | --- |
| SP, WP, MH | -3.91 | 1.42 |
| DF, BD | -3.06 | 1.27 |
| WF, RF, SF | -2.81 | 1.24 |
| IC, LO, CY, BL, BO, VO, IO, BM, OH | -2.20 | 1.08 |
| JP, OS | -3.71 | 1.25 |
| PP, MP | -2.07 | 1.09 |

Diameter growth for giant sequoia and redwood is predicted using equation {4.7.1.11}.

{4.7.1.11} *DI* = exp(-3.502444 + (0.185911 \* ln(*DBH*)) + (-0.000073 \* *DBH*^2) + (-0.001796 \* *PBAL*) + (- 0.42078 \* *PRD*) + (0.589318 \* ln(*CR*)) + (0.415435 \* ln(*SI*)) + (-0.000926 \* *SL*) + (- 0.002203 \* (*SL*) \* COS(*ASP*)))

where:

*DI* is 10-year outside bark diameter growth increment

*SI* is species site index

*ASP* is stand aspect

*SL* is stand slope

*CR* is crown ratio expressed as a proportion

*DBH* is tree diameter at breast height

*PBAL* is point basal area in trees larger than the subject tree

*PRD* isrelative density of the inventory point (point Zeide SDI / point SDI max)

For some species, diameter growth is checked to make sure diameter growth is between zero and a maximum allowed value, set by equation {4.7.1.12} by Dolph and Dixon (1993). If diameter growth exceeds the estimate in equation {4.7.1.12}, diameter growth is set to the maximum growth allowed.

{4.7.1.12} *DGMax* = a1 \* (*DBH*^a2) \* exp(a3\**DBH*)

where:

DGMaxis maximum diameter growth allowed

DBH is tree diameter at breast height

a1 – a3 are species-specific coefficients shown in table 4.7.1.12

**Table 4.7.1.12. Coefficients for the maximum diameter growth equation in the WS variant.**

| **Species**  **Code** | **a1** | **a2** | **a3** | **Species**  **Code** | **a1** | **a2** | **a3** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| SP | 4.9094 | 0.4678 | -0.04365 | BL | 1.9557 | 0.4655 | -0.05613 |
| DF | 1.8388 | 0.7319 | -0.05194 | BO | 1.9557 | 0.4655 | -0.05613 |
| WF | 3.8681 | 0.5043 | -0.04492 | VO | 1.9557 | 0.4655 | -0.05613 |
| IC | 1.9557 | 0.4655 | -0.05613 | IO | 1.9557 | 0.4655 | -0.05613 |
| JP | 3.7202 | 0.386 | -0.03852 | TO | 1.9557 | 0.4655 | -0.05613 |
| RF | 3.8681 | 0.5043 | -0.04492 | GC | 1.9557 | 0.4655 | -0.05613 |
| PP | 3.7202 | 0.386 | -0.03852 | AS | 1.9557 | 0.4655 | -0.05613 |
| WP | 4.9094 | 0.4678 | -0.04365 | CL | 1.9557 | 0.4655 | -0.05613 |
| SF | 3.8681 | 0.5043 | -0.04492 | MA | 1.9557 | 0.4655 | -0.05613 |
| MP | 3.7202 | 0.386 | -0.03852 | DG | 1.9557 | 0.4655 | -0.05613 |
| BD | 1.8388 | 0.7319 | -0.05194 | BM | 1.9557 | 0.4655 | -0.05613 |
| MH | 4.9094 | 0.4678 | -0.04365 | OS | 3.7202 | 0.386 | -0.03852 |
| LO | 1.9557 | 0.4655 | -0.05613 | OH | 1.9557 | 0.4655 | -0.05613 |
| CY | 1.9557 | 0.4655 | -0.05613 |  |  |  |  |

### 4.7.2 Large Tree Height Growth

The height growth equations used in the WS variant depends on species. The equation used for sugar pine, Douglas-fir, white fir, incense cedar, Jeffrey pine, California red fir, ponderosa pine, western white pine, Pacific silver fir, Monterey pine, bigcone Douglas-fir, mountain hemlock, California live oak, canyon live oak, blue oak, California black oak, valley oak, interior live oak, tanoak, giant chinquapin, quaking aspen, California laurel, Pacific madrone, Pacific dogwood, bigleaf maple, other softwood, and other hardwoodwas developed by Dolph (1988), and is shown in equation {4.7.2.1}. Coefficients for this equation are shown in table 4.7.2.1.

{4.7.2.1} *HTG* = [*LAT* + (b1 \* *EL*) + (b2 \* *EL*^2) + (b3 \* *SL*) + (b4 \* *SI*) + (b5 \* *DG*) + (b6 \* *DG*^0.5) + (b7 \* *BA*) + (b8 \* *BAI*) + (b9 \* ln(*BA*)) + (b10 \* *BAL*) + (b11 \* (*BAL* / *DBH*)) + (b12 \* *CR*) + (b13 \* *DBH*^2)] \* b14

where:

*HTG* is estimated height growth for the cycle

*LAT* is a location dependent latitude coefficient shown in table 4.7.2.2

*EL* is stand elevation in hundreds of feet

*SL* is stand slope

*SI* is species site index

*DG* is estimated 10-year inside-bark diameter growth for the cycle

*BA* is total stand basal area

*BAI* is the basal area increment [*BAI* = (*DBH* + *DG*)^2 – *DBH*^2]

*BAL* is total basal area in trees with a larger diameter than the subject tree

*DBH* is tree diameter at breast height (bounded *DBH* <u>></u> 0.001)

*CR* is a tree’s live crown ratio (compacted) expressed as a percent

b1 - b14 are species-specific coefficients shown in table 4.7.2.1

**Table 4.7.2.1 Coefficients (b1 - b14) for equation 4.7.2.1 in the WS variant.**

| **Coefficient** | **Species Code** | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **OS** | **SP, WP, MH** | **DF, BD** | **WF, SF** | **IC** | **LO, CY, BL, BO, VO, IO, BM, OH** | **JP** | **RF** | **PP, MP** | **TO, GC, AS, CL, MA, DG** |
| b1 | 0 | 0 | 0 | -0.0453 | 0 | 0 | 0 | -0.0453 | 0 | 0 |
| b2 | 0 | 0 | 0 | 0 | -0.0007 | -0.0007 | 0 | 0 | 0 | -0.0007 |
| b3 | 0 | 0 | 0 | 3.218 | 0 | 0 | 0 | 3.218 | 0 | 0 |
| b4 | 0.0687 | 0.0881 | 0.0974 | 0.0713 | 0.0643 | 0.0643 | 0.0687 | 0.0713 | 0.0598 | 0.0643 |
| b5 | 2.962 | 0 | 0 | 0 | 0 | 0 | 2.962 | 0 | 3.7974 | 0 |
| b6 | 0 | 10.189 | 15.382 | 8.7587 | 6.5757 | 6.5757 | 0 | 8.7587 | 0 | 6.5757 |
| b7 | 0 | 0 | -0.0285 | 0 | 0.008 | 0.008 | 0 | 0 | 0 | 0.008 |
| b8 | 0 | 0 | -0.0694 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b9 | 0 | 1.2845 | 6.119 | 1.2324 | 0 | 0 | 0 | 1.2324 | 1.4843 | 0 |
| b10 | 0 | 0 | 0 | 0 | -0.0079 | -0.0079 | 0 | 0 | -0.0142 | -0.0079 |
| b11 | 0 | 0 | 0 | -0.0399 | 0 | 0 | 0 | -0.0399 | 0 | 0 |
| b12 | 0 | 0 | 0 | 0.0363 | 0 | 0 | 0 | 0.0363 | 0 | 0 |
| b13 | -0.0082 | -0.0098 | 0 | -0.0098 | 0 | 0 | -0.0082 | -0.0098 | -0.0086 | 0 |
| b14 | 1.50 | 1.00 | 1.25 | 1.50 | 1.20 | 1.00 | 1.50 | 1.20 | 1.15 | 0.75 |

**Table 4.7.2.2 *LAT* values by latitude for equation {4.7.2.1} in the WS variant.**

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Latitude** | **Species Code** | | | | | | | | | |
| **OS** | **SP, WP, MH** | **DF, BD** | **WF, SF** | **IC** | **LO, CY, BL, BO, VO, IO, BM, OH** | **JP** | **RF** | **PP, MP** | **TO, GC, AS, CL, MA, DG** |
| 35 | -0.268 | -14.053 | -39.027 | -12.246 | -3.831 | -3.831 | -0.268 | -12.246 | -5.554 | -3.831 |
| 36 | -0.268 | -14.053 | -39.027 | -10.685 | 1.711 | 1.711 | -0.268 | -10.685 | -5.554 | 1.711 |
| 37 | -0.268 | -14.053 | -39.027 | -10.685 | -3.831 | -3.831 | -0.268 | -10.685 | -5.554 | -3.831 |
| 38 | 3.097 | -14.053 | -39.027 | -10.685 | -2.898 | -2.898 | 3.097 | -10.685 | -4.282 | -2.898 |
| 39 | -0.268 | -14.053 | -39.027 | -10.685 | -3.831 | -3.831 | -0.268 | -10.685 | -5.554 | -3.831 |

Two checks are done after computing height growth in order to limit the maximum height growth. Jeffrey pine and other softwood have their maximum height growth limited by equation {4.7.2.2}. Equation {4.7.2.3} affects all species and predicts maximum height for a given diameter and is used to limit height growth by checking to make sure current height plus height growth does not exceed the maximum height for that diameter. Species specific coefficients for equation {4.7.2.3} are shown in table 4.7.2.3.

{4.7.2.2} Used as a check for Jeffrey pine and other softwood

*MAXHTG* = –2.16 + (4.22 \* ln(*BAI*))

{4.7.2.3} Used as a check for sugar pine, Douglas-fir, white fir, incense cedar, Jeffrey pine, California red fir, ponderosa pine, western white pine, Pacific silver fir, Monterey pine, bigcone Douglas-fir, mountain hemlock, California live oak, canyon live oak, blue oak, California black oak, valley oak, interior live oak, tanoak, giant chinquapin, quaking aspen, California laurel, Pacific madrone, Pacific dogwood, bigleaf maple, other softwood, and other hardwood

*HTmax* = exp(A + B / (*DBH* + *DG* + 1.0)^C]) + 4.5

Equation {4.7.2.4} is used to keep height and diameter growth estimates consistent with each other for large trees. For trees with *DBH* > 30”, if the estimated 10-year inside-bark diameter growth is less than 1.0 for the cycle, then equation {4.7.2.4} is used to limit the height growth to prevent unusually large height growth on large trees with little or no diameter growth.

{4.7.2.4} Used as a modification for sugar pine, Douglas-fir, white fir, incense cedar, Jeffrey pine, California red fir, ponderosa pine, western white pine, Pacific silver fir, Monterey pine, bigcone Douglas-fir, mountain hemlock, California live oak, canyon live oak, blue oak, California black oak, valley oak, interior live oak, tanoak, giant chinquapin, quaking aspen, California laurel, Pacific madrone, Pacific dogwood, bigleaf maple, other softwood, and other hardwood when *DBH* > 30” and *DG* < 1.0

*HTG* = *HTG* \* *DG*

where:

*MAXHTG* is the maximum height growth for the tree

*BAI* is the basal area increment, *BAI* = (*DBH* + *DG*) 2 – *DBH*2

*HTmax* is the estimated maximum height for the tree relative to the tree *DBH*

*DBH* is tree diameter at breast height

*DG* is estimated 10-year inside-bark diameter growth for the cycle

A, B, C are species-specific coefficients for equation {4.7.2.3} shown in table 4.7.2.3

The final height growth estimate is bounded to be greater than or equal to 0.1 foot.

**Table 4.7.2.3 Coefficients (A, B, and C) for equation {4.7.2.3} in the WS variant.**

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Coefficient** | **Species Code** | | | | | | | | | |
| **OS** | **SP, WP, MH** | **DF, BD** | **WF, SF** | **IC** | **LO, CY, BL, BO, VO, IO, BM, OH** | **JP** | **RF** | **PP, MP** | **TO, GC, AS, CL, MA, DG** |
| A | 5.4916 | 5.4918 | 5.4191 | 5.4283 | 5.2011 | 4.6570 | 5.4916 | 5.4283 | 5.4916 | 5.2011 |
| B | -9.5992 | -12.6438 | -8.8274 | -9.1641 | -7.7610 | -21.9333 | -9.5992 | -9.1641 | -9.5992 | -7.7610 |
| C | 1.0 | 1.0 | 1.0 | 1.0 | 1.0 | 2.0 | 1.0 | 1.0 | 1.0 | 1.0 |

For curl-leaf mountain mahogany, if tree height at the beginning of the projection cycle is greater than or equal to the maximum species height of 20 feet, then height growth is computed using equation {4.7.2.5} and adjusted for cycle length and user supplied growth multipliers.

{4.7.2.5} *HTG* = 0.1

where:

*HTG* is estimated 10-year tree height growth

For curl-leaf mountain mahogany, when tree height at the beginning of the projection cycle is less than the maximum species height, but the estimated tree age at the beginning of the projection cycle is greater than the species maximum age of 400, height growth is calculated using equation {4.7.2.6} and adjusted for cycle length and user supplied growth multipliers.

{4.7.2.6} *HTG* = 0.1 \* *HTGMOD*

where:

*HTG* is estimated 10-year tree height growth

*HTGMOD* is the weighted height growth multiplier shown below

For curl-leaf mountain mahogany, when estimated tree age at the beginning of the projection cycle is less than or equal to the species maximum age and tree height at the beginning of the projection cycle is less than the species maximum height, then potential height growth is obtained by subtracting estimated current height from an estimated future height. Potential height growth is then adjusted according to the tree’s crown ratio and height relative to other trees in the stand.

Estimated current height (ECH) and estimated future height (H10) are both obtained using equation {4.7.2.7} (Curtis et al, 1974). Estimated current height is obtained using estimated tree age at the start of the projection cycle and site index. Estimated future height is obtained using estimated tree age at the start of the projection cycle plus 10-years and site index.

{4.7.2.7} *H*  = [(*SI* – 4.5) / [b0+ (b1 / (*SI* – 4.5))] + [*A*^-1.4\* (b2 + (b3 / (*SI* – 4.5)))]] + 4.5

where:

*H* is estimated height of the tree

*SI* is species site index

*A* is estimated age of the tree

b0 = 0.6192, b1 = -5.3394, b2 = 240.29, b3 = 3368.9

Potential height growth is estimated using equation {4.7.2.8}. Height increment is computed using equation {4.7.2.9} and adjusted for cycle length and user supplied growth multipliers.

{4.7.2.8} POTHTG = H10 – ECH

{4.7.2.9} *HTG* = *POTHTG* \* *HTGMOD*

where:

*POTHTG* is potential height growth

*H10* is estimated height of the tree in ten years

*ECH* is estimated height of the tree at the beginning of the cycle

*HTG* is estimated 10-year tree height growth (bounded 0.1 <u><</u> HTG)

*HTGMOD* is the weighted height growth multiplier shown below

The potential height growth modifier, HTGMOD, is based upon a tree’s crown ratio (equation {4.7.2.10}), and relative height and shade tolerance (equation {4.7.2.11}). Equation {4.7.2.12} uses the Generalized Chapman – Richard’s function (Donnelly et. al, 1992) to calculate a height-growth modifier. Final height growth is calculated using equation {4.7.2.13} as a product of the modifier and potential height growth.

{4.7.2.10} *HGMDCR* = (100 \* (*CR*)^3) \* exp (-5 \* (*CR*))

{4.7.2.11} *HGMDRH* = [1 + ((1 / b1)^(b2 - 1) – 1) \* exp ((-1 \* (b3 / (1 – b4)) \* *RELHT^*(1 – b4))^(-1 / (b2 - 1))

{4.7.2.12} *HTGMOD* = (0.25 \* *HGMDCR*) + (0.75 \* *HGMDRH*)

{4.7.2.13} *HTG* = *POTHTG* \* *HTGMOD*

where:

*POTHTG* is potential 10-year height growth

*HGMDCR* is a height growth modifier based on crown ratio, bounded so HGMDCR ≤ 1.0

*HGMDRH* is a height growth modifier based on relative height and shade tolerance

*HTGMOD* is a weighted height growth modifier, bounded 0.1 ≤ HTGMOD <u><</u> 2.0

*CR* is crown ratio expressed as a proportion

*RELHT* is tree height divided by average height of the 40 largest diameter trees in the stand (bounded so that *RELHT* <u><</u> 1.5)

b1 = 0.1, b2 = 1.1, b3 = 15.0, b4 = -1.45

Lodgepole pine, whitebark pine, singleleaf pinyon, knobcone pine, foxtail pine, Coulter pine, limber pine, California foothill pine, Washoe pine, western juniper, Utah juniper, and California juniper use Dunning/Levitan site curves, equation {4.7.2.14}, to estimate large tree height growth. Using the species site index and tree height at the beginning of the projection cycle, an estimated tree age is computed using the site index curves. Estimated current height (ECH) and estimated future height (H10) are both obtained using equation {4.7.2.14}. Estimated current height is obtained using estimated tree age at the start of the projection cycle and site index. Estimated future height is obtained using estimated tree age at the start of the projection cycle plus 10-years and site index. Height increment is obtained by subtracting estimated current height from estimated future height, then adjusting the difference according to tree’s crown ratio and height relative to other trees in the stand.

{4.7.2.14} Dunning/Levitan site curves

*A* > 40: *HT*  = D1 + D2 \* ln(*A*)

*A* <u><</u> 40: *HT*  = D3 \* *A*

where:

*HT* is total height of the tree

*A* is estimated tree age

D1 – D3 are coefficients based on Region 5 site codes shown in table 4.7.2.4

**Table 4.7.2.4 Coefficients for the Dunning/Levitan site curves, nominal site index by site class, and range of site values for which the coefficients are used in the WS variant.**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Region 5**  **Site Class** | **Nominal**  **Site Index** | **Site Index**  **Range Used** | **D1** | **D2** | **D3** |
| 0 | 106 | 99+ | -88.9 | 49.7067 | 2.375 |
| 1 | 90 | 83 - 98 | -82.2 | 44.1147 | 2.025 |
| 2 | 75 | 66 - 82 | -78.3 | 39.1441 | 1.650 |
| 3 | 56 | 53 - 65 | -82.1 | 35.4160 | 1.225 |
| 4 | 49 | 45 - 52 | -56.0 | 26.7173 | 1.075 |
| 5-7 | 39 | 0 - 44 | -33.8 | 18.6400 | 0.875 |

Potential 10-year height growth (*POTHTG*) is calculated using equation {4.7.2.8}. Modifiers are applied to the potential height growth based upon a tree’s crown ratio (equation {4.7.2.15}) and relative height (equation {4.7.2.16}). Equation {4.7.2.17} calculates a height-growth modifier by combining the crown ratio and relative height modifiers. Final height growth is calculated using equation {4.7.2.18} as a product of the modifier and potential height growth.

{4.7.2.15} *HGMDCR* = 1 – exp(-4.26558 \* *CR*)

{4.7.2.16} *HGMDRH* = e ^ [2.54119 \* (*RELHT*^0.250537 – 1.0)]

{4.7.2.17} *HTGMOD* = 1.016605 \* *HGMDCR* \* *HGMDRH*

{4.7.2.18} *HTG* = *POTHTG* \* *HTGMOD*

where:

*POTHTG* is potential height growth

*HGMDCR* is a height growth modifier based on crown ratio

*HGMDRH* is a height growth modifier based on relative height and shade tolerance

*HTGMOD* is a weighted height growth modifier

*CR* is crown ratio expressed as a proportion

*RELHT* is tree height divided by average height of the 40 largest diameter trees in the stand (bounded so *RELHT* <u><</u> 1.0; if crown competition factor for the point on which the tree is located is less than 100, then *RELHT* is set equal to 1.0)

The large tree height growth estimate for all species is adjusted for cycle length and user supplied growth modifiers.

Height growth for Great Basin bristlecone pine of all sizes is estimated using the small tree logic described in section 4.6.

Equation {4.7.2.19} is used to predict 10-year height increment for giant sequoia and redwood. The final height growth is then adjusted to the length of the cycle.

{4.7.2.19} *HTG* = exp(1.412947+ (-0.000204 \* *DBH*^2) + (0.31971 \* ln(DBH)) + (0.394005 \* ln(SI)) + (-(0.399888 \* (ln(DG10)) + (-0.451708 \* ln(HT))

where:

*HTG* is 10-year height growth increment

*DBH* is diameter at breast height

*SI* is species site index

*DG10* is 10-year outside bark diameter growth increment

*HT* is total tree height

A height growth bounding function is used to ensure tree heights do not exceed the height maximum of giant sequoia and redwood. The bounding function is applied using the following concepts. For a tree with height less than the lower height-bounding limit, the height growth modifier is set to 1.0. For a tree with a height greater than or equal to the lower height-bounding limit and less than the upper height-bounding limit, a height growth modifier is computed using equation {4.7.2.20}. For a tree with a height greater than the upper height-bounding limit, the height growth modifier is set to 0.1. The lower bounding limit was determined from the height growth fitting data and the upper bounding limit was determined from literature. The final height increment estimate is multiplied by the bounding function, equation {4.7.2.21}.

{4.7.2.20} *HGBND* = 1.0 – ((*HT* - HTLO) / (*HTHI*- *HTLO*))

{4.7.2.21} *HTG* = *HTG* \* *HGBND*

where:

*HGBND* is height growth bounding modifier, limited to 0.1 <u><</u> *HGBND* <u><</u> 1.0

*HT* is total tree height (ft)

*HTLO* is the lower height-bounding limit (217 ft)

*HTHI* is the upper height-bounding limit (380 ft)

# 5.0 Mortality Model

The WS variant uses an SDI-based mortality model as described in Section 7.3.2 of Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002, referred to as EFVS). This SDI-based mortality model is comprised of two steps: 1) determining the amount of stand mortality (section 7.3.2.1 of EFVS) and 2) dispersing stand mortality to individual tree records (section7.3.2.2 of EFVS). In determining the amount of stand mortality, the summation of individual tree background mortality rates is used when stand density is below the minimum level for density dependent mortality (default is 55% of maximum SDI), while stand level density-related mortality rates are used when stands are above this minimum level.

The equation used to calculate individual tree background mortality rates for all species is shown in equation {5.0.1}, and this is then adjusted to the length of the cycle by using a compound interest formula as shown in equation {5.0.2}. Species mapping and coefficients for these equations are shown in tables 5.0.1 and 5.0.2. The overall amount of mortality calculated for the stand is the summation of the final mortality rate (*RIP*) across all live tree records.

{5.0.1} RI = [1 / (1 + exp(p0 + p1 \* DBH))] \* 0.5

{5.0.2} RIP = 1 – (1 – RI*)*^Y

where:

RI is the proportion of the tree record attributed to mortality

RIP is the final mortality rate adjusted to the length of the cycle

DBH is tree diameter at breast height

Y is length of the current projection cycle in years

p0 and p1 are species-specific coefficients shown in table 5.0.1

**Table 5.1.1 Coefficients used in the background mortality equation {5.0.1} in the WS variant.**

| **Species Code** | **p0** | **p1** |
| --- | --- | --- |
| SP | 6.5112 | -0.0052485 |
| DF | 7.2985 | -0.0129121 |
| WF | 5.1677 | -0.0077681 |
| GS | 2.5968 | 0.51261 |
| IC | 5.1677 | -0.0077681 |
| JP | 9.6943 | -0.0127328 |
| RF | 5.1677 | -0.0077681 |
| PP | 5.5877 | -0.005348 |
| LP | 5.9617 | -0.0340128 |
| WB | 5.9617 | -0.0340128 |
| WP | 6.5112 | -0.0052485 |
| PM | 6.5112 | -0.0052485 |
| SF | 5.1677 | -0.0077681 |
| KP | 6.5112 | -0.0052485 |
| FP | 6.5112 | -0.0052485 |
| CP | 6.5112 | -0.0052485 |
| LM | 6.5112 | -0.0052485 |
| MP | 5.5877 | -0.005348 |
| GP | 6.5112 | -0.0052485 |
| WE | 6.5112 | -0.0052485 |
| GB | 5.1677 | -0.0077681 |
| BD | 7.2985 | -0.0129121 |
| RW | 2.5968 | 0.51261 |
| MH | 6.5112 | -0.0052485 |
| WJ | 6.5112 | -0.0052485 |
| UJ | 6.5112 | -0.0052485 |
| CJ | 6.5112 | -0.0052485 |
| LO | 5.9617 | -0.0340128 |
| CY | 5.9617 | -0.0340128 |
| BL | 5.9617 | -0.0340128 |
| BO | 5.9617 | -0.0340128 |
| VO | 5.9617 | -0.0340128 |
| IO | 5.9617 | -0.0340128 |
| TO | 5.1677 | -0.0077681 |
| GC | 5.1677 | -0.0077681 |
| AS | 5.1677 | -0.0077681 |
| CL | 5.1677 | -0.0077681 |
| MA | 5.1677 | -0.0077681 |
| DG | 5.1677 | -0.0077681 |
| BM | 5.9617 | -0.0340128 |
| MC | 5.9617 | -0.0340128 |
| OS | 6.5112 | -0.0052485 |
| OH | 5.9617 | -0.0340128 |

When stand density-related mortality is in effect, the total amount of stand mortality is determined based on the trajectory developed from the relationship between stand SDI and the maximum SDI for the stand. This is explained in section 7.3.2.1 of EFVS.

Once the amount of stand mortality is determined based on either the summation of background mortality rates or density-related mortality rates, mortality is dispersed to individual tree records in relation to a tree’s percentile in the basal area distribution (*PCT*) using equation {5.0.3}. This value is then adjusted by a species-specific mortality modifier (representing the species’ tolerance) to obtain a final mortality rate as shown in equations {5.0.4} and {5.0.5}.

The mortality model makes multiple passes through the tree records multiplying a record’s trees-per-acre value times the final mortality rate (MORT), accumulating the results, and reducing the trees-per-acre representation until the desired mortality level has been reached. If the stand still exceeds the basal area maximum sustainable on the site, the mortality rates are proportionally adjusted to reduce the stand to the specified basal area maximum.

{5.0.3} *MR* = 0.84525 – (0.01074 \* *PCT*) + (0.0000002 \* *PCT*^3)

{5.0.4} Used for all species except curl-leaf mountain mahogany

*MORT* = *MR* \* *MWT* \* 0.1

{5.0.5} Used for curl-leaf mountain mahogany

*MORT* = = *MR* \* ((100-*CR*)/100) \* *MWT* \* 0.1

where:

*MR* is the proportion of the tree record attributed to mortality (bounded: 0.01 <u><</u> *MR* <u><</u> 1)

*PCT* is the subject tree’s percentile in the basal area distribution of the stand

*MORT* is the final mortality rate of the tree record

*MWT* is a mortality weight value based on a species’ tolerance shown in table 5.0.3

*CR* is tree crown ratio expressed as a percent

**Table 5.0.3 *MWT* values for the mortality equations {5.0.4} and {5.0.5} in the WS variant.**

| **Species Code** | ***MWT*** |
| --- | --- |
| SP | 0.70 |
| DF | 0.65 |
| WF | 0.55 |
| GS | 0.80 |
| IC | 0.60 |
| JP | 0.85 |
| RF | 0.50 |
| PP | 0.85 |
| LP | 0.90 |
| WB | 0.90 |
| WP | 0.70 |
| PM | 0.90 |
| SF | 0.55 |
| KP | 0.90 |
| FP | 0.90 |
| CP | 0.90 |
| LM | 0.90 |
| MP | 0.85 |
| GP | 0.90 |
| WE | 0.90 |
| GB | 0.90 |
| BD | 0.65 |
| RW | 0.80 |
| MH | 0.70 |
| WJ | 0.90 |
| UJ | 0.90 |
| CJ | 0.90 |
| LO | 1.00 |
| CY | 1.00 |
| BL | 1.00 |
| BO | 1.00 |
| VO | 1.00 |
| IO | 1.00 |
| TO | 0.55 |
| GC | 0.55 |
| AS | 0.55 |
| CL | 0.55 |
| MA | 0.55 |
| DG | 0.55 |
| BM | 1.00 |
| MC | 1.10 |
| OS | 0.75 |
| OH | 1.00 |

# 6.0 Regeneration

The WS variant contains a partial establishment model which may be used to input regeneration and ingrowth into simulations. A more detailed description of how the partial establishment model works can be found in section 5.4.5 of the Essential FVS Guide (Dixon 2002).

The regeneration model is used to simulate stand establishment from bare ground, or to bring seedlings and sprouts into a simulation with existing trees. Sprouts are automatically added to the simulation following harvest or burning of known sprouting species (see table 6.0.1 for sprouting species).

**Table 6.0.1 Regeneration parameters by species in the WS variant.**

| **Species Code** | **Sprouting Species** | **Minimum Bud Width (in)** | **Minimum Tree Height (ft)** | **Maximum Tree Height (ft)** |
| --- | --- | --- | --- | --- |
| SP | No | 0.3 | 2.0 | 27.0 |
| DF | No | 0.3 | 2.0 | 21.0 |
| WF | No | 0.3 | 2.0 | 21.0 |
| GS | No | 0.2 | 2.0 | 22.0 |
| IC | No | 0.2 | 2.0 | 20.0 |
| JP | No | 0.3 | 2.0 | 18.0 |
| RF | No | 0.3 | 2.0 | 18.0 |
| PP | No | 0.5 | 2.0 | 17.0 |
| LP | No | 0.4 | 1.0 | 20.0 |
| WB | No | 0.4 | 1.0 | 20.0 |
| WP | No | 0.3 | 2.0 | 27.0 |
| PM | No | 0.5 | 1.0 | 20.0 |
| SF | No | 0.3 | 2.0 | 21.0 |
| KP | No | 0.5 | 1.0 | 20.0 |
| FP | No | 0.5 | 1.0 | 20.0 |
| CP | No | 0.5 | 1.0 | 20.0 |
| LM | No | 0.5 | 1.0 | 20.0 |
| MP | No | 0.5 | 2.0 | 17.0 |
| GP | No | 0.5 | 1.0 | 20.0 |
| WE | No | 0.5 | 1.0 | 20.0 |
| GB | No | 0.4 | 0.5 | 9.0 |
| BD | No | 0.3 | 2.0 | 21.0 |
| RW | Yes | 0.2 | 2.0 | 22.0 |
| MH | No | 0.3 | 2.0 | 27.0 |
| WJ | No | 0.5 | 1.0 | 20.0 |
| UJ | No | 0.5 | 1.0 | 20.0 |
| CJ | No | 0.5 | 1.0 | 20.0 |
| LO | Yes | 0.4 | 2.0 | 24.0 |
| CY | Yes | 0.4 | 2.0 | 24.0 |
| BL | Yes | 0.4 | 2.0 | 24.0 |
| BO | Yes | 0.4 | 2.0 | 24.0 |
| VO | Yes | 0.4 | 2.0 | 24.0 |
| IO | Yes | 0.4 | 2.0 | 24.0 |
| TO | Yes | 0.2 | 2.0 | 22.0 |
| GC | Yes | 0.2 | 2.0 | 22.0 |
| AS | Yes | 0.2 | 2.0 | 22.0 |
| CL | Yes | 0.2 | 2.0 | 22.0 |
| MA | Yes | 0.2 | 2.0 | 22.0 |
| DG | Yes | 0.2 | 2.0 | 22.0 |
| BM | Yes | 0.4 | 2.0 | 24.0 |
| MC | No | 0.2 | 1.0 | 20.0 |
| OS | No | 0.4 | 2.0 | 23.0 |
| OH | No | 0.4 | 2.0 | 24.0 |

The number of sprout records created for each sprouting species is found in table 6.0.2. For more prolific stump sprouting hardwood species, logic rule {6.0.1} is used to determine the number of sprout records, with logic rule {6.0.2} being used for root suckering species. The trees-per-acre represented by each sprout record is determined using the general sprouting probability equation {6.0.3}. See table 6.0.2 for species-specific sprouting probabilities, number of sprout records created, and reference information.

Users wanting to modify or turn off automatic sprouting can do so with the SPROUT or NOSPROUT keywords, respectively. Sprouts are not subject to maximum and minimum tree heights found in table 6.0.1 and do not need to be grown to the end of the cycle because estimated heights and diameters are end of cycle values.

{6.0.1} For stump sprouting hardwood species

*DSTMPi* ≤ 5: NUMSPRC = 1

5 < *DSTMPi* ≤ 10: NUMSPRC = NINT(0.2 \* *DSTMPi*)

*DSTMPi* > 10: NUMSPRC = 2

{6.0.2} For root suckering hardwood species

*DSTMPi* ≤ 5: NUMSPRC = 1

5 < *DSTMPi* ≤ 10: NUMSPRC = NINT(-1.0 + 0.4 \* *DSTMPi*)

*DSTMPi* > 10: NUMSPRC = 3

{6.0.3} TPAs = *TPAi* \* *PS*

{6.0.4} *PS =* (*TPAi* / (*ASTPAR* \* 2)) \* ((*ASBAR* / 198) \* (40100.45 - 3574.02 \* *RSHAG*^2 + 554.02 \* *RSHAG*^3 - 3.5208 \* *RSHAG*^5 + 0.011797 \* *RSHAG*^7))

{6.0.5} *PS =* ((93.2669 - 0.4303 \* *DSTMPi*) / 100)

{6.0.6} *PS =* ((70.7857 - 2.6071 \* *DSTMPi*) / 100)

where:

DSTMPi is the diameter at breast height of the parent tree

NUMSPRC is the number of sprout tree records

NINT rounds the value to the nearest integer

TPAs is the trees per acre represented by each sprout record

*TPAi* is the trees per acre removed/killed represented by the parent tree

PS is a sprouting probability (see table 6.0.2)

ASBAR is the aspen basal area removed

ASTPAR is the aspen trees per acre removed

*RSHAG* is the age of the sprouts at the end of the cycle in which they were created

**Table 6.0.2 Sprouting algorithm parameters for sprouting species in the WS variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **Sprouting Probability** | **Number of Sprout Records** | **Source** |
| RW | {6.0.5} | {6.0.2} | Neal 1967  Boe 1975  Griffith 1992 |
| LO | 0.5 | {6.0.1} | See canyon live oak (CY) |
| CY | 0.5 | {6.0.1} | Conard 1987  Thornburgh 1990  Paysen et al. 1991 |
| BL | {6.0.6} | {6.0.1} | McCreary et al. 2000  Standiford et al. 2011 |
| BO | 0.9 | {6.0.1} | McDonald 1978  McDonald 1990 |
| VO | 0.9 | {6.0.1} | Howard 1992 |
| IO | 0.5 | {6.0.1} | See canyon live oak (CY) |
| TO | 0.9 | {6.0.2} | Harrington et al. 1992  Wilkinson et al. 1997  Fryer 2008 |
| GC | 0.9 | {6.0.2} | Harrington et al. 1992  Meyer 2012 |
| AS | {6.0.4} | 2 | Keyser 2001 |
| CL | 0.9 | {6.0.2} | Paysen et al. 1991  Ag. Handbook 654 |
| MA | 0.9 | {6.0.2} | McDonald et al. 1983  McDonald and Tappenier 1990 |
| DG | 0.9 | {6.0.2} | Gucker 2005 |
| BM | 0.9 | {6.0.2} | Roy 1955  Tappenier et al. 1996  Ag. Handbook 654 |

Regeneration of seedlings must be specified by the user with the partial establishment model by using the PLANT or NATURAL keywords. Height of the seedlings is estimated in two steps. First, the height is estimated when a tree is 5 years old (or the end of the cycle – whichever comes first) by using the small-tree height growth equations found in section 4.6.1. Users may override this value by entering a height in field 6 of the PLANT or NATURAL keyword; however, the height entered in field 6 is not subject to minimum height restrictions and seedlings as small as 0.05 feet may be established. The second step also uses the equations in section 4.6.1, which grow the trees in height from the point five years after establishment to the end of the cycle.

Seedlings and sprouts are passed to the main FVS model at the end of the growth cycle in which regeneration is established. Unless noted above, seedlings being passed are subject to minimum and maximum height constraints and a minimum budwidth constraint shown in table 6.0.1. After seedling height is estimated, diameter growth is estimated using equations described in section 4.6.2. Crown ratios on newly established trees are estimated as described in section 4.3.1.

Regenerated trees and sprouts can be identified in the treelist output file with tree identification numbers beginning with the letters “ES”.

# 7.0 Volume

In the WS variant, volume is calculated for four merchantability standards: total stem cubic feet, merchantable stem cubic feet, sawlog stem cubic feet, and merchantable stem board feet (Scribner Decimal C). Sawlog cubic foot volume is only reported when the FIAVBC keyword is in use. Volume estimation is based on methods contained in the National Volume Estimator Library maintained by the Forest Products Measurements group in the Forest Management Service Center (Volume Estimator Library Equations 2009). The default volume merchantability standards and equation numbers for the WS variant are shown in tables 7.0.1-7.0.3.

Volume computation methods used by the Forest Inventory and Analysis (FIA) program can be requested with the FIAVBC keyword. This keyword encompasses the National Scale Volume and Biomass estimators (NSVB; Westfall et al. 2024) and regional equations used for woodland species (Burrill et al. 2024). More information about the FIAVBC keyword and required input variables can be found in the Essential FVS Guide (Dixon 2002).

**Table 7.0.1 Volume merchantability standards for the WS variant.**

|  |  |  |
| --- | --- | --- |
| **Merchantable Cubic Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | **Hardwoods** | **Softwoods** |
| All location codes | 7.0 / 4.5 inches | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| **Merchantable Board Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | **Hardwoods** | **Softwoods** |
| All location codes | 10.0 / 6.0 inches | 10.0 / 6.0 inches |
| Stump Height | 1.0 foot | 1.0 foot |

**Table 7.0.2 Volume equation defaults for each species, at specific location codes, with model name.**

| **Common Name** | **Location Code** | **Equation Number** | **Reference** |
| --- | --- | --- | --- |
| sugar pine | All | 500WO2W117 | Wensel and Olsen Profile Model |
| Douglas-fir | All | 500WO2W202 | Wensel and Olsen Profile Model |
| white fir | All | 500WO2W015 | Wensel and Olsen Profile Model |
| giant sequoia | All | 500DVEW212 | Pillsbury and Kirkley Equations |
| incense cedar | All | 500WO2W081 | Wensel and Olsen Profile Model |
| Jeffrey pine | All | 500WO2W116 | Wensel and Olsen Profile Model |
| California red fir | All | 500WO2W020 | Wensel and Olsen Profile Model |
| ponderosa pine | All | 500WO2W122 | Wensel and Olsen Profile Model |
| lodgepole pine | All | 500WO2W108 | Wensel and Olsen Profile Model |
| whitebark pine | All | 500WO2W108 | Wensel and Olsen Profile Model |
| western white pine | All | 500WO2W117 | Wensel and Olsen Profile Model |
| singleleaf pinyon | All | 500WO2W116 | Wensel and Olsen Profile Model |
| Pacific silver fir | All | 500WO2W015 | Wensel and Olsen Profile Model |
| knobcone pine | All | 500WO2W108 | Wensel and Olsen Profile Model |
| foxtail pine | All | 500WO2W108 | Wensel and Olsen Profile Model |
| Coulter pine | All | 500WO2W108 | Wensel and Olsen Profile Model |
| limber pine | All | 500WO2W108 | Wensel and Olsen Profile Model |
| Monterey pine | All | 500WO2W108 | Wensel and Olsen Profile Model |
| California foothill pine | All | 500WO2W108 | Wensel and Olsen Profile Model |
| Washoe pine | All | 500WO2W117 | Wensel and Olsen Profile Model |
| Great Basin bristlecone pine | All | 500WO2W108 | Wensel and Olsen Profile Model |
| bigcone Douglas-fir | All | 500WO2W202 | Wensel and Olsen Profile Model |
| redwood | All | 500WO2W211 | Wensel and Olsen Profile Model |
| mountain hemlock | All | 500WO2W015 | Wensel and Olsen Profile Model |
| western juniper | All | 500DVEW060 | Pillsbury and Kirkley Equations |
| Utah juniper | All | 500DVEW060 | Pillsbury and Kirkley Equations |
| California juniper | All | 500DVEW060 | Pillsbury and Kirkley Equations |
| California live oak | All | 500DVEW801 | Pillsbury and Kirkley Equations |
| canyon live oak | All | 500DVEW805 | Pillsbury and Kirkley Equations |
| blue oak | All | 500DVEW807 | Pillsbury and Kirkley Equations |
| California black oak | All | 500DVEW818 | Pillsbury and Kirkley Equations |
| valley oak | All | 500DVEW821 | Pillsbury and Kirkley Equations |
| interior live oak | All | 500DVEW839 | Pillsbury and Kirkley Equations |
| tanoak | All | 500DVEW631 | Pillsbury and Kirkley Equations |
| giant chinquapin | All | 500DVEW431 | Pillsbury and Kirkley Equations |
| quaking aspen | All | 500DVEW818 | Pillsbury and Kirkley Equations |
| California laurel | All | 500DVEW981 | Pillsbury and Kirkley Equations |
| Pacific madrone | All | 500DVEW361 | Pillsbury and Kirkley Equations |
| Pacific dogwood | All | 500DVEW807 | Pillsbury and Kirkley Equations |
| bigleaf maple | All | 500DVEW312 | Pillsbury and Kirkley Equations |
| curl-leaf mountain mahogany | All | 500DVEW801 | Pillsbury and Kirkley Equations |
| other softwood | All | 500WO2W108 | Wensel and Olsen Profile Model |
| other hardwood | All | 500DVEW839 | Pillsbury and Kirkley Equations |

**Table 7.0.3 Citations by Volume Model**

| **Model Name** | **Citation** |
| --- | --- |
| Pillsbury and Kirkley Equations | Norman H Pillsbury and Michael L Kirkley 1984 Equations for Total, Wood, and saw-Log Volume for Thirteen California Hardwoods. Pacific Northwest Forest and Range Experiment Station Research Note PNW-414. |
| Wensel and Olsen Profile Model | Wensel, L. C. and C. M. Olson. 1993. Tree Taper Models for Major Commercial California Conifers. Research Note No. 33. Northern Calif. Forest Yield Cooperative. Dept. of Forstry and Mgmt., Univ. of Calif., Berkeley. 28 pp. |

# 8.0 Fire and Fuels Extension (FFE-FVS)

The Fire and Fuels Extension to the Forest Vegetation Simulator (FFE-FVS) (Reinhardt and Crookston 2003) integrates FVS with models of fire behavior, fire effects, and fuel and snag dynamics. This allows users to simulate various management scenarios and compare their effect on potential fire hazard, surface fuel loading, snag levels, and stored carbon over time. Users can also simulate prescribed burns and wildfires and get estimates of the associated fire effects such as tree mortality, fuel consumption, and smoke production, as well as see their effect on future stand characteristics. FFE-FVS, like FVS, is run on individual stands, but it can be used to provide estimates of stand characteristics such as canopy base height and canopy bulk density when needed for landscape-level fire models.

For more information on FFE-FVS and how it is calibrated for the WS variant, refer to the updated FFE-FVS model documentation (Rebain, comp. 2010) available on the FVS website.

# 9.0 Insect and Disease Extensions

FVS Insect and Pathogen models for dwarf mistletoe and western root disease have been developed for the WS variant through the participation and contribution of various organizations led by Forest Health Protection. These models are currently maintained by the Forest Management Service Center and regional Forest Health Protection specialists. Additional details regarding each model may be found in chapter 8 of the Essential FVS Users Guide (Dixon 2002).

# 10.0 Literature Cited

Alexander, R.R. 1967. Site Indices for Engelmann Spruce. Res. Pap. RM-32. Forest Service, Rocky Mountain Research Station. 7p.

Benson, Gary. 1988. Westside Mixed Conifer Ecosystems – Plumas, Lassen, and Tahoe National Forests. Zone 4.

Boe, Kenneth N. 1975. Natural seedlings and sprouts after regeneration cuttings in old-growth redwood. PSW-111. Berkeley, CA: U.S. Department of Agriculture, Forest Service, Pacific Southwest Forest and Range Experiment Station. 17 p.

Borchert, M., Segotta D., and Purser, M.D. 1988. Coast Redwood Ecological Types of Southern Montgomery County, California. GTR PSW-107. Forest Service, Pacific Southwest Forest and Range Experiment Station.

Borchert, M., Cunha N., Krosse, P. and Lawrence, M. 1988. Blue Oak Plant Communities of Southern San Luis Obispo and Northern Santa Barbara Counties, California. GTR PSW-139. Forest Service, Pacific Southwest Forest and Range Experiment Station.

Burrill, Elizabeth A.; DiTommaso, Andrea M.; Turner, Jeffery A.; Pugh, Scott A.; Christensen, Glenn; Kralicek, Karin M.; Perry, Carol J.; Lepine, Lucie C.; Walker, David M.; Conkling, Barbara L. 2024. The Forest Inventory and Analysis Database, FIADB user guides, volume: database description (version 9.3), nationwide forest inventory (NFI). U.S. Department of Agriculture, Forest Service. 1026 p. [Online].

Cole, D. M.; Stage, A. R. 1972. Estimating future diameters of lodgepole pine. Res. Pap. INT-131. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 20p.

Conard, Susan G. 1987. First year growth of canyon live oak sprouts following thinning and clearcutting. In: Plumb, Timothy R.; Pillsbury, Norman H., technical coordinators. Proceedings of the symposium on multiple-use management of California's hardwood resources; 1986 November 12-14; San Luis Obispo, CA. Gen. Tech. Rep. PSW-100. Berkeley, CA: U.S. Department of Agriculture, Forest Service, Pacific Southwest Forest and Range Experiment Station: 439.

Curtis, Robert O.; Herman, Francis R.; DeMars, Donald J. 1974. Height growth and site index for Douglas-fir in high-elevation forests of the Oregon-Washington Cascades. Forest Science 20(4):307-316.

Dixon, G. E. 1985. Crown ratio modeling using stand density index and the Weibull distribution. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 13p.

Dixon, Gary E. comp. 2002 (revised frequently). Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U.S. Department of Agriculture, Forest Service, Forest Management Service Center.

Dolph, Leroy K. 1988. Predicting height increment of young-growth mixed conifers in the Sierra Nevada. Res. Paper PSW-191. Berkeley, CA: USDA Forest Service, Pacific Southwest Forest and Range Exp. Station. 7p.

Dolph, Leroy K. 1991. Polymorphic site index curves for red fir in California and southern Oregon. Res. Paper PSW-206. Berkeley, CA: USDA Forest Service, Pacific Southwest Forest and Range Exp. Station. 18p.

Dolph, Leroy K. and Dixon, Gary E. 1993. Development and use of bounding functions in a forest growth model. Western Journal of Applied Forestry. 8(1):24-27.

Dunning, Duncan, and L.H. Reineke. 1933. Preliminary yield tables for second-growth stands in the California pine region. Tech. Bull. 354. Forest Service. 24p.

Dunning, Duncan. 1942. A site classification for the mixed-conifer selection forests of the Sierra Nevada. Res. Note No. 28. Berkeley, CA: USDA Forest Service, California Forest and Range Expt. Stn. 21p.

Fryer, Janet L. 2008. Lithocarpus densiflorus. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Gucker, Corey L. 2005. Cornus nuttallii. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Gordon, H. and White, T.C. 1994. Ecological Guide to Southern California Chaparral Plant Series. Transverse and Pennisular Ranges; Angeles, Cleveland, and San Bernardino National Forests. R5-ECOL-TP-005. Forest Service.

Griffith, Randy Scott. 1992. Sequoia sempervirens. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Harrington, T. B., Tappeiner, I. I., John, C., & Warbington, R. (1992). Predicting crown sizes and diameter distributions of tanoak, Pacific madrone, and giant chinkapin sprout clumps. Western Journal of Applied Forestry, 7(4), 103-108.

Howard, Janet L. 1992. Quercus lobata. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Jimerson, Thomas M. 1994. A Field Guide to Port Orford Cedar Plant Associations in Northwest California. R5-ECOL-TP-001. Forest Service.

Jimerson, Thomas M. et al. 1995. A Field Guide to Serpentine Plant Associations and Sensitive Plants in Northwestern California. R5-ECOL-TP-006. Forest Service.

Jimerson, Thomas M. et al. 1996. A Field Guide to the tanoak and the Douglas-fir Plant Associations in Northwestern California. R5-ECOL-TP-009. Forest Service.

Keyser, C.E. 2001. Quaking Aspen Sprouting in Western FVS Variants: A New Approach. Unpublished Manuscript.

Krajicek, J.; Brinkman, K.; Gingrich, S. 1961. Crown competition – a measure of density. Forest Science. 7(1):35-42

Krumland, B. and Eng, H., 2005. Site Index Systems for Major Young-Growth Forest and Woodland Species in Northern California. California Forestry Report 4.

Manning, Mary E. and Padgett, Wayne G. 1995. Riparian Community Type Classification for Humboldt and Toiyabe National Forests, Nevada and Eastern California. R4-ECOL-95-01.

McCreary, Douglas D.; Tietje, William D.; Schmidt, Robert H.; Gross, Rob; Weitkamp, William H.; Willoughby, Bob L.; Bell, Fremont L. 1991. Stump sprouting of blue oaks in California. In: Standiford, Richard B., technical coordinator. Proceedings of the symposium on oak woodlands and hardwood rangeland management; 1990 October 31 - November 2; Davis, CA. Gen. Tech. Rep. PSW-126. Berkeley, CA: Pacific Southwest Research Station: 64-69.

McDonald, Philip M. 1978. Silviculture-ecology of three native California hardwoods on high sites in north central California. Dissertation (Ph.D.), Oregon State University, Department of Forest Science, Corvallis. 309 p.

McDonald, Philip M.; Minore, Don; Atzet, Tom. 1983. Southwestern Oregon--northern California hardwoods. In: Burns, Russell M., compiler. Silvicultural systems for the major forest types of the United States. Agric. Handb. 445. Washington, DC: U.S. Department of Agriculture: 29-32.

McDonald, Philip M. 1990. Quercus kelloggii Newb. California Black Oak. In: Burns, Russell M.; Honkala, Barbara H., technical coordinators. Silvics of North America. Volume 2. Hardwoods. Agric. Handb. 654. Washington, DC: U.S. Department of Agriculture, Forest Service: 1281-1299.

McDonald, Philip M. and Tappenier II, John C. 1990. Arbutus menziesii Pursh. Pacific madrone. In: Burns, Russell M.; Honkala, Barbara H., technical coordinators. Silvics of North America. Volume 2. Hardwoods. Agric. Handb. 654. Washington, DC: U.S. Department of Agriculture, Forest Service: 275-289.

Meyer, Rachelle. 2012. Chrysolepis chrysophylla. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Neal, Robert L., Jr. 1967. Sprouting of old-growth redwood stumps--first year after logging. USDA Forest Service, Research Note PSW-137. Pacific Southwest Forest and Range Experiment Station, Berkeley, CA. 8 p.

Paysen, Timothy E.; Narog, Marcia G.; Tissell, Robert G.; Lardner, Melody A. 1991. Trunk and root sprouting on residual trees after thinning a Quercus chrysolepis stand. Forest Science. 37(1): 17-27.

Pillsbury, Norman H. and Kirkley, Michael L. 1984 Equations for Total, Wood, and saw-Log Volume for Thirteen California Hardwoods. Pacific Northwest Forest and Range Experiment Station Research Note PNW-414.

Powers, Robert F. 1972. Site index curves for unmanaged stands of California black oak. Res. Note PSW-262. Berkeley, CA: U.S. Department of Agriculture, Forest Service, Pacific Southwest Forest and Range Research Station. 5 p.

Rebain, Stephanie A. comp. 2010 (revised frequently). The Fire and Fuels Extension to the Forest Vegetation Simulator: Updated Model Documentation. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 379 p.

Reinhardt, Elizabeth; Crookston, Nicholas L. (Technical Editors). 2003. The Fire and Fuels Extension to the Forest Vegetation Simulator. Gen. Tech. Rep. RMRS-GTR-116. Ogden, UT: U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station. 209 p.

Roy, D. F. 1955. Hardwood sprout measurements in northwestern California. Forest Research Notes. California Forest and Range Experiment Station, (95).

Smith, Sydney S. 1994. Ecological Guide to Eastside Plant Associations; Northeastern California: Modoc, Lassen, Klamath, Shasta-Trinity, Plumas, and Tahoe National Forests.

Stage, A. R. 1973. Prognosis Model for stand development. Res. Paper INT-137. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 32p.

Standiford, R., McCreary, D., Barry, S., & Forero, L. (2011). Blue oak stump sprouting evaluated after firewood harvest in northern Sacramento Valley. California Agriculture, 65(3), 148-154.

Tappeiner, I. I., John, C., Zasada, J., Huffman, D., & Maxwell, B. D. 1996. Effects of cutting time, stump height, parent tree characteristics, and harvest variables on development of bigleaf maple sprout clumps. Western Journal of Applied Forestry, 11(4), 120-124.

Thornburgh, Dale A., 1990. Quercus chrysolepsis Liebm. Canyon live oak. In: Burns, Russell M.; Honkala, Barbara H., technical coordinators. Silvics of North America. Volume 2. Hardwoods. Agric. Handb. 654. Washington, DC: U.S. Department of Agriculture, Forest Service: 1206-1218.

Van Dyck, Michael G.; Smith-Mateja, Erin E., comps. 2000 (revised frequently). Keyword reference guide for the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

Wensel, L. C. and C. M. Olson. 1993. Tree Taper Models for Major Commercial California Conifers. Research Note No. 33. Northern Calif. Forest Yield Cooperative. Dept. of Forstry and Mgmt., Univ. of Calif., Berkeley. 28 pp.

Westfall, James A.; Coulston, John W.; Gray, Andrew N.; Shaw, John D.; Radtke, Philip J.; Walker, David M.; Weiskittel, Aaron R.; MacFarlane, David W.; Affleck, David L.R.; Zhao, Dehai; Temesgen, Hailemariam; Poudel, Krishna P.; Frank, Jereme M.; Prisley, Stephen P.; Wang, Yingfang; Sánchez Meador, Andrew J.; Auty, David; Domke, Grant M. 2024. A national-scale tree volume, biomass, and carbon modeling system for the United States. Gen. Tech. Rep. WO-104. Washington, DC: U.S. Department of Agriculture, Forest Service. 37 p.

Wilkinson, W. H., McDonald, P. M., & Morgan, P. 1997. Tanoak sprout development after cutting and burning in a shade environment. Western Journal of Applied Forestry, 12(1), 21-26.

Wykoff, W. R. 1990. A basal area increment model for individual conifers in the northern Rocky Mountains. For. Science 36(4): 1077-1104.

Wykoff, William R., Crookston, Nicholas L., and Stage, Albert R. 1982. User’s guide to the Stand Prognosis Model. Gen. Tech. Rep. INT-133. Ogden, UT: Forest Service, Intermountain Forest and Range Experiment Station. 112p.

# 11.0 Appendices

## 11.1 Appendix A. Distribution of Data Samples

Data used to develop the model came from the following sources:

- Tahoe 1990 Inventory

- Tahoe 1990 Plantation Inventory

- Stanislaus 1991 Inventory

- Stanislaus 1991 Plantation Inventory

- Sierra 1985 Inventory

- Sierra 1985 Plantation Inventory

- Sequoia 1990 Inventory

- Sequoia 1990 Plantation Inventory

- PSW Research Station study plots throughout the area

- Leroy Dolph's Red Fir Study- Sierra Nevadas and Klamath Mountains

The following tables contain distribution information of data used to fit species relationships in this variant’s geographic region (information from original variant overview).

**Table 11.1.1. Distribution of samples by species.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species** | **Total Number of Observations** | | |
| **diameter growth model** | **height growth model** | **crown, mortality, and bounding functions** |
| White Pine |  |  | 340 |
| Mountain Hemlock |  |  | 58 |
| white Fir | 3301 | 407 | 8209 |
| incense cedar | 1339 | 208 | 3393 |
| Douglas-fir | 480 | 46 | 976 |
| ponderosa pine | 1528 | 158 | 4941 |
| sugar Pine | 650 | 68 | 1322 |
| Jeffrey Pine | 1144 | 31 | 114 |
| lodgeple Pine | 419 | 0 | 951 |
| Red Fir |  |  | 3860 |
| Other Species |  |  | 1916 |

## 11.2 Appendix B: Plant Association Codes

**Table 11.2.1 Plant association codes recognized in the WS variant.**

| **FVS Sequence Number = Plant Association**  **Species Type** | **Alpha Code** | **Reference** |
| --- | --- | --- |
| 1 = 2TE/BEOC2  Conifer/water birch | 43014 | 501 – Manning & Padgett |
| 2 =2TE/ROWO  Conifer/wood’s rose | 43015 | 501 – Manning & Padget |
| 3 = 2TE/2FORB  Conifer/tall forb | 43016 | 501 – Manning & Padgett |
| 4 = 2TE/2FORB  Conifer/mesic forb | 43017 | 501 – Manning & Padget |
| 5 = PICO/CASC12  Lodgepole pine/mountain sedge | 43031 | 501 – Manning & Padgett |
| 6 = POTR5/BEOC2  Quaking aspen/water birch | 43061 | 501 – Manning & Padget |
| 7 = POTR5/COSE16  Quaking aspen/redosier dogwood | 43062 | 501 – Manning & Padgett |
| 8 = POTR5/SALIX  Quaking aspen/willow | 43063 | 501 – Manning & Padget |
| 9 = POTR5/ROWO  Quaking aspen/woods’ rose | 43064 | 501 – Manning & Padgett |
| 10 = POTR5/BRCA5  Quaking aspen/California brome | 43065 | 501 – Manning & Padget |
| 11 = POTR5/POPR  Quaking aspen/Kentucky bluegrass | 43066 | 501 – Manning & Padgett |
| 12 = POTR5/2FORB  Quaking aspen/mesic forb | 43067 | 501 – Manning & Padget |
| 13 = POPUL/BEOC2  Cottonwood/water birch | 43071 | 501 – Manning & Padgett |
| 14 = POPUL/COSE16  Cottonwood/redosier dogwood | 43072 | 501 – Manning & Padget |
| 15 = POPUL/SALIX  Cottonwood/willow | 43073 | 501 – Manning & Padgett |
| 16 = POPUL/ROWO  Cottonwood/woods’ rose | 43074 | 501 – Manning & Padget |
| 17 = POPUL/RHAR4  Cottonwood/fragrant sumac | 43075 | 501 – Manning & Padgett |
| 18 = POPUL  Cottonwood (stream bar) | 43076 | 501 – Manning & Padget |
| 19 = ALIN2  Gray alder (bench) | 43106 | 501 – Manning & Padgett |
| 20 = BEOC2/2GRAM  Water birch/mesic graminoid | 43153 | 501 – Manning & Padget |
| 21 = BEOC2/EQAR  Water birch/field horsetail | 43154 | 501 – Manning & Padgett |
| 22 = BEOC2  Water birch (bench) | 43156 | 501 – Manning & Padget |
| 23 = SAEX/ROWO  Narrowleaf willow/woods’ rose | 43246 | 501 – Manning & Padgett |
| 24 = SAEX  Narrowleaf willow (bench) | 43247 | 501 – Manning & Padget |
| 25 = SALE/CASC12  Lemmons willow/mountain sedge | 43261 | 501 – Manning & Padgett |
| 26 = SALE/2GRAM  Lemmons willow/mesic graminoid | 43262 | 501 – Manning & Padget |
| 27 = SALE/2FORB  Lemmons willow/mesic forb | 43263 | 501 – Manning & Padgett |
| 28 = SALE/2FORB  Lemons willow/tall forb | 43264 | 501 – Manning & Padget |
| 29 = SALE  Lemmons willow (seep) | 43265 | 501 – Manning & Padgett |
| 30 = SALE  Lemmons willow (bench) | 43266 | 501 – Manning & Padget |
| 31 = SALU2/2GRAM  Yellow willow/ mesic graminoid | 43272 | 501 – Manning & Padgett |
| 32 = SALU2/2FORB  Yellow willow/mesic forb | 43273 | 501 – Manning & Padget |
| 33 = SALU2/ROWO  Yellow willow/woods’ rose | 43274 | 501 – Manning & Padgett |
| 34 = SALU2/POPR  Yellow willow/Kentucky bluegrass | 43275 | 501 – Manning & Padget |
| 35 = SALU2  Yellow willow (bench) | 43276 | 501 – Manning & Padgett |
| 36 = SADR  Drummond’s willow | 43282 | 501 – Manning & Padget |
| 37 = SALUL/2FORB  Pacific willow/mesic forb | 43284 | 501 – Manning & Padgett |
| 38 = SALUL  Pacific willow (bench) | 43285 | 501 – Manning & Padget |
| 39 = SALA6/ROWO  Arroyo willow/woods’ rose | 43287 | 501 – Manning & Padgett |
| 40 = SALA6  Arroyo willow (bench) | 43288 | 501 – Manning & Padget |
| 41 = SALIX/CARO6  Willow/beaked sedge | 43289 | 501 – Manning & Padgett |
| 42 = SALIX/2GRAM  Willow/mesic graminoid | 43290 | 501 – Manning & Padget |
| 43 = SALIX/2FORB  Willow/mesic forb | 43291 | 501 – Manning & Padgett |
| 44 = SALIX/2FORB  Willow/tall forb | 43292 | 501 – Manning & Padget |
| 45 = SALIX/ROWO  Willow/woods’ rose | 43293 | 501 – Manning & Padgett |
| 46 = SALIX/POPR  Willow/Kentucky bluegrass | 43294 | 501 – Manning & Padget |
| 47 = SAWO/CASC12  Wolf’s willow/mountain sedge | 43304 | 501 – Manning & Padgett |
| 48 = SAPL2/CASC12  Diamondleaf willow/mountain sedge | 43325 | 501 – Manning & Padget |
| 49 = SAEA/CASC12  Mountain willow/mountain sedge | 43327 | 501 – Manning & Padgett |
| 50 = SAOR/2FORB  Sierra willow/tall forb | 43328 | 501 – Manning & Padget |
| 51 = SALIX/2FORB  Willow/mesic forb | 43329 | 501 – Manning & Padgett |
| 52 = COSE16  Redosier dogwood | 43351 | 501 – Manning & Padget |
| 53 = COSE16/SALIX  Redosier dogwood-willow | 43352 | 501 – Manning & Padgett |
| 54 = PRVI/ROWO  Chokecherry/woods’ rose | 43451 | 501 – Manning & Padget |
| 55 = ROWO  Woods’ rose | 43500 | 501 – Manning & Padgett |
| 56 = DAFL3/LIGR  Shrubby cinquefoil/gray’s licorice-root | 43554 | 501 – Manning & Padget |
| 57 = ARCA13/2GRAM  Silver sagebrush/graminoid (dry) | 43605 | 501 – Manning & Padgett |
| 58 = ARCA13/2GRAM  Silver sagebrush/graminoid (mesic) | 43606 | 501 – Manning & Padget |
| 59 = ARTRT/ROWO  Basin big sagebrush/woods’ rose | 43651 | 501 – Manning & Padgett |
| 60 = CADO2  Douglas’ sedge | 43803 | 501 – Manning & Padget |
| 61 = CASC12  Mountain sedge | 43811 | 501 – Manning & Padgett |
| 62 = DECA18-CANE2  Tufted hairgrass-Nebraska sedge | 43872 | 501 – Manning & Padget |
| 63 = POSE  Sandberg bluegrass | 43883 | 501 – Manning & Padgett |
| 64 = DOJE  Sierra shootingstar | 43905 | 501 – Manning & Padget |
| 65 = LUPO2-SETR  Bigleaf lupine-arrowleaf ragwort | 43911 | 501 – Manning & Padgett |
| 66 = IRMI/2GRAM  Western iris/dry graminoid | 43915 | 501 – Manning & Padget |
| 67 = IRMI/2GRAM  Western iris/ mesic graminoid | 43916 | 501 – Manning & Padgett |
| 68 = AGST2  Creping bentgrass | 43991 | 501 – Manning & Padget |
| 69 = HOBR2  Meadow barley | 43995 | 501 – Manning & Padgett |
| 70 = CHLA  Port Orford cedar | CCOCCO00 | 510 – Jimerson, 1994 |
| 71 =  Port Orford cedar/salal (1) | CCOCCO11 | 510 – Jimerson, 1994 |
| 72 =  Port Orford cedar/pacific rhododendron-salal(1) | CCOCCO12 | 510 – Jimerson, 1994 |
| 73 =  Port Orford cedar/western azalea (1) | CCOCCO13 | 510 – Jimerson, 1994 |
| 74 =  Port Orford cedar-western white pine/huckleberry oak (1) | CCOCCO14 | 510 – Jimerson, 1994 |
| 75 = CHLA-ABCO  Port Orford cedar-white fir | CCOCFW00 | 510 – Jimerson, 1994 |
| 76 = CHLA-ABCO/QUVA  Port Orford cedar-white fir/huckleberry oak | CCOCFW11 | 510 – Jimerson, 1994 |
| 77 = CHLA-ABCO-PIMO3/QUVA  Port Orford cedar-white fir-western white pine/huckleberry oak | CCOCFW12 | 510 – Jimerson, 1994 |
| 78 = CHLA-ABCO/RHOB  Port Orford cedar-white fir/western azalea | CCOCFW13 | 510 – Jimerson, 1994 |
| 79 = CHLA-ABCO/2FORB  Port Orford cedar-white fir/forbs | CCOCFW14 | 510 – Jimerson, 1994 |
| 80 = CHLA-ABCO/QUSA2  Port Orford cedar-white fir/deer oak | CCOCFW15 | 510 – Jimerson, 1994 |
| 81 = CHLA-ABSH/QUSA2-VAME  Port Orford cedar-Shasta red fir/deer oak-thinleaf huckleberry | CCOCFW16 | 510 – Jimerson, 1994 |
| 82 = CHLA-PSME/QUVA  Port Orford cedar-Douglas-fir/huckleberry oak | CCOCFW17 | 510 – Jimerson, 1994 |
| 83 = CHLA-CADE27-ALRH2  Port Orford cedar-incense cedar-white alder | CCOCFW18 | 510 – Jimerson, 1994 |
| 84 = PSME  Douglas-fir | CD000000 | 513 – Jimerson et al, 1996 |
| 85 = PSME-CADE27  Douglas-fir-incense cedar | CD0CCI00 | 513 – Jimerson et al, 1996 |
| 86 = PSME-CADE27/FECA  Douglas-fir-incense cedar/California fescue | CD0CCI11 | 513 – Jimerson et al, 1996 |
| 87 = PSME-PIJE  Douglas-fir-Jeffrey Pine | CD0CPJ00 | 513 – Jimerson et al, 1996 |
| 88 = PSME-PIJE/FECA  Douglas-fir-Jeffrey pine/California fescue | CD0CPJ11 | 513 – Jimerson et al, 1996 |
| 89 = PSME-ALRU2  Douglas-fir-red alder | CD0HAR00 | 513 – Jimerson et al, 1996 |
| 90 = PSME-ALRU2/ACCI/CLSIS  Douglas-fir-red alder/vine maple/Siberian springbeauty | CD0HAR11 | 513 – Jimerson et al, 1996 |
| 91 = PSME-UMCA  Douglas-fir-California laurel | CD0HBC00 | 513 – Jimerson et al, 1996 |
| 92 = PSME-UMCA/TODI  Douglas-fir-California laurel/Pacific poison oak | CD0HBC11 | 513 – Jimerson et al, 1996 |
| 93 = PSME-UMCA/HODI  Douglas-fir-California laurel/ocean spray | CD0HBC12 | 513 – Jimerson et al, 1996 |
| 94 = PSME-CHCHC4  Douglas-fir-giant chinquapin | CD0HGC00 | 513 – Jimerson et al, 1996 |
| 95 = PSME-CHCHC4-LIDE3  Douglas-fir-giant chinquapin-tanoak | CD0HGC11 | 513 – Jimerson et al, 1996 |
| 96 = PSME-CHCHC4/XETE  Douglas-fir-giant chinquapin/common beargrass | CD0HGC12 | 513 – Jimerson et al, 1996 |
| 97 = PSME-CHCHC4/RHMA3-GASH  Douglas-fir-giant chinquapin/Pacific rhododendron-salal | CD0HGC13 | 513 – Jimerson et al, 1996 |
| 98 = PSME-CHCHC4/RHMA3-MANE2  Douglas-fir-giant chinquapin/pacific rhododendron-Cascade barberry | CD0HGC14 | 513 – Jimerson et al, 1996 |
| 99 = PSME-CHCHC4/RHMA3-QUSA2/XETE  Douglas-fir-giant chinquapin/pacific rhododendron-deer oak/common beargrass | CD0HGC15 | 513 – Jimerson et al, 1996 |
| 100 = PSME-CHCHC4-LIDE3/MANE2  Douglas-fir-giant chinquapin-tanoak/cascade barberry | CD0HGC16 | 513 – Jimerson et al, 1996 |
| 101 = PSME-CHCHC4/RHA3-QUSA-GASH  Douglas-fir-giant chinquapin/pacific rhododendron-deer oak-salal | CD0HGC17 | 513 – Jimerson et al, 1996 |
| 102 = PSME-ACER  Douglas-fir-maple | CD0HMA00 | 513 – Jimerson et al, 1996 |
| 103 = PSME-ACMA3/POMU  Douglas-fir-bigleaf maple/western swordfern | CD0HMA11 | 513 – Jimerson et al, 1996 |
| 104 = PSME-ACMA3/PHLE4  Douglas-fir-bigleaf maple/Lewis’ mock orange | CD0HMA12 | 513 – Jimerson et al, 1996 |
| 105 = PSME/ACCI-MARE11  Douglas-fir/vine maple-Cascade barberry | CD0HMA13 | 513 – Jimerson et al, 1996 |
| 106 = PSME-QUKE  Douglas-fir-California black oak | CD0HOB00 | 513 – Jimerson et al, 1996 |
| 107 = PSME-QUKE  Douglas-fir-California black oak (metamorphic) | CD0HOB11 | 513 – Jimerson et al, 1996 |
| 108 = PSME-QUKE  Douglas-fir-California black oak (sandstone) | CD0HOB12 | 513 – Jimerson et al, 1996 |
| 109 = PSME-QUKE-QUGA4/2GRAM  Douglas-fir-California black oak-Oregon white oak/grass | CD0HOB13 | 513 – Jimerson et al, 1996 |
| 110 = PSME-QUCH2  Douglas-fir-canyon live oak | CD0HOL00 | 513 – Jimerson et al, 1996 |
| 111 = PSME-QUCH2  Douglas-fir-canyon live oak (rockpile) | CD0HOL11 | 513 – Jimerson et al, 1996 |
| 112 = PSME-QUCH2-ARME/TODI  Douglas-fir-canyon live oak-Pacific madrone/pacific poison oak | CD0HOL12 | 513 – Jimerson et al, 1996 |
| 113 = PSME-QUCH2-LIDE3  Douglas-fir-canyon live oak-tanoak | CD0HOL13 | 513 – Jimerson et al, 1996 |
| 114 = PSME-QUGA4  Douglas-fir-Oregon white oak | CD0HOO00 | 513 – Jimerson et al, 1996 |
| 115 = PSME-QUGA4/2GRAM  Douglas-fir-Oregon white oak/grass | CD0HOO11 | 513 – Jimerson et al, 1996 |
| 116 = PSME-QUGA4/HODI  Douglas-fir-Oregon white oak/oceanspray | CD0HOO12 | 513 – Jimerson et al, 1996 |
| 117 = PSME-LIDE3  Douglas-fir-tanoak | CD0HT000 | 513 – Jimerson et al, 1996 |
| 118 = PSME-LIDE3/WHMO  Douglas-fir-tanoak/common whipplea | CD0HT011 | 513 – Jimerson et al, 1996 |
| 119 = PSME-LIDE3/QUVA-HODI  Douglas-fir-tanoak/huckleberry oak-oceanspray | CD0HT012 | 513 – Jimerson et al, 1996 |
| 120 = PSME/2SHRUB  Douglas-fir/shrub (moist) | CD0SM000 | 513 – Jimerson et al, 1996 |
| 121 = PSME/COCOC  Douglas-fir/California hazelnut | CD0SM011 | 513 – Jimerson et al, 1996 |
| 122 = PSME/QUVA  Douglas-fir/huckleberry oak | CD0SOH00 | 513 – Jimerson et al, 1996 |
| 123 = PSME/QUVA/LIDEE  Douglas-fir/huckleberry oak-tanoak | CD0SOH12 | 513 – Jimerson et al, 1996 |
| 124 = PSME/QUVA-RHMA3  Douglas-fir/huckleberry oak-Pacific rhododendron | CD0SOH13 | 513 – Jimerson et al, 1996 |
| 125 = PIJE  Jeffrey pine | CPJ00000 | 512 – Jimerson et al, 1995 |
| 126 = PIJE-CADE27  Jeffrey Pine – Incense cedar | CPJCCI00 | 512 – Jimerson et al, 1995 |
| 127 = PIJE-CADE27-ABCO/QUVA  Jeffrey Pine-Incense cedar-white fir/huckleberry oak | CPJCCI11 | 512 – Jimerson et al, 1995 |
| 128 = PIJE-CADE27/QUVA/XETE  Jeffrey Pine-Incense cedar/huckleberry oak/common beargrass | CPJCCI12 | 512 – Jimerson et al, 1995 |
| 129 = PIJE-CADE27/CEPU  Jeffrey Pine-incense cedar/dwarf ceanothus | CPJCCI13 | 512 – Jimerson et al, 1995 |
| 130 = PIJE-CADE27/CECU  Jeffrey Pine-incense cedar/buckbrush | CPJCCI14 | 512 – Jimerson et al, 1995 |
| 131 = PIJE-ABCO/IRIS  Jeffrey Pine-white fir/iris | CPJCFW11 | 512 – Jimerson et al, 1995 |
| 132 = PIJE-ABCO/QUSA2/XETE  Jeffrey pine-white fir/deer oak/common beargrass | CPJCFW12 | 512 – Jimerson et al, 1995 |
| 133 = PIJE/FEID  Jeffrey pine/Idaho fescue | CPJGFI00 | 512 – Jimerson et al, 1995 |
| 134 = PIJE/FEID  Jeffrey pine/Idaho fescue | CPJGFI11 | 512 – Jimerson et al, 1995 |
| 135 = PIJE/QUVA-ARNE/FEID  Jeffrey pine/huckleberry oak-pinemat manzanita/Idaho fescue | CPJGFI12 | 512 – Jimerson et al, 1995 |
| 136 = PIJE/QUSA2-ARNE/FEID  Jeffrey pine/deer oak-pinemat manzanita/Idaho fescue | CPJSOD11 | 512 – Jimerson et al, 1995 |
| 137 = PICO  Lodgepole pine | CPL00000 | 512 – Jimerson et al, 1995 |
| 138 = PICO/QUVA  Lodgepole pine/huckleberry oak | CPLSOH00 | 512 – Jimerson et al, 1995 |
| 139 = PICO/QUVA-FRCAO4  Lodgepole pine/huckleberry oak-California buckthorn | CPLSOH11 | 512 – Jimerson et al, 1995 |
| 140 = PICO/QUVA/LIDE3  Lodgepole pine/huckleberry oak-tanoak | CPLSOH12 | 512 – Jimerson et al, 1995 |
| 141 = PICO/LIDE3  Lodgepole pine/shrub tanoak | CPLST000 | 512 – Jimerson et al, 1995 |
| 142 = PICO/LIDE3-RHMA3  Lodgepole pine/tanoak-Pacific rhododendron | CPLST011 | 512 – Jimerson et al, 1995 |
| 143 = PILA  Sugar pine | CPS00000 | 512 – Jimerson et al, 1995 |
| 144 = PILA-PICO  Sugar pine-lodgepole pine | CPSCPL00 | 512 – Jimerson et al, 1995 |
| 145 = PILA-PICO/QUVA-LIDEE  Sugar pine-lodgepole pine/huckleberry oak-tanoak | CPSCPL11 | 512 – Jimerson et al, 1995 |
| 146 = PILA-PICO/LIDEE-RHMA3  Sugar pine-lodgepole pine/tanoak-Pacific rhododendron | CPSCPL12 | 512 – Jimerson et al, 1995 |
| 147 = PILA-PIMO3  Sugar pine-western white pine | CPSCPW00 | 512 – Jimerson et al, 1995 |
| 148 = PILA-PIMO3/QUVA-GABU2  Sugar pine-western white pine/huckleberry oak-dwarf silktassel | CPSCPW11 | 512 – Jimerson et al, 1995 |
| 149 = PILA-CHCHC4  Sugar pine-giant chinquapin | CPSHGC00 | 512 – Jimerson et al, 1995 |
| 150 = PILA-CHCHC4/Quva-QUSA2  Sugar pine-giant chinquapin/huckleberry oak-deer oak | CPSHGC11 | 512 – Jimerson et al, 1995 |
| 151 = PIMO3  Western white pine | CPW00000 | 512 – Jimerson et al, 1995 |
| 152 = PIMO3-PSME  Western white pine-Douglas-fir | CPWCD000 | 512 – Jimerson et al, 1995 |
| 153 = PIMO3-PSME/QUVA-LIDEE  Western white pine-Douglas-fir/huckleberry oak-tanoak | CPWCD011 | 512 – Jimerson et al, 1995 |
| 154 = PIMO3/PIMO3  Western white pine/white pine | CPWCFW00 | 512 – Jimerson et al, 1995 |
| 155 = PIMO3-ABCO/QUVA/ANEMO  Western white pine-white fir/huckleberry oak/western anemone | CPWCFW11 | 512 – Jimerson et al, 1995 |
| 156 = PIMO3-PICO  Western white pine-lodgepole pine | CPWCPL00 | 512 – Jimerson et al, 1995 |
| 157 = PIMO3-PICO/LIDEE-RHMA3  Western white pine-lodglepole pine/tanoak-Pacific rhododendron | CPWCPL11 | 512 – Jimerson et al, 1995 |
| 158 = PIMO3-PILA  Western white pine-sugar pine | CPWCPS00 | 512 – Jimerson et al, 1995 |
| 159 = PIMO3-PILA/QUVA-LIDEE  Western white pine-sugar pine/huckleberry oak-tanoak | CPWCPS11 | 512 – Jimerson et al, 1995 |
| 160 = LIDE3  Tanoak | HT000000 | 513 – Jimerson et al, 1996 |
| 161 = LIDE3/CADE27  Tanoak-incense cedar | HT0CCI00 | 513 – Jimerson et al, 1996 |
| 162 = LIDE3-CADE27/FECA  Tanoak-incense cedar/California fescue | HT0CCI11 | 513 – Jimerson et al, 1996 |
| 163 = LIDE3-CHLA  Tanoak-Port Orford cedar | HT0CCO00 | 513 – Jimerson et al, 1996 |
| 164 = LIDE3-CHLA-UMCA/VAOV2  Tanoak-Port Orford cedar-California laurel/California huckleberry | HT0CCO11 | 513 – Jimerson et al, 1996 |
| 165 = LIDE3-CHLA/VAOV2-RHOC  Tanoak-Port Orford cedar/California huckleberry-western azalea | HT0CCO12 | 513 – Jimerson et al, 1996 |
| 166 = LIDE3-CHLA/VAOV2  Tanoak-Port Orford cedar/California huckleberry | HT0CCO13 | 513 – Jimerson et al, 1996 |
| 167 = LIDE3-CHLA/MANE2/LIBOL2  Tanoak-Port Orford cedar/Cascade barberry/longtube twinflower | HT0CCO14 | 513 – Jimerson et al, 1996 |
| 168 = LIDE3-CHLA-ALRH2  Tanoak-Port Orford cedar-white alder (riparian) | HT0CCO15 | 513 – Jimerson et al, 1996 |
| 169 = LIDE3-CHLA/ACCI  Tanoak-Port Orford cedar/vine maple | HT0CCO16 | 513 – Jimerson et al, 1996 |
| 170 = LIDE3-CHLA/VAPA  Tanoak-Port Orford cedar/red huckleberry | HT0CCO17 | 513 – Jimerson et al, 1996 |
| 171 = LIDE3-CHLA/GASH  Tanoak-Port Orford cedar/salal | HT0CCO18 | 513 – Jimerson et al, 1996 |
| 172 = LIDE3-CHLA-TSHE/VAOV2  Tanoak-Port Orford cedar-western hemlock/California huckleberry | HT0CCO19 | 513 – Jimerson et al, 1996 |
| 173 = LIDE3-UMCA  Tanoak-California laurel | HT0HBC00 | 513 – Jimerson et al, 1996 |
| 174 = LIDE3-UMCA/TODI  Tanoak-California laurel/Pacific poison oak | HT0HBC11 | 513 – Jimerson et al, 1996 |
| 175 = LIDE3-UMCA/VAOV2  Tanoak-California laurel/California huckleberry | HT0HBC12 | 513 – Jimerson et al, 1996 |
| 176 = LIDE3-CHCHC4  Tanoak-giant chinquapin | HT0HGC00 | 513 – Jimerson et al, 1996 |
| 177 = LIDE3-CHCHC4/GASH  Tanoak-giant chinquapin/salal | HT0HGC11 | 513 – Jimerson et al, 1996 |
| 178 = LIDE3-CHCHC4/GASH-RHMA3  Tanoak-giant chinquapin/salal-Pacific rhododendron | HT0HGC12 | 513 – Jimerson et al, 1996 |
| 179 = LIDE3-CHCHC4/RHMA3/XETE  Tanoak-giant chinquapin/Pacific rhododendron/common beargrass | HT0HGC13 | 513 – Jimerson et al, 1996 |
| 180 = LIDE3-CHCHC4/PTAQL  Tanoak-giant chinquapin/western brackenfern | HT0HGC14 | 513 – Jimerson et al, 1996 |
| 181 = LIDE3-CHCHC4/MANE2  Tanoak-giant chinquapin/Cascade barberry | HT0HGC15 | 513 – Jimerson et al, 1996 |
| 182 = LIDE3CHCHC4/VAOV2-GASH  Tanoak-giant chinquapin/California huckleberry-salal | HT0HGC16 | 513 – Jimerson et al, 1996 |
| 183 = LIDE3/ACER  Tanoak-maple | HT0HM000 | 513 – Jimerson et al, 1996 |
| 184 = LIDE3-ACMA3/POMU  Tanoak-bigleaf maple/swordfern | HT0HM011 | 513 – Jimerson et al, 1996 |
| 185 = LIDE3/ACCI-GASH  Tanoak/vine maple-salal | HT0HM012 | 513 – Jimerson et al, 1996 |
| 186 = LIDE3/ACCI  Tanoak/vine maple | HT0HM013 | 513 – Jimerson et al, 1996 |
| 187 = LIDE3/QUKE  Tanoak-California black oak | HT0HOB00 | 513 – Jimerson et al, 1996 |
| 188 = LIDE3/QUKE  Tanoak-California black oak | HT0HOB11 | 513 – Jimerson et al, 1996 |
| 189 = LIDE3-QUCH2  Tanoak-canyon live oak | HT0HOL00 | 513 – Jimerson et al, 1996 |
| 190 = LIDE3-QUCH2  Tanoak-canyon live oak (rockpile) | HT0HOL11 | 513 – Jimerson et al, 1996 |
| 191 = LIDE3-QUCH2/VAOV2  Tanoak-canyon live oak/California huckleberry | HT0HOL12 | 513 – Jimerson et al, 1996 |
| 192 = LIDE3-QUCH2/GASH-MANE2  Tanoak-canyon live oak/salal-Cascade barberry | HT0HOL13 | 513 – Jimerson et al, 1996 |
| 193 = LIDE-QUCH2-QUKE/TODI  Tanoak-canyon live oak-California black oak/Pacific poison oak | HT0HOL14 | 513 – Jimerson et al, 1996 |
| 194 = LIDE3-QUCH2/TODI  Tanoak-canyon live oak/Pacific poison oak | HT0HOL15 | 513 – Jimerson et al, 1996 |
| 195 = LIDE3-QUCH2/MANE2  Tanoak-canyon live oak/Cascade barberry | HT0HOL16 | 513 – Jimerson et al, 1996 |
| 196 = LIDE3/2SHRUB  Tanoak/shrub (dry) | HT0SD000 | 513 – Jimerson et al, 1996 |
| 197 = LIDE3/TODI/LOHIV  Tanoak/Pacific poison oak/pink honeysuckle | HT0SD011 | 513 – Jimerson et al, 1996 |
| 198 = LIDE3/MANE2  Tanoak/Cascade barberry | HT0SD012 | 513 – Jimerson et al, 1996 |
| 199 = LIDE3/VAOV2-GASH  Tanoak/California huckleberry-salal | HT0SEH12 | 513 – Jimerson et al, 1996 |
| 200 = LIDE3/VAOV2-RHMA3  Tanoak/California huckleberry-Pacific rhododendron | HT0SEH13 | 513 – Jimerson et al, 1996 |
| 201 = LIDE3/2SHRUB  Tanoak/shrub (moist) | HT0SM000 | 513 – Jimerson et al, 1996 |
| 202 = LIDE2/COCOC  Tanoak/California hazelnut | HT0SM011 | 513 – Jimerson et al, 1996 |
| 203 = LIDE3/QUVA  Tanoak/huckleberry oak | HT0SOH00 | 513 – Jimerson et al, 1996 |
| 204 = LIDE3/QUVA-RHMA3  Tanoak/huckleberry oak-Pacific rhododendron | HT0SOH11 | 513 – Jimerson et al, 1996 |
| 205 = LIDE3/GASH-RHMA3  Tanoak/salal-Pacific rhododendron | HT0SSG12 | 513 – Jimerson et al, 1996 |
| 206 = LIDE3/GASH-MANE2  Tanoak/salal-Cascade barberry | HT0SSG13 | 513 – Jimerson et al, 1996 |
| 207 = LIDE3/VAOV2  Tanoak/California huckleberry | HT0SEH00 | 513 – Jimerson et al, 1996 |
| 208 = LIDE3/VAOV2  Tanoak/California huckleberry | HT0SEH11 | 513 – Jimerson et al, 1996 |
| 209 = LIDE3/GASH  Tanoak/salal | HT0SSG00 | 513 – Jimerson et al, 1996 |
| 210 = LIDE3/GASH  Tanoak/salal | HT0SSG11 | 513 – Jimerson et al, 1996 |
| 211 = CADE27-PIPO-PSME/CHFO  Incense cedar-ponderosa pine-Douglas-fir/mountain misery | CC0311 | 502 – Benson (1988) |
| 212 = PIJE-ABCO/POA  Jeffrey pine-white fir/bluegrass (granite) | CPJGBW11 | 502 – Benson (1988) |
| 213 = PIPO-PIJE-ABCO/ACOCO  Ponderosa pine-Jeffrey pine-white fir/western needlegrass (ash) | CPJGNG11 | 502 – Benson (1988) |
| 214 = PIPO-PIJE-QUKE/AMPA2  Ponderosa pine-Jeffrey pine-California black oak/pale serviceberry | CPJSAM11 | 502 – Benson (1988) |
| 215 = PIPO-PIJE-ABCO/AMPA2-MARE11  Ponderosa pine-Jeffrey pine-white fir/pale serviceberry-creeping barberry | CPJSAM12 | 502 – Benson (1988) |
| 216 = PIJE-QUKE/RHTRQ  Jeffrey pine-California black oak/skunkbush sumac | CPJSBB11 | 502 – Benson (1988) |
| 217 = PIJE/PUTR2-CELE3/ACOCO  Jeffrey pine/antelope bitterbrush-curl-leaf mountain mahogany/western needlegrass | CPJSBB12 | 502 – Benson (1988) |
| 218 = PIJE/PUTR2-SYORU/POA  Jeffrey pine/antelope bitterbrush-Utah snowberry/bluegrass | CPJSBB13 | 502 – Benson (1988) |
| 219 = PIJE/PUTR2/WYMO  Jeffrey pine/antelope bitterbrush/woolly mule-ears | CPJSBB14 | 502 – Benson (1988) |
| 220 = PIPO-PIJE-PSME/PUTR2/WYMO  Ponderosa pine-Jeffrey pine-Douglas-fir/antelope bitterbrush/woolly mule-ears | CPJSBB15 | 502 – Benson (1988) |
| 221 = PIPO-PIJE-QUKE/POA  Ponderosa pine-Jeffrey pine-California black oak/bluegrass (granite) | CPJSBB16 | 502 – Benson (1988) |
| 222 = PIPO-PIJE/ARTRV-PUTR2  Ponderosa pine-Jeffrey pine/mountain big sagebrush-antelope bitterbrush | CPJSBB17 | 502 – Benson (1988) |
| 223 = PIPO-PIJE/PUTR2/FEID  Ponderosa pine-Jeffrey pine/antelope bitterbrush/Idaho fescue | CPJSBB18 | 502 – Benson (1988) |
| 224 = PIPO-PIJE/PUTR2/FEID  Ponderosa pine-Jeffrey pine/antelope bitterbrush/Idaho fescue (granite) | CPJSBB19 | 502 – Benson (1988) |
| 225 = PIPO-PIJE/PUTR2/SEINM  Ponderosa pine-Jeffrey pine/antelope bitterbrush/lambstongue ragwort (granite) | CPJSBB20 | 502 – Benson (1988) |
| 226 = PIPO-PIJE/FRRUM/POSE  Ponderosa pine-Jeffrey pine/Modoc buckthorn/Sandberg bluegrass | CPJSBB21 | 502 – Benson (1988) |
| 227 = PIPO-PIJE-ABCO/QUW12  Ponderosa pine-Jeffrey pine-white fir/interior live oak | CPJSBB23 | 502 – Benson (1988) |
| 228 = PIJE/CELE3  Jeffrey pine/curl-leaf mountain mahogany | CPJSMC11 | 502 – Benson (1988) |
| 229 = PIPO-PIJE/CELE3/PSSPS  Ponderosa pine-Jeffrey pine/curl-leaf mountain mahogany/ bluebunch balsamroot | CPJSMC12 | 502 – Benson (1988) |
| 230 = PIPO-PIJE/CELE3/BASA3  Ponderosa pine-Jeffrey pine/curl-leaf mountain mahogany/ arrowleaf balsamroot | CPJSMC13 | 502 – Benson (1988) |
| 231 = PIPO-PIJE-ABCO/QUVA/WYMO  Ponderosa pine-Jeffrey pine-white fir/huckleberry oak/woolly mule-ears | CPJSOH11 | 502 – Benson (1988) |
| 232 = PIJE/ARTRV/FEID  Jeffrey pine/mountain big sagebrush/Idaho fescue | CPJSSB11 | 502 – Benson (1988) |
| 233 = PIPO-PIJE-ABCO/SYAC/WYMO  Ponderosa pine-Jeffrey pine-white fir/sharpleaf snowberry/ woolly mule-ears | CPJSSS12 | 502 – Benson (1988) |
| 234 = PIJE-ABCO/SYORU/PONE2  Jeffrey pine-white fur/Utah snowberry/Wheeler bluegrass | CPJSSY11 | 502 – Benson (1988) |
| 235 = PIWA/ARNE  Washoe pine/pinemat manzanita | CPOSMP11 | 502 – Benson (1988) |
| 236 = PIWA-ABCO/SYORU/PSJA2  Washoe pine-white fir/Utah snowberry/tuber starwort | CPOSSY11 | 502 – Benson (1988) |
| 237 = PIPO/AMPA2-MARE11/ARCO9  Ponderosa pine/pale serviceberry-creeping barberry/ heartleaf arnica | CPPSAM11 | 502 – Benson (1988) |
| 238 = PIPO/AMPA2-PRUNU  Ponderosa pine/pale serviceberry-prunus | CPPSAM12 | 502 – Benson (1988) |
| 239 = PIPO-ABCO-PICO/AMPA2  Ponderosa pine-white fir-lodgepole pine/pale serviceberry | CPPSAM13 | 502 – Benson (1988) |
| 240 = PIPO-ABCO-QUVA/AMPA2  Ponderosa pine-white fir-black oak/pale serviceberry | CPPSAM14 | 502 – Benson (1988) |
| 241 = PIPO-ABCO/AMPA2-MARE11  Ponderosa pine-white fir/pale serviceberry-creeping barberry | CPPSAM15 | 502 – Benson (1988) |
| 242 = PIPO-ABCO/AMPA2-CEVE/BROR2  Ponderosa pine-white fir/pale serviceberry-snowbrush ceonothus/Orcutt’s brome | CPPSAM16 | 502 – Benson (1988) |
| 243 = PIPO-CADE27/PUTR2/BASA3  Ponderosa pine-incense cedar/antelope bitterbrush/ arrowleaf balsamroot | CPPSBB11 | 502 – Benson (1988) |
| 244 = PIPO-QUKE/PUTR2/ACOCO  Ponderosa pine-California black oak/antelope bitterbrush/ western needlegrass | CPPSBB12 | 502 – Benson (1988) |
| 245 = PIPO/CELE3-PUTR2/FEID  Ponderosa pine/curl-leaf mountain mahogany-antelope bitterbrush/Idaho fescue | CPPSBB13 | 502 – Benson (1988) |
| 246 = PIPO/PURT2-CEVE-ARPA6/BROR2  Ponderosa pine/antelope bitterbrush-snowbrush ceanothus-greenleaf manzanita/Orcutt’s brome | CPPSBB14 | 502 – Benson (1988) |
| 247 = PIPO/PURT2-PRUNU/BROR2  Ponderosa pine/antelope bitterbrush-prunus/Orcutt’s brome | CPPSBB15 | 502 – Benson (1988) |
| 248 = PIPO/PUTR2-PRUNU/PSSPS  Ponderosa pine/antelope bitterbrush-prunus/bluebunch wheatgrass | CPPSBB16 | 502 – Benson (1988) |
| 249 = PIPO/PUTR2-RICE/BROR2  Ponderosa pine/antelope bitterbrush-wax current/Orcutt’s brome | CPPSBB17 | 502 – Benson (1988) |
| 250 = PIPO/PUTR2/BASA3  Ponderosa pine/antelope bitterbrush/arrowleaf balsamroot | CPPSBB18 | 502 – Benson (1988) |
| 251 = PIPO/PUTR2/FEID  Ponderosa pine/antelope bitterbrush/Idaho fescue | CPPSBB19 | 502 – Benson (1988) |
| 252 = PIPO/PUTR2/ACOCO  Ponderosa pine/antelope bitterbrush/western needlegrass (pumice) | CPPSBB20 | 502 – Benson (1988) |
| 253 = PIPO-ABCO/CEVE/ACOCO  Ponderosa pine-white fir/snowbrush ceonothus/western needlegrass | CPPSBB21 | 502 – Benson (1988) |
| 254 = PIPO-ABCO/PUTR2-ARPA6/ACOCO  Ponderosa pine-white fir/antelope bitterbrush-greenleaf manzanita/western needlegrass | CPPSBB22 | 502 – Benson (1988) |
| 255 = PIPO/ARTRV/FEID  Ponderosa pine/mountain big sagebrush/Idaho fescue | CPPSSB11 | 502 – Benson (1988) |
| 256 = PSME-PIPO/TODI  Douglas-fir-ponderosa pine/Pacific poison oak | DC0811 | 502 – Benson (1988) |
| 257 = PSME-PIPO/CHFO/POCOC  Douglas-fir-ponderosa pine/mountain misery/Sierra milk wort | DC0812 | 502 – Benson (1988) |
| 258 = PSME-PINUS-QUCH2/CEIN3  Douglas-fir-pine-canyon live oak/deerbrush | DC0813 | 502 – Benson (1988) |
| 259 = PSME-ABCO-LIDE3/PTAQL  Douglas-fir-white fir-tanoak/western brackenfern | DC0911 | 502 – Benson (1988) |
| 260 = PSME-CONU2-LIDE3/COCOC/GAAP2  Douglas-fir-mountain dogwood-tanoak/California hazelnut/ stickywilly | DH0711 | 502 – Benson (1988) |
| 261 = PIPO-ABCO/CEVE3-CEPR  Ponderosa pine-white fir/tobaccobrush-squawcarpet | PC0611 | 502 – Benson (1988) |
| 262 = PILE-PIMO3/QUVA-ARNE2  Sugar pine-western white pine/huckleberry oak-pinemat manzanita | QS0111 | 502 – Benson (1988) |
| 263 = ABCO-PSME-LIDE3/COCOC  White fir-Douglas-fir-tanoak/California hazelnut | WC0911 | 502 – Benson (1988) |
| 264 = ABCO-PSME/????/????  White fir-Douglas-fir-mountain dogwood/bush chinquapin | WC0912 | 502 – Benson (1988) |
| 265 = ABCO-PSME/SYACC-????/????  White fir-Douglas-fir/sharpleaf snowberry/thimbleberry | WC0913 | 502 – Benson (1988) |
| 266 = ABCO-PILA/SYAC/CARO5  White-fir-sugar pine/sharpleaf snowberry/Ross’ sedge | WC0914 | 502 – Benson (1988) |
| 267 = ABCO-PSME/CHME2  White fir-Douglas-fir/prince’s pine | WC0915 | 502 – Benson (1988) |
| 268 = ABCO-PSME-CADE27/AMPA2  White fir-Douglas-fir-incense cedar/pallid serviceberry | WC0916 | 502 – Benson (1988) |
| 269 = ABCO-PSME-PIJE/????  White fir-Douglas-fir-Jeffrey pine/rosy everlasting | WC0917 | 502 – Benson (1988) |
| 270 = PSME-PINUS-CADE27/ASDE6  Douglas-fir-pine-incense cedar/Indian dream | CC0411 |  |
| 271 = PSME-PILA/LIDEE/PTAQL  Douglas-fir-sugar pine/tanoak/western brackenfern | DC1011 |  |
| 272 = PSME-PILA/LIDEE/TRIEN  Douglas-fir-sugar pine/tanoak/broadleaf starflower | DC1012 |  |
| 273 = PSME-PIPO/FRCAO4/PTAQL  Douglas-fir-ponderosa pine/California buckthorn/western brackenfern | DC1013 |  |
| 274 = PSME-PIPO/CEIN3/COHE2  Douglas-fir-ponderosa pine/deerbrush/variableleaf collomia | DC1014 |  |
| 275 = PSME-PIPO/FECA  Douglas-fir-ponderosa pine/California fescue | DC1015 |  |
| 276 = PSME-PIPO/QUVA/POMU  Douglas-fir-ponderosa pine/huckleberry oak/western swordfern | DC1016 |  |
| 277 = PSME-PINUS-CADE27/TRBR3  Douglas-fir-pine-incense cedar/forest clover | DC1017 |  |
| 278 = PSME-PINUS-CADE27/CECU/TRBR3-FECA  Douglas-fir-pine-incense cedar/buckbrush/forest clover-California fescue | DC1018 |  |
| 279 = PSME-PINUS-CADE27/XETE  Douglas-fir-pine-incense cedar/common beargrass | DC1019 |  |
| 280 = PSME/COCOC/POMU  Douglas-fir/California hazelnut/western swordfern | DS0911 |  |
| 281 = PIJE-CADE27/CECU/HECAS2  Jeffrey pine-incense cedar/buckbrush/Shasta heliathella | PG0611 |  |
| 282 = PIJE-CADE27/MAAQ2/FEID  Jeffrey pine-incense cedar/hollyleaved barberry/Idaho fescue | PG0612 |  |
| 283 = PIJE/CELE3/PSSPS  Jeffrey pine/curl-leaf mountain mahogany/bluebench wheatgrass | PG0613 |  |
| 284 = PIJE/ERPAA2/PHDI3  Jeffrey pine/Parry’s rabbitbrush/spreading phlox | PG0614 |  |
| 285 = PIJE-CADE27/QUVA/ASDE6  Jeffrey pine-incense cedar/huckleberry oak/Indian’s dream | PS0911 |  |
| 286 = ABCO-PSME-PILA/CONU4  White fir-Douglas-fir-sugar pine/Pacific dogwood | WC1011 |  |
| 287 = PSME-ABCO/RHOC  Douglas-fir-white fir/western azalea | WC1012 |  |
| 288 = PSME-ABCO-PIPO/ARNE/CHUMO2  Douglas-fir-white fir-ponderosa pine/pinemat manzanita/ pipsisseqa | WC1013 |  |
| 289 = 2TE  Mixed conifer series | CX000000 |  |
| 290 =  Mixed conifer dry group | CX0D0000 |  |
| 291 =  Ponderosa pine-mixed conifer/Bolander’s bedstraw-milkwort | CX0FBB11 |  |
| 292 =  White fir-mixed conifer/false Solomon’s seal-Hooker’s fairybells | CX0FFS11 |  |
| 293 =  Ponderosa pine-mixed conifer/rosy everlasting-naked stemmed | CX0FRE11 |  |
| 294 =  White fir-mixed conifer/troul plant | CX0FTP11 |  |
| 295 =  Douglas-fir-mixed conifer/starflower | CX0FWS11 |  |
| 296 =  White fir-mixed conifer/Ross’ sedge | CX0GCR11 |  |
| 297 =  Douglas-fir-mixed conifer-white alder/Indian rhubarb | CX0HAW11 |  |
| 298 =  Mountain dogwood group | CX0HDP00 |  |
| 299 =  Douglas-fir-mixed conifer-mountain dogwood/California hazel buckwheat | CX0HDP13 |  |
| 300 =  Douglas-fir-mixed conifer-mountain dogwood/trail plant | CX0HDP14 |  |
| 301 =  Douglas-fir-mixed conifer-bigleaf maple/trail plant | CX0HMB12 |  |
| 302 = QUCH2  Canyon live oak | CX0H0L00 |  |
| 303 =  Ponderosa pine-mixed conifer-canyon live oak/bearclover | CX0H0L15 |  |
| 304 =  Ponderosa pine-mixed conifer/Bolander’s bedstraw | CX0H0L16 |  |
| 305 =  Douglas-fir-mixed conifer-canyon live oak/sword fern | CX0H0L17 |  |
| 306 = LIDE3  Tanoak | CX0HT000 |  |
| 307 = PSME-2TE-LIDE3/CONU4  Douglas-fir-mixed conifer-tanoak/Pacific dogwood | CX0HT012 |  |
| 308 = PSME-2TE-LIDE3/CHFO  Douglas-fir-mixed conifer-tanoak/mountain misery | CX0HT013 |  |
| 309 = PSME-2TE-LIDE3/COCOC  Douglas-fir-mixed conifer-tanoak/California hazelnut | CX0HT011 |  |
| 310 = PSME-2TE-LIDE3/IRIS  Douglas-fir-mixed conifer-tanoak/iris | CX0HT014 |  |
| 311 =  Mixed conifer moderate group | CX0M0000 |  |
| 312 =  Mixed conifer riparian group | CX0R0000 |  |
| 313 =  Douglas-fir-mixed conifer/serviceberry | CX0SAM12 |  |
| 314 =  Evergreen shrub group | CX0SE000 |  |
| 315 =  White fir-mixed conifer/vine maple-bush chinquapin | CX0SE011 |  |
| 316 =  White fir-mixed conifer/bush chinquapin | CX0SE012 |  |
| 317 =  Ponderosa pine-mixed conifer/shrub canyon live oak, huckleberry oak | CX0SE013 |  |
| 318 =  Ponderosa pine-mixed conifer/huckleberry oak (serpentine) | CX0SE014 |  |
| 319 =  Douglas-fir-mixed conifer/California hazelnut | CX0SHN12 |  |
| 320 =  Douglas-fir-mixed conifer/Sierra laurel | CX0SLS11 |  |
| 321 =  White fir-mixed conifer/mountain alder/sedge | CX0SMA11 |  |
| 322 =  White fir-mixed conifer/mountain alder/monkshood | CX0SMA12 |  |
| 323 =  Bearclover group | CX0SMM00 |  |
| 324 =  Ponderosa pine-mixed conifer/manzanita bearclover | CX0SMM11 |  |
| 325 =  Ponderosa pine-mixed conifer/bearclover/Bolander’s bedstraw | CX0SMM12 |  |
| 326 =  White fir-mixed conifer/creeping snowberry/kelloggia | CX0SSS13 |  |
| 327 =  Mixed conifer moist group | CX0W0000 |  |
| 328 =  Douglas-fir-mixed conifer/American dogwood | CX0SDA11 |  |
| 329 = ABMAS/RHMA  Red fir/Pacific rhododendron | RS0511 |  |
| 330 = ABCO-PILA-ABMAS/PTAQL  White fir-sugar pine-red fir/bracken | WC0413 |  |
| 331 = JUOC/WYMO  Western juniper/woolly mule-ears | JC0111 |  |
| 332 = JUOC  Western juniper | JC0112 |  |
| 333 = TSME  Mountain hemlock (steep) | MC0211 |  |
| 334 = PIJE/QUVA  Jeffrey pine/huckleberry oak | PS0811 |  |
| 335 = PIJE/ARPA6-CEVE  Jeffrey pine/greenleaf manzanita-snowbrush ceonothus | PS0812 |  |
| 336 = PIJE/CECO-ARTR2  Jeffrey pine/whitethorn ceanothus-big sagebrush | PS0813 |  |
| 337 = POTR5  Quaking aspen (flats) | QC0211 |  |
| 338 = POTR5  Quaking aspen (uplands) | QC0212 |  |
| 339 = ABMA  California red fir | RC0011 |  |
| 340 = ABMA/ABCO  California red fir/white fir | RC0331 |  |
| 341 = ABMA-TSME  California red fir-mountain hemlock | RC0421 |  |
| 342 = PIMO3/ARNE  Western white pine/pinemat manzanita | RC0511 |  |
| 343 = PIMO3-PICO  Western white pine-lodgepole pine | RC0512 |  |
| 344 = PIMO3  Western white pine | RC0513 |  |
| 345 = PICO/HIAL2  Lodgepole pine/white hawkweed | RC0611 |  |
| 346 = PICO/LIGR  Lodgepole pine/Gray’s licorice-root | RC0612 |  |
| 347 = PICO  Lodgepole pine | RC0613 |  |
| 348 = ABMA/ASBO2  California red fir/Bolander’s locoweed | RF0411 |  |
| 349 = ABMA/WYMO  California red fir/wooly mule-ears | RF0412 |  |
| 350 = ABMA/ARNE  California red fir/pinemat manzanita | RS0114 |  |
| 351 = ABCO-PIJE  White fir-Jeffrey pine | WC0711 |  |
| 352 = ABCO-ABMA  White fir-California red fir (mixed conifer) | WC0712 |  |
| 353 = PSME/QUVA  Douglas-fir/huckleberry oak | CD0SOH11 | 507-513 – Jimerson et al, 1996 |
| 354 = SESE3  Redwood | CN00000 | 507-514 – Borchert, Segotta, & Purser |
| 355 = SESE3  Redwood (Gamboa-Sur) | CN00011 | 507-514 – Borchert, Segotta, & Purser |
| 356 = SESE3/PTAQ-WOFI  Redwood/western brackenfern-giant chainfern (steamsides) | CNF0111 | 507-514 – Borchert, Segotta, & Purser |
| 357 = SESE3/POMU-TROV2  Redwood/western swordfern-Pacific trillium (Gamboa-Sur) | CNF0211 | 507-514 – Borchert, Segotta, & Purser |
| 358 = SESE3/MAFA3-VISAN2  Redwood/California manroot-garden vetch (Gamboa-Sur) | CNF0311 | 507-514 – Borchert, Segotta, & Purser |
| 359 = SESE3-ACMA3/POCA12  Redwood-bigleaf maple/California polypody (Gamboa) | CNHB011 | 507-514 – Borchert, Segotta, & Purser |
| 360 = SESE3-LIDE3/CAGL7-IRDO  Redwood-tanoak/roundfruit sedge-Douglas iris (Gamboa) | CNHT011 | 507-504 – Smith |
| 361 = PIPO-ABCO/SYAC  Ponderosa pine-white fir/sharpleaf snowberry | CPPSSS11 | 507-515 – Borchert, Cunha, Krosse, & Lawrence |
| 362 = QUDO  Blue oak | HOD00000 | 507-515 – Borchert, Cunha, Krosse, & Lawrence |
| 363 = QUDO/2GRAM  Blue oak/annual grass | HODGA000 | 507-515 – Borchert, Cunha, Krosse, & Lawrence |
| 364 = QUDO/HOMUL-VIPE3  Blue oak/leporinum barley-Johnny-jump-up | HODGA011 | 507-515 – Borchert, Cunha, Krosse, & Lawrence |
| 365 = QUDO/LOWR2-NAPU4  Blue oak/Chilean bird’s foot trefoil-purple tussockgrass | HODGA012 | 507-515 – Borchert, Cunha, Krosse, & Lawrence |
| 366 = QUDO/EUSP-PETR7  Blue oak/warty spurge-goldback fern | HODGA013 | 507-515 – Borchert, Cunha, Krosse, & Lawrence |
| 367 = QUDO/GAAN-LUCO  Blue oak/phloxleaf bedstraw-scarlet lupine | HODGA014 | 507-515 – Borchert, Cunha, Krosse, & Lawrence |
| 368 = QUDO/ERMO7-HOMUL  Blue oak/musky stork’s bill-leporinum barley | HODGA015 | 507-515 – Borchert, Cunha, Krosse, & Lawrence |
| 369 = QUDO/DEPA2-PHIM  Blue oak/San Bernardino larkspur-imbricate phacelia | HODGA016 | 507-515 – Borchert, Cunha, Krosse, & Lawrence |
| 370 = QUDO/LUCO-MEAL12  Blue oak/scarlet lupine-foothill clover | HODGA017 | 507-515 – Borchert, Cunha, Krosse, & Lawrence |
| 371 = QUDO/AMME12-PLNO  Blue oak/common fiddleneck-rusty popcornflower | HODGA018 | 507-515 – Borchert, Cunha, Krosse, & Lawrence |
| 372 = QUDO/EREL6/LOWR2-PLER3  Blue oak/longstem buckwheat/Chilean bird’s-foot trefoil-dotseed plantain | HODGA019 | 507-515 – Borchert, Cunha, Krosse, & Lawrence |
| 373 = QUDO/COSP-RILE2  Blue oak/spinster’s blue eyed Mary-wireweed | HODGA020 | 507-515 – Borchert, Cunha, Krosse, & Lawrence |
| 374 = QUDO/CEMOG/BOIN3-LIAF  Blue oak/birchleaf mountain mahogany/hoary bowlesia-San Francisco woodland-star | HODGA021 | 507-515 – Borchert, Cunha, Krosse, & Lawrence |
| 375 = QUDO/RICA/BRDI3  Blue oak/hillside gooseberry/ripgut brome | HODGA022 | 507-515 – Borchert, Cunha, Krosse, & Lawrence |
| 376 = QUDO-QUWI2/2GRAM  Blue oak-interior live oak/grass | HODHOI00 | 507-515 – Borchert, Cunha, Krosse, & Lawrence |
| 377 = QUDO-QUWI2/LICY3  Blue oak-interior live oak/mission woodland-star | HODHOI11 | 507-515 – Borchert, Cunha, Krosse, & Lawrence |
| 378 = ADFA  Chamise | SA000000 | 511 – Gordon & White, 1994 |
| 379 = ADFA/ERFA2-SAAP2  Chamise/Eastern Mojave buckwheat-white sage | SA0SB000 | 511 – Gordon & White, 1994 |
| 380 = ADFA/SAME3  Chamise/black sage | SA0SBS00 | 511 – Gordon & White, 1994 |
| 381 = ADFA-CEGRP  Chamise-desert ceanothus | SA0SCC00 | 511 – Gordon & White, 1994 |
| 382 = ADFA-CECR  Chamise-hoaryleam ceanothus | SA0SCH00 | 511 – Gordon & White, 1994 |
| 383 = ADFA-CETO-CYBI  Chamise-woolyleaf ceanothus-mission manzanita | SA0SCT00 | 511 – Gordon & White, 1994 |
| 384 = ADFA-CECU  Chamise-buckbrush | SA0SCW00 | 511 – Gordon & White, 1994 |
| 385 = ADFA-ARGL4  Chamise-bigberry manzanita | SA0SMB00 | 511 – Gordon & White, 1994 |
| 386 = ADFA-ARGL3  Chamise-Eastwood’s manzanita | SA0SME00 | 511 – Gordon & White, 1994 |
| 387 = ERFA2-SAAP2  Eastern Majove buckwheat-white sage | SB0SSW00 | 511 – Gordon & White, 1994 |
| 388 = CEMOG  Birchleaf mountain mahogany | SBM00000 | 511 – Gordon & White, 1994 |
| 389 = CECR  Hoaryleaf ceanothus | SCH00000 | 511 – Gordon & White, 1994 |
| 390 = ARGL4  Bigberry manzanita | SMB00000 | 511 – Gordon & White, 1994 |
| 391 = ARGL3  Eastwood’s manzanita | SME00000 | 511 – Gordon & White, 1994 |
| 392 = QUCH2  Canyon live oak | SOC00000 | 511 – Gordon & White, 1994 |
| 393 = QUW12  Interior live oak | SOI00000 | 511 – Gordon & White, 1994 |
| 394 = QUW12-CELE2  Interior live oak-chaparral whitethorn | SOISCL00 | 511 – Gordon & White, 1994 |
| 395 = QUW12-QUCH2  Interior live oak-canyon live oak | SOISOC00 | 511 – Gordon & White, 1994 |
| 396 = QUW12-QUBE5  Interior live oak-scrub oak | SOISOS00 | 511 – Gordon & White, 1994 |
| 397 = QUBE5  Scrub oak | SOS00000 | 511 – Gordon & White, 1994 |
| 398 = QUBE5-ADFA  Scrub oak-chamise | SOSSA000 | 511 – Gordon & White, 1994 |
| 399 = QUBE5-CEMOG  Scrub oak-birchleaf mountain mahogany | SOSSBM00 | 511 – Gordon & White, 1994 |
| 400 = QUBE5-CEOL-HEAR5  Scrub oak-hairy ceanothus-toyon | SOSSCH00 | 511 – Gordon & White, 1994 |
| 401 = QUBE5-CELE2  Scrub oak-chaparral whitethorn | SOSSCL00 | 511 – Gordon & White, 1994 |
| 402 = ADSP  Redshank | SR000000 | 511 – Gordon & White, 1994 |
| 403 = ADSP-ADFA  Redshank-chamise | SR0SA000 | 511 – Gordon & White, 1994 |
| 404 = ARCA11  Coastal sagebrush | SSC00000 | 511 – Gordon & White, 1994 |
| 405 = ARCA11-ERFA2  Coastal sagebrush-Eastern Majave buchwheat | SSCSB000 | 511 – Gordon & White, 1994 |
| 406 = ARCA11-SAME3  Coastal sagebrush-black sage | SSCSSB00 | 511 – Gordon & White, 1994 |

The U.S. Department of Agriculture (USDA) prohibits discrimination in all its programs and activities on the basis of race, color, national origin, sex, religion, age, disability, political beliefs, sexual orientation, or marital or family status. (Not all prohibited bases apply to all programs.) Persons with disabilities who require alternative means for communication of program information (Braille, large print, audiotape, etc.) should contact USDA’s TARGET Center at (202) 720-2600 (voice and TDD).

To file a complaint of discrimination, write USDA, Director, Office of Civil Rights, Room 326-W, Whitten Building, 1400 Independence Avenue, SW, Washington, DC 20250-9410 or call (202) 720-5964 (voice or TDD). USDA is an equal opportunity provider and employer.