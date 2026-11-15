Inland Empire (IE) Variant Overview of the Forest Vegetation Simulator

September 2025

<u>![](data:image/jpeg;base64...)</u>Jewel Basin, Flathead National Forest

(Chad Keyser, FS-WOD-FMSC)

Inland Empire (IE) Variant Overview of the Forest Vegetation Simulator

# Authors and Contributors:

The FVS staff has maintained model documentation for Inland Empire variant in the form of a variant overview since its release in 2003. The original author was Gary Dixon. In 2008, the previous document was replaced with this updated variant overview. Gary Dixon, Christopher Dixon, Robert Havis, Chad Keyser, Stephanie Rebain, Erin Smith-Mateja, and Don Vandendriesche were involved with this update. Robert Havis cross-checked information contained in this variant overview with the FVS source code.

FVS Staff. 2008 (revised September 23, 2025). Inland Empire (IE) Variant Overview – Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 61p.

Table of Contents

[Authors and Contributors: ii](#_Toc209542450)

[1.0 Introduction 1](#_Toc209542451)

[2.0 Geographic Range 2](#_Toc209542452)

[3.0 Control Variables 3](#_Toc209542453)

[3.1 Location Codes 3](#_Toc209542454)

[3.2 Species Codes 4](#_Toc209542455)

[3.3 Habitat Type, Plant Association, and Ecological Unit Codes 5](#_Toc209542456)

[3.4 Site Index 5](#_Toc209542457)

[3.5 Maximum Density 6](#_Toc209542458)

[4.0 Growth Relationships 9](#_Toc209542459)

[4.1 Height-Diameter Relationships 9](#_Toc209542460)

[4.2 Bark Ratio Relationships 10](#_Toc209542461)

[4.3 Crown Ratio Relationships 11](#_Toc209542462)

[4.3.1 Crown Ratio Dubbing 11](#_Toc209542463)

[4.3.2 Crown Ratio Change 16](#_Toc209542464)

[4.3.3 Crown Ratio for Newly Established Trees 16](#_Toc209542465)

[4.4 Crown Width Relationships 17](#_Toc209542466)

[4.5 Crown Competition Factor 19](#_Toc209542467)

[4.6 Small Tree Growth Relationships 20](#_Toc209542468)

[4.6.1 Small Tree Height Growth 20](#_Toc209542469)

[4.6.2 Small Tree Diameter Growth 27](#_Toc209542470)

[4.7 Large Tree Growth Relationships 28](#_Toc209542471)

[4.7.1 Large Tree Diameter Growth 29](#_Toc209542472)

[4.7.2 Large Tree Height Growth 35](#_Toc209542473)

[5.0 Mortality Model 40](#_Toc209542474)

[6.0 Regeneration 44](#_Toc209542475)

[7.0 Volume 47](#_Toc209542476)

[8.0 Fire and Fuels Extension (FFE-FVS) 51](#_Toc209542477)

[9.0 Insect and Disease Extensions 52](#_Toc209542478)

[10.0 Literature Cited 53](#_Toc209542479)

[11.0 Appendices 56](#_Toc209542480)

[11.1 Appendix A. Habitat Codes 56](#_Toc209542481)

Quick Guide to Default Settings

| **Parameter or Attribute** | **Default Setting** | | |
| --- | --- | --- | --- |
| Number of Projection Cycles | 1 (10 if using FVS GUI) | | |
| Projection Cycle Length | 10 years | | |
| Location Code (National Forest) | 118 – St. Joe National Forest | | |
| Plant Association Code | 260 (PSME/PHME) | | |
| Slope | 5 percent | | |
| Aspect | 0 (no meaningful aspect) | | |
| Elevation | 38 (3800 feet) | | |
| Latitude / Longitude | Latitude | | Longitude |
| All location codes | 46 | | 116 |
| Site Species | IE: determined from habitat type | | |
| Site Index | IE: determined from habitat type | | |
| Maximum Stand Density Index | Based on maximum basal area | | |
| Maximum Basal Area | Habitat type specific | | |
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

The Inland Empire (IE) variant was developed in 2003; it is the original Northern Idaho variant (NI) / Prognosis model developed under the direction of Stage (1973) and released for production use on the National Forests in northern Idaho around 1980, expanded to recognize an additional 12 species. The additional species are mountain hemlock, whitebark pine, limber pine, subalpine larch, singleleaf pinyon, Rocky Mountain juniper, Pacific yew, quaking aspen, cottonwood, Rocky mountain maple, paper birch, and other hardwood. Growth equations for mountain hemlock are the original North Idaho variant equations for other softwood, which were fit for mountain hemlock. In general, whitebark pine uses the western larch equations from the North Idaho variant; limber pine and Pacific yew use equations for limber pine from the Teton variant; subalpine larch uses subalpine fir equations from the North Idaho variant; singleleaf pinyon, Rocky Mountain juniper, and quaking aspen equations come from their respective species in the Utah variant; Rocky mountain maple and paper birch are also grown with the quaking aspen equations from the Utah variant; and cottonwood species and other hardwood use the other hardwood equations from the Central Rockies variant.

This document presents codes, model relationships, and logic that are specific to the Inland Empire (IE) variant.

To fully understand how to use this variant, users should also consult the following publication:

* Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002)

This publication may be downloaded from the Forest Management Service Center (FMSC), Forest Service website. Other FVS publications may be needed if one is using an extension that simulates the effects of fire, insects, or diseases.

# 2.0 Geographic Range

The IE variant covers forest areas in northern Idaho, western Montana, and eastern Washington. The geographic range of the IE variant overlaps the entire range of the KT (KooKanTL) variant; however, where the variants overlap (Kootenai National Forest, Kaniksu National Forest, and Tally Lake Ranger District of the Flathead National Forest), users may choose to use the KT variant. The suggested geographic range of use for the IE and KT variants is shown in figure 2.0.1. ![Picture of the suggested range of use for the IE and KT variants.](data:image/jpeg;base64...)

**Figure 2.0.1 Suggested geographic range of use for the IE and KT variants.**

# 3.0 Control Variables

FVS users need to specify certain variables used by the IE variant to control a simulation. These are entered in parameter fields on various FVS keywords available in the FVS interface or they are read from an FVS input database using the Database Extension.

## 3.1 Location Codes

The location code is a 3- or 4-digit code where, in general, the first digit of the code represents the Forest Service Region Number, and the last two digits represent the Forest Number within that region. In some cases, a location code beginning with a “7” or “8” is used to indicate an administrative boundary that doesn’t use a Forest Service Region number (for example, other federal agencies, state agencies, or other lands).

If the location code is missing or incorrect in the IE variant, a default forest code of 118 (St. Joe National Forest) will be used. Location codes recognized in the IE variant are shown in tables 3.1.1 and 3.1.2.

**Table 3.1.1 Location codes used in the IE variant.**

|  |  |
| --- | --- |
| **Location Code** | **Location** |
| 103 | Bitterroot National Forest |
| 104 | Idaho Panhandle National Forest |
| 105 | Clearwater National Forest |
| 106 | Coeur d’Alene National Forest |
| 110 | Flathead National Forest |
| 113 | Kaniksu National Forest |
| 114 | Kootenai National Forest |
| 116 | Lolo National Forest |
| 117 | Nezperce National Forest |
| 118 | St. Joe National Forest |
| 621 | Colville National Forest |
| 102 | Beaverhead National Forest (mapped to 103) |
| 109 | Deerlodge National Forest (mapped to 103) |
| 112 | Helena National Forest (mapped to 116) |
| 613 | Kaniksu Administered by Colville National Forest (mapped to 113) |

**Table 3.1.2 Bureau of Indian Affairs reservation codes used in the IE variant.**

| **Location Code** | **Location** |
| --- | --- |
| 8106 | Colville Reservation (mapped to 621) |
| 8107 | Nez Perce Reservation (mapped to 117) |
| 8109 | Kootenai Off-Reservation Trust Land (mapped to 113) |
| 8131 | Spokane Reservation (mapped to 621) |
| 8132 | Kalispel Reservation (mapped to 113) |
| 8133 | Flathead Reservation (mapped to 110) |
| 8137 | Coeur D'Alene Reservation (mapped to 118) |

## 3.2 Species Codes

The IE variant recognizes 21 species, plus two other composite species categories. You may use FVS species codes, Forest Inventory and Analysis (FIA) species codes, or USDA Natural Resources Conservation Service PLANTS symbols to represent these species in FVS input data. Any valid western species code identifying species not recognized by the variant will be mapped to a similar species in the variant. The species mapping crosswalk is available on the FVS website variant documentation webpage. Any non-valid species code will default to the “other softwood” category.

Either the FVS sequence number or species code must be used to specify a species in FVS keywords and Event Monitor functions. FIA codes or PLANTS symbols are only recognized during data input and may not be used in FVS keywords. Table 3.2.1 shows the complete list of species codes recognized by the IE variant.

When entering tree data, users should substitute diameter at root collar (DRC) for diameter at breast height (DBH) for woodland species (singleleaf pinyon and Rocky Mountain juniper).

**Table 3.2.1 Species codes used in the IE variant.**

| **Species Number** | **Species Code** | **FIA Code** | **PLANTS Symbol** | **Scientific Name1** | **Common Name1** |
| --- | --- | --- | --- | --- | --- |
| 1 | WP | 119 | PIMO3 | *Pinus monticola* | western white pine |
| 2 | WL | 073 | LAOC | *Larix occidentalis* | western larch |
| 3 | DF | 202 | PSME | *Pseudotsuga menziesii* | Douglas-fir |
| 4 | GF | 017 | ABGR | *Abies grandis* | grand fir |
| 5 | WH | 263 | TSHE | *Tsuga heterophylla* | western hemlock |
| 6 | RC | 242 | THPL | *Thuja plicata* | western redcedar |
| 7 | LP | 108 | PICO | *Pinus contorta* | lodgepole pine |
| 8 | ES | 093 | PIEN | *Picea Engelmannii* | Engelmann spruce |
| 9 | AF | 019 | ABLA | *Abies lasiocarpa* | subalpine fir |
| 10 | PP | 122 | PIPO | *Pinus ponderosa* | ponderosa pine |
| 11 | MH | 264 | TSME | *Tsuga mertensiana* | mountain hemlock |
| 12 | WB | 101 | PIAL | *Pinus albicaulis* | whitebark pine |
| 13 | LM | 113 | PIFL2 | *Pinus flexilis* | limber pine |
| 14 | LL | 072 | LALY | *Larix lyallii* | subalpine larch |
| 15 | PM | 133 | PIMO | *Pinus monophylla* | singleleaf pinyon |
| 16 | RM | 066 | JUSC2 | *Juniperus scopulorum* | Rocky Mountain juniper |
| 17 | PY | 231 | TABR2 | *Taxus brevifolia* | Pacific yew |
| 18 | AS | 746 | POTR5 | *Populus tremuloides* | quaking aspen |
| 19 | CO | 740 | POPUL | *Populus* | cottonwood |
| 20 | MM | 321 | ACGL | *Acer glabrum* | Rocky Mountain maple |
| 21 | PB | 375 | BEPA | *Betula papyrifera* | paper birch |
| 22 | OH | 998 | 2TB |  | other hardwood2 |
| 23 | OS | 299 | 2TN |  | other softwood2 |

1Set based on the USDA Forest Service NRM TAXA lists and the USDA Plants database.

2Other categories use FIA codes and NRM TAXA codes that best match the other category.

## 3.3 Habitat Type, Plant Association, and Ecological Unit Codes

There are 95 habitat type codes recognized in the IE variant. Habitat type is used in many relationships described in this variant and the Fire and Fuels Extension to FVS (Rebain, comp. 2010). If the habitat type code is blank or not recognized, the default 260 (PSME/PHMA) will be assigned. The 95 habitat type codes are mapped to one of the 30 original North Idaho (NI) variant habitat type codes. A list of valid IE variant habitat type codes and the original NI habitat type code equivalents can be found in table 11.1.1 of Appendix A.

Plant association codes are typically used instead of habitat type codes for the Colville National Forest in Region 6. These users can enter either the plant association code or the FVS sequence number for the plant association code when entering plant association information. The plant association code is then cross-walked to one of the original habitat type codes as depicted in table 11.1.2 of Appendix A. However, users can choose to enter a habitat type code directly.

## 3.4 Site Index

Site index is an input variable for some of the growth equations for some species in the IE variant. These species are limber pine, singleleaf pinyon, Rocky Mountain juniper, Pacific yew, quaking aspen, cottonwood species, Rocky mountain maple, paper birch, and other hardwood. Site index may not be available for some stands since habitat type is commonly used as a measure of site productivity in the geographic area covered by IE variant. If site index is not available, it is estimated from habitat type as shown in table 3.4.1. This table was created by Renate Bush, R1 Inventory Specialist, based on valid site index ranges for each species and productivity of habitat type. When possible, users should enter their own values instead of relying on model defaults. Users should always use the same site curves that FVS uses, which are shown in table 3.4.2.

**Table 3.4.1 Habitat type to site index conversion for affected species in the IE variant.**

| **Habitat**  **Code** | **Species Code** | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **LM** | **PI** | **RM** | **PY** | **AS** | **CO** | **MM** | **PB** | **OH** |
| 130 | 25 | 7 | 6 | 25 | 36 | 44 | 36 | 36 | 44 |
| 170 | 29 | 9 | 8 | 29 | 43 | 57 | 43 | 43 | 57 |
| 250 | 35 | 13 | 10 | 35 | 51 | 76 | 51 | 51 | 76 |
| 260 | 35 | 12 | 10 | 35 | 50 | 62 | 50 | 50 | 62 |
| 280 | 33 | 10 | 9 | 33 | 44 | 72 | 44 | 44 | 72 |
| 290 | 34 | 12 | 10 | 34 | 49 | 72 | 49 | 49 | 72 |
| 310 | 35 | 12 | 10 | 35 | 48 | 71 | 48 | 48 | 71 |
| 320 | 32 | 11 | 9 | 32 | 46 | 67 | 46 | 46 | 67 |
| 330 | 27 | 8 | 7 | 27 | 41 | 55 | 41 | 41 | 55 |
| 420 | 39 | 14 | 11 | 39 | 55 | 86 | 55 | 55 | 86 |
| 470 | 37 | 11 | 9 | 37 | 46 | 67 | 46 | 46 | 67 |
| 510 | 32 | 13 | 11 | 32 | 52 | 80 | 52 | 52 | 80 |
| 520 | 36 | 16 | 12 | 36 | 59 | 95 | 59 | 59 | 95 |
| 530 | 41 | 15 | 12 | 41 | 58 | 93 | 58 | 58 | 93 |
| 540 | 41 | 15 | 12 | 41 | 58 | 93 | 58 | 58 | 93 |
| 550 | 41 | 15 | 12 | 41 | 58 | 93 | 58 | 58 | 93 |
| 570 | 43 | 16 | 13 | 43 | 60 | 98 | 60 | 60 | 98 |
| 610 | 38 | 14 | 11 | 38 | 54 | 84 | 54 | 54 | 84 |
| 620 | 39 | 14 | 11 | 39 | 55 | 86 | 55 | 55 | 86 |
| 640 | 32 | 11 | 9 | 32 | 46 | 67 | 46 | 46 | 67 |
| 660 | 36 | 12 | 10 | 36 | 49 | 73 | 49 | 49 | 73 |
| 670 | 34 | 13 | 10 | 34 | 52 | 80 | 52 | 52 | 80 |
| 680 | 34 | 13 | 10 | 34 | 52 | 80 | 52 | 52 | 80 |
| 690 | 32 | 11 | 9 | 32 | 46 | 67 | 46 | 46 | 67 |
| 710 | 36 | 13 | 10 | 36 | 52 | 80 | 52 | 52 | 80 |
| 720 | 36 | 13 | 10 | 36 | 52 | 80 | 52 | 52 | 80 |
| 730 | 36 | 13 | 10 | 36 | 52 | 80 | 52 | 52 | 80 |
| 830 | 26 | 8 | 7 | 26 | 38 | 49 | 38 | 38 | 49 |
| 850 | 22 | 6 | 6 | 22 | 33 | 36 | 33 | 33 | 36 |
| 999 | 26 | 8 | 7 | 26 | 38 | 49 | 38 | 38 | 49 |

**Table 3.4.2 Recommended site index references for affected species in the IE variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **Reference** | **BHA or TTA\*** | **Base Age** |
| LM, PY | Alexander, Tackle, & Dahms (1967) | TTA | 100 |
| PI | Any pinyon 100 year base total age curve | TTA | 100 |
| RM | Any juniper 100 year base total age curve | TTA | 100 |
| AS, MM, PB | Edminster, Mowrer, & Shepperd (1985) | BHA | 80 |
| CO | Any hardwood 100 year base total age curve | TTA | 100 |
| OH | Any hardwood 100 year base total age curve | TTA | 100 |

\* Equation is based on total tree age (TTA) or breast height age (BHA)

## 3.5 Maximum Density

Maximum stand density index (SDI) and maximum basal area (BA) are important variables in determining density related mortality and crown ratio change. Maximum basal area is a stand level metric that can be set using the BAMAX or SETSITE keywords. If not set by the user, a default value is calculated from maximum stand SDI each projection cycle. Maximum stand density index can be set for each species using the SDIMAX or SETSITE keywords. If not set by the user, a default value is assigned as discussed below.

The default maximum SDI is set based on a user-specified, or default, habitat type code or a user specified basal area maximum. If a user specified basal area maximum is present, the maximum SDI for species is computed using equation {3.5.1}; otherwise, the maximum SDI for species is computed from the basal area maximum associated with the equivalent NI original habitat type code shown in table 3.5.1 using equation {3.5.1}. Maximum stand density index at the stand level is a weighted average, by basal area proportion, of the individual species SDI maximums.

{3.5.1} *SDIMAXi* = *BAMAX*/ (0.5454154 \* *SDIU)*

where:

*SDIMAXi* is the species-specific SDI maximum

*BAMAX* is the user-specified basal area maximum or habitat type-specific basal area maximum

*SDIU* is theproportion of theoretical maximum density at which the stand reaches actual maximum density (default 0.85, changed with the SDIMAX keyword)

**Table 3.5.1 Basal area maximums by equivalent NI original habitat type in the IE variant.**

| **Habitat Code** | **Maximum Basal Area** |
| --- | --- |
| 130 | 140 |
| 170 | 220 |
| 250 | 250 |
| 260 | 310 |
| 280 | 240 |
| 290 | 270 |
| 310 | 310 |
| 320 | 310 |
| 330 | 200 |
| 420 | 310 |
| 470 | 290 |
| 510 | 330 |
| 520 | 380 |
| 530 | 440 |
| 540 | 500 |
| 550 | 500 |
| 570 | 390 |
| 610 | 390 |
| 620 | 440 |
| 640 | 180 |
| 660 | 290 |
| 670 | 400 |
| 680 | 350 |
| 690 | 390 |
| 710 | 260 |
| 720 | 300 |
| 730 | 220 |
| 830 | 220 |
| 850 | 160 |
| 999 | 300 |

# 4.0 Growth Relationships

This chapter describes the functional relationships used to fill in missing tree data and calculate incremental growth. In FVS, trees are grown in either the small tree sub-model or the large tree sub-model depending on the diameter.

## 4.1 Height-Diameter Relationships

Height-diameter relationships in FVS are primarily used to estimate tree heights missing in input data, and occasionally to estimate diameter growth on trees smaller than a given threshold diameter. In the IE variant, height-diameter relationships are a logistic functional form, as shown in equation {4.1.1} (Wykoff and others 1982). The equation was fit to data of the same species used to develop other FVS variants. Coefficients for equation {4.1.1} are shown are shown in table 4.1.1.

When heights are given in the input data for 3 or more trees of a given species, the value of B1 in equation {4.1.1} for that species is recalculated from the input data and replaces the default value shown in table 4.1.1. In the event that the calculated value is less than zero, the default is used.

{4.1.1} *HT* = 4.5 + exp(B1 + B2 / (*DBH* + 1.0))

where:

HT is tree height

DBH is tree diameter at breast height

B1 - B2 are species-specific coefficients shown in table 4.1.1

**Table 4.1.1 Coefficients for the logistic Wykoff equation {4.1.1} in the IE variant.**

| **Species Code** | **Default B1** | **B2** |
| --- | --- | --- |
| WP | 5.19988 | -9.26718 |
| WL | 4.97407 | -6.78347 |
| DF | 4.81519 | -7.29306 |
| GF | 5.00233 | -8.19365 |
| WH | 4.97331 | -8.1973 |
| RC | 4.89564 | -8.39057 |
| LP | 4.62171 | -5.32481 |
| ES | 4.9219 | -8.30289 |
| AF | 4.76537 | -7.61062 |
| PP | 4.9288 | -9.32795 |
| MH | 4.77951 | -9.31743 |
| WB | 4.97407 | -6.78347 |
| LM | 4.192 | -5.1651 |
| LL | 4.76537 | -7.61062 |
| PI | 3.2 | -5.0 |
| RM | 3.2 | -5.0 |
| PY | 4.192 | -5.1651 |
| AS | 4.4421 | -6.5405 |
| CO | 4.4421 | -6.5405 |
| MM | 4.4421 | -6.5405 |
| PB | 4.4421 | -6.5405 |
| OH | 4.4421 | -6.5405 |
| OS | 4.77951 | -9.31743 |

## 4.2 Bark Ratio Relationships

Bark ratio estimates are used to convert between diameter outside bark and diameter inside bark in various parts of the model. The equation is shown in equation {4.2.1} and coefficients (b1 and b2) for this equation by species are shown in table 4.2.1.

{4.2.1} *BRATIO* = b1 + (b2 / *DBH*)

Note: if a species has a b2value equal to 0, then *BRATIO* = b1

where:

*BRATIO* is species-specific bark ratio (bounded to 0.80 <u><</u> *BRATIO* <u><</u> 0.99)

*DBH* is tree diameter at breast height (bounded to *DBH* <u>></u> 1.0)

b1 and b2 are species-specific coefficients shown in table 4.2.1

**Table 4.2.1 Coefficients for bark ratio equation {4.2.1} in the IE variant.**

| **Species Code** | **b1** | **b2** | **Equation Source** |
| --- | --- | --- | --- |
| WP | 0.964 | 0 | Wykoff, et. al. 1982 |
| WL | 0.851 | 0 | Wykoff, et. al. 1982 |
| DF | 0.867 | 0 | Wykoff, et. al. 1982 |
| GF | 0.915 | 0 | Wykoff, et. al. 1982 |
| WH | 0.934 | 0 | Wykoff, et. al. 1982 |
| RC | 0.950 | 0 | Wykoff, et. al. 1982 |
| LP | 0.969 | 0 | Wykoff, et. al. 1982 |
| ES | 0.956 | 0 | Wykoff, et. al. 1982 |
| AF | 0.937 | 0 | Wykoff, et. al. 1982 |
| PP | 0.890 | 0 | Wykoff, et. al. 1982 |
| MH | 0.934 | 0 | Wykoff, et. al. 1982 |
| WB | 0.851 | 0 | Uses WL equation |
| LM | 0.969 | 0 | TT limber pine |
| LL | 0.937 | 0 | Uses subalpine fir |
| PI\* | 0.9002 | -0.3089 |  |
| RM\* | 0.9002 | -0.3089 |  |
| PY | 0.969 | 0 | Uses LM equation |
| AS | 0.950 | 0 | UT aspen |
| CO | 0.892 | -0.086 | CR cottonwood |
| MM | 0.950 | 0 | Uses AS equation |
| PB | 0.950 | 0 | Uses AS equation |
| OH | 0.892 | -0.086 | Uses CO equation |
| OS | 0.934 | 0 | Uses MH equation |

\**DBH* is bounded between 1.0 and 19.0

## 4.3 Crown Ratio Relationships

Crown ratio equations are used for three purposes in FVS: (1) to estimate tree crown ratios missing from the input data for both live and dead trees; (2) to estimate change in crown ratio from cycle to cycle for live trees; and (3) to estimate initial crown ratios for regenerating trees established during a simulation.

### 4.3.1 Crown Ratio Dubbing

In the IE variant, crown ratios missing in the input data are predicted using different equations depending on species and tree size. For most species, live trees less than a minimum diameter and dead trees of all sizes use equations {4.3.1.1} and {4.3.1.2} to compute crown ratio. Species numbers 1-12, 14, and 23 use a logistic function shown in equations {4.3.1.1} and {4.3.1.2} for trees less than 3.0” in diameter. Species 13, 17, 18, 20, and 21 use equations {4.3.1.1} and {4.3.1.2} for trees less than 1.0” in diameter. Equation coefficients are found in table 4.3.1.1.

{4.3.1.1} *X* = R1 + R2 \* *DBH* + R3 \* *HT* + R4 \* *BA* + R5 \* *PCCF* + R6 \* *HTAvg / HT* + R7 \* *HTAvg* + R8 \* *BA* \* *PCCF* + R9 \* *MAI*

{4.3.1.2} *CR* = 1 / (1 + exp(*X*+ *N(0,SD)*)) where absolute value of (*X* + *N(0,SD)*) < 86

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.05 <u><</u> *CR* <u><</u> 0.95)

*DBH* is tree diameter at breast height

*HT* is tree height

*BA* is total stand basal area

*PCCF* is crown competition factor on the inventory point where the tree is established

*HTAvg* is average height of the 40 largest diameter trees in the stand

*MAI* is stand mean annual increment

*N(0,SD)* is a random increment from a normal distribution with a mean of 0 and a standard deviation of SD

R1 – R9 are species-specific coefficients shown in table 4.3.1.1

**Table 4.3.1.1 Coefficients for the crown ratio equation {4.3.1.1} in the IE variant.**

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Coefficient** | **Species Code** | | | | | | | |
| **WP** | **WL** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** |
| R1 | -0.44316 | -0.83965 | -0.89122 | -0.62646 | -0.49548 | 0.11847 | -0.32466 | -0.92007 |
| R2 | -0.48446 | -0.16106 | -0.18082 | -0.06141 | 0.00012 | -0.39305 | -0.20108 | -0.22454 |
| R3 | 0.05825 | 0.04161 | 0.05186 | 0.0236 | 0.00362 | 0.02783 | 0.04219 | 0.03248 |
| R4 | 0.00513 | 0.00602 | 0.00454 | 0.00505 | 0.00456 | 0.00626 | 0.00436 | 0.0062 |
| R5 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| R6 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| R7 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| R8 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| R9 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| SD | 0.9476 | 0.7396 | 0.8706 | 0.9203 | 0.945 | 0.8012 | 0.7707 | 0.9721 |
| **Coefficient** | **Species Code** | | | | | | | |
| **AF** | **PP** | **MH, OS** | **WB** | **LM, PY** | **LL** | **AS, CO, MM, PB, OH** | |
| R1 | -0.89014 | -0.17561 | -0.49548 | -0.83965 | -1.66949 | -0.89014 | -0.426688 | |
| R2 | -0.18026 | -0.33847 | 0.00012 | -0.16106 | -0.209765 | -0.18026 | -0.093105 | |
| R3 | 0.02233 | 0.05699 | 0.00362 | 0.04161 | 0 | 0.02233 | 0.022409 | |
| R4 | 0.00614 | 0.00692 | 0.00456 | 0.00602 | 0.003359 | 0.00614 | 0.002633 | |
| R5 | 0 | 0 | 0 | 0 | 0.011032 | 0 | 0 | |
| R6 | 0 | 0 | 0 | 0 | 0 | 0 | -0.045532 | |
| R7 | 0 | 0 | 0 | 0 | 0.017727 | 0 | 0 | |
| R8 | 0 | 0 | 0 | 0 | -0.000053 | 0 | 0.000022 | |
| R9 | 0 | 0 | 0 | 0 | 0.014098 | 0 | -0.013115 | |
| SD | 0.8871 | 0.8866 | 0.945 | 0.7396 | 0.5 | 0.8871 | 0.931 | |

For live trees 1.0” in diameter or larger for species numbers 13, 17, 18, 20, and 21, a Weibull-based crown model developed by Dixon (1985) as described in Dixon (2002) is used to predict missing crown ratio. To estimate crown ratio using this methodology, the average stand crown ratio is estimated from the stand density index using equation {4.3.1.3}. Weibull parameters are then estimated from the average stand crown ratio using equations in equation set {4.3.1.4}. Individual tree crown ratio is then set from the Weibull distribution, equation {4.3.1.5} based on a tree’s relative position in the diameter distribution and multiplied by a scale factor, shown in equation {4.3.1.6}, which accounts for stand density. Crowns estimated from the Weibull distribution are bounded to be between the 5 and 95 percentile points of the specified Weibull distribution. Equation coefficients for each species for these equations are shown in table 4.3.1.2.

{4.3.1.3} *ACR* = d0 + d1 \* *RELSDI* \* 100.0

*RELSDI* = *SDIstand* / *SDImax*

{4.3.1.4} Weibull parameters A, B, and C are estimated from average crown ratio

*A* = a0

*B* = b0 + b1 \* *ACR* (*B* <u>></u> 1)

*C* = c0 + c1 \* *ACR*  (*C* <u>></u> 2)

{4.3.1.5} *Y* = 1-exp(-((*X*-*A*)/*B*)^*C*)

{4.3.4.6} *SCALE =* 1 – 0.00167 \* (*CCF* – 100)

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

a0, b0-1, c0-1, and d0-1 are species-specific coefficients shown in table 4.3.1.2

**Table 4.3.1.2 Coefficients for the Weibull parameter equations {4.3.1.3} and {4.3.1.4} in the IE variant.**

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **SpeciesCode** | **Model Coefficients** | | | | | | |
| **a0** | **b0** | **b1** | **c0** | **c1** | **d0** | **d1** |
| LM | 1.0 | -0.82631 | 1.06217 | 3.31429 | 0 | 6.19911 | -0.02216 |
| PY | 1.0 | -0.82631 | 1.06217 | 3.31429 | 0 | 6.19911 | -0.02216 |
| AS | 0 | -0.08414 | 1.14765 | 2.77500 | 0 | 4.01678 | -0.01516 |
| MM | 0 | -0.08414 | 1.14765 | 2.77500 | 0 | 4.01678 | -0.01516 |
| PB | 0 | -0.08414 | 1.14765 | 2.77500 | 0 | 4.01678 | -0.01516 |

In the IE variant, equation {4.3.1.7} is used to predict missing crown ratio missing in live trees for all trees 3.0” in diameter or larger for species numbers 1-12, 14, and 23.

{4.3.1.7} ln(*CR)* = *HAB* + (b1 \* *BA*) + (b2 \* *BA^*2) + (b3 \* ln(*BA*)) + (b4 \* *CCF*) + (b5\**CCF^*2) + (b6 \* ln(*CCF*)) + (b7 \* *DBH*) + (b8\**DBH^*2) + (b9 \* ln(*DBH*)) + (b10 \* *HT*) + (b11 \* *HT^*2) + (b12 \* ln(*HT*)) + (b13 \* *PCT*) + (b14 \* ln(*PCT*))

where:

*CR* is predicted crown ratio expressed as a proportion

*HAB* is a habitat-dependent coefficient shown in table 4.3.1.4

*BA* is total stand basal area

*CCF* is stand crown competition factor

*DBH* is tree diameter at breast height

*HT* is tree height

*PCT* is the subject tree’s percentile in the basal area distribution of the stand

b1 – b14 are species-specific coefficients shown in table 4.3.1.3

**Table 4.3.1.3 Coefficients for the crown ratio change equation {4.3.1.7} in the IE variant.**

| **Coefficient** | **Species Code** | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL, WB** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF, LL** | **PP** | **MH, OS** |
| b1 | 0 | -0.00204 | 0 | -0.00183 | 0 | 0 | 0 | -0.00203 | -0.00190 | -0.00217 | -0.0026 |
| b2 | 0 | 0 | 0 | 0 | –1.902 | 0 | 0 | 0 | 0 | 0 | 0 |
| b3 | -0.34566 | 0 | 0 | 0 | 0 | 0.17479 | 0 | 0 | 0 | 0 | 0 |
| b4 | 0 | 0 | 0 | 0 | 0 | -0.00183 | 0 | 0 | 0 | 0 | 0 |
| b5 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 5.116 |
| b6 | 0 | 0 | -0.15334 | 0 | 0 | 0 | -0.18555 | 0 | 0 | 0 | 0 |
| b7 | 0.03882 | 0 | 0 | 0 | 0.03027 | –0.0056 | 0 | 0 | 0 | 0 | 0 |
| b8 | -0.0007 | 0 | 0 | 0 | -0.00055 | 0 | 0 | 0 | 0 | 0 | 0 |
| b9 | 0 | 0.30066 | 0.3384 | 0.24293 | 0 | 0 | 0.53172 | 0.29699 | 0.23372 | 0.26558 | 0 |
| b10 | 0 | 0 | 0 | 0 | 0 | 0 | -0.02989 | 0 | 0 | 0 | 0 |
| b11 | 0 | 0 | 0 | 0 | 0 | 0 | 0.00011 | 0 | 0 | 0 | 0 |
| b12 | -0.21217 | -0.59302 | -0.59685 | -0.25601 | -0.25776 | 0 | 0 | -0.38334 | -0.28433 | -0.31555 | -0.2514 |
| b13 | 0.00301 | 0 | 0 | 0 | 0 | 0 | 0.0042 | 0 | 0.00190 | 0 | 0 |
| b14 | 0 | 0.19558 | 0.16488 | 0.0726 | 0.06887 | 0.1105 | 0 | 0.09918 | 0 | 0.16072 | 0.0514 |

**Table 4.3.4 *HAB* values by habitat class for equation {4.3.1.7} in the IE variant.**

| **Habitat**  **Class** | **Species Code** | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL, WB** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF, LL** | **PP** | **MH, OS** |
| 1 | 0.8884 | 0.06533 | 0.8643 | -0.2304 | -0.2413 | -1.6053 | -0.3785 | 0.05351 | 0.09453 | -0.9436 | 0.4649 |
| 2 | 0.7309 | 0.03441 | 0.7271 | -0.5421 | 0 | -1.7128 | -0.4142 | -0.05031 | -0.0774 | -0.8654 | 0.3211 |
| 3 | 0.9347 | 0.2307 | 0.984 | -0.4343 | 0 | 0 | -0.3985 | 0.1075 | 0.07113 | -0.8849 | 0.197 |
| 4 | 0.9888 | 0.1661 | 0.8127 | -0.3759 | 0 | 0 | -0.2987 | -0.1872 | 0.2039 | -0.9067 | 0.2295 |
| 5 | 0.9945 | -0.1253 | 0.8874 | -0.4129 | 0 | 0 | -0.381 | 0.01729 | 0.06176 | -0.8783 | 0.3383 |
| 6 | 1.1126 | -0.05018 | 0.7055 | -0.4879 | 0 | 0 | -0.4087 | 0.03667 | 0.1513 | -1.0103 | 0.345 |
| 7 | 1.0263 | 0.11005 | 0.7708 | -0.2674 | 0 | 0 | -0.3577 | 0.01885 | 0.09086 | -1.0268 | 0 |
| 8 | 0 | 0.08113 | 0.7849 | -0.1941 | 0 | 0 | -0.2994 | 0.09102 | 0.158 | -1.005 | 0 |
| 9 | 0 | 0.1782 | 0.8038 | 0 | 0 | 0 | -0.2486 | 0.1371 | 0.09229 | -1.0301 | 0 |
| 10 | 0 | 0.03919 | 0.8742 | 0 | 0 | 0 | -0.2863 | 0.08368 | 0.01551 | 0 | 0 |
| 11 | 0 | 0.2107 | 0.8232 | 0 | 0 | 0 | -0.1968 | 0.123 | 0 | 0 | 0 |
| 12 | 0 | 0 | 0.8415 | 0 | 0 | 0 | -0.4931 | -0.02365 | 0 | 0 | 0 |
| 13 | 0 | 0 | 0.9759 | 0 | 0 | 0 | -0.2676 | 0 | 0 | 0 | 0 |
| 14 | 0 | 0 | 0 | 0 | 0 | 0 | -0.5625 | 0 | 0 | 0 | 0 |

**Table 4.3.5 Habitat class by species and habitat code for *HAB* values in equation {4.3.9} in the IE variant.**

| **Habitat Code** | **Species Code** | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL, WB** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF, LL** | **PP** | **MH, OS** |
| 130 | 2 | 2 | 2 | 2 | 1 | 1 | 2 | 2 | 2 | 2 | 1 |
| 170 | 2 | 2 | 2 | 2 | 1 | 1 | 2 | 2 | 2 | 2 | 1 |
| 250 | 2 | 2 | 2 | 2 | 1 | 1 | 2 | 2 | 2 | 4 | 1 |
| 260 | 2 | 2 | 4 | 2 | 1 | 1 | 2 | 2 | 2 | 1 | 1 |
| 280 | 2 | 2 | 4 | 2 | 1 | 1 | 2 | 2 | 2 | 1 | 1 |
| 290 | 2 | 2 | 4 | 2 | 1 | 1 | 2 | 2 | 2 | 1 | 1 |
| 310 | 2 | 2 | 6 | 2 | 1 | 1 | 4 | 2 | 2 | 5 | 1 |
| 320 | 2 | 3 | 7 | 2 | 1 | 1 | 5 | 3 | 2 | 6 | 1 |
| 330 | 2 | 2 | 4 | 2 | 1 | 1 | 5 | 2 | 2 | 1 | 1 |
| 420 | 2 | 4 | 8 | 1 | 1 | 1 | 2 | 1 | 2 | 1 | 1 |
| 470 | 2 | 4 | 8 | 1 | 1 | 1 | 2 | 1 | 2 | 1 | 1 |
| 510 | 2 | 5 | 5 | 2 | 1 | 1 | 6 | 2 | 2 | 8 | 1 |
| 520 | 3 | 6 | 9 | 3 | 1 | 1 | 7 | 4 | 2 | 7 | 2 |
| 530 | 4 | 7 | 10 | 4 | 1 | 1 | 8 | 5 | 3 | 9 | 2 |
| 540 | 4 | 7 | 10 | 4 | 1 | 1 | 8 | 5 | 4 | 9 | 2 |
| 550 | 4 | 7 | 10 | 4 | 1 | 1 | 8 | 5 | 4 | 9 | 2 |
| 570 | 5 | 8 | 11 | 5 | 1 | 2 | 9 | 6 | 4 | 3 | 3 |
| 610 | 5 | 8 | 11 | 5 | 1 | 2 | 9 | 6 | 4 | 3 | 3 |
| 620 | 5 | 4 | 8 | 6 | 1 | 2 | 10 | 7 | 5 | 3 | 4 |
| 640 | 6 | 1 | 1 | 1 | 1 | 1 | 11 | 8 | 6 | 1 | 1 |
| 660 | 6 | 10 | 12 | 7 | 1 | 1 | 11 | 8 | 6 | 1 | 1 |
| 670 | 1 | 9 | 12 | 7 | 1 | 1 | 12 | 9 | 7 | 1 | 1 |
| 680 | 6 | 10 | 13 | 7 | 1 | 1 | 11 | 8 | 6 | 1 | 5 |
| 690 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 10 | 1 | 1 | 1 |
| 710 | 7 | 11 | 3 | 8 | 1 | 1 | 13 | 11 | 8 | 1 | 6 |
| 720 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 730 | 6 | 1 | 3 | 7 | 1 | 1 | 14 | 1 | 9 | 1 | 1 |
| 830 | 6 | 1 | 1 | 1 | 1 | 1 | 3 | 12 | 10 | 1 | 1 |
| 850 | 6 | 1 | 1 | 1 | 1 | 1 | 3 | 12 | 10 | 1 | 1 |
| 999 | 6 | 2 | 1 | 1 | 1 | 1 | 11 | 8 | 6 | 1 | 1 |

Singleleaf pinyon, Rocky Mountain juniper, cottonwood, and other hardwood use equation {4.3.1.8} or {4.3.1.9} to estimate crown ratio for live and dead trees missing crown ratios in the inventory. Singleleaf pinyon and Rocky Mountain juniper use equation {4.3.1.8}. Cottonwood and other hardwood use equation {4.3.1.9}.

{4.3.1.8} *CR* = [-0.59373 + (0.67703 \* *HF*)] / *HF*

{4.3.1.9} *CR* = [5.17281 + (0.32552 \* *HF*) – (0.01675 \* *BA*)] / *HF*

where:

CR is crown ratio expressed as a proportion (bounded to 0.05 < CR < 0.95)

BA is total stand basal area

HF is end of cycle tree height (HT + height growth)

### 4.3.2 Crown Ratio Change

Crown ratio change is estimated after growth, mortality and regeneration are estimated during a projection cycle. Crown ratio change is the difference between the crown ratio at the beginning of the cycle and the predicted crown ratio at the end of the cycle. Crown ratio predicted at the end of the projection cycle is estimated for live limber pine, Pacific yew, quaking aspen, Rocky Mountain maple, and paper birch using the Weibull distribution, equations {4.3.1.3}-{4.3.1.6}. Live singleleaf pinyon and Rocky Mountain juniper use equation {4.3.1.8}. Live cottonwood and other hardwood use equation {4.3.1.9}. For live trees greater than 3” in dbh for all other species, crown change is predicted using equation {4.3.1.7}. Crown change is checked to make sure it doesn’t exceed the change possible if all height growth produces new crown. Crown change is further bounded to 1% per year for the length of the cycle to avoid drastic changes in crown ratio.

### 4.3.3 Crown Ratio for Newly Established Trees

Crown ratios for newly established trees during regeneration are estimated using equation {4.3.3.1}. A random component is added in equation {4.3.3.1} to ensure that not all newly established trees are assigned exactly the same crown ratio.

{4.3.3.1} CR = 0.89722 – 0.0000461 \* PCCF + RAN

where:

CR is crown ratio expressed as a proportion (bounded to 0.2 <u><</u> CR <u><</u> 0.9)

PCCF is crown competition factor on the inventory point where the tree is established

RAN is a small random component

## 4.4 Crown Width Relationships

The IE variant calculates the maximum crown width for each individual tree based on individual tree and stand attributes. Crown width for each tree is reported in the tree list output table and used for percent cover (*PCC*) calculations in the model. Crown width is calculated using equations {4.4.1} – {4.4.6}, and coefficients for these equations are shown in table 4.4.1. The minimum diameter and bounds for certain data values are given in table 4.4.2. Equation numbers in table 4.4.1 are given with the first three digits representing the FIA species code, and the last two digits representing the equation source.

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

*DBH* < *MinD*: *CW* = [(a1 \* *BF*) \* *MinD^*a2 \* *HT^*a3 \* *CL^*a4 \* (*BA* + 1.0)^a5 \* (exp(*EL*))a6] \* (*DBH* / *MinD*)

{4.4.6} Donnelly (1996); Equation 06

*DBH* <u>></u> *MinD*: *CW* = a1 \* *DBH^*a2

*DBH* < *MinD*: *CW* = [a1 \* *MinD^*a2] \* (*DBH* / *MinD*)

where:

*BF* is a species-specific coefficient based on forest code

*CW* is tree maximum crown width

*CL* is tree crown length

*CR%* is crown ratio expressed as a percent

*DBH* is tree diameter at breast height

*HT* is tree height

*BA* is total stand basal area

*EL* is stand elevation in hundreds of feet

*MinD* is the minimum diameter

*HI* is the Hopkins Index, where *HI* = (ELEVATION - 5449) / 100) \* 1.0 + (LATITUDE - 42.16) \* 4.0 + (-116.39 -LONGITUDE) \* 1.25

a1 – a6 are species-specific coefficients shown in table 4.4.1

**Table 4.4.1 Coefficients for crown width equations {4.4.1} – {4.4.6} in the IE variant.**

| **Species Code** | **Equation Number\*** | **a1** | **a2** | **a3** | **a4** | **a5** | **a6** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| WP | 11903 | 1.0405 | 1.2799 | 0.11941 | 0.42745 | 0 | -0.07182 |
| WL | 07303 | 1.02478 | 0.99889 | 0.19422 | 0.59423 | -0.09078 | -0.02341 |
| DF | 20203 | 1.01685 | 1.48372 | 0.27378 | 0.49646 | -0.18669 | -0.01509 |
| GF | 01703 | 1.0303 | 1.14079 | 0.20904 | 0.38787 | 0 | 0 |
| WH | 26303 | 1.02460 | 1.3522 | 0.24844 | 0.412117 | -0.104357 | 0.03538 |
| RC | 24203 | 1.03597 | 1.46111 | 0.26289 | 0.18779 | 0 | 0 |
| LP | 10803 | 1.03992 | 1.58777 | 0.30812 | 0.64934 | -0.38964 | 0 |
| ES | 09303 | 1.02687 | 1.28027 | 0.2249 | 0.47075 | -0.15911 | 0 |
| AF | 01903 | 1.02886 | 1.01255 | 0.30374 | 0.37093 | -0.13731 | 0 |
| PP | 12203 | 1.02687 | 1.49085 | 0.1862 | 0.68272 | -0.28242 | 0 |
| MH | 26405 | 3.7854 | 0.54684 | -0.12954 | 0.16151 | 0.03047 | -0.00561 |
| WB | 10105 | 2.2354 | 0.6668 | -0.11658 | 0.16927 | 0 | 0 |
| LM | 11301 | 4.0181 | 0.8528 | 0 | 0 | 0 | 0 |
| LL | 07204 | 2.2586 | 0.68532 | 0 | 0 | 0 | 0 |
| PI | 10602 | -5.4647 | 1.966 | 0 | -0.0395 | 0.0427 | -0.0259 |
| RM | 06602 | -4.1599 | 1.3528 | -0.0233 | 0.0633 | 0 | -0.0423 |
| PY | 23104 | 6.1297 | 0.45424 | 0 | 0 | 0 | 0 |
| AS | 74605 | 4.7961 | 0.64167 | -0.18695 | 0.18581 | 0 | 0 |
| CO | 74902 | 4.1687 | 1.5355 | 0 | 0 | 0 | 0.1275 |
| MM | 32102 | 5.9765 | 0.8648 | 0 | 0.0675 | 0 | 0 |
| PB | 37506 | 5.8980 | 0.4841 | 0 | 0 | 0 | 0 |
| OH | 74902 | 4.1687 | 1.5355 | 0 | 0 | 0 | 0.1275 |
| OS | 12205 | 4.7762 | 0.74126 | -0.28734 | 0.17137 | -0.00602 | -0.00209 |

\*Equation number is a combination of the species FIA code (###) and source (##).

**Table 4.4.2 *MinD* values and data bounds for equations {4.4.1} – {4.4.6} in the IE variant.**

| **Species Code** | **Equation Number\*** | ***MinD*** | **EL min** | ***EL* max** | ***HI* min** | ***HI* max** | ***CW* max** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| WP | 11903 | 1.0 | n/a | n/a | n/a | n/a | 35 |
| WL | 07303 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| DF | 20203 | 1.0 | n/a | n/a | n/a | n/a | 80 |
| GF | 01703 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| WH | 26303 | 1.0 | n/a | n/a | n/a | n/a | 54 |
| RC | 24203 | 1.0 | n/a | n/a | n/a | n/a | 45 |
| LP | 10803 | 0.7 | n/a | n/a | n/a | n/a | 40 |
| ES | 09303 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| AF | 01903 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| PP | 12203 | 2.0 | n/a | n/a | n/a | n/a | 46 |
| MH | 26405 | 1.0 | 10 | 79 | n/a | n/a | 45 |
| WB | 10105 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| LM | 11301 | 5.0 | n/a | n/a | n/a | n/a | 25 |
| LL | 07204 | 1.0 | n/a | n/a | n/a | n/a | 33 |
| PI | 10602 | 5.0 | n/a | n/a | -40 | 11 | 25 |
| RM | 06602 | 5.0 | n/a | n/a | -37 | 19 | 29 |
| PY | 23104 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| AS | 74605 | 1.0 | n/a | n/a | n/a | n/a | 45 |
| CO | 74902 | 5.0 | n/a | n/a | -26 | -2 | 35 |
| MM | 32102 | 5.0 | n/a | n/a | n/a | n/a | 39 |
| PB | 37506 | 1.0 | n/a | n/a | n/a | n/a | 25 |
| OH | 74902 | 5.0 | n/a | n/a | -26 | -2 | 35 |
| OS | 12205 | 1.0 | 13 | 75 | n/a | n/a | 50 |

## 4.5 Crown Competition Factor

The IE variant uses crown competition factor (*CCF*) as a predictor variable in some growth relationships. Crown competition factor (Krajicek and others 1961) is a relative measurement of stand density that is based on tree diameters. Individual tree *CCFt* values estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open-grown. Stand *CCF* is the summation of individual tree (*CCFt*)values. A stand *CCF* value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand. Crown competition factor for an individual tree is calculated using equation {4.5.1}. All species coefficients are shown in table 4.3.1.

{4.5.1} CCF equations for individual trees

*DBH* <u>></u> 1.0” for Limber pine, singleleaf pinyon, pacific yew, quaking aspen, Rocky Mountain maple, paper birch and *DBH* <u>></u> 10.0” for all other species:

*CCFt* = R1 + (R2 \* *DBH*) + (R3 \* *DBH^*2)

0.1” < *DBH* < 1.0” for Limber pine, singleleaf pinyon, pacific yew, quaking aspen, Rocky Mountain maple, paper birch and 0.1” < *DBH* < 10.0” for all other species*:*

*CCFt* = R4 \* *DBH* R5

*DBH* <u><</u> 0.1”: *CCFt* = 0.001

where:

*CCFt* is crown competition factor for an individual tree

*DBH* is tree diameter at breast height

R1 – R5 are species-specific coefficients shown in table 4.5.1

**Table 4.5.1 Coefficients for *CCF* equation {4.5.1} in the IE variant.**

| **Species Code** | **R1** | **R2** | **R3** | **R4** | **R5** |
| --- | --- | --- | --- | --- | --- |
| WP | 0.03 | 0.0167 | 0.00230 | 0.009884 | 1.6667 |
| WL | 0.02 | 0.0148 | 0.00338 | 0.007244 | 1.8182 |
| DF | 0.11 | 0.0333 | 0.00259 | 0.017299 | 1.5571 |
| GF | 0.04 | 0.0270 | 0.00405 | 0.015248 | 1.7333 |
| WH | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |
| RC | 0.03 | 0.0238 | 0.00490 | 0.008915 | 1.7800 |
| LP | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| ES | 0.03 | 0.0173 | 0.00259 | 0.007875 | 1.7360 |
| AF | 0.03 | 0.0216 | 0.00405 | 0.011402 | 1.7560 |
| PP | 0.03 | 0.0180 | 0.00281 | 0.007813 | 1.7680 |
| MH | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |
| WB | 0.02 | 0.0148 | 0.00338 | 0.007244 | 1.8182 |
| LM | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| LL | 0.03 | 0.0216 | 0.00405 | 0.011402 | 1.7560 |
| PI | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| RM | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| PY | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| AS | 0.03 | 0.0238 | 0.00490 | 0.008915 | 1.7800 |
| CO | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |
| MM | 0.03 | 0.0238 | 0.00490 | 0.008915 | 1.7800 |
| PB | 0.03 | 0.0238 | 0.00490 | 0.008915 | 1.7800 |
| OH | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |
| OS | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |

## 4.6 Small Tree Growth Relationships

Trees are considered “small trees” for FVS modeling purposes when they are smaller than some threshold diameter. The threshold diameter is set to 1.0” for cottonwood species and other hardwood, and is set to 3.0” for all other species. Rocky Mountain juniper and singleleaf pinyon only use the small-tree relationships to predict height and diameter growth for trees of all sizes.

The small tree model is height-growth driven, meaning height growth is estimated first and diameter growth is estimated from height growth. These relationships are discussed in the following sections.

### 4.6.1 Small Tree Height Growth

The small-tree height increment equations predict 5-year or 10-year height growth (*HTG*) for small trees in the IE variant depending on species. The IE western larch equation is used for whitebark pine, the IE subalpine fir equation is used for subalpine larch, and the original NI equation for “other” species, which is really mountain hemlock, is used for mountain hemlock and other softwood in the IE variant.

Potential 5-year height growth is estimated using equation {4.6.1.1} and coefficients shown in tables 4.6.1.1 - 4.6.1.3 for western white pine, western larch, Douglas-fir, grand fir, western hemlock, western redcedar, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, mountain hemlock, whitebark pine, subalpine larch, and other softwood.

{4.6.1.1} *HTG* = exp(*X*)

*X* = [*LOC* + *HAB* + *SPP* + c1 \* ln(*HT*) + c2 \* *CCF* + c3 \* *BAL*/100+ 0.22157 \* *SL* \* cos(*ASP*) - 0.12432 \* *SL* \* sin(*ASP*) - 0.10987 \* *SL*]

where:

*HTG* is estimated height growth for the cycle

*LOC* is a location-specific coefficient shown in table 4.6.1.2

*HAB* is a habitat type dependent intercept shown in table 4.6.1.3

*SPP* is a species dependent intercept shown in table 4.6.1.1

*CCF* is stand crown competition factor

*BAL* is total basal area in trees larger than the subject tree

*ASP* is stand aspect

*SL* is stand slope

*HT* is tree height

c1 – c3 are species-specific coefficients shown in table 4.6.1.1

**Table 4.6.1.1 Coefficients (c1 – c3) and SPP values for equation {4.6.1.1} in the IE variant.**

| **Species Code** | **c1** | **c2** | **c3** | **SPP** |
| --- | --- | --- | --- | --- |
| WP | 0.4214 | -0.00591 | -0.37199 | 1.4700 |
| WL | 0.2716 | -0.00654 | -0.41532 | 1.6204 |
| DF | 0.3907 | -0.00591 | -0.40043 | 1.4932 |
| GF | 0.3487 | -0.00391 | -0.25355 | 0.9981 |
| WH | 0.3417 | -0.00391 | -0.34693 | 1.0202 |
| RC | 0.2354 | -0.00391 | -0.12013 | 0.8953 |
| LP | 0.5843 | -0.00654 | -0.24172 | 1.2336 |
| ES | 0.2827 | -0.00391 | -0.25300 | 1.0964 |
| AF | 0.3740 | -0.00391 | -0.22957 | 1.0667 |
| PP | 0.4485 | -0.00654 | -0.47299 | 1.7311 |
| MH | 0.2354 | -0.00391 | -0.25349 | 0.8953 |
| WB | 0.2716 | -0.00654 | -0.41532 | 1.6204 |
| LL | 0.3740 | -0.00391 | -0.22957 | 1.0667 |
| OS | 0.2354 | -0.00391 | -0.25349 | 0.8953 |

**Table 4.6.1.2 *LOC* values for equation {4.6.1.1} in the IE variant.**

|  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | **National Forest (Location Code)** | | | | | | | | | | |
|  | **103** | **104** | **105** | **106** | **110** | **113** | **114** | **116** | **117** | **118** | **621** |
| LOC | -0.2785 | -0.2785 | 0 | -0.0480 | -0.2785 | -0.2785 | -0.2785 | -0.2785 | 0 | -0.0480 | -0.2785 |

**Table 4.6.1.3 *HAB* values for equation {4.6.1.1} in the IE variant.**

| **Species Code** | ***HAB*** | **Habitat types (see Table 3.3)** |
| --- | --- | --- |
| WP | -0.2146 | 520, 620 |
| -0.0941 | 530 |
| -0.3141 | 130, 170, 250, 260, 280, 290, 310, 320, 330, 420, 470, 510, 640, 660, 670, 680, 690, 710, 720, 730, 830, 850, 999 |
| 0 | 540, 550, 570, 610 |
| WL | -0.2146 | 420, 470, 510, 520, 620 |
| -0.0941 | 530 |
| -0.3296 | 130, 170, 250, 260, 280, 290, 310, 320, 330, 640, 660, 670, 680, 690, 710, 720, 730, 830, 850, 999 |
| 0 | 540, 550, 570, 610 |
| DF | -0.2146 | 320, 510, 520, 620 |
| -0.0941 | 530 |
| -0.5401 | 660, 830 |
| -0.3948 | 130, 170, 250, 260, 280, 290, 310, 330, 420, 470, 640, 670, 680, 690, 710, 720, 730, 850, 999 |
| 0 | 540, 550, 570, 610 |
| GF | -0.2146 | 520, 620, 670, 680 |
| -0.0941 | 530 |
| -0.2776 | 130, 170, 250, 260, 280, 290, 310, 320, 330, 420, 470, 510, 640, 660, 690, 710, 720, 730, 830, 850, 999 |
| 0 | 540, 550, 570, 610 |
| WH | -0.2146 | 130, 170, 250, 260, 280, 290, 310, 320, 330, 420, 470, 510, 520, 620, 640, 660, 670, 680, 690, 710, 720, 730, 830, 850, 999 |
| -0.0941 | 530 |
| 0 | 540, 550, 570, 610 |
| RC | -0.2146 | 130, 170, 250, 260, 280, 290, 310, 320, 330, 420, 470, 510, 520, 620, 640, 660, 670, 680, 690, 710, 720, 730, 830, 850, 999 |
| -0.0941 | 530 |
| 0 | 540, 550, 570, 610 |
| LP | -0.2146 | 280, 290, 310 |
| -0.0941 | 530 |
| -0.2484 | 670 |
| -0.5134 | 510, 520, 640, 660, 680, 730, 830 |
| -0.3495 | 130, 170, 250, 260, 320, 330, 420, 470, 690, 710, 720, 850, 999 |
| 0 | 540, 550, 570, 610, 620 |
| ES | -0.2146 | 130, 170, 250, 260, 280, 290, 310, 320, 330, 420, 470, 510, 520, 620, 640, 660, 670, 680, 690, 710, 720, 730, 850, 999 |
| -0.0941 | 530 |
| -0.3431 | 830 |
| 0 | 540, 550, 570, 610 |
| AF | -0.2146 | 620, 730 |
| -0.0941 | 530 |
| -0.4916 | 520, 830, 850 |
| -0.3582 | 130, 170, 250, 260, 280, 290, 310, 320, 330, 420, 470, 510, 640, 660, 670, 680, 690, 710, 720, 999 |
| 0 | 540, 550, 570, 610 |
| PP | -0.2146 | 130, 170, 250, 290, 310, 510, 520, 620 |
| -0.0941 | 530 |
| -0.4345 | 260, 280, 320, 330, 420, 470, 640, 660, 670, 680, 690, 710, 720, 730, 830, 850, 999 |
| 0 | 540, 550, 570, 610 |
| MH | -0.2146 | 520, 620 |
| -0.0941 | 530, 670 |
| -0.3738 | 130, 170, 250, 260, 280, 290, 310, 320, 330, 420, 470, 510, 640, 660, 680, 690, 710, 720, 730, 830, 850, 999 |
| 0 | 540, 550, 570, 610 |
| WB | -0.2146 | 420, 470, 510, 520, 620 |
| -0.0941 | 530 |
| -0.3296 | 130, 170, 250, 260, 280, 290, 310, 320, 330, 640, 660, 670, 680, 690, 710, 720, 730, 830, 850, 999 |
| 0 | 540, 550, 570, 610 |
| LL | -0.2146 | 620, 730 |
| -0.0941 | 530 |
| -0.4916 | 520, 830, 850 |
| -0.3582 | 130, 170, 250, 260, 280, 290, 310, 320, 330, 420, 470, 510, 640, 660, 670, 680, 690, 710, 720, 999 |
| 0 | 540, 550, 570, 610 |
| OS | -0.2146 | 520, 620 |
| -0.0941 | 530, 670 |
| -0.3738 | 130, 170, 250, 260, 280, 290, 310, 320, 330, 420, 470, 510, 640, 660, 680, 690, 710, 720, 730, 830, 850, 999 |
| 0 | 540, 550, 570, 610 |

The remaining species in the IE variant use small-tree height growth equations taken from other variants. Cottonwood species and other hardwood use equations from the Central Rockies variant; singleleaf pinyon, Rocky Mountain juniper, and quaking aspen use equations from the Utah variant; and limber pine uses equations from the Tetons variant. The quaking aspen equations are also used for Rocky mountain maple and paper birch, and the limber pine equations are used for Pacific yew.

For cottonwood species and other hardwood, 10-year potential height growth is estimated using equation {4.6.1.2}, and then adjusted based on stand density (*PCTRED*) and crown ratio (*VIGOR*) as shown in equations {4.6.1.3} and {4.6.1.4} respectively, to determine an estimated height growth as shown in equation {4.6.1.5}.

{4.6.1.2} *POTHTG* = (*SI* / 5.0) \* ((*SI* \* 1.5) - *HT*) / (*SI* \* 1.5) \* 0.83

{4.6.1.3} *PCTRED* = 1.1144 – 0.0115\**Z* + 0.4301E-04 \* *Z^*2 – 0.7222E-07 \* *Z^*3 + 0.5607E-10 \* *Z^*4 – 0.1641E-13 \* *Z^*5

*Z* = *HTAvg* \* (*CCF* / 100)

{4.6.1.4} *VIGOR* = (150 \* *CR*^3 \* exp(-6 \* CR) ) + 0.3

{4.6.1.5} *HTG* = *POTHTG* \* *PCTRED* \* *VIGOR*

where:

*POTHTG* is 10-year potential height growth

*PCTRED* is reduction in height growth due to stand density (bounded: 0.01 <u><</u> *PCTRED* <u><</u> 1.0)

*HTAvg* is average height of the 40 largest diameter trees in the stand

*CCF* is stand crown competition factor

*VIGOR* is reduction in height growth due to tree vigor (bounded to *VIGOR* <u><</u> 1.0)

*CR* is a tree’s live crown ratio (compacted) expressed as a proportion

*HTG* is estimated 10-year height growth

*SI* is species site index bounded by *SITELO* and *SITEHI*

*SITELO* is lower end of the site range for this species shown in table 4.6.1.4

*SITEHI* is upper end of the site range for this species shown in table 4.6.1.4

For singleleaf pinyon and Rocky Mountain juniper, 10-year potential height growth is estimated using equation {4.6.1.2}. The reduction proportion due to stand density (*PCTRED*) is computed with equation {4.6.1.3} and the reduction proportion due to crown ratio (*VIGOR*) is computed with equation {4.6.1.6}, to determine an estimated height growth as shown in equation {4.6.1.5}.

{4.6.1.6} *VIGOR* = 1 – [(1 – ((150 \* *CR^*3 \* exp(-6 \* *CR*)) + 0.3)) / 3]

where:

*VIGOR* is reduction in height growth due to tree vigor (bounded to *VIGOR* <u><</u> 1.0)

*CR* is a tree’s live crown ratio (compacted) expressed as a proportion

Ten-year height growth for quaking aspen, Rocky mountain maple, and paper birch is obtained using an aspen height-age curve (Shepperd 1995) shown in equation {4.6.1.7}. A tree height is estimated from the trees’ current age, and then its current age plus 10 years. Ten-year height growth, equation {4.6.1.8}, is the difference between these two height estimates modified by an adjustment for relative site index (equation {4.6.1.9}) and converted from centimeters to feet. If tree age is not entered during data input, an estimate of the tree’s current age is obtained at the start of a projection for these three species using the tree’s height and solving equation {4.6.1.7} for age. If the species’ site index for the stand is less than or equal to the lower site limit, it is set to the lower limit + 0.5 for the calculation of RELSI. Similarly, if the species’ site index for the stand is greater than the upper site limit, it is set to the upper site limit for the calculation of RELSI.

{4.6.1.7} *H* = 26.9825 \* *A^*1.1752

{4.6.1.8} *HTG* = (0.75 \* (*H2* – *H1*) / (2.54 \* 12)) \* (0.5 \* [1 + RELSI])

{4.6.1.9} *RELSI* = (*SI* – *SITELO*) / (*SITEHI* – *SITELO*)])

where:

*H* is tree height in centimeters

*A* is tree age in years

*H1* is estimated tree height in centimeters at the beginning of a projection cycle

*H2* is estimated tree height in centimeters 10 year after the beginning of a projection cycle

*HTG* is estimated 10-year height growth in feet

*RELSI* is relative site index

*SI* is species site index bounded by *SITELO* and *SITEHI*

*SITELO* is lower end of the site range for this species shown in table 4.6.1.4

*SITEHI* is upper end of the site range for this species shown in table 4.6.1.4

Five-year height growth for limber pine (13) and Pacific yew (17) is estimated using equation {4.6.1.9}.

{4.6.1.9} *HTG* = exp[1.17527 - (0.42124 \* ln(*TPCCF*))] + *CR* \* exp[-2.56002 - (0.58642 \* ln(*TPCCF*))]

where:

*HTG* is estimated 5-year height growth

*CR* is a tree’s live crown ratio (compacted) expressed as a percent

*TPCCF* is total crown competition factor on the inventory point where the tree is established (bounded to 25 <u><</u> *TPCCF* <u><</u> 300)

**Table 4.6.1.4 *SITELO* and *SITEHI* values for equations {4.6.1.2} and {4.6.1.3} in the IE variant.**

| **Species Code** | ***SITELO*** | ***SITEHI*** |
| --- | --- | --- |
| PI | 5 | 20 |
| RM | 5 | 15 |
| AS | 30 | 70 |
| CO | 30 | 120 |
| MM | 30 | 70 |
| PB | 30 | 70 |
| OH | 20 | 100 |

For all species, a small random error is then added to the height growth estimate. The estimated height growth is then adjusted to account for cycle length, user defined small-tree height growth adjustments, and adjustments due to small tree height increment calibration from input data.

Height growth estimates from the small-tree model are weighted with the height growth estimates from the large tree model over a range of diameters (*Xmin* and *Xmax*) in order to smooth the transition between the two models. For example, the closer a tree’s *DBH* value is to the minimum diameter (*Xmin*), the more the growth estimate will be weighted towards the small-tree growth model. The closer a tree’s *DBH* value is to the maximum diameter (*Xmax*), the more the growth estimate will be weighted towards the large-tree growth model. If a tree’s *DBH* value falls outside of the range given by *Xmin* and *Xmax*, then the model will use only the small-tree or large-tree growth model in the growth estimate. The weight applied to the growth estimate is calculated using equation {4.6.1.10}, and applied as shown in equation {4.6.1.11}. The range of diameters for each species is shown in table 4.6.1.5.

{4.6.1.10}

DBH <u><</u> Xmin: XWT = 0

Xmin < DBH < Xmax: XWT = (DBH - Xmin) / (Xmax - Xmin)

DBH <u>></u> Xmax: XWT = 1

{4.6.1.11} Estimated growth = [(1 - XWT) \* STGE] + [XWT \* LTGE]

where:

XWT is the weight applied to the growth estimates

DBH is tree diameter at breast height

Xmax is the maximum *DBH* is the diameter range

Xmin is the minimum *DBH* in the diameter range

STGE is the growth estimate obtained using the small-tree growth model

LTGEis the growth estimate obtained using the large-tree growth model

**Table 4.6.1.5 Diameter bounds by species in the IE variant.**

| **Species Code** | **Xmin** | **Xmax** |
| --- | --- | --- |
| WP | 2.0 | 10.0 |
| WL | 2.0 | 10.0 |
| DF | 2.0 | 10.0 |
| GF | 2.0 | 10.0 |
| WH | 2.0 | 10.0 |
| RC | 2.0 | 10.0 |
| LP | 1.0 | 5.0 |
| ES | 2.0 | 10.0 |
| AF | 2.0 | 10.0 |
| PP | 2.0 | 10.0 |
| MH | 2.0 | 10.0 |
| WB | 2.0 | 10.0 |
| LM | 1.5 | 3.0 |
| LL | 2.0 | 10.0 |
| PI | 90.0 | 99.0 |
| RM | 90.0 | 99.0 |
| PY | 1.5 | 3.0 |
| AS | 2.0 | 4.0 |
| CO | 0.5 | 2.0 |
| MM | 2.0 | 4.0 |
| PB | 2.0 | 4.0 |
| OH | 0.5 | 2.0 |
| OS | 2.0 | 10.0 |

\*There is only one growth relationship that applies to trees of all sizes for these species. These relationships are contained in the “small” tree portion of FVS.

### 4.6.2 Small Tree Diameter Growth

As stated previously, for trees being projected with the small tree equations, height growth is predicted first, and then diameter growth. So both height at the beginning of the cycle and height at the end of the cycle are known when predicting diameter growth. For all species, small-tree diameter growth for trees over 4.5 feet tall is calculated as the difference of predicted diameter at the start of the projection period and the predicted diameter at the end of the projection period, adjusted for bark ratio. By definition, diameter growth is zero for trees less than 4.5 feet tall.

For western white pine, western larch, Douglas-fir, grand fir, western hemlock, western redcedar, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, mountain hemlock, whitebark pine, subalpine larch, and other softwood, these two predicted diameters are estimated using equations {4.6.2.1} – {4.6.2.4} and coefficients shown in table 4.6.2.1.

{4.6.2.1} *DHAT* = c1 \* (*HT* – 4.5)c2 + *DADJ*

{4.6.2.2} *DADJ* = *DELMAX* \* *RELH* \* *RELH* – 2 \* *DELMAX* \* *RELH* + 0.65

{4.6.2.3} *RELH* = (*HT* – 4.5) / (*AH* – 4.5)

{4.6.2.4} *DELMAX* = (*AH* / 36) \* (0.01232 \* CCF – 1.75)

where:

*DHAT* is estimated tree diameter at breast height

*HT* is tree height

*DADJ* is an adjustment factor to correct for bias, relative tree size, and stand density

*RELH* is relative tree height (bounded 0 <u><</u> *RELHT* <u><</u> 1)

*AH* is average height of the 40 largest diameter trees

*DELMAX* is an adjustment factor based on relative tree size and stand density (bounded DELMAX <u><</u> 0)

*CCF* is stand crown competition factor

**Table 4.6.2.1 Coefficients (c1 – c2) by species for equation {4.6.2.1} in the IE variant.**

| **Species Code** | **C1** | **C2** |
| --- | --- | --- |
| WP | 0.0781 | 1.1645 |
| WL | 0.0751 | 1.1176 |
| DF | 0.0828 | 1.1713 |
| GF | 0.1155 | 1.0688 |
| WH | 0.0729 | 1.1988 |
| RC | 0.0730 | 1.2343 |
| LP | 0.0988 | 1.0807 |
| ES | 0.0658 | 1.3817 |
| AF | 0.0658 | 1.3817 |
| PP | 0.2160 | 1.0049 |
| MH | 0.0729 | 1.1988 |
| WB | 0.0751 | 1.1176 |
| LL | 0.0658 | 1.3817 |
| OS | 0.0729 | 1.1988 |

Singleleaf pinyon (15) and Rocky Mountain juniper (16) use equation {4.6.2.5} to estimate the two diameters.

{4.6.2.5} *DHAT* = (*HT* – 4.5) \* 10 / (*SI* – 4.5)

where:

DHAT is estimated tree diameter at breast height

HT is tree height

SI is species site index

Limber pine (13) and Pacific yew (17) use equation {4.6.2.6} to estimate the two diameters.

{4.6.2.6} *DHAT* = 0.000231 \* (*HT* - 4.5) \* *CR%* – 0.0005 \* (*HT* - 4.5) \* *PCCF* + 0.001711 \* *CR%* + 0.17023 \* (*HT* - 4.5) + 0.3

where:

*DHAT* is estimated tree diameter at breast height

*HT* is tree height

*CR%* is crown ratio expressed as a percent

*PCCF* is crown competition factor on the inventory point where the tree is established

Quaking aspen (18), cottonwood species (19), Rocky Mountain maple (20), paper birch (21), and other hardwood (22) use the species-specific height-diameter relationships discussed in section 4.1 to estimate the diameters.

## 4.7 Large Tree Growth Relationships

Trees are considered “large trees” for FVS modeling purposes when they are equal to, or larger than, some threshold diameter. This threshold diameter is set to 1.0” for cottonwood and other hardwood, and is set to 3.0” for all other species. Rocky Mountain juniper and singleleaf pinyon only use the small-tree relationships to predict height and diameter growth for trees of all sizes.

The large-tree model is driven by diameter growth meaning diameter growth is estimated first, and then height growth is estimated from diameter growth and other variables. These relationships are discussed in the following sections.

### 4.7.1 Large Tree Diameter Growth

The large tree diameter growth model used in most FVS variants is described in section 7.2.1 in Dixon (2002). For most variants, instead of predicting diameter increment directly, the natural log of the periodic change in squared inside-bark diameter (ln(*DDS*)) is predicted (Dixon 2002; Wykoff 1990; Stage 1973; and Cole and Stage 1972). For variants predicting diameter increment directly, diameter increment is converted to the *DDS* scale to keep the FVS system consistent across all variants.

Western white pine, western larch, Douglas-fir, grand fir, western hemlock, western redcedar, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, mountain hemlock, whitebark pine, limber pine, subalpine larch, Pacific yew, and other softwood use diameter growth equation {4.7.1.1}. Coefficients for these equations are shown in tables 4.7.1.1 - 4.7.1.9. Pacific yew uses the same coefficients as limber pine, other softwood use the same coefficients as mountain hemlock, subalpine larch uses the same coefficients as subalpine fir, and whitebark pine uses the same coefficients as western larch. Diameter growth for the other species in the IE variant is shown later in this section.

{4.7.1.1} Used for western white pine, western larch, Douglas-fir, grand fir, western hemlock, western redcedar, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, mountain hemlock, whitebark pine, limber pine, subalpine larch, Pacific yew, and other softwood

ln*(DDS)* = b1 + (b2 \* *EL*) + (b3 \* *EL^*2) + (b4 \* sin(*ASP*) \* SL) + (b5 \* cos(*ASP*)\* SL) + (b6 \* *SL*) + (b7 \* *SL^*2) + (b8 \* *CCF* / 100) + (b9 \* ln(*DBH*)) + (b10 \* *BAL* / 100) + (b11 \* *CR*) + (b12 \* *CR^*2) + (b13 \* *DBH^*2) + (b14 \* *BAL* / (100 \* (ln(*DBH* + 1.0)))) + (b15 \* *SI*) + *HAB*

where:

*DDS* is the predicted periodic change in squared inside-bark diameter

*EL* is stand elevation in hundreds of feet

*ASP* is stand aspect (for species numbers 13 and 17, *ASP* = *ASP* – 0.7854)

*SL* is stand slope

*CCF* is stand crown competition factor

*CR* is a tree’s live crown ratio (compacted) expressed as a proportion

*DBH* is tree diameter at breast height

*BAL* is total basal area in trees larger than the subject tree

*SI* is species site index

*HAB* is a plant association code dependent coefficient shown in table 4.7.1.4

b1 is a location-specific coefficient shown in table 4.7.1.2

b2- b15 are species-specific coefficients shown in table 4.7.1.1

**Table 4.7.1.1 Coefficients (b2- b15) for equation {4.7.1.1} in the IE variant.**

| **Coefficient** | **Species Code** | | | | | |
| --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL, WB** | **DF** | **GF** | **WH** | **RC** |
| b2 | 0.03517 | 0.0373 | 0.02591 | 0.00917 | 0.02863 | -0.00175 |
| b3 | -0.000467 | -0.000433 | -0.000377 | -0.000117 | -0.000422 | -0.000067 |
| b4 | 0.03876 | 0.0343 | 0.06287 | -0.04595 | 0.10987 | 0.05534 |
| b5 | 0.09817 | -0.21337 | -0.04562 | -0.01215 | 0.08277 | -0.06625 |
| b6 | -0.17888 | 0.33523 | 0.78176 | 1.17025 | 0.04966 | 0.11931 |
| b7 | 0 | -0.70216 | -1.1238 | -1.52006 | 0 | 0 |
| b81 |  |  |  |  |  |  |
| b9 | 0.56445 | 0.5414 | 0.56888 | 0.6881 | 0.68712 | 0.58705 |
| b10 | 0.42112 | 0.43637 | 0.50202 | 0.45142 | 0 | 0.74596 |
| b11 | 1.08338 | 1.03478 | 2.0685 | 1.93969 | 1.64133 | 1.2936 |
| b12 | 0 | 0.07509 | -0.62361 | -0.78258 | -0.27244 | 0 |
| b132 |  |  |  |  |  |  |
| b14 | -2.08272 | -2.03256 | -2.1159 | -1.76812 | -0.80918 | -2.28375 |
| b15 | 0 | 0 | 0 | 0 | 0 | 0 |
| **Coefficient** | **Species Code** | | | | | |
| **LP** | **ES** | **AF, LL** | **PP** | **MH, OS** | **LM, PY** |
| b2 | -0.0048 | 0.06259 | 0.06313 | 0.03229 | 0.08518 | 0 |
| b3 | -0.000058 | -0.000709 | -0.000676 | -0.000422 | -0.000943 | 0 |
| b4 | 0.12993 | -0.06038 | -0.06862 | 0.01192 | 0.13363 | -0.01752 |
| b5 | 0.00325 | -0.13091 | -0.12473 | -0.09976 | 0.17935 | -0.609774 |
| b6 | 0.46546 | 0.65622 | 0.3007 | -0.06637 | 0.07628 | -2.05706 |
| b7 | -0.58014 | -0.90143 | -0.62224 | -0.4372 | 0 | 2.113263 |
| b81 |  |  |  |  |  |  |
| b9 | 0.89503 | 0.73045 | 0.8624 | 0.66101 | 0.89778 | 0.213947 |
| b10 | -0.03665 | 0.25639 | 0 | 0 | 0 | -0.358634 |
| b11 | 1.85558 | 1.54643 | 0.52044 | 1.31618 | 1.28403 | 1.523464 |
| b12 | -0.36393 | -0.26635 | 0.86236 | 0 | 0 | 0 |
| b132 |  |  |  |  |  |  |
| b14 | -0.43329 | -1.18218 | -0.5127 | -1.25881 | -0.6611 | 0 |
| b15 | 0 | 0 | 0 | 0 | 0 | -0.00199592 |

1See Table 4.7.1.4 for b8 values

2See Table 4.7.1.6 for b13 values

**Table 4.7.1.2 b1 values by location class for equation {4.7.1.1} in the IE variant.**

| **Location**  **Class** | **Species Code** | | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL, WB** | | **DF** | | **GF** | **WH** | **RC** | **LP** | **ES** | **AF, LL** | **PP** |
| 1 | 0.1692 | 0.20004 | | 0.50357 | | 0.43443 | 0.10667 | 0.5007 | 0.43735 | 0.26262 | 0.42062 | 0.24588 |
| 2 | 0 | 0.07656 | | 0.3492 | | 0.28344 | 0.44357 | 0.17647 | 0.21113 | -0.15871 | 0.14072 | 0.56958 |
| 3 | 0 | 0.08188 | | 0.21961 | | -0.14829 | 0 | 0.31745 | 0.14808 | 0 | -0.13001 | 0.42787 |
| 4 | 0 | 0.30379 | | 0.61812 | | 0.20205 | 0 | 0 | 0 | 0 | 0 | 0 |
| 5 | 0 | 0 | | 0 | | 0.57763 | 0 | 0 | 0 | 0 | 0 | 0 |
| 6 | 0 | 0 | | 0 | | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| **Location**  **Class** | **Species Code** | | | |
| **MH, OS** | | **LM, PY** | |
| 1 | 0.1252 | | 1.568742 | |
| 2 | 0.48076 | | 0 | |
| 3 | 0 | | 0 | |
| 4 | 0 | | 0 | |
| 5 | 0 | | 0 | |
| 6 | 0 | | 0 | |

**Table 4.7.1.3 Location class by species and location code for equation {4.7.1.1} in the IE variant.**

| **Location Code** | **Species Code** | | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL, WB** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF, LL** | **PP** | **MH, OS** | **LM, PY** |
| 103 - Bitterroot | 2 | 1 | 5 | 6 | 3 | 4 | 4 | 3 | 4 | 1 | 3 | 1 |
| 104 - Idaho Panhandle | 1 | 1 | 4 | 5 | 2 | 1 | 2 | 1 | 1 | 2 | 2 | 1 |
| 105 - Clearwater | 2 | 1 | 1 | 1 | 3 | 1 | 1 | 1 | 1 | 2 | 1 | 1 |
| 106 - Coeur d’Alene | 2 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 2 | 2 | 1 | 1 |
| 110 - Flathead | 2 | 3 | 3 | 3 | 3 | 2 | 4 | 2 | 3 | 4 | 3 | 1 |
| 113 - Kaniksu | 2 | 2 | 2 | 2 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 1 |
| 114 - Kootenai | 2 | 5 | 3 | 4 | 3 | 4 | 3 | 3 | 4 | 1 | 3 | 1 |
| 116 - Lolo | 2 | 5 | 5 | 6 | 3 | 2 | 4 | 3 | 4 | 4 | 1 | 1 |
| 117 - Nezperce | 2 | 4 | 1 | 2 | 3 | 1 | 2 | 1 | 2 | 3 | 3 | 1 |
| 118 - St. Joe | 1 | 1 | 4 | 5 | 2 | 1 | 2 | 1 | 1 | 2 | 2 | 1 |
| 621 - Colville | 2 | 3 | 3 | 2 | 3 | 2 | 2 | 3 | 2 | 1 | 3 | 1 |

**Table 4.7.1.4 b8 values by habitat class for equation {4.7.1.1} in the IE variant.**

|  |  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Habitat**  **Class** | **Species Code** | | | | | | | | | | | |
| **WP** | **WL, WB** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF, LL** | **PP** | **MH, OS** | **LM, PY** |
| 1 | -0.0243 | -0.10144 | -0.09046 | -0.09624 | 0 | -0.05054 | -0.05576 | -0.01547 | -0.01598 | -0.10416 | -0.10744 | -0.199592 |
| 2 | -0.24886 | -0.14793 | -0.11884 | -0.19544 | 0 | -0.15356 | -0.14919 | -0.38386 | -0.04477 | -0.88809 | 0 | 0 |
| 3 | -0.01079 | -0.05438 | -0.05529 | -0.05119 | 0 | -0.09396 | -0.4064 | -0.05371 | -0.07392 | -0.25938 | 0 | 0 |
| 4 | 0 | 0 | -0.0218 | 0 | 0 | 0 | -0.114 | -0.15159 | 0 | -0.14726 | 0 | 0 |
| 5 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |

**Table 4.7.1.5 Habitat class by species and original NI habitat code for b8 in equation {4.7.1.1} in the IE variant. See tables 11.1.1 and 11.1.2 for conversion from currently recognized habitat and plant association codes to the original NI habitat codes.**

| **Habitat Code** | **Species Code** | | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL, WB** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF, LL** | **PP** | **MH, OS** | **LM, PY** |
| 130 | 3 | 3 | 4 | 3 | 1 | 3 | 4 | 4 | 3 | 2 | 1 | 1 |
| 170 | 3 | 3 | 4 | 3 | 1 | 3 | 4 | 4 | 3 | 2 | 1 | 1 |
| 250 | 3 | 3 | 4 | 3 | 1 | 3 | 1 | 4 | 3 | 3 | 1 | 1 |
| 260 | 3 | 3 | 4 | 3 | 1 | 3 | 4 | 4 | 3 | 1 | 1 | 1 |
| 280 | 3 | 3 | 4 | 3 | 1 | 3 | 3 | 4 | 3 | 4 | 1 | 1 |
| 290 | 3 | 3 | 4 | 3 | 1 | 3 | 4 | 4 | 3 | 3 | 1 | 1 |
| 310 | 3 | 3 | 1 | 3 | 1 | 3 | 2 | 4 | 3 | 3 | 1 | 1 |
| 320 | 3 | 3 | 2 | 3 | 1 | 3 | 1 | 4 | 3 | 1 | 1 | 1 |
| 330 | 3 | 3 | 4 | 3 | 1 | 3 | 4 | 4 | 3 | 2 | 1 | 1 |
| 420 | 3 | 3 | 4 | 3 | 1 | 3 | 1 | 4 | 3 | 4 | 1 | 1 |
| 470 | 3 | 3 | 4 | 3 | 1 | 3 | 4 | 4 | 3 | 4 | 1 | 1 |
| 510 | 3 | 1 | 2 | 3 | 1 | 3 | 4 | 3 | 3 | 1 | 1 | 1 |
| 520 | 1 | 3 | 1 | 1 | 1 | 3 | 4 | 3 | 1 | 4 | 1 | 1 |
| 530 | 3 | 3 | 4 | 3 | 1 | 1 | 2 | 1 | 1 | 4 | 1 | 1 |
| 540 | 3 | 3 | 4 | 3 | 1 | 2 | 2 | 1 | 1 | 4 | 1 | 1 |
| 550 | 3 | 3 | 4 | 3 | 1 | 2 | 2 | 1 | 1 | 4 | 1 | 1 |
| 570 | 1 | 3 | 3 | 3 | 1 | 3 | 2 | 3 | 1 | 1 | 1 | 1 |
| 610 | 3 | 3 | 4 | 3 | 1 | 3 | 2 | 3 | 1 | 4 | 1 | 1 |
| 620 | 3 | 2 | 4 | 3 | 1 | 2 | 2 | 1 | 1 | 4 | 1 | 1 |
| 640 | 3 | 3 | 4 | 3 | 1 | 3 | 4 | 4 | 3 | 4 | 1 | 1 |
| 660 | 3 | 1 | 1 | 3 | 1 | 3 | 1 | 2 | 1 | 4 | 1 | 1 |
| 670 | 2 | 3 | 3 | 3 | 1 | 1 | 4 | 4 | 1 | 4 | 1 | 1 |
| 680 | 2 | 3 | 2 | 2 | 1 | 3 | 1 | 1 | 2 | 4 | 1 | 1 |
| 690 | 3 | 1 | 4 | 2 | 1 | 3 | 4 | 4 | 2 | 4 | 1 | 1 |
| 710 | 3 | 3 | 4 | 3 | 1 | 3 | 4 | 4 | 1 | 4 | 1 | 1 |
| 720 | 3 | 3 | 4 | 3 | 1 | 3 | 4 | 4 | 3 | 4 | 1 | 1 |
| 730 | 3 | 3 | 4 | 3 | 1 | 3 | 1 | 1 | 1 | 4 | 1 | 1 |
| 830 | 3 | 3 | 2 | 3 | 1 | 3 | 4 | 4 | 1 | 4 | 1 | 1 |
| 850 | 3 | 3 | 4 | 3 | 1 | 3 | 4 | 4 | 3 | 4 | 1 | 1 |
| 999 | 3 | 3 | 4 | 3 | 1 | 3 | 4 | 4 | 3 | 4 | 1 | 1 |

**Table 4.7.1.6 b13 values by location class for equation {4.7.1.1} in the IE variant.**

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Location Class** | **Species Code** | | | | | |
| **WP** | **WL, WB** | **DF** | **GF** | **WH** | **RC** |
| 1 | -0.000439 | -0.00031 | -0.000252 | -0.000274 | -0.000225 | 0 |
| 2 | -0.000004 | -0.000566 | -0.000373 | -0.000089 | -0.000216 | 0 |
| 3 | 0 | 0 | -0.000502 | -0.000643 | -0.000429 | 0 |
| 4 | 0 | 0 | -0.000572 | 0 | 0 | 0 |
| **Location Class** | **Species Code** | | | | | |
| **LP** | **ES** | **AF, LL** | **PP** | **MH, OS** | **LM, PY** |
| 1 | -0.00126 | -0.000132 | -0.000283 | -0.000406 | -0.000484 | -0.0006538 |
| 2 | -0.002168 | -0.000294 | -0.00078 | -0.000437 | -0.000306 | 0 |
| 3 | -0.001889 | -0.000427 | 0 | -0.00014 | 0 | 0 |
| 4 | -0.000867 | 0 | 0 | 0 | 0 | 0 |

**Table 4.7.1.7 Location class by species and location code for b13 in equation {4.7.1.1} in the IE variant.**

| **Location Code** | **Species Code** | | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL, WB** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF, LL** | **PP** | **MH, OS** | **LM, PY** |
| 103 - Bitterroot | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 104 - Idaho Panhandle | 2 | 2 | 4 | 1 | 3 | 1 | 1 | 1 | 2 | 2 | 2 | 1 |
| 105 - Clearwater | 2 | 1 | 2 | 1 | 1 | 2 | 2 | 2 | 2 | 2 | 1 | 1 |
| 106 - Coeur d’Alene | 2 | 1 | 2 | 1 | 2 | 1 | 2 | 1 | 1 | 2 | 1 | 1 |
| 110 - Flathead | 1 | 1 | 3 | 2 | 1 | 1 | 1 | 1 | 1 | 3 | 1 | 1 |
| 113 - Kaniksu | 2 | 1 | 1 | 2 | 1 | 1 | 2 | 3 | 1 | 3 | 1 | 1 |
| 114 - Kootenai | 1 | 1 | 4 | 3 | 1 | 2 | 3 | 2 | 2 | 2 | 1 | 1 |
| 116 - Lolo | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 1 |
| 117 - Nezperce | 1 | 1 | 1 | 2 | 1 | 2 | 4 | 1 | 1 | 1 | 1 | 1 |
| 118 - St. Joe | 2 | 2 | 4 | 1 | 3 | 1 | 1 | 1 | 2 | 2 | 2 | 1 |
| 621 - Colville | 2 | 1 | 2 | 1 | 3 | 1 | 1 | 1 | 2 | 2 | 1 | 1 |

**Table 4.7.1.8 *HAB* values by habitat class for equation {4.7.1.1} in the IE variant.\***

|  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Habitat**  **Class** | **Species Code** | | | | | | | | | | |
| **WP** | **WL, WB** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF, LL** | **PP** | **MH, OS** |
| 1 | 1.15584 | 0.38335 | 0.4778 | 0.66755 | 0.45264 | 1.61452 | 0.77399 | -0.58842 | -0.96389 | 1.16233 | -1.68033 |
| 2 | 1.05635 | 0.51291 | 0.15228 | 0.60454 | 0 | 1.31772 | 0.67828 | -0.21235 | -0.72415 | 0.73408 | -1.52111 |
| 3 | 0 | 0.45377 | 0.29764 | 0 | 0 | 0 | 0.64451 | -0.71629 | -0.57308 | 0.51417 | 0 |
| 4 | 0 | 0.71322 | 0 | 0 | 0 | 0 | 0.37945 | -0.53954 | -0.82218 | 0 | 0 |
| 5 | 0 | 0.26835 | 0 | 0 | 0 | 0 | 0.54337 | 0 | -1.24093 | 0 | 0 |
| 6 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | -1.10746 | 0 | 0 |

\**HAB* values for LM and PY are equal to 0.

**Table 4.7.1.9 Habitat class by species and original NI habitat code for *HAB* values in equation {4.7.1.1} in the IE variant. See tables 11.1.1 and 11.1.2 for conversion from currently recognized habitat and plant association codes to the original NI habitat codes.**

| **Habitat Code** | **Species Code** | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL, WB** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF, LL** | **PP** | **MH, OS** |
| 130 | 2 | 5 | 3 | 2 | 1 | 2 | 5 | 4 | 6 | 1 | 2 |
| 170 | 2 | 5 | 3 | 2 | 1 | 2 | 5 | 4 | 6 | 1 | 2 |
| 250 | 2 | 5 | 3 | 2 | 1 | 2 | 5 | 4 | 6 | 2 | 2 |
| 260 | 2 | 5 | 3 | 2 | 1 | 2 | 5 | 4 | 6 | 3 | 2 |
| 280 | 2 | 5 | 3 | 2 | 1 | 2 | 1 | 4 | 6 | 3 | 2 |
| 290 | 2 | 5 | 3 | 2 | 1 | 2 | 2 | 4 | 6 | 2 | 2 |
| 310 | 2 | 5 | 3 | 2 | 1 | 2 | 1 | 4 | 6 | 2 | 2 |
| 320 | 2 | 5 | 1 | 2 | 1 | 2 | 5 | 4 | 6 | 3 | 2 |
| 330 | 2 | 5 | 3 | 2 | 1 | 2 | 5 | 4 | 6 | 3 | 2 |
| 420 | 2 | 1 | 3 | 2 | 1 | 2 | 5 | 4 | 6 | 3 | 2 |
| 470 | 2 | 1 | 3 | 2 | 1 | 2 | 5 | 4 | 6 | 3 | 2 |
| 510 | 2 | 2 | 1 | 2 | 1 | 2 | 2 | 1 | 6 | 2 | 2 |
| 520 | 1 | 1 | 1 | 1 | 1 | 2 | 2 | 1 | 1 | 2 | 2 |
| 530 | 1 | 2 | 1 | 2 | 1 | 2 | 3 | 4 | 2 | 2 | 2 |
| 540 | 1 | 2 | 1 | 2 | 1 | 1 | 3 | 2 | 3 | 3 | 2 |
| 550 | 1 | 2 | 1 | 2 | 1 | 1 | 3 | 2 | 3 | 3 | 2 |
| 570 | 1 | 3 | 1 | 2 | 1 | 2 | 3 | 4 | 4 | 3 | 2 |
| 610 | 1 | 3 | 1 | 2 | 1 | 2 | 3 | 2 | 3 | 3 | 2 |
| 620 | 1 | 2 | 1 | 2 | 1 | 2 | 3 | 1 | 1 | 2 | 2 |
| 640 | 2 | 5 | 3 | 2 | 1 | 2 | 4 | 4 | 6 | 3 | 2 |
| 660 | 2 | 2 | 2 | 2 | 1 | 2 | 4 | 4 | 6 | 3 | 2 |
| 670 | 1 | 1 | 3 | 1 | 1 | 2 | 3 | 4 | 6 | 3 | 1 |
| 680 | 1 | 1 | 3 | 2 | 1 | 2 | 4 | 4 | 6 | 3 | 2 |
| 690 | 2 | 1 | 3 | 2 | 1 | 2 | 5 | 4 | 6 | 3 | 2 |
| 710 | 2 | 5 | 3 | 1 | 1 | 2 | 5 | 4 | 6 | 3 | 2 |
| 720 | 2 | 5 | 3 | 2 | 1 | 2 | 5 | 4 | 6 | 3 | 2 |
| 730 | 2 | 4 | 3 | 2 | 1 | 2 | 4 | 4 | 1 | 3 | 2 |
| 830 | 2 | 5 | 2 | 2 | 1 | 2 | 4 | 3 | 5 | 3 | 2 |
| 850 | 2 | 5 | 3 | 2 | 1 | 2 | 5 | 4 | 5 | 3 | 2 |
| 999 | 2 | 5 | 3 | 2 | 1 | 2 | 5 | 4 | 6 | 3 | 2 |

Diameter growth for singleleaf pinyon and Rocky Mountain juniper for trees of all sizes is predicted using the small-tree diameter growth equations shown in section 4.6.2.

Large-tree diameter growth for aspen, Rocky mountain maple, and paper birch is predicted using the aspen equation from the UT variant identified in equation set {4.7.1.2}. Diameter growth is predicted from a potential diameter growth equation that is modified by stand density, average tree size and site. While not shown here, this diameter growth estimate is eventually converted to the *DDS* scale.

{4.7.1.2}Used for quaking aspen, Rocky mountain maple, and paper birch

*POTGR* = (0.4755 – 0.0000038336 \* *DBH*^4.1488) + (0.0451 \* *CR* \* *DBH* ^.67266)

*MOD* = 1.0 – exp (-*FOFR* \* *GOFAD* \* ((310-*BA*)/310)^0.5)

*FOFR* = 1.07528 \* (1.0 – exp (–1.89022 \* *DBH* / *QMD*))

*GOFAD* = 0.21963 \* (*QMD* + 1.0)^0.73355

*PREDGR* = *POTGR* \* *MOD* \* (.48630 + 0.01258 \* *SI*)

where:

*POTGR* is potential diameter growth

*DBH* is tree diameter at breast height

*CR* is crown ratio expressed as a percent divided by 10

*MOD* is a modifier based on tree diameter and stand density

*FOFR* is the relative density modifier

*GOFAD* is the average diameter modifier

*BA* is total stand basal area

*QMD* is stand quadratic mean diameter

*PREDGR* is predicted diameter growth

*SI* is species site index

Large-tree diameter growth for cottonwood and other hardwood is predicted using equations from the CR variant identified in equation set {4.7.1.3}. Diameter at the end of the growth cycle is predicted first. Then diameter growth is calculated as the difference between the diameters at the beginning of the cycle and end of the cycle, adjusted for bark ratio. While not shown here, this diameter growth estimate is eventually converted to the *DDS* scale.

{4.7.1.3} Used for cottonwood and other hardwood

*DF* = 0.24506 + 1.01291 \* *DBH* – 0.00084659 \* *BA* + 0.00631 \* *SI*

*DG* = (*DF* – *DBH*) \* *BRATIO*

where:

*DF* is tree diameter at breast height at the end of the cycle

*DG* is tree diameter growth

*DBH* is tree diameter at breast height

*BA* is total stand basal area

*SI* is species site index

*BRATIO* is species-specific bark ratio

*DDS* is the predicted periodic change in squared inside-bark diameter

### 4.7.2 Large Tree Height Growth

In the IE variant, large tree height growth is estimated using species-specific equations. Western white pine, western larch, Douglas-fir, grand fir, western hemlock, western redcedar, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, mountain hemlock, whitebark pine, subalpine larch and other softwood all use a single equation form as shown in equation {4.7.2.1}.

{4.7.2.1} *HTG* = exp(*HAB* + b0 + (b1 \* *HT^*2) + (b2 \* ln(*DBH*)) + (b3 \* ln(*HT*)) + (b4 \* ln(*DG*))) + .4809

where:

*HTG* is estimated height growth for the cycle

*HAB* is a plant association code dependent intercept shown in table 4.7.2.2

*HT* is tree height at the beginning of the cycle

*DBH* is tree diameter at breast height at the beginning of the cycle

*DG* is estimated 10-year diameter growth for the cycle

b0, b2, b3  are species-specific coefficients shown in table 4.7.2.1

b1, b4 are habitat-dependent coefficients shown in table 4.7.2.2

**Table 4.7.2.1 Coefficients (b0, b2 and b3) for the height-growth equation in the IE variant.**

|  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Coefficient** | **Species Code** | | | | | | | | | | |
| **WP** | **WL, WB** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF, LL** | **PP** | **MH, OS** |
| b0 | -0.5342 | 0.1433 | 0.1641 | -0.6458 | -0.6959 | -0.9941 | -0.6004 | 0.2089 | -0.5478 | 0.7316 | -0.9941 |
| b2 | -0.04935 | -0.3899 | -0.4574 | -0.09775 | -0.1555 | -0.1219 | -0.2454 | -0.5720 | -0.1997 | -0.5657 | -0.1219 |
| b3 | 0.23315 | 0.23315 | 0.23315 | 0.23315 | 0.23315 | 0.23315 | 0.23315 | 0.23315 | 0.23315 | 0.23315 | 0.23315 |

**Table 4.7.2.2 Coefficients (b1, b4, and *HAB*) by habitat code (Appendix A) for the height-growth equation in the IE variant.**

| **Habitat Codes** | **b1** | **b4** | ***HAB*** |
| --- | --- | --- | --- |
| 10, 100, 110, 130, 140, 160, 170, 180, 190, 210, 220, 230, 460, 630, 660, 700, 730, 770, 790, 800, 810, 820, 830, 840, 850, 860, 870, 890, 900, 930, 940, 999, CDG311, CEF211, CES412, CLS521, CAG112 | -0.000134 | 0.62144 | 2.03035 |
| 200, 250, 260, 280, 290, 310, 320, 330, 340, 350, 360, 370, 380, 430, 910, CDG131, CDS632, CDS633, CDS637, CDS715, CDS716, CDS813, CDS814, CDG123 | -0.0000381 | 1.02372 | 1.72222 |
| 400, 410, 420, 440, 470, 480, CEM211 | -0.0000372 | 0.85493 | 1.19728 |
| 450, 505, 506, 510, 515, 590, 620, 635, 640, 650, 670, 675, 680, 685, 740, 920, CEF421, CEF422, CEF423, CES210, CES211, CES422, CWS421, CWS821 | -0.0000261 | 0.75756 | 1.81759 |
| 500, 516, 520, 529, CWF411, CWS214, CWS422 | -0.000052 | 0.46238 | 2.14781 |
| 501, 530, 545, 555, CCF221, CCF222, CCS311 | -0.0000161 | 0.49643 | 1.76998 |
| 502, 540, 550, 560, 565, 570, 575, 610, CHF311, CHF312, CHF422, CHF521, CCS211, CHS411 | -0.0000363 | 0.37042 | 2.21104 |
| 579, 600, 690, 701, 710, 720, 750, 780, 925, 950, CEF111, CEG311, CES312, CES313, CHS711 | -0.0000446 | 0.34003 | 1.7409 |

Limber pine and quaking aspen use Johnson’s SBB (1949) method (Schreuder and Hafley, 1977). Height increment, using this method, is obtained by subtracting current height from the estimated future height. If tree diameter is greater than (C1 + 0.1), or tree height is greater than (C2 + 4.5), where C1 and C2 are shown in table 4.7.2.3, parameters of the SBB distribution cannot be calculated and height growth is set to 0.1. Otherwise, the SBB distribution “*Z*” parameter is estimated using equation {4.7.2.2}.

{4.7.2.2} *Z* = [C4 + C6 \* *FBY2* – C7 \* (C3 + C5 \* *FBY1*)] \* (1 – C72)^-0.5

*FBY1* = ln[*Y1*/(1 - *Y1*)]

*FBY2* = ln[*Y2*/(1 - *Y2*)]

*Y1* = (*DBH* – 0.1) / C1

*Y2* = (*HT* – 4.5) / C2

where:

*HT* is tree height at the beginning of the cycle

*DBH* is tree diameter at breast height at the beginning of the cycle (bounded to be <u>></u> 0.2 inch)

C1 – C7 are coefficients based on species and crown ratio class shown in table 4.7.2.3

The equation for limber pine is from the Tetons (TT) variant, and is also used for Pacific Yew. The equation for quaking aspen is from the Utah (UT) variant, and is also used for cottonwood species, Rocky Mountain Maple, paper birch, and the other hardwood category.

Quaking aspen, cottonwood species, Rocky Mountain maple, paper birch, and other hardwood use equation {4.7.2.3} to eliminate known bias.

{4.7.2.3} Z = Z + (0.1 – 0.10273 \* *Z* + 0.00273 \* *Z^*2) bounded *Z* <u>></u> 0

For limber pine, Pacific yew, quaking aspen, cottonwood species, Rocky Mountain Maple, paper birch, and other hardwood, if the *Z* value is 2.0 or less, it is adjusted for all younger aged trees using equation {4.7.2.4}. This adjustment is done for trees with an estimated age greater than 10 years and less than 40 years, and a diameter less than 9.0 inches. After this calculation, the value of *Z* is bounded to be 2.0 or less for trees meeting these criteria.

{4.7.2.4} *Z* = *Z* \* (0.3564 \* *DG*) \* CLOSUR \* *K*

*CCF* <u>></u> 100:*CLOSUR* = *PCT* / 100

*CCF* < 100:*CLOSUR* = 1

*CR* <u>></u> 75%:*K* = 1.1

*CR* < 75%:*K* = 1.0

where:

*DG* is diameter growth for the cycle

*PCT* is the subject tree’s percentile in the basal area distribution of the stand

*CCF* is stand crown competition factor

*CR* is tree crown ratio expressed as a percent

Estimated height 10 years into the future is calculated using equation {4.7.2.5}, and finally, 10-year height growth is calculated by subtraction using equation {4.7.2.6} and adjusted to the cycle length.

{4.7.2.5} *H10* = [(*PSI* / (1 + *PSI*)) \* C2] + 4.5

*PSI* = C8 \* [(*D10* – 0.1) / (0.1 + C1– *D10*)]^C9 \* [exp(*K*)]

*K* = *Z* \* [(1 - C7^2)^(0.5 / C6)]

{4.7.2.6}Height Growth equation

*H10* > *HT*: *HTG* = *H10* – *HT*

*H10* <u><</u> *HT*: *HTG* = 0.1

where:

*H10* is estimated height of the tree in ten years

*HT* is tree height at the beginning of the cycle

*D10* is estimated diameter at breast height of the tree in ten years

*HTG* is estimated height growth

C1 – C9 are coefficients based on species and crown ratio class shown in table 4.7.2.3

**Table 4.7.2.3 Coefficients in the large tree height growth model, by crown ratio, for species using the Johnson’s SBB height distribution in the IE variant.**

| **Coefficient\*** | **LM, PY** | **AS, CO, MM, PB, OH** |
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

Singleleaf pinyon and Rocky Mountain juniper use the same equations described in the small tree height growth model (see section 4.6.1) to calculate height growth for large trees.

# 5.0 Mortality Model

All species in the IE variant use the Prognosis-type mortality model (Wykoff and others 1982 and Hamilton 1986) that is described in detail in section 7.3.1 of Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002, abbreviated EFVS). This model independently calculates two mortality rates and then weights them to form the final mortality rate applied to an individual tree record.

The first mortality rate estimate, *RA*, predicts individual tree mortality based on habitat type, species, diameter, diameter increment, estimated potential diameter increment, stand basal area, and a trees’ diameter relative to the average stand diameter. The equation used to calculate the first mortality rate for all species is shown in equation set {5.0.1}.

{5.0.1} *RA* = [1 / (1 + exp(*X*))] \* *RADJ*

*X* = (b0 + 2.76253 + 0.22231 \* √*DBH* + -0.0460508 \* √*BA* + 11.2007 \* *G* + 0.246301 \* *RDBH* + ((-0.55442 + 6.07129 \* *G*) / *DBH*))

Bounded -70 <u><</u> X <u><</u> 70

where:

*RA* is the estimated annual mortality rate

*RADJ* is a factor based on Reineke’s (1933) Stand Density Index that accounts for expected differences in mortality rates on different habitat types and National Forests where:

for *DBH* > 5.0”: *RADJ* = (1 – ( (0.20 + (0.05 \* *I*)) /20 + 1)^-1.605) / 0.06821

for *DBH* <u><</u> 5.0”: *RADJ* = (1 – ( (0.20 + (0.05 \* *I*)) + 1)^-1.605) / 0.86610

*DBH* is tree diameter at breast height

*BA* is total stand basal area

*RDBH* is the ratio of tree *DBH* to the arithmetic mean stand d.b.h.

*DG* is periodic annual d.b.h. increment for the previous growth period

*G* is periodic annual d.b.h. increment for the previous growth period adjusted for Differences in potential annual d.b.h. increment indexed by habitat type and National Forest where:

for *DBH* > 5.0”: *G* = 0.90 / (0.20 + (0.05 \* *I*)) \* *DG*

for *DBH* <u><</u> 5.0”: *G* = 2.50 / (0.20 + (0.05 \* *I*)) \* *DG*

*I* is a diameter growth index value determined by habitat type and location code

for *I* values of trees with *DBH* > 5.0”, see table 5.0.2

for *I* values of trees with *DBH* <u><</u> 5.0”, see table 5.0.3

b0 is a species-specific coefficient shown in table 5.0.1

**Table 5.0.1 b0 coefficients used in the mortality equation set {5.0.1} in the IE variant.**

| **Species Code** | **b0** |
| --- | --- |
| WP | 0 |
| WL | -0.17603 |
| DF | 0.317888 |
| GF | 0.317888 |
| WH | 0.607725 |
| RC | 1.57976 |
| LP | -0.12057 |
| ES | 0.94019 |
| AF | 0.2118 |
| PP | 0.2118 |
| MH | 0 |
| WB | -0.17603 |
| LM | 0 |
| LL | 0.2118 |
| PI | 0 |
| RM | 0 |
| PY | 0 |
| AS | 0 |
| CO | 0 |
| MM | 0 |
| PB | 0 |
| OH | 0 |
| OS | 0 |

**Table 5.0.2 *I* values for trees with DBH > 5.0” used in equation set {5.0.1} in the IE variant.**

| **Habitat Code\*** | **National Forest by Location Code** | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **103** | **104** | **105** | **106** | **110** | **113** | **114** | **116** | **117** | **118** | **621** |
| 130 | 7 | 15 | 14 | 12 | 9 | 13 | 9 | 7 | 15 | 15 | 10 |
| 170 | 6 | 15 | 14 | 12 | 9 | 12 | 9 | 7 | 15 | 15 | 10 |
| 250 | 6 | 15 | 14 | 12 | 9 | 12 | 9 | 7 | 15 | 15 | 10 |
| 260 | 6 | 15 | 14 | 12 | 9 | 12 | 9 | 7 | 15 | 15 | 10 |
| 280 | 6 | 14 | 13 | 11 | 9 | 12 | 8 | 6 | 14 | 14 | 9 |
| 290 | 6 | 14 | 13 | 11 | 9 | 12 | 9 | 7 | 14 | 14 | 9 |
| 310 | 5 | 12 | 11 | 10 | 7 | 10 | 7 | 5 | 9 | 12 | 8 |
| 320 | 6 | 14 | 14 | 10 | 8 | 12 | 8 | 6 | 13 | 14 | 9 |
| 330 | 5 | 13 | 12 | 10 | 8 | 11 | 7 | 7 | 13 | 13 | 8 |
| 420 | 6 | 14 | 14 | 11 | 8 | 11 | 8 | 6 | 14 | 14 | 9 |
| 470 | 6 | 14 | 14 | 11 | 9 | 11 | 8 | 6 | 14 | 14 | 10 |
| 510 | 6 | 15 | 14 | 12 | 9 | 12 | 8 | 7 | 13 | 15 | 10 |
| 520 | 6 | 15 | 14 | 12 | 9 | 12 | 9 | 7 | 14 | 15 | 10 |
| 530 | 8 | 17 | 17 | 14 | 11 | 15 | 11 | 9 | 18 | 17 | 12 |
| 540 | 7 | 15 | 14 | 14 | 10 | 13 | 10 | 9 | 14 | 15 | 11 |
| 550 | 7 | 15 | 14 | 14 | 10 | 13 | 10 | 8 | 14 | 15 | 11 |
| 570 | 7 | 16 | 15 | 13 | 10 | 14 | 10 | 9 | 14 | 16 | 11 |
| 610 | 7 | 15 | 15 | 13 | 10 | 13 | 10 | 8 | 14 | 15 | 11 |
| 620 | 7 | 15 | 15 | 13 | 11 | 13 | 10 | 8 | 14 | 15 | 11 |
| 640 | 5 | 11 | 11 | 9 | 7 | 9 | 7 | 5 | 10 | 11 | 8 |
| 660 | 3 | 16 | 9 | 6 | 5 | 8 | 5 | 3 | 9 | 10 | 6 |
| 670 | 4 | 11 | 10 | 8 | 6 | 9 | 6 | 5 | 9 | 11 | 7 |
| 680 | 3 | 9 | 8 | 7 | 4 | 7 | 5 | 4 | 8 | 9 | 5 |
| 690 | 4 | 12 | 11 | 9 | 7 | 10 | 7 | 5 | 11 | 12 | 7 |
| 710 | 4 | 12 | 11 | 10 | 7 | 10 | 7 | 5 | 11 | 12 | 7 |
| 720 | 6 | 15 | 15 | 12 | 9 | 12 | 9 | 7 | 15 | 15 | 10 |
| 730 | 5 | 12 | 11 | 10 | 8 | 10 | 8 | 5 | 9 | 12 | 8 |
| 830 | 1 | 7 | 5 | 4 | 3 | 4 | 3 | 2 | 6 | 7 | 6 |
| 850 | 1 | 10 | 10 | 8 | 6 | 8 | 6 | 4 | 8 | 10 | 7 |
| 999 | 6 | 15 | 15 | 12 | 9 | 12 | 9 | 7 | 15 | 15 | 10 |

\*Habitat code shown here is the Original NI Habitat Type shown in Appendix A table 11.1.1

**Table 5.0.3 *I* values for trees with DBH < 5.0” used in equation set {5.0.1} in the IE variant.**

| **Habitat Code\*** | **National Forest by Location Code** | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **103** | **104** | **105** | **106** | **110** | **113** | **114** | **116** | **117** | **118** | **621** |
| 130 | 30 | 50 | 45 | 41 | 38 | 41 | 38 | 31 | 45 | 50 | 38 |
| 170 | 29 | 49 | 45 | 41 | 37 | 41 | 37 | 29 | 45 | 49 | 37 |
| 250 | 29 | 49 | 45 | 41 | 37 | 41 | 37 | 30 | 45 | 49 | 37 |
| 260 | 29 | 49 | 45 | 41 | 37 | 41 | 37 | 31 | 45 | 49 | 37 |
| 280 | 28 | 48 | 44 | 40 | 36 | 40 | 37 | 29 | 44 | 48 | 36 |
| 290 | 28 | 48 | 44 | 40 | 36 | 40 | 37 | 30 | 44 | 48 | 37 |
| 310 | 27 | 47 | 43 | 39 | 36 | 39 | 37 | 29 | 43 | 47 | 37 |
| 320 | 31 | 52 | 48 | 42 | 38 | 45 | 41 | 33 | 48 | 52 | 40 |
| 330 | 27 | 46 | 43 | 39 | 36 | 37 | 33 | 31 | 41 | 46 | 35 |
| 420 | 27 | 47 | 43 | 39 | 35 | 38 | 37 | 30 | 42 | 47 | 36 |
| 470 | 28 | 48 | 44 | 40 | 37 | 39 | 37 | 29 | 43 | 48 | 37 |
| 510 | 31 | 53 | 49 | 44 | 41 | 43 | 41 | 34 | 47 | 53 | 41 |
| 520 | 32 | 54 | 50 | 45 | 41 | 44 | 41 | 34 | 48 | 54 | 41 |
| 530 | 32 | 54 | 50 | 45 | 41 | 46 | 42 | 35 | 50 | 54 | 42 |
| 540 | 31 | 52 | 49 | 45 | 40 | 43 | 39 | 34 | 47 | 52 | 40 |
| 550 | 31 | 52 | 49 | 45 | 40 | 43 | 39 | 34 | 47 | 52 | 40 |
| 570 | 32 | 54 | 49 | 45 | 41 | 45 | 41 | 35 | 46 | 54 | 41 |
| 610 | 31 | 50 | 47 | 43 | 40 | 43 | 40 | 33 | 44 | 50 | 40 |
| 620 | 31 | 51 | 47 | 44 | 40 | 43 | 40 | 33 | 44 | 51 | 40 |
| 640 | 25 | 41 | 39 | 36 | 33 | 35 | 33 | 27 | 36 | 41 | 33 |
| 660 | 23 | 39 | 36 | 33 | 32 | 33 | 32 | 23 | 34 | 39 | 30 |
| 670 | 24 | 44 | 40 | 36 | 32 | 35 | 33 | 26 | 37 | 44 | 33 |
| 680 | 23 | 43 | 39 | 36 | 32 | 35 | 33 | 26 | 37 | 43 | 31 |
| 690 | 24 | 44 | 40 | 37 | 34 | 36 | 34 | 27 | 38 | 44 | 32 |
| 710 | 24 | 44 | 39 | 38 | 33 | 36 | 33 | 26 | 37 | 44 | 31 |
| 720 | 27 | 50 | 45 | 41 | 38 | 41 | 38 | 31 | 43 | 50 | 36 |
| 730 | 26 | 53 | 41 | 38 | 35 | 37 | 35 | 26 | 34 | 53 | 34 |
| 830 | 18 | 36 | 33 | 30 | 26 | 30 | 28 | 19 | 30 | 36 | 32 |
| 850 | 16 | 37 | 34 | 31 | 28 | 32 | 32 | 23 | 33 | 37 | 27 |
| 999 | 27 | 50 | 45 | 41 | 38 | 41 | 38 | 31 | 43 | 50 | 36 |

\*Habitat code shown here is the Original NI Habitat Type shown in Appendix A, table 11.1.1

The second mortality rate estimate, *RB*, is dependent on the proximity of stand basal area to the site maximum (see section 3.5 of this variant overview), and the rate of basal area increment. As stand basal area approaches the maximum for the site, *RB* approaches 1. The calculation of *RB* is described in section 7.3.1.2 of EFVS (Dixon 2002) and is not shown here.

The mortality rate applied to a tree record is a weighted average of *RA* and *RB* with the weight also dependent on the proximity of stand basal area to the maximum for the site. This is also described in section 7.3.1.3 of EFVS (Dixon 2002), and is not shown here. The combined estimate is adjusted to the length of the cycle using a compound interest formula as shown in equation {5.0.2}.

{5.0.2} *RT* = 1 – (1 – *RC*)*^Y*

where:

*RT* is the mortality rate applied to an individual tree record for the growth period

*RC* is the combined estimate of the annual mortality rate for the tree record

*Y* is length of the current projection cycle in years

For singleleaf pinyon and Rocky Mountain juniper equation {5.0.2} is modified by 60%; for limber pine, Pacific yew, quaking aspen, cottonwood species, Rocky Mountain maple, paper birch, and other softwood equation {5.0.2} is modified by 40%.

# 6.0 Regeneration

The IE variant contains a full establishment model which is explained in section 5.4.2 of the Essential FVS Users Guide (Dixon 2002). In short, the full establishment model automatically adds regeneration following significant stand disturbances and adds ingrowth periodically during the simulation. Users may also input regeneration and ingrowth into simulations manually through the establishment model keywords as explained in section 5.4.3 of the Essential FVS Users Guide (Dixon 2002). The following description applies to how sprouting occurs and entering regeneration and ingrowth through keywords.

The regeneration model is used to simulate stand establishment from bare ground, or to bring seedlings and sprouts into a simulation with existing trees. In the IE variant, sprouts are automatically added to the simulation following harvest or burning of known sprouting species (see table 6.0.1 for sprouting species).

**Table 6.0.1 Regeneration parameters by species in the IE variant.**

| **Species Code** | **Sprouting Species** | **Minimum Bud Width (in)** | **Minimum Tree Height (ft)** | **Maximum Tree Height (ft)** |
| --- | --- | --- | --- | --- |
| WP | No | 0.4 | 1.0 | 23.0 |
| WL | No | 0.3 | 1.0 | 27.0 |
| DF | No | 0.3 | 1.0 | 21.0 |
| GF | No | 0.3 | 0.5 | 21.0 |
| WH | No | 0.2 | 0.5 | 22.0 |
| RC | No | 0.2 | 0.5 | 20.0 |
| LP | No | 0.4 | 1.0 | 24.0 |
| ES | No | 0.3 | 0.5 | 18.0 |
| AF | No | 0.3 | 0.5 | 18.0 |
| PP | No | 0.5 | 1.0 | 17.0 |
| MH | No | 0.2 | 0.5 | 22.0 |
| WB | No | 0.3 | 1.0 | 27.0 |
| LM | No | 0.3 | 1.0 | 27.0 |
| LL | No | 0.3 | 0.5 | 18.0 |
| PI | No | 0.4 | 0.5 | 6.0 |
| RM | No | 0.3 | 0.5 | 6.0 |
| PY | Yes | 0.3 | 1.0 | 27.0 |
| AS | Yes | 0.2 | 6.0 | 16.0 |
| CO | Yes | 0.2 | 3.0 | 16.0 |
| MM | Yes | 0.2 | 6.0 | 16.0 |
| PB | Yes | 0.2 | 6.0 | 16.0 |
| OH | No | 0.2 | 3.0 | 16.0 |
| OS | No | 0.2 | 0.5 | 22.0 |

One sprouting record is created for Pacific yew, Mountain Mahoghany, and paper birch; two sprouting records are created for quaking aspen, and logic rule {6.0.1} is used to determine the number of sprouting records for root suckering cottonwood species. The trees-per-acre represented by each sprout record is determined using the general sprouting probability equation {6.0.2}. See table 6.0.2 for species-specific sprouting probabilities, number of sprout records created, and reference information.

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

**Table 6.0.2 Sprouting algorithm parameters for sprouting species in the IE variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **Sprouting Probability** | **Number of Sprout Records** | **Source** |
| PY | 0.4 | 1 | Minore 1996  Ag. Handbook 654 |
| AS | {6.0.3} | 2 | Keyser 2001 |
| CO | 0.9 | {6.0.1} | Gom and Rood 2000  Steinberg 2001 |
| MM | 0.7 | 1 | Anderson 2001 |
| PB | 0.7 | 1 | Hutnik and Cunningham 1965  Bjorkbom 1972 |

Regeneration of seedlings may be specified by using PLANT or NATURAL keywords. Height of the seedlings is estimated in two steps. First, the height is estimated when a tree is 5 years old (or the end of the cycle – whichever comes first) by using the small-tree height growth equations found in section 4.6.1. Users may override this value by entering a height in field 6 of the PLANT or NATURAL keywords; however the height entered in field 6 is not subject to minimum height restrictions and seedlings as small as 0.05 feet may be established. The second step also uses the equations in section 4.6.1, which grow the trees in height from the point five years after establishment to the end of the cycle.

Seedlings and sprouts are passed to the main FVS model at the end of the growth cycle in which regeneration is established. Unless noted above, seedlings being passed are subject to minimum and maximum height constraints and a minimum budwidth constraint shown in table 6.0.1. After seedling height is estimated, diameter growth is estimated using equations described in section 4.6.2. Crown ratios on newly established trees are estimated as described in section 4.3.1.

Regenerated trees and sprouts can be identified in the treelist output file with tree identification numbers beginning with the letters “ES”.

# 7.0 Volume

Volume is calculated for four merchantability standards: total stem cubic feet, merchantable stem cubic feet, sawlog stem cubic feet, and merchantable stem board feet (Scribner Decimal C). Sawlog cubic foot volume is only reported when the FIAVBC keyword is in use. Volume estimation is based on methods contained in the National Volume Estimator Library maintained by the Forest Products Measurements group in the Forest Management Service Center (Volume Estimator Library Equations 2009). The default volume merchantability standards and equation numbers for the IE variant are shown in tables 7.0.1-7.0.3.

Volume computation methods used by the Forest Inventory and Analysis (FIA) program can be requested with the FIAVBC keyword. This keyword encompasses the National Scale Volume and Biomass estimators (NSVB; Westfall et al. 2024) and regional equations used for woodland species (Burrill et al. 2024). More information about the FIAVBC keyword and required input variables can be found in the Essential FVS Guide (Dixon 2002).

**Table 7.0.1 Default volume merchantability standards for the IE variant.**

|  |  |  |
| --- | --- | --- |
| **Merchantable Cubic Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | LP | All Other Species |
| All location codes | 6.0 / 4.5 inches | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| **Merchantable Board Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | LP | All Other Species |
| All location codes | 6.0 / 4.5 inches | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |

Note: Board foot volume is not calculated for cottonwood species and paper birch when using the default equations.

**Table 7.0.2 Volume equation defaults for each species, at specific location codes, with model name.**

| **Common Name** | **Location Code** | **Equation Number** | **Reference** |
| --- | --- | --- | --- |
| western white pine | All | I00FW2W119 | Flewelling's 2-Point Profile Model |
| western larch | All Region 1 codes | I00FW2W073 | Flewelling's 2-Point Profile Model |
| western larch | 621 | I11FW2W073 | Flewelling's 2-Point Profile Model |
| Douglas-fir | All Region 1 codes | I00FW2W202 | Flewelling's 2-Point Profile Model |
| Douglas-fir | 621 | I11FW2W202 | Flewelling's 2-Point Profile Model |
| grand fir | All Region 1 codes | I00FW2W017 | Flewelling's 2-Point Profile Model |
| grand fir | 621 | I11FW2W017 | Flewelling's 2-Point Profile Model |
| western hemlock | All Region 1 codes | I00FW2W260 | Flewelling's 2-Point Profile Model |
| western hemlock | 621 | I11FW2W017 | Flewelling's 2-Point Profile Model |
| western redcedar | All Region 1 codes | I00FW2W242 | Flewelling's 2-Point Profile Model |
| western redcedar | 621 | I11FW2W242 | Flewelling's 2-Point Profile Model |
| lodgepole pine | All Region 1 codes | I00FW2W108 | Flewelling's 2-Point Profile Model |
| lodgepole pine | 621 | I11FW2W108 | Flewelling's 2-Point Profile Model |
| Engelmann spruce | All Region 1 codes | I00FW2W093 | Flewelling's 2-Point Profile Model |
| Engelmann spruce | 621 | I13FW2W093 | Flewelling's 2-Point Profile Model |
| subalpine fir | All Region 1 codes | I00FW2W019 | Flewelling's 2-Point Profile Model |
| subalpine fir | 621 | I11FW2W202 | Flewelling's 2-Point Profile Model |
| ponderosa pine | All Region 1 codes | I00FW2W122 | Flewelling's 2-Point Profile Model |
| ponderosa pine | 621 | I12FW2W122 | Flewelling's 2-Point Profile Model |
| mountain hemlock | All Region 1 codes | I00FW2W260 | Flewelling's 2-Point Profile Model |
| mountain hemlock | 621 | I11FW2W017 | Flewelling's 2-Point Profile Model |
| whitebark pine | All Region 1 codes | I00FW2W012 | Flewelling's 2-Point Profile Model |
| whitebark pine | 621 | 616BEHW101 | Behre's Hyperbola |
| limber pine | All Region 1 codes | I00FW2W073 | Flewelling's 2-Point Profile Model |
| limber pine | 621 | 616BEHW113 | Behre's Hyperbola |
| subalpine larch | All Region 1 codes | I00FW2W019 | Flewelling's 2-Point Profile Model |
| subalpine larch | 621 | 616BEHW072 | Behre's Hyperbola |
| singleleaf pinyon | All Region 1 codes | 102DVEW106 | Kemp Equation |
| singleleaf pinyon | 621 | 616BEHW106 | Behre's Hyperbola |
| Rocky mountain juniper | All Region 1 codes | 102DVEW106 | Kemp Equation |
| Rocky mountain juniper | 621 | 616BEHW066 | Behre's Hyperbola |
| Pacific yew | All | 616BEHW231 | Behre's Hyperbola |
| quaking aspen | All Region 1 codes | 102DVEW746 | Kemp Equation |
| quaking aspen | 621 | 616BEHW746 | Behre's Hyperbola |
| cottonwood species | All Region 1 codes | 102DVEW740 | Kemp Equation |
| cottonwood species | 621 | 616BEHW740 | Behre's Hyperbola |
| Rocky mountain maple | All Region 1 codes | 200DVEW746 | Edminster Equation |
| Rocky mountain maple | 621 | 616BEHW321 | Behre's Hyperbola |
| paper birch | All Region 1 codes | 101DVEW375 | N. Central Station Equation |
| paper birch | 621 | 616BEHW375 | Behre's Hyperbola |
| other hardwood | All Region 1 codes | 200DVEW746 | Edminster Equation |
| other hardwood | 621 | 616BEHW998 | Behre's Hyperbola |
| other softwood | All Region 1 codes | I00FW2W260 | Flewelling's 2-Point Profile Model |
| other softwood | 621 | 616BEHW298 | Behre's Hyperbola |

**Table 7.0.3 Citations by Volume Model**

| **Model Name** | **Citation** |
| --- | --- |
| Behre's Hyperbola | USFS-R6 Sale Preparation and Valuation Section of Diameter and Volume Procedures - R6 Timber Cruise System. 1978. |
| Edminster Equation | Edminster, Carleton B., H. Todd Mowrer, and Thomas E. Hinds. 1982. Volume Tables and Point-Sampling Factors for Aspen in Colorado. Rocky Mtn Forest and Range Experiment Station Research Paper RM-232 |
| Flewelling 2-Point Profile Model | Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II. |
| Kemp Equations | Kemp, P.D. 1958. Unpublished report on file at USDA, Forest Service, Rocky Mountain Research Station, Interior West Resource Inventory, Monitoring, and Evaluation Program, Ogden, UT. |
| N. Central Station Equation | Hahn, Jerold T. 1984. Tree Volume and Biomass Equations for the Lake States. Research Paper NC-250. St. Paul, MN: U.S. Dept. of Agriculture, Forest Service, North Central Forest Experiment Station |

# 8.0 Fire and Fuels Extension (FFE-FVS)

The Fire and Fuels Extension to the Forest Vegetation Simulator (FFE-FVS) (Reinhardt and Crookston 2003) integrates FVS with models of fire behavior, fire effects, and fuel and snag dynamics. This allows users to simulate various management scenarios and compare their effect on potential fire hazard, surface fuel loading, snag levels, and stored carbon over time. Users can also simulate prescribed burns and wildfires and get estimates of the associated fire effects such as tree mortality, fuel consumption, and smoke production, as well as see their effect on future stand characteristics. FFE-FVS, like FVS, is run on individual stands, but it can be used to provide estimates of stand characteristics such as canopy base height and canopy bulk density when needed for landscape-level fire models.

For more information on FFE-FVS and how it is calibrated for the IE variant, refer to the updated FFE-FVS model documentation (Rebain, comp. 2010) available on the FVS website.

# 9.0 Insect and Disease Extensions

FVS Insect and Pathogen models for dwarf mistletoe and western root disease have been developed for the IE variant through the participation and contribution of various organizations led by Forest Health Protection. These models are currently maintained by the Forest Management Service Center and regional Forest Health Protection specialists. Additional details regarding each model may be found in chapter 8 of the Essential FVS Users Guide (Dixon 2002).

# 10.0 Literature Cited

Alexander, R.R., Tackle, D., and Dahms, W.G. 1967. Site Indices for Lodgepole Pine with Corrections for Stand Density Methodology. Res. Pap. RM-29. Forest Service, Rocky Mountain Research Station. 18 p.

Anderson, Michelle D. 2001. Acer glabrum. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Bechtold, William A. 2004. Largest-crown-diameter Prediction Models for 53 Species in the Western United States. WJAF. Forest Service. 19(4): pp 241-245.

Bjorkbom, John C. 1972. Stand changes in the first 10 years after seedbed preparation for paper birch. USDA Forest Service, Research Paper NE-238. Northeastern Forest Experiment Station, Upper Darby, PA. 10 p.

Burns, R. M., & Honkala, B. H. 1990. Silvics of North America: 1. Conifers; 2. Hardwoods Agriculture Handbook 654. US Department of Agriculture, Forest Service, Washington, DC.

Burrill, Elizabeth A.; DiTommaso, Andrea M.; Turner, Jeffery A.; Pugh, Scott A.; Christensen, Glenn; Kralicek, Karin M.; Perry, Carol J.; Lepine, Lucie C.; Walker, David M.; Conkling, Barbara L. 2024. The Forest Inventory and Analysis Database, FIADB user guides, volume: database description (version 9.3), nationwide forest inventory (NFI). U.S. Department of Agriculture, Forest Service. 1026 p. [Online].

Cole, D. M.; Stage, A. R. 1972. Estimating future diameters of lodgepole pine. Res. Pap. INT-131. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 20p.

Crookston, Nicholas. 2003. Internal Document on File. Moscow, ID: Data provided from region 1.

Crookston, Nicholas L. 2005. Draft: Allometric Crown Width Equations for 34 Northwest United States Tree Species Estimated Using Generalized Linear Mixed Effects Models.

Dixon, G. E. 1985. Crown ratio modeling using stand density index and the Weibull distribution. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 13p.

Dixon, Gary E. comp. 2002 (revised frequently). Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U.S. Department of Agriculture, Forest Service, Forest Management Service Center.

Donnelly, Dennis. 1996. Internal document on file. Data provided from Region 6. Fort Collins, CO: Forest Service.

Edminster, Carleton B., H. Todd Mowrer, and Thomas E. Hinds. 1982. Volume Tables and Point-Sampling Factors for Aspen in Colorado. Rocky Mtn Forest and Range Experiment Station Research Paper RM-232

Edminster, Carleton B., Mowrer, Todd H., and Shepperd, Wayne D. 1985. Site index curves for aspen in the central Rocky Mountains. Res. Note RM-453. Fort Collins, CO: Forest Service, Rocky Mountain Forest and Range Experiment Station. 4p.

Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II.

Gom, L. A., & Rood, S. B. (2000). Fire induces clonal sprouting of riparian cottonwoods. Canadian Journal of Botany, 77(11), 1604-1616.

Hahn, Jerold T. 1984. Tree Volume and Biomass Equations for the Lake States. Research Paper NC-250. St. Paul, MN: U.S. Dept. of Agriculture, Forest Service, North Central Forest Experiment Station

Hamilton, D. A., Jr. 1986. A logistic model of mortality in thinned and unthinned mixed conifer stands of northern Idaho. For. Science 32(4): 989-1000.

Hutnik, Russell J., and Frank E. Cunningham. 1965. Paper birch (Betula papyrifera Marsh.). In Silvics of forest trees of the United States. p. 93-98. H. A. Fowells, comp. U.S. Department of Agriculture, Agriculture Handbook 271. Washington, DC.

Kemp, P.D. 1958. Unpublished report on file at USDA, Forest Service, Rocky Mountain Research Station, Interior West Resource Inventory, Monitoring, and Evaluation Program, Ogden, UT.

Keyser, C.E. 2001. Quaking Aspen Sprouting in Western FVS Variants: A New Approach. Unpublished Manuscript.

Krajicek, J.; Brinkman, K.; Gingrich, S. 1961. Crown competition – a measure of density. For. Science 7(1):35-42.

Minore, D., & Weatherly, H. G. (1996). Stump sprouting of Pacific yew. General Technical Report. PNW-GTR-378. Portland, Or.: U.S. Dept. of Agriculture, Pacific Northwest Research Station.

Pfister, R. D.; Kovalchik, B. L.; Arno, S. F.; Presby, R. C. 1977. Forest habitat types of Montana. Gen. Tech. Rep. INT-34. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Research Station. 38p.

Rebain, Stephanie A. comp. 2010 (revised frequently). The Fire and Fuels Extension to the Forest Vegetation Simulator: Updated Model Documentation. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 379 p.

Reinhardt, Elizabeth; Crookston, Nicholas L. (Technical Editors). 2003. The Fire and Fuels Extension to the Forest Vegetation Simulator. Gen. Tech. Rep. RMRS-GTR-116. Ogden, UT: U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station. 209 p.

Schreuder, H.T. and W.L. Hafley. 1977. A Useful Distribution for Describing Stand Structure of Tree Heights and Diameters. Biometrics 33, 471-478.

Shepperd, Wayne D. 1995. Unpublished equation. Data on file. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Rocky Mountain Forest and Range Experiment Station.

Stage, A. R. 1973. Prognosis Model for stand development. Res. Paper INT-137. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 32p.

Steinberg, Peter D. 2001. Populus balsamifera subsp. trichocarpa. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

USFS-R6 Sale Preparation and Valuation Section of Diameter and Volume Procedures - R6 Timber Cruise System. 1978.

Van Dyck, Michael G.; Smith-Mateja, Erin E., comps. 2000 (revised frequently). Keyword reference guide for the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

Westfall, James A.; Coulston, John W.; Gray, Andrew N.; Shaw, John D.; Radtke, Philip J.; Walker, David M.; Weiskittel, Aaron R.; MacFarlane, David W.; Affleck, David L.R.; Zhao, Dehai; Temesgen, Hailemariam; Poudel, Krishna P.; Frank, Jereme M.; Prisley, Stephen P.; Wang, Yingfang; Sánchez Meador, Andrew J.; Auty, David; Domke, Grant M. 2024. A national-scale tree volume, biomass, and carbon modeling system for the United States. Gen. Tech. Rep. WO-104. Washington, DC: U.S. Department of Agriculture, Forest Service. 37 p.

Wykoff, W. R. 1990. A basal area increment model for individual conifers in the northern Rocky Mountains. For. Science 36(4): 1077-1104.

Wykoff, William R., Crookston, Nicholas L., and Stage, Albert R. 1982. User’s guide to the Stand Prognosis Model. Gen. Tech. Rep. INT-133. Ogden, UT: Forest Service, Intermountain Forest and Range Experiment Station. 112p.

-----. 2009(revised frequently). Volume Estimator Library Equations. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

# 11.0 Appendices

## 11.1 Appendix A. Habitat Codes

**Table 11.1.1 Habitat type codes and their corresponding original NI variant habitat type codes recognized in the IE variant. Original codes are used in growth equations. Habitat type codes are from Pfister and others (1977). The codes given are for habitat types. Phases are treated as subsets of habitat types. For instance, the codes 261 and 262 are interpreted the same as code 260.**

| **Habitat Code** | **Abbreviation** | **Habitat Type Name** | **Original Habitat Type** |
| --- | --- | --- | --- |
| 10 | SCREE | *Scree* | 130 |
| 100 | PIPO | *Ponderosa pine series* | 130 |
| 110 | PIPO/AND | *Ponderosa pine/bluestem* | 130 |
| 130 | PIPO/AGSP | *Ponderosa pine/ bluebunch wheatgrass* | 130 |
| 140 | PIPO/FEID | *Ponderosa pine/Idaho fescue* | 130 |
| 160 | PIPO/PUTR | *Ponderosa pine/bitterbrush* | 170 |
| 170 | PIPO/SYAL | *Ponderosa pine/Common snowberry* | 170 |
| 180 | PIPO/PRVI | *Ponderosa pine/chokecherry* | 170 |
| 190 | PIPO/PHMA | *Ponderosa pine/ninebark* | 170 |
| 200 | PSME | *Douglas-fir series* | 260 |
| 210 | PSME/AGSP | *Douglas-fir/Bluebench wheatgrass* | 130 |
| 220 | PSME/FEID | *Douglas-fir/Idaho fescue* | 130 |
| 230 | PSME/FESC | *Douglas-fir/altai fescue* | 130 |
| 250 | PSME/VACA | *Douglas-fir/Dwarf huckleberry* | 250 |
| 260 | PSME/PHMA | *Douglas-fir/ninebark* | 260 |
| 280 | PSME/VAGL | *Douglas-fir/blue huckleberry* | 280 |
| 290 | PSME/LIBO | *Douglas-fir/twinflower* | 290 |
| 310 | PSME/SYAL | *Douglas-fir/common snowberry* | 310 |
| 320 | PSME/CARU | *Douglas-fir/pinegrass* | 320 |
| 330 | PSME/CAGE | *Douglas-fir/elk sedge* | 330 |
| 340 | PSME/SPBE | *Douglas-fir/white spirea* | 320 |
| 350 | PSME/ARUV | *Douglas-fir/kinnikinnick* | 320 |
| 360 | PSME/JUCO | *Douglas-fir/common juniper* | 330 |
| 370 | PSME/ARCO | *Douglas-fir/Heartleaf arnica* | 310 |
| 380 | PSME/SYOR | *Douglas-fir/mountain snowberry* | 250 |
| 400 | PICEA | *Spruce series* | 420 |
| 410 | PICEA /EQAR | *Spruce/common horsetail* | 420 |
| 420 | PICEA /CLUN | *Spruce/bride's bonnet* | 420 |
| 430 | PICEA /PHMA | *Spruce/mallow ninebark* | 260 |
| 440 | PICEA /GATR | *Spruce/sweetscented bedstraw* | 470 |
| 450 | PICEA /VACA | *Spruce/dwarf bilberry* | 640 |
| 460 | PICEA /SEST | *Spruce/rocky mountain groundsel* | 850 |
| 470 | PICEA /LIBO | *Spruce/twinflower* | 470 |
| 480 | PICEA /SMST | *Spruce/starry false lily of the valley* | 470 |
| 500 | ABGR | *Grand fir series* | 520 |
| 501 | THPL | *Western redcedar series* | 530 |
| 502 | TSHE | *Western hemlock series* | 570 |
| 505 | ABGR/SPBE | *Grand fir/white spiraea* | 510 |
| 506 | ABGR/PHMA | *Grand fir/ninebark* | 510 |
| 510 | ABGR/XETE | *Grand fir/beargrass* | 510 |
| 515 | ABGR/VAGL | *Grand fir/blue huckleberry* | 510 |
| 516 | ABGR/ASCA | *Grand fir/wildginger* | 520 |
| 520 | ABGR/CLUN | *Grand fir/bride's bonnet* | 520 |
| 529 | ABGR/SETR | *Grand fir/arrowleaf ragwort* | 520 |
| 530 | THPL/CLUN | *Western redcedar/bride's bonnet* | 530 |
| 540 | THPL/ATFI | *Western redcedar/common ladyfern* | 540 |
| 545 | THPL/ASCA | *Western redcedar/British Columbia wildginger* | 530 |
| 550 | THPL/OPHO | *Western redcedar/devilsclub* | 550 |
| 555 | THPL/GYDR | *Western redcedar/western oakfern* | 530 |
| 560 | THPL/ADPE | *Western redcedar/northern maidenhair* | 550 |
| 565 | TSHE/GYDR | *Western hemlock/western oakfern* | 570 |
| 570 | TSHE/CLUN | *Western hemlock/bride's bonnet* | 570 |
| 575 | TSHE/ASCA | *Western hemlock/British Columbia wildginger* | 570 |
| 579 | TSHE/MEFE | *Western hemlock/rusty menziesia* | 690 |
| 590 | ABGR/LIBO | *Grand fir/twinflower* | 510 |
| 600 | ABLA | *Subalpine fir series* | 690 |
| 610 | ABLA/OPHO | *Subalpine fir/devilsclub* | 610 |
| 620 | ABLA/CLUN | *Subalpine fir/twisted stalk* | 620 |
| 630 | ABLA/GATR | *Subalpine fir/fragrant bedstraw* | 660 |
| 635 | ABLA/STAM | *Subalpine fir/twisted-stalk* | 620 |
| 640 | ABLA/VACA | *Subalpine fir/dwarf huckleberry* | 640 |
| 650 | ABLA/CACA | *Subalpine fir/bluejoint* | 640 |
| 660 | ABLA/LIBO | *Subalpine fir/twinflower* | 660 |
| 670 | ABLA/MEFE | *Subalpine fir/menziesia* | 670 |
| 675 | TSME/STAM | *Mountain hemlock/claspleaf twistedstalk* | 620 |
| 680 | TSME/MEFE | *Mountain hemlock/menziesia* | 680 |
| 685 | TSME/CLUN | *Mountain hemlock/bride's bonnet* | 620 |
| 690 | ABLA/XETE | *Subalpine fir/beargrass* | 690 |
| 700 | TSME | *Subalpine fir, lower subalpine* | 730 |
| 701 | TSME | *Mountain hemlock series* | 710 |
| 710 | TSME/XETE | *Mountain hemlock/beargrass* | 710 |
| 720 | ABLA/VAGL | *Subalpine fir/blue huckleberry* | 720 |
| 730 | ABLA/VASC | *Subalpine fir/grouse whortleberry* | 730 |
| 740 | ABLA/ALSI | *Subalpine fir/sitka alder* | 670 |
| 750 | ABLA/CARU | *Subalpine fir/pinegrass* | 690 |
| 770 | ABLA/CLPS | *Subalpine fir/rock clematis* | 730 |
| 780 | ABLA/ARCO | *Subalpine fir/heartleaf arnica* | 690 |
| 790 | ABLA/CAGE | *Subalpine fir/elk sedge* | 730 |
| 800 | ABLA | *subalpine fir, upper subalpine* | 830 |
| 810 | ABLA/RIMO | *Subalpine fir/mountain gooseberry* | 830 |
| 820 | ABLA-PIAL/VASC | *Subalpine fir/whitebark pine/grouse whortleberry* | 850 |
| 830 | ABLA/LUHI | *Subalpine fir/smooth woodrush* | 830 |
| 840 | TSME/LUHI | *Mountain hemlock/Hitchcock's smooth woodrush* | 830 |
| 850 | PIAL-ABLA | *Whitebark pine-subalpine fir* | 850 |
| 860 | LALY-ABLA | *Alpine larch-subalpine fir* | 850 |
| 870 | PIAL | *Whitebark pine series* | 850 |
| 890 | ABLA | *Subalpine fir, timberline* | 850 |
| 900 | PICO | *Lodgepole pine series* | 730 |
| 910 | PICO/PUTR | *Lodgepole pine/antelope bitterbrush* | 330 |
| 920 | PICO/VACA | *Lodgepole pine/dwarf huckleberry* | 640 |
| 925 | PICO/XETE | *Lodgepole pine/common beargrass* | 690 |
| 930 | PICO/LIBO | *Lodgepole pine/twinflower* | 660 |
| 940 | PICO/VASC | *Lodgepole pine/grouse whortleberry* | 730 |
| 950 | PICO/CARU | *Lodgepole pine/pinegrass* | 690 |
| 999 | Other | *---* | 999 |

**Table 11.1.2. Codes for Colville National Forest plant associations represented in the IE variant, and their associated habitat type.**

| **Plant Assoc FVS Seq Number**  **Code** | **Plant Association**  **Code** | **Plant Association Abbreviation** | **Description** | **Mapped to Habitat Type** |
| --- | --- | --- | --- | --- |
| 1 | CCF221 | THPL/CLUN | Western redcedar/Queencup beadlily | 530 |
| 2 | CCF222 | THPL/ARNU3 | Western redcedar/Wild sarsaparilla | 530 |
| 3 | CCS311 | THPL/CLUN | Western redcedar/Big huckleberry | 530 |
| 4 | CDG131 | PSME/CARU | Douglas-fir/Pinegrass,  Okanogan & Colville | 320 |
| 5 | CDG311 | PSME-PIPO/AGIN | Douglas-fir-ponderosa pine/Wheatgrass | 130 |
| 6 | CDS632 | PSME/SYOR | Douglas-fir/Mountain snowberry | 380 |
| 7 | CDS633 | PSME/SYAL | Douglas-fir/Common snowberry | 310 |
| 8 | CDS637 | PSME/SYAL/AGSP | Douglas-fir/Common snowberry/Bluebunch wheatgrass | 310 |
| 9 | CDS715 | PSME/PHMA | Douglas-fir/Ninebark | 260 |
| 10 | CDS716 | PSME/PHMA/LIBOL | Douglas-fir/Ninebark/Twinflower | 290 |
| 11 | CDS813 | PSME/VACA | Douglas-fir/Dwarf huckleberry | 250 |
| 12 | CDS814 | PSME/VAME | Douglas-fir/Big huckleberry | 280 |
| 13 | CEF111 | ABLA2/XETE | Subalpine fir/Beargrass | 690 |
| 14 | CEF211 | ABLA2/LIBO2 | Subalpine fir/Twinflower,  Okanogan & Colville | 660 |
| 15 | CEF421 | ABLA2/CLUN | Subalpine fir/Queencup beadlily | 620 |
| 16 | CEF422 | ABLA2/TRCA3 | Subalpine fir/False bugbane | 635 |
| 17 | CEF423 | ABLA2/COCO | Subalpine fir/Bunchberry dogwood | 620 |
| 18 | CEG311 | ABLA2/CARU | Subalpine fir/Pinegrass | 750 |
| 19 | CEM211 | PIEN/EQAR | Engelmann spruce/Horsetail | 410 |
| 20 | CES210 | ABLA2/RHAL/XETE | Subalpine fir/Cascades azalea/Beargrass | 670 |
| 21 | CES211 | ABLA2/RHAL | Subalpine fir/Cascades azalea | 670 |
| 22 | CES312 | ABLA2/VACCI | Subalpine fir/Huckleberries | 720 |
| 23 | CES313 | ABLA2/VAME | Subalpine fir/Big huckleberry | 720 |
| 24 | CES412 | ABLA2/VASC | Subalpine fir/Grouse huckleberry, Okanogan & Colville | 730 |
| 25 | CES422 | ABLA2/VACA | Subalpine fir/Dwarf huckleberry | 640 |
| 26 | CHF311 | TSHE/CLUN | Western hemlock/Queencup beadlily | 570 |
| 27 | CHF312 | TSHE/ARNU3 | Western hemlock/Wild sarsaparilla | 570 |
| 28 | CHF422 | TSHE/GYDR | Western hemlock/Oak-fern | 565 |
| 29 | CHF521 | TSHE/XETE | Western hemlock/Beargrass | 570 |
| 30 | CHS711 | TSHE/MEFE | Western hemlock/Rusty menziesia | 579 |
| 31 | CLS521 | PICO/SHCA | Lodgepole pine/Russet buffaloberry | 900 |
| 32 | CWF411 | ABGR/CLUN | Grand fir/Queencup beadlily | 520 |
| 33 | CWS214 | ABGR/VAME/CLUN | Grand fir/Big huckleberry/Queencup beadlily | 520 |
| 34 | CWS421 | ABGR/PHMA | Grand fir/Ninebark | 506 |
| 35 | CWS422 | ABGR/ACGLD/CLUN | Grand fir/Douglas maple/Queencup beadlily | 520 |
| 36 | CWS821 | ABGR/VACA | Grand fir/Dwarf huckleberry | 590 |
| 37 | CCS211 | THPL/OPHO | Western redcedar/Devil’s club | 550 |
| 38 | CHS411 | TSHE/RUPE | Western hemlock/Five-leaved bramble | 565 |
| 39 | CAG112 | PIAL/CARU | Whitebark pine/Pinegrass | 850 |
| 40 | CDG123 | PSME/ARUV | Douglas-fir/Bearberry,  Okanogan | 350 |

The U.S. Department of Agriculture (USDA) prohibits discrimination in all its programs and activities on the basis of race, color, national origin, sex, religion, age, disability, political beliefs, sexual orientation, or marital or family status. (Not all prohibited bases apply to all programs.) Persons with disabilities who require alternative means for communication of program information (Braille, large print, audiotape, etc.) should contact USDA’s TARGET Center at (202) 720-2600 (voice and TDD).

To file a complaint of discrimination, write USDA, Director, Office of Civil Rights, Room 326-W, Whitten Building, 1400 Independence Avenue, SW, Washington, DC 20250-9410 or call (202) 720-5964 (voice or TDD). USDA is an equal opportunity provider and employer.