Eastern Montana (EM) Variant Overview of the Forest Vegetation Simulator

September 2025

![](data:image/jpeg;base64...)

Beartooth Mountain Range, Custer National Forest

(Jason McGaughey, FS-R1)

Eastern Montana (EM) Variant Overview of the Forest Vegetation Simulator

# Authors and Contributors:

The FVS staff has maintained model documentation for this variant in the form of a variant overview since its release in 1981. The original author was Ralph Johnson. In 2008, the previous document was replaced with this updated variant overview. Gary Dixon, Christopher Dixon, Robert Havis, Chad Keyser, Stephanie Rebain, Erin Smith-Mateja, and Don Vandendriesche were involved with this major update. Robert Havis cross-checked information contained in this variant overview with the FVS source code. In 2009, Gary Dixon, expanded the species list and made significant updates to this variant overview.

FVS Staff. 2008 (revised September 23, 2025). Eastern Montana (EM) Variant Overview – Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 64p.

Table of Contents

[Authors and Contributors: ii](#_Toc209542386)

[1.0 Introduction 1](#_Toc209542387)

[2.0 Geographic Range 2](#_Toc209542388)

[3.0 Control Variables 3](#_Toc209542389)

[3.1 Location Codes 3](#_Toc209542390)

[3.2 Species Codes 4](#_Toc209542391)

[3.3 Habitat Type, Plant Association, and Ecological Unit Codes 5](#_Toc209542392)

[3.4 Site Index 5](#_Toc209542393)

[3.5 Maximum Density 6](#_Toc209542394)

[4.0 Growth Relationships 8](#_Toc209542395)

[4.1 Height-Diameter Relationships 8](#_Toc209542396)

[4.2 Bark Ratio Relationships 9](#_Toc209542397)

[4.3 Crown Ratio Relationships 10](#_Toc209542398)

[4.3.1 Crown Ratio Dubbing 10](#_Toc209542399)

[4.3.2 Crown Ratio Change 13](#_Toc209542400)

[4.3.3 Crown Ratio for Newly Established Trees 14](#_Toc209542401)

[4.4 Crown Width Relationships 14](#_Toc209542402)

[4.5 Crown Competition Factor 16](#_Toc209542403)

[4.6 Small Tree Growth Relationships 17](#_Toc209542404)

[4.6.1 Small Tree Height Growth 18](#_Toc209542405)

[4.6.2 Small Tree Diameter Growth 23](#_Toc209542406)

[4.7 Large Tree Growth Relationships 24](#_Toc209542407)

[4.7.1 Large Tree Diameter Growth 25](#_Toc209542408)

[4.7.2 Large Tree Height Growth 34](#_Toc209542409)

[5.0 Mortality Model 39](#_Toc209542410)

[5.1 SDI-Based Mortality Model 39](#_Toc209542411)

[5.2 Prognosis-Type Mortality Rate 40](#_Toc209542412)

[6.0 Regeneration 44](#_Toc209542413)

[7.0 Volume 47](#_Toc209542414)

[8.0 Fire and Fuels Extension (FFE-FVS) 50](#_Toc209542415)

[9.0 Insect and Disease Extensions 51](#_Toc209542416)

[10.0 Literature Cited 52](#_Toc209542417)

[11.0 Appendices 55](#_Toc209542418)

[11.1 Appendix A. Distribution of Data Samples 55](#_Toc209542419)

[11.2 Appendix B. Habitat Codes 57](#_Toc209542420)

Quick Guide to Default Settings

| **Parameter or Attribute** | **Default Setting** | | |
| --- | --- | --- | --- |
| Number of Projection Cycles | 1 (10 if using FVS GUI) | | |
| Projection Cycle Length | 10 years | | |
| Location Code (National Forest) | 108 – Custer National Forest | | |
| Plant Association Code | 260 (PSME/PHME) | | |
| Slope | 5 percent | | |
| Aspect | 0 (no meaningful aspect) | | |
| Elevation | 55 (5500 feet) | | |
| Latitude / Longitude | Latitude | | Longitude |
| All location codes | 46 | | 111 |
| Site Species | Varies by habitat type | | |
| Site Index | Varies by species and habitat type | | |
| Maximum Stand Density Index | Species Specific | | |
| Maximum Basal Area | Varies by habitat type | | |
| Volume Equations | National Volume Estimator Library | | |
| Merchantable Cubic Foot Volume Specifications: | | | |
| Minimum DBH / Top Diameter | LP | | All Other Species |
| All other location codes | 6.0 / 4.5 inches | | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | | 1.0 foot |
| Merchantable Board Foot Volume Specifications: | | | |
| Minimum DBH / Top Diameter | LP | All Other Species | |
| All other location codes | 6.0 / 4.5 inches | 7.0 / 4.5 inches | |
| Stump Height | 1.0 foot | 1.0 foot | |
| Sampling Design: | | | |
| Basal Area Factor | 40 BAF | | |
| Small-Tree Fixed Area Plot | 1/300th Acre | | |
| Breakpoint DBH | 5.0 inches | | |

# 1.0 Introduction

The Forest Vegetation Simulator (FVS) is an individual tree, distance independent growth and yield model with linkable modules called extensions, which simulate various insect and pathogen impacts, fire effects, fuel loading, snag dynamics, and development of understory tree vegetation. FVS can simulate a wide variety of forest types, stand structures, and pure or mixed species stands.

New “variants” of the FVS model are created by imbedding new tree growth, mortality, and volume equations for a particular geographic area into the FVS framework. Geographic variants of FVS have been developed for most of the forested lands in United States.

The Eastern Montana (EM) variant has the distinction of being the first variant calibrated for a geographic area outside of Northern Idaho. It was developed in 1980 by Ralph Johnson, who worked for Region 1 in State and Private Forestry and covers all forested lands east of the continental divide in Montana. Since its initial development, many of the functions have been adjusted and improved as more data has become available and model technology has advanced. In 2009 this variant was expanded from its 8 original species to 19 species.

To fully understand how to use this variant, users should also consult the following publication:

* Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002)

This publication may be downloaded from the Forest Management Service Center (FMSC), Forest Service website. Other FVS publications may be needed if one is using an extension that simulates the effects of fire, insects, or diseases.

# 2.0 Geographic Range

The EM variant was fit to data representing forest types in central and eastern Montana. Data used in initial model development came from forest inventories, silviculture stand examinations, and permanent plots from the Northern Region of the Forest Service. Distribution of data samples for species fit from this data are shown in Appendix A.

The EM variant covers forest areas in central and eastern Montana. The suggested geographic range of use for the EM variant is shown in figure 2.0.1.

![A picture of the suggested geographic range of the Eastern Montana variant.](data:image/jpeg;base64...)

**Figure 2.0.1 Suggested geographic range of use for the EM variant.**

# 3.0 Control Variables

FVS users need to specify certain variables used by the EM variant to control a simulation. These are entered in parameter fields on various FVS keywords available in the FVS interface or they are read from an FVS input database using the Database Extension.

## 3.1 Location Codes

The location code is a 3-digit code where, in general, the first digit of the code represents the USDA Forest Service Region Number, and the last two digits represent the Forest Number within that region. In some cases, a location code beginning with a “7” or “8” is used to indicate an administrative boundary that doesn’t use a Forest Service Region number (for example, other federal agencies, state agencies, or other lands).

If the location code is missing or incorrect in the EM variant, a default forest code of 108 (Custer National Forest) will be used. Location codes recognized in the EM variant are shown in tables 3.1.1 and 3.1.2.

**Table 3.1.1 Location codes used in the EM variant.**

|  |  |
| --- | --- |
| **Location Code** | **Location** |
| 102 | Beaverhead National Forest |
| 108 | Custer National Forest |
| 109 | Deerlodge National Forest |
| 111 | Gallatin National Forest |
| 112 | Helena National Forest |
| 115 | Lewis and Clark National Forest |

**Table 3.1.2 Bureau of Indian Affairs reservation codes used in the EM variant.**

|  |  |
| --- | --- |
| **Location Code** | **Location** |
| 7101 | Cheyenne River Reservation (mapped to 108) |
| 7102 | Fort Berthold Reservation (mapped to 108) |
| 7103 | Spirit Lake Reservation (mapped to 108) |
| 7107 | Lake Traverse Reservation (mapped to 108) |
| 7108 | Standing Rock Reservation (mapped to 108) |
| 7109 | Turtle Mountain Off-Reservation Trust Land (mapped to 108) |
| 7301 | Blackfeet Indian Reservation (mapped to 115) |
| 7302 | Crow Reservation (mapped to 108) |
| 7303 | Fort Belknap (mapped to 115) |
| 7304 | Fort Peck Indian Reservation (mapped to 115) |
| 7305 | Northern Cheyenne Indian Reservation (mapped to 108) |
| 7307 | Rocky Boy's Reservation (mapped to 115) |

## 3.2 Species Codes

The EM variant recognizes 17 species, plus two other composite species categories. You may use FVS species codes, Forest Inventory and Analysis (FIA) species codes, or USDA Natural Resources Conservation Service PLANTS symbols to represent these species in FVS input data. Any valid western species code identifying species not recognized by the variant will be mapped to a similar species in the variant. The species mapping crosswalk is available on the FVS website variant documentation webpage. Any non-valid species code will default to the “other hardwood” category.

Either the FVS sequence number or species code must be used to specify a species in FVS keywords and Event Monitor functions. FIA codes or PLANTS symbols are only recognized during data input and may not be used in FVS keywords. Table 3.2.1 shows the complete list of species codes recognized by the EM variant.

When entering tree data, users should substitute diameter at root collar (DRC) for diameter at breast height (DBH) for woodland species (Rocky Mountain juniper).

**Table 3.2.1 Species codes used in the EM variant.**

| **Species Number** | **Species Code** | **FIA Code** | **PLANTS Symbol** | **Scientific Name1** | **Common Name1** |
| --- | --- | --- | --- | --- | --- |
| 1 | WB | 101 | PIAL | *Pinus albicaulis* | whitebark pine |
| 2 | WL | 073 | LAOC | *Larix occidentalis* | western larch |
| 3 | DF | 202 | PSME | *Pseudotsuga menziesii* | Douglas-fir |
| 4 | LM | 113 | PIFL2 | *Pinus flexilis* | limber pine |
| 5 | LL | 072 | LALY | *Larix lyallii* | subalpine larch |
| 6 | RM | 066 | JUSC2 | *Juniperus scopulorum* | Rocky Mountain juniper |
| 7 | LP | 108 | PICO | *Pinus contorta* | lodgepole pine |
| 8 | ES | 093 | PIEN | *Picea engelmannii* | Engelmann spruce |
| 9 | AF | 019 | ABLA | *Abies lasiocarpa* | subalpine fir |
| 10 | PP | 122 | PIPO | *Pinus ponderosa* | ponderosa pine |
| 11 | GA | 544 | FRPE | *Fraxinus pennsylvanica* | green ash |
| 12 | AS | 746 | POTR5 | *Populus tremuloides* | quaking aspen |
| 13 | CW | 747 | POBAT | *Populus balsamifera* ssp.  *trichocarpa* | black cottonwood |
| 14 | BA | 741 | POBA2 | *Populus balsamifera* | balsam poplar |
| 15 | PW | 745 | PODEM | *Populus deltoides* ssp.  *monolifera* | plains cottonwood |
| 16 | NC | 749 | POAN3 | *Populus angustifolia* | narrowleaf cottonwood |
| 17 | PB | 375 | BEPA | *Betula papyrifera* | paper birch |
| 18 | OS | 299 | 2TN |  | other softwood2 |
| 19 | OH | 998 | 2TB |  | other hardwood2 |

1Set based on the USDA Forest Service NRM TAXA lists and the USDA Plants database.

2Other categories use FIA codes and NRM TAXA codes that best match the other category.

## 3.3 Habitat Type, Plant Association, and Ecological Unit Codes

Habitat type codes that are recognized in the EM variant are listed in Appendix B table 11.2.1. If the habitat type code is blank or not recognized, the default 260 (PSME/PHMA) will be used. Habitat type is used for all forests in this variant.

Habitat types used in this variant are also mapped to one of the original 30 habitat types used to develop the Northern Idaho (NI) variant. This mapping is shown in Appendix B table 11.2.2. This mapping facilitates setting default values for some of the variables and enables this variant to use some of the NI variant equations and coefficients.

## 3.4 Site Index

Site index is used in some of the growth equations for the EM variant. Users should always use the same site curves that FVS uses, which are shown in table 3.4.1. If site index is available, a single site index for the whole stand can be entered, a site index for each individual species in the stand can be entered, or a combination of these can be entered.

**Table 3.4.1 Site index reference curves for species in the EM variant.**

| **Species** | **Reference** | **BHA or TTA\*** | **Base Age** |
| --- | --- | --- | --- |
| DF | Monserud, (1985) | BHA | 50 |
| WB, WL, LM, LP, OS | Alexander, Tackle, and Dahms (1967) | TTA | 100 |
| ES, AF | Alexander, (1967) | BHA | 100 |
| PP | Meyer, (1961.rev) | TTA | 100 |
| AS, PB | Edminster, Mowrer, and Shepperd (1985) | BHA | 80 |
| RM | Any juniper 100 year base total age curve | TTA | 100 |
| GA, CW, BA, PW, NC, OH | Any hardwood 100 year base total age curve | TTA | 100 |
| LL | Does not use site index |  |  |
| \* Equation is based on total tree age (TTA) or breast height age (BHA) | | | |

If site index is missing or incorrect, the default site species and site index values are assigned as shown in table 3.4.1 from the NI habitat mapping index shown in Appendix B table 11.2.2.

**Table 3.4.1 Default site index values by species and site species by NI habitat mapping index in the EM variant.**

| **NI Habitat Mapping Index** | **Site Index** | | | | | | | | | | **Site Species** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WB, WL, OS** | **PP** | **DF** | **LP** | **ES** | **AF** | **LM, LL** | **RM** | **AS, PB** | **GA, CW, BA, PW, NC, OH** |
| 1 | 35 | 46 | 26 | 46 | 46 | 46 | 25 | 6 | 36 | 44 | PP |
| 2 | 51 | 68 | 44 | 68 | 68 | 68 | 29 | 8 | 43 | 57 | PP |
| 3 | 57 | 76 | 49 | 76 | 76 | 76 | 35 | 10 | 51 | 76 | DF |
| 4 | 60 | 80 | 51 | 80 | 78 | 80 | 35 | 10 | 50 | 62 | DF |
| 5 | 48 | 64 | 41 | 75 | 64 | 64 | 32 | 9 | 44 | 72 | DF |
| 6 | 55 | 73 | 47 | 73 | 73 | 73 | 34 | 10 | 49 | 72 | DF |
| 7 | 45 | 67 | 39 | 72 | 61 | 61 | 35 | 10 | 48 | 71 | DF |
| 8 | 38 | 67 | 33 | 70 | 51 | 51 | 32 | 9 | 46 | 67 | DF |
| 9 | 44 | 59 | 38 | 63 | 59 | 59 | 27 | 7 | 41 | 55 | DF |
| 10 | 60 | 80 | 51 | 80 | 80 | 80 | 39 | 11 | 55 | 86 | ES |
| 11 | 64 | 85 | 42 | 80 | 85 | 85 | 37 | 9 | 46 | 67 | ES |
| 12 | 47 | 62 | 40 | 62 | 68 | 62 | 32 | 11 | 52 | 80 | DF |
| 13 | 47 | 62 | 40 | 62 | 68 | 62 | 36 | 12 | 59 | 95 | DF |
| 14 | 47 | 62 | 40 | 62 | 68 | 62 | 41 | 12 | 58 | 93 | DF |
| 15 | 47 | 62 | 40 | 62 | 68 | 62 | 41 | 12 | 58 | 93 | DF |
| 16 | 47 | 62 | 40 | 62 | 68 | 62 | 41 | 12 | 58 | 93 | DF |
| 17 | 47 | 62 | 40 | 62 | 68 | 62 | 43 | 13 | 60 | 98 | DF |
| 18 | 47 | 62 | 40 | 62 | 68 | 62 | 38 | 11 | 54 | 84 | AF |
| 19 | 47 | 62 | 40 | 62 | 68 | 62 | 39 | 11 | 55 | 86 | AF |
| 20 | 53 | 70 | 46 | 74 | 75 | 70 | 32 | 9 | 46 | 67 | AF |
| 21 | 50 | 67 | 43 | 76 | 68 | 67 | 36 | 10 | 49 | 73 | AF |
| 22 | 57 | 76 | 49 | 76 | 78 | 76 | 34 | 10 | 52 | 80 | AF |
| 23 | 49 | 65 | 42 | 68 | 80 | 76 | 34 | 10 | 52 | 80 | DF |
| 24 | 57 | 76 | 42 | 68 | 80 | 76 | 32 | 9 | 46 | 67 | AF |
| 25 | 49 | 65 | 42 | 68 | 80 | 76 | 36 | 10 | 52 | 80 | DF |
| 26 | 49 | 65 | 42 | 65 | 67 | 65 | 36 | 10 | 52 | 80 | AF |
| 27 | 47 | 62 | 30 | 35 | 64 | 62 | 36 | 10 | 52 | 80 | AF |
| 28 | 41 | 55 | 36 | 51 | 53 | 55 | 26 | 7 | 38 | 49 | AF |
| 29 | 26 | 35 | 23 | 35 | 45 | 35 | 22 | 6 | 33 | 36 | DF |
| 30 | 60 | 80 | 51 | 80 | 78 | 80 | 26 | 7 | 38 | 49 | DF |

## 3.5 Maximum Density

Maximum stand density index (SDI) and maximum basal area (BA) are important variables in determining density related mortality and crown ratio change. Maximum basal area is a stand level metric that can be set using the BAMAX or SETSITE keywords. If not set by the user, a default value is calculated from maximum stand SDI each projection cycle. Maximum stand density index can be set for each species using the SDIMAX or SETSITE keywords. If not set by the user, a default value is assigned as discussed below.

The default maximum SDI is set based on the user-specified, or default, habitat type code or a user specified basal area maximum. If a user specified basal area maximum is present, the maximum SDI for all species is computed using equation {3.5.1}; otherwise, the maximum SDI for all species is assigned from habitat type as shown in Appendix B, table 11.2.2. Maximum stand density index at the stand level is a weighted average, by basal area, of the individual species SDI maximums.

{3.5.1} *SDIMAXi* = *BAMAX* / (0.5454154 \* *SDIU)*

where:

*SDIMAXi* is the species-specific SDI maximum

*BAMAX* is the user-specified basal area maximum

*SDIU* is theproportion of theoretical maximum density at which the stand reaches actual maximum density (default 0.85, changed with the SDIMAX keyword)

# 4.0 Growth Relationships

This chapter describes the functional relationships used to fill in missing tree data and calculate incremental growth. In FVS, trees are grown in either the small tree sub-model or the large tree sub-model depending on their diameter.

## 4.1 Height-Diameter Relationships

Height-diameter relationships in FVS are primarily used to estimate tree heights missing in the input data, and occasionally to estimate diameter growth on trees smaller than a given threshold diameter. In the EM variant, height-diameter relationships are a logistic functional form, as shown in equation {4.1.1} (Wykoff and others, 1982). The equation was fit to data of the same species used to develop other FVS variants. Coefficients for equation {4.1.1} are shown are shown in table 4.1.1.

When heights are given in the input data for 3 or more trees of a given species, the value of b1 in equation {4.1.1} for that species is recalculated from the input data and replaces the default value shown in table 4.1.1. In the event that the calculated value is less than zero, the default is used.

{4.1.1} *HT* = 4.5 + exp(b1 + b2 / (*DBH* + 1.0))

where:

*HT* is tree height

*DBH* is tree diameter at breast height

b1 - b2 are species-specific coefficients shown in table 4.1.1

**Table 4.1.1 Coefficients for the logistic Wykoff equation {4.1.1} in the EM variant.**

| **Species Code** | **Default b1** | **b2** |
| --- | --- | --- |
| WB | 4.1539 | -4.212 |
| WL | 4.1539 | -4.212 |
| DF | 4.4161 | -6.962 |
| LM | 4.1920 | -5.1651 |
| LL | 4.76537 | -7.61062 |
| RM | 3.2 | -5.0 |
| LP | 4.5356 | -5.692 |
| ES | 4.7537 | -8.356 |
| AF | 4.5788 | -7.138 |
| PP | 4.4140 | -8.907 |
| GA | 4.4421 | -6.5405 |
| AS | 4.4421 | -6.5405 |
| CW | 4.4421 | -6.5405 |
| BA | 4.4421 | -6.5405 |
| PW | 4.4421 | -6.5405 |
| NC | 4.4421 | -6.5405 |
| PB | 4.4421 | -6.5405 |
| OS | 4.1539 | -4.212 |
| OH | 4.4421 | -6.5405 |

## 4.2 Bark Ratio Relationships

Bark ratio estimates are used to convert between diameter outside bark and diameter inside bark in various parts of the model. The equation is shown in equation {4.2.1} and coefficients (b1 and b2) for this equation by species are shown in table 4.2.1.

{4.2.1} *BRATIO* = b1 + (b2 / *DBH*)

Note: if a species has a b2value equal to 0, then *BRATIO* = b1

where:

*BRATIO* is species-specific bark ratio (bounded to 0.80 <u><</u> *BRATIO* <u><</u> 0.99)

*DBH* is tree diameter at breast height (bounded to *DBH* <u>></u> 1.0)

b1 and b2 are species-specific coefficients shown in table 4.2.1

**Table 4.2.1 Coefficients for bark ratio equation {4.2.1} in the EM variant.**

| **Species Code** | **b1** | **b2** | **Equation Source** |
| --- | --- | --- | --- |
| WB | 0.934 | 0 | NI western hemlock |
| WL | 0.934 | 0 | NI western hemlock |
| DF | 0.867 | 0 | NI Douglas-fir |
| LM | 0.969 | 0 | NI western redcedar |
| LL | 0.937 | 0 | NI subalpine fir |
| RM\* | 0.9002 | -0.3089 |  |
| LP | 0.969 | 0 | NI lodgepole pine |
| ES | 0.956 | 0 | NI Engelmann spruce |
| AF | 0.937 | 0 | NI subalpine fir |
| PP | 0.890 | 0 | NI ponderosa pine |
| GA | 0.892 | -0.086 | CR cottonwood |
| AS | 0.950 | 0 | UT aspen |
| CW | 0.892 | -0.086 | CR cottonwood |
| BA | 0.892 | -0.086 | CR cottonwood |
| PW | 0.892 | -0.086 | CR cottonwood |
| NC | 0.892 | -0.086 | CR cottonwood |
| PB | 0.950 | 0 | UT aspen |
| OS | 0.934 | 0 | NI western hemlock |
| OH | 0.892 | -0.086 | CR cottonwood |

\**DBH* is bounded between 1.0 and 19.0

## 4.3 Crown Ratio Relationships

Crown ratio equations are used for three purposes in FVS: (1) to estimate tree crown ratios missing from the input data for both live and dead trees; (2) to estimate change in crown ratio from cycle to cycle for live trees; and (3) to estimate initial crown ratios for regenerating trees established during a simulation.

### 4.3.1 Crown Ratio Dubbing

In the EM variant, crown ratios missing in the input data are predicted using different equations depending on tree species and size. Live trees less than 1.0” in diameter and dead trees of all sizes for whitebark pine, western larch, Douglas-fir, limber pine, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, quaking aspen, paper birch, and other softwood use equations {4.3.1.1} and {4.3.1.2}. Live trees less than 3.0” in diameter and dead trees of all sizes for subalpine larch use equations {4.3.1.1} and {4.3.1.2}. Equation coefficients are found in table 4.3.1.1.

{4.3.1.1} *X* = R1 + R2 \* *DBH* + R3 \* *HT* + R4 \* *BA* + R5 \* *PCCF* + R6 \* *HTAvg / HT* + R7 \* *HTAvg* + R8 \* *BA* \* *PCCF* + R9 \* *MAI* + *N(0,SD)*

{4.3.1.2} *CR =* 1 / (1 + exp*(X+ N(0,SD)))* where absolute value of (*X + N(0,SD)*) < 86

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.05 <u><</u> *CR* <u><</u> 0.95)

*DBH* is tree diameter at breast height

*HT* is tree height

*BA* is total stand basal area

*PCCF* is crown competition factor on the inventory point where the tree is established

*HTAvg* is average height of the 40 largest diameter trees in the stand

*MAI* is stand mean annual increment

*N(0,SD)* is a random increment from a normal distribution with a mean of 0 and a standard deviation of SD

R1 – R9 are species-specific coefficients shown in table 4.3.1

**Table 4.3.1 Coefficients for the crown ratio equation {4.3.1} in the EM variant.**

| **Coefficient** | **Species Code** | | | | |
| --- | --- | --- | --- | --- | --- |
| **WB, WL, LM, LP, PP** | **LL** | **DF, ES, AF** | **AS, PB** | **OS** |
| R1 | -1.66949 | -0.89014 | -0.426688 | -0.426688 | -2.19723 |
| R2 | -0.209765 | -0.18026 | -0.093105 | -0.093105 | 0 |
| R3 | 0 | 0.02233 | 0.022409 | 0.022409 | 0 |
| R4 | 0.003359 | 0.00614 | 0.002633 | 0.002633 | 0 |
| R5 | 0.011032 | 0 | 0 | 0 | 0 |
| R6 | 0 | 0 | -0.045532 | -0.045532 | 0 |
| R7 | 0.017727 | 0 | 0 | 0 | 0 |
| R8 | -0.000053 | 0 | 0.000022 | 0.000022 | 0 |
| R9 | 0.014098 | 0 | -0.013115 | -0.013115 | 0 |
| SD | 0.5\* | 0.8871 | 0.6957 | 0.9310 | 0.2 |

\*SD for LP = 0.6124; SD for PP = 0.4942

For whitebark pine, western larch, Douglas-fir, limber pine, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, quaking aspen, paper birch, and other softwood live trees 1.0” in diameter or larger, a Weibull-based crown model developed by Dixon (1985) as described in Dixon (2002) is used to predict missing crown ratio. To estimate crown ratio using this methodology, the average stand crown ratio is estimated from the stand density index using equation {4.3.1.3}. Weibull parameters are then estimated from the average stand crown ratio using equations in equation set {4.3.1.4}. Individual tree crown ratio is then set from the Weibull distribution, equation {4.3.1.5} based on a tree’s relative position in the diameter distribution and multiplied by a scale factor, shown in equation {4.3.1.6}, which accounts for stand density. Crowns estimated from the Weibull distribution are bounded to be between the 5 and 95 percentile points of the specified Weibull distribution. Equation coefficients for each species for these equations are shown in table 4.3.1.2.

{4.3.1.3} *ACR* = d0 + d1 \* *RELSDI* \* 100.0

where: *RELSDI* = *SDIstand* / *SDImax*

{4.3.1.4} Weibull parameters A, B, and C are estimated from average crown ratio

*A* = a0

*B* = b0 + b1 \* ACR (*B* <u>></u> 1)

*C* = c0 + c1 \* ACR (*C* <u>></u> 2)

{4.3.1.5} *Y* = 1-exp(-((*X*-A)/B)^C)

{4.3.1.6} *SCALE =* 1 – 0.00167 \* (*SCCF* – 100)

where:

*ACR* is predicted average stand crown ratio for the species

*SDIstand* is stand density index of the stand

*SDImax* is maximum stand density index

*A*, *B*, *C* are parameters of the Weibull crown ratio distribution

*X* is a tree’s crown ratio expressed as a percent / 10

*Y* is a trees rank in the diameter distribution (1 = smallest; ITRN = largest)

divided by the total number of trees (ITRN) multiplied by *SCALE*

*SCALE* is a density dependent scaling factor(bounded to 0.3 <u><</u> *SCALE* <u><</u> 1.0)

*CCF* is stand crown competition factor

a0, b0-1, c0-1, and d0-1 are species-specific coefficients shown in table 4.3.2

**Table 4.3.2 Coefficients for the Weibull parameter equations {4.3.1.3} and {4.3.1.4} in the EM variant.**

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Species Code** | **a0** | **b0** | **b1** | **c0** | **c1** | **d0** | **d1** |
| WB, WL | 0 | 0.11035 | 1.10085 | 0.02774 | 0.35524 | 5.68625 | -0.04470 |
| DF | 0 | 0.14652 | 1.09052 | 1.04746 | 0.39752 | 5.92714 | -0.03346 |
| LM | 1 | -0.82631 | 1.06217 | 3.31429 | 0 | 6.19911 | -0.02216 |
| LP | 0 | -0.00359 | 1.12728 | 2.60377 | 0 | 5.05870 | -0.03307 |
| ES | 0 | 0.67059 | 0.99349 | -4.25938 | 1.35687 | 7.41093 | -0.03467 |
| AF | 0 | 0.73693 | 0.98414 | -4.16681 | 1.33779 | 7.36476 | -0.03761 |
| PP | 0 | 0.02663 | 1.11477 | 2.95048 | 0 | 5.61047 | -0.03557 |
| AS, PB | 0 | -0.08414 | 1.14765 | 2.77500 | 0 | 4.01678 | -0.01516 |
| OS | 0 | 0.11035 | 1.10085 | 0.02774 | 0.35524 | 5.68625 | -0.04470 |

Equation {4.3.1.7} is used to predict missing crown ratio missing in live trees 3.0” in diameter or larger for subalpine larch.

{4.3.1.7} ln(*CR)* = *HAB* – 0.00190 \* *BA* + 0.23372 \* ln(*DBH*) – 0.28433 \* ln(*HT*) + 0.001903 \**PCT*

where:

*CR* is predicted crown ratio expressed as a proportion

*HAB* is a habitat-dependent coefficient shown in table 4.3.1.3

*BA* is total stand basal area

*DBH* is tree diameter at breast height

*HT* is tree height

*PCT* is the subject tree’s percentile in the basal area distribution of the stand

**Table 4.3.1.3 *HAB* values by habitat class for equation {4.3.1.7} in the EM variant.**

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | **Habitat Class** | | | | | | | | | |
| **Species Code** | **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** | **10** |
| **LL** | 0.09453 | -0.0774 | 0.07113 | 0.2039 | 0.06176 | 0.1513 | 0.09086 | 0.1580 | 0.09229 | 0.01551 |

**Table 4.3.1.4 Habitat class by mapped NI habitat code, Appendix B table 11.2.2, for HAB values in equation {4.3.1.7} in the EM variant.**

| **Mapped NI Habitat Code** | **Habitat Class** |
| --- | --- |
| 130 | 2 |
| 170 | 2 |
| 250 | 2 |
| 260 | 2 |
| 280 | 2 |
| 290 | 2 |
| 310 | 2 |
| 320 | 2 |
| 330 | 2 |
| 420 | 2 |
| 470 | 2 |
| 510 | 2 |
| 520 | 2 |
| 530 | 3 |
| 540 | 4 |
| 550 | 4 |
| 570 | 4 |
| 610 | 4 |
| 620 | 5 |
| 640 | 6 |
| 660 | 6 |
| 670 | 7 |
| 680 | 6 |
| 690 | 1 |
| 710 | 8 |
| 720 | 1 |
| 730 | 9 |
| 830 | 10 |
| 850 | 10 |
| 999 | 6 |

Rocky Mountain juniper, green ash, black cottonwood, balsam poplar, plains cottonwood, narrowleaf cottonwood, and other hardwood use equation {4.3.1.8} or {4.3.1.9} to estimate crown ratio for live and dead trees missing crown ratios in the inventory. Rocky Mountain juniper uses equation {4.3.1.8}; the remaining species use equation {4.3.1.9}.

{4.3.1.8} *CR* = [-0.59373 + (0.67703 \* *HF*)] / *HF*

{4.3.1.9} *CR* = [5.17281 + (0.32552 \* *HF*) – (0.01675 \* *BA*)] / *HF*

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.05 <u><</u> *CR* <u><</u> 0.95)

*BA* is total stand basal area

*HF* is end of cycle tree height (*HT +* height growth)

### 4.3.2 Crown Ratio Change

Crown ratio change is estimated after growth, mortality and regeneration are estimated during a projection cycle. Crown ratio change is the difference between the crown ratio at the beginning of the cycle and the predicted crown ratio at the end of the cycle. Crown ratio predicted at the end of the projection cycle is estimated for live whitebark pine, western larch, Douglas-fir, limber pine, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, quaking aspen, paper birch and other softwood using the Weibull distribution, equations{4.3.1.3}-{4.3.1.6}. Live Rocky Mountain juniper uses equation {4.3.1.8}. Live green ash, black cottonwood, balsam poplar, plains cottonwood, narrowleaf cottonwood, and other hardwood use equation 4.3.1.9. For live subalpine larch trees greater than 3” in dbh, crown change is predicted using equation {4.3.1.7}. Crown change is checked to make sure it doesn’t exceed the change possible if all height growth produces new crown. Crown change is further bounded to 1% per year for the length of the cycle to avoid drastic changes in crown ratio.

### 4.3.3 Crown Ratio for Newly Established Trees

Crown ratios for newly established trees during regeneration are estimated using equation {4.3.3.1}. A random component is added in equation {4.3.3.1} to ensure that not all newly established trees are assigned exactly the same crown ratio.

{4.3.3.1} CR = 0.89722 – 0.0000461 \* PCCF + RAN

where:

CR is crown ratio expressed as a proportion (bounded to 0.2 <u><</u> CR <u><</u> 0.9)

PCCF is crown competition factor on the inventory point where the tree is established

RAN is a small random component

## 4.4 Crown Width Relationships

The EM variant calculates the maximum crown width for each individual tree based on individual tree and stand attributes. Crown width for each tree is reported in the tree list output table and used for percent canopy cover (*PCC*) calculations in the model. Crown width is calculated using equations {4.4.1} – {4.4.6}, and coefficients for these equations are shown in table 4.4.1. The minimum diameter and bounds for certain data values are given in table 4.4.2. Equation numbers in table 4.4.1 are given with the first three digits representing the FIA species code, and the last two digits representing the equation source.

{4.4.1} Bechtold (2004); Equation 01

*DBH* <u>></u> *MinD*: *CW* = a1 + (a2 \* *DBH*) + (a3 \* *DBH^*2)

*DBH* < *MinD*: *CW* = [a1 + (a2 \* *MinD*) \* (a3 \* *MinD^*2)] \* (*DBH* / *MinD*)

{4.4.2} Bechtold (2004); Equation 02

*DBH* <u>></u> *MinD*: *CW* = a1 + (a2 \* *DBH*) + (a3 \* *DBH^*2) + (a4 \* *CR%*) + (a5 \* *BA*) + (a6 \* *HI*)

*DBH* < *MinD*: *CW* = [a1 + (a2 \* *MinD*) + (a3 \* *MinD^*2) + (a4 \* *CR%*) + (a5 \* *BA*) + (a6 \* *HI*)] \* (*DBH* / *MinD*)

{4.4.3} Crookston (2003); Equation 03

*DBH* <u>></u> *MinD*: *CW* = [a1 \* exp [a2 + (a3 \* ln(*CL*)) + (a4 \* ln(*DBH*)) + (a5 \* ln(*HT*)) + (a6 \* ln(*BA*))]]

*DBH* < *MinD*: *CW* = [a1 \* exp [a2 + (a3 \* ln(*CL*)) + (a4 \* ln(*MinD*) + (a5 \* ln(*HT*)) + (a6 \* ln(*BA*))]] \* (*DBH* / *MinD*)

{4.4.4 Crookston (2005); Equation 04

*DBH* <u>></u> *MinD*: *CW* = a1 \* *DBH^*a2

*DBH* < *Min*: *CW* = [a1 \* *MinD^*a2] \* (*DBH* / *MinD*)

{4.4.5} Crookston (2005); Equation 05

*DBH* <u>></u> *MinD*: *CW* = (a1 \* *BF*) \* *DBH^*a2 \* *HT^*a3 \* *CL^*a4 \* (*BA* + 1.0)^a5 \* (exp(*EL*))^a6

*DBH* < *MinD*: *CW* = [(a1 \* *BF*) \* *MinD^*a2 \* *HT^*a3 \* *CL^*a4 \* (*BA* + 1.0)^a5 \* (exp(*EL*))^a6] \* (*DBH* / *MinD*)

{4.4.6} Donnelly (1996); Equation 06

*DBH* <u>></u> *MinD*: *CW* = a1 \* *DBH^*a2

*DBH* < *MinD*: *CW* = [a1 \* *MinD^*a2] \* (*DBH* / *MinD*)

where:

*BF* is a species-specific coefficient based on forest code (*BF* = 1.0 in the NI variant)

*CW* is tree maximum crown width

*CL* is tree crown length

*CR%* is crown ratio expressed as a percent

*DBH* is tree diameter at breast height

*HT* is tree height

*BA* is total stand basal area

*EL* is stand elevation in hundreds of feet

*MinD* is the minimum diameter

*HI* is the Hopkins Index

*HI* = (ELEVATION - 5449) / 100) \* 1.0 + (LATITUDE - 42.16) \* 4.0 + (-116.39 -LONGITUDE) \* 1.25

a1 – a6 are species-specific coefficients shown in table 4.4.1

**Table 4.4.1 Coefficients for crown width equations {4.4.1} – {4.4.6} in the EM variant.**

| **Species Code** | **Equation Number\*** | **a1** | **a2** | **a3** | **a4** | **a5** | **a6** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| WB | 10105 | 2.2354 | 0.6668 | -0.11658 | 0.16927 | 0 | 0 |
| WL | 07303 | 1.02478 | 0.99889 | 0.19422 | 0.59423 | -0.09078 | -0.02341 |
| DF | 20203 | 1.01685 | 1.48372 | 0.27378 | 0.49646 | -0.18669 | -0.01509 |
| LM | 11301 | 4.0181 | 0.8528 | 0 | 0 | 0 | 0 |
| LL | 07204 | 2.2586 | 0.68532 | 0 | 0 | 0 | 0 |
| RM | 06405 | 5.1486 | 0.73636 | -0.46927 | 0.39114 | -0.05429 | 0 |
| LP | 10803 | 1.03992 | 1.58777 | 0.30812 | 0.64934 | -0.38964 | 0 |
| ES | 09303 | 1.02687 | 1.28027 | 0.2249 | 0.47075 | -0.15911 | 0 |
| AF | 01903 | 1.02886 | 1.01255 | 0.30374 | 0.37093 | -0.13731 | 0 |
| PP | 12203 | 1.02687 | 1.49085 | 0.1862 | 0.68272 | -0.28242 | 0 |
| GA | 74902 | 4.1687 | 1.5355 | 0 | 0 | 0 | 0.1275 |
| AS | 74605 | 4.796 | 0.64167 | -0.18695 | 0.18581 | 0 | 0 |
| CW | 74902 | 4.1687 | 1.5355 | 0 | 0 | 0 | 0.1275 |
| BA | 74902 | 4.1687 | 1.5355 | 0 | 0 | 0 | 0.1275 |
| PW | 74902 | 4.1687 | 1.5355 | 0 | 0 | 0 | 0.1275 |
| NC | 74902 | 4.1687 | 1.5355 | 0 | 0 | 0 | 0.1275 |
| PB | 37506 | 5.8980 | 0.4841 | 0 | 0 | 0 | 0 |
| OS | 26405 | 3.7854 | 0.54684 | -0.12954 | 0.16151 | 0.03047 | -0.00561 |
| OH | 74902 | 4.1687 | 1.5355 | 0 | 0 | 0 | 0.1275 |

\*Equation number is a combination of the species FIA code (###) and source (##).

**Table 4.4.2 *MinD* values and data bounds for equations {4.4.1} – {4.4.6} in the EM variant.**

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Species Code** | **Equation Number\*** | ***MinD*** | ***EL min*** | ***EL* max** | ***HI* min** | ***HI* max** | ***CW* max** |
| WB | 10105 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| WL | 07303 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| DF | 20203 | 1.0 | n/a | n/a | n/a | n/a | 80 |
| LM | 11301 | 5.0 | n/a | n/a | n/a | n/a | 25 |
| LL | 07204 | 1.0 | n/a | n/a | n/a | n/a | 33 |
| RM | 06405 | 1.0 | n/a | n/a | n/a | n/a | 36 |
| LP | 10803 | 0.7 | n/a | n/a | n/a | n/a | 40 |
| ES | 09303 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| AF | 01903 | 0.1 | 10 | 85 | n/a | n/a | 30 |
| PP | 12203 | 2.0 | n/a | n/a | n/a | n/a | 46 |
| GA | 74902 | 5.0 | n/a | n/a | -26 | -2 | 35 |
| AS | 74605 | 1.0 | n/a | n/a | n/a | n/a | 45 |
| CW | 74902 | 5.0 | n/a | n/a | -26 | -2 | 35 |
| BA | 74902 | 5.0 | n/a | n/a | -26 | -2 | 35 |
| PW | 74902 | 5.0 | n/a | n/a | -26 | -2 | 35 |
| NC | 74902 | 5.0 | n/a | n/a | -26 | -2 | 35 |
| PB | 37506 | 1.0 | n/a | n/a | n/a | n/a | 25 |
| OS | 26405 | 1.0 | 10 | 79 | n/a | n/a | 45 |
| OH | 74902 | 5.0 | n/a | n/a | -26 | -2 | 35 |

## 4.5 Crown Competition Factor

The EM variant uses crown competition factor (*CCF*) as a predictor variable in some growth relationships. Crown competition factor (Krajicek and others 1961) is a relative measurement of stand density that is based on tree diameters. Individual tree *CCFt* values estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open-grown. Stand *CCF* is the summation of individual tree (*CCFt*)values. A stand *CCF* value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand. Crown competition factor for an individual tree is calculated using equation {4.5.1}. All species coefficients are shown in table 4.5.1.

{4.5.1} *CCF* equations for individual trees

*DBH* <u>></u> d”: *CCFt* = R1 + (R2 \* *DBH*) + (R3 \* *DBH^*2)

0.1” < *DBH* < d”: *CCFt* = R4 \* *DBH* ^R5

*DBH* <u><</u> 0.1”: *CCFt* = 0.001

where:

*CCFt* is crown competition factor for an individual tree

*DBH* is tree diameter at breast height

R1 – R5 are species-specific coefficients shown in table 4.5.1

d is 10.0” for green ash, black cottonwood, balsam poplar, plains cottonwood, narrowleaf cottonwood, and other hardwood; 1.0” for all other species

**Table 4.5.1 Coefficients for CCF equation {4.5.1} in the EM variant.**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Species Code** | **R1** | **R2** | **R3** | **R4** | **R5** |
| WB | 0.0186 | 0.0146 | 0.00288 | 0.009884 | 1.6667 |
| WL | 0.0392 | 0.0180 | 0.00207 | 0.007244 | 1.8182 |
| DF | 0.0388 | 0.0269 | 0.00466 | 0.017299 | 1.5571 |
| LM | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| LL | 0.03 | 0.0216 | 0.00405 | 0.011402 | 1.7560 |
| RM | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| LP | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| ES | 0.03 | 0.0173 | 0.00259 | 0.007875 | 1.7360 |
| AF | 0.0172 | 0.00876 | 0.00112 | 0.011402 | 1.7560 |
| PP | 0.0219 | 0.0169 | 0.00325 | 0.007813 | 1.7780 |
| GA | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |
| AS | 0.03 | 0.0238 | 0.00490 | 0.008915 | 1.7800 |
| CW | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |
| BA | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |
| PW | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |
| NC | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |
| PB | 0.03 | 0.0238 | 0.00490 | 0.008915 | 1.7800 |
| OS | 0.0204 | 0.0246 | 0.0074 | 0.011109 | 1.7250 |
| OH | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |

## 4.6 Small Tree Growth Relationships

Trees are considered “small trees” for FVS modeling purposes when they are smaller than some threshold diameter. The threshold diameter is set to 1.0” for green ash, black cottonwood, balsam poplar, plains cottonwood, narrowleaf cottonwood, and other hardwood, and is set to 3.0” for all other species in the EM variant except Rocky Mountain juniper. Rocky Mountain juniper uses the small-tree relationships to predict height and diameter growth for trees of all sizes.

The small tree model is height-growth driven, meaning height growth is estimated first and diameter growth is estimated from height growth. These relationships are discussed in the following sections.

### 4.6.1 Small Tree Height Growth

The small-tree height growth equations in the EM variant predict 5-year height growth (*HTG*) for whitebark pine, western larch, Douglas-fir, limber pine, subalpine larch, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, and other softwood, and 10-year height growth for Rocky Mountain juniper, green ash, quaking aspen, black cottonwood, balsam poplar, plains cottonwood, narrowleaf cottonwood, paper birch, and other hardwood. Different equation forms are used for different species.

Height growth for whitebark pine, western larch, Douglas-fir, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, and other softwood in the EM variant is estimated as a function of crown ratio, and point crown competition factor using equation {4.6.1.1}. Coefficients for this equation are shown in table 4.6.1.1.

{4.6.1.1} *HTG* = exp[c1 + (c2 \* ln(CCF))] + *CR* \* exp[c3 + (c4 \* ln(CCF))]

where:

*HTG* is estimated 5-year height growth

*CCF* is point crown competition factor (bounded to 25 <u><</u> *CCF* <u><</u> 300)

*CR* is a tree’s live crown ratio (compacted) expressed as a percent

c1 – c4 are species-specific coefficients shown in table 4.6.1.1

**Table 4.6.1.1 Coefficients for equation {4.6.1.1} in the EM variant.**

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Species Code** | **c1** | **c2** | **c3** | **c4** |
| WB | 1.17527 | -0.42124 | -2.56002 | -0.58642 |
| WL | 1.17527 | -0.42124 | -2.56002 | -0.58642 |
| DF | -4.35709 | 0.67307 | -2.49682 | -0.51938 |
| LP | -0.90086 | 0.16996 | -1.50963 | -0.61825 |
| ES | -0.55052 | -0.02858 | -2.26007 | -0.67115 |
| AF | -4.35709 | 0.67307 | -2.49682 | -0.51938 |
| PP | 0.405 | 0 | -1.50963 | -0.61825 |
| OS | 1.17527 | -0.42124 | -2.56002 | -0.58642 |

The remaining species in the EM variant use small-tree height growth equations taken from other variants.

Height growth for subalpine larch is estimated using equation {4.6.1.2) which is the subalpine fir equation from the Northern Idaho variant.

{4.6.1.2} *HTG* = exp[*x*]

*X* = -0.2785 + *HAB* + 1.0667 + 0.3740 \* ln(*HT*) – 0.00391 \* *CCF* – 0.22957 \* *BAL* + 0.22157 \* *SL* \* cos(*ASP*) - 0.12432 \* *SL* \* sin(*ASP*) - 0.10987 \* *SL*

where:

*HTG* is estimated 5-year height growth

*HAB* is a habitat type dependent intercept shown in table 4.6.1.2, mapped as shown in table 4.6.1.3 and Appendix B table 11.2.2

*CCF* is stand crown competition factor

*BAL* is total basal area in trees larger than the subject tree

*ASP* is stand aspect

*SL* is stand slope

*HT* is tree height

c1 – c2 are species-specific coefficients shown in table 4.6.1.1

**Table 4.6.1.2 *HAB* values by habitat class for equation {4.6.1.2} in the EM variant.**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | **Habitat Class** | | | | |
| **Code** | **1** | **2** | **3** | **4** | **5** |
| LL | -0.2146 | -0.0941 | -0.4916 | -0.3582 | 0.0 |

**Table 4.6.1.3 Habitat class by mapped NI habitat code, Appendix B table 11.2.2, for HAB values in equation {4.6.1.2} in the EM variant.**

| **Mapped NI Habitat Code** | **Habitat Class** |
| --- | --- |
| 130 | 4 |
| 170 | 4 |
| 250 | 4 |
| 260 | 4 |
| 280 | 4 |
| 290 | 4 |
| 310 | 4 |
| 320 | 4 |
| 330 | 4 |
| 420 | 4 |
| 470 | 4 |
| 510 | 4 |
| 520 | 3 |
| 530 | 2 |
| 540 | 5 |
| 550 | 5 |
| 570 | 5 |
| 610 | 5 |
| 620 | 1 |
| 640 | 4 |
| 660 | 4 |
| 670 | 4 |
| 680 | 4 |
| 690 | 4 |
| 710 | 4 |
| 720 | 4 |
| 730 | 1 |
| 830 | 3 |
| 850 | 3 |
| 999 | 4 |

Height growth for limber pine is estimated using equation {4.6.1.3} which is from the Tetons variant.

{4.6.1.3} *HTG* = exp[1.17527 - (0.42124 \* ln(*TPCCF*))] + *CR* \* exp[-2.56002 - (0.58642 \* ln(*TPCCF*))]

where:

*HTG* is estimated 5-year height growth

*TPCCF* is total crown competition factor on the inventory point where the tree is established (bounded to 25 <u><</u> *TPCCF* <u><</u> 300)

*CR* is a tree’s live crown ratio (compacted) expressed as a percent

For Rocky Mountain juniper, potential 10-year height growth is estimated using equation {4.6.1.4}. The reduction proportion due to stand density (*PCTRED*) is computed with equation {4.6.1.5} and the reduction proportion due to crown ratio (*VIGOR*) is computed with equation {4.6.1.6}, to determine an estimated 10-year height growth as shown in equation {4.6.1.7}. These equations are from the Utah variant.

{4.6.1.4} *POTHTG* = (*SI* / 10.0) \* ((*SI* \* 1.5) - *HT*) / (*SI* \* 1.5)

{4.6.1.5} *PCTRED* = 1.1144 – 0.0115\**Z* + 0.4301E-04 \* *Z^*2 – 0.7222E-07 \* *Z^*3 + 0.5607E-10 \* *Z^*4 – 0.1641E-13 \* *Z^*5

*Z* = *HTAvg* \* (*CCF* / 100)

{4.6.1.6} *VIGOR* = 1 – [(1 – ((150 \* *CR^*3 \* exp(-6 \* *CR*) ) + 0.3)) / 3]

{4.6.1.7} *HTG* = *POTHTG* \* *PCTRED* \* *VIGOR*

where:

*HTG* is estimated 10-year height growth

*POTHTG* is potential 10-year height growth

*PCTRED* is reduction in height growth due to stand density (bounded: 0.01 <u><</u> *PCTRED* <u><</u> 1.0)

*HTAvg* is average height of the 40 largest diameter trees in the stand

*HT* is total tree height at the beginning of the projection cycle

*CR* is a tree’s live crown ratio (compacted) expressed as a proportion

*CCF* is stand crown competition factor

*VIGOR* is reduction in height growth due to tree vigor (bounded to *VIGOR* <u><</u> 1.0)

*SI* is species site index bounded by (*SITELO* + 0.5) and *SITEHI*

*SITELO* is lower end of the site range for this species shown in table 4.6.1.4

*SITEHI* is upper end of the site range for this species shown in table 4.6.1.4

Green ash, black cottonwood, balsam poplar, plains cottonwood, narrowleaf cottonwood, and other hardwood use the cottonwood species equations from the Central Rockies variant. Potential height growth is estimated using equation {4.6.1.8}, and then adjusted based on stand density (*PCTRED*) and crown ratio (*VIGOR*) as shown in equations {4.6.1.5} and {4.6.1.9} respectively, to determine an estimated height growth as shown in equation {4.6.1.7}.

{4.6.1.8} *POTHTG* = *SITE* / (15.0 – 4.0 \* (*SI* – *SITELO*) / (*SITEHI* – *SITELO*))

{4.6.1.9} *VIGOR* = (150 \* *CR^*3 \* exp(-6 \* *CR*) ) + 0.3

where:

*POTHTG* is potential 10-year height growth

*CR* is a tree’s live crown ratio (compacted) expressed as a proportion

*VIGOR* is reduction in height growth due to tree vigor (bounded to *VIGOR* <u><</u> 1.0)

*SI* is species site index bounded by (*SITELO* + 0.5) and *SITEHI*

*SITE* is species site index

*SITELO* is lower end of the site range for this species shown in table 4.6.1.4

*SITEHI* is upper end of the site range for this species shown in table 4.6.1.4

Height growth for quaking aspen and paper birch is obtained from an aspen height-age curve (Shepperd 1995). Because Shepperd’s original curve seemed to overestimate height growth, the EM variant reduces the estimated height growth by 25 percent (shown in equation {4.6.1.10}). A height is estimated from the trees’ current age, and then its current age plus 10 years. Height growth is the difference between these two height estimates adjusted to account for cycle length and any user defined small-tree height growth adjustments for aspen. This equation estimates height growth in centimeters so FVS also converts the estimate from centimeters to feet. An estimate of the tree’s current age is obtained at the start of a projection using the tree’s height and solving equation {4.6.1.10} for age.

{4.6.1.10} *HTG* = (26.9825 \* *A^*1.1752) \* 0.375 \* (1 + [(*SI* – *SITELO*) / (*SITEHI* – *SITELO*)]

where:

*HTG* is estimated 10-year height growth for the cycle

*SI* is species site index bounded by *SITELO* and *SITEHI*

*SITELO* is lower end of the site range for this species shown in table 4.6.1.4

*SITEHI* is upper end of the site range for this species shown in table 4.6.1.4

*A* is tree age

If the site index for the species is less than or equal to the lower site limit, it is set to the lower limit + 0.5 for the calculation of RELSI. Similarly, if the site index for the species is greater than the upper site limit, it is set to the upper site limit for the calculation of RELSI.

**Table 4.6.1.4 *SITELO* and *SITEHI* values for equations {4.6.1.8} and {4.6.1.10} in the EM variant.**

| **Species Code** | ***SITELO*** | ***SITEHI*** |
| --- | --- | --- |
| RM | 5 | 15 |
| GA | 30 | 120 |
| AS | 30 | 70 |
| CW | 30 | 120 |
| BA | 30 | 120 |
| PW | 30 | 120 |
| NC | 30 | 120 |
| PB | 30 | 70 |
| OH | 30 | 120 |

For all species, a small random error is then added to the height growth estimate. The estimated height growth is then adjusted to account for cycle length, user defined small-tree height growth adjustments, and adjustments due to small tree height model calibration from the input data.

Height growth estimates from the small-tree model are weighted with the height growth estimates from the large tree model over a range of diameters (*Xmin* and *Xmax*) in order to smooth the transition between the two models. For example, the closer a tree’s *DBH* value is to the minimum diameter (*Xmin*), the more the growth estimate will be weighted towards the small-tree growth model. The closer a tree’s *DBH* value is to the maximum diameter (*Xmax*), the more the growth estimate will be weighted towards the large-tree growth model. If a tree’s *DBH* value falls outside of the range given by *Xmin* and *Xmax*, then the model will use only the small-tree or large-tree growth model in the growth estimate. The weight applied to the growth estimate is calculated using equation {4.6.1.11}, and applied as shown in equation {4.6.1.12}. The range of diameters for each species is shown in table 4.6.1.5.

{4.6.1.11}

DBH <u><</u> Xmin: XWT = 0

Xmin < DBH < Xmax: XWT = (DBH - Xmin) / (Xmax - Xmin)

DBH <u>></u> Xmax: XWT = 1

{4.6.1.12} Estimated growth = [(1 - *XWT*) \* *STGE*] + [*XWT* \* *LTGE*]

where:

*XWT* is the weight applied to the growth estimates

*DBH* is tree diameter at breast height

*Xmax* is the maximum *DBH* is the diameter range

*Xmin* is the minimum *DBH* in the diameter range

*STGE* is the growth estimate obtained using the small-tree growth model

*LTGE* is the growth estimate obtained using the large-tree growth model

**Table 4.6.1.5 *Xmin* and *Xmax* values for equation {4.6.1.11} in the EM variant.**

| **Species Code** | ***Xmin*** | ***Xmax*** |
| --- | --- | --- |
| WB | 1.5 | 3.0 |
| WL | 1.5 | 3.0 |
| DF | 1.5 | 3.0 |
| LM | 1.5 | 3.0 |
| LL | 2.0 | 10.0 |
| RM | 90.0 | 99.0 |
| LP | 1.5 | 3.0 |
| ES | 1.5 | 3.0 |
| AF | 1.5 | 3.0 |
| PP | 1.5 | 3.0 |
| GA | 0.5 | 2.0 |
| AS | 2.0 | 4.0 |
| CW | 0.5 | 2.0 |
| BA | 0.5 | 2.0 |
| PW | 0.5 | 2.0 |
| NC | 0.5 | 2.0 |
| PB | 2.0 | 4.0 |
| OS | 1.5 | 3.0 |
| OH | 0.5 | 2.0 |

### ****4.6.2 Small Tree Diameter Growth****

As stated previously, for trees being projected with the small tree equations, height growth is predicted first, and then diameter growth. So both height at the beginning of the cycle and height at the end of the cycle are known when predicting diameter growth. For most species in the EM variant, small tree diameter growth for trees over 4.5 feet tall is calculated as the difference of predicted diameter at the start of the projection period and the predicted diameter at the end of the projection period, adjusted for bark ratio. By definition, diameter growth is zero for trees less than 4.5 feet tall.

For whitebark pine, western larch, Douglas-fir, limber pine, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, and other softwood, small-tree diameter is estimated using equation {4.6.2.1} or {4.6.2.2}, and coefficients shown in table 4.6.2.1.

{4.6.2.1} *DBH* = [b1 \* (*HT* – 4.5) \* *CR* + b2\* (*HT* – 4.5) \* *PCCF* + b3 \* *CR* + b4 \* (*HT* –4.5)] + 0.3

{4.6.2.2} *DBH* = b1 + (b2 \* *HT*) + (b3 \* *CR*) + (b4 \* *PCCF*)

where:

*DBH* is tree diameter at breast height

*HT* is tree height

*CR* is a tree’s live crown ratio (compacted) expressed as a percent

*PCCF* is crown competition factor on the inventory point where the tree is established

b1 – b4 are species-specific coefficients shown in table 4.6.2.1

**Table 4.6.2.1 Coefficients (b1 - b4) for equations {4.6.2.1} and {4.6.2.2} in the EM variant.**

| **Species Code** | **Equation Used** | **b1** | **b2** | **b3** | **b4** |
| --- | --- | --- | --- | --- | --- |
| WB | {4.6.2.1} | 0.000231 | -0.00005 | 0.001711 | 0.17023 |
| WL | {4.6.2.1} | 0.000231 | -0.00005 | 0.001711 | 0.17023 |
| DF | {4.6.2.2} | -0.28654 | 0.13469 | 0.002736 | 0.00036 |
| LM | {4.6.2.1} | 0.000231 | -0.00005 | 0.001711 | 0.17023 |
| LP | {4.6.2.2} | -0.41227 | 0.16944 | 0.003191 | -0.0022 |
| ES | {4.6.2.2} | 0.04125 | 0.17486 | -0.00237 | -0.0007 |
| AF | {4.6.2.2} | -0.15906 | 0.15323 | 0 | 0 |
| PP | {4.6.2.1} | 0.000335 | -0.0002 | 0.002621 | 0.15622 |
| OS | {4.6.2.1} | 0.000231 | -0.00005 | 0.001711 | 0.17023 |

For green ash, quaking aspen, black cottonwood, balsam poplar, plains cottonwood, narrowleaf cottonwood, paper birch, and other hardwood these two predicted diameters are estimated using the species-specific height-diameter relationships discussed in section 4.1.

For subalpine larch, these two predicted diameters are estimated using equations {4.6.2.3} – {4.6.2.6}.

{4.6.2.3} *DHAT* = 0.0658 \* (*HT* – 4.5) 1.3817 + *DADJ*

{4.6.2.4} *DADJ* = *DELMAX* \* *RELH* \* *RELH* – 2 \* *DELMAX* \* *RELH* + 0.65

{4.6.2.5} *RELH* = (*HT* – 4.5) / (*AH* – 4.5)

{4.6.2.6} *DELMAX* = (*AH* / 36) \* (0.01232 \* CCF – 1.75)

where:

*DHAT* is estimated tree diameter at breast height

*HT* is tree height

*DADJ* is an adjustment factor to correct for bias, relative tree size, and stand density

*RELH* is relative tree height (bounded 0 <u><</u> *RELHT* <u><</u> 1)

*AH* is average height of the 40 largest diameter trees

*DELMAX* is an adjustment factor based on relative tree size and stand density (bounded DELMAX <u><</u> 0)

*CCF* is stand crown competition factor

Rocky Mountain juniper uses equation {4.6.2.7} to estimate the diameters.

{4.6.2.7} *DHAT* = (*HT* – 4.5) \* 10 / (*SI* – 4.5)

where:

*DHAT* is estimated tree diameter at breast height

*HT* is tree height

*SI* is species site index

## 4.7 Large Tree Growth Relationships

Trees are considered “large trees” for FVS modeling purposes when they are equal to, or larger than, some threshold diameter. This threshold diameter is set to 3.0” for most species in the EM variant. For green ash (11), black cottonwood (13), balsam poplar (14), plains cottonwood (15), narrowleaf cottonwood (16) and other hardwood (19) the threshold diameter is 1.0”. Rocky Mountain juniper (6) only uses the small-tree relationships to predict height and diameter growth for trees of all sizes.

The large-tree model is driven by diameter growth meaning diameter growth is estimated first, and then height growth is estimated from diameter growth and other variables. These relationships are discussed in the following sections.

### 4.7.1 Large Tree Diameter Growth

The large tree diameter growth model used in most FVS variants is described in section 7.2.1 in Dixon (2002). For most variants, instead of predicting diameter increment directly, the natural log of the periodic change in squared inside-bark diameter (ln(*DDS*)) is predicted (Dixon 2002; Wykoff 1990; Stage 1973; and Cole and Stage 1972). For variants predicting diameter increment directly, diameter increment is converted to the *DDS* scale to keep the FVS system consistent across all variants.

For whitebark pine, western larch, Douglas-fir, limber pine, subalpine larch, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, and other softwood, the EM variant predicts diameter growth using equation {4.7.1.1.}. Coefficients for this equation are shown in tables 4.7.1.1 - 4.7.1.6.

{4.7.1.1} ln*(DDS)* = b1 + (b2 \* *EL*) + (b3 \* *EL^*2) + (b4 \* sin(*ASP*) \* *SL*) + (b5 \* cos(*ASP*) \* *SL*) + (b6 \* *SL*) + (b7 \* *SL^*2) + (b8 \* ln(*DBH*)) + (b9 \* ln(*BAL*)) + (b10 \* *CR*) + (b11 \* *CR^*2) + (b12 \* *BAL* / (ln(*DBH* + 1.0))) + (b13 \* *CCF*^2) + (b14 \* ln(CCF)) + (b15 \* PCCF \* DUM1) + (b16 \* PCCF \* DUM2) + (b17 \* DBH^2) + (b18 \* 0.01 \* CCF) + (b19 \* SI) + HAB

where:

*DDS* is the predicted periodic change in squared inside-bark diameter

*EL* is stand elevation in hundreds of feet

*ASP* is stand aspect (for limber pine, Rocky Mountain juniper, aspen and paper birch,  *ASP* = -0.7854)

*SL* is stand slope for limber pine and subalpine larch; is stand slope / 10 for whitebark pine, western larch, Douglas-fir, lodgepole pine, Engelmann spruce, subalpine fir, and ponderosa pine; is equal to 0 for other softwood

*CR* is a tree’s live crown ratio (compacted) expressed as a proportion

*DBH* is tree diameter at breast height

*BAL* is total basal area in trees larger than the subject tree (*BAL*/100. is used as the variable for limber pine and subalpine larch)

*CCF* is stand crown competition factor

*PCCF* is crown competition factor on the inventory point where the tree is established

*HAB* is a plant association code dependent coefficient shown in tables 4.7.1.5 and 4.7.1.6

*DUM1-2* are dummy variables depending on whether or not the stand is managed:

*DUM1* = 0, *DUM2* = 1.0 for unmanaged stands

*DUM1* = 1.0, *DUM2* = 0 for managed stands

*SI* is species specific site index

b1 is a location and species specific coefficient shown in tables 4.7.1.2 and 4.7.1.3

b2 - b16 are species-specific coefficients shown in table 4.7.1.1

b17 is a location and species specific coefficient shown in tables 4.7.1.1 and 4.7.1.4

b18 is a location and species specific coefficient shown in table 4.7.1.1 and 4.7.1.7

b19 is a species specific coefficient shown in table 4.7.1.1

**Table 4.7.1.1 Coefficients (b2- b19) for equation 4.7.1.1 in the EM variant.**

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Coefficient** | **Species Code** | | | | | | | |
| **WB** | **WL** | **DF** | **LP** | **ES** | **AF** | **PP** | **OS** |
| b2 | -0.00565 | -0.00565 | -0.00196 | -0.01234 | 0.08677 | -0.00885 | -0.07453 | -0.00565 |
| b3 | 0 | 0 | 0 | 0 | -0.00072 | -0.00002 | 0.0006 | 0 |
| b4 | -0.01606 | -0.01606 | 0.06124 | -0.00393 | 0.03982 | 0.01463 | 0.20328 | -0.01606 |
| b5 | 0.00270 | 0.00270 | -0.04290 | -0.02355 | -0.15989 | -0.20925 | 0.06497 | 0.00270 |
| b6 | -0.20011 | -0.20011 | -0.39500 | -0.21964 | 0.06898 | -0.03350 | -0.95238 | -0.20011 |
| b7 | 0 | 0 | 0 | 0 | -0.34251 | -0.11164 | 0.61813 | 0 |
| b8 | 0.80110 | 0.80110 | 0.82617 | 0.75719 | 0.83323 | 0.89571 | 0.58932 | 0.80110 |
| b9 | 0.00064 | 0.00064 | 0.00216 | 0.00556 | 0.00443 | 0.00350 | 0.00710 | 0.00064 |
| b10 | 1.02878 | 1.02878 | 1.41015 | 1.43611 | 1.10040 | 1.30934 | 1.94874 | 1.02878 |
| b11 | -0.45448 | -0.45448 | -0.55362 | -0.44926 | 0 | -0.17348 | -0.88761 | -0.45448 |
| b12 | -0.00328 | -0.00328 | -0.00889 | -0.01282 | -0.01281 | -0.00764 | -0.02316 | -0.00328 |
| b13 | 0 | 0 | 0.000003 | 0.000002 | 0.000002 | -0.000003 | 0.000005 | 0 |
| b14 | -0.25717 | -0.25717 | -0.11974 | -0.12332 | 0 | 0 | 0 | -0.25717 |
| b15 | 0 | 0 | -0.00211 | -0.00120 | -0.00155 | -0.00164 | -0.00297 | 0 |
| b16 | 0 | 0 | -0.00232 | -0.00145 | -0.00123 | -0.00232 | -0.00254 | 0 |
| b17 | 0 | 0 | \*\* | -0.000402 | -0.000034 | 0 | \*\* | 0 |
| b18 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b19 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |

**Table 4.7.1.1 Continued Coefficients (b2- b19) for equation 4.7.1.1 in the EM variant.**

| **Coefficient** | **Species Code** | |
| --- | --- | --- |
| **LM** | **LL** |
| b2 | 0 | 0.06313 |
| b3 | 0 | -0.000676 |
| b4 | -0.01752 | -0.06862 |
| b5 | -0.609774 | -0.12473 |
| b6 | -2.05706 | 0.30070 |
| b7 | 2.113263 | -0.62224 |
| b8 | 0.213947 | 0.86240 |
| b9 | -0.358634 | 0 |
| b10 | 1.523464 | 0.52044 |
| b11 | 0 | 0.86236 |
| b12 | 0 | -0.51270 |
| b13 | 0 | 0 |
| b14 | 0 | 0 |
| b15 | 0 | 0 |
| b16 | 0 | 0 |
| b17 | -0.0006538 | -0.000283 |
| b18 | -0.199592 | \* |
| b19 | 0.001766 | 0 |

\*See table 4.7.1.7, as indexed by values in tables 4.7.1.6 and 11.2.2

\*\*See table 4.7.1.4

**Table 4.7.1.2 b1 values by location class for equation {4.7.1.1} in the EM variant.**

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Location**  **Class** | **Species Code** | | | | | | | | | |
| **WB** | **WL** | **DF** | **LM** | **LL** | **LP** | **ES** | **AF** | **PP** | **OS** |
| 1 | 1.5675 | 1.5675 | 1.10349 | 1.568742 | 0 | 1.75497 | -2.45844 | 0.46110 | 3.57069 | 1.5675 |
| 2 | 0 | 0 | 1.55392 | 0 | 0 | 1.89439 | -2.14138 | -0.16517 | 3.45044 | 0 |
| 3 | 0 | 0 | 1.04495 | 0 | 0 | 1.63227 | -2.55288 | 0.35319 | 3.67551 | 0 |
| 4 | 0 | 0 | 1.27679 | 0 | 0 | 1.65474 | -2.42650 | 0.64719 | 0 | 0 |
| 5 | 0 | 0 | 0 | 0 | 0 | 1.51043 | 0 | 0.40140 | 0 | 0 |
| 6 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0.33757 | 0 | 0 |

**Table 4.7.1.3 Location class by species and forest code for assigning b1 values in equation {4.7.1.1} in the EM variant.**

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Location Code** | **Species Code** | | | | | | | | | |
| **WB** | **WL** | **DF** | **LM** | **LL** | **LP** | **ES** | **AF** | **PP** | **OS** |
| 102 - Beaverhead | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 108 - Custer | 1 | 1 | 2 | 1 | 1 | 2 | 2 | 2 | 2 | 1 |
| 109 - Deerlodge | 1 | 1 | 3 | 1 | 1 | 3 | 3 | 3 | 3 | 1 |
| 111 - Gallatin | 1 | 1 | 4 | 1 | 1 | 2 | 2 | 4 | 3 | 1 |
| 112 - Helena | 1 | 1 | 3 | 1 | 1 | 4 | 3 | 5 | 2 | 1 |
| 115 - Lewis and Clark | 1 | 1 | 1 | 1 | 1 | 5 | 4 | 6 | 2 | 1 |

**Table 4.7.1.4 Douglas-fir and ponderosa pine b17 values by location code for equation {4.7.1.1} in the EM variant.**

|  |  |  |
| --- | --- | --- |
| **Location**  **Code** | **Species Code** | |
| **DF** | **PP** |
| 102 | -0.000251 | -0.000248 |
| 108 | 0 | -0.000991 |
| 109 | -0.000412 | -0.000248 |
| 111 | -0.000251 | -0.000248 |
| 112 | 0 | -0.000248 |
| 115 | -0.000412 | -0.000248 |

**Table 4.7.1.5 *HAB* values by habitat class for equation {4.7.1.1} in the EM variant.**

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Habitat Class** | **Species Code** | | | | | | | |
| **WB** | **WL** | **DF** | **LP** | **ES** | **AF** | **PP** | **OS** |
| 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 2 | -0.20842 | -0.20842 | -0.20240 | -0.06686 | 0.23303 | 0.12967 | -0.19356 | -0.20842 |
| 3 | 0.01545 | 0.01545 | -0.03260 | 0.00921 | -0.01746 | 0.33768 | -0.07999 | 0.01545 |
| 4 | 0.29742 | 0.29742 | 0.05559 | -0.17011 | 0.11129 | 0.25940 | 0.03500 | 0.29742 |
| 5 | 0 | 0 | -0.12847 | -0.11806 | 0.19065 | 0.48657 | -0.13880 | 0 |
| 6 | 0 | 0 | -0.07100 | -0.22504 | 0.40362 | 0 | -1.04929 | 0 |
| 7 | 0 | 0 | -0.31860 | 0.06528 | 0 | 0 | -0.32378 | 0 |
| 8 | 0 | 0 | 0 | 0.14340 | 0 | 0 | 0 | 0 |

**Table 4.7.1.5 Continued *HAB* values by habitat class for equation {4.7.1.1} in the EM variant.**

|  |  |  |
| --- | --- | --- |
| **Habitat Class** | **Species Code** | |
| **LM** | **LL** |
| 1 | 0 | -0.96389 |
| 2 | 0 | -0.72415 |
| 3 | 0 | -0.57308 |
| 4 | 0 | -0.82218 |
| 5 | 0 | -1.24093 |
| 6 | 0 | -1.10746 |
| 7 | 0 | 0 |
| 8 | 0 | 0 |

**Table 4.7.1.6 Habitat class by plant association code and species in the EM variant.**

| **EM Habitat Code** | **Species Code** | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WB** | **WL** | **DF** | **LP** | **ES** | **AF** | **PP** | **OS** |
| 10 | 4 | 4 | 5 | 1 | 4 | 3 | 1 | 4 |
| 65 | 4 | 4 | 5 | 7 | 4 | 2 | 1 | 4 |
| 70 | 3 | 3 | 7 | 6 | 4 | 2 | 1 | 3 |
| 74 | 3 | 3 | 4 | 1 | 4 | 2 | 1 | 3 |
| 79 | 3 | 3 | 4 | 2 | 4 | 2 | 1 | 3 |
| 91 | 3 | 3 | 7 | 6 | 4 | 2 | 1 | 3 |
| 92 | 2 | 2 | 7 | 6 | 4 | 2 | 1 | 2 |
| 93 | 2 | 2 | 3 | 8 | 4 | 2 | 1 | 2 |
| 95 | 2 | 2 | 5 | 7 | 4 | 2 | 1 | 2 |
| 100 | 2 | 2 | 5 | 1 | 4 | 2 | 1 | 2 |
| 110 | 2 | 2 | 5 | 1 | 4 | 2 | 1 | 2 |
| 120 | 2 | 2 | 6 | 8 | 4 | 2 | 1 | 2 |
| 130 | 2 | 2 | 4 | 3 | 4 | 2 | 2 | 2 |
| 140 | 2 | 2 | 4 | 8 | 4 | 2 | 2 | 2 |
| 141 | 2 | 2 | 4 | 2 | 4 | 2 | 2 | 2 |
| 161 | 2 | 2 | 4 | 1 | 4 | 2 | 3 | 2 |
| 170 | 2 | 2 | 4 | 8 | 4 | 2 | 3 | 2 |
| 171 | 2 | 2 | 4 | 1 | 4 | 2 | 2 | 2 |
| 172 | 2 | 2 | 4 | 3 | 4 | 2 | 3 | 2 |
| 180 | 2 | 2 | 4 | 1 | 4 | 2 | 4 | 2 |
| 181 | 2 | 2 | 4 | 1 | 4 | 2 | 5 | 2 |
| 182 | 2 | 2 | 4 | 1 | 4 | 2 | 4 | 2 |
| 200 | 4 | 4 | 4 | 8 | 4 | 2 | 1 | 4 |
| 210 | 4 | 4 | 4 | 8 | 4 | 2 | 2 | 4 |
| 220 | 4 | 4 | 2 | 3 | 5 | 2 | 2 | 4 |
| 221 | 4 | 4 | 4 | 3 | 1 | 2 | 2 | 4 |
| 230 | 4 | 4 | 5 | 2 | 4 | 2 | 6 | 4 |
| 250 | 3 | 3 | 5 | 7 | 5 | 2 | 3 | 3 |
| 260 | 3 | 3 | 3 | 3 | 6 | 5 | 3 | 3 |
| 261 | 4 | 4 | 3 | 7 | 6 | 5 | 4 | 4 |
| 262 | 4 | 4 | 4 | 1 | 3 | 5 | 4 | 4 |
| 280 | 3 | 3 | 5 | 1 | 4 | 2 | 4 | 3 |
| 281 | 3 | 3 | 5 | 2 | 4 | 2 | 4 | 3 |
| 282 | 3 | 3 | 3 | 3 | 5 | 2 | 4 | 3 |
| 283 | 3 | 3 | 7 | 1 | 5 | 2 | 4 | 3 |
| 290 | 4 | 4 | 5 | 3 | 4 | 2 | 4 | 4 |
| 291 | 3 | 3 | 5 | 3 | 4 | 2 | 4 | 3 |
| 292 | 3 | 3 | 5 | 1 | 4 | 2 | 4 | 3 |
| 293 | 3 | 3 | 7 | 1 | 4 | 2 | 4 | 3 |
| 310 | 3 | 3 | 5 | 7 | 3 | 5 | 5 | 3 |
| 311 | 3 | 3 | 4 | 3 | 3 | 5 | 5 | 3 |
| 312 | 3 | 3 | 4 | 7 | 3 | 5 | 5 | 3 |
| 313 | 3 | 3 | 5 | 1 | 4 | 5 | 5 | 3 |
| 315 | 3 | 3 | 5 | 1 | 4 | 5 | 5 | 3 |
| 320 | 3 | 3 | 2 | 2 | 4 | 5 | 5 | 3 |
| 321 | 4 | 4 | 6 | 3 | 2 | 5 | 5 | 4 |
| 322 | 3 | 3 | 5 | 3 | 5 | 5 | 5 | 3 |
| 323 | 3 | 3 | 3 | 1 | 6 | 5 | 5 | 3 |
| 330 | 4 | 4 | 3 | 2 | 4 | 5 | 7 | 4 |
| 331 | 4 | 4 | 3 | 2 | 4 | 5 | 7 | 4 |
| 332 | 4 | 4 | 3 | 2 | 4 | 5 | 7 | 4 |
| 340 | 4 | 4 | 3 | 3 | 5 | 5 | 7 | 4 |
| 350 | 3 | 3 | 7 | 7 | 4 | 2 | 7 | 3 |
| 360 | 3 | 3 | 7 | 6 | 4 | 5 | 7 | 3 |
| 370 | 2 | 2 | 7 | 1 | 4 | 5 | 3 | 2 |
| 371 | 2 | 2 | 5 | 1 | 4 | 5 | 3 | 2 |
| 400 | 3 | 3 | 5 | 2 | 4 | 4 | 7 | 3 |
| 410 | 3 | 3 | 6 | 7 | 5 | 4 | 7 | 3 |
| 430 | 3 | 3 | 6 | 3 | 5 | 4 | 7 | 3 |
| 440 | 2 | 2 | 6 | 8 | 5 | 4 | 7 | 2 |
| 450 | 3 | 3 | 6 | 8 | 4 | 4 | 7 | 3 |
| 460 | 3 | 3 | 5 | 7 | 5 | 4 | 7 | 3 |
| 461 | 2 | 2 | 5 | 7 | 4 | 4 | 7 | 2 |
| 470 | 3 | 3 | 5 | 7 | 4 | 4 | 7 | 3 |
| 480 | 3 | 3 | 3 | 8 | 2 | 4 | 7 | 3 |
| 591 | 3 | 3 | 7 | 6 | 2 | 4 | 7 | 3 |
| 610 | 3 | 3 | 3 | 8 | 1 | 3 | 7 | 3 |
| 620 | 3 | 3 | 3 | 6 | 4 | 3 | 7 | 3 |
| 624 | 3 | 3 | 6 | 1 | 4 | 3 | 7 | 3 |
| 625 | 3 | 3 | 6 | 7 | 1 | 3 | 7 | 3 |
| 630 | 3 | 3 | 3 | 3 | 2 | 3 | 7 | 3 |
| 632 | 3 | 3 | 3 | 6 | 4 | 1 | 7 | 3 |
| 640 | 3 | 3 | 3 | 2 | 5 | 3 | 7 | 3 |
| 641 | 3 | 3 | 3 | 3 | 5 | 2 | 7 | 3 |
| 642 | 3 | 3 | 3 | 2 | 5 | 2 | 7 | 3 |
| 650 | 3 | 3 | 5 | 2 | 3 | 2 | 7 | 3 |
| 651 | 2 | 2 | 6 | 2 | 4 | 2 | 7 | 2 |
| 653 | 2 | 2 | 6 | 2 | 2 | 2 | 7 | 2 |
| 654 | 2 | 2 | 5 | 7 | 2 | 4 | 7 | 2 |
| 655 | 3 | 3 | 5 | 2 | 4 | 2 | 7 | 3 |
| 660 | 3 | 3 | 5 | 3 | 2 | 4 | 7 | 3 |
| 661 | 2 | 2 | 5 | 1 | 4 | 4 | 7 | 2 |
| 662 | 2 | 2 | 4 | 7 | 4 | 3 | 7 | 2 |
| 663 | 3 | 3 | 3 | 2 | 2 | 3 | 7 | 3 |
| 670 | 3 | 3 | 5 | 2 | 3 | 2 | 7 | 3 |
| 674 | 3 | 3 | 5 | 2 | 4 | 2 | 7 | 3 |
| 690 | 1 | 1 | 7 | 5 | 4 | 2 | 7 | 1 |
| 691 | 3 | 3 | 7 | 1 | 4 | 2 | 7 | 3 |
| 692 | 3 | 3 | 7 | 2 | 3 | 2 | 7 | 3 |
| 700 | 3 | 3 | 5 | 7 | 4 | 3 | 7 | 3 |
| 710 | 3 | 3 | 6 | 8 | 4 | 3 | 7 | 3 |
| 720 | 3 | 3 | 6 | 2 | 4 | 4 | 7 | 3 |
| 730 | 3 | 3 | 5 | 4 | 3 | 2 | 7 | 3 |
| 731 | 3 | 3 | 5 | 2 | 4 | 3 | 7 | 3 |
| 732 | 3 | 3 | 5 | 5 | 4 | 2 | 7 | 3 |
| 733 | 2 | 2 | 5 | 2 | 2 | 3 | 7 | 2 |
| 740 | 3 | 3 | 5 | 1 | 2 | 4 | 7 | 3 |
| 750 | 3 | 3 | 4 | 3 | 2 | 3 | 7 | 3 |
| 751 | 3 | 3 | 6 | 3 | 6 | 3 | 7 | 3 |
| 770 | 3 | 3 | 1 | 1 | 5 | 3 | 7 | 3 |
| 780 | 3 | 3 | 5 | 1 | 4 | 3 | 7 | 3 |
| 790 | 4 | 4 | 3 | 1 | 4 | 3 | 7 | 4 |
| 791 | 3 | 3 | 3 | 3 | 3 | 5 | 7 | 3 |
| 792 | 2 | 2 | 5 | 1 | 5 | 3 | 7 | 2 |
| 810 | 3 | 3 | 5 | 6 | 4 | 2 | 7 | 3 |
| 820 | 2 | 2 | 5 | 6 | 3 | 2 | 7 | 2 |
| 830 | 3 | 3 | 5 | 6 | 4 | 2 | 7 | 3 |
| 832 | 2 | 2 | 5 | 6 | 4 | 2 | 7 | 2 |
| 850 | 3 | 3 | 5 | 2 | 4 | 2 | 7 | 3 |
| 860 | 2 | 2 | 5 | 6 | 4 | 2 | 7 | 2 |
| 870 | 2 | 2 | 5 | 6 | 4 | 2 | 7 | 2 |
| 900 | 3 | 3 | 4 | 6 | 6 | 5 | 7 | 3 |
| 910 | 3 | 3 | 4 | 5 | 6 | 5 | 7 | 3 |
| 920 | 3 | 3 | 4 | 3 | 6 | 5 | 7 | 3 |
| 930 | 3 | 3 | 4 | 6 | 6 | 5 | 7 | 3 |
| 940 | 3 | 3 | 4 | 3 | 6 | 5 | 7 | 3 |
| 950 | 4 | 4 | 4 | 7 | 6 | 5 | 7 | 4 |

**Table 4.7.1.6 Continued Habitat class and b18 coefficient index by NI mapping index (Appendix B table 11.2.2) and species in the EM variant.**

| **NI Mapping Index** | **Species Code** | | |
| --- | --- | --- | --- |
| **LM** | **LL** | **b18**  **Index**  **LL** |
| 1 | 1 | 6 | 3 |
| 2 | 1 | 6 | 3 |
| 3 | 1 | 6 | 3 |
| 4 | 1 | 6 | 3 |
| 4 | 1 | 6 | 3 |
| 6 | 1 | 6 | 3 |
| 7 | 1 | 6 | 3 |
| 8 | 1 | 6 | 3 |
| 9 | 1 | 6 | 3 |
| 10 | 1 | 6 | 3 |
| 11 | 1 | 6 | 3 |
| 12 | 1 | 6 | 3 |
| 13 | 1 | 1 | 1 |
| 14 | 1 | 2 | 1 |
| 15 | 1 | 3 | 1 |
| 16 | 1 | 3 | 1 |
| 17 | 1 | 4 | 1 |
| 18 | 1 | 3 | 1 |
| 19 | 1 | 1 | 1 |
| 20 | 1 | 6 | 3 |
| 21 | 1 | 6 | 1 |
| 22 | 1 | 6 | 1 |
| 23 | 1 | 6 | 2 |
| 24 | 1 | 6 | 2 |
| 25 | 1 | 6 | 1 |
| 26 | 1 | 6 | 3 |
| 27 | 1 | 1 | 1 |
| 28 | 1 | 5 | 1 |
| 29 | 1 | 5 | 3 |
| 30 | 1 | 6 | 3 |

**Table 4.7.1.7 Subalpine larch *CCF* coefficient, equation 4.7.1.1, as determined by the b18 Index value by NI habitat mapping index, table 4.7.1.6**

|  |  |
| --- | --- |
| **b18**  **Index** | **LL**  **Coefficient** |
| 1 | -0.01598 |
| 2 | -0.04477 |
| 3 | -0.07392 |

Large-tree diameter growth for Rocky Mountain juniper is predicted using equations from the UT variant identified in equation set {4.7.1.2}. Diameter at the end of the growth cycle is predicted first. Then diameter growth is calculated as the difference between the diameters at the beginning of the cycle and end of the cycle, adjusted for bark ratio. While not shown here, this diameter growth estimate is eventually converted to the *DDS* scale.

{4.7.1.2} *DF* = 0.25897 + 1.03129 \* *DBH* – 0.0002025464 \* *BA* + 0.00177 \* *SI*

*DG* = (*DF* – *DBH*) \* *BRATIO*

where:

*DF* is tree diameter outside-bark at the end of the cycle

*DBH* is tree diameter outside-bark at the start of the cycle

*BA* is total stand basal area

*SI* is species site index

*DG* is tree diameter growth

*BRATIO* is species-specific bark ratio

Large-tree diameter growth for quaking aspen and paper birch is predicted using the aspen equation from the UT variant identified in equation set {4.7.1.3}. Diameter growth is predicted from a potential diameter growth equation that is modified by stand density, average tree size and site. While not shown here, this diameter growth estimate is eventually converted to the *DDS* scale.

{4.7.1.4} *POTGR* = (0.4755 – 0.0000038336 \* *DBH*^4.1488) + (0.0451 \* *CR* \* *DBH^0* .67266)

*MOD* = 1.0 – exp(-*FOFR* \* *GOFAD* \* ((310-*BA*)/310)^0.5)

*FOFR* = 1.07528 \* (1.0 – exp(–1.89022 \* *DBH* / *QMD*))

*GOFAD* = 0.21963 \* (*QMD* + 1.0)^0.73355

*PREDGR* = *POTGR* \* *MOD* \* (.48630 + 0.01258 \* *SI*)

where:

*POTGR* is potential diameter growth

*DBH* is tree diameter at breast height

*CR* is crown ratio expressed as a percent divided by 10

*MOD* is a modifier based on tree diameter and stand density

*FOFR* is the relative density modifier

*GOFAD* is the average diameter modifier

*BA* is total stand basal area bounded BA <u><</u> 310

*QMD* is stand quadratic mean diameter

*PREDGR* is predicted diameter growth

*SI* is species site index

Large-tree diameter growth for green ash, black cottonwood, balsam poplar, plains cottonwood, narrowleaf cottonwood, and other hardwood is predicted using equations from the CR variant identified in equation set {4.7.1.5}. Diameter at the end of the growth cycle is predicted first. Then diameter growth is calculated as the difference between the diameters at the beginning of the cycle and end of the cycle, adjusted for bark ratio. While not shown here, this diameter growth estimate is eventually converted to the *DDS* scale.

{4.7.1.6} *DF* = 0.24506 + 1.01291 \* *DBH* – 0.00084659 \* *BA* + 0.00631 \* *SI*

*DG* = (*DF* – *DBH*) \* *BRATIO*

where:

*DF* is tree diameter at breast height at the end of the cycle (bounded *DBH* <u><</u> *DF* <u><</u> 36”)

*DG* is tree diameter growth

*DBH* is tree diameter at breast height at the start of the cycle

*BA* is total stand basal area

*SI* is species site index

*BRATIO* is species-specific bark ratio

*DDS* is the predicted periodic change in squared inside-bark diameter

### 4.7.2 Large Tree Height Growth

The height growth functions used for the original 8 species in the EM variant are not similar to those reported by Wykoff (1986). For these 8 species, a potential height growth is calculated for a tree and then reduced to reflect suppression effects. This technique is described in specific terms in Wensel and others (1978) and Richie and Hann (1986). These authors constructed site curves and then height growth curves with modifiers off the same data. In the EM variant, the site curves referenced are those described in section 3.4.

Potential 10-year height growth can then be calculated by incrementing the approximate age (or more appropriately called an effective age), by 10 years and solving for a new height. Potential height growth is the difference in the heights at two points in time. For a specific site, this would be the best growth expected, if the tree is to follow the site or height growth curve. This potential growth is reduced for suppression and other tree characteristics, and adjusted to the projection cycle length.

Potential height growth is calculated by using equations {4.7.2.1} – {4.7.2.4}. Whitebark pine, western larch, lodgepole pine, and other softwood use equation {4.7.2.1}. Douglas-fir uses equation {4.7.2.2}. Engelmann spruce and subalpine fir use equation {4.7.2.3} and ponderosa pine uses equation {4.7.2.4} to calculate potential height growth. Two modifiers are calculated using equations {4.7.2.5} and {4.7.2.6} are applied to the potential height growth to obtain a final height growth (equation {4.7.2.7}).

Note: *MOD2* is from a paper by Richie and Hahn (1986) for height growth in the Oregon Cascades. The relationship is assumed to be consistent with tree growth in the Northern Rockies.

{4.7.2.1} Used for whitebark pine, Western larch, lodgepole pine, and other softwood

*POTHTG* = -2.3733 + 0.0016 \* (*EFAG10^*2 – *EFAGE^*2) + (0.149 \* *SI100*) – (0.00005 \* *SI100* \* (*EFAG10^*2 – *EFAGE^*2))

*EFAGE* = (-*B* + *TEM^*0.5) / (*C* \* 2.0)

*TEM* = *B*^2 – (4 \* *A* \* *C*) bounded to be <u>></u> 0.0

*A* = 9.72443 – (0.11375 \* *SI*100) – *HT*

*B* = -0.23733 + (0.0149 \* *SI*100)

*C* = 0.0016 – (0.00005 \* *SI*100)

*EFAG10* = *EFAGE* + 10.0

{4.7.2.2} Used for Douglas-fir

*POTHTG* = (42.397 \* (*SI50* – 4.5)^0.3197) / [1.0 + exp(9.7278 – 1.2934 \* ln(*EFAG10*) – (ln(*SI50* – 4.5) \* 1.0232))] – (*HT* – 4.5)

*EFAG10* = 10 + exp[(*TERM* + 1.0232 \* ln(*SI50* – 4.5) – 9.7278) / -1.2934]

*TERM* = ln[(42.397 \* (*SI50* – 4.5)^0.3197) / ((*SI50* – 4.5) -1)]

{4.7.2.3} Used for Engelmann spruce and subalpine fir

*POTHTG* = [*SI100* \* (1 – 0.931764 \* exp(-0.01679 \* *EFAG10*))^1 .43345] – *HT*

*EFAG10* = 10 + (*TERM* / -0.01679)

*TERM* = ln[(1 – (*HT* / *SI*100)^0.69762) / 0.931764]

{4.7.2.4} Used for ponderosa pine

*POTHTG* = [(3.635794 \* *SI100* ^0.916307) / (1 + exp(6.09478 – 0.96483 \* ln(*EFAG10*) – 0.277025 \* ln(*SI100*)))] – *HT*

*EFAG10* = 10 + exp[(*TERM* – 6.09478 + 0.277025 \* ln(*SI100*)) / -0.96483]

*TERM* = ln[((3.635794 \* *SI100*^0.916307) / *HT*) – 1]

{4.7.2.5} *MOD1* = 0.706 \* (1 – exp(-10.19 \* *CR*)) \* (1 – exp(-1.8158 \* *DG*))^0.944 + (0.0265 \* *HT*)

{4.7.2.6} *MOD2* = exp(2.54119 \* ((*RELHT^* 0.250537) -1.0))

{4.7.2.7} *HTG* = *POTHTG* \* *MOD1* \* *MOD2*

where:

*POTHTG* is potential height growth

*SI50*, *SI100* are species site index values based on a 50-year and 100-year base age, respectively

*HT* is tree height

*CR* is a tree’s live crown ratio (compacted) expressed as a proportion

*DG* is diameter growth for the cycle

*RELHT* is tree height divided by average height of the 40 largest diameter trees in the stand

*MOD1*, *MOD2* are height growth modifiers

*HTG* is estimated height growth for the cycle

*EFAGE* is estimated effective age of the tree at the start of the projection cycle

*EFAG10* is EFAGE plus 10 years

*A, B, C, TEM,*

*TERM* are intermediate variables used in the calculations

Subalpine larch uses equation set {4.7.2.8} to estimate large tree height growth. This is the subalpine fir equation from the Northern Idaho variant.

{4.7.2.8} *HTG* = exp[x] + .4809

*X*  = *HAB* – 0.5478+ b1 \* *HT^*2 – 0.1997\* ln(*DBH*) + 0.23315 \* ln(*HT*) + b2 \* ln(*DG*)

where:

*HTG* is estimated height growth for the cycle (bounded to be <u>></u> 0.1 foot)

*HAB* is a plant association code dependent intercept shown in table 4.7.2.1

*HT* is tree height at the beginning of the cycle

*DBH* is tree diameter at breast height

*DG* is diameter growth for the cycle

b1, b2 are habitat-dependent coefficients shown in table 4.7.2.1

**Table 4.7.2.1 Coefficients (b1, b2, and *HAB*) by NI mapping index (Appendix B table 11.2.2) for the subalpine larch height-growth equation in the EM variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **NI Mapping Index** | **b1** | **b2** | ***HAB*** |
| 1, 2, 21, 27-30 | -13.358E-5 | 0.62144 | 2.03035 |
| 3-9 | -3.809E-5 | 1.02372 | 1.72222 |
| 10, 11 | -3.715E-5 | 0.85493 | 1.19728 |
| 12, 19, 20, 22, 23 | -2.607E-5 | 0.75756 | 1.81759 |
| 13 | -5.200E-5 | 0.46238 | 2.14781 |
| 14 | -1.605E-5 | 0.49643 | 1.76998 |
| 15-18 | -3.631E-5 | 0.37042 | 2.21104 |
| 24-26 | -4.460E-5 | 0.34003 | 1.74090 |

Limber pine, green ash, quaking aspen, black cottonwood, balsam poplar, plains cottonwood, narrowleaf cottonwood, paper birch, and other hardwood use Johnson’s SBB (1949) method (Schreuder and Hafley, 1977) for predicting height growth. Height increment is obtained by subtracting current height from the estimated future height. If tree diameter is greater than (C1 + 0.1), or tree height is greater than (C2 + 4.5), where C1 and C2 are shown in table 4.7.2.2, parameters of the SBB distribution cannot be calculated and height growth is set to 0.1. Otherwise, the SBB distribution “*Z*” parameter is estimated using equation {4.7.2.9}.

{4.7.2.9} *Z* = [C4 + C6 \* *FBY2* – C7 \* (C3 + C5 \* *FBY1*)] \* (1 – C7^2)^-0.5

*FBY1* = ln[*Y1*/(1 - *Y1*)]

*FBY2* = ln[*Y2*/(1 - *Y2*)]

*Y1* = (*DBH* – 0.1) / C1

*Y2* = (*HT* – 4.5) / C2

where:

*HT* is tree height at the beginning of the cycle

*DBH* is tree diameter at breast height at the beginning of the cycle (bounded to be <u>></u> 0.2 inch)

C1 – C7 are coefficients based on species and crown ratio class shown in table 4.7.2.2

The equation for limber pine is from the Tetons (TT) variant. The equation for quaking aspen is from the Utah (UT) variant, and is also used for green ash, black cottonwood, balsam poplar, plains cottonwood, narrowleaf cottonwood, paper birch, and other hardwood.

For green ash, quaking aspen, black cottonwood, balsam poplar, plains cottonwood, narrowleaf cottonwood, paper birch, and other hardwood, equation {4.7.2.10} is used to eliminate known bias in this methodology.

{4.7.2.10} Z = Z + (0.1 – 0.10273 \* *Z* + 0.00273 \* *Z^*2) bounded *Z* <u>></u> 0

For all 9 species using the SBB methodology, if the *Z* value is 2.0 or less, it is adjusted for all younger aged trees using equation {4.7.2.11}. This adjustment is done for trees with an estimated age greater than 10 years and less than 40 years, and a diameter less than 9.0 inches. After this calculation, the value of *Z* is bounded to be 2.0 or less for trees meeting these criteria.

{4.7.2.11} *Z* = *Z* \* (0.3564 \* *DG*) \* CLOSUR \* *K*

CCF <u>></u> 100: CLOSUR = PCT / 100

CCF < 100: CLOSUR = 1

CR <u>></u> 75%: K = 1.1

CR < 75%: K = 1.0

where:

*DG* is diameter growth for the cycle

*PCT* is the subject tree’s percentile in the basal area distribution of the stand

*CCF* is stand crown competition factor

*CR* is tree crown ratio expressed as a percent

Estimated height 10 years into the future is calculated using equation {4.7.2.12}, and finally, 10-year height growth is calculated by subtraction using equation {4.7.2.13} and adjusted to the cycle length.

{4.7.2.12} *H10* = [(*PSI* / (1 + *PSI*)) \* C2] + 4.5

PSI = C8 \* [(D10 – 0.1) / (0.1 + C1– D10)]^C9 \* [exp(K)]

K = Z \* [(1 - C7^2)^(0.5 / C6)]

{4.7.2.13}

for H10 > HT: HTG = H10 – HT

for H10 <u><</u> HT: HTG = 0.1

where:

*H10* is estimated height of the tree in ten years

*HT* is tree height at the beginning of the cycle

*D10* is estimated diameter at breast height of the tree in ten years

*HTG* is estimated 10-year height growth

C1 – C9 are coefficients based on species and crown ratio class shown in table 4.7.2.3

**Table 4.7.2.3 Coefficients in the large tree height growth model, by crown ratio, for species using the Johnson’s SBB height distribution in the EM variant.**

| **Coefficient\*** | **LM** | **GA, AS, CW, BA, PW, NC, PB, OH** |
| --- | --- | --- |
| C1 ( *CR*<u><</u> 24) | 37.0 | 30.0 |
| C1 (25<u><</u>*CR*<u><</u>74) | 45.0 | 30.0 |
| C1 (75<u><</u>*CR*<u><</u>100) | 45.0 | 35.0 |
| C2 ( *CR*<u><</u> 24) | 85.0 | 85.0 |
| C2 (25<u><</u>*CR*<u><</u>74) | 100.0 | 85.0 |
| C2 (75<u><</u>*CR*<u><</u>100) | 90.0 | 85.0 |
| C3 ( *CR*<u><</u> 24) | 1.77836 | 2.00995 |
| C3 (25<u><</u>*CR*<u><</u>74) | 1.66674 | 2.00995 |
| C3 (75<u><</u>*CR*<u><</u>100) | 1.64770 | 1.80388 |
| C4 ( *CR*<u><</u> 24) | -0.51147 | 0.03288 |
| C4 (25<u><</u>*CR*<u><</u>74) | 0.25626 | 0.03288 |
| C4 (75<u><</u>*CR*<u><</u>100) | 0.30546 | -0.07682 |
| C5 ( *CR*<u><</u> 24) | 1.88795 | 1.81059 |
| C5 (25<u><</u>*CR*<u><</u>74) | 1.45477 | 1.81059 |
| C5 (75<u><</u>*CR*<u><</u>100) | 1.35015 | 1.70032 |
| C6 ( *CR*<u><</u> 24) | 1.20654 | 1.28612 |
| C6 (25<u><</u>*CR*<u><</u>74) | 1.11251 | 1.28612 |
| C6 (75<u><</u>*CR*<u><</u>100) | 0.94823 | 1.29148 |
| C7 ( *CR*<u><</u> 24) | 0.57697 | 0.72051 |
| C7 (25<u><</u>*CR*<u><</u>74) | 0.67375 | 0.72051 |
| C7 (75<u><</u>*CR*<u><</u>100) | 0.70453 | 0.72343 |
| C8 ( *CR*<u><</u> 24) | 3.57635 | 3.00551 |
| C8 (25<u><</u>*CR*<u><</u>74) | 2.17942 | 3.00551 |
| C8 (75<u><</u>*CR*<u><</u>100) | 2.46480 | 2.91519 |
| C9 ( *CR*<u><</u> 24) | 0.90283 | 1.01433 |
| C9 (25<u><</u>*CR*<u><</u>74) | 0.88103 | 1.01433 |
| C9 (75<u><</u>*CR*<u><</u>100) | 1.00316 | 0.95244 |

\**CR* represents percent crown ratio

Rocky Mountain juniper uses the equations described in the small tree height growth model (see section 4.6.1) to calculate height growth for all sized trees.

# 5.0 Mortality Model

In the EM variant, a blend of two different types of mortality models are used depending upon the species. The original 8 species in this variant, whitebark pine, western larch, Douglas-fir, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, and other softwood, use mortality models based on Stand Density Index; the remaining species use the Prognosis-type mortality model. These models are described in detail in sections 7.3.1 and 7.3.2 of Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002, abbreviated EFVS).

In the SDI-based mortality model there are two mortality rates. The first is background mortality which accounts for occasional tree deaths in stands when the stand density is below a specified level. The second is density-related mortality which determines mortality rates for individual trees based on their relationship with the stand’s maximum stand density.

In the Prognosis-type mortality model there is only one mortality rate calculated.

## 5.1 SDI-Based Mortality Model

The equation used to calculate background mortality for whitebark pine, western larch, Douglas-fir, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, and other softwood, is shown in equation {5.1.1}, and this is then adjusted to the length of the cycle by using a compound interest formula as shown in equation {5.1.2}. Coefficients for these equations are shown in table 5.1.1.

{5.1.1} *RI* = [1 / (1 + exp(p1 + p2 \* *DBH* + p3 \* *DBH*^2))] \* 0.5

{5.1.2} *RIP* = 1 – (1 – *RI)^Y*

where:

*RI* is the proportion of the tree record attributed to mortality

*RIP* is the final mortality rate adjusted to the length of the cycle

*DBH* is tree diameter at breast height

*Y* is length of the current projection cycle in years

p1 and p2 are species-specific coefficients shown in Table 5.1.1

**Table 5.1.1 Coefficients used in the background mortality equation {5.1.1} in the EM variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **p1** | **p2** | **p3** |
| WB | 5.45676 | -0.0118233 | 0 |
| WL | 5.26043 | -0.0097092 | 0 |
| DF | 5.55086 | -0.0129121 | 0 |
| LP | 3.87794 | 0.3078 | -0.0174 |
| ES | 6.41265 | -0.0127328 | 0 |
| AF | 5.88697 | -0.0333752 | 0 |
| PP | 5.58766 | -0.0052485 | 0 |
| OS | 7.47709 | -0.0395156 | 0 |

When density-related mortality is in effect, mortality is determined based on the trajectory developed from the relationship between stand SDI and the maximum SDI for the stand. The equation used to calculate density-related mortality for whitebark pine, western larch, Douglas-fir, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, and other softwood, is shown in equation {5.1.3}, and adjusted to the length of the cycle as shown.

{5.1.3} *RN* = 1 – (1 – ((*T* – *TN10*)/*T*))^*(1/Y)*

where:

*RN* is the final mortality rate adjusted to the length of the cycle

*T* is trees per acre at the start of a projection cycle

*TN10* is trees per acre at the end of a projection cycle as determined by the stand development trajectory

*Y* is length of the current projection cycle in years

## 5.2 Prognosis-Type Mortality Rate

In the EM variant, limber pine, subalpine larch, Rocky Mountain juniper, green ash, quaking aspen, black cottonwood, balsam poplar, plains cottonwood, narrowleaf cottonwood, paper birch, and other hardwood use the Prognosis-type mortality model (Hamilton 1986). Two mortality rates are independently calculated and then weighted to form the final mortality rate applied to an individual tree record.

The first mortality rate estimate, *RA*, predicts individual tree mortality based on habitat type, species, diameter, diameter increment, estimated potential diameter increment, stand basal area, and a trees’ diameter relative to the average stand diameter. The equation used to calculate the first mortality rate for these species is shown in equation set {5.2.1}.

{5.2.1} *RA* = [1 / (1 + exp(X))] \* *RADJ*

X = (b0 + 2.76253 + 0.22231 \* √*DBH* + -0.0460508 \* √*BA* + 11.2007 \* *G* + 0.246301 \* *RDBH* + ((-0.55442 + 6.07129 \* *G*) / *DBH*))

Bounded -70 <u><</u> X <u><</u> 70

*DBH* > 5.0” : *G* = 0.90 / (0.20 + (0.05 \* *I*)) \* *DG*

*RADJ* = (1 – ( (0.20 + (0.05 \* *I*)) /20 + 1)^ -1.605) / 0.06821

*DBH* <u><</u> 5.0”: *G* = 2.50 / (0.20 + (0.05 \* *I*)) \* *DG*

*RADJ* = (1 – ( (0.20 + (0.05 \* *I*)) + 1)^-1.605) / 0.86610

where:

*RA* is the estimated annual mortality rate

*RADJ* is a factor based on Reineke’s (1933) Stand Density Index that accounts for expected differences in mortality rates on different habitat types and National Forests

*DBH* is tree diameter at breast height

*BA* is total stand basal area

*RDBH* is the ratio of tree *DBH* to the arithmetic mean stand d.b.h.

*DG* is periodic annual d.b.h. increment for the previous growth period

*G* is periodic annual d.b.h. increment for the previous growth period adjusted for differences in potential annual d.b.h. increment indexed by habitat type and National Forest

*I* is a diameter growth index value determined by habitat type and location code

for *I* values of trees with *DBH* > 5.0”, see table 5.2.2

for *I* values of trees with *DBH* <u><</u> 5.0”, see table 5.2.3

b0 is a species-specific coefficient shown in table 5.2.1

**Table 5.2.1 Values of the b0 coefficient by species used in mortality equation {5.2.1} in the EM variant.**

| **Species Code** | **b0** |
| --- | --- |
| LM | 0 |
| LL | 0.2118 |
| RM | 0 |
| GA | 0 |
| AS | 0 |
| CW | 0 |
| BA | 0 |
| PW | 0 |
| NC | 0 |
| PB | 0 |
| OH | 0 |

**Table 5.2.2 Index, *I*, values by forest and NI mapping index (Appendix B table 11.2.2) for trees with DBH > 5.0” in the EM variant.**

| **NI Mapping Index** | **National Forest Location Code** | | | | | |
| --- | --- | --- | --- | --- | --- | --- |
| **102** | **108** | **109** | **111** | **112** | **115** |
| 1 | 7 | 7 | 7 | 7 | 7 | 7 |
| 2 | 6 | 6 | 6 | 6 | 7 | 7 |
| 3 | 6 | 6 | 6 | 6 | 7 | 7 |
| 4 | 6 | 6 | 6 | 6 | 7 | 7 |
| 5 | 6 | 6 | 6 | 6 | 6 | 6 |
| 6 | 6 | 6 | 6 | 6 | 7 | 7 |
| 7 | 5 | 5 | 5 | 5 | 5 | 5 |
| 8 | 6 | 6 | 6 | 6 | 6 | 6 |
| 9 | 5 | 5 | 5 | 5 | 7 | 7 |
| 10 | 6 | 6 | 6 | 6 | 6 | 6 |
| 11 | 6 | 6 | 6 | 6 | 6 | 6 |
| 12 | 6 | 6 | 6 | 6 | 7 | 7 |
| 13 | 6 | 6 | 6 | 6 | 7 | 7 |
| 14 | 8 | 8 | 8 | 8 | 9 | 9 |
| 15 | 7 | 7 | 7 | 7 | 9 | 9 |
| 16 | 7 | 7 | 7 | 7 | 8 | 8 |
| 17 | 7 | 7 | 7 | 7 | 9 | 9 |
| 18 | 7 | 7 | 7 | 7 | 8 | 8 |
| 19 | 7 | 7 | 7 | 7 | 8 | 8 |
| 20 | 5 | 5 | 5 | 5 | 5 | 5 |
| 21 | 3 | 3 | 3 | 3 | 3 | 3 |
| 22 | 4 | 4 | 4 | 4 | 5 | 5 |
| 23 | 3 | 3 | 3 | 3 | 4 | 4 |
| 24 | 4 | 4 | 4 | 4 | 5 | 5 |
| 25 | 4 | 4 | 4 | 4 | 5 | 5 |
| 26 | 6 | 6 | 6 | 6 | 7 | 7 |
| 27 | 5 | 5 | 5 | 5 | 5 | 5 |
| 28 | 1 | 1 | 1 | 1 | 2 | 2 |
| 29 | 1 | 1 | 1 | 1 | 4 | 4 |
| 30 | 6 | 6 | 6 | 6 | 7 | 7 |

**Table 5.2.3 Index, *I*, values by forest and NI mapping index (Appendix B table 11.2.2) for trees with DBH < 5.0” in the EM variant.**

| **NI Mapping Index** | **National Forest Location Code** | | | | | |
| --- | --- | --- | --- | --- | --- | --- |
| **102** | **108** | **109** | **111** | **112** | **115** | |
| 1 | 30 | 30 | 30 | 30 | 31 | 31 | |
| 2 | 29 | 29 | 29 | 29 | 29 | 29 | |
| 3 | 29 | 29 | 29 | 29 | 30 | 30 | |
| 4 | 29 | 29 | 29 | 29 | 31 | 31 | |
| 5 | 28 | 28 | 28 | 28 | 29 | 29 | |
| 6 | 28 | 28 | 28 | 28 | 30 | 30 | |
| 7 | 27 | 27 | 27 | 27 | 29 | 29 | |
| 8 | 31 | 31 | 31 | 31 | 33 | 33 | |
| 9 | 27 | 27 | 27 | 27 | 31 | 31 | |
| 10 | 27 | 27 | 27 | 27 | 30 | 30 | |
| 11 | 28 | 28 | 28 | 28 | 29 | 29 | |
| 12 | 31 | 31 | 31 | 31 | 34 | 34 | |
| 13 | 32 | 32 | 32 | 32 | 34 | 34 | |
| 14 | 32 | 32 | 32 | 32 | 35 | 35 | |
| 15 | 31 | 31 | 31 | 31 | 34 | 34 | |
| 16 | 31 | 31 | 31 | 31 | 34 | 34 | |
| 17 | 32 | 32 | 32 | 32 | 35 | 35 | |
| 18 | 31 | 31 | 31 | 31 | 33 | 33 | |
| 19 | 31 | 31 | 31 | 31 | 33 | 33 | |
| 20 | 25 | 25 | 25 | 25 | 27 | 27 | |
| 21 | 23 | 23 | 23 | 23 | 23 | 23 | |
| 22 | 24 | 24 | 24 | 24 | 26 | 26 | |
| 23 | 23 | 23 | 23 | 23 | 26 | 26 | |
| 24 | 24 | 24 | 24 | 24 | 27 | 27 | |
| 25 | 24 | 24 | 24 | 24 | 26 | 26 | |
| 26 | 27 | 27 | 27 | 27 | 31 | 31 | |
| 27 | 26 | 26 | 26 | 26 | 26 | 26 | |
| 28 | 18 | 18 | 18 | 18 | 19 | 19 | |
| 29 | 16 | 16 | 16 | 16 | 23 | 23 | |
| 30 | 27 | 27 | 27 | 27 | 31 | 31 | |

The second mortality rate estimate, *RB*, is dependent on the proximity of stand basal area to the site maximum (see section 3.5), and the rate of basal area increment. As stand basal area approaches the maximum for the site, *RB* approaches 1. The calculation of *RB* is described by Wykoff and others (1982) and Dixon (2002).

The mortality rate applied to a tree record is a weighted average of *RA* and *RB* with the weight also dependent on the proximity of stand basal area to the maximum for the site. This is also described by Wykoff and others (1982), and in section 7.3 of the Essential FVS guide (Dixon 2002), and is not shown here. The combined estimate is adjusted to the length of the cycle using a compound interest formula as shown in equation {5.2.2}.

{5.2.2} *RT* = 1 – (1 – *RC*)^*Y*

where:

*RT* is the mortality rate applied to an individual tree record for the growth period

*RC* is the combined estimate of the annual mortality rate for the tree record

*Y* is length of the current projection cycle in years

For Rocky Mountain juniper equation {5.2.2} is modified by 80%; for limber pine, green ash, quaking aspen, black cottonwood, balsam poplar, plains cottonwood, narrowleaf cottonwood, paper birch, and other hardwood equation {5.2.2} is modified by 40%.

# 6.0 Regeneration

The EM variant contains a full establishment model which is explained in section 5.4.2 of the Essential FVS Users Guide (Dixon 2002). In short, the full establishment model automatically adds regeneration following significant stand disturbances and adds ingrowth periodically during the simulation. Users may also input regeneration and ingrowth into simulations manually through the establishment model keywords as explained in section 5.4.3 of the Essential FVS Users Guide (Dixon 2002). The following description applies to entering regeneration and ingrowth through keywords.

The regeneration model is used to simulate stand establishment from bare ground, or to bring seedlings and sprouts into a simulation with existing trees. In the EM variant, sprouts are automatically added to the simulation following harvest or burning of known sprouting species (see table 6.0.1 for sprouting species).

**Table 6.0.1 Regeneration parameters by species in the EM variant.**

| **Species Code** | **Sprouting Species** | **Minimum Bud Width (in)** | **Minimum Tree Height (ft)** | **Maximum Tree Height (ft)** |
| --- | --- | --- | --- | --- |
| WB | No | 0.4 | 1 | 23 |
| WL | No | 0.3 | 1 | 27 |
| DF | No | 0.3 | 1 | 21 |
| LM | No | 0.3 | 1 | 27 |
| LL | No | 0.3 | 0.5 | 18 |
| RM | No | 0.3 | 0.5 | 6 |
| LP | No | 0.4 | 1 | 24 |
| ES | No | 0.3 | 0.5 | 18 |
| AF | No | 0.3 | 0.5 | 18 |
| PP | No | 0.5 | 1 | 17 |
| GA | Yes | 0.2 | 3 | 16 |
| AS | Yes | 0.2 | 6 | 16 |
| CW | Yes | 0.2 | 3 | 16 |
| BA | Yes | 0.2 | 3 | 16 |
| PW | Yes | 0.2 | 3 | 16 |
| NC | Yes | 0.2 | 3 | 16 |
| PB | Yes | 0.2 | 6 | 16 |
| OS | No | 0.2 | 0.5 | 22 |
| OH | No | 0.2 | 3 | 16 |

One sprouting record is created for green ash and paper birch; two sprouting records are created for quaking aspen; and logic rule {6.0.1} is used to determine the number of sprouting records for root suckering species. The trees-per-acre represented by each sprout record is determined using the general sprouting probability equation {6.0.2}. See table 6.0.2 for species-specific sprouting probabilities, number of sprout records created, and reference information.

Users wanting to modify or turn off automatic sprouting can do so with the SPROUT or NOSPROUT keywords, respectively. Sprouts are not subject to maximum and minimum tree heights found in table 6.0.1 and do not need to be grown to the end of the cycle because estimated heights and diameters are end of cycle values.

{6.0.1} For root suckering hardwood species

*DSTMPi* ≤ 5: NUMSPRC = 1

5 < *DSTMPi* ≤ 10: NUMSPRC = NINT(-1.0 + 0.4 \* *DSTMPi*)

*DSTMPi* > 10: NUMSPRC = 3

{6.0.2} TPAs = *TPAi* \* *PS*

{6.0.3} *PS =* (*TPAi* / (*ASTPAR* \* 2)) \* ((*ASBAR* / 198) \* (40100.45 - 3574.02 \* *RSHAG*^2 + 554.02 \* *RSHAG*^3 - 3.5208 \* *RSHAG*^5 + 0.011797 \* *RSHAG*^7))

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

**Table 6.0.2 Sprouting algorithm parameters for sprouting species in the EM variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **Sprouting Probability** | **Number of Sprout Records** | **Source** |
| GA | 0.8 for DBH < 12",  0.5 for DBH > 12" | 1 | Ag. Handbook 654 |
| AS | {6.0.3} | 2 | Keyser 2001 |
| CW | 0.9 | {6.0.1} | Gom and Rood 2000  Steinberg 2001 |
| BA | 0.8 for DBH < 25”,  0.5 for DBH > 25” | {6.0.1} | Ag. Handbook 654 |
| PW | 0.9 | {6.0.1} | Taylor 2001 |
| NC | 0.8 | {6.0.1} | Simonin 2001 |
| PB | 0.7 | 1 | Hutnik and Cunningham 1965  Bjorkbom 1972 |

Regeneration of seedlings may be specified by using PLANT or NATURAL keywords. Height of the seedlings is estimated in two steps. First, the height is estimated when a tree is 5 years old (or the end of the cycle – whichever comes first) by using the small-tree height growth equations found in section 4.6.1. Users may override this value by entering a height in field 6 of the PLANT or NATURAL keywords; however the height entered in field 6 is not subject to minimum height restrictions and seedlings as small as 0.05 feet may be established. The second step also uses the equations in section 4.6.1, which grow the trees in height from the point five years after establishment to the end of the cycle.

Seedlings and sprouts are passed to the main FVS model at the end of the growth cycle in which regeneration is established. Unless noted above, seedlings being passed are subject to minimum and maximum height constraints and a minimum budwidth constraint shown in table 6.0.1. After seedling height is estimated, diameter growth is estimated using equations described in section 4.6.2. Crown ratios on newly established trees are estimated as described in section 4.3.1.

Regenerated trees and sprouts can be identified in the treelist output file with tree identification numbers beginning with the letters “ES”.

# 7.0 Volume

Volume is calculated for four merchantability standards: total stem cubic feet, merchantable stem cubic feet, sawlog stem cubic feet, and merchantable stem board feet (Scribner Decimal C). Sawlog cubic foot volume is only reported when the FIAVBC keyword is in use. Volume estimation is based on methods contained in the National Volume Estimator Library maintained by the Forest Products Measurements group in the Forest Management Service Center (Volume Estimator Library Equations 2009). The default volume merchantability standards and equation numbers for the EM variant are shown in tables 7.0.1-7.0.3.

Volume computation methods used by the Forest Inventory and Analysis (FIA) program can be requested with the FIAVBC keyword. This keyword encompasses the National Scale Volume and Biomass estimators (NSVB; Westfall et al. 2024) and regional equations used for woodland species (Burrill et al. 2024). More information about the FIAVBC keyword and required input variables can be found in the Essential FVS Guide (Dixon 2002).

**Table 7.0.1 Default volume merchantability standards for the EM variant.**

|  |  |  |
| --- | --- | --- |
| **Merchantable Cubic Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | LP | All Other Species |
| All location codes | 6.0 / 4.5 inches | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| **Merchantable Board Foot Volume Specifications\*:** | | |
| Minimum DBH / Top Diameter | LP | All Other Species |
| All location codes | 6.0 / 4.5 inches | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |

\* Board foot volume is not calculated for green ash (11), black cottonwood (13), balsam poplar (14), plains cottonwood (15), narrowleaf cottonwood (16), paper birch (17), or other hardwood (19) when using the default equations.

**Table 7.0.2 Volume equation defaults for each species, at specific location codes, with model name.**

| **Common Name** | **Location Code** | **Equation Number** | **Reference** |
| --- | --- | --- | --- |
| whitebark pine | 102, 108, 109, 111, 112, 115 | I00FW2W012 | Flewelling's 2-Point Profile Model |
| western larch | 102, 108, 109, 111, 112, 115 | I00FW2W073 | Flewelling's 2-Point Profile Model |
| Douglas-fir | 102, 108, 109, 111, 112, 115 | I00FW2W202 | Flewelling's 2-Point Profile Model |
| limber pine | 102, 108, 109, 111, 112, 115 | I00FW2W073 | Flewelling's 2-Point Profile Model |
| subalpine larch | 102, 108, 109, 111, 112, 115 | I00FW2W019 | Flewelling's 2-Point Profile Model |
| Rocky Mountain juniper | 102, 108, 109, 111, 112, 115 | 102DVEW106 | Kemp Equation |
| lodgepole pine | 102, 108, 109, 111, 112, 115 | I00FW2W108 | Flewelling's 2-Point Profile Model |
| Engelmann spruce | 102, 108, 109, 111, 112, 115 | I00FW2W093 | Flewelling's 2-Point Profile Model |
| subalpine fir | 102, 108, 109, 111, 112, 115 | I00FW2W019 | Flewelling's 2-Point Profile Model |
| ponderosa pine | 102, 109, 111, 112, 115 | I00FW2W122 | Flewelling's 2-Point Profile Model |
| ponderosa pine | 108 | 203FW2W122 | Flewelling's 2-Point Profile Model |
| green ash | 102, 108, 109, 111, 112, 115 | 101DVEW740 | Kemp Equation |
| quaking aspen | 102, 108, 109, 111, 112, 115 | 102DVEW746 | Kemp Equation |
| black cottonwood | 102, 108, 109, 111, 112, 115 | 102DVEW740 | Kemp Equation |
| balsam poplar | 102, 108, 109, 111, 112, 115 | 101DVEW740 | Kemp Equation |
| plains cottonwood | 102, 108, 109, 111, 112, 115 | 102DVEW740 | Kemp Equation |
| narrowleaf cottonwood | 102, 108, 109, 111, 112, 115 | 102DVEW740 | Kemp Equation |
| paper birch | 102, 108, 109, 111, 112, 115 | 101DVEW375 | N. Central Station Equation |
| other softwood | 102, 108, 109, 111, 112, 115 | I00FW2W260 | Flewelling's 2-Point Profile Model |
| other hardwood | 102, 108, 109, 111, 112, 115 | 200DVEW746 | Kemp Equation |

**Table 7.0.3 Citations by Volume Model**

| **Model Name** | **Citation** |
| --- | --- |
| Flewelling 2-Point Profile Model | Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II. |
| Kemp Equations | Kemp, P.D. 1958. Unpublished report on file at USDA, Forest Service, Rocky Mountain Research Station, Interior West Resource Inventory, Monitoring, and Evaluation Program, Ogden, UT. |
| N. Central Station Equation | Hahn, Jerold T. 1984. Tree Volume and Biomass Equations for the Lake States. Research Paper NC-250. St. Paul, MN: U.S. Dept. of Agriculture, Forest Service, North Central Forest Experiment Station |

# 8.0 Fire and Fuels Extension (FFE-FVS)

The Fire and Fuels Extension to the Forest Vegetation Simulator (FFE-FVS) (Reinhardt and Crookston 2003) integrates FVS with models of fire behavior, fire effects, and fuel and snag dynamics. This allows users to simulate various management scenarios and compare their effect on potential fire hazard, surface fuel loading, snag levels, and stored carbon over time. Users can also simulate prescribed burns and wildfires and get estimates of the associated fire effects such as tree mortality, fuel consumption, and smoke production, as well as see their effect on future stand characteristics. FFE-FVS, like FVS, is run on individual stands, but it can be used to provide estimates of stand characteristics such as canopy base height and canopy bulk density when needed for landscape-level fire models.

For more information on FFE-FVS and how it is calibrated for the EM variant, refer to the updated FFE-FVS model documentation (Rebain, comp. 2010) available on the FVS website.

# 9.0 Insect and Disease Extensions

FVS Insect and Pathogen models for dwarf mistletoe and western root disease have been developed for the EM variant through the participation and contribution of various organizations led by Forest Health Protection. These models are currently maintained by the Forest Management Service Center and regional Forest Health Protection specialists. Additional details regarding each model may be found in chapter 8 of the Essential FVS Users Guide (Dixon 2002).

# 10.0 Literature Cited

Alexander, R.R. 1967. Site Indices for Engelmann Spruce. Res. Pap. RM-32. Forest Service, Rocky Mountain Research Station. 7p.

Alexander, R.R., Tackle, D., and Dahms, W.G. 1967. Site Indices for Lodgepole Pine with Corrections for Stand Density Methodology. Res. Pap. RM-29. Forest Service, Rocky Mountain Research Station. 18 p.

Bechtold, William A. 2004. Largest-crown-diameter Prediction Models for 53 Species in the Western United States. WJAF. Forest Service. 19(4): pp 241-245.

Bjorkbom, John C. 1972. Stand changes in the first 10 years after seedbed preparation for paper birch. USDA Forest Service, Research Paper NE-238. Northeastern Forest Experiment Station, Upper Darby, PA. 10 p.

Burns, R. M., & Honkala, B. H. 1990. Silvics of North America: 1. Conifers; 2. Hardwoods Agriculture Handbook 654. US Department of Agriculture, Forest Service, Washington, DC.

Burrill, Elizabeth A.; DiTommaso, Andrea M.; Turner, Jeffery A.; Pugh, Scott A.; Christensen, Glenn; Kralicek, Karin M.; Perry, Carol J.; Lepine, Lucie C.; Walker, David M.; Conkling, Barbara L. 2024. The Forest Inventory and Analysis Database, FIADB user guides, volume: database description (version 9.3), nationwide forest inventory (NFI). U.S. Department of Agriculture, Forest Service. 1026 p. [Online].

Cole, D. M.; Stage, A. R. 1972. Estimating future diameters of lodgepole pine. Res. Pap. INT-131. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 20p.

Crookston, Nicholas. 2003. Internal Document on File. Moscow, ID: Data provided from region 1.

Crookston, Nicholas. 2005. Draft: Allometric Crown Width Equations for 34 Northwest United States Tree Species Estimated Using Generalized Linear Mixed Effect Models.

Dixon, G. E. 1985. Crown ratio modeling using stand density index and the Weibull distribution. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 13p.

Dixon, Gary E. comp. 2002 (revised frequently). Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U.S. Department of Agriculture, Forest Service, Forest Management Service Center.

Donnelly, Dennis. 1996. Internal document on file. Data provided from Region 6. Fort Collins, CO: Forest Service.

Edminster, Carleton B., Mowrer, H. Todd, and Shepperd, Wayne D. 1985. Site Index Curves for Aspen in the Central Rocky Mountains. Res. Note RM-453. Forest Service, Rocky Mountain Research Station. 4 p.

Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II.

Gom, L. A., & Rood, S. B. (2000). Fire induces clonal sprouting of riparian cottonwoods. Canadian Journal of Botany, 77(11), 1604-1616.

Hahn, Jerold T. 1984. Tree Volume and Biomass Equations for the Lake States. Research Paper NC-250. St. Paul, MN: U.S. Dept. of Agriculture, Forest Service, North Central Forest Experiment Station

Hamilton, D. A., Jr. 1986. A logistic model of mortality in thinned and unthinned mixed conifer stands of northern Idaho. For. Science 32(4): 989-1000.

Hutnik, Russell J., and Frank E. Cunningham. 1965. Paper birch (Betula papyrifera Marsh.). In Silvics of forest trees of the United States. p. 93-98. H. A. Fowells, comp. U.S. Department of Agriculture, Agriculture Handbook 271. Washington, DC.

Johnson, N.L. 1949. Bivariate distributions based on simple translation systems. Biometrika 36:297-304.

Kemp, P.D. 1958. Unpublished report on file at USDA, Forest Service, Rocky Mountain Research Station, Interior West Resource Inventory, Monitoring, and Evaluation Program, Ogden, UT.

Keyser, C.E. 2001. Quaking Aspen Sprouting in Western FVS Variants: A New Approach. Unpublished Manuscript.

Krajicek, J.; Brinkman, K.; Gingrich, S. 1961. Crown competition – a measure of density. Forest Science. 7(1):35-42.

Meyer, Walter H. 1961.rev. Yield of even-aged stands of ponderosa pine. Tech. Bull. No. 630. Washington D.C.: Forest Service

Mosenrud, R.A. 1985. Applying Height Growth and Site index Curves for inland Douglas-fir. Intermountain Research Paper. INT-347.

Rebain, Stephanie A. comp. 2010 (revised frequently). The Fire and Fuels Extension to the Forest Vegetation Simulator: Updated Model Documentation. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 379 p.

Reinhardt, Elizabeth; Crookston, Nicholas L. (Technical Editors). 2003. The Fire and Fuels Extension to the Forest Vegetation Simulator. Gen. Tech. Rep. RMRS-GTR-116. Ogden, UT: U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station. 209 p.

Richie, Martin W., and Hann, David W. 1986. Development of a tree height growth model for Douglas-fir. Forest Ecology and Management. 15: pp 135-145.

Schreuder, H.T. and W.L. Hafley. 1977. A Useful Distribution for Describing Stand Structure of Tree Heights and Diameters. Biometrics 33, 471-478.

Shepperd, Wayne D. 1995. Unpublished equation. Data on file. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Rocky Mountain Forest and Range Experiment Station.

Simonin, Kevin A. 2001. Populus angustifolia. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Stage, A. R. 1973. Prognosis Model for stand development. Res. Paper INT-137. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 32p.

Steinberg, Peter D. 2001. Populus balsamifera subsp. trichocarpa. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Taylor, Jennifer L. 2001. Populus deltoides. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Van Dyck, Michael G.; Smith-Mateja, Erin E., comps. 2000 (revised frequently). Keyword reference guide for the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

Wensel, L.C., W.J. Meerschaert, and G.S. Bigging. 1978. Tree height and diameter growth models for northern California. Hilgardia 55(8): 1-20.

Westfall, James A.; Coulston, John W.; Gray, Andrew N.; Shaw, John D.; Radtke, Philip J.; Walker, David M.; Weiskittel, Aaron R.; MacFarlane, David W.; Affleck, David L.R.; Zhao, Dehai; Temesgen, Hailemariam; Poudel, Krishna P.; Frank, Jereme M.; Prisley, Stephen P.; Wang, Yingfang; Sánchez Meador, Andrew J.; Auty, David; Domke, Grant M. 2024. A national-scale tree volume, biomass, and carbon modeling system for the United States. Gen. Tech. Rep. WO-104. Washington, DC: U.S. Department of Agriculture, Forest Service. 37 p.

Wykoff, W. R. 1990. A basal area increment model for individual conifers in the northern Rocky Mountains. For. Science 36(4): 1077-1104.

Wykoff, William R. 1986. Supplement to the User’s guide for the Stand Prognosis Model-Version 5.0. Gen. Tech. Rep. INT-208. Ogden, UT: Forest Service, Intermountain Research Station. 36 p.

Wykoff, William R., Crookston, Nicholas L., and Stage, Albert R. 1982. User’s guide to the Stand Prognosis Model. Gen. Tech. Rep. INT-133. Ogden, UT: Forest Service, Intermountain Forest and Range Experiment Station. 112p.

# 11.0 Appendices

## 11.1 Appendix A. Distribution of Data Samples

The following tables contain distribution information of data used to fit species relationships in this variant’s geographic region (information from original variant overview).

**Table 11.1.1. Distribution of samples by National Forest, expressed in whole percent of total observations for each species.**

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **National Forest** | | | | | | **Total Number of Observations** |
| **Beaverhead** | **Custer** | **Deerlodge** | **Gallatin** | **Helena** | **Lewis & Clark** |
| Douglas-fir | 13 | 1 | 21 | 34 | 15 | 17 | 30767 |
| lodgepole pine | 32 | 1 | 24 | 26 | 10 | 8 | 56939 |
| Engelmann spruce | 23 | 1 | 18 | 42 | 5 | 12 | 7991 |
| subalpine fir | 24 | 0 | 14 | 48 | 7 | 8 | 7927 |
| ponderosa pine | <1 | 65 | <1 | 5 | 6 | 24 | 5232 |
| whitebark pine | 27 | 0 | 15 | 36 | 6 | 16 | 2747 |

**Table 11.1.2. Distribution of samples for diameter breast high, expressed in whole percent of total observations for each species.**

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Species** | **DBH Range** | | | | | |
| **0-5** | **5-10** | **10-15** | **15-20** | **20-25** | **25+** |
| Douglas-fir | 6 | 32 | 33 | 19 | 7 | 3 |
| lodgepole pine | 14 | 56 | 27 | 4 | 1 | 0 |
| Engelmann spruce | 6 | 30 | 31 | 21 | 8 | 3 |
| subalpine fir | 16 | 52 | 25 | 6 | 1 | <1 |
| ponderosa pine | 10 | 31 | 32 | 20 | 5 | 1 |
| whitebark pine | 9 | 48 | 32 | 9 | 2 | <1 |

**Table 11.1.3. Distribution of samples by Crown Ratio group, expressed in whole percent of total observations for each species.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **Crown Code (1=1-10,2=11-20,…,9=81-100)** | | | | | | | | |
| **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** |
| Douglas-fir | 2 | 7 | 16 | 19 | 18 | 15 | 12 | 8 | 3 |
| lodgepole pine | 6 | 19 | 28 | 20 | 11 | 7 | 5 | 3 | 1 |
| Engelmann spruce | 1 | 2 | 6 | 11 | 14 | 18 | 19 | 13 | 12 |
| subalpine fir | 1 | 2 | 6 | 10 | 15 | 17 | 18 | 18 | 11 |
| ponderosa pine | 3 | 11 | 25 | 22 | 16 | 12 | 7 | 4 | 1 |
| whitebark pine | 5 | 14 | 23 | 19 | 14 | 10 | 8 | 5 | 2 |

**Table 11.1.4. Distribution of samples by Aspect Code, expressed in percent of total observations for each species.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **Aspect Code** | | | | | | | | |
| **North** | **North-east** | **East** | **South-east** | **South** | **South-west** | **West** | **North-west** | **Level** |
| Douglas-fir | 20 | 16 | 11 | 10 | 7 | 9 | 11 | 16 | 1 |
| lodgepole pine | 18 | 15 | 13 | 9 | 6 | 8 | 10 | 14 | 8 |
| Engelmann spruce | 28 | 21 | 12 | 5 | 4 | 5 | 7 | 16 | 3 |
| subalpine fir | 22 | 24 | 17 | 7 | 4 | 5 | 6 | 14 | 2 |
| ponderosa pine | 23 | 17 | 13 | 5 | 7 | 12 | 11 | 11 | 2 |
| whitebark pine | 16 | 18 | 12 | 7 | 7 | 8 | 12 | 18 | 1 |

**Table 11.1.5. Distribution of samples by total stand basal area per acre, expressed in percent of total for each species.**

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Species** | **Basal Area** | | | | | |
| **0-50** | **50-100** | **100-150** | **150-200** | **200-250** | **250-300** |
| Douglas-fir | 5 | 24 | 39 | 25 | 6 | 1 |
| lodgepole pine | 6 | 26 | 43 | 20 | 4 | 1 |
| Engelmann spruce | 3 | 18 | 39 | 30 | 10 | 1 |
| subalpine fir | 3 | 25 | 40 | 24 | 7 | 1 |
| ponderosa pine | 5 | 45 | 38 | 9 | 2 | 1 |
| whitebark pine | 2 | 20 | 35 | 32 | 10 | 2 |

**Table 11.1.6. Distribution of samples by diameter growth, expressed in percent for each species.**

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **Diameter Growth (inches/10 years)** | | | | | | | |
| **< 0.5** | **0.5-1.0** | **1.0-1.5** | **1.5-2.0** | **2.0-2.5** | **2.5-3.0** | **3.0-3.5** | **<u>></u> 3.5** |
| Douglas-fir | 46 | 39 | 11 | 3 | 1 | 1 | 1 | 1 |
| lodgepole pine | 54 | 36 | 7 | 2 | 1 | 1 | 1 | 1 |
| Engelmann spruce | 31 | 42 | 19 | 6 | 2 | 1 | 1 | 0 |
| subalpine fir | 34 | 45 | 16 | 4 | 1 | 1 | 1 | 0 |
| ponderosa pine | 26 | 42 | 20 | 8 | 3 | 1 | 1 | 1 |
| whitebark pine | 71 | 26 | 3 | 1 | 1 | 0 | 0 | 0 |

**Table 11.1.7. Distribution of samples by elevation, expressed in percent for each species.**

| **Species** | **Elevation** | | | | |
| --- | --- | --- | --- | --- | --- |
| **<5000** | **5000-6000** | **6000-7000** | **7000-8000** | **8000-9000** |
| Douglas-fir | 1 | 21 | 54 | 23 | 1 |
| lodgepole pine | 5 | 42 | 44 | 9 | 0 |
| Engelmann spruce | 5 | 31 | 45 | 18 | 1 |
| subalpine fir | 2 | 23 | 54 | 21 | 1 |
| ponderosa pine | 71 | 23 | 5 | 1 | 0 |
| whitebark pine | 4 | 13 | 37 | 44 | 2 |

## 11.2 Appendix B. Habitat Codes

**Table 11.2.1 Habitat codes recognized in the EM variant.**

| **Habitat Code** | **Abbreviation** | **Habitat Type Name** |
| --- | --- | --- |
| 10 | SCREE | *Scree* |
| 65 | GRASS | *Grass type* |
| 70 | FORB | *Forb type* |
| 74 | SAL | *Willow* |
| 79 | POTRI | *Balsam poplar* |
| 91 | PIFL2/PSSPS | *Limber pine/bluebunch wheatgrass* |
| 92 | PIFL2/FEID | *Limber pine/Idaho fescue* |
| 93 | PIFL2/FEID-FEID | *Limber pine/Idaho fescue-Idaho fescue* |
| 95 | PIFL/JUCO | *Limber pine/common juniper* |
| 100 | PIPO | *Ponderosa pine series* |
| 110 | PIPO/ANDRO2 | *Ponderosa pine/bluestem* |
| 120 | PIPO/STOC | *Ponderosa pine/western needlegrass* |
| 130 | PIPO/AGSP2 | *ponderosa pine/ bluebunch wheatgrass* |
| 140 | PIPO/FEID | *Ponderosa pine/Idaho fescue* |
| 141 | PIPO/FEID/FEID | *Ponderosa pine/Idaho fescue/Idaho fescue* |
| 161 | PIPO/PUTR/AGSP | *Ponderosa pine/bitterbrush/Idaho fescue* |
| 170 | PIPO/SYAL | *Ponderosa pine/Common snowberry* |
| 171 | PIPO/SYAL/SYAL | *Ponderosa pine/common snowberry/common snowberry* |
| 172 | PIPO/SYAL/MARE11 | *Ponderosa pine/common snowberry/creeping barberry* |
| 180 | PIPO/PRVI | *Ponderosa pine/chokecherry* |
| 181 | PIPO/PRVI/PRVI | *Ponderosa pine/chokecherry/chokecherry* |
| 182 | PIPO/PRVI/SHCA | *Ponderosa pine/chokecherry/russet buffaloberry* |
| 200 | PSME | *Douglas-fir series* |
| 210 | PSME/AGSP | *Douglas-fir/Bluebench wheatgrass* |
| 220 | PSME/FEID | *Douglas-fir/Idaho fescue* |
| 221 | PSME/FEID/FEID | *Douglas-fir/Idaho fescue/Idaho fescue* |
| 230 | PSME/FEAL | *Douglas-fir/altai fescue* |
| 250 | PSME/VACA | *Douglas-fir/Dwarf huckleberry* |
| 260 | PSME/PHMA | *Douglas-fir/ninebark* |
| 261 | PSME/PHMA/PHMA | *Douglas-fir/ninebark/ninebark* |
| 262 | PSME/PHMA/CARU | *Douglas-fir/ninebark/pinegrass* |
| 280 | PSME/VAGL | *Douglas-fir/blue huckleberry* |
| 281 | PSME/VAME/VAME | *Douglas-fir/thinleaf huckleberry/thinleaf huckleberry* |
| 282 | PSME/VAME/ARUV | *Douglas-fir/thinleaf huckleberry/kinnikinnick* |
| 283 | PSME/VAME/XETE | *Douglas-fir/thinleaf huckleberry/common beargrass* |
| 290 | PSME/LIBO | *Douglas-fir/twinflower* |
| 291 | PSME/LIBO/SYAL | *Douglas-fir/twinflower/common snowberry* |
| 292 | PSME/LIBO/VAME | *Douglas-fir/twinflower/thinleaf huckleberry* |
| 293 | PSME/LIBO/VAME | *Douglas-fir/twinflower/thinleaf huckleberry* |
| 310 | PSME/SYAL | *Douglas-fir/common snowberry* |
| 311 | PSME/SYAL/PSSPS | *Douglas-fir/common snowberry/bluebunch wheatgrass* |
| 312 | PSME/SYAL/CARU | *Douglas-fir/common snowberry/pinegrass* |
| 313 | PSME/SYAL/SYAL | *Douglas-fir/common snowberry/common snowberry* |
| 315 | PSME/SYAL/PIPO | *Douglas-fir/common snowberry/ponderosa pine* |
| 320 | PSME/CARU | *Douglas-fir/pinegrass* |
| 321 | PSME/CARU/PSSPS | *Douglas-fir/pinegrass/bluebunch wheatgrass* |
| 322 | PSME/CARU/ARUV | *Douglas-fir/pinegrass/kinnikinnick* |
| 323 | PSME/CARU/CARU | *Douglas-fir/pinegrass/pinegrass* |
| 330 | PSME/CAGE | *Douglas-fir/elk sedge* |
| 331 | PSME/CAGE/CAGE | *Douglas-fir/elk sedge/elk sedge* |
| 332 | PSME/CAGE/SYOR | *Douglas-fir/elk sedge/mountain snowberry* |
| 340 | PSME/SPBE | *Douglas-fir/white spirea* |
| 350 | PSME/ARUV | *Douglas-fir/kinnikinnick* |
| 360 | PSME/JUCO | *Douglas-fir/common juniper* |
| 370 | PSME/ARCO | *Douglas-fir/Heartleaf arnica* |
| 371 | PSME/ARCO/ARCO | *Douglas-fir/Heartleaf arnica/heartleaf arnica* |
| 400 | PIECA | *Spruce series* |
| 410 | PIECA /EQAR | *Spruce/common horsetail* |
| 430 | PIECA/PHMA5 | *Spruce/mallow ninebark* |
| 440 | PIECA /GART | *Spruce/sweetscented bedstraw* |
| 450 | PICEA/VACA13 | *Spruce/dwarf bilberry* |
| 460 | PICEA/PAST10 | *Spruce/rocky mountain groundsel* |
| 461 | PICEA/PAST10/PSME | *Spruce/rocky mountain groundsel/douglas-fir* |
| 470 | PICEA/LIBO | *Spruce/twinflower* |
| 480 | PICEA/MAST | *Spruce/starry false lily of the valley* |
| 591 | ABGR/LIBO/LIBO | *Grand-fir/twinflower/twinflower* |
| 610 | ABLA/OPHO | *Subalpine fir/devilsclub* |
| 620 | ABLA/CLUN | *Subalpine fir/twisted stalk* |
| 624 | ABLA/CLUN/CETE | *Subalpine fir/twisted stalk/beargrass* |
| 625 | ABLA/CLUN/MEFE | *Subalpine fir/twisted stalk/menziesia* |
| 630 | ABLA/GART | *Subalpine fir/fragrant bedstraw* |
| 632 | ABLA/GATR3/VASC | *Subalpine fir/fragrant bedstraw/grouse whortleberry* |
| 640 | ABLA/VACA | *Subalpine fir/dwarf huckleberry* |
| 641 | ABLA/VACA-VACA | *Subalpine fir/dwarf huckleberry/dwarf huckleberry* |
| 642 | ABLA/VACA-CACA | *Subalpine fir/dwarf huckleberry/bluejoint* |
| 650 | ABLA/CACA | *Subalpine fir/bluejoint* |
| 651 | ABLA/CACA/CACA | *Subalpine fir/bluejoint/bluejoint* |
| 653 | ABLA/CACA/GATR | *Subalpine fir/bluejoint/fragrant bedstraw* |
| 654 | ABLA/CACA/VACA | *Subalpine fir/bluejoint/dwarf huckleberry* |
| 655 | ABLA/CACA/LEGL | *Subalpine fir/bluejoint/Labrador tea* |
| 660 | ABLA/LIBO | *Subalpine fir/twinflower* |
| 661 | ABLA/LIBO/LIBO | *Subalpine fir/twinflower/twinflower* |
| 662 | ABLA/LIBO/XETE | *Subalpine fir/twinflower/beargrass* |
| 663 | ABLA/LIBO/VASC | *Subalpine fir/twinflower/grouse whortleberry* |
| 670 | ABLA/MEFE | *Subalpine fir/menziesia* |
| 674 | ABLA/MEFE/VASC | *Subalpine fir/menziesia/grouse whortleberry* |
| 690 | ABLA/XETE | *Subalpine fir/beargrass* |
| 691 | ABLA/XETE/VAGL | *Subalpine fir/beargrass/blue huckleberry* |
| 692 | ABLA/XETE/VASC | *Subalpine fir/beargrass/grouse whortleberry* |
| 700 | ABLA | *Subalpine fir, lower subalpine* |
| 710 | TSME/XETE | *Mountain hemlock/beargrass* |
| 720 | ABLA/VAGL | *Subalpine fir/blue huckleberry* |
| 730 | ABLA/VASC | *Subalpine fir/grouse whortleberry* |
| 731 | ABLA/VASC/CARU | *Subalpine fir/grouse whortleberry/pinegrass* |
| 732 | ABLA/VASC/VASC | *Subalpine fir/grouse whortleberry/grouse whortleberry* |
| 733 | ABLA/VASC/THOC | *Subalpine fir/grouse whortleberry/western meadow rue* |
| 740 | ABLA/ALSI | *Subalpine fir/sitka alder* |
| 750 | ABLA/CARU | *Subalpine fir/pinegrass* |
| 751 | ABLA/CARU-CARU | *Subalpine fir/pinegrass/pinegrass* |
| 770 | ABLA/CLCOC | *Subalpine fir/rock clematis* |
| 780 | ABLA/ARCO | *Subalpine fir/heartleaf arnica* |
| 790 | ABLA/CAGE | *Subalpine fir/elk sedge* |
| 791 | ABLA/CAGE/CAGE | *Subalpine fir/elk sedge/elk sedge* |
| 792 | ABLA/CAGE/PSME | *Subalpine fir/elk sedge/douglas-fir* |
| 810 | ABLA/RIMO | *Subalpine fir/mountain gooseberry* |
| 820 | ABLA/PIAL/VASC | *Subalpine fir/whitebark pine/grouse whortleberry* |
| 830 | ABLA/LUHI | *Subalpine fir/smooth woodrush* |
| 832 | ABLA/LUGLH/MEFE | *Subalpine fir/smooth woodrush/rusty menziesia* |
| 850 | PIAL-ABLA | *Whitebark pine-subalpine fir* |
| 860 | LALY-ABLA2 | *Alpine larch-subalpine fir* |
| 870 | PIAL | *Whitebark pine series* |
| 900 | PICO | *Lodgepole pine series* |
| 910 | PICO/PUTR | *Lodgepole pine/antelope bitterbrush* |
| 920 | PICO/VACA | *Lodgepole pine/dwarf huckleberry* |
| 930 | PICO/LIBO | *Lodgepole pine/twinflower* |
| 940 | PICO/VASC | *Lodgepole pine/grouse whortleberry* |
| 950 | PIPO/CARU | *Lodgepole pine/pinegrass* |
| 999 | Other | *----* |

**Table 11.2.2 EM habitat code mapping to original NI habitat codes and their associated default value for maximum stand density index.**

| **EM Habitat Code** | **Abbreviation** | **Mapping Index** | **NI Habitat Code** | **Abbreviation** | **Maximum SDI** |
| --- | --- | --- | --- | --- | --- |
| 10 | SCREE | 1 | 130 | PIPO/AGSP | 634 |
| 66 | GRASS | 1 | 130 | PIPO/AGSP | 634 |
| 70 | FORB | 1 | 130 | PIPO/AGSP | 634 |
| 74 | SAL | 1 | 130 | PIPO/AGSP | 634 |
| 79 | POTRI | 1 | 130 | PIPO/AGSP | 634 |
| 91 | PIFL2/PSSPS | 1 | 130 | PIPO/AGSP | 634 |
| 92 | PIFL2/FEID | 1 | 130 | PIPO/AGSP | 634 |
| 93 | PIFL2/FEID-FEID | 1 | 130 | PIPO/AGSP | 634 |
| 95 | PIFL/JUCO | 1 | 130 | PIPO/AGSP | 634 |
| 100 | PIPO | 1 | 130 | PIPO/AGSP | 775 |
| 110 | PIPO/ANDRO2 | 1 | 130 | PIPO/AGSP | 775 |
| 120 | PIPO/STOC | 1 | 130 | PIPO/AGSP | 775 |
| 130 | PIPO/AGSP2 | 1 | 130 | PIPO/AGSP | 775 |
| 140 | PIPO/FEID | 1 | 130 | PIPO/AGSP | 775 |
| 141 | PIPO/FEID/FEID | 1 | 130 | PIPO/AGSP | 775 |
| 161 | PIPO/PUTR/AGSP | 2 | 170 | PIPO/SYAL | 775 |
| 170 | PIPO/SYAL | 2 | 170 | PIPO/SYAL | 775 |
| 171 | PIPO/SYAL/SYAL | 2 | 170 | PIPO/SYAL | 775 |
| 172 | PIPO/SYAL/MARE11 | 2 | 170 | PIPO/SYAL | 775 |
| 180 | PIPO/PRVI | 2 | 170 | PIPO/SYAL | 775 |
| 181 | PIPO/PRVI/PRVI | 2 | 170 | PIPO/SYAL | 775 |
| 182 | PIPO/PRVI/SHCA | 2 | 170 | PIPO/SYAL | 775 |
| 200 | PSME | 4 | 260 | PSME/PHMA | 467 |
| 210 | PSME/AGSP | 1 | 130 | PIPO/AGSP | 467 |
| 220 | PSME/FEID | 1 | 130 | PIPO/AGSP | 467 |
| 221 | PSME/FEID/FEID | 1 | 130 | PIPO/AGSP | 467 |
| 230 | PSME/FEAL | 1 | 130 | PIPO/AGSP | 467 |
| 250 | PSME/VACA | 3 | 250 | PSME/VACA | 768 |
| 260 | PSME/PHMA | 4 | 260 | PSME/PHMA | 696 |
| 261 | PSME/PHMA/PHMA | 4 | 260 | PSME/PHMA | 696 |
| 262 | PSME/PHMA/CARU | 4 | 260 | PSME/PHMA | 696 |
| 280 | PSME/VAGL | 5 | 280 | PSME/VAGL | 775 |
| 281 | PSME/VAME/VAME | 5 | 280 | PSME/VAGL | 775 |
| 282 | PSME/VAME/ARUV | 5 | 280 | PSME/VAGL | 775 |
| 283 | PSME/VAME/XETE | 5 | 280 | PSME/VAGL | 775 |
| 290 | PSME/LIBO | 6 | 290 | PSME/LIBO | 768 |
| 291 | PSME/LIBO/SYAL | 6 | 290 | PSME/LIBO | 768 |
| 292 | PSME/LIBO/VAME | 6 | 290 | PSME/LIBO | 768 |
| 293 | PSME/LIBO/VAME | 6 | 290 | PSME/LIBO | 768 |
| 310 | PSME/SYAL | 7 | 310 | PSME/SYAL | 696 |
| 311 | PSME/SYAL/PSSPS | 7 | 310 | PSME/SYAL | 467 |
| 312 | PSME/SYAL/CARU | 7 | 310 | PSME/SYAL | 696 |
| 313 | PSME/SYAL/SYAL | 7 | 310 | PSME/SYAL | 696 |
| 315 | PSME/SYAL/PIPO | 7 | 310 | PSME/SYAL | 696 |
| 320 | PSME/CARU | 8 | 320 | PSME/CARU | 634 |
| 321 | PSME/CARU/PSSPS | 8 | 320 | PSME/CARU | 467 |
| 322 | PSME/CARU/ARUV | 8 | 320 | PSME/CARU | 634 |
| 323 | PSME/CARU/CARU | 8 | 320 | PSME/CARU | 634 |
| 330 | PSME/CAGE | 9 | 330 | PSME/CAGE | 634 |
| 331 | PSME/CAGE/CAGE | 9 | 330 | PSME/CAGE | 634 |
| 332 | PSME/CAGE/SYOR | 9 | 330 | PSME/CAGE | 634 |
| 340 | PSME/SPBE | 8 | 320 | PSME/CARU | 634 |
| 350 | PSME/ARUV | 8 | 320 | PSME/CARU | 634 |
| 360 | PSME/JUCO | 9 | 330 | PSME/CAGE | 634 |
| 370 | PSME/ARCO | 7 | 310 | PSME/SYAL | 634 |
| 371 | PSME/ARCO/ARCO | 7 | 310 | PSME/SYAL | 634 |
| 400 | PIECA | 10 | 420 | PICEA/CLUN | 707 |
| 410 | PIEN/EQAR | 10 | 420 | PICEA/CLUN | 707 |
| 430 | PIECA/PHMA5 | 4 | 260 | PSME/PHMA | 696 |
| 440 | PIEN/GART | 11 | 470 | PICEA/LIBO | 707 |
| 450 | PICEA/VACA13 | 20 | 640 | ABLA/VACA | 707 |
| 460 | PICEA/PAST10 | 29 | 850 | PIAL-ABLA | 635 |
| 461 | PICEA/PAST10/PSME | 29 | 850 | PIAL-ABLA | 635 |
| 470 | PICEA/LIBO | 11 | 470 | PICEA/LIBO | 768 |
| 480 | PICEA/MAST | 11 | 470 | PICEA/LIBO | 768 |
| 591 | ABGR/LIBO/LIBO | 12 | 510 | ABGR/XETE | 707 |
| 610 | ABLA/OPHO | 18 | 610 | ABLA/OPHO | 707 |
| 620 | ABLA/CLUN | 19 | 620 | ABLA/CLUN | 707 |
| 624 | ABLA/CLUN/CETE | 19 | 620 | ABLA/CLUN | 707 |
| 625 | ABLA/CLUN/MEFE | 19 | 620 | ABLA/CLUN | 707 |
| 630 | ABLA/GART | 21 | 660 | ABLA/LIBO | 707 |
| 632 | ABLA/GATR3/VASC | 21 | 660 | ABLA/LIBO | 707 |
| 640 | ABLA/VACA | 20 | 640 | ABLA/VACA | 707 |
| 641 | ABLA/VACA-VACA | 20 | 640 | ABLA/VACA | 707 |
| 642 | ABLA/VACA-CACA | 20 | 640 | ABLA/VACA | 707 |
| 650 | ABLA/CACA | 20 | 640 | ABLA/VACA | 707 |
| 651 | ABLA/CACA/CACA | 20 | 640 | ABLA/VACA | 707 |
| 653 | ABLA/CACA/GATR | 20 | 640 | ABLA/VACA | 707 |
| 654 | ABLA/CACA/VACA | 20 | 640 | ABLA/VACA | 707 |
| 655 | ABLA/CACA/LEGL | 20 | 640 | ABLA/VACA | 707 |
| 660 | ABLA/LIBO | 21 | 660 | ABLA/LIBO | 768 |
| 661 | ABLA/LIBO/LIBO | 21 | 660 | ABLA/LIBO | 768 |
| 662 | ABLA/LIBO/XETE | 21 | 660 | ABLA/LIBO | 768 |
| 663 | ABLA/LIBO/VASC | 21 | 660 | ABLA/LIBO | 768 |
| 670 | ABLA/MEFE | 22 | 670 | ABLA/MEFE | 661 |
| 674 | ABLA/MEFE/VASC | 22 | 670 | ABLA/MEFE | 661 |
| 690 | ABLA/XETE | 24 | 690 | ABLA/XETE | 775 |
| 691 | ABLA/XETE/VAGL | 24 | 690 | ABLA/XETE | 775 |
| 692 | ABLA/XETE/VASC | 24 | 690 | ABLA/XETE | 775 |
| 700 | TSME | 27 | 730 | ABLA/VASC | 707 |
| 710 | TSME/XETE | 25 | 710 | TSME/XETE | 707 |
| 720 | ABLA/VAGL | 26 | 720 | ABLA/VAGL | 775 |
| 730 | ABLA/VASC | 27 | 730 | ABLA/VASC | 751 |
| 731 | ABLA/VASC/CARU | 27 | 730 | ABLA/VASC | 751 |
| 732 | ABLA/VASC/VASC | 27 | 730 | ABLA/VASC | 751 |
| 733 | ABLA/VASC/THOC | 27 | 730 | ABLA/VASC | 707 |
| 740 | ABLA/ALSI | 22 | 670 | ABLA/MEFE | 661 |
| 750 | ABLA/CARU | 24 | 690 | ABLA/XETE | 635 |
| 751 | ABLA/CARU-CARU | 24 | 690 | ABLA/XETE | 635 |
| 770 | ABLA/CLCOC | 27 | 730 | ABLA/VASC | 635 |
| 780 | ABLA/ARCO | 24 | 690 | ABLA/XETE | 635 |
| 790 | ABLA/CAGE | 27 | 730 | ABLA/VASC | 635 |
| 791 | ABLA/CAGE/CAGE | 27 | 730 | ABLA/VASC | 635 |
| 792 | ABLA/CAGE/PSME | 27 | 730 | ABLA/VASC | 635 |
| 810 | ABLA/RIMO | 28 | 830 | ABLA/LUHI | 635 |
| 820 | ABLA/PIAL/VASC | 29 | 850 | PIAL-ABLA | 635 |
| 830 | ABLA/LUHI | 28 | 830 | ABLA/LUHI | 635 |
| 832 | ABLA/LUGLH/MEFE | 28 | 830 | ABLA/LUHI | 635 |
| 850 | PIAL-ABLA | 29 | 850 | PIAL-ABLA | 635 |
| 860 | LALY-ABLA2 | 29 | 850 | PIAL-ABLA | 635 |
| 870 | PIAL | 29 | 850 | PIAL-ABLA | 635 |
| 900 | PICO | 27 | 730 | ABLA/VASC | 707 |
| 910 | PICO/PUTR | 9 | 330 | PSME/CAGE | 707 |
| 920 | PICO/VACA | 20 | 640 | ABLA/VACA | 707 |
| 930 | PICO/LIBO | 21 | 660 | ABLA/LIBO | 768 |
| 940 | PICO/VASC | 27 | 730 | ABLA/VASC | 751 |
| 950 | PIPO/CARU | 24 | 690 | ABLA/XETE | 635 |
| 999 | Other | 30 | 999 | Other | 775 |

The U.S. Department of Agriculture (USDA) prohibits discrimination in all its programs and activities on the basis of race, color, national origin, sex, religion, age, disability, political beliefs, sexual orientation, or marital or family status. (Not all prohibited bases apply to all programs.) Persons with disabilities who require alternative means for communication of program information (Braille, large print, audiotape, etc.) should contact USDA’s TARGET Center at (202) 720-2600 (voice and TDD).

To file a complaint of discrimination, write USDA, Director, Office of Civil Rights, Room 326-W, Whitten Building, 1400 Independence Avenue, SW, Washington, DC 20250-9410 or call (202) 720-5964 (voice or TDD). USDA is an equal opportunity provider and employer.