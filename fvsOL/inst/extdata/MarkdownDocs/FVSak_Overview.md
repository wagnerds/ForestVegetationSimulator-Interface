Alaska (AK) Variant Overview of the Forest Vegetation Simulator

September 2025

![](data:image/jpeg;base64...)

![Forest%20Service%20Color](data:image/jpeg;base64...)Denali National Park, AK

(Chad Keyser, FS)

Alaska (AK) Variant Overview of the Forest Vegetation Simulator

# Authors and Contributors:

In 2021, the Alaska variant was released to model forested conditions throughout all of Alaska. Mark Castle led the development work. Along the way, Mark was joined by Mike Shettles, Aaron Gagnon, Lance David, and Chad Keyser who helped fit and embed new relationships in this new variant. The Alaska variant replaces the Southeast Alaska and Coastal British Columbia (SEAPROG) variant.

FVS Staff. 2021 (revised September 23, 2025). Alaska (AK) Variant Overview – Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 41p.

Table of Contents

[Authors and Contributors: ii](#_Toc209541934)

[1.0 Introduction 1](#_Toc209541935)

[2.0 Geographic Range 2](#_Toc209541936)

[3.0 Control Variables 5](#_Toc209541937)

[3.1 Location Codes 5](#_Toc209541938)

[3.2 Species Codes 6](#_Toc209541939)

[3.3 Habitat Type, Plant Association, and Ecological Unit Codes 7](#_Toc209541940)

[3.4 Site Index 7](#_Toc209541941)

[3.5 Maximum Density 9](#_Toc209541942)

[4.0 Growth Relationships 11](#_Toc209541943)

[4.1 Height-Diameter Relationships 11](#_Toc209541944)

[4.2 Bark Ratio Relationships 12](#_Toc209541945)

[4.3 Crown Ratio Relationships 13](#_Toc209541946)

[4.3.1 Crown Ratio Dubbing 13](#_Toc209541947)

[4.3.2 Crown Ratio Change 14](#_Toc209541948)

[4.3.3 Crown Ratio for Newly Established Trees 14](#_Toc209541949)

[4.4 Crown Width Relationships 15](#_Toc209541950)

[4.5 Crown Competition Factor 17](#_Toc209541951)

[4.6 Small Tree Growth Relationships 18](#_Toc209541952)

[4.6.1 Small Tree Height Growth 18](#_Toc209541953)

[4.6.2 Small Tree Diameter Growth 20](#_Toc209541954)

[4.7 Large Tree Growth Relationships 20](#_Toc209541955)

[4.7.1 Large Tree Diameter Growth 21](#_Toc209541956)

[4.7.2 Large Tree Height Growth 23](#_Toc209541957)

[5.0 Mortality Model 27](#_Toc209541958)

[6.0 Regeneration 29](#_Toc209541959)

[7.0 Volume 33](#_Toc209541960)

[8.0 Fire and Fuels Extension (FFE-FVS) 35](#_Toc209541961)

[9.0 Insect and Disease Extensions 36](#_Toc209541962)

[10.0 Literature Cited 37](#_Toc209541963)

[11.0 Appendices 40](#_Toc209541964)

Quick Guide to Default Settings

| **Parameter or Attribute** | **Default Setting** | |
| --- | --- | --- |
| Number of Projection Cycles | 1 (10 if using FVS GUI) | |
| Projection Cycle Length | 10 years | |
| Location Code (National Forest) | 1005 – Tongass National Forest | |
| Slope | 5 percent | |
| Aspect | 0 (no meaningful aspect) | |
| Elevation | Based on location code | |
| Latitude / Longitude | Based on location code | |
| Site Species | WH | |
| Site Index | 70 feet (breast height age; 100 years) | |
| Maximum Stand Density Index | Species specific | |
| Maximum Basal Area | Based on maximum stand density index | |
| Volume Equations | National Volume Estimator Library | |
| Location Code | Merchantable Cubic Foot  (Minimum DBH / Top Diameter) | Merchantable Board Foot  (Minimum DBH / Top Diameter) |
| 713 | 6.0 / 4.0 inches | 9.0 / 6.0 inches |
| 703, 1002, 1003, 1005, 8134, 8135, 8112 | 9.0 / 7.0 inches | 9.0 / 7.0 inches |
| 1004 | 9.0 / 6.0 inches | 9.0 / 6.0 inches |
| 720, 7400, 7401, 7402,7403, 7404, 7405, 7406, 7407, 7408 | 5.0 / 4.0 inches | 9.0 / 6.0 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| Sampling Design: | | |
| Basal Area Factor | 62.5 BAF | |
| Small-Tree Fixed Area Plot | 1/300th Acre | |
| Breakpoint DBH | 5.0 inches | |

# 1.0 Introduction

The Forest Vegetation Simulator (FVS) is an individual tree, distance independent growth and yield model with linkable modules called extensions, which simulate various insect and pathogen impacts, fire effects, fuel loading, snag dynamics, and development of understory tree vegetation. FVS can simulate a wide variety of forest types, stand structures, and pure or mixed species stands.

New “variants” of the FVS model are created by imbedding new tree growth, mortality, and volume equations for a geographic area in the FVS framework. Geographic variants of FVS have been developed for most of the forested lands in the United States.

From 2018 to 2021, new relationships were developed for twenty-three species commonly found in the coastal and northern boreal forest types of Alaska. As such, this variant should be used for all forested areas in Alaska, thus replacing the Southeast Alaska (SEAPROG) variant, which is no longer available.

To fully understand how to use this variant, users should also consult the following publication:

* Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002)

This publication may be downloaded from the Forest Management Service Center (FMSC), Forest Service website. Other FVS publications may be needed if one is using an extension that simulates the effects of fire, insects, or diseases.

# 2.0 Geographic Range

The AK variant was fit to data representing coastal and boreal forest types of Alaska. Data used in model development came from University of Alaska at Fairbanks Growth and Yield Cooperative (46%), USDA Forest Service, Forest Inventory and Analysis (41%), Tanana Chief’s Conference (1%), US Department of Defense (8%), and Alaska State Department of Natural Resources (4%). A data summary is shown in table 2.0.1.

**Table 2.0.1 Data summary for trees used in the development of the AK variant.**

| **Species** | **Number of observations** | **DBH**  **(mean, st.dev)**  **[min, max]** | **Total tree height (mean, stdev)**  **[min, max]** |
| --- | --- | --- | --- |
| Pacific silver fir | 12 | (8.1, 3.6)  [5, 15.6] | (40, 17)  [16, 62] |
| subalpine fir | 49 | (10.2, 5)  [4.1, 23.9] | (48, 20)  [14, 102] |
| Alaska yellow cedar | 13980 | (9.2, 5.9)  [1, 55.7] | (38, 21)  [5, 139] |
| tamarack | 142 | (2.1, 1.4)  [0.5, 7.9] | (16, 8)  [7, 47] |
| white spruce | 76904 | (5.1, 3.8)  [0.3, 41.3] | (34, 20)  [5, 123] |
| black spruce | 53147 | (2.5, 1.9)  [0.5, 21.1] | (18, 11)  [5, 77] |
| Sitka spruce | 18968 | (11.4, 8.1)  [1, 74] | (53, 31)  [5, 238] |
| lodgepole pine | 3411 | (8.1, 4)  [1, 26.6] | (30, 16)  [5, 98] |
| western red cedar | 5556 | (11.6, 8.1)  [1, 72] | (44, 23)  [5, 151] |
| western hemlock | 37772 | (9.8, 6.8)  [1, 58.7] | (48, 28)  [5, 214] |
| mountain hemlock | 23377 | (9, 5.1)  [1, 46.9] | (35, 18)  [5, 150] |
| red alder | 707 | (7.3, 3.5)  [1, 25.7] | (44, 16)  [7, 120] |
| paper birch | 48630 | (5.7, 3.6)  [0.5, 32.2] | (44, 19)  [5, 98] |
| poplar/cottonwood | 6740 | (7.8, 6.1)  [0.5, 59.2] | (46, 23)  [5, 145] |
| quaking aspen | 23960 | (5.6, 3)  [0.5, 27.6] | (42, 17)  [5, 107] |
| salix | 8 | (9.7, 2.1)  [7.1, 13.4] | (32, 11)  [7, 44] |

The AK variant covers Alaska coastal and boreal forest types found throughout the state as well as forested areas in coastal British Columbia and the northwestern tip of the Olympic Peninsula in Washington. The suggested geographic range of use for the AK variant is shown in figure 2.0.1.

![Picture of the Suggested geographic range of use for the AK variant.](data:image/jpeg;base64...)

**Figure 2.0.1 Suggested geographic range of use for the AK variant.**

# 3.0 Control Variables

FVS users need to specify certain variables used by the AK variant to control a simulation. These are entered in parameter fields on various FVS keywords available in the FVS interface or they are read from an FVS input database using the Database Extension.

## 3.1 Location Codes

The location code is a 3- or 4-digit code where, in general, the first two digits of the code represents the Forest Service Region number, and the last two digits represent the Forest number/management area within that region. In some cases, a location code beginning with a “7” or “8” is used to indicate an administrative boundary that doesn’t use a Forest Service Region number (for example, other federal agencies, state agencies, or other lands).

If the location code is missing or incorrect in the AK variant, a default forest code of 1005 (Tongass National Forest) will be used. Location codes recognized in the AK variant are shown in table 3.1.1 and table 3.1.2.

When not entered by the user, the default latitude, longitude, and elevation are set based on the location code.

**Table 3.1.1 Location codes used in the AK variant.**

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Location Code** | **Location** | **Latitude** | **Longitude** | **Elevation (ft)** |
| 1002 | Tongass National Forest: Old Stikine Area (mapped to 1005) | 55.34 | -131.64 | 100 |
| 1003 | Tongass National Forest: Old Chatham Area (mapped to 1005) | 55.34 | -131.64 | 100 |
| 1004 | Chugach National Forest | 61.22 | -149.88 | 100 |
| 1005 | Tongass National Forest1 | 55.34 | -131.64 | 100 |
| 701 | BC/Makah Old Combined code  (mapped to 703) | 48.53 | -123.37 | 100 |
| 703 | British Columbia | 48.53 | -123.37 | 100 |
| 713 | Bureau of Land Management | 61.22 | -149.89 | 200 |
| 720 | State of Alaska, Department of Natural Resources | 61.22 | -149.89 | 200 |
| 7400 | Tanana Chiefs Conference (any location) | 64.84 | -147.71 | 500 |

**1**1005 is the code used for the Tongass National Forest. 1005 represented the Ketchikan Area in the SEAPROG variant.

**Table 3.1.2 Bureau of Indian Affairs location codes used in the AK variant.**

| **Location Code** | **Location** | **Latitude** | **Longitude** | **Elevation (ft)** |
| --- | --- | --- | --- | --- |
| 7401 | Arctic Village Anvsa | 68.13 | -145.54 | 1000 |
| 7402 | Ahtna | 62.14 | -145.47 | 1500 |
| 7403 | Chugach | 61.19 | -149.89 | 100 |
| 7404 | Cook Inlet | 61.21 | -149.81 | 100 |
| 7405 | Doyon | 64.85 | -147.72 | 400 |
| 7406 | Kongiganak Anvsa | 59.99 | -162.89 | 100 |
| 7407 | Nanwalek Anvsa | 59.36 | -151.92 | 200 |
| 7408 | Selawik Anvsa | 66.73 | -160.05 | 100 |
| 8112 | Quileute Reservation | 48.37 | -124.61 | 300 |
| 8134 | Annette Island | 48.00 | -124.61 | 100 |
| 8135 | Makah Indian Reservation | 55.12 | -131.57 | 100 |

## 3.2 Species Codes

The AK variant recognizes 21 species, plus two other composite species categories. You may use FVS species codes, Forest Inventory and Analysis (FIA) species codes, or USDA Natural Resources Conservation Service PLANTS symbols to represent these species in FVS input data. Any valid western species code identifying species not recognized by the variant will be mapped to a similar species in the variant. The species mapping crosswalk is available on the FVS website variant documentation webpage. Any non-valid species code will default to the “other hardwood” category.

Either the FVS sequence number or species code must be used to specify a species in FVS keywords and Event Monitor functions. FIA codes or PLANTS symbols are only recognized during data input and may not be used in FVS keywords. Table 3.2.1 shows the complete list of species codes recognized by the AK variant.

**Table 3.2.1 Species codes used in the AK variant.**

| **Species Number** | **Species Code** | **FIA Code** | **PLANTS Symbol** | **Scientific Name1** | **Common Name1** |
| --- | --- | --- | --- | --- | --- |
| 1 | SF | 011 | ABAM | *Abies amabilis* | Pacific silver fir |
| 2 | AF | 019 | ABLA | *Abies lasiocarpa* | subalpine fir |
| 3 | YC | 042 | CANO9 | *Callitropsis nootkatensis* | Alaska cedar |
| 4 | TA | 071 | LALA | *Larix laricina* | tamarack |
| 5 | WS | 094 | PIGL | *Picea glauca* | white spruce |
| 6 | LS |  | PILU | *Picea lutzii* | hybrid spruce |
| 7 | BE | 095 | PIMA | *Picea mariana* | black spruce |
| 8 | SS | 098 | PISI | *Picea sitchensis* | Sitka spruce |
| 9 | LP | 108 | PICO | *Pinus contorta* | lodgepole pine |
| 10 | RC | 242 | THPL | *Thuja plicata* | western redcedar |
| 11 | WH | 263 | TSHE | *Tsuga heterophylla* | western hemlock |
| 12 | MH | 264 | TSME | *Tsuga mertensiana* | mountain hemlock |
| 13 | OS | 299 | 2TN |  | other softwood2 |
| 14 | AD | 350 | ALNUS | *Alnus* | alder |
| 15 | RA | 351 | ALRU2 | *Alnus rubra* | red alder |
| 16 | PB | 375 | BEPA | *Betula papyrifera* | paper birch |
| 17 | AB | 376 | BENE4 | *Betula neoalaskana* | resin birch |
| 18 | BA | 741 | POBA2 | *Populus balsamifera* | balsam poplar |
| 19 | AS | 746 | POTR5 | *Populus tremuloides* | quaking aspen |
| 20 | CW | 747 | POBAT | *Populus balsamifera* ssp. *trichocarpa* | black cottonwood |
| 21 | WI | 920 | SALIX | *Salix* | willow |
| 22 | SU | 928 | SASC | *Salix scouleriana* | Scouler’s willow |
| 23 | OH | 998 | 2TB |  | other hardwood2 |

1Set based on the USDA Forest Service NRM TAXA lists and the USDA Plants database.

2Other categories use FIA codes and NRM TAXA codes that best match the other category.

## 3.3 Habitat Type, Plant Association, and Ecological Unit Codes

Habitat type, plant association, and ecological unit codes are not used in the AK variant.

## 3.4 Site Index

Site index is used in the growth equations and the sprouting routine in the AK variant. When possible, users should enter their own values instead of relying on the default values assigned by FVS. If site index information is available, a single site index can be specified for the whole stand, a site index for each individual species can be specified, or a combination of these can be entered. If the user does not supply site index values, then default values will be used. When entering site index in the AK variant, the sources shown in table 3.4.1 should be used if possible. When site species and site index is not set by the user, the site species/index is set to western hemlock,70.

When site index is not specified for a species, a relative site index value is calculated from the site index of the site species using equations {3.4.1} and {3.4.2}. Lower and upper limits of site indices used in equation {3.4.1} may be found in table 3.4.1.

{3.4.1} *RELSI* = (*SIsite* – *SITELOsite*) / (*SITEHIsite* – *SITELOsite*)

{3.4.2} *SIi* = *SITELOi* + *RELSI* \* (*SITEHIi* – *SITELOi*)

where:

*RELSI* is the relative site index of the site species

*SI* is species site index

*SITELO* is the lower bound of the *SI* range for a species

*SITEHI* is the upper bound of the *SI* range for a species

*site* is the site species values

*i* is the species values for which site index is to be calculated

**Table 3.4.1 Recommended site index references and range in the AK variant.**

| **Species Number** | **Species Code** | **Source** | **Source Species1** | ***SITELO*** | ***SITEHI*** | **Base Age** | **Age2** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | SF | Hegyi et al. (1981) | balsam (coast) | 35 | 105 | 100 | TTA |
| 2 | AF | Hegyi et al. (1981) | balsam (interior) | 20 | 65 | 100 | TTA |
| 3 | YC | Hegyi et al. (1981) | yellow cedar | 25 | 75 | 100 | TTA |
| 4 | TA | Hegyi et al. (1981) | larch | 25 | 55 | 100 | TTA |
| 5 | WS | Hegyi et al. (1981) | spruce | 30 | 85 | 100 | TTA |
| 6 | LS | Hegyi et al. (1981) | spruce | 30 | 85 | 100 | TTA |
| 7 | BE | Hegyi et al. (1981) | larch | 20 | 55 | 100 | TTA |
| 8 | SS3 | Hegyi et al. (1981) / Taylor 1934 and Payandeh (1974) | Sitka spruce | 40 | 125 | 100 | TTA |
| 9 | LP | Hegyi et al. (1981) | lodgepole pine | 15 | 55 | 100 | TTA |
| 10 | RC | Hegyi et al. (1981) | western red cedar (coast) | 30 | 85 | 100 | TTA |
| 11 | WH3 | Hegyi et al. (1981) / Taylor 1934 and Payandeh (1974) | hemlock (coast) | 35 | 105 | 100 | TTA |
| 12 | MH3 | Hegyi et al. (1981) / Taylor 1934 and Payandeh (1974) | hemlock (coast) | 20 | 65 | 100 | TTA |
| 13 | OS | Hegyi et al. (1981) | spruce | 30 | 85 | 100 | TTA |
| 14 | AD | Hegyi et al. (1981) | balsam poplar/black cottonwood | 20 | 50 | 100 | TTA |
| 15 | RA | Hegyi et al. (1981) | red alder | 75 | 135 | 100 | TTA |
| 16 | PB | Hegyi et al. (1981) | common paper birch | 35 | 75 | 100 | TTA |
| 17 | AB | Hegyi et al. (1981) | common paper birch | 45 | 90 | 100 | TTA |
| 18 | BA | Hegyi et al. (1981) | balsam poplar/black cottonwood | 45 | 105 | 100 | TTA |
| 19 | AS | Hegyi et al. (1981) | aspen | 45 | 85 | 100 | TTA |
| 20 | CW | Hegyi et al. (1981) | balsam poplar/black cottonwood | 45 | 105 | 100 | TTA |
| 21 | WI | Hegyi et al. (1981) | balsam poplar/black cottonwood | 20 | 50 | 100 | TTA |
| 22 | SU | Hegyi et al. (1981) | balsam poplar/black cottonwood | 45 | 70 | 100 | TTA |
| 23 | OH | Hegyi et al. (1981) | balsam poplar/black cottonwood | 20 | 50 | 100 | TTA |

1 Hegyi (1981) source equation specified in table 4 of document.

2 Age is total tree age (TTA).

3 Western hemlock, mountain hemlock, and Sitka spruce less than 200 years old use Taylor (1934) equation refit using methods from Payandeh (1974); western hemlock, mountain hemlock, and Sitka spruce greater than or equal to 200 years old use Hegyi (1981) equations.

Taylor-Payandeh site index equation form for Western hemlock, mountain hemlock, and Sitka spruce less than 200 years old:

SI =B1 \* *HT* ^ B2 \* (1 - EXP(B3 \* *TTA*)) ^ (B4 \* *HT* ^ B5)

B1 = 0.520027; B2 = 0.999937; B3 = -0.00625; B4 = -0.899461; B5 = -0.011825

SI = site index base age 100; HT = total tree height; TTA = total tree age

## 3.5 Maximum Density

Stand density index (SDI) relative to maximum stand density index (SDImax) is used throughout the AK variant. Maximum stand density is not allowed to extend past the stand level maximum basal area and maximum SDI. If not set by the user, a default maximum value is assigned as discussed below.

The default maximum SDI is set by species or a user-specified, basal area maximum. If a user-specified basal area maximum is present, the maximum SDI for all species is computed using equation {3.5.1}; otherwise, species SDI maximums are assigned from the SDI maximums shown in table 3.5.1 or from user input. Maximum SDI at the stand level is a weighted average, by basal area, of the individual species SDI maximums.

Stand SDI is calculated using the Zeide calculation method (Dixon 2002).

{3.5.1} *SDIMAXi =* *BAMAX*/ (0.5454154 \* *SDIU)*

where:

*SDIMAX*i is the species-specific SDI maximum

*BAMAX* is the user-specified stand basal area maximum

*SDIU* is theproportion of theoretical maximum density at which the stand reaches actual maximum density (default 0.85, changed with the SDIMAX keyword)

**Table 3.5.1 Stand density index maximums by species in the AK variant.**

| **Species Number** | **Species Code** | **SDI Maximum\*** | **Mapped to** |
| --- | --- | --- | --- |
| 1 | SF | 790 |  |
| 2 | AF | 602 |  |
| 3 | YC | 592 |  |
| 4 | TA | 387 |  |
| 5 | WS | 412 |  |
| 6 | LS | 412 | white spruce |
| 7 | BE | 500 |  |
| 8 | SS | 654 |  |
| 9 | LP | 679 |  |
| 10 | RC | 762 |  |
| 11 | WH | 682 |  |
| 12 | MH | 687 |  |
| 13 | OS | 412 | white spruce |
| 14 | AD | 441 | red alder |
| 15 | RA | 441 |  |
| 16 | PB | 466 |  |
| 17 | AB | 466 | paper birch |
| 18 | BA | 384 |  |
| 19 | AS | 562 |  |
| 20 | CW | 452 |  |
| 21 | WI | 447 | black willow |
| 22 | SU | 447 | black willow |
| 23 | OH | 452 | black cottonwood |

\*Source of SDI maximums is an unpublished analysis of FIA data by John Shaw.

# 4.0 Growth Relationships

This chapter describes the functional relationships used to fill in missing tree data and calculate incremental growth. In FVS, trees are grown in either the small tree sub-model or the large tree sub-model depending on the diameter.

## 4.1 Height-Diameter Relationships

Height-diameter relationships in FVS are primarily used to estimate tree heights missing in input data, and occasionally to estimate diameter growth on trees smaller than a given threshold diameter. In the AK variant, FVS will dub in heights by one of two methods. By default, the AK variant will use the Chapman-Richards functional form as shown in equation {4.1.1} (Rijal et al., 2012).

If the input data contains at least three measured heights for a species, then FVS can switch to a logistic height-diameter equation {4.1.2} (Wykoff, et.al 1982) that may be calibrated to the input data. FVS will not automatically use equation {4.1.2} even if you have enough height values in the input data. To override this default, the user must use the NOHTDREG keyword to turn calibration on. Coefficients for equations {4.1.1} and {4.1.2} are given in table 4.1.1.

{4.1.1} HT = 4.5 + AX1 \* (1 – exp(BX1 \* DBH))^CX1

{4.1.2} HT = 4.5 + exp(AX + BX / (DBH + 1.0))

where:

HT is tree height

DBH is tree diameter at breast height

AX1, BX1, CX1 are species-specific coefficients shown in table 4.1.1

AX, BX are species-specific coefficients shown in table 4.1.2

**Table 4.1.1 Default coefficients for equations {4.1.1} and {4.2.2} in the AK variant.**

| **Species Code** | **AX1** | **BX1** | **CX1** | **AX** | **BX** |
| --- | --- | --- | --- | --- | --- |
| SF | 173.578068 | -0.034704 | 1.06697 | 5.047089 | -12.629014 |
| AF | 173.578068 | -0.034704 | 1.06697 | 5.047089 | -12.629014 |
| YC | 118.005962 | -0.04487 | 1.090783 | 4.683932 | -10.690737 |
| TA | 68.53457 | -0.149647 | 1.335243 | 4.350320 | -5.776563 |
| WS | 115.991446 | -0.068079 | 1.059224 | 4.633182 | -6.81926 |
| LS | 115.991446 | -0.068079 | 1.059224 | 4.633182 | -6.81926 |
| BE | 68.534570 | -0.149647 | 1.335243 | 4.350320 | -5.776563 |
| SS | 173.578068 | -0.034704 | 1.06697 | 5.047089 | -12.629014 |
| LP | 71.730424 | -0.096667 | 1.589409 | 4.513771 | -10.853785 |
| RC | 105.741099 | -0.051922 | 1.134463 | 4.716522 | -11.426736 |
| WH | 141.210402 | -0.054102 | 1.248358 | 5.007972 | -12.085418 |
| MH | 108.158839 | -0.054874 | 1.309823 | 4.701229 | -12.133655 |
| OS | 115.991446 | -0.068079 | 1.059224 | 4.633182 | -6.81926 |
| AD | 115.115222 | -0.04711 | 0.795143 | 4.622461 | -6.696442 |
| RA | 131.581959 | -0.03474 | 0.783043 | 4.542755 | -6.654068 |
| PB | 59.019982 | -0.330044 | 1.482009 | 4.393426 | -3.968868 |
| AB | 59.019982 | -0.330044 | 1.482009 | 4.393426 | -3.968868 |
| BA | 115.115222 | -0.04711 | 0.795143 | 4.622461 | -6.696442 |
| AS | 69.442183 | -0.181461 | 1.179203 | 4.479633 | -5.03023 |
| CW | 115.115222 | -0.04711 | 0.795143 | 4.622461 | -6.696442 |
| WI | 115.115222 | -0.04711 | 0.795143 | 4.622461 | -6.696442 |
| SU | 115.115222 | -0.04711 | 0.795143 | 4.622461 | -6.696442 |
| OH | 115.115222 | -0.04711 | 0.795143 | 4.622461 | -6.696442 |

## 4.2 Bark Ratio Relationships

Bark ratio estimates are used to convert between diameter outside bark and diameter inside bark in various parts of the model. The equations used in the AK variant to calculate bark ratio are shown below {4.2.1 – 4.2.3}. Coefficients for the equations are shown in table 4.2.1. Table 4.2.1 also designates which equation is associated with each of the species present in the AK variant.

{4.2.1} *DBT = a \* DBH ^ b*

BRATIO = *(*DBH – DBT*)* / DBH

{4.2.2} BRATIO = (a + (b \* DBH)) / DBH

{4.2.3} *DIB = a \* DBH ^ b*

BRATIO = *DIB* / DBH

where:

BRATIOis species-specific bark ratio

DBH is tree diameter at breast height

DBT is double bark thickness

DIB is diameter inside bark

**Table 4.2.1 Coefficients (a and b) and equations for bark ratio equations {4.2.1} – {4.2.3} in the AK variant.**

| **Species Code** | **Equation**  **Number** | **a** | **b** |
| --- | --- | --- | --- |
| SF | 4.2.1 | 0.186 | 0.45417 |
| AF | 4.2.1 | 0.186 | 0.45417 |
| YC | 4.2.1 | 0.186 | 0.45417 |
| TA | 4.2.3 | 0.796645 | 1.060823 |
| WS | 4.2.3 | 0.839825 | 1.039951 |
| LS | 4.2.3 | 0.839825 | 1.039951 |
| BE | 4.2.3 | 0.796645 | 1.060823 |
| SS | 4.2.1 | 0.843047 | 1.030798 |
| LP | 4.2.1 | 0.186 | 0.45417 |
| RC | 4.2.1 | 0.186 | 0.45417 |
| WH | 4.2.1 | 0.186 | 0.45417 |
| MH | 4.2.3 | 0.743935 | 1.048186 |
| OS | 4.2.3 | 0.839825 | 1.039951 |
| AD | 4.2.2 | 0.075256 | 0.94373 |
| RA | 4.2.2 | 0.075256 | 0.94373 |
| PB | 4.2.3 | 0.899145 | 1.011965 |
| AB | 4.2.3 | 0.899145 | 1.011965 |
| BA | 4.2.3 | 0.792559 | 1.028571 |
| AS | 4.2.3 | 0.921204 | 0.996669 |
| CW | 4.2.3 | 0.784468 | 1.035819 |
| WI | 4.2.3 | 0.784468 | 1.035819 |
| SU | 4.2.3 | 0.784468 | 1.035819 |
| OH | 4.2.3 | 0.784468 | 1.035819 |

## 4.3 Crown Ratio Relationships

Crown ratio equations are used for three purposes in FVS: (1) to estimate tree crown ratios missing from the input data for both live and dead trees; (2) to estimate change in crown ratio from cycle to cycle for live trees; and (3) to estimate initial crown ratios for regenerating trees established during a simulation.

### 4.3.1 Crown Ratio Dubbing

In the AK variant, crown ratios missing in the input data are dubbed using equations {4.3.1.1} - {4.3.1.2}.

{4.3.1.1} X = B1 + B2 \* ln(H\*12/D) + B3 \* *RDEN* + B4 \* D/QMDPLT + N(0,SD)

{4.3.1.2} CR = 1 / (1 + exp(X))

where:

D is tree diameter at breast height

H is tree height

PRD is relative density of the stand (Zeide SDI / maximum SDI) on inventory point

QMDPLT is quadratic mean diameter of trees on inventory point (constrained to minimum of 1”)

N(0,SD) is a random increment from normal distribution with mean 0 and standard deviation of SD which is only applied to trees less than 1.0” DBH and dead trees.

CR is crown ratio expressed as a proportion (bounded to 0.05 <u><</u> *CR* <u><</u> 0.95)

B1 – B4 are species-specific coefficients shown in table 4.3.1.1

**Table 4.3.1.1 Coefficients (B1 – B4 and SD) for the crown ratio equation {4.3.1.1-4.3.1.2} in the AK variant.**

| **Species Code** | **B1** | **B2** | **B3** | **B4** | **SD** |
| --- | --- | --- | --- | --- | --- |
| SF | -2.818788 | 0.623633 | 0.952948 | -0.174337 | 0.1719 |
| AF | -2.818788 | 0.623633 | 0.952948 | -0.174337 | 0.1719 |
| YC | 0.655733 | -0.064716 | 0.439411 | -0.174337 | 0.159 |
| TA | 6.469047 | -1.495754 | 0.913909 | -0.051268 | 0.1645 |
| WS | -4.02647 | 0.655230 | 0.914077 | -0.051268 | 0.1542 |
| LS | -4.02647 | 0.655230 | 0.914077 | -0.051268 | 0.1542 |
| BE | -2.781735 | 0.438826 | 0.970251 | -0.051268 | 0.1894 |
| SS | -2.818788 | 0.623633 | 0.952948 | -0.174337 | 0.1719 |
| LP | -0.425173 | 0.295262 | 0.732675 | -0.174337 | 0.1568 |
| RC | -0.449694 | 0.104368 | 0.557638 | -0.174337 | 0.1811 |
| WH | -0.364665 | 0.116994 | 0.573079 | -0.174337 | 0.1582 |
| MH | -0.47458 | 0.141604 | 0.590263 | -0.174337 | 0.155 |
| OS | -4.026470 | 0.655230 | 0.914077 | -0.051268 | 0.1542 |
| AD | 0.977291 | -0.314026 | 0.848483 | -0.051268 | 0.1447 |
| RA | -2.799049 | 0.660530 | 0.987503 | -0.174337 | 0.1447 |
| PB | -1.268650 | 0.147556 | 1.092390 | -0.051268 | 0.144 |
| AB | -1.268650 | 0.147556 | 1.092390 | -0.051268 | 0.144 |
| BA | 0.977291 | -0.314026 | 0.848483 | -0.051268 | 0.1605 |
| AS | 0.802511 | -0.143680 | 1.023227 | -0.051268 | 0.1356 |
| CW | 0.977291 | -0.314026 | 0.848483 | -0.051268 | 0.1605 |
| WI | -2.406592 | 0.347417 | 0.952753 | -0.051268 | 0.0938 |
| SU | -2.406592 | 0.347417 | 0.952753 | -0.051268 | 0.0938 |
| OH | 0.977291 | -0.314026 | 0.848483 | -0.051268 | 0.1605 |

### 4.3.2 Crown Ratio Change

Crown ratio change is estimated after growth, mortality and regeneration are estimated during a projection cycle. Crown ratio change is the difference between the crown ratio at the beginning of the cycle and the predicted crown ratio at the end of the cycle. Crown ratio predicted at the end of the projection cycle is estimated for live tree records (across all species) using equations {4.3.1.1} - {4.3.1.2}. Crown change is checked to make sure it doesn’t exceed the change possible if all height growth produces new crown. Crown change is further bounded to 1% per year decrease and 3% per year increase for the length of the cycle to avoid drastic changes in crown ratio.

### 4.3.3 Crown Ratio for Newly Established Trees

Crown ratios for newly established trees during regeneration are estimated using equation {4.3.3.1}. A random component is added in equation {4.3.3.1} to ensure that not all newly established trees are assigned the same crown ratio.

{4.3.3.1} CR = 0.89722 – 0.0000461 \* PCCF + RAN

where:

CR is crown ratio expressed as a proportion (bounded to 0.2 <u><</u> CR <u><</u> 0.9)

PCCF is crown competition factor on the inventory point where the tree is established

RAN is a small random component

## 4.4 Crown Width Relationships

The AK variant calculates the maximum crown width for each individual tree based on individual tree and stand attributes. Crown width for each tree is reported in the tree list output table and used for percent cover (*PCC*) calculations in the model.

Crown width is calculated using equations {4.4.1} – {4.4.3}, and coefficients for these equations are shown in table 4.4.1. The minimum diameter and bounds for certain data values are given in table 4.4.2. Equation numbers in table 4.4.1 are given with the first three digits representing the FIA species code, and the last two digits representing the equation source.

{4.4.1} Crookston (2005); Equation 05

DBH <u>></u> MinD:CW = (a1 \* BF) \* DBH*^*a2 \* HT*^*a3 \* CL*^*a4 \* (BA+ 1.0)^a5 \* (exp(EL*)* )^a6

DBH < MinD:CW = [(a1 \* BF) \* MinD*^*a2 \* HT*^*a3 \* CL*^*a4 \* (BA+ 1.0)^a5 \* (exp(EL))^a6] \* (DBH / MinD)

{4.4.2} Donnelly (1996); Equation 06

DBH <u>></u> MinD*:* CW = a1 \* DBH^a2

DBH < MinD*:* CW = [a1 \* MinD^a2] \* (DBH / MinD)

{4.4.3} Castle (2019); Equation 08

CW = a1 \* DBH*^*a2 \* HT*^*a3 \* CL*^*a4 \* (BA+ 1.0)^a5 \* (exp(EL*)* )^a6

where:

CW is tree maximum crown width

BF is a species-specific coefficient based on forest code (BF = 1.0 in the AK variant)

DBH is tree diameter at breast height

HT is tree height

CL is tree crown length

BA is total stand basal area

EL is stand elevation in hundreds of feet

MinD is the minimum diameter

a1 – a6 are species-specific coefficients shown in table 4.4.1

**Table 4.4.1 Coefficients (a1 – a6) for crown width equations {4.4.1} – {4.4.3} in the AK variant.**

| **Species Code** | **Equation Number\*** | **a1** | **a2** | **a3** | **a4** | **a5** | **a6** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| SF | 01105 | 4.4799 | 0.45976 | -0.10425 | 0.11866 | 0.06762 | -0.00715 |
| AF | 01905 | 5.8827 | 0.51479 | -0.21501 | 0.17916 | 0.03277 | -0.00828 |
| YC | 04205 | 3.3756 | 0.45445 | -0.11523 | 0.22547 | 0.08756 | -0.00894 |
| TA | 09508 | 3.391358 | 0.638945 | -0.395285 | 0.264254 | 0 | 0 |
| WS | 09408 | 8.515316 | 0.630576 | -0.867757 | 0.477791 | 0.10021 | -0.015034 |
| LS | 09408 | 8.515316 | 0.630576 | -0.867757 | 0.477791 | 0.10021 | -0.015034 |
| BE | 09508 | 3.391358 | 0.638945 | -0.395285 | 0.264254 | 0 | 0 |
| SS | 09805 | 8.48 | 0.70692 | -0.38812 | 0.17127 | 0 | 0 |
| LP | 10805 | 6.6941 | 0.81980 | -0.36992 | 0.17722 | -0.01202 | -0.00882 |
| RC | 24205 | 6.2382 | 0.29517 | -0.10673 | 0.23219 | 0.05341 | -0.00787 |
| WH | 26305 | 6.0384 | 0.51581 | -0.21349 | 0.17468 | 0.06143 | -0.00571 |
| MH | 26405 | 3.7854 | 0.54684 | -0.12954 | 0.16151 | 0.03047 | -0.00561 |
| OS | 09408 | 8.515316 | 0.630576 | -0.867757 | 0.477791 | 0.10021 | -0.015034 |
| AD | 74708 | 0.790658 | 0.551987 | 0.446434 | 0 | 0 | -0.048415 |
| RA | 35106 | 7.0806 | 0.4771 | 0 | 0 | 0 | 0 |
| PB | 37508 | 2.725006 | 0.53601 | 0 | 0.196372 | -0.015305 | 0 |
| AB | 37508 | 2.725006 | 0.53601 | 0 | 0.196372 | -0.015305 | 0 |
| BA | 74708 | 0.790658 | 0.551987 | 0.446434 | 0 | 0 | -0.048415 |
| AS | 74608 | 2.386015 | 0.63014 | -0.147121 | 0.274356 | 0 | 0 |
| CW | 74708 | 0.790658 | 0.551987 | 0.446434 | 0 | 0 | -0.048415 |
| WI | 74708 | 0.790658 | 0.551987 | 0.446434 | 0 | 0 | -0.048415 |
| SU | 74708 | 0.790658 | 0.551987 | 0.446434 | 0 | 0 | -0.048415 |
| OH | 74708 | 0.790658 | 0.551987 | 0.446434 | 0 | 0 | -0.048415 |

\*Equation number is a combination of the species FIA code (###) and source (##).

**Table 4.4.2 *MinD* values and data bounds for equations {4.4.1}-{4.4.3} in the AK variant.**

| **Species Code** | **Equation Number\*** | ***MinD*** | ***EL* min** | ***EL* max** | ***CW* max** |
| --- | --- | --- | --- | --- | --- |
| SF | 01105 | 1.0 | 4 | 72 | 33 |
| AF | 01905 | 1.0 | 10 | 85 | 30 |
| YC | 04205 | 1.0 | 16 | 62 | 59 |
| TA | 09508 | n/a | n/a | n/a | 16 |
| WS | 09408 | n/a | 1 | 85 | 40 |
| LS | 09408 | n/a | 1 | 85 | 40 |
| BE | 09508 | n/a | n/a | n/a | 16 |
| SS | 09805 | 1.0 | n/a | n/a | 50 |
| LP | 10805 | 1.0 | 1 | 79 | 40 |
| RC | 24205 | 1.0 | 1 | 72 | 45 |
| WH | 26305 | 1.0 | 1 | 72 | 54 |
| MH | 26405 | n/a | n/a | n/a | 45 |
| OS | 09408 | n/a | 1 | 85 | 40 |
| AD | 74708 | 1.0 | n/a | n/a | 35 |
| RA | 35106 | 1.0 | n/a | n/a | 35 |
| PB | 37508 | n/a | n/a | n/a | 53 |
| AB | 37508 | n/a | n/a | n/a | 53 |
| BA | 74708 | n/a | n/a | n/a | 56 |
| AS | 74608 | n/a | n/a | n/a | 48 |
| CW | 74708 | n/a | n/a | n/a | 56 |
| WI | 74708 | n/a | n/a | n/a | 56 |
| SU | 74708 | n/a | n/a | n/a | 56 |
| OH | 74708 | n/a | n/a | n/a | 56 |

## 4.5 Crown Competition Factor

The AK variant uses crown competition factor (*CCF*) as a predictor variable in some growth relationships. Crown competition factor (Krajicek and others 1961) is a relative measurement of stand density that is based on tree diameters. Individual tree *CCFt* values estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open-grown. Stand *CCF* is the summation of individual tree (*CCFt*)values. A stand *CCF* value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand. Crown competition factor for an individual tree is calculated using equations 4.5.1- 4.5.4:

{4.5.1} MCW = b1 + b2 \* DBH

{4.5.2}MCW = b1 + DBH^b2 \* 3.28

{4.5.3} *MCA* = *Pi* \* (*MCW*/2)^2

{4.5.4} *DBH* > 0.1 CCFt = (*MCA*/43560) \* 100 \* *P*

*DBH* ≤ 0.1 CCFt = 0.001 \* *P*

where:

MCW open grown crown width for an individual tree

DBH is tree diameter at breast height

MCA crown area for an individual tree

Pi constant of 3.14159

CCFt is crown competition factor for an individual tree

P trees per acre representation of an individual tree

b1 – b2 are species-specific coefficients shown in table 4.5.1

**Table 4.5.1 Coefficients (b1 and b2) for the *MCW* equations {4.5.1} – {4.5.2} in the AK variant.**

| **Species Code** | **Equation number** | **Reference Species** | **b1** | **b2** |
| --- | --- | --- | --- | --- |
| SF | 4.5.1 | white and grand fir, Paine and Hann 1982 | 6.1880 | 1.0069 |
| AF | 4.5.1 | white and grand fir, Paine and Hann 1982 | 6.1880 | 1.0069 |
| YC | 4.5.1 | western redcedar, Smith 1966 | 4.0 | 1.6 |
| TA | 4.5.2 | black spruce, Russell and Weiskittel 2011 | 0.535 | 0.742 |
| WS | 4.5.2 | white spruce, Russell and Weiskittel 2011 | 1.50 | 0.496 |
| LS | 4.5.2 | white spruce, Russell and Weiskittel 2011 | 1.50 | 0.496 |
| BE | 4.5.2 | black spruce, Russell and Weiskittel 2011 | 0.535 | 0.742 |
| SS | 4.5.1 | Sitka spruce, Smith 1966 | 6.5 | 1.8 |
| LP | 4.5.1 | white and grand fir, Paine and Hann 1982 | 6.1880 | 1.0069 |
| RC | 4.5.1 | western redcedar, Smith 1966 | 4.0 | 1.6 |
| WH | 4.5.1 | western hemlock, Paine and Hann 1982 | 4.5652 | 1.4147 |
| MH | 4.5.1 | western hemlock, Paine and Hann 1982 | 4.5652 | 1.4147 |
| OS | 4.5.2 | white spruce, Russell and Weiskittel 2011 | 1.50 | 0.496 |
| AD | 4.5.1 | alder, Smith 1966 | 8.0 | 1.53 |
| RA | 4.5.1 | alder, Smith 1966 | 8.0 | 1.53 |
| PB | 4.5.2 | paper birch, Russell and Weiskittel 2011 | 1.48 | 0.623 |
| AB | 4.5.2 | paper birch, Russell and Weiskittel 2011 | 1.48 | 0.623 |
| BA | 4.5.2 | ash/cottonwood, Smith 1966 | 0.5 | 1.62 |
| AS | 4.5.2 | quaking aspen, Russell and Weiskittel 2011 | 1.31 | 0.586 |
| CW | 4.5.1 | ash/cottonwood, Smith 1966 | 0.5 | 1.62 |
| WI | 4.5.1 | ash/cottonwood, Smith 1966 | 0.5 | 1.62 |
| SU | 4.5.1 | ash/cottonwood, Smith 1966 | 0.5 | 1.62 |
| OH | 4.5.1 | ash/cottonwood, Smith 1966 | 0.5 | 1.62 |

## 4.6 Small Tree Growth Relationships

Trees are considered “small trees” for FVS modeling purposes when they are smaller than some threshold diameter. The threshold diameter is set to 1.0” for all species in the AK variant; however, both height and diameter growth are averaged with large tree predictions across species-specific diameter ranges.

The small tree model is height-growth driven, meaning height growth is estimated first and diameter growth is estimated from height growth. These relationships are discussed in the following sections.

### 4.6.1 Small Tree Height Growth

The small-tree height growth model predicts periodic potential height growth (POTHTG) from height growth curves identified in section 3.4. Height growth is computed by subtracting the current predicted height from the predicted height 10 years in the future, as depicted in equations {4.6.1.1} and {4.6.1.2}. Coefficients for each equation are in table 4.6.1.1.

{4.6.1.1} Hegyi (et.al 1981)

*HT* = C1\**XSITE*\*(1-EXP(C2\**AGET*))^C3

{4.6.1.2} Payandeh (1974)

*HT =* B1\**XSITE*^B2\*(1-EXP(B3\**AGET*))^(B4\**XSITE*^B5)

where:

*HT* is predicted tree height, used for current and future height growth.

*XSITE* is species site index

*AGET* is tree age where equations are presented above are solved for age. Future age adds ten years to the *AGET* estimate.

*HT* tree height in feet

C1 – C3 are species-specific coefficients

B1 – B5 are species-specific coefficients

**Table 4.6.1.1 Coefficients for the small tree height growth equations {4.6.1.1} and {4.6.1.2} in the AK variant.**

| **Species Code** | **Equation** | **B1** or**C1** | **B2** or**C2** | **B3** or**C3** | **B4** | **B5** | ***XMIN*** | ***XMAX*** | ***DGMax*** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| SF | {4.6.1.1} | 1.1945 | -0.0236 | 1.7918 |  |  | 1.0 | 5.0 | 5.0 |
| AF | {4.6.1.1} | 1.3832 | -0.0155 | 1.3597 |  |  | 1.0 | 5.0 | 5.0 |
| YC | {4.6.1.1} | 1.1243 | -0.0263 | 1.5662 |  |  | 1.0 | 8.0 | 5.0 |
| TA | {4.6.1.1} | 1.1637 | -0.0215 | 1.2243 |  |  | 1.0 | 3.0 | 3.0 |
| WS | {4.6.1.1} | 1.2883 | -0.0181 | 1.4177 |  |  | 1.0 | 3.0 | 3.0 |
| LS | {4.6.1.1} | 1.2883 | -0.0181 | 1.4177 |  |  | 1.0 | 3.0 | 3.0 |
| BE | {4.6.1.1} | 1.1637 | -0.0215 | 1.2243 |  |  | 1.0 | 3.0 | 3.0 |
| SS | {4.6.1.2} | 1.5469 | 1.0018 | -0.0114 | 1.0883 | 0.0072 | 1.0 | 5.0 | 5.0 |
| LP | {4.6.1.1} | 1.0236 | -0.0465 | 2.4269 |  |  | 1.0 | 8.0 | 5.0 |
| RC | {4.6.1.1} | 1.1243 | -0.0263 | 1.5662 |  |  | 1.0 | 8.0 | 5.0 |
| WH | {4.6.1.2} | 1.5469 | 1.0018 | -0.0114 | 1.0883 | 0.0072 | 1.0 | 7.0 | 5.0 |
| MH | {4.6.1.2} | 1.5469 | 1.0018 | -0.0114 | 1.0883 | 0.0072 | 1.0 | 8.0 | 5.0 |
| OS | {4.6.1.1} | 1.2883 | -0.0181 | 1.4177 |  |  | 1.0 | 3.0 | 3.0 |
| AD | {4.6.1.1} | 1.1318 | -0.0226 | 1.1233 |  |  | 1.0 | 3.0 | 3.0 |
| RA | {4.6.1.1} | 1.0142 | -0.0421 | 0.9422 |  |  | 1.0 | 3.0 | 3.0 |
| PB | {4.6.1.1} | 1.1580 | -0.0175 | 0.7687 |  |  | 1.0 | 3.0 | 3.0 |
| AB | {4.6.1.1} | 1.1580 | -0.0175 | 0.7687 |  |  | 1.0 | 3.0 | 3.0 |
| BA | {4.6.1.1} | 1.1318 | -0.0226 | 1.1233 |  |  | 1.0 | 3.0 | 3.0 |
| AS | {4.6.1.1} | 1.2025 | -0.0158 | 0.7994 |  |  | 1.0 | 3.0 | 3.0 |
| CW | {4.6.1.1} | 1.1318 | -0.0226 | 1.1233 |  |  | 1.0 | 3.0 | 3.0 |
| WI | {4.6.1.1} | 1.1318 | -0.0226 | 1.1233 |  |  | 1.0 | 3.0 | 3.0 |
| SU | {4.6.1.1} | 1.1318 | -0.0226 | 1.1233 |  |  | 1.0 | 3.0 | 3.0 |
| OH | {4.6.1.1} | 1.1318 | -0.0226 | 1.1233 |  |  | 1.0 | 3.0 | 3.0 |

For all species, a small random error is then added to the height growth estimate. The estimated height growth is then adjusted to account for cycle length, user-defined, small-tree height growth adjustments, and adjustments due to small tree height increment calibration from input data. Then, the small-tree estimate is averaged with an estimate from the large-tree height growth model, explained in section 4.7.2, to obtain an average small tree height growth estimate from the initial potential estimate.

Finally, height growth estimates are weighted with the height growth estimates from the large tree model over a range of diameters (*Xmin* and *Xmax*), to smooth the transition between the two models. For example, the closer a tree’s *DBH* value is to the minimum diameter (*Xmin*), the more the growth estimate will be weighted towards the small-tree growth model. The closer a tree’s *DBH* value is to the maximum diameter (*Xmax*), the more the growth estimate will be weighted towards the large-tree growth model. The weight applied to the growth estimate is calculated using equation {4.6.1.3}, and applied as shown in equation {4.6.1.4}. The range of diameters for each species is shown in table 4.6.1.1.

{4.6.1.3}

*DBH* <u><</u> *Xmin: XWT* = 0

*Xmin* < *DBH* < *Xmax* : *XWT* = (*DBH* - *Xmin*) / (*Xmax* - *Xmin*)

*DBH* <u>></u> *Xmax*: *XWT* = 1

{4.6.1.4} Estimated growth = [(1 - *XWT*) \* ((*STGE+LTGE)/2)*] + [*XWT* \* *LTGE*]

where:

*DBH* is tree diameter at breast height

*XWT* is the weight applied to the growth estimates

*Xmax* is the maximum *DBH* in the diameter range

*Xmin* is the minimum *DBH* in the diameter range

*STGE* is the small-tree growth estimate

*LTGE* is the large-tree growth estimate

### 4.6.2 Small Tree Diameter Growth

As stated previously, for trees being projected with the small tree equations, height growth is predicted first, and then diameter growth. So, both height at the beginning of the cycle and height at the end of the cycle are known when predicting diameter growth. Small tree diameter growth is calculated as the difference of predicted diameter at the start of the projection period and the predicted diameter at the end of the projection period, adjusted for bark ratio. These two predicted diameters are estimated using the species-specific height-diameter relationships discussed in section 4.1. By definition, diameter growth is zero for trees less than 4.5 feet tall.

Diameter growth estimates are weighted with the diameter growth estimates from the large-tree model over a range of diameters (*Xmin* and *DGmax*), similar to the weighting explained in section 4.6.1.

## 4.7 Large Tree Growth Relationships

Trees are considered “large trees” for FVS modeling purposes when they are equal to, or larger than, some threshold diameter. This threshold diameter is set to 1.0” for all species in the AK variant.

The large-tree model is driven by diameter growth meaning diameter growth is estimated first, and then height growth is estimated from diameter growth and other variables. These relationships are discussed in the following sections.

### 4.7.1 Large Tree Diameter Growth

The large tree diameter growth model used in most FVS variants is described in section 7.2.1 in Dixon (2002). For most variants, instead of predicting diameter increment directly, the natural log of the periodic change in squared inside-bark diameter (ln(*DDS*)) is predicted (Dixon 2002; Wykoff 1990; Stage 1973; and Cole and Stage 1972). For variants predicting diameter increment directly, diameter increment is converted to the *DDS* scale to keep the FVS system consistent across all variants.

The AK variant uses the following equation set {4.7.1.1 – 4.7.1.3} to calculate annual diameter increment (outside bark) for all species. Equation {4.7.1.1}, with coefficients specified in table 4.7.1.1, is used to estimate a base diameter increment, while equations {4.7.1.2} and {4.7.1.3} are used to adjust the base rate due to permafrost presence/absence (*PFMod*) and to adjust species whose growth form is shrub/tree (*SPAdj*), respectively. Coefficients for species utilizing equation {4.7.1.2} are in table 4.7.1.2. *PFMod* is set to 1.0 for all other species. For species that are of shrub/tree form, diameter increment is adjusted lower based on a general species adjustment. The final growth rate is adjusted for base cycle length and bark thickness to attain a final estimate of the change in inside-bark diameter. There are additional adjustments to scale the estimate to cycle length and apply any user-supplied modifiers.

{4.7.1.1} Used for all species

*BaseDG* = exp(b1 + b2 \* *DBH*^2 + b3 \* ln(*DBH*) + b4 \* *PBAL* + b5 \* *PRD* + b6 \* ln(*CR*) + b7 \* *EL* + b8 \* *SL* + b9 \* *SL* \* cos(*ASP*) + b10 \* ln(*SI*))

{4.7.1.2} Used for species in Table **4.7.1.2**

*PFMod* = exp(b1 + b2 \* *PERM* + b3 \* *DBH*^2 + b4 \* ln(*DBH*) + b5 \* P*BAL* + b6 \* P*RD* + b7 \* ln(*CR*) + b8 \* *EL* + b9 \* *SL* + b10 \* *SL* \* cos(*ASP*)) / *BASEDG*

{4.7.1.3} *DI* = *BASEDG* \* *PFMOD* \* *SPAdj* \* *YR*

where:

*BaseDG* is annual diameter increment (in / year)

DBH is tree diameter at breast height

PBAL is plot basal area in trees larger than the subject tree

PRD is plot level relative density (plot Zeide SDI / plot SDI max)

CR is crown ratio expressed as a percentage

ELis stand elevation (ft)

SL is stand slope expressed as a percent

ASPis stand aspect in radians

SI is species site index

*PFMod* is a permafrost presence modifier

*PERM* is the effect of permafrost presence in a stand (value of 1 if present, 0 if absent)

*DI* is diameter increment for the default cycle length

*SPAdj* is a species adjustment where AD, WI and OH = 0.45, SU = 0.65, and all others = 1.00

*YR* is the default cycle length (10 years)

b1 – b10 are species-specific coefficients

**Table 4.7.1.1 Coefficients (b1 – b10) for the diameter growth equation {4.7.1.1} in the AK variant.**

| **Species Code** | **b1** | **b2** | **b3** | **b4** | **b5** | **b6** | **b7** | **b8** | **b9** | **b10** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| SF | -8.58075 | -0.00044 | 0.033655 | -0.00228 | 0 | 0.819909 | 0 | 0.001604 | 0.00002 | 0.712498 |
| AF | -8.58075 | -0.00044 | 0.033655 | -0.00228 | 0 | 0.819909 | 0 | 0.001604 | 0.00002 | 0.712498 |
| YC | -9.48511 | -0.00044 | 0.081005 | -0.0006 | 0 | 0.819909 | 0 | 0.001604 | 0.00002 | 0.712498 |
| TA | -6.58523 | -0.00228 | 0.152853 | -0.00151 | -0.3532 | 0.727631 | -0.00018 | 0.001225 | -0.00242 | 0 |
| WS | -6.31577 | -0.00228 | 0.480982 | -5.70E-05 | -0.4555 | 0.727631 | -0.00018 | 0.001225 | -0.00242 | 0 |
| LS | -6.31577 | -0.00228 | 0.480982 | -5.70E-05 | -0.4555 | 0.727631 | -0.00018 | 0.001225 | -0.00242 | 0 |
| BE | -6.58523 | -0.00228 | 0.152853 | -0.00151 | -0.3532 | 0.727631 | -0.00018 | 0.001225 | -0.00242 | 0 |
| SS | -8.58075 | -0.00044 | 0.033655 | -0.00228 | 0 | 0.819909 | 0 | 0.001604 | 0.00002 | 0.712498 |
| LP | -9.29779 | -0.00044 | -0.00086 | -0.0006 | 0 | 0.819909 | 0 | 0.001604 | 0.00002 | 0.712498 |
| RC | -9.35712 | -0.00044 | 0.243224 | -0.0006 | 0 | 0.819909 | 0 | 0.001604 | 0.00002 | 0.712498 |
| WH | -9.45806 | -0.00044 | 0.175997 | -0.0006 | 0 | 0.819909 | 0 | 0.001604 | 0.00002 | 0.712498 |
| MH | -9.15538 | -0.00044 | 0.044554 | -0.00058 | 0 | 0.819909 | 0 | 0.001604 | 0.00002 | 0.712498 |
| OS | -6.31577 | -0.00228 | 0.480982 | -5.70E-05 | -0.4555 | 0.727631 | -0.00018 | 0.001225 | -0.00242 | 0 |
| AD | -5.64634 | -0.00228 | 0.212906 | -0.00072 | -0.76363 | 0.727631 | -0.00018 | 0.001225 | -0.00242 | 0 |
| RA | -5.19589 | -0.00228 | 0.425682 | -0.00117 | -0.62382 | 0.727631 | -0.00018 | 0.001225 | -0.00242 | 0 |
| PB | -6.0157 | -0.00228 | 0.35335 | -0.00717 | -0.3532 | 0.727631 | -0.00018 | 0.001225 | -0.00242 | 0 |
| AB | -6.0157 | -0.00228 | 0.35335 | -0.00717 | -0.3532 | 0.727631 | -0.00018 | 0.001225 | -0.00242 | 0 |
| BA | -5.64634 | -0.00228 | 0.212906 | -0.00072 | -0.76363 | 0.727631 | -0.00018 | 0.001225 | -0.00242 | 0 |
| AS | -6.70493 | -0.00228 | 0.669461 | -0.00056 | -0.48014 | 0.727631 | -0.00018 | 0.001225 | -0.00242 | 0 |
| CW | -5.64634 | -0.00228 | 0.212906 | -0.00072 | -0.76363 | 0.727631 | -0.00018 | 0.001225 | -0.00242 | 0 |
| WI | -5.64634 | -0.00228 | 0.212906 | -0.00072 | -0.76363 | 0.727631 | -0.00018 | 0.001225 | -0.00242 | 0 |
| SU | -5.64634 | -0.00228 | 0.212906 | -0.00072 | -0.76363 | 0.727631 | -0.00018 | 0.001225 | -0.00242 | 0 |
| OH | -5.64634 | -0.00228 | 0.212906 | -0.00072 | -0.76363 | 0.727631 | -0.00018 | 0.001225 | -0.00242 | 0 |

**Table 4.7.1.2 Coefficients (b1 – b10) for the permafrost modifier equation {4.7.1.2} in the AK variant.**

| **Species Code** | **b1** | **b2** | **b3** | **b4** | **b5** | **b6** | **b7** | **b8** | **b9** | **b10** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| TA | -6.52972 | -0.34922 | -0.00271 | 0.161256 | -0.00187 | -0.02879 | 0.736013 | -0.00014 | 0.001702 | -0.00182 |
| WS | -6.27434 | -0.34922 | -0.00271 | 0.476859 | -0.00053 | -0.48209 | 0.736013 | -0.00014 | 0.001702 | -0.00182 |
| LS | -6.27434 | -0.34922 | -0.00271 | 0.476859 | -0.00053 | -0.48209 | 0.736013 | -0.00014 | 0.001702 | -0.00182 |
| BE | -6.52972 | -0.34922 | -0.00271 | 0.161256 | -0.00187 | -0.02879 | 0.736013 | -0.00014 | 0.001702 | -0.00182 |
| OS | -6.27434 | -0.34922 | -0.00271 | 0.476859 | -0.00053 | -0.48209 | 0.736013 | -0.00014 | 0.001702 | -0.00182 |
| PB | -6.09354 | -0.34922 | -0.00271 | 0.373362 | -0.00735 | -0.33031 | 0.736013 | -0.00014 | 0.001702 | -0.00182 |
| AB | -6.09354 | -0.34922 | -0.00271 | 0.373362 | -0.00735 | -0.33031 | 0.736013 | -0.00014 | 0.001702 | -0.00182 |
| BA | -5.52778 | -0.34922 | -0.00271 | 0.082885 | -0.00132 | -0.81985 | 0.736013 | -0.00014 | 0.001702 | -0.00182 |
| AS | -6.86117 | -0.34922 | -0.00271 | 0.712862 | -0.00053 | -0.46258 | 0.736013 | -0.00014 | 0.001702 | -0.00182 |
| CW | -5.52778 | -0.34922 | -0.00271 | 0.082885 | -0.00132 | -0.81985 | 0.736013 | -0.00014 | 0.001702 | -0.00182 |
| WI | -5.52778 | -0.34922 | -0.00271 | 0.082885 | -0.00132 | -0.81985 | 0.736013 | -0.00014 | 0.001702 | -0.00182 |
| SU | -5.52778 | -0.34922 | -0.00271 | 0.082885 | -0.00132 | -0.81985 | 0.736013 | -0.00014 | 0.001702 | -0.00182 |
| OH | -5.52778 | -0.34922 | -0.00271 | 0.082885 | -0.00132 | -0.81985 | 0.736013 | -0.00014 | 0.001702 | -0.00182 |

### 4.7.2 Large Tree Height Growth

The AK variant uses the following equation set {4.7.2.1 – 4.7.2.3} to calculate annual height increment for all species. Equation {4.7.2.1}, with coefficients specified in table 4.7.2.1, is used to estimate a base height increment, while equations {4.7.2.2} and {4.7.2.3} are used to adjust the base rate due to permafrost presence/absence (*PFHMod*) and species whose growth form is shrub/tree (*SPAdj*), respectively. Coefficients for species utilizing equation {4.7.2.2} are in table 4.7.2.2. *PFHMod* is set to 1.0 for all other species. For species that are of shrub/tree form, height increment is adjusted lower based on a general species adjustment. The final growth rate is adjusted for base cycle length. There are additional adjustments to scale the estimate to cycle length and apply any user-supplied modifiers.

{4.7.2.1} Used for all species

*BaseHG* = exp(b1 + b2\**DBH*^2 + b3\*ln(*DBH*) + B4\**EL* + B5\*ln(*SI*) + b6\*ln(*DG10*))

{4.7.2.2} Used for species in Table **4.7.2.2**

*PFHMod* = exp(b1 + b2 \* PERM + b3 \**DBH*^2 + b4\*ln(*DBH*) + B5\**EL* + b6\*ln(*DG10*))/ *BASEHG*

{4.7.2.3} *HI* = *BASEHG* \* *PFHMOD \* SPAdj \* YR*

where:

*BaseHG* is annual height increment (in / year)

DBH is tree diameter at breast height

ELis stand elevation (ft)

SI is species site index

*DG10* is 10-year, outside-bark diameter growth

*PFHMod* is a permafrost presence modifier

*PERM* is the effect of permafrost presence in a stand (value of 1 if present, 0 if absent)

*HI* is height increment for the default cycle length

*SPAdj* is a species adjustment where AD, WI and OH = 0.45, SU = 0.65, and all others = 1.00

*YR* is the default cycle length (10 years)

b1 – b6 are species-specific coefficients

**Table 4.7.2.1 Coefficients (b**1 **– b**6**) for height-growth equation {4.7.2.1} in the AK variant.**

| **Species Code** | **b1** | **b2** | **b3** | **b4** | **b5** | **b6** |
| --- | --- | --- | --- | --- | --- | --- |
| SF | -2.18236 | -0.000447 | -0.00488 | 0 | 0.429243 | 0.489281 |
| AF | -2.18236 | -0.000447 | -0.00488 | 0 | 0.429243 | 0.489281 |
| YC | -2.955092 | -0.000447 | 0.125393 | 0 | 0.429243 | 0.376732 |
| TA | -0.663746 | -0.003814 | 0.176358 | -0.000075 | 0 | 0.560124 |
| WS | -0.501134 | -0.003814 | 0.209621 | -0.000075 | 0 | 0.517799 |
| LS | -0.501134 | -0.003814 | 0.209621 | -0.000075 | 0 | 0.517799 |
| BE | -0.663746 | -0.003814 | 0.176358 | -0.000075 | 0 | 0.560124 |
| SS | -2.18236 | -0.000447 | -0.00488 | 0 | 0.429243 | 0.489281 |
| LP | -3.19512 | -0.000447 | 0.166453 | 0 | 0.429243 | 0.342411 |
| RC | -2.979661 | -0.000447 | 0.130947 | 0 | 0.429243 | 0.374658 |
| WH | -2.404892 | -0.000447 | 0.044809 | 0 | 0.429243 | 0.469563 |
| MH | -2.770793 | -0.000447 | 0.099358 | 0 | 0.429243 | 0.408836 |
| OS | -0.501134 | -0.003814 | 0.209621 | -0.000075 | 0 | 0.517799 |
| AD | -0.174905 | -0.003814 | -0.051622 | -0.000075 | 0 | 0.539313 |
| RA | -0.710501 | -0.003814 | 0.396143 | -0.000075 | 0 | 0.195472 |
| PB | -0.306839 | -0.003814 | 0.062956 | -0.000075 | 0 | 0.392915 |
| AB | -0.306839 | -0.003814 | 0.062956 | -0.000075 | 0 | 0.392915 |
| BA | -0.174905 | -0.003814 | -0.051622 | -0.000075 | 0 | 0.539313 |
| AS | -0.630114 | -0.003814 | 0.068496 | -0.000075 | 0 | 0.367413 |
| CW | -0.174905 | -0.003814 | -0.051622 | -0.000075 | 0 | 0.539313 |
| WI | -0.174905 | -0.003814 | -0.051622 | -0.000075 | 0 | 0.539313 |
| SU | -0.174905 | -0.003814 | -0.051622 | -0.000075 | 0 | 0.539313 |
| OH | -0.174905 | -0.003814 | -0.051622 | -0.000075 | 0 | 0.539313 |

**Table 4.7.2.2 Coefficients (b**1 **– b**6**) for height-growth equation {4.7.2.2} in the AK variant.**

| **Species Code** | **b1** | **b2** | **b3** | **b4** | **b5** | **b6** |
| --- | --- | --- | --- | --- | --- | --- |
| TA | -0.661722 | -0.130016 | -0.003807 | 0.17915 | -0.000067 | 0.53748 |
| WS | -0.509243 | -0.130016 | -0.003807 | 0.221303 | -0.000067 | 0.50946 |
| LS | -0.509243 | -0.130016 | -0.003807 | 0.221303 | -0.000067 | 0.50946 |
| BE | -0.661722 | -0.130016 | -0.003807 | 0.17915 | -0.000067 | 0.53748 |
| OS | -0.509243 | -0.130016 | -0.003807 | 0.221303 | -0.000067 | 0.50946 |
| PB | -0.299268 | -0.130016 | -0.003807 | 0.057156 | -0.000067 | 0.3977 |
| AB | -0.299268 | -0.130016 | -0.003807 | 0.057156 | -0.000067 | 0.3977 |
| BA | -0.148618 | -0.130016 | -0.003807 | -0.075692 | -0.000067 | 0.55662 |
| AS | -0.617425 | -0.130016 | -0.003807 | 0.060586 | -0.000067 | 0.37556 |
| CW | -0.148618 | -0.130016 | -0.003807 | -0.075692 | -0.000067 | 0.55662 |
| WI | -0.148618 | -0.130016 | -0.003807 | -0.075692 | -0.000067 | 0.55662 |
| SU | -0.148618 | -0.130016 | -0.003807 | -0.075692 | -0.000067 | 0.55662 |

A height growth bounding function is used to ensure tree heights do not exceed, to a large extent, the species height maximums. The bounding function is applied using the following concepts. For a tree with height less than the lower height-bounding limit, the height growth modifier is set to 1.0. For a tree with a height greater than or equal to the lower height-bounding limit and less than the upper height-bounding limit, a height growth modifier is computed using equation {4.7.2.4}. For a tree with a height greater than the upper height-bounding limit, the height growth modifier is set to 0.1. The species lower limits were determined from the height growth fitting data and the maximum limits were determined from HT-DBH relationships and a few judgement calls based on a literature. The bounding limits for the height growth bounding function are in table 4.7.2.3. The final height increment estimate is multiplied by the bounding function, equation {4.7.2.5}.

{4.7.2.4} *HGBND* = 1.0 – ((*HT* - *HTLO*) / (*HTHI*- *HTLO*))

{4.7.2.5} *HI* = *HI* \* *HGBND*

where:

*HGBND* is height growth bounding modifier, limited to 0.1 <u><</u> *HGBND* <u><</u> 1.0

*HT* is the total tree height (ft)

*HTLO* is the lower height-bounding limit

*HTHI*is the upper height-bounding limit

**Table 4.7.2.3 Bounds for the height growth bounding equation {4.7.2.4} in the AK variant.**

| **Species Code** | ***HTLO*** | ***HTHI*** | **Species Code** | ***HTLO*** | ***HTHI*** | **Species Code** | ***HTLO*** | ***HTHI*** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| SF | 131 | 211 | LP | 70 | 98 | AB | 77 | 102 |
| AF | 83 | 150 | RC | 102 | 151 | BA | 84 | 130 |
| YC | 92 | 139 | WH | 130 | 214 | AS | 76 | 102 |
| TA | 47 | 77 | MH | 83 | 150 | CW | 84 | 130 |
| WS | 78 | 123 | OS | 78 | 123 | WI | 38 | 59 |
| LS | 78 | 123 | AD | 38 | 59 | SU | 55 | 85 |
| BE | 47 | 77 | RA | 86 | 120 | OH | 38 | 59 |
| SS | 131 | 211 | PB | 77 | 102 |  |  |  |

# 5.0 Mortality Model

All species in the AK variant use annualized individual tree survival equations for estimating mortality. The annual probability of survival is based on a tree’s size and competitive status. Equation 5.0.1 is used to calculate the annual survival rate for all species.

{5.0.1} RIP = (EXP(X)/(1 + EXP(X)))

X = b1 + b2\**DBH* + b3\**DBH^*2 + b4\**PTBAL* + b5\**BAL*/*DBH*

where:

RIP is annual individual tree survival rate

DBH is tree diameter at breast height, set to *DSURV* when *DBH* is less than *DSURV*

PTBAL plot level basal area in trees larger than subject tree

b1 – b5 are species-specific coefficients shown in table 5.01

**Table 5.0.1 Coefficients used in the survival equation {5.0.1} in the AK variant.**

| **Species Code** | **b1** | **b2** | **b3** | **b4** | **b5** | ***DSURV*** |
| --- | --- | --- | --- | --- | --- | --- |
| SF | 5.106086 | 0.036136 | -0.000634 | 0.0 | -0.010747 | 0.50 |
| AF | 5.106086 | 0.036136 | -0.000634 | 0.0 | -0.010747 | 0.50 |
| YC | 5.334283 | 0.036136 | -0.001034 | 0.0 | -0.004540 | 0.50 |
| TA | 5.129246 | 0.402707 | -0.051774 | -0.004365 | 0.0 | 0.10 |
| WS | 4.585373 | 0.402707 | -0.020537 | -0.004414 | 0.0 | 0.10 |
| LS | 4.585373 | 0.402707 | -0.020537 | -0.004414 | 0.0 | 0.10 |
| BE | 5.129246 | 0.402707 | -0.051774 | -0.004365 | 0.0 | 0.10 |
| SS | 5.106086 | 0.036136 | -0.000634 | 0.0 | -0.010747 | 0.50 |
| LP | 4.935148 | 0.036136 | -0.000850 | 0.0 | -0.008488 | 0.50 |
| RC | 6.090056 | 0.036136 | -0.000745 | 0.0 | -0.005608 | 0.50 |
| WH | 5.120483 | 0.036136 | -0.00105 | 0.0 | -0.005131 | 0.50 |
| MH | 5.440943 | 0.036136 | -0.000942 | 0.0 | -0.005375 | 0.50 |
| OS | 4.585373 | 0.402707 | -0.020537 | -0.004414 | 0.0 | 0.10 |
| AD | 2.651991 | 0.402707 | -0.011288 | -0.002557 | 0.0 | 0.10 |
| RA | 2.987803 | 0.402707 | -0.014038 | -0.005462 | 0.0 | 0.10 |
| PB | 3.255821 | 0.402707 | -0.018658 | -0.007307 | 0.0 | 0.10 |
| AB | 3.255821 | 0.402707 | -0.018658 | -0.007307 | 0.0 | 0.10 |
| BA | 2.651991 | 0.402707 | -0.011288 | -0.002557 | 0.0 | 0.10 |
| AS | 2.833541 | 0.402707 | -0.015719 | -0.010755 | 0.0 | 0.10 |
| CW | 2.651991 | 0.402707 | -0.011288 | -0.002557 | 0.0 | 0.10 |
| WI | 2.651991 | 0.402207 | -0.011288 | -0.002557 | 0.0 | 0.10 |
| SU | 2.651991 | 0.402207 | -0.011288 | -0.002557 | 0.0 | 0.10 |
| OH | 2.651991 | 0.402207 | -0.011288 | -0.002557 | 0.0 | 0.10 |

The estimated annual survival rates are adjusted for the length of a projection cycle using a compound interest formula (Hamilton 1976). The adjusted survival rates are then converted to mortality rates as defined in equation {5.0.2} and then applied to the trees per acre represented by the tree record in a stand. If the stand density is above the maximum stand density index (or basal area maximum) after the rates are applied, the predicted mortality rates are reapplied to each tree record until the stand is below the maximum density.

{5.0.2} WKI = P \* (1 – RIP^Y*) \* X*

where:

WKI is individual tree mortality rate adjusted to the length of the cycle

P is trees per acre represented by the tree record

RIP is annual individual tree survival rate

Y is length of the current projection cycle in years

X is any user-supplied mortality multipliers

# 6.0 Regeneration

The AK variant contains a full establishment model which is explained in section 5.4.2 of the Essential FVS Users Guide (Dixon 2002). In short, the full establishment model automatically adds regeneration from advanced, subsequent, and excess regeneration pools following significant stand disturbances and adds ingrowth absent of disturbance every 20 years. Automatic regeneration and ingrowth occurrence are based on the user-defined or calculated forest type for the stand. If a valid forest type is not found, no species are added. Species occurrence by valid forest type is found in table 6.0.1.

**Table 6.0.1 Species occurrence by valid forest types resulting in automatic regeneration and ingrowth in the AK variant.**

|  |  |  |
| --- | --- | --- |
| **FIA Forest Type1** | **Description** | **Species included in automatic tallies and ingrowth** |
| 122 | white spruce | TA, WS, BE, MH, PB, BA, AS |
| 125 | black spruce | TA, WS, BE, PB, BA, AS |
| 270, 268 | mountain hemlock | YC, WS, SS, LP, WH, MH |
| 271 | Alaska cedar | YC, SS, LP, RC, WH, MH, RA |
| 281 | lodgepole pine | YC, SS, LP, RC, WH, MH, RA |
| 301, 264 | western hemlock | YC, SS, LP, RC, WH, MH, RA |
| 304 | western redcedar | YC, SS, LP, RC, WH, MH, RA |
| 305 | Sitka spruce | YC, SS, RC, WH, MH, RA |
| 703, 704, 709 | cottonwood | WS, BE, SS, WH, PB, CW |
| 901 | aspen | TA, WS, BE, PB, BA, AS |
| 902 | paper birch | TA, WS, BE, SS, MH, PB, BA, AS |
| 904 | balsam poplar | TA, WS, BE, MH, PB, BA, AS |
| 911 | red alder | SS, WH, RA |

1First forest type listed was used to fit data and additional forest types listed are mapped to first.

There are thirteen steps to predicting and adding automatic regeneration and ingrowth to a simulation, see table 6.0.2. This process is based on probability equations that take into consideration stand and plot location (latitude); abiotic factors such as slope, aspect, and elevation; density; plot composition; and forest type random effects. Further description is beyond the scope of explanation offered in this overview.

**Table 6.0.2 Key processes for predicting automatic regeneration and ingrowth in the AK variant.**

| **Step** | **Description** |
| --- | --- |
| 1 | initialize and replicate plots |
| 2 | perform calibration tasks |
| 3 | compute years since disturbance |
| 4 | calculate stocking and species probabilities |
| 5 | estimate the number of regenerating trees per plot |
| 6 | estimate the number of regenerating species per plot |
| 7 | pick species to occupy plots |
| 8 | estimate heights of best trees |
| 9 | add planted trees |
| 10 | identify best trees |
| 11 | accumulate plot statistics |
| 12 | pass regeneration to treelist |
| 13 | print regeneration summary |

In addition to automatic regeneration and ingrowth, sprouts are added to the simulation following harvest or burning resulting in main stem loss of known sprouting species, see table 6.0.3 for sprouting species. Users may also input regeneration and ingrowth into simulations manually through establishment model keywords as explained in section 5.4.3 of the Essential FVS Users Guide (Dixon 2002). The following description applies to how sprouting occurs and entering regeneration and ingrowth through keywords.

**Table 6.0.3 Regeneration parameters by species in the AK variant.**

| **Species Code** | **Sprouting Species** | **Minimum Bud Width (in)** | **Minimum Tree Height (ft)** | **Maximum Tree Height (ft)** |
| --- | --- | --- | --- | --- |
| SF | No | 0.3 | 1.0 | 20.0 |
| AF | No | 0.3 | 0.5 | 20.0 |
| YC | No | 0.3 | 0.5 | 12.0 |
| TA | No | 0.2 | 0.5 | 13.0 |
| WS | No | 0.4 | 0.5 | 13.0 |
| LS | No | 0.4 | 0.5 | 13.0 |
| BE | No | 0.2 | 0.5 | 13.0 |
| SS | No | 0.4 | 0.5 | 20.0 |
| LP | No | 0.4 | 1.0 | 9.0 |
| RC | No | 0.3 | 0.5 | 15.0 |
| WH | No | 0.3 | 0.5 | 19.0 |
| MH | No | 0.3 | 0.5 | 10.0 |
| OS | No | 0.4 | 0.5 | 13.0 |
| AD | Yes | 0.2 | 1.0 | 7.6 |
| RA | Yes | 0.2 | 1.0 | 30.0 |
| PB | Yes | 0.1 | 1.0 | 20.0 |
| AB | Yes | 0.1 | 1.0 | 20.0 |
| BA | Yes | 0.2 | 1.0 | 16.9 |
| AS | Yes | 0.3 | 1.0 | 18.0 |
| CW | Yes | 0.2 | 1.0 | 16.9 |
| WI | Yes | 0.1 | 1.0 | 7.6 |
| SU | Yes | 0.1 | 1.0 | 11.0 |
| OH | No | 0.2 | 1.0 | 7.6 |

Logic rule {6.0.1} is used to determine the number of sprout records for balsam poplar and black cottonwood, two sprout records are created for quaking aspen, and one sprout record is created for all other species. The trees-per-acre represented by each sprout record is determined using general sprouting probability equation {6.0.2} and probability of sprouting equations in {6.0.3} through {6.0.7}. See table 6.0.4 for species-specific sprouting probabilities and reference information.

Users wanting to modify or turn off automatic sprouting can do so with the SPROUT or NOSPROUT keywords, respectively. Sprouts are not subject to maximum and minimum tree heights found in table 6.0.3 and do not need to be grown to the end of the cycle because estimated heights and diameters are end of cycle values.

{6.0.1} Number of sprout records

*DSTMPi* < 5: NUMSPRC = 1

5 <= *DSTMPi* < 10: NUMSPRC = NINT(-1.0 + 0.4 \* *DSTMPi*)

*DSTMPi* >= 10: NUMSPRC = 3

{6.0.2} TPAs = *TPAi* \* *PS*

{6.0.3} Probability of sprouting

*DSTMPi* < 25.9: *PS =* ((99.9999 - 3.8462 \* *DSTMPi*) / 100),

*DSTMPi* >= 25.9: *PS =* 0.

{6.0.4} Probability of sprouting

*DSTMPi* < 6.0: *PS =* 0.92

*6.0 <= DSTMPi* < 9.0: *PS =* -0.1333 \* *DSTMPi* + 1.70

*DSTMPi* >= 9.0: *PS =* 0.50

{6.0.5} Probability of sprouting

*DSTMPi* < 6.25: *PS =* 0.39

6.25 <= *DSTMPi* < 8.75, *PS =* 0.32

*DSTMPi* >= 9.0: *PS =* 0.25

{6.0.6} Probability of sprouting

*PS =* (*TPAi* / (*ASTPAR* \* 2)) \* ((*ASBAR* / 198) \* (40100.45 - 3574.02 \* *RSHAG* ^ 2 + 554.02 \* *RSHAG* ^ 3 - 3.5208 \* *RSHAG* ^ 5 + 0.011797 \* *RSHAG* ^ 7))

{6.0.7} Probability of sprouting

*PS =* 0.90

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

**Table 6.0.2 Sprouting algorithm parameters for sprouting species in the AK variant.**

|  |  |  |
| --- | --- | --- |
| **Species Code** | **Sprouting Probability** | **Source** |
| AD, RA | {6.0.3} | Harrington (1984)  Uchytil (1989) |
| PB, AB | {6.0.4} | Hutnik and Cunningham (1965)  Bjorkbom (1972) |
| BA, CW | {6.0.5} | Zasada (1981) |
| AS | {6.0.6} | Keyser (2001) |
| WI, SU | {6.0.7} | Burns and Honkala (1990) |

Regeneration of seedlings may be specified by using PLANT or NATURAL keywords. Height of the seedlings is estimated in two steps. First, the height is estimated when a tree is 5 years old (or the end of the cycle – whichever comes first) by using the small-tree height growth equations found in section 4.6.1. Users may override this value by entering a height in field 6 of the PLANT or NATURAL keyword; however, the height entered in field 6 is not subject to minimum height restrictions and seedlings as small as 0.05 feet may be established. The second step also uses the equations in section 4.6.1, which grow the trees in height from the point five years after establishment to the end of the cycle.

Seedlings and sprouts are passed to the main FVS model at the end of the growth cycle in which regeneration is established. Unless noted above, seedlings being passed are subject to minimum and maximum height constraints and a minimum budwidth constraint shown in table 6.0.3. After seedling height is estimated, diameter growth is estimated using equations described in section 4.6.2. Crown ratios on newly established trees are estimated as described in section 4.3.1.

Regenerated trees and sprouts can be identified in the treelist output file with tree identification numbers beginning with the letters “ES”.

# 7.0 Volume

In the AK variant, volume is calculated for four merchantability standards: total stem cubic feet, merchantable stem cubic feet, sawlog stem cubic feet, and merchantable stem board feet (Scribner Decimal C). Sawlog cubic foot volume is only reported when the FIAVBC keyword is in use. Volume estimation is based on methods contained in the National Volume Estimator Library maintained by the Forest Products Measurements group in the Forest Management Service Center (Volume Estimator Library Equations 2009). The default merchantability standards and equation numbers for the AK variant are shown in tables 7.0.1 – 7.0.3.

Volume computation methods used by the Forest Inventory and Analysis (FIA) program can be requested with the FIAVBC keyword. This keyword encompasses the National Scale Volume and Biomass estimators (NSVB; Westfall et al. 2024) and regional equations used for woodland species (Burrill et al. 2024). More information about the FIAVBC keyword and required input variables can be found in the Essential FVS Guide (Dixon 2002).

**Table 7.0.1 Volume merchantability standards by location code for the AK variant.** **Stump Height is set to 1.0 foot**.

|  |  |  |
| --- | --- | --- |
| **Location Code** | **Merchantable Cubic Foot** (Minimum DBH / Top Diameter) | **Merchantable Board Foot** (Minimum DBH / Top Diameter) |
| 713 | 6.0 / 4.0 inches | 9.0 / 6.0 inches |
| 703, 1002, 1003, 1005, 8134, 8135, 8112 | 9.0 / 7.0 inches | 9.0 / 7.0 inches |
| 1004 | 9.0 / 6.0 inches | 9.0 / 6.0 inches |
| 720, 7400, 7401, 7402,7403, 7404, 7405, 7406, 7407, 7408 | 5.0 / 4.0 inches | 9.0 / 6.0 inches |

**Table 7.0.2 Volume equation defaults for each species, at specific location codes, with model name.**

| **Species Code** | **Volume Category1** | **Equation Number2** | **Model Name** |
| --- | --- | --- | --- |
| SF | 1 | A00F32W260 | Flewelling Profile-32ft Log Rule |
| SF | 2 | A01DEMW000 | Demars Profile Model |
| AF | 1 | A00F32W260 | Flewelling Profile-32ft Log Rule |
| AF | 2 | A01DEMW000 | Demars Profile Model |
| YC | 1 | A00F32W042 | Flewelling Profile-32ft Log Rule |
| YC | 2 | A00DVEW094 | Larson Volume Equation |
| TA | 1,2 | A00DVEW094 | Larson Volume Equation |
| WS | 1,2 | A00DVEW094 | Larson Volume Equation |
| LS | 1,2 | A00DVEW094 | Larson Volume Equation |
| BE | 1,2 | A00DVEW094 | Larson Volume Equation |
| SS | 1,2 | A00F32W098 | Flewelling Profile-32ft Log Rule |
| LP | 1 | A00F32W260 | Flewelling Profile-32ft Log Rule |
| LP | 2 | A01DEMW000 | Demars Profile Model |
| RC | 1 | A00F32W242 | Flewelling Profile-32ft Log Rule |
| RC | 2 | A01DEMW000 | Demars Profile Model |
| WH | 1,2 | A00F32W260 | Flewelling Profile-32ft Log Rule |
| MH | 1 | A00F32W260 | Flewelling Profile-32ft Log Rule |
| MH | 2 | A01DEMW000 | Demars Profile Model |
| OS | 1,2 | A00DVEW094 | Larson Volume Equation |
| AD | 1,2 | A00DVEW747 | Larson Volume Equation |
| RA | 1,2 | A32CURW351 | Curtis Profile Model-32ft Log Rule |
| PB | 1,2 | A00DVEW375 | Larson Volume Equation |
| AB | 1,2 | A00DVEW375 | Larson Volume Equation |
| BA | 1,2 | A00DVEW747 | Larson Volume Equation |
| AS | 1,2 | A00DVEW375 | Larson Volume Equation |
| CW | 1,2 | A00DVEW747 | Larson Volume Equation |
| WI | 1,2 | A00DVEW747 | Larson Volume Equation |
| SU | 1,2 | A00DVEW747 | Larson Volume Equation |
| OH | 1,2 | A00DVEW747 | Larson Volume Equation |

**1 Volume category 1 location codes:** 703, 1002, 1003, 1005, 8112, 8134, 8135. **Volume category 2 location codes:** 713, 720, 1004, 7400, 7401, 7402, 7403, 7404, 7405, 7406, 7407, 7408.

**2Additional equation numbers are available using the VOLEQNUM keyword.**

**Table 7.0.3 Citations by Volume Model.**

| **Model Name** | **Citation** |
| --- | --- |
| Curtis Profile Model-32ft Log Rule | Curtis, Robert O, David Bruce, and Caryanne VanCoevering. 1968. Volume and Taper Tables for Red Alder. Pacific Northwest Forest and Range Exp. Sta. Research Paper PNW-56. |
| Demars Profile Model | Bruce, D., 1984. Volume estimators for Sitka spruce and western hemlock in coastal Alaska. In Inventorying forest and other vegetation of the high latitude and high altitude regions. SAF pub 84-11. Bethesada, MD. pp. 96-102. |
| Flewelling Profile-32ft Log Rule | Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II. |
| Larson Volume Equation | Larson, Frederic R. and Kenneth C Winterberger. 1988. Tables and Equations for Estimating Volumes of trees in the Susitna River Basin, Alaska. Pacific Northwest Research Station Research Note PNW-478. |

# 8.0 Fire and Fuels Extension (FFE-FVS)

The Fire and Fuels Extension to the Forest Vegetation Simulator (FFE-FVS) (Reinhardt and Crookston 2003) integrates FVS with models of fire behavior, fire effects, and fuel and snag dynamics. This allows users to simulate various management scenarios and compare their effect on potential fire hazard, surface fuel loading, snag levels, and stored carbon over time. Users can also simulate prescribed burns and wildfires and get estimates of the associated fire effects such as tree mortality, fuel consumption, and smoke production, as well as see their effect on future stand characteristics. FFE-FVS, like FVS, is run on individual stands, but it can be used to provide estimates of stand characteristics such as canopy base height and canopy bulk density when needed for landscape-level fire models.

For more information on FFE-FVS and how it is calibrated for the AK variant, refer to the updated FFE-FVS model documentation (Rebain, comp. 2010) available on the FVS website.

# 9.0 Insect and Disease Extensions

The FVS Insect and Pathogen model for dwarf mistletoe has been developed for the AK variant through the participation and contribution of various organizations led by Forest Health Protection. This model is currently maintained by the Forest Management Service Center and regional Forest Health Protection specialists. Additional details regarding this model may be found in chapter 8 of the Essential FVS Users Guide (Dixon 2002).

# 10.0 Literature Cited

Bjorkbom, John C. 1972. Stand changes in the first 10 years after seedbed preparation for paper birch. USDA Forest Service, Research Paper NE-238. Northeastern Forest Experiment Station, Upper Darby, PA. 10 p.

Bruce, D., 1984. Volume estimators for Sitka spruce and western hemlock in coastal Alaska. In Inventorying forest and other vegetation of the high latitude and high altitude regions. SAF pub 84-11. Bethesada, MD. pp. 96-102.

Burns, R. M., & Honkala, B. H. 1990. Silvics of North America: 1. Conifers; 2. Hardwoods Agriculture Handbook 654. US Department of Agriculture, Forest Service, Washington, DC.

Burrill, Elizabeth A.; DiTommaso, Andrea M.; Turner, Jeffery A.; Pugh, Scott A.; Christensen, Glenn; Kralicek, Karin M.; Perry, Carol J.; Lepine, Lucie C.; Walker, David M.; Conkling, Barbara L. 2024. The Forest Inventory and Analysis Database, FIADB user guides, volume: database description (version 9.3), nationwide forest inventory (NFI). U.S. Department of Agriculture, Forest Service. 1026 p. [Online].

Cole, D. M.; Stage, A. R. 1972. Estimating future diameters of lodgepole pine. Res. Pap. INT-131. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 20p.

Crookston, Nicholas. 2005. Draft: Allometric Crown Width Equations for 34 Northwest United States Tree Species Estimated Using Generalized Linear Mixed Effect Models.

Curtis, Robert O, David Bruce, and Caryanne VanCoevering. 1968. Volume and Taper Tables for Red Alder. Pacifc Northwest Forest and Range Exp. Sta. Research Paper PNW-56.

Dixon, Gary E. comp. 2002 (revised frequently). Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U.S. Department of Agriculture, Forest Service, Forest Management Service Center.

Donnelly, Dennis. 1996. Internal Document On File. Fort Collins, CO: Data provided from region 6.

Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II.

Harrington, Constance A. 1984. Factors influencing initial sprouting of red alder. Canadian Journal of Forest Research. 14: 357-361.

Hegyi, F.; Jelink, J.J.; Viszlai, J.; Carpenter, D.B. 1979. Site Index Equations and Curves for the Major Tree Species in British Columbia. Forest Inv. Rep. No. 1. Ministry of Forests Victoria, BC. November 1979, revised September 1981.

Hutnik, Russell J., and Frank E. Cunningham. 1965. Paper birch (Betula papyrifera Marsh.). In Silvics of forest trees of the United States. p. 93-98. H. A. Fowells, comp. U.S. Department of Agriculture, Agriculture Handbook 271. Washington, DC.

Keyser, C.E. 2001. Quaking Aspen Sprouting in Western FVS Variants: A New Approach. Unpublished Manuscript.

Krajicek, J.; Brinkman, K.; Gingrich, S. 1961. Crown competition – a measure of density. Forest Science. 7(1):35-42

Larson, Frederic R. and Kenneth C Winterberger. 1988. Tables and Equations for Estimating Volumes of trees in the Susitna River Basin, Alaska. Pacific Northwest Research Station Research Note PNW-478.

Malone, T., Liang, J. and Packee Sr, E.C., 2013. Total and merchantable volume of white spruce in Alaska. *Western Journal of Applied Forestry*, *28*, pp.71-77.

Paine, D.P., and D.W. Hann. 1982. Maximum crown width equations for southwestern Oregon tree species. For. Res. Lab., Oregon State Univ., Corvallis, OR. Res. Pap. 46. 20 p.

Payandeh, B. 1974. Nonlinear site index equations for several major Canadian timber species. The Forestry Chronicle. 194- 196.

Rebain, Stephanie A. comp. 2010 (revised frequently). The Fire and Fuels Extension to the Forest Vegetation Simulator: Updated Model Documentation. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 379 p.

Reinhardt, Elizabeth; Crookston, Nicholas L. (Technical Editors). 2003. The Fire and Fuels Extension to the Forest Vegetation Simulator. Gen. Tech. Rep. RMRS-GTR-116. Ogden, UT: U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station. 209 p.

Rijal, Baburam; Weiskittel, Aaron, and Kershaw, John. (2012). Development of regional height to diameter equations for 15 tree species in the North American Acadian Region. Forestry. 85. 379-390.

Russell, M.B. and Weiskittel, A.R., 2011. Maximum and largest crown width equations for 15 tree species in Maine. Northern Journal of Applied Forestry, 28(2), pp.84-91.

Smith, J.H.G., 1966, June. Studies of crown development are improving Canadian forest management. In Proceedings of the sixth world forestry congress (pp. 6-18).

Stage, A. R. 1973. Prognosis Model for stand development. Res. Paper INT-137. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 32p.

Taylor, R.F., 1934. Yield of second-growth western hemlock-Sitka spruce stands in southeastern Alaska (No. 1488-2016-124553).

Uchytil, Ronald J. 1989. Alnus rubra. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory.

-----. 2009(revised frequently). Volume Estimator Library Equations. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

Westfall, James A.; Coulston, John W.; Gray, Andrew N.; Shaw, John D.; Radtke, Philip J.; Walker, David M.; Weiskittel, Aaron R.; MacFarlane, David W.; Affleck, David L.R.; Zhao, Dehai; Temesgen, Hailemariam; Poudel, Krishna P.; Frank, Jereme M.; Prisley, Stephen P.; Wang, Yingfang; Sánchez Meador, Andrew J.; Auty, David; Domke, Grant M. 2024. A national-scale tree volume, biomass, and carbon modeling system for the United States. Gen. Tech. Rep. WO-104. Washington, DC: U.S. Department of Agriculture, Forest Service. 37 p.

Wykoff, W. R. 1990. A basal area increment model for individual conifers in the northern Rocky Mountains. For. Science 36(4): 1077-1104.

Wykoff, William R., Crookston, Nicholas L., and Stage, Albert R. 1982. User’s guide to the Stand Prognosis Model. Gen. Tech. Rep. INT-133. Ogden, UT: Forest Service, Intermountain Forest and Range Experiment Station. 112p.

Zasada, J. C., Viereck, L. A., Foote, M. J., Parkenson, R. H., Wolff, J. O., and Landford, L. A. 1981. Natural regeneration of balsam poplar following harvesting in the Sustitna Valley, Alaska. The Forestry Chronicle, 4: 57-65.

# 11.0 Appendices

There are no appendices to the AK variant.The U.S. Department of Agriculture (USDA) prohibits discrimination in all its programs and activities on the basis of race, color, national origin, sex, religion, age, disability, political beliefs, sexual orientation, or marital or family status. (Not all prohibited bases apply to all programs.) Persons with disabilities who require alternative means for communication of program information (Braille, large print, audiotape, etc.) should contact USDA’s TARGET Center at (202) 720-2600 (voice and TDD).

To file a complaint of discrimination, write USDA, Director, Office of Civil Rights, Room 326-W, Whitten Building, 1400 Independence Avenue, SW, Washington, DC 20250-9410 or call (202) 720-5964 (voice or TDD). USDA is an equal opportunity provider and employer.