Kootenai, Kaniksu, and Tally Lake (KT) Variant Overview of the Forest Vegetation Simulator

September 2025

![](data:image/jpeg;base64...)

Flathead National Forest

(Amanda Smiley, FS-R1-Flathead NF)

Kootenai, Kaniksu, and Tally Lake (KT) Variant Overview of the Forest Vegetation Simulator

# Authors and Contributors:

The FVS staff has maintained model documentation for this variant in the form of a variant overview since its release in 1994. The original authors were Renate Bush and Jim Brickell. In 2008, the previous document was replaced with this updated variant overview. Gary Dixon, Christopher Dixon, Robert Havis, Chad Keyser, Stephanie Rebain, Erin Smith-Mateja, and Don Vandendriesche were involved with this update. Robert Havis cross-checked information contained in this variant overview with the FVS source code.

FVS Staff. 2008 (revised September 23, 2025). Kootenai, Kaniksu, and Tally Lake (KT) Variant Overview – Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 49p.

Table of Contents

[Authors and Contributors: ii](#_Toc209542496)

[1.0 Introduction 1](#_Toc209542497)

[2.0 Geographic Range 2](#_Toc209542498)

[3.0 Control Variables 3](#_Toc209542499)

[3.1 Location Codes 3](#_Toc209542500)

[3.2 Species Codes 4](#_Toc209542501)

[3.3 Habitat Type, Plant Association, and Ecological Unit Codes 5](#_Toc209542502)

[3.4 Site Index 5](#_Toc209542503)

[3.5 Maximum Density 5](#_Toc209542504)

[4.0 Growth Relationships 7](#_Toc209542505)

[4.1 Height-Diameter Relationships 7](#_Toc209542506)

[4.2 Bark Ratio Relationships 7](#_Toc209542507)

[4.3 Crown Ratio Relationships 8](#_Toc209542508)

[4.3.1 Crown Ratio Dubbing 8](#_Toc209542509)

[4.3.2 Crown Ratio Change 11](#_Toc209542510)

[4.3.3 Crown Ratio for Newly Established Trees 12](#_Toc209542511)

[4.4 Crown Width Relationships 12](#_Toc209542512)

[4.5 Crown Competition Factor 13](#_Toc209542513)

[4.6 Small Tree Growth Relationships 14](#_Toc209542514)

[4.6.1 Small Tree Height Growth 14](#_Toc209542515)

[4.6.2 Small Tree Diameter Growth 21](#_Toc209542516)

[4.7 Large Tree Growth Relationships 23](#_Toc209542517)

[4.7.1 Large Tree Diameter Growth 23](#_Toc209542518)

[4.7.2 Large Tree Height Growth 29](#_Toc209542519)

[5.0 Mortality Model 31](#_Toc209542520)

[6.0 Regeneration 35](#_Toc209542521)

[7.0 Volume 37](#_Toc209542522)

[8.0 Fire and Fuels Extension (FFE-FVS) 39](#_Toc209542523)

[9.0 Insect and Disease Extensions 40](#_Toc209542524)

[10.0 Literature Cited 41](#_Toc209542525)

[11.0 Appendices 43](#_Toc209542526)

[11.1 Appendix A. Habitat Codes 43](#_Toc209542527)

Quick Guide to Default Settings

| **Parameter or Attribute** | **Default Setting** | | |
| --- | --- | --- | --- |
| Number of Projection Cycles | 1 (10 if using FVS GUI) | | |
| Projection Cycle Length | 10 years | | |
| Location Code (National Forest) | 114 – Kootenai National Forest | | |
| Plant Association Code | 571(TSHE/CLUN/CLUN) | | |
| Slope | 30 percent | | |
| Aspect | 45 degrees | | |
| Elevation | 35 (3500 feet) | | |
| Latitude / Longitude | Latitude | | Longitude |
| All location codes | 48.5 | | 116 |
| Site Species | Not used | | |
| Site Index | Not used | | |
| Maximum Stand Density Index | Based on maximum basal area | | |
| Maximum Basal Area | Habitat type specific | | |
| Volume Equations | National Volume Estimator Library | | |
| Merchantable Cubic Foot Volume Specifications: | | | |
| Minimum DBH / Top Diameter | LP | | All Other |
| All other location codes | 6.0 / 4.5 inches | | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | | 1.0 foot |
| Merchantable Board Foot Volume Specifications: | | | |
| Minimum DBH / Top Diameter | LP | All Other | |
| All other location codes | 6.0 / 4.5 inches | 7.0 / 4.5 inches | |
| Stump Height | 1.0 foot | 1.0 foot | |
| Sampling Design: | | | |
| Basal Area Factor | 40 BAF | | |
| Small-Tree Fixed Area Plot | 1/300th Acre | | |
| Breakpoint DBH | 5.0 inches | | |

#

# 1.0 Introduction

The Forest Vegetation Simulator (FVS) is an individual tree, distance independent growth and yield model with linkable modules called extensions, which simulate various insect and pathogen impacts, fire effects, fuel loading, snag dynamics, and development of understory tree vegetation. FVS can simulate a wide variety of forest types, stand structures, and pure or mixed species stands.

New “variants” of the FVS model are created by imbedding new tree growth, mortality, and volume equations for a particular geographic area into the FVS framework. Geographic variants of FVS have been developed for most of the forested lands in United States.

The original North Idaho (NI) variant included the Kootenai, Kaniksu, and Flathead National Forests. Validation studies using the NI variant showed some biases in simulations for the Kootenai NF, Kaniksu NF, and Tally Lake Ranger District of the Flathead National Forest. As a result, Region 1 requested a new variant covering these areas. The KT variant, sometimes called the KOOKANTL variant, was developed in 1994.

Data used to develop the KT variant came from growth sample trees (GST) from National Forests in northern Idaho and western Montana. Due to the small number of mountain hemlock in the database, no new small- or large-tree growth equations were formulated for this species, equations and coefficients from the North Idaho (NI) variant were used for these species.

To fully understand how to use this variant, users should also consult the following publication:

* Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002)

This publication may be downloaded from the Forest Management Service Center (FMSC), Forest Service website. Other FVS publications may be needed if one is using an extension that simulates the effects of fire, insects, or diseases.

# 2.0 Geographic Range

The KT variant covers forest areas in the northern tip of Idaho and the northwestern corner of Montana. This includes Kootenai National Forest, Kaniksu National Forest, and Tally Lake Ranger District of the Flathead National Forest. The KT variant may also be used to model some forests in eastern Washington and northern Montana. The geographic range of the KT variant overlaps the range of the Inland Empire variant; however, where the variants overlap, users may choose to use the KT variant. The suggested geographic range of use for the KT and IE variants is shown in figure 2.0.1.

![Picture of the suggested range of use for the KT and IE variants.](data:image/jpeg;base64...)

**Figure 2.0.1 Suggested geographic range of use for the KT and IE variants.**

# 3.0 Control Variables

FVS users need to specify certain variables used by the KT variant to control a simulation. These are entered in parameter fields on various FVS keywords available in the FVS interface or they are read from an FVS input database using the Database Extension.

## 3.1 Location Codes

Locations codes in the KT variant are delineated by Forest Service region, forest, district and compartment number. The location code is a 8-digit code where the first digit of the code represents the Forest Service Region Number(R), the next two digits represent the Forest Number (FF), the next two digits represent the district number (DD), and the last three digits represent the compartment number (CCC) resulting in the 8-digit code RFFDDCCC. The location code is used to assign a national forest code (RFF) and geographic area code that are used in the mortality model and growth equations, respectively. For example, user’s having stand data in compartment 5 of the Rexford West area of the Kootenai NF should enter a location code of “11401005” which would then map the stand to geographic area “2”.

If the location code is missing or incorrect in the KT variant, a default forest code of 114 (Kootenai National Forest) will be used and the geographic area will be set to area “8”. The geographic area assignment by location code combinations recognized in the KT variant is shown in table 3.1.1.

In some cases, a location code beginning with a “7” or “8” is used to indicate an administrative boundary that doesn’t use a Forest Service Region number (for example, other federal agencies, state agencies, or other lands). Recognized Bureau of Indian Affairs reservation codes are located in table 3.1.2.

**Table 3.1.1 Geographic area assignment by location code combinations used in the KT variant.**

| **Geographic**  **Area** | **Name** | **Region (R)** | **Forest (FF)** | **District (DD)** | **Compartment**  **(CCC)** |
| --- | --- | --- | --- | --- | --- |
| 1 | Rexford East, Kootenai NF | 1 | 14 | 1 | 16-27 |
| 2 | Rexford West, Kootenai NF | 1 | 14 | 1 | all but 16-27 |
| 2 | Yaak, Kootenai NF | 1 | 14 | 2 | all |
| 3 | Fortine, Kootenai NF | 1 | 14 | 3 | all |
| 4 | Troy, Kootenai NF | 1 | 14 | 4 | all |
| 4 | Bonners Ferry, Idaho Panhandle NF | 1 | 4 | 7 | all |
| 5 | Libby West, Kootenai NF | 1 | 14 | 5 | 1-4,8-19,27 |
| 6 | Fisher River West, Kootenai NF | 1 | 14 | 6 | 1-4 |
| 7 | Cabinet-Sandpoint, Kootenai NF | 1 | 14 | 7 | all |
| 7 | Cabinet-Sandpoint, Idaho Panhandle NF | 1 | 4 | 6 | all |
| 8 | Swan Lake Island Unit, Flathead NF | 1 | 10 | 1 | 1-12 |
| 8 | Tally Lake, Flathead NF | 1 | 10 | 8 | all |
| 8 | Default for any other Flathead NF | 1 | 10 |  |  |
| 8 | Default for any other Idaho Panhandle NF | 1 | 4 |  |  |
| 8 | Fisher River East, Kootenai NF | 1 | 14 | 6 | all but 1-4 |
| 8 | Bitterroot NF | 1 | 3 |  |  |
| 8 | Clearwater NF | 1 | 5 |  |  |
| 8 | Coeur d’Alene NF | 1 | 6 |  |  |
| 8 | Colville NF | 6 | 21 |  |  |
| 8 | Kaniksu NF | 1 | 13 |  |  |
| 8 | Lolo NF | 1 | 16 |  |  |
| 8 | Nezperce NF | 1 | 17 |  |  |
| 8 | St. Joe NF | 1 | 18 |  |  |
| 9 | Fisher River East, Kootenai NF | 1 | 14 | 6 | all but 1-4 |
| 10 | Libby East, Kootenai NF | 1 | 14 | 5 | all but 1-4,8-19,27 |

**Table 3.1.2 Bureau of Indian Affairs reservation codes used in the KT variant.**

|  |  |
| --- | --- |
| **Location Code** | **Location** |
| 8109 | Kootenai Off-Reservation Trust Land (mapped to 113) |
| 8133 | Flathead Reservation (mapped to 110) |
| 8137 | Coeur d'Alene Reservation (mapped to 118) |

## 3.2 Species Codes

The KT variant recognizes 10 species, plus one other composite species category. You may use FVS species codes, Forest Inventory and Analysis (FIA) species codes, or USDA Natural Resources Conservation Service PLANTS symbols to represent these species in FVS input data. Any valid western species code identifying species not recognized by the variant will be mapped to a similar species in the variant. The species mapping crosswalk is available on the FVS website variant documentation webpage. Any non-valid species code will default to the “other” category.

Either the FVS sequence number or species code must be used to specify a species in FVS keywords and Event Monitor functions. FIA codes or PLANTS symbols are only recognized during data input and may not be used in FVS keywords. Table 3.2.1 shows the complete list of species codes recognized by the KT variant.

**Table 3.2.1 Species codes used in the KT variant.**

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
| 11 | OT | 999 | 2TREE |  | other 2 |

1Set based on the USDA Forest Service NRM TAXA lists and the USDA Plants database.

2Other category uses FIA codes and NRM TAXA codes that best match the other category.

## 3.3 Habitat Type, Plant Association, and Ecological Unit Codes

There are 175 habitat type codes recognized in the KT variant. If the habitat type code is blank or not recognized, the default 571 (TSHE/CLUN) will be assigned. The KT habitat type code is mapped to one of the 30 original NI variant habitat type codes. The KT and original NI variants’ habitat type codes are used in various parts of the model as identified in the sections that follow. A list of valid KT variant habitat type codes and the NI habitat type code equivalent can be found in Appendix A.

## 3.4 Site Index

Site index is not used in the KT variant.

## 3.5 Maximum Density

Maximum stand density index (SDI) and maximum basal area (BA) are important variables in determining density related mortality and crown ratio change. Maximum basal area is a stand level metric that can be set using the BAMAX or SETSITE keywords. If not set by the user, a default value is calculated from maximum stand SDI each projection cycle. Maximum stand density index can be set for each species using the SDIMAX or SETSITE keywords. If not set by the user, a default value is assigned as discussed below.

The default maximum SDI is set based on a user-specified, or default, habitat type code or a user specified basal area maximum. If a user specified basal area maximum is present, the maximum SDI for species is computed using equation {3.5.1}; otherwise, the maximum SDI for species is computed from the basal area maximum associated with the equivalent NI original habitat type code shown in table 3.5.1 using equation {3.5.1}. Maximum stand density index at the stand level is a weighted average, by basal area, of the individual species SDI maximums.

{3.5.1} *SDIMAXi* = *BAMAX*/ (0.5454154 \* *SDIU)*

where:

*SDIMAXi* is the species-specific SDI maximum

*BAMAX* is the user-specified basal area maximum or habitat type-specific basal area maximum

*SDIU* is theproportion of theoretical maximum density at which the stand reaches actual maximum density (default 0.85, changed with the SDIMAX keyword)

**Table 3.5.1 Basal area maximums by original NI habitat type code in the KT variant.**

| **Original NI Habitat Code** | **Maximum Basal Area** |
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

Height-diameter relationships in FVS are primarily used to estimate tree heights missing in the input data, and occasionally to estimate diameter growth on trees smaller than a given threshold diameter. In the KT variant, height-diameter relationships are a logistic functional form, as shown in equation {4.1.1} (Wykoff, et.al 1982). The equation was fit to data of the same species used to develop other FVS variants. Coefficients for equation {4.1.1} are shown are shown in table 4.1.1.

When heights are given in the input data for 3 or more trees of a given species, the value of B1 in equation {4.1.1} for that species is recalculated from the input data and replaces the default value shown in table 4.1.1. In the event that the calculated value is less than zero, the default is used.

{4.1.1} For *DBH* <u>></u> 3.0”: *HT* = 4.5 + exp(B1 + B2 / (*DBH* + 1.0))

where:

*HT*  is tree height

*DBH*  is tree diameter at breast height

B1 - B2 are species-specific coefficients shown in table 4.1.1

**Table 4.1.1 Coefficients for the logistic Wykoff equation {4.1.1} in the KT variant.**

| **Species Code** | **Default B1** | **B2** |
| --- | --- | --- |
| WP | 5.1868 | -10.4219 |
| WL | 5.0545 | -8.6187 |
| DF | 4.8768 | -9.1467 |
| GF | 5.0639 | -9.8924 |
| WH | 4.9273 | -8.7275 |
| RC | 4.8813 | -9.6285 |
| LP | 4.7778 | -6.3364 |
| ES | 5.0796 | -10.2015 |
| AF | 4.9301 | -8.8252 |
| PP | 5.0199 | -12.0148 |
| OT | 4.7795 | -9.3174 |

## 4.2 Bark Ratio Relationships

Bark ratio estimates are used to convert between diameter outside bark and diameter inside bark in various parts of the model. The equation is shown in equation {4.2.1} and coefficient (b1) for this equation by species is shown in table 4.2.1.

{4.2.1} *BRATIO* = b1

where:

*BRATIO* is species-specific bark ratio (bounded to 0.80 <u><</u> *BRATIO* <u><</u> 0.99)

b1 is a species-specific coefficient shown table 4.2.1

**Table 4.2.1 Coefficients (b1) for the bark ratio equation {4.2.1} in the KT variant.**

| **Species Code** | **b1** | **Equation Source** |
| --- | --- | --- |
| WP | 0.964 | Wykoff, et. al. 1982 |
| WL | 0.851 | Wykoff, et. al. 1982 |
| DF | 0.867 | Wykoff, et. al. 1982 |
| GF | 0.915 | Wykoff, et. al. 1982 |
| WH | 0.934 | Wykoff, et. al. 1982 |
| RC | 0.950 | Wykoff, et. al. 1982 |
| LP | 0.969 | Wykoff, et. al. 1982 |
| ES | 0.956 | Wykoff, et. al. 1982 |
| AF | 0.937 | Wykoff, et. al. 1982 |
| PP | 0.890 | Wykoff, et. al. 1982 |
| OT | 0.934 | Wykoff, et. al. 1982 |

## 4.3 Crown Ratio Relationships

Crown ratio equations are used for three purposes in FVS: (1) to estimate tree crown ratios missing from the input data for both live and dead trees; (2) to estimate change in crown ratio from cycle to cycle for live trees; and (3) to estimate initial crown ratios for regenerating trees established during a simulation.

### 4.3.1 Crown Ratio Dubbing

In the KT variant, crown ratios missing in the input data are predicted using different equations depending on tree size. Live trees less than 3.0” in diameter and dead trees of all sizes use equations {4.3.1.1} and {4.3.1.2} to compute crown ratio. Equation coefficients are found in table 4.3.1.1.

{4.3.1.1} *X* = R1 + R2 \* *DBH* + R3 \* *HT* + R3 \* *BA* + *N(0,SD)*

{4.3.1.2} *CR* = 1 / (1 + exp(*X)*)

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.05 <u><</u> *CR* <u><</u> 0.95)

*DBH* is tree diameter at breast height

*HT* is tree height

*BA* is total stand basal area

*N(0,SD)* is a random increment from a normal distribution with a mean of 0 and a standard deviation of SD

R1 – R3 are species-specific coefficients shown in table 4.3.1

**Table 4.3.1 Coefficients for the crown ratio equation {4.3.1} in the KT variant.**

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Coefficient** | **Species Code** | | | | | |
| **WP** | **WL** | **DF** | **GF** | **WH** | **RC** |
| R1 | -0.44316 | -0.83965 | -0.89122 | -0.62646 | -0.49548 | 0.11847 |
| R2 | -0.48446 | -0.16106 | -0.18082 | -0.06141 | 0.00012 | -0.39305 |
| R3 | 0.05825 | 0.04161 | 0.05186 | 0.0236 | 0.00362 | 0.02783 |
| R4 | 0.00513 | 0.00602 | 0.00454 | 0.00505 | 0.00456 | 0.00626 |
| SD | 0.9476 | 0.7396 | 0.8706 | 0.9203 | 0.945 | 0.8012 |
| **Coefficient** | **Species Code** | | | | |  |
| **LP** | **ES** | **AF** | **PP** | **OT** |  |
| R1 | -0.32466 | -0.92007 | -0.89014 | -0.17561 | -0.49548 |  |
| R2 | -0.20108 | -0.22454 | -0.18026 | -0.33847 | 0.00012 |  |
| R3 | 0.04219 | 0.03248 | 0.02233 | 0.05699 | 0.00362 |  |
| R4 | 0.00436 | 0.0062 | 0.00614 | 0.00692 | 0.00456 |  |
| SD | 0.7707 | 0.9721 | 0.8871 | 0.8866 | 0.945 |  |

In the KT variant, equation {4.3.1.3} is used to predict missing crown ratio for live trees 3.0” in diameter or larger.

{4.3.1.3} ln(*CR*) = *HAB* + (b1 \* *BA*) + (b2 \* *BA^*2) + (b3 \* ln(*BA*)) + (b4 \* *CCF*) + (b5\**CCF^*2) + (b6 \* ln(*CCF*)) + (b7 \* *DBH*) + (b8\**DBH^*2) + (b9 \* ln(*DBH*)) + (b10 \* *HT*) + (b11 \* *HT^*2) + (b12 \* ln(*HT*)) + (b13 \* *PCT*) + (b14 \* ln(*PCT*))

where:

*CR* is predicted crown ratio expressed as a proportion

*HAB* is a habitat-dependent coefficient shown in table 4.3.1.3

*BA* is total stand basal area

*CCF* is stand crown competition factor

*DBH* is tree diameter at breast height

*HT* is tree height

*PCT* is the subject tree’s percentile in the basal area distribution of the stand

b1 – b14 are species-specific coefficients shown in table 4.3.1.2

**Table 4.3.2 Coefficients for the crown ratio equation {4.3.1.3} in the KT variant.**

| **Coefficient** | **Species Code** | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF** | **PP** | **OT** |
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

**Table 4.3.3 HAB values by habitat class for equation {4.3.1.3} in the KT variant.**

|  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Habitat**  **Class** | **Species Code** | | | | | | | | | | |
| **WP** | **WL** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF** | **PP** | **OT** |
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

**Table 4.3.4 Habitat class by species and habitat code for HAB values in equation {4.3.1.3} in the KT variant.**

| **Habitat Codes** | **Species Code** | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF** | **PP** | **OT** |
| 10 - 140 | 2 | 2 | 2 | 2 | 1 | 1 | 2 | 2 | 2 | 2 | 1 |
| 160 - 190 | 2 | 2 | 2 | 2 | 1 | 1 | 2 | 2 | 2 | 2 | 1 |
| 210 - 250, 380 | 2 | 2 | 2 | 2 | 1 | 1 | 2 | 2 | 2 | 4 | 1 |
| 200, 260, 430 | 2 | 2 | 4 | 2 | 1 | 1 | 2 | 2 | 2 | 1 | 1 |
| 280 | 2 | 2 | 4 | 2 | 1 | 1 | 2 | 2 | 2 | 1 | 1 |
| 290 | 2 | 2 | 4 | 2 | 1 | 1 | 2 | 2 | 2 | 1 | 1 |
| 310, 370 | 2 | 2 | 6 | 2 | 1 | 1 | 4 | 2 | 2 | 5 | 1 |
| 320, 340, 350 | 2 | 3 | 7 | 2 | 1 | 1 | 5 | 3 | 2 | 6 | 1 |
| 330, 360, 910 | 2 | 2 | 4 | 2 | 1 | 1 | 5 | 2 | 2 | 1 | 1 |
| 400 - 420 | 2 | 4 | 8 | 1 | 1 | 1 | 2 | 1 | 2 | 1 | 1 |
| 440, 470, 480 | 2 | 4 | 8 | 1 | 1 | 1 | 2 | 1 | 2 | 1 | 1 |
| 505 - 515, 590 | 2 | 5 | 5 | 2 | 1 | 1 | 6 | 2 | 2 | 8 | 1 |
| 500, 516 - 529 | 3 | 6 | 9 | 3 | 1 | 1 | 7 | 4 | 2 | 7 | 2 |
| 501, 530, 545, 555 | 4 | 7 | 10 | 4 | 1 | 1 | 8 | 5 | 3 | 9 | 2 |
| 540 | 4 | 7 | 10 | 4 | 1 | 1 | 8 | 5 | 4 | 9 | 2 |
| 550, 560 | 4 | 7 | 10 | 4 | 1 | 1 | 8 | 5 | 4 | 9 | 2 |
| 502, 565 - 575 | 5 | 8 | 11 | 5 | 1 | 2 | 9 | 6 | 4 | 3 | 3 |
| 610 | 5 | 8 | 11 | 5 | 1 | 2 | 9 | 6 | 4 | 3 | 3 |
| 620, 635, 675, 685 | 5 | 4 | 8 | 6 | 1 | 2 | 10 | 7 | 5 | 3 | 4 |
| 450, 640, 650, 920 | 6 | 1 | 1 | 1 | 1 | 1 | 11 | 8 | 6 | 1 | 1 |
| 630, 660, 930 | 6 | 10 | 12 | 7 | 1 | 1 | 11 | 8 | 6 | 1 | 1 |
| 670, 740 | 1 | 9 | 12 | 7 | 1 | 1 | 12 | 9 | 7 | 1 | 1 |
| 680 | 6 | 10 | 13 | 7 | 1 | 1 | 11 | 8 | 6 | 1 | 5 |
| 579, 600, 690, 750, 780, 925, 950 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 10 | 1 | 1 | 1 |
| 701, 710 | 7 | 11 | 3 | 8 | 1 | 1 | 13 | 11 | 8 | 1 | 6 |
| 720 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 700, 730, 770, 790, 900, 940 | 6 | 1 | 3 | 7 | 1 | 1 | 14 | 1 | 9 | 1 | 1 |
| 800, 810, 830, 840 | 6 | 1 | 1 | 1 | 1 | 1 | 3 | 12 | 10 | 1 | 1 |
| 460, 820, 850 - 890 | 6 | 1 | 1 | 1 | 1 | 1 | 3 | 12 | 10 | 1 | 1 |
| 999 | 6 | 2 | 1 | 1 | 1 | 1 | 11 | 8 | 6 | 1 | 1 |

### 4.3.2 Crown Ratio Change

Crown ratio change is estimated after growth, mortality and regeneration are estimated during a projection cycle. Crown ratio change is the difference between the crown ratio at the beginning of the cycle and the predicted crown ratio at the end of the cycle. For live trees greater than 3” in dbh, crown change is predicted using equation {4.3.1.3}. Crown change is checked to make sure it doesn’t exceed the change possible if all height growth produces new crown. Crown change is further bounded to 1% per year for the length of the cycle to avoid drastic changes in crown ratio.

### 4.3.3 Crown Ratio for Newly Established Trees

Crown ratios for newly established trees during regeneration are estimated using equation {4.3.3.1}. A random component is added in equation {4.3.3.1} to ensure that not all newly established trees are assigned exactly the same crown ratio.

{4.3.3.1} CR = 0.89722 – 0.0000461 \* PCCF + RAN

where:

CR is crown ratio expressed as a proportion (bounded to 0.2 <u><</u> CR <u><</u> 0.9)

PCCF is crown competition factor on the inventory point where the tree is established

RAN is a small random component

## 4.4 Crown Width Relationships

The KT variant calculates the maximum crown width for each individual tree based on individual tree and stand attributes. Crown width for each tree is reported in the tree list output table and used for percent cover (*PCC*) calculations in the model. Crown width is calculated using equation {4.4.1} and coefficients for this equation are shown in table 4.4.1. The minimum diameter and bounds for certain data values are given in table 4.4.2. Equation numbers in table 4.4.1 are given with the first three digits representing the FIA species code, and the last two digits representing the equation source.

{4.4.1} Crookston (2003); Equation 03

*DBH* <u>></u> *MinD*: *CW* = [a1 \* exp [a2 + (a3 \* ln(*CL*)) + (a4 \* ln(*DBH*)) + (a5 \* ln(*HT*)) + (a6 \* ln(*BA*))]]

*DBH* < *MinD*: *CW* = [a1 \* exp [a2 + (a3 \* ln(*CL*)) + (a4 \* ln(*MinD*) + (a5 \* ln(*HT*)) + (a6 \* ln(*BA*))]] \* (*DBH* / *MinD*)

where:

*BF* is a species-specific coefficient based on forest code (*BF* = 1.0 in the EM variant)

*CW* is tree maximum crown width

*CL* is tree crown length

*DBH* is tree diameter at breast height

*HT* is tree height

*BA* is total stand basal area

*EL* is stand elevation in hundreds of feet

*MinD* is the minimum diameter

a1 – a6 are species-specific coefficients shown in table 4.4.1

**Table 4.4.1 Coefficients for crown width equation {4.4.1} in the KT variant.**

| **Species Code** | **Equation Number\*** | **a1** | **a2** | **a3** | **a4** | **a5** | **a6** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| WP | 11903 | 1.0405 | 1.2799 | 0.11941 | 0.42745 | 0 | -0.07182 |
| WL | 07303 | 1.02478 | 0.99889 | 0.19422 | 0.59423 | -0.09078 | -0.02341 |
| DF | 20203 | 1.01685 | 1.48372 | 0.27378 | 0.49646 | -0.18669 | -0.01509 |
| GF | 01703 | 1.0303 | 1.14079 | 0.20904 | 0.38787 | 0 | 0 |
| WH | 26303 | 1.02640 | 1.3522 | 0.24844 | 0.412117 | -0.104357 | 0.03538 |
| RC | 24203 | 1.03597 | 1.46111 | 0.26289 | 0.18779 | 0 | 0 |
| LP | 10803 | 1.03992 | 1.58777 | 0.30812 | 0.64934 | -0.38964 | 0 |
| ES | 09303 | 1.02687 | 1.28027 | 0.2249 | 0.47075 | -0.15911 | 0 |
| AF | 10903 | 1.02886 | 1.01255 | 0.30374 | 0.37093 | -0.13731 | 0 |
| PP | 12203 | 1.02687 | 1.49085 | 0.1862 | 0.68272 | -0.28242 | 0 |
| OT | 26405 | 3.7854 | 0.54684 | -0.12954 | 0.16151 | 0.03047 | -0.00561 |

\*Equation number is a combination of the species FIA code (###) and source (##).

**Table 4.4.2 *MinD* values and data bounds for equation {4.4.1} in the KT variant.**

| **Species Code** | **Equation Number\*** | ***MinD*** | ***EL min*** | ***EL* max** | ***CW* max** |
| --- | --- | --- | --- | --- | --- |
| WP | 11903 | 1.0 | n/a | n/a | 35 |
| WL | 07303 | 1.0 | n/a | n/a | 40 |
| DF | 20203 | 1.0 | n/a | n/a | 80 |
| GF | 01703 | 1.0 | n/a | n/a | 40 |
| WH | 26305 | 1.0 | n/a | n/a | 54 |
| RC | 24203 | 1.0 | n/a | n/a | 45 |
| LP | 10803 | 0.7 | n/a | n/a | 40 |
| ES | 09303 | 0.1 | n/a | n/a | 40 |
| AF | 10903 | 1.0 | n/a | n/a | 30 |
| PP | 12203 | 2.0 | n/a | n/a | 46 |
| OT | 26405 | 1.0 | 10 | 79 | 45 |

## 4.5 Crown Competition Factor

The KT variant uses crown competition factor (*CCF*) as a predictor variable in some growth relationships. Crown competition factor (Krajicek and others 1961) is a relative measurement of stand density that is based on tree diameters. Individual tree *CCFt* values estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open-grown. Stand *CCF* is the summation of individual tree (*CCFt*)values. A stand *CCF* value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand. Crown competition factor for an individual tree is calculated using equation {4.5.1}. All species coefficients are shown in table 4.5.1.

{4.5.1} *CCF* equations for individual trees

*DBH* <u>></u> *1”*: *CCFt* = R1 + (R2 \* *DBH*) + (R3 \* *DBH^*2)

0.1” < *DBH* < 1.0”: *CCFt* = R4 \* *DBH* ^R5

*DBH* <u><</u> 0.1”:*CCFt* = 0.001

where:

*CCFt* is crown competition factor for an individual tree

*DBH* is tree diameter at breast height

R1 – R5 are species-specific coefficients shown in table 4.5.1

**Table 4.5.1 Coefficients for CCF equation {4.5.1} in the KT variant.**

| **Species Code** | **R1** | **R2** | **R3** | **R4** | **R5** |
| --- | --- | --- | --- | --- | --- |
| WP | 0.03 | 0.0167 | 0.00230 | 0.009884 | 1.6667 |
| WL | 0.02 | 0.0148 | 0.00338 | 0.007244 | 1.8182 |
| DF | 0.11 | 0.0333 | 0.00259 | 0.017299 | 1.5571 |
| GF | 0.04 | 0.0270 | 0.00405 | 0.015248 | 1.7333 |
| WH | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |
| RC | 0.03 | 0.0238 | 0.00490 | 0.008915 | 1.7800 |
| LP | .01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| ES | 0.03 | 0.0173 | 0.00259 | 0.007875 | 1.7360 |
| AF | 0.03 | 0.0216 | 0.00405 | 0.011402 | 1.7560 |
| PP | 0.03 | 0.0180 | 0.00281 | 0.007813 | 1.7680 |
| OT | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |

## 4.6 Small Tree Growth Relationships

Trees are considered “small trees” for FVS modeling purposes when they are smaller than some threshold diameter. The threshold diameter is set to 3.0” for all species in the KT variant.

The small tree model is height-growth driven, meaning height growth is estimated first and diameter growth is estimated from height growth. These relationships are discussed in the following sections.

### 4.6.1 Small Tree Height Growth

The small-tree height increment model predicts 5-year height growth (*HTG*) for small trees in the KT variant. Potential height growth is estimated using equations {4.6.1.1}, and coefficients for these equations are shown in table 4.6.1.1. Species numbers 1-10 use equation {4.6.1.1} and species 11 “other” uses equation {4.6.1.2}.

{4.6.1.1} Used for all species except species 11

*HTG* = *HAB* + *LOC* + c1 \* *PCCF* \* *DUM* + c2 \* ln(*BA*) + c3 \* *HT* + c4 \* *CR* + c5 \* *CR^*2 + c6 \* c13 \* *HT^*2 + c7 \* *EL* + *SL* \* (c8 \* cos(*ASP*) + c9 \* sin(*ASP*) + c10) + c11 \* *SL^*2 + c12 \* *BAL*

{4.6.1.2} Used for species 11

*HTG* = EXP(*HAB* + *LOC + 0.8953* + c1 \* CCF + c3 \* LN(*HT)* + *SL* \* (c8 \* cos(*ASP*) + c9 \* sin(*ASP*) + c10) + (0.01 \* c12 \* *BAL*))

where:

*HTG* is estimated height growth for the cycle

*LOC* is a location specific coefficient shown in table 4.6.1.2

*HAB* is a habitat type dependent coefficient shown in table 4.6.1.4

*CCF* is stand crown competition factor

*BA* is stand basal area

*CR* is tree crown ratio expressed as a proportion

*HT* is total tree height in feet

*EL* is stand elevation in 100’s of feet

*BAL* is total basal area in trees larger than the subject tree

*ASP* is stand aspect

*SL* is stand slope

*DUM* is a dummy variable depending on whether or not the stand is managed:

*DUM* = 0 for unmanaged stands

*DUM* = 1.0 for managed stands

c1 – c13  are species-specific coefficients shown in table 4.6.1.1

**Table 4.6.1.1 Coefficients (c1 – c13) for equation {4.6.1.1} in the KT variant.**

|  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Coefficient** | **Species Code** | | | | | | | | | | |
| **WP** | **WL** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF** | **PP** | **OT** |
| c1 | 0.00273 | 0.00193 | 0.00236 | 0.00137 | 0.00032 | 0.00052 | 0.00293 | 0.00141 | 0.00196 | 0.00360 | -0.00391 |
| c2 | -0.22587 | -0.61299 | -0.58005 | -0.30338 | -0.31005 | -0.18884 | -0.52391 | -0.27041 | -0.33734 | -0.25931 | 0 |
| c3 | 0.23330 | 0.18719 | 0.18550 | 0.19226 | 0.12683 | 0.08362 | 0.17563 | 0.16043 | 0.16983 | 0.38762 | 0.23540 |
| c4 | -0.03752 | 1.79349 | 0.41613 | 1.38422 | 0.80235 | 0.70806 | 0.77147 | -0.52031 | -0.27436 | 2.97669 | 0 |
| c5 | 1.89581 | 1.71334 | 1.07027 | 0 | 0.34311 | 0.23177 | 2.22378 | 1.85953 | 1.21264 | -0.80369 | 0 |
| c6 | -0.00748 | -0.00557 | -0.00596 | -0.00680 | -0.00439 | -0.00245 | -0.00455 | -0.00559 | -0.00595 | -0.01550 | 0 |
| c7 | -0.01745 | -0.00166 | -0.00914 | -0.00928 | -0.00865 | 0.00132 | -0.00796 | -0.00665 | -0.00556 | 0.00595 | 0 |
| c8 | -0.31977 | 0.50669 | 0.02547 | -0.01998 | -0.20086 | -0.14897 | 0.23847 | -0.17454 | 0.04734 | -0.56283 | 0.22157 |
| c9 | -0.22656 | -0.01932 | -0.06132 | -0.00293 | 0.03511 | -0.08693 | 0.17146 | -0.08322 | -0.01602 | 0.56742 | -0.12432 |
| c10 | -0.73984 | -1.15049 | -0.74956 | -0.73082 | 0.04774 | -0.03444 | -0.17135 | -0.14074 | 0.45909 | -1.92358 | -0.01099 |
| c11 | -0.34745 | 0 | 0.72632 | 0.75534 | 0 | 0 | -1.70513 | 0 | -1.01580 | 0 | 0 |
| c12 | -0.00257 | 0.00274 | 0.00237 | 0.00068 | 0 | 0 | 0 | 0 | 0 | 0 | -0.25349 |
| c13 | 0.5 | 0.4 | 0.5 | 0.5 | 0.6 | 0.6 | 0.7 | 0.5 | 0.5 | 0.5 | 1.0 |

**Table 4.6.1.2 LOC values for equation {4.6.1.1} in the KT variant.**

|  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Location**  **Class** | **Species Code** | | | | | | | | | | |
| **WP** | **WL** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF** | **PP** | **OT** |
| 1 | 2.26983 | 2.88731 | 2.77609 | 1.50804 | 1.85663 | 1.10271 | 3.90074 | 1.60506 | 1.40183 | 1.37057 | 0 |
| 2 | 2.10643 | 2.13803 | 2.73185 | 1.33661 | 1.88219 | 1.22721 | 3.81424 | 1.39565 | 1.62576 | 1.60481 | 0 |
| 3 | 2.64339 | 2.57740 | 2.89851 | 1.65346 | 0 | 1.50852 | 4.27475 | 2.30479 | 1.99335 | 1.08390 | 0 |
| 4 | 0 | 3.31632 | 0 | 0 | 0 | 0 | 0 | 2.05200 | 1.66862 | 0 | 0 |
| 5 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1.29770 | 0 | 0 | 0 |

**Table 4.6.1.3 Location class by species and geographic area (table 3.1.1) in the KT variant.**

| **Geographic area** | **Alpha Code** | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF** | **PP** | **OT** |
| 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 2 | 2 | 1 | 2 | 2 | 2 | 1 | 1 | 2 | 2 | 2 | 1 |
| 3 | 1 | 2 | 2 | 1 | 2 | 2 | 2 | 2 | 2 | 1 | 1 |
| 4 | 2 | 1 | 2 | 2 | 1 | 1 | 3 | 2 | 2 | 3 | 1 |
| 5 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 5 | 4 | 2 | 1 |
| 6 | 2 | 2 | 1 | 1 | 2 | 2 | 1 | 4 | 3 | 1 | 1 |
| 7 | 1 | 3 | 3 | 1 | 1 | 1 | 1 | 3 | 4 | 1 | 1 |
| 8 | 3 | 1 | 3 | 3 | 1 | 3 | 2 | 1 | 4 | 3 | 1 |
| 9 | 3 | 3 | 3 | 2 | 2 | 1 | 2 | 5 | 4 | 2 | 1 |
| 10 | 3 | 4 | 3 | 3 | 1 | 2 | 3 | 1 | 4 | 2 | 1 |

**Table 4.6.1.4 HAB values for equation {4.6.1.1} in the KT variant.**

| **Habitat**  **Class** | **Species Code** | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF** | **PP** | **OT** |
| 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | -0.2146 |
| 2 | -0.28873 | 0.09568 | 0.25958 | 0.11144 | 0.12846 | -0.10742 | -0.63773 | 0.24521 | 0.25263 | -0.12165 | -0.0941 |
| 3 | 0.22233 | 0 | 0.14322 | 0.18247 | -0.11567 | 0 | -0.80817 | 0.72617 | 0.32640 | -0.37465 | -0.3738 |
| 4 | 0 | 0 | 0.10701 | 0 | 0.27130 | 0 | -0.39611 | 0.34175 | 0.40120 | 0 | 0 |
| 5 | 0 | 0 | -0.13608 | 0 | 0 | 0 | 0.66609 | 0.55389 | 0.56825 | 0 | 0 |
| 6 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0.42748 | 0.78600 | 0 | 0 |

**Table 4.6.1.5 Habitat class by species and habitat code in the KT variant.**

| **Habitat**  **Code** | **Species Code** | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF** | **PP** | **OT** |
| 10 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 65 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 70 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 74 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 79 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 91 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 92 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 93 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 95 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 100 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 110 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 120 | 1 | 2 | 2 | 1 | 1 | 1 | 1 | 2 | 1 | 1 | 3 |
| 130 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 140 | 1 | 2 | 2 | 1 | 1 | 1 | 2 | 1 | 1 | 2 | 3 |
| 141 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 161 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 3 |
| 170 | 1 | 2 | 2 | 1 | 1 | 1 | 2 | 1 | 1 | 2 | 3 |
| 171 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 172 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 180 | 1 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 3 |
| 181 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 182 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 200 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 3 |
| 210 | 2 | 2 | 2 | 2 | 1 | 1 | 3 | 1 | 1 | 3 | 3 |
| 220 | 1 | 2 | 3 | 1 | 1 | 1 | 2 | 1 | 1 | 3 | 3 |
| 221 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 230 | 1 | 2 | 2 | 2 | 1 | 1 | 2 | 1 | 1 | 3 | 3 |
| 250 | 2 | 2 | 2 | 2 | 1 | 1 | 2 | 2 | 2 | 2 | 3 |
| 260 | 2 | 2 | 3 | 2 | 1 | 1 | 4 | 2 | 2 | 1 | 3 |
| 261 | 2 | 2 | 5 | 2 | 1 | 1 | 3 | 2 | 2 | 3 | 3 |
| 262 | 2 | 2 | 4 | 2 | 1 | 1 | 3 | 2 | 2 | 3 | 3 |
| 263 | 1 | 2 | 3 | 2 | 1 | 1 | 2 | 2 | 4 | 2 | 3 |
| 280 | 2 | 2 | 4 | 2 | 1 | 1 | 2 | 2 | 2 | 2 | 3 |
| 281 | 2 | 2 | 4 | 2 | 1 | 1 | 2 | 2 | 2 | 2 | 3 |
| 282 | 1 | 2 | 3 | 1 | 1 | 1 | 2 | 2 | 2 | 2 | 3 |
| 283 | 2 | 2 | 4 | 2 | 1 | 1 | 2 | 2 | 2 | 2 | 3 |
| 290 | 1 | 2 | 3 | 2 | 1 | 1 | 2 | 2 | 2 | 1 | 3 |
| 291 | 2 | 2 | 3 | 2 | 1 | 1 | 3 | 2 | 2 | 1 | 3 |
| 292 | 2 | 2 | 4 | 2 | 1 | 1 | 2 | 2 | 2 | 2 | 3 |
| 293 | 2 | 2 | 4 | 2 | 1 | 1 | 2 | 2 | 2 | 2 | 3 |
| 310 | 2 | 2 | 3 | 2 | 1 | 1 | 2 | 2 | 2 | 2 | 3 |
| 311 | 1 | 2 | 3 | 1 | 1 | 1 | 2 | 1 | 1 | 2 | 3 |
| 312 | 2 | 2 | 4 | 2 | 1 | 1 | 3 | 2 | 2 | 2 | 3 |
| 313 | 2 | 2 | 5 | 1 | 1 | 1 | 3 | 2 | 2 | 2 | 3 |
| 315 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 320 | 2 | 2 | 4 | 2 | 1 | 1 | 4 | 2 | 2 | 1 | 3 |
| 321 | 1 | 2 | 3 | 2 | 1 | 1 | 2 | 2 | 2 | 3 | 3 |
| 322 | 2 | 2 | 4 | 2 | 1 | 1 | 2 | 2 | 2 | 2 | 3 |
| 323 | 2 | 2 | 4 | 2 | 1 | 1 | 2 | 2 | 2 | 1 | 3 |
| 324 | 2 | 2 | 2 | 2 | 1 | 1 | 4 | 1 | 2 | 3 | 3 |
| 330 | 1 | 2 | 3 | 1 | 1 | 1 | 3 | 1 | 2 | 2 | 3 |
| 331 | 1 | 2 | 4 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 332 | 1 | 2 | 3 | 1 | 1 | 1 | 3 | 1 | 1 | 1 | 3 |
| 340 | 2 | 2 | 4 | 1 | 1 | 1 | 2 | 1 | 1 | 2 | 3 |
| 350 | 1 | 2 | 2 | 1 | 1 | 1 | 2 | 1 | 2 | 2 | 3 |
| 360 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 370 | 1 | 2 | 1 | 1 | 1 | 1 | 2 | 1 | 2 | 1 | 3 |
| 371 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 400 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 410 | 1 | 2 | 4 | 1 | 1 | 1 | 5 | 5 | 2 | 1 | 3 |
| 420 | 1 | 2 | 3 | 1 | 1 | 1 | 4 | 2 | 2 | 1 | 3 |
| 421 | 1 | 2 | 3 | 1 | 1 | 1 | 3 | 2 | 2 | 1 | 3 |
| 422 | 1 | 2 | 3 | 1 | 1 | 1 | 3 | 2 | 2 | 1 | 3 |
| 430 | 1 | 2 | 1 | 1 | 1 | 1 | 2 | 2 | 1 | 1 | 3 |
| 440 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 450 | 1 | 2 | 3 | 1 | 1 | 1 | 2 | 2 | 2 | 1 | 3 |
| 460 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 1 | 1 | 1 | 3 |
| 461 | 1 | 2 | 3 | 1 | 1 | 1 | 2 | 2 | 2 | 1 | 3 |
| 470 | 1 | 2 | 3 | 1 | 1 | 1 | 2 | 5 | 2 | 1 | 3 |
| 480 | 1 | 1 | 1 | 1 | 1 | 1 | 4 | 1 | 1 | 1 | 3 |
| 500 | 1 | 1 | 3 | 3 | 1 | 1 | 1 | 1 | 1 | 3 | 3 |
| 501 | 1 | 2 | 3 | 1 | 4 | 1 | 4 | 4 | 4 | 3 | 3 |
| 502 | 1 | 2 | 2 | 2 | 2 | 1 | 4 | 3 | 3 | 2 | 3 |
| 505 | 1 | 1 | 3 | 1 | 1 | 1 | 4 | 1 | 1 | 3 | 3 |
| 507 | 1 | 2 | 2 | 3 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 508 | 1 | 2 | 3 | 3 | 1 | 1 | 4 | 1 | 1 | 3 | 3 |
| 510 | 1 | 2 | 3 | 3 | 4 | 1 | 2 | 3 | 4 | 3 | 3 |
| 511 | 1 | 2 | 2 | 3 | 1 | 1 | 4 | 1 | 1 | 3 | 3 |
| 515 | 1 | 2 | 3 | 3 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 520 | 1 | 2 | 3 | 3 | 4 | 1 | 4 | 3 | 4 | 2 | 1 |
| 521 | 1 | 2 | 4 | 3 | 4 | 1 | 4 | 4 | 4 | 2 | 1 |
| 522 | 1 | 2 | 4 | 3 | 1 | 1 | 4 | 3 | 6 | 2 | 1 |
| 523 | 1 | 2 | 3 | 3 | 1 | 1 | 2 | 4 | 4 | 2 | 1 |
| 524 | 1 | 2 | 3 | 3 | 4 | 1 | 4 | 4 | 1 | 2 | 1 |
| 529 | 1 | 2 | 4 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 530 | 1 | 2 | 2 | 3 | 2 | 1 | 4 | 4 | 4 | 3 | 2 |
| 531 | 1 | 2 | 4 | 1 | 2 | 1 | 4 | 4 | 4 | 3 | 2 |
| 532 | 1 | 2 | 2 | 3 | 2 | 1 | 4 | 4 | 4 | 3 | 2 |
| 533 | 1 | 2 | 4 | 3 | 2 | 1 | 2 | 4 | 4 | 1 | 2 |
| 534 | 1 | 2 | 4 | 3 | 2 | 1 | 4 | 4 | 5 | 1 | 2 |
| 540 | 1 | 2 | 2 | 1 | 4 | 1 | 4 | 3 | 5 | 1 | 2 |
| 542 | 1 | 2 | 3 | 1 | 2 | 1 | 2 | 3 | 5 | 1 | 2 |
| 545 | 1 | 2 | 3 | 1 | 1 | 1 | 1 | 3 | 1 | 1 | 2 |
| 550 | 1 | 2 | 4 | 1 | 4 | 1 | 4 | 3 | 5 | 3 | 4 |
| 565 | 1 | 2 | 2 | 2 | 2 | 1 | 2 | 3 | 4 | 1 | 4 |
| 570 | 3 | 2 | 2 | 2 | 2 | 1 | 4 | 4 | 3 | 2 | 4 |
| 571 | 3 | 2 | 3 | 2 | 2 | 1 | 2 | 2 | 4 | 2 | 4 |
| 572 | 1 | 2 | 2 | 2 | 2 | 1 | 4 | 3 | 3 | 2 | 4 |
| 573 | 1 | 2 | 2 | 2 | 2 | 1 | 4 | 2 | 4 | 2 | 4 |
| 574 | 1 | 2 | 2 | 2 | 2 | 1 | 2 | 4 | 3 | 1 | 4 |
| 575 | 1 | 2 | 2 | 2 | 2 | 1 | 2 | 3 | 4 | 1 | 4 |
| 577 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 2 | 3 | 1 | 4 |
| 578 | 1 | 2 | 2 | 2 | 2 | 1 | 2 | 4 | 3 | 2 | 4 |
| 579 | 1 | 2 | 2 | 2 | 2 | 1 | 2 | 4 | 3 | 1 | 4 |
| 580 | 1 | 1 | 1 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 4 |
| 585 | 1 | 2 | 3 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 4 |
| 590 | 1 | 2 | 4 | 3 | 1 | 1 | 4 | 3 | 2 | 1 | 4 |
| 591 | 1 | 2 | 3 | 3 | 1 | 1 | 4 | 3 | 2 | 1 | 4 |
| 592 | 1 | 2 | 4 | 1 | 1 | 1 | 2 | 4 | 2 | 1 | 4 |
| 610 | 1 | 2 | 3 | 1 | 3 | 1 | 5 | 3 | 6 | 1 | 4 |
| 620 | 3 | 2 | 3 | 3 | 1 | 1 | 5 | 4 | 5 | 1 | 1 |
| 621 | 1 | 2 | 4 | 3 | 1 | 1 | 3 | 4 | 4 | 1 | 1 |
| 622 | 1 | 2 | 3 | 3 | 3 | 1 | 2 | 4 | 5 | 1 | 1 |
| 623 | 3 | 2 | 4 | 3 | 1 | 1 | 2 | 6 | 3 | 1 | 1 |
| 624 | 3 | 2 | 3 | 3 | 3 | 1 | 3 | 6 | 3 | 1 | 1 |
| 625 | 3 | 2 | 3 | 3 | 1 | 1 | 4 | 5 | 5 | 1 | 1 |
| 630 | 1 | 2 | 3 | 1 | 3 | 1 | 5 | 4 | 5 | 1 | 1 |
| 632 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 635 | 1 | 2 | 3 | 1 | 3 | 1 | 1 | 3 | 6 | 1 | 1 |
| 636 | 3 | 2 | 1 | 1 | 3 | 1 | 5 | 4 | 3 | 1 | 1 |
| 640 | 1 | 2 | 3 | 3 | 1 | 1 | 3 | 4 | 5 | 1 | 3 |
| 641 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 642 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 650 | 1 | 2 | 1 | 1 | 3 | 1 | 2 | 3 | 6 | 1 | 3 |
| 651 | 1 | 2 | 3 | 1 | 1 | 1 | 3 | 1 | 2 | 1 | 3 |
| 652 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 1 | 1 | 1 | 3 |
| 653 | 1 | 2 | 1 | 1 | 1 | 1 | 3 | 3 | 1 | 1 | 3 |
| 654 | 1 | 2 | 1 | 1 | 1 | 1 | 2 | 4 | 3 | 1 | 3 |
| 655 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 660 | 3 | 2 | 1 | 3 | 1 | 1 | 4 | 6 | 2 | 1 | 3 |
| 661 | 1 | 2 | 1 | 3 | 1 | 1 | 3 | 4 | 3 | 1 | 3 |
| 662 | 1 | 2 | 3 | 3 | 3 | 1 | 3 | 6 | 3 | 1 | 3 |
| 663 | 3 | 2 | 1 | 3 | 3 | 1 | 3 | 4 | 2 | 1 | 3 |
| 670 | 3 | 2 | 3 | 3 | 3 | 1 | 2 | 6 | 3 | 1 | 2 |
| 671 | 3 | 2 | 1 | 1 | 1 | 1 | 1 | 4 | 3 | 1 | 2 |
| 672 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 4 | 5 | 1 | 2 |
| 673 | 1 | 2 | 3 | 1 | 1 | 1 | 1 | 4 | 3 | 1 | 2 |
| 674 | 1 | 2 | 1 | 1 | 1 | 2 | 4 | 3 | 3 | 1 | 2 |
| 680 | 1 | 2 | 3 | 3 | 1 | 1 | 4 | 6 | 3 | 1 | 3 |
| 690 | 3 | 2 | 3 | 3 | 1 | 2 | 3 | 5 | 3 | 1 | 3 |
| 691 | 1 | 2 | 3 | 3 | 1 | 2 | 2 | 5 | 3 | 1 | 3 |
| 692 | 3 | 2 | 4 | 3 | 1 | 2 | 2 | 6 | 3 | 1 | 3 |
| 693 | 1 | 1 | 4 | 1 | 1 | 1 | 3 | 5 | 3 | 1 | 3 |
| 700 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 710 | 3 | 2 | 3 | 3 | 1 | 2 | 4 | 4 | 6 | 1 | 3 |
| 712 | 1 | 1 | 1 | 1 | 1 | 1 | 5 | 3 | 1 | 1 | 3 |
| 720 | 3 | 2 | 3 | 3 | 1 | 1 | 2 | 4 | 2 | 1 | 3 |
| 730 | 1 | 2 | 3 | 3 | 1 | 2 | 3 | 4 | 2 | 1 | 3 |
| 731 | 3 | 2 | 4 | 3 | 1 | 2 | 3 | 6 | 3 | 1 | 3 |
| 732 | 3 | 2 | 1 | 1 | 1 | 2 | 1 | 4 | 2 | 1 | 3 |
| 733 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 4 | 2 | 1 | 3 |
| 734 | 1 | 2 | 1 | 1 | 1 | 1 | 2 | 1 | 1 | 1 | 3 |
| 740 | 3 | 2 | 3 | 3 | 1 | 2 | 2 | 5 | 3 | 1 | 3 |
| 750 | 3 | 2 | 1 | 1 | 1 | 2 | 4 | 5 | 3 | 1 | 3 |
| 751 | 1 | 2 | 1 | 1 | 1 | 1 | 2 | 1 | 1 | 1 | 3 |
| 761 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 770 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 780 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 790 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 791 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 792 | 2 | 2 | 1 | 3 | 1 | 2 | 2 | 4 | 2 | 1 | 3 |
| 810 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 820 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 6 | 1 | 1 | 3 |
| 830 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 1 | 1 | 1 | 3 |
| 831 | 1 | 1 | 1 | 1 | 1 | 1 | 3 | 1 | 6 | 1 | 3 |
| 832 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 5 | 5 | 1 | 3 |
| 850 | 1 | 2 | 3 | 1 | 1 | 1 | 1 | 6 | 6 | 1 | 3 |
| 860 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 6 | 3 | 1 | 3 |
| 870 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 900 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 910 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 920 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 930 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 |
| 940 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 3 | 1 | 3 |
| 950 | 1 | 1 | 1 | 1 | 1 | 1 | 5 | 1 | 1 | 1 | 3 |

For all species, a small random error is then added to the height growth estimate. The estimated height growth (*HTG*) is then adjusted to account for cycle length, user defined small-tree height growth adjustments, and adjustments due to small tree height model calibration from the input data.

Height growth estimates from the small-tree model are weighted with the height growth estimates from the large tree model over a range of diameters (*Xmin* and *Xmax*) in order to smooth the transition between the two models. For example, the closer a tree’s *DBH* value is to the minimum diameter (*Xmin*), the more the growth estimate will be weighted towards the small-tree growth model. The closer a tree’s *DBH* value is to the maximum diameter (*Xmax*), the more the growth estimate will be weighted towards the large-tree growth model. If a tree’s *DBH* value falls outside of the range given by *Xmin* and *Xmax*, then the model will use only the small-tree or large-tree growth model in the growth estimate. The weight applied to the growth estimate is calculated using equation {4.6.1.3}, and applied as shown in equation {4.6.1.4}. The range of diameters for each species is shown in table 4.6.1.2.

{4.6.1.3}

DBH <u><</u> Xmin: XWT = 0

Xmin < DBH < Xmax: XWT = (DBH - Xmin) / (Xmax - Xmin)

DBH <u>></u> Xmax: XWT = 1

{4.6.1.4} Estimated growth = [(1 - *XWT*) \* *STGE*] + [*XWT* \* *LTGE*]

where:

*XWT* is the weight applied to the growth estimates

*DBH* is tree diameter at breast height

*Xmax* is the maximum *DBH* is the diameter range

*Xmin* is the minimum *DBH* in the diameter range

*STGE* is the growth estimate obtained using the small-tree growth model

*LTGE* is the growth estimate obtained using the large-tree growth model

**Table 4.6.1.6 Diameter bounds by species in the KT variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Number** | **Species Code** | ***Xmin*** | ***Xmax*** |
| 1 | WP | 2.0 | 10.0 |
| 2 | WL | 2.0 | 10.0 |
| 3 | DF | 2.0 | 10.0 |
| 4 | GF | 2.0 | 10.0 |
| 5 | WH | 2.0 | 10.0 |
| 6 | RC | 2.0 | 10.0 |
| 7 | LP | 1.0 | 5.0 |
| 8 | ES | 2.0 | 10.0 |
| 9 | AF | 2.0 | 10.0 |
| 10 | PP | 2.0 | 10.0 |
| 11 | OT | 2.0 | 10.0 |

### 4.6.2 Small Tree Diameter Growth

As stated previously, for trees being projected with the small tree equations, height growth is predicted first, and then diameter growth. So both height at the beginning of the cycle and height at the end of the cycle are known when predicting diameter growth. Small tree diameter growth for trees over 4.5 feet tall is calculated as the difference of predicted diameter at the start of the projection period and the predicted diameter at the end of the projection period, adjusted for bark ratio. By definition, diameter growth is zero for trees less than 4.5 feet tall.

For western white pine, western larch, Douglas-fir, grand fir, western hemlock, western redcedar, lodgepole pine, Engelmann spruce, subalpine fir, and ponderosa pine, these two predicted diameters are estimated using equations {4.6.2.1}, {4.6.2.3} – {4.6.2.5}, and coefficients shown in table 4.6.2.1. For other, these two predicted diameters are estimated using equations {4.6.2.2} – {4.6.2.5}, and coefficients shown in table 4.6.2.1.

{4.6.2.1} *DHAT* = c1 + c2 \* *HT* + *DADJ*

{4.6.2.2} *DHAT* = c1 \* (*HT* – 4.5)c2 + *DADJ*

{4.6.2.3} *DADJ* = *DELMAX* \* *RELH* \* *RELH* – 2 \* *DELMAX* \* *RELH* + 0.65

{4.6.2.4} *RELH* = (*HT* – 4.5) / (*AH* – 4.5)

{4.6.2.5} *DELMAX* = (*AH* / 36) \* (0.01232 \* CCF – 1.75)

where:

*DHAT* is estimated tree diameter at breast height

*HT* is tree height

*DADJ* is an adjustment factor to correct for bias, relative tree size, and stand density

*RELH* is relative tree height (bounded 0 <u><</u> *RELHT* <u><</u> 1)

*AH* is average height of the 40 largest diameter trees

*DELMAX* is an adjustment factor based on relative tree size and stand density (bounded DELMAX <u><</u> 0)

*CCF* is stand crown competition factor

**Table 4.6.2.1 Coefficients (c1 – c2) by species for equation {4.6.2.1} in the KT variant.**

| **Species Code** | **C1** | **C2** |
| --- | --- | --- |
| WP | -0.145707 | 0.125404 |
| WL | -0.111929 | 0.098451 |
| DF | -0.127690 | 0.115066 |
| GF | -0.125198 | 0.128790 |
| WH | -0.178162 | 0.129191 |
| RC | -0.233566 | 0.143211 |
| LP | -0.010818 | 0.090927 |
| ES | -0.186874 | 0.131209 |
| AF | -0.158870 | 0.128174 |
| PP | -0.185011 | 0.141907 |
| OT | 0.0729 | 1.1988 |

## 4.7 Large Tree Growth Relationships

Trees are considered “large trees” for FVS modeling purposes when they are equal to, or larger than, some threshold diameter. This threshold diameter is set to 3.0” for all species in the KT variant.

The large-tree model is driven by diameter growth meaning diameter growth is estimated first, and then height growth is estimated from diameter growth and other variables. These relationships are discussed in the following sections.

### 4.7.1 Large Tree Diameter Growth

The large tree diameter growth model used in most FVS variants is described in section 7.2.1 in Dixon (2002). For most variants, instead of predicting diameter increment directly, the natural log of the periodic change in squared inside-bark diameter (ln(*DDS*)) is predicted (Dixon 2002; Wykoff 1990; Stage 1973; and Cole and Stage 1972). For variants predicting diameter increment directly, diameter increment is converted to the *DDS* scale to keep the FVS system consistent across all variants.

The KT variant predicts diameter growth using equation {4.7.1.1.}. Coefficients for this equation are shown in tables 4.7.1.1 - 4.7.1.5.

{4.7.1.1} Used for all species in the KT variant

ln*(DDS)* = b1 + (b2 \* *EL*) + (b3 \* *EL^*2) + (b4 \* sin(*ASP*) \* SL) + (b5 \* cos(*ASP*) \* SL) + (b6 \* *SL*) + (b7 \* *SL^*2) + (b8 \**CCF*) + (b9 \* ln(*DBH*)) + (b10 \* *CR*) + (b11 \* *CR^*2) + (b12 \* *BAL* / (ln(*DBH* + 1.0))) + (b13 \* *CCF^2*) + (b14 \* *DBH^*2) + (b15 \* ln(*BA*)) + (b16\* *PCCF* \* *DUM1*) + (b17\* *PCCF* \* *DUM2*) + *HAB*

where:

*DDS* is the predicted periodic change in squared inside-bark diameter

*EL* is stand elevation in hundreds of feet

*ASP* is stand aspect

*SL* is stand slope (for “other”, *SL* = 0)

*CR* is a tree’s live crown ratio (compacted) expressed as a proportion

*DBH* is tree diameter at breast height

*BA* is total stand basal area

*BAL* is total basal area in trees larger than the subject tree

For species 11, *BAL* = 0.01 \* *BAL*

*CCF* is stand crown competition factor

*PCCF* is crown competition factor on the inventory point where the tree is established

*HAB* is a plant association code dependent coefficient shown in table 4.7.1.7

*LOC* is a location-specific coefficient shown in table 4.7.1.4

*DUM1-2* are dummy variables depending on whether or not the stand is managed:

*DUM1* = 0, *DUM2* = 1.0 for unmanaged stands

*DUM1* = 1.0, *DUM2* = 0 for managed stands

b1 is a location-specific coefficient shown in table 4.7.1.2

b2-b17 are species-specific coefficients shown in tables 4.7.1.1

**Table 4.7.1.1 Coefficients (b2-b17) for equation 4.7.1.1 in the KT variant.**

| **Coefficient** | **Species Code** | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF** | **PP** | **OT** |
| b2 | -0.006 | -0.0074 | -0.00563 | 0.00159 | -0.0043 | -0.02275 | 0.00281 | 0.00634 | 0.01539 | -0.00515 | 0.08518 |
| b3 | 0 | 6.9E-05 | 0 | 0 | 0 | 0.00028 | -0.00011 | -0.00011 | -0.00021 | -0.00012 | -0.0009 |
| b4 | -0.02975 | -0.02172 | 0.06558 | 0.05178 | -0.00462 | 0.00659 | 0.0687 | 0.07099 | -0.0106 | -0.00704 | 0.13363 |
| b5 | -0.06355 | -0.13645 | -0.02412 | -0.01643 | -0.03073 | 0.00779 | -0.07271 | -0.18211 | -0.10512 | -0.18077 | 0.17935 |
| b6 | 0.05705 | 0.15248 | 0.03603 | 0.17354 | -0.02011 | -0.05252 | -0.31034 | 0.22033 | 0.26053 | -0.61544 | 0.07628 |
| b7 | -0.30165 | -0.40132 | -0.50543 | -0.35182 | 0.1642 | 0.18516 | 0 | -0.45491 | -0.47935 | 0 | 0 |
| b8 | 0.0025 | -0.0027 | -0.00178 | -0.00047 | 0 | -0.00225 | 0 | 0 | -0.00055 | 0 | -0.00107 |
| b9 | 0.89068 | 0.71363 | 0.91484 | 1.24554 | 1.03 | 1.00243 | 0.90678 | 0.9856 | 1.06324 | 0.85286 | 0.89778 |
| b10 | 1.33383 | 1.57307 | 2.32586 | 1.21753 | 1.0406 | 1.62559 | 1.79329 | 1.3533 | 0.75412 | 2.71069 | 1.28403 |
| b11 | -0.46964 | -0.56399 | -1.02799 | 0 | 0 | -0.25015 | -0.4074 | -0.18967 | 0.46269 | -1.27309 | 0 |
| b12 | -0.00706 | -0.01026 | -0.00697 | -0.00483 | -0.00404 | -0.0043 | -0.00479 | -0.00614 | -0.00443 | -0.00527 | -0.6611 |
| b13 | 0 | 8.0E-06 | 7.0E-06 | 3.0E-06 | 0 | 6.0E-06 | 0 | 4.0E-06 | 6.0E-06 | 0 | 0 |
| b14 | -0.00036 | -0.00055 | -0.00082 | -0.00098 | -0.00055 | -0.00025 | -0.00124 | -0.00055 | -0.00114 | -0.00071 | -0.00048 |
| b15 | -0.26312 | 0 | 0 | 0 | -0.00308 | 0.09764 | -0.07759 | -0.14396 | -0.1187 | -0.07669 | 0 |
| b16 | 7.2E-05 | 0 | -0.00041 | -0.00105 | -0.00056 | -0.00103 | 0.00077 | -0.00057 | -0.00005 | -0.00011 | 0 |
| b17 | -0.00081 | 0 | -0.00117 | -0.00123 | -0.00093 | -0.00096 | -0.0007 | -0.00105 | -0.00113 | -0.00098 | 0 |

**Table 4.7.1.2 b1 values by location class for equation {4.7.1.1} in the KT variant.**

| **Location**  **Class** | **Species Code** | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF** | **PP** | **OT** |
| 1 | 1.76061 | 0.90538 | 0.28515 | -0.16279 | 0.58335 | 0.60677 | 0.73315 | 0.73648 | 0.28606 | 1.27975 | 0 |
| 2 | 0 | 1.05703 | 0.47449 | 0.01201 | 0.05082 | 0.25734 | 0.80566 | 0.63397 | 0.42202 | 1.46166 | 0 |
| 3 | 0 | 0.92987 | 0.22243 | 0.21551 | 0.76325 | 0.41586 | 0.68869 | 0.86675 | 0.5926 | 0 | 0 |
| 4 | 0 | 1.21864 | 0.38244 | -0.45254 | 0 | 0.84058 | 0.78334 | 1.01332 | 0.35594 | 0 | 0 |
| 5 | 0 | 0.85925 | 0.77 | 0 | 0 | 0.87222 | 1.0049 | 0 | 0 | 0 | 0 |
| 6 | 0 | 0 | 0.25263 | 0 | 0 | 0.51366 | 0 | 0 | 0 | 0 | 0 |
| 7 | 0 | 0 | 0.41726 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |

**Table 4.7.1.3 Location class by species and geographic area (table 3.1.1) for equation {4.7.1.1} in the KT variant.**

| **Geographic Area** | **Species Code** | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF** | **PP** | **OT** |
| 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 2 | 1 | 2 | 1 | 2 | 1 | 1 | 2 | 1 | 1 | 2 | 1 |
| 3 | 1 | 2 | 2 | 2 | 1 | 2 | 2 | 1 | 2 | 2 | 1 |
| 4 | 1 | 3 | 3 | 2 | 2 | 3 | 3 | 2 | 1 | 2 | 1 |
| 5 | 1 | 2 | 2 | 2 | 1 | 4 | 2 | 3 | 2 | 2 | 1 |
| 6 | 1 | 2 | 4 | 1 | 1 | 5 | 1 | 1 | 2 | 1 | 1 |
| 7 | 1 | 3 | 2 | 1 | 1 | 6 | 4 | 3 | 2 | 2 | 1 |
| 8 | 1 | 4 | 5 | 3 | 3 | 5 | 5 | 4 | 3 | 2 | 1 |
| 9 | 1 | 5 | 6 | 4 | 1 | 5 | 1 | 1 | 4 | 1 | 1 |
| 10 | 1 | 3 | 7 | 1 | 1 | 5 | 4 | 1 | 4 | 2 | 1 |

**Table 4.7.1.4 *HAB* values for equation {4.7.1.1} in the KT variant.**

| **Habitat**  **Class** | **Species Code** | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF** | **PP** | **OT** |
| 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | -1.68033 |
| 2 | 0.46877 | -0.14413 | 0.32102 | 0.04934 | -0.18536 | 0.22308 | -0.02517 | 0.2543 | 0.19307 | -0.11238 | -1.52111 |
| 3 | 0.36827 | 0.09463 | 0.26245 | -0.0284 | -0.03054 | 0.05241 | 0.14033 | 0.35826 | -0.02105 | -0.02699 | 0 |
| 4 | 0.2538 | 0.25452 | 0.36975 | 0.30154 | 0 | -0.03541 | 0.09364 | 0.26282 | 0.13296 | -0.26668 | 0 |
| 5 | 0 | 0.09901 | 0.20189 | 0 | 0 | -0.14473 | 0.06392 | 0.33856 | 0.3312 | 0.0484 | 0 |
| 6 | 0 | 0.15839 | 0.41958 | 0 | 0 | 0 | 0.17607 | 0.66511 | 0.03795 | 0.17576 | 0 |
| 7 | 0 | 0.18736 | 0.2115 | 0 | 0 | 0 | 0.12434 | 0.47824 | 0 | 0 | 0 |
| 8 | 0 | 0 | 0 | 0 | 0 | 0 | 0.03253 | 0.08994 | 0 | 0 | 0 |
| 9 | 0 | 0 | 0 | 0 | 0 | 0 | -0.04246 | 0.14762 | 0 | 0 | 0 |

**Table 4.7.1.5 Habitat class by species and habitat code in the KT variant.**

| **Habitat**  **Code** | **Species Code** | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF** | **PP** | **OT** |
| 10 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 65 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 70 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 74 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 79 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 91 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 92 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 93 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 95 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 100 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 110 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 120 | 1 | 2 | 2 | 1 | 1 | 2 | 1 | 1 | 1 | 1 | 2 |
| 130 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 140 | 1 | 2 | 2 | 1 | 1 | 1 | 2 | 1 | 1 | 2 | 2 |
| 141 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 161 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 2 |
| 170 | 1 | 2 | 2 | 1 | 1 | 1 | 3 | 1 | 1 | 2 | 2 |
| 171 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 172 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 180 | 1 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 2 |
| 181 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 182 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 200 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 2 |
| 210 | 2 | 1 | 2 | 2 | 1 | 4 | 4 | 1 | 1 | 4 | 2 |
| 220 | 1 | 2 | 3 | 1 | 1 | 1 | 2 | 1 | 1 | 4 | 2 |
| 221 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 230 | 1 | 2 | 2 | 2 | 1 | 1 | 2 | 1 | 1 | 4 | 2 |
| 250 | 2 | 1 | 4 | 2 | 1 | 2 | 3 | 3 | 2 | 5 | 2 |
| 260 | 2 | 1 | 3 | 2 | 1 | 2 | 3 | 3 | 2 | 1 | 2 |
| 261 | 2 | 2 | 3 | 1 | 1 | 4 | 4 | 1 | 3 | 3 | 2 |
| 262 | 1 | 2 | 2 | 2 | 1 | 4 | 4 | 3 | 3 | 3 | 2 |
| 263 | 1 | 1 | 3 | 2 | 1 | 4 | 3 | 1 | 4 | 5 | 2 |
| 280 | 1 | 2 | 5 | 2 | 1 | 1 | 2 | 1 | 3 | 2 | 2 |
| 281 | 2 | 2 | 2 | 2 | 1 | 4 | 2 | 2 | 2 | 2 | 2 |
| 282 | 1 | 1 | 3 | 1 | 1 | 2 | 2 | 2 | 3 | 2 | 2 |
| 283 | 1 | 1 | 2 | 2 | 1 | 2 | 2 | 3 | 3 | 2 | 2 |
| 290 | 1 | 1 | 3 | 2 | 1 | 2 | 2 | 3 | 3 | 3 | 2 |
| 291 | 1 | 2 | 3 | 1 | 1 | 1 | 4 | 2 | 2 | 3 | 2 |
| 292 | 1 | 1 | 5 | 1 | 1 | 4 | 2 | 1 | 3 | 2 | 2 |
| 293 | 2 | 1 | 5 | 2 | 1 | 4 | 2 | 1 | 2 | 2 | 2 |
| 310 | 2 | 1 | 3 | 2 | 1 | 4 | 3 | 3 | 2 | 5 | 2 |
| 311 | 1 | 2 | 3 | 1 | 1 | 1 | 3 | 1 | 1 | 2 | 2 |
| 312 | 1 | 2 | 5 | 1 | 1 | 4 | 4 | 1 | 3 | 2 | 2 |
| 313 | 1 | 1 | 3 | 1 | 1 | 4 | 4 | 2 | 2 | 2 | 2 |
| 315 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 320 | 2 | 1 | 2 | 2 | 1 | 2 | 3 | 2 | 2 | 3 | 2 |
| 321 | 1 | 1 | 3 | 2 | 1 | 1 | 3 | 1 | 3 | 4 | 2 |
| 322 | 1 | 2 | 5 | 2 | 1 | 4 | 2 | 2 | 3 | 2 | 2 |
| 323 | 2 | 2 | 5 | 1 | 1 | 4 | 2 | 3 | 3 | 3 | 2 |
| 324 | 1 | 1 | 4 | 1 | 1 | 2 | 3 | 1 | 3 | 4 | 2 |
| 330 | 1 | 2 | 3 | 1 | 1 | 1 | 4 | 1 | 3 | 2 | 2 |
| 331 | 1 | 1 | 5 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 332 | 1 | 1 | 3 | 1 | 1 | 1 | 4 | 1 | 1 | 1 | 2 |
| 340 | 1 | 2 | 2 | 1 | 1 | 1 | 2 | 1 | 1 | 2 | 2 |
| 350 | 1 | 2 | 2 | 1 | 1 | 1 | 2 | 1 | 2 | 5 | 2 |
| 360 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 370 | 1 | 2 | 1 | 1 | 1 | 1 | 2 | 1 | 3 | 1 | 2 |
| 371 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 400 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 410 | 1 | 4 | 4 | 1 | 1 | 1 | 4 | 3 | 2 | 1 | 2 |
| 420 | 1 | 1 | 6 | 1 | 1 | 2 | 4 | 3 | 2 | 1 | 2 |
| 421 | 1 | 7 | 6 | 1 | 1 | 1 | 4 | 2 | 2 | 3 | 2 |
| 422 | 1 | 6 | 6 | 1 | 1 | 2 | 4 | 2 | 2 | 3 | 2 |
| 430 | 1 | 1 | 7 | 1 | 1 | 1 | 5 | 2 | 1 | 1 | 2 |
| 440 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 450 | 1 | 7 | 2 | 1 | 1 | 1 | 4 | 2 | 2 | 1 | 2 |
| 460 | 1 | 1 | 1 | 1 | 1 | 1 | 5 | 1 | 1 | 1 | 2 |
| 461 | 1 | 4 | 4 | 1 | 1 | 1 | 4 | 3 | 2 | 1 | 2 |
| 470 | 1 | 4 | 6 | 1 | 1 | 2 | 4 | 3 | 2 | 3 | 2 |
| 480 | 1 | 1 | 1 | 1 | 1 | 1 | 4 | 1 | 1 | 1 | 2 |
| 500 | 1 | 1 | 4 | 1 | 1 | 1 | 1 | 1 | 1 | 6 | 2 |
| 501 | 2 | 3 | 2 | 3 | 1 | 3 | 6 | 5 | 2 | 6 | 2 |
| 502 | 2 | 3 | 1 | 2 | 3 | 3 | 6 | 5 | 4 | 5 | 2 |
| 505 | 2 | 1 | 4 | 1 | 1 | 2 | 6 | 1 | 1 | 6 | 2 |
| 507 | 2 | 1 | 4 | 1 | 1 | 2 | 1 | 1 | 1 | 1 | 2 |
| 508 | 1 | 3 | 4 | 1 | 1 | 2 | 6 | 1 | 1 | 6 | 2 |
| 510 | 2 | 3 | 4 | 1 | 1 | 2 | 5 | 2 | 4 | 6 | 2 |
| 511 | 2 | 4 | 4 | 1 | 1 | 1 | 6 | 1 | 1 | 6 | 2 |
| 515 | 1 | 1 | 4 | 1 | 1 | 2 | 1 | 1 | 1 | 1 | 2 |
| 520 | 2 | 5 | 4 | 2 | 1 | 2 | 6 | 2 | 4 | 5 | 2 |
| 521 | 2 | 3 | 4 | 1 | 1 | 2 | 6 | 4 | 4 | 5 | 2 |
| 522 | 2 | 3 | 4 | 1 | 1 | 2 | 7 | 2 | 3 | 5 | 2 |
| 523 | 2 | 1 | 2 | 1 | 1 | 2 | 5 | 4 | 4 | 5 | 2 |
| 524 | 1 | 3 | 4 | 1 | 1 | 2 | 6 | 4 | 1 | 5 | 2 |
| 529 | 1 | 1 | 4 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 530 | 2 | 5 | 4 | 1 | 1 | 3 | 6 | 3 | 2 | 6 | 2 |
| 531 | 2 | 5 | 4 | 3 | 1 | 4 | 7 | 5 | 2 | 6 | 2 |
| 532 | 2 | 5 | 4 | 1 | 1 | 3 | 7 | 3 | 2 | 6 | 2 |
| 533 | 2 | 4 | 4 | 1 | 1 | 3 | 5 | 5 | 2 | 1 | 2 |
| 534 | 2 | 1 | 4 | 1 | 1 | 3 | 7 | 5 | 5 | 1 | 2 |
| 540 | 2 | 3 | 4 | 3 | 1 | 3 | 7 | 6 | 5 | 1 | 2 |
| 542 | 2 | 4 | 4 | 3 | 1 | 3 | 5 | 6 | 5 | 1 | 2 |
| 545 | 1 | 4 | 4 | 1 | 1 | 3 | 1 | 6 | 1 | 1 | 2 |
| 550 | 2 | 3 | 4 | 4 | 1 | 3 | 7 | 6 | 5 | 6 | 2 |
| 565 | 2 | 5 | 4 | 1 | 2 | 1 | 5 | 5 | 4 | 1 | 2 |
| 570 | 3 | 6 | 4 | 1 | 3 | 1 | 7 | 4 | 4 | 5 | 2 |
| 571 | 3 | 6 | 4 | 1 | 3 | 5 | 5 | 4 | 4 | 5 | 2 |
| 572 | 3 | 6 | 4 | 2 | 3 | 4 | 7 | 5 | 4 | 5 | 2 |
| 573 | 2 | 5 | 4 | 2 | 3 | 4 | 6 | 4 | 4 | 5 | 2 |
| 574 | 3 | 3 | 4 | 1 | 3 | 5 | 5 | 4 | 4 | 1 | 2 |
| 575 | 2 | 4 | 4 | 2 | 3 | 4 | 5 | 5 | 4 | 1 | 2 |
| 577 | 1 | 1 | 1 | 1 | 1 | 4 | 1 | 4 | 4 | 1 | 2 |
| 578 | 3 | 1 | 4 | 2 | 2 | 4 | 5 | 4 | 4 | 5 | 2 |
| 579 | 2 | 5 | 4 | 1 | 2 | 5 | 5 | 4 | 4 | 1 | 2 |
| 580 | 3 | 1 | 1 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 2 |
| 585 | 1 | 1 | 4 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 590 | 3 | 3 | 4 | 1 | 1 | 3 | 6 | 2 | 3 | 3 | 2 |
| 591 | 3 | 3 | 2 | 1 | 1 | 3 | 7 | 2 | 3 | 3 | 2 |
| 592 | 3 | 3 | 4 | 2 | 1 | 3 | 5 | 4 | 3 | 3 | 2 |
| 610 | 3 | 4 | 6 | 1 | 1 | 3 | 4 | 7 | 5 | 1 | 2 |
| 620 | 4 | 4 | 6 | 2 | 1 | 3 | 4 | 5 | 2 | 3 | 2 |
| 621 | 3 | 6 | 4 | 2 | 1 | 3 | 8 | 8 | 6 | 3 | 2 |
| 622 | 3 | 7 | 6 | 2 | 1 | 3 | 5 | 5 | 2 | 3 | 2 |
| 623 | 4 | 4 | 4 | 2 | 1 | 3 | 4 | 9 | 4 | 3 | 2 |
| 624 | 4 | 6 | 6 | 2 | 1 | 3 | 4 | 9 | 4 | 3 | 2 |
| 625 | 1 | 4 | 6 | 2 | 1 | 3 | 4 | 2 | 2 | 3 | 2 |
| 630 | 3 | 7 | 6 | 1 | 1 | 3 | 4 | 5 | 2 | 1 | 2 |
| 632 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 635 | 1 | 1 | 6 | 1 | 1 | 1 | 1 | 7 | 5 | 1 | 2 |
| 636 | 1 | 1 | 7 | 1 | 1 | 3 | 4 | 5 | 4 | 1 | 2 |
| 640 | 3 | 7 | 6 | 2 | 1 | 3 | 4 | 5 | 2 | 3 | 2 |
| 641 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 642 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 650 | 1 | 1 | 7 | 1 | 1 | 3 | 5 | 7 | 5 | 1 | 2 |
| 651 | 1 | 1 | 6 | 1 | 1 | 3 | 8 | 1 | 3 | 1 | 2 |
| 652 | 1 | 1 | 1 | 1 | 1 | 1 | 4 | 1 | 1 | 1 | 2 |
| 653 | 1 | 4 | 1 | 1 | 1 | 1 | 4 | 7 | 1 | 1 | 2 |
| 654 | 3 | 6 | 7 | 1 | 1 | 1 | 5 | 8 | 4 | 1 | 2 |
| 655 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 660 | 1 | 1 | 7 | 2 | 1 | 3 | 4 | 9 | 3 | 3 | 2 |
| 661 | 3 | 6 | 7 | 2 | 1 | 3 | 4 | 5 | 6 | 3 | 2 |
| 662 | 3 | 7 | 6 | 2 | 1 | 3 | 5 | 9 | 6 | 3 | 2 |
| 663 | 4 | 1 | 7 | 2 | 1 | 3 | 8 | 8 | 3 | 3 | 2 |
| 670 | 4 | 7 | 6 | 2 | 1 | 3 | 5 | 9 | 6 | 3 | 1 |
| 671 | 1 | 1 | 7 | 1 | 1 | 1 | 1 | 8 | 1 | 1 | 1 |
| 672 | 1 | 1 | 7 | 1 | 1 | 1 | 1 | 8 | 2 | 1 | 1 |
| 673 | 1 | 6 | 6 | 1 | 1 | 1 | 1 | 5 | 6 | 1 | 1 |
| 674 | 3 | 4 | 1 | 1 | 1 | 7 | 4 | 7 | 4 | 1 | 1 |
| 680 | 3 | 7 | 6 | 1 | 1 | 1 | 4 | 9 | 4 | 1 | 2 |
| 690 | 4 | 6 | 6 | 1 | 1 | 2 | 4 | 2 | 1 | 3 | 2 |
| 691 | 3 | 6 | 6 | 1 | 1 | 5 | 5 | 2 | 6 | 3 | 2 |
| 692 | 1 | 1 | 4 | 1 | 1 | 2 | 5 | 9 | 6 | 3 | 2 |
| 693 | 1 | 1 | 4 | 1 | 1 | 1 | 4 | 2 | 4 | 1 | 2 |
| 700 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 710 | 4 | 4 | 6 | 1 | 1 | 5 | 4 | 5 | 5 | 3 | 2 |
| 712 | 1 | 1 | 1 | 1 | 1 | 1 | 4 | 7 | 1 | 1 | 2 |
| 720 | 4 | 6 | 6 | 1 | 1 | 1 | 5 | 5 | 3 | 3 | 2 |
| 730 | 1 | 4 | 6 | 1 | 1 | 5 | 4 | 8 | 3 | 3 | 2 |
| 731 | 4 | 6 | 4 | 1 | 1 | 5 | 9 | 9 | 1 | 1 | 2 |
| 732 | 1 | 1 | 7 | 1 | 1 | 5 | 1 | 8 | 3 | 1 | 2 |
| 733 | 1 | 1 | 7 | 1 | 1 | 1 | 1 | 8 | 3 | 1 | 2 |
| 734 | 1 | 4 | 1 | 1 | 1 | 1 | 5 | 1 | 1 | 1 | 2 |
| 740 | 1 | 4 | 6 | 1 | 1 | 5 | 5 | 2 | 4 | 3 | 2 |
| 750 | 4 | 1 | 7 | 1 | 1 | 5 | 4 | 2 | 6 | 3 | 2 |
| 751 | 1 | 1 | 7 | 1 | 1 | 1 | 5 | 1 | 1 | 1 | 2 |
| 761 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 770 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 780 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 790 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 791 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 792 | 1 | 1 | 7 | 1 | 1 | 5 | 5 | 8 | 3 | 1 | 2 |
| 810 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 820 | 1 | 6 | 1 | 1 | 1 | 1 | 1 | 9 | 1 | 1 | 2 |
| 830 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 1 | 1 | 1 | 2 |
| 831 | 1 | 1 | 1 | 1 | 1 | 1 | 4 | 1 | 5 | 1 | 2 |
| 832 | 1 | 4 | 7 | 1 | 1 | 1 | 1 | 2 | 2 | 1 | 2 |
| 850 | 1 | 1 | 6 | 1 | 1 | 1 | 1 | 9 | 5 | 1 | 2 |
| 860 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 9 | 4 | 1 | 2 |
| 870 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 900 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 910 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 920 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 930 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 940 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 4 | 1 | 2 |
| 950 | 1 | 1 | 1 | 1 | 1 | 1 | 4 | 1 | 1 | 1 | 2 |

### 4.7.2 Large Tree Height Growth

In the KT variant, equation {4.7.2.1} is used to estimate large tree height growth for all species.

{4.7.2.1} *HTG* = exp(*HAB* + b0 + (b1 \* *HT^*2) + (b2 \* ln(*DBH*)) + (b3 \* ln(*HT*)) + (b4 \* ln(*DG*))) + .4809

where:

*HTG* is estimated height growth for the cycle

*HAB* is a plant association code dependent intercept shown in table 4.7.2.2

*HT* is tree height at the beginning of the cycle

*DBH* is tree diameter at breast height at the beginning of the cycle

*DG* is 10-year diameter growth for the cycle

b0, b2, b3  are species-specific coefficients shown in table 4.7.2.1

b1, b4 are habitat-dependent coefficients shown in table 4.7.2.2

**Table 4.7.2.1 Coefficients (b0, b2 and b3) for the height-growth equation in the KT variant.**

| **Coefficient** | **Species Code** | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL** | **DF** | **GF** | **WH** | **RC** | **LP** | **ES** | **AF** | **PP** | **OT** |
| b0 | -0.5342 | 0.1433 | 0.1641 | -0.6458 | -0.6959 | -0.9941 | -0.6004 | 0.2089 | -0.5478 | 0.7316 | -0.9941 |
| b2 | -0.04935 | -0.3899 | -0.4574 | -0.09775 | -0.1555 | -0.1219 | -0.2454 | -0.5720 | -0.1997 | -0.5657 | -0.1219 |
| b3 | 0.23315 | 0.23315 | 0.23315 | 0.23315 | 0.23315 | 0.23315 | 0.23315 | 0.23315 | 0.23315 | 0.23315 | 0.23315 |

**Table 4.7.2.2 Coefficients (b1, b4, and HAB) by habitat code (Appendix A) for the height-growth equation in the KT variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Habitat Codes** | **b1** | **b4** | ***HAB*** |
| 10, 65, 70, 74, 79, 91, 92, 93, 95, 100, 110, 120, 130, 140, 141, 161, 170, 171, 172, 180, 181, 182, 210, 220, 221, 230, 460, 461, 630, 632, 660, 661, 662, 663, 700, 730, 731, 732, 733, 734, 770, 790, 791, 792, 810, 820, 830, 831, 832, 850, 860, 870, 900, 930, 940 | -1.34E-04 | 0.62144 | 2.03035 |
| 200, 250, 260, 261, 262, 263, 280, 281, 282, 283, 290, 291, 292, 293, 310, 311, 312, 313, 315, 320, 321, 322, 323, 324, 330, 331, 332, 340, 350, 360, 370, 371, 430, 910 | -3.81E-05 | 1.02372 | 1.72222 |
| 400, 410, 420, 421, 422, 440, 470, 480 | -3.72E-05 | 0.85493 | 1.19728 |
| 450, 505, 507, 508, 510, 511, 515, 590, 591, 592, 620, 621, 622, 623, 624, 625, 635, 636, 640, 641, 642, 650, 651, 652, 653, 654, 655, 670, 671, 672, 673, 674, 680, 740, 920 | -2.61E-05 | 0.75756 | 1.81759 |
| 500, 520, 521, 522, 523, 524, 529 | -5.20E-05 | 0.46238 | 2.14781 |
| 501, 530, 531, 532, 533, 534, 545 | -1.61E-05 | 0.49643 | 1.76998 |
| 502, 540, 542, 550, 565, 570, 571, 572, 573, 574, 575, 577, 578, 610, 570 | -3.63E-05 | 0.37042 | 2.21104 |
| 579, 580, 585, 690, 691, 692, 693, 710, 712, 720, 750, 751, 761, 780 | -4.46E-05 | 0.34003 | 1.7409 |

# 5.0 Mortality Model

All species in the KT variant use the Prognosis-type mortality model (Wykoff and others 1982 and Hamilton 1986) that is described in detail in section 7.3.1 of Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002, abbreviated EFVS). This model independently calculates two mortality rates and then weights them to form the final mortality rate applied to an individual tree record.

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

**Table 5.0.1 b0 values used in the mortality equation set {5.0.1} in the KT variant.**

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
| AF | 0.21180 |
| PP | 0.21180 |
| OT | 0 |

**Table 5.0.2 *I* values for trees with *DBH* > 5.0” used in equation set {5.0.1} in the KT variant.**

| **Habitat Codes** | **“*I”* values by Region 1 National Forest** | | |
| --- | --- | --- | --- |
| **104** | **110** | **114** |
| 10 - 140 | 15 | 9 | 9 |
| 160 - 190 | 15 | 9 | 9 |
| 210 - 250, 380 | 15 | 9 | 9 |
| 200, 260, 430 | 15 | 9 | 9 |
| 280 | 14 | 9 | 8 |
| 290 | 14 | 9 | 9 |
| 310, 370 | 12 | 7 | 7 |
| 320, 340, 350 | 14 | 8 | 8 |
| 330, 360, 910 | 13 | 8 | 7 |
| 400 - 420 | 14 | 8 | 8 |
| 440, 470, 480 | 14 | 9 | 8 |
| 505 - 515, 590 | 15 | 9 | 8 |
| 500, 516 - 529 | 15 | 9 | 9 |
| 501, 530, 545, 555 | 17 | 11 | 11 |
| 540 | 15 | 10 | 10 |
| 550, 560 | 15 | 10 | 10 |
| 502, 565 - 575 | 16 | 10 | 10 |
| 610 | 15 | 10 | 10 |
| 620, 635, 675, 685 | 15 | 11 | 10 |
| 450, 640, 650, 920 | 11 | 7 | 7 |
| 630, 660, 930 | 16 | 5 | 5 |
| 670, 740 | 11 | 6 | 6 |
| 680 | 9 | 4 | 5 |
| 579, 600, 690, 750, 780, 925, 950 | 12 | 7 | 7 |
| 701, 710 | 12 | 7 | 7 |
| 720 | 15 | 9 | 9 |
| 700, 730, 770, 790, 900, 940 | 12 | 8 | 8 |
| 800, 810, 830, 840 | 7 | 3 | 3 |
| 460, 820, 850 - 890 | 10 | 6 | 6 |
| 999 | 15 | 9 | 9 |

**Table 5.0.3 *I* values for trees with *DBH* < 5.0” used in equation set {5.0.1} in the KT variant.**

| **Habitat Codes** | **“*I”* values by Region 1 National Forest** | | |
| --- | --- | --- | --- |
| **104** | **110** | **114** |
| 10 - 140 | 50 | 38 | 38 |
| 160 - 190 | 49 | 37 | 37 |
| 210 - 250, 380 | 49 | 37 | 37 |
| 200, 260, 430 | 49 | 37 | 37 |
| 280 | 48 | 36 | 37 |
| 290 | 48 | 36 | 37 |
| 310, 370 | 47 | 36 | 37 |
| 320, 340, 350 | 52 | 38 | 41 |
| 330, 360, 910 | 46 | 36 | 33 |
| 400 - 420 | 47 | 35 | 37 |
| 440, 470, 480 | 48 | 37 | 37 |
| 505 - 515, 590 | 53 | 41 | 41 |
| 500, 516 - 529 | 54 | 41 | 41 |
| 501, 530, 545, 555 | 54 | 41 | 42 |
| 540 | 52 | 40 | 39 |
| 550, 560 | 52 | 40 | 39 |
| 502, 565 - 575 | 54 | 41 | 41 |
| 610 | 50 | 40 | 40 |
| 620, 635, 675, 685 | 51 | 40 | 40 |
| 450, 640, 650, 920 | 41 | 33 | 33 |
| 630, 660, 930 | 39 | 32 | 32 |
| 670, 740 | 44 | 32 | 33 |
| 680 | 43 | 32 | 33 |
| 579, 600, 690, 750, 780, 925, 950 | 44 | 34 | 34 |
| 701, 710 | 44 | 33 | 33 |
| 720 | 50 | 38 | 38 |
| 700, 730, 770, 790, 900, 940 | 53 | 35 | 35 |
| 800, 810, 830, 840 | 36 | 26 | 28 |
| 460, 820, 850 - 890 | 37 | 28 | 32 |
| 999 | 50 | 38 | 38 |

The second mortality rate estimate, *RB*, is dependent on the proximity of stand basal area to the site maximum (see section 3.5 of this variant overview), and the rate of basal area increment. As stand basal area approaches the maximum for the site, *RB* approaches 1. The calculation of *RB* is described in section 7.3.1.2 of EFVS (Dixon 2002) and is not shown here.

The mortality rate applied to a tree record is a weighted average of *RA* and *RB* with the weight also dependent on the proximity of stand basal area to the maximum for the site. This is also described in section 7.3.1.3 of EFVS (Dixon 2002), and is not shown here. The combined estimate is adjusted to the length of the cycle using a compound interest formula as shown in equation {5.0.2}.

{5.0.2} *RT* = (1 – (1 – *RC*)^*Y)*

where:

*RT* is the mortality rate applied to an individual tree record for the growth period

*RC* is the combined estimate of the annual mortality rate for the tree record

*Y* is length of the current projection cycle in years

# 6.0 Regeneration

The KT variant contains a full establishment model which is explained in section 5.4.2 of the Essential FVS Users Guide (Dixon 2002). In short, the full establishment model automatically adds regeneration following significant stand disturbances and adds ingrowth periodically during the simulation. Users may also input regeneration and ingrowth into simulations manually through the establishment model keywords as explained in section 5.4.3 of the Essential FVS Users Guide (Dixon 2002). The following description applies to entering regeneration and ingrowth through keywords.

The regeneration model is used to simulate stand establishment from bare ground, or to bring seedlings and sprouts into a simulation with existing trees. There are no sprouting species in the KT variant. Regeneration of seedlings may be specified by using PLANT or NATURAL keywords. Height of the seedlings is estimated in two steps. First, the height is estimated when a tree is 5 years old (or the end of the cycle – whichever comes first) by using the small-tree height growth equations found in section 4.6.1. Users may override this value by entering a height in field 6 of the PLANT or NATURAL keyword; however the height entered in field 6 is not subject to minimum height restrictions and seedlings as small as 0.05 feet may be established. The second step also uses the equations in section 4.6.1, which grow the trees in height from the point five years after establishment to the end of the cycle.

Seedlings are passed to the main FVS model at the end of the growth cycle in which regeneration is established. Unless noted above, seedlings being passed are subject to minimum and maximum height constraints and a minimum budwidth constraint shown in table 6.0.1. After seedling height is estimated, diameter growth is estimated using equations described in section 4.6.2. Crown ratios on newly established trees are estimated as described in section 4.3.1.

Regenerated trees and sprouts can be identified in the treelist output file with tree identification numbers beginning with the letters “ES”.

**Table 6.0.1 Regeneration parameters by species in the KT variant.**

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
| OT | No | 0.2 | 0.5 | 22.0 |

# 7.0 Volume

Volume is calculated for four merchantability standards: total stem cubic feet, merchantable stem cubic feet, sawlog stem cubic feet, and merchantable stem board feet (Scribner Decimal C). Sawlog cubic foot volume is only reported when the FIAVBC keyword is in use. Volume estimation is based on methods contained in the National Volume Estimator Library maintained by the Forest Products Measurements group in the Forest Management Service Center (Volume Estimator Library Equations 2009). The default merchantability standards and equation numbers for the KT variant are shown in tables 7.0.1-7.0.3.

Volume computation methods used by the Forest Inventory and Analysis (FIA) program can be requested with the FIAVBC keyword. This keyword encompasses the National Scale Volume and Biomass estimators (NSVB; Westfall et al. 2024) and regional equations used for woodland species (Burrill et al. 2024). More information about the FIAVBC keyword and required input variables can be found in the Essential FVS Guide (Dixon 2002).

**Table 7.0.1 Default volume merchantability standards for the KT variant.**

|  |  |  |
| --- | --- | --- |
| **Merchantable Cubic Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | LP | All Other |
| All location codes | 6.0 / 4.5 inches | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| **Merchantable Board Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | LP | All Other |
| All location codes | 6.0 / 4.5 inches | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |

**Table 7.0.2 Volume equation defaults for each species, at specific location codes, with model name.**

| **Common Name** | **Location Code** | **Equation Number** | **Reference** |
| --- | --- | --- | --- |
| western white pine | All | I00FW2W119 | Flewelling's 2-Point Profile Model |
| western larch | All Region 1 | I00FW2W073 | Flewelling's 2-Point Profile Model |
| western larch | 621 | I11FW2W073 | Flewelling's 2-Point Profile Model |
| Douglas-fir | All Region 1 | I00FW2W202 | Flewelling's 2-Point Profile Model |
| Douglas-fir | 621 | I11FW2W202 | Flewelling's 2-Point Profile Model |
| grand fir | All Region 1 | I00FW2W017 | Flewelling's 2-Point Profile Model |
| grand fir | 621 | I11FW2W017 | Flewelling's 2-Point Profile Model |
| western hemlock | All Region 1 | I00FW2W260 | Flewelling's 2-Point Profile Model |
| western hemlock | 621 | I11FW2W017 | Flewelling's 2-Point Profile Model |
| western redcedar | All Region 1 | I00FW2W242 | Flewelling's 2-Point Profile Model |
| western redcedar | 621 | I11FW2W242 | Flewelling's 2-Point Profile Model |
| lodgepole pine | All Region 1 | I00FW2W108 | Flewelling's 2-Point Profile Model |
| lodgepole pine | 621 | I11FW2W108 | Flewelling's 2-Point Profile Model |
| Engelmann spruce | All Region 1 | I00FW2W093 | Flewelling's 2-Point Profile Model |
| Engelmann spruce | 621 | I13FW2W093 | Flewelling's 2-Point Profile Model |
| subalpine fir | All Region 1 | I00FW2W019 | Flewelling's 2-Point Profile Model |
| subalpine fir | 621 | I11FW2W202 | Flewelling's 2-Point Profile Model |
| ponderosa pine | All Region 1 | I00FW2W122 | Flewelling's 2-Point Profile Model |
| ponderosa pine | 621 | I12FW2W122 | Flewelling's 2-Point Profile Model |
| other | All Region 1 | I00FW2W260 | Flewelling's 2-Point Profile Model |
| other | 621 | 616BEHW999 | Flewelling's 2-Point Profile Model |

**Table 7.0.3 Citations by Volume Model**

|  |  |
| --- | --- |
| **Model Name** | **Citation** |
| Flewelling 2-Point Profile Model | Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II. |

# 8.0 Fire and Fuels Extension (FFE-FVS)

The Fire and Fuels Extension to the Forest Vegetation Simulator (FFE-FVS) (Reinhardt and Crookston 2003) integrates FVS with models of fire behavior, fire effects, and fuel and snag dynamics. This allows users to simulate various management scenarios and compare their effect on potential fire hazard, surface fuel loading, snag levels, and stored carbon over time. Users can also simulate prescribed burns and wildfires and get estimates of the associated fire effects such as tree mortality, fuel consumption, and smoke production, as well as see their effect on future stand characteristics. FFE-FVS, like FVS, is run on individual stands, but it can be used to provide estimates of stand characteristics such as canopy base height and canopy bulk density when needed for landscape-level fire models.

For more information on FFE-FVS and how it is calibrated for the KT variant, refer to the updated FFE-FVS model documentation (Rebain, comp. 2010) available on the FVS website.

# 9.0 Insect and Disease Extensions

FVS Insect and Pathogen models for dwarf mistletoe and western root disease have been developed for the KT variant through the participation and contribution of various organizations led by Forest Health Protection. These models are currently maintained by the Forest Management Service Center and regional Forest Health Protection specialists. Additional details regarding each model may be found in chapter 8 of the Essential FVS Users Guide (Dixon 2002).

# 10.0 Literature Cited

Burrill, Elizabeth A.; DiTommaso, Andrea M.; Turner, Jeffery A.; Pugh, Scott A.; Christensen, Glenn; Kralicek, Karin M.; Perry, Carol J.; Lepine, Lucie C.; Walker, David M.; Conkling, Barbara L. 2024. The Forest Inventory and Analysis Database, FIADB user guides, volume: database description (version 9.3), nationwide forest inventory (NFI). U.S. Department of Agriculture, Forest Service. 1026 p. [Online].

Cole, D. M.; Stage, A. R. 1972. Estimating future diameters of lodgepole pine. Res. Pap. INT-131. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 20p.

Crookston, Nicholas L. 2003. Internal document on file. Data provided from Region 1. Moscow, ID: Forest Service.

Dixon, Gary E. comp. 2002 (revised frequently). Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U.S. Department of Agriculture, Forest Service, Forest Management Service Center.

Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II.

Hamilton, D. A., Jr. 1986. A logistic model of mortality in thinned and unthinned mixed conifer stands of northern Idaho. Forest Science 32(4): 989-1000.

Krajicek, J.; Brinkman, K.; Gingrich, S. 1961. Crown competition – a measure of density. Forest Science. 7(1):35-42

Pfister, R. D.; Kovalchik, B. L.; Arno, S. F.; Presby, R. C. 1977. Forest habitat types of Montana. Gen. Tech. Rep. INT-34. Ogden, UT: Forest Service, Intermountain Research Station. 38p.

Rebain, Stephanie A. comp. 2010 (revised frequently). The Fire and Fuels Extension to the Forest Vegetation Simulator: Updated Model Documentation. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 379 p.

Reinhardt, Elizabeth; Crookston, Nicholas L. (Technical Editors). 2003. The Fire and Fuels Extension to the Forest Vegetation Simulator. Gen. Tech. Rep. RMRS-GTR-116. Ogden, UT: U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station. 209 p.

Stage, A. R. 1973. Prognosis Model for stand development. Res. Paper INT-137. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 32p.

Van Dyck, Michael G.; Smith-Mateja, Erin E., comps. 2000 (revised frequently). Keyword reference guide for the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

Westfall, James A.; Coulston, John W.; Gray, Andrew N.; Shaw, John D.; Radtke, Philip J.; Walker, David M.; Weiskittel, Aaron R.; MacFarlane, David W.; Affleck, David L.R.; Zhao, Dehai; Temesgen, Hailemariam; Poudel, Krishna P.; Frank, Jereme M.; Prisley, Stephen P.; Wang, Yingfang; Sánchez Meador, Andrew J.; Auty, David; Domke, Grant M. 2024. A national-scale tree volume, biomass, and carbon modeling system for the United States. Gen. Tech. Rep. WO-104. Washington, DC: U.S. Department of Agriculture, Forest Service. 37 p.

Wykoff, W. R. 1990. A basal area increment model for individual conifers in the northern Rocky Mountains. For. Science 36(4): 1077-1104.

Wykoff, William R., Crookston, Nicholas L., and Stage, Albert R. 1982. User’s guide to the Stand Prognosis Model. Gen. Tech. Rep. INT-133. Ogden, UT: Forest Service, Intermountain Forest and Range Experiment Station. 112p.

-----. 2009(revised frequently). Volume Estimator Library Equations. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

# 11.0 Appendices

## 11.1 Appendix A. Habitat Codes

**Table 11.1.1 KT variant habitat type codes and their corresponding original NI variant habitat type codes recognized in the KT variant (Pfister 1977).**

| **KT**  **Habitat Type**  **Code** | **Original NI Habitat Type Code** | **Abbreviation** | **Habitat Type Name** |
| --- | --- | --- | --- |
| 10 | 130 | SCREE | *Scree* |
| 65 | 130 | GRASS | *Grass type* |
| 70 | 130 | FORB | *Forb type* |
| 74 | 130 | SAL | *Willow* |
| 79 | 130 | POTRI | *Balsam poplar series* |
| 91 | 130 | PIFL/AGSP | *Limber pine/bluebunch wheatgrass* |
| 92 | 130 | PIFL/FEID | *Limber pine/Idaho fescue* |
| 93 | 130 | PIFL/FEID-FEID | *Limber pine/Idaho fescue/Idaho fescue* |
| 95 | 130 | PIFL/JUCO | *Limber pine/common juniper* |
| 100 | 130 | PIPO | *Ponderosa pine series* |
| 110 | 130 | PIPO/AND | *Ponderosa pine/bluestem* |
| 120 | 130 | PIPO/STCO | *Ponderosa pine/western needlegrass* |
| 130 | 130 | PIPO/AGSP | *ponderosa pine/ bluebunch wheatgrass* |
| 140 | 130 | PIPO/FEID | *Ponderosa pine/Idaho fescue* |
| 141 | 130 | PIPO/FEID-FEID | *Ponderosa pine/Idaho fescue/Idaho fescue* |
| 161 | 170 | PIPO/PUTR-AGSP | *Ponderosa pine/bitterbrush/Idaho fescue* |
| 170 | 170 | PIPO/SYAL | *Ponderosa pine/Common snowberry* |
| 171 | 170 | PIPO/SYAL-SYAL | *Ponderosa pine/common snowberry/common snowberry* |
| 172 | 170 | PIPO/SYAL-BERE | *Ponderosa pine/common snowberry/creeping barberry* |
| 180 | 170 | PIPO/PRVI | *Ponderosa pine/chokecherry* |
| 181 | 170 | PIPO/PRVI-PRVI | *Ponderosa pine/chokecherry/chokecherry* |
| 182 | 170 | PIPO/PRVI-SHCA | *Ponderosa pine/chokecherry/russet buffaloberry* |
| 200 | 260 | PSME | *Douglas-fir series* |
| 210 | 130 | PSME/AGSP | *Douglas-fir/Bluebench wheatgrass* |
| 220 | 130 | PSME/FEID | *Douglas-fir/Idaho fescue* |
| 221 | 130 | PSME/FEID-FEID | *Douglas-fir/Idaho fescue/Idaho fescue* |
| 230 | 130 | PSME/FESC | *Douglas-fir/altai fescue* |
| 250 | 250 | PSME/VACA | *Douglas-fir/Dwarf huckleberry* |
| 260 | 260 | PSME/PHMA | *Douglas-fir/ninebark* |
| 261 | 260 | PSME/PHMA-PHMA | *Douglas-fir/ninebark/ninebark* |
| 262 | 260 | PSME/PHMA-CARU | *Douglas-fir/ninebark/pinegrass* |
| 263 | 260 | PSME/PHMA-SMST | *Douglas-fir/ninebark/false solomon’s-seal* |
| 280 | 280 | PSME/VAGL | *Douglas-fir/blue huckleberry* |
| 281 | 280 | PSME/VAGL-VAGL | *Douglas-fir/thinleaf huckleberry/thinleaf huckleberry* |
| 282 | 280 | PSME/VAGL-ARUV | *Douglas-fir/thinleaf huckleberry/kinnikinnick* |
| 283 | 280 | PSME/VAGL-XETE | *Douglas-fir/thinleaf huckleberry/common beargrass* |
| 290 | 290 | PSME/LIBO | *Douglas-fir/twinflower* |
| 291 | 290 | PSME/LIBO-SYAL | *Douglas-fir/twinflower/common snowberry* |
| 292 | 290 | PSME/LIBO-CARU | *Douglas-fir/twinflower/thinleaf huckleberry* |
| 293 | 290 | PSME/LIBO-VAGL | *Douglas-fir/twinflower/thinleaf huckleberry* |
| 310 | 310 | PSME/SYAL | *Douglas-fir/common snowberry* |
| 311 | 310 | PSME/SYAL-AGSP | *Douglas-fir/common snowberry/bluebunch wheatgrass* |
| 312 | 310 | PSME/SYAL-CARU | *Douglas-fir/common snowberry/pinegrass* |
| 313 | 310 | PSME/SYAL-SYAL | *Douglas-fir/common snowberry/common snowberry* |
| 315 | 310 | PSME/SYAL-PIPO | *Douglas-fir/common snowberry/ponderosa pine* |
| 320 | 320 | PSME/CARU | *Douglas-fir/pinegrass* |
| 321 | 320 | PSME/CARU-AGSP | *Douglas-fir/pinegrass/bluebunch wheatgrass* |
| 322 | 320 | PSME/CARU-ARUV | *Douglas-fir/pinegrass/kinnikinnick* |
| 323 | 320 | PSME/CARU-CARU | *Douglas-fir/pinegrass/pinegrass* |
| 324 | 320 | PSME/CARU-PIPO | *Douglas-fir/pinegrass/ponderosa pine* |
| 330 | 330 | PSME/CAGE | *Douglas-fir/elk sedge* |
| 331 | 330 | PSME/CAGE-CAGE | *Douglas-fir/elk sedge/elk sedge* |
| 332 | 330 | PSME/CAGE-SYOR | *Douglas-fir/elk sedge/mountain snowberry* |
| 340 | 320 | PSME/SPBE | *Douglas-fir/white spirea* |
| 350 | 320 | PSME/ARUV | *Douglas-fir/kinnikinnick* |
| 360 | 330 | PSME/JUCO | *Douglas-fir/common juniper* |
| 370 | 310 | PSME/ARCO | *Douglas-fir/Heartleaf arnica* |
| 371 | 310 | PSME/ARCO-ARCO | *Douglas-fir/Heartleaf arnica/heartleaf arnica* |
| 400 | 420 | PICEA | *Spruce series* |
| 410 | 420 | PICEA/EQAR | *Spruce/common horsetail* |
| 420 | 420 | PICEA/CLUN | *Spruce/bride's bonnet* |
| 421 | 420 | PICEA/CLUN-VACA | *Spruce/bride's bonnet/dwarf bilberry* |
| 422 | 420 | PICEA/CLUN-CLUN | *Spruce/bride's bonnet/bride's bonnet* |
| 430 | 260 | PICEA/PHMA | *Spruce/mallow ninebark* |
| 440 | 470 | PICEA/GATR | *Spruce/sweetscented bedstraw* |
| 450 | 640 | PICEA/VACA | *Spruce/dwarf bilberry* |
| 460 | 850 | PICEA/SEST | *Spruce/rocky mountain groundsel* |
| 461 | 850 | PICEA/SEST-PSME | *Spruce/rocky mountain groundsel/douglas-fir* |
| 470 | 470 | PICEA/LIBO | *Spruce/twinflower* |
| 480 | 470 | PICEA/SMST | *Spruce/starry false lily of the valley* |
| 500 | 520 | ABGR | *Grand fir series* |
| 501 | 530 | THPL | *Western red cedar series* |
| 502 | 570 | TSHE | *Western hemlock series* |
| 505 | 510 | ABGR/SPBE | *Grand fir/white spiraea* |
| 507 | 510 | ABGR/PHMA-COOC | *Grand fir/ninebark/Idaho goldthread* |
| 508 | 510 | ABGR/PHMA-PHMA | *Grand fir/ninebark/ninebark* |
| 510 | 510 | ABGR/XETE | *Grand fir/beargrass* |
| 511 | 510 | ABGR/XETE-COOC | *Grand fir/western goldthread* |
| 515 | 510 | ABGR/VAGL | *Grand fir/blue huckleberry* |
| 520 | 520 | ABGR/CLUN | *Grand fir/bride's bonnet* |
| 521 | 520 | ABGR/CLUN-CLUN | *Grand fir/bride's bonnet/bride's bonnet* |
| 522 | 520 | ABGR/CLUN-ARNU | *Grand fir/bride's bonnet/wild sarsaparilla* |
| 523 | 520 | ABGR/CLUN-XETE | *Grand fir/bride's bonnet/common beargrass* |
| 524 | 520 | ABGR/CLUN-PHMA | *Grand fir/bride's bonnet/ninebark* |
| 529 | 520 | ABGR/SETR | *Grand fir/* |
| 530 | 530 | THPL/CLUN | *Western red cedar/bride's bonnet* |
| 531 | 530 | THPL/CLUN-CLUN | *Western red cedar/bride's bonnet/bride's bonnet* |
| 532 | 530 | THPL/CLUN-ARNU | *Western red cedar/bride's bonnet/wild sarsaparilla* |
| 533 | 530 | THPL/CLUN-MEFE | *Western red cedar/bride's bonnet/menziesia* |
| 534 | 530 | THPL/CLUN-XETE | *Western red cedar/bride's bonnet/common beargrass* |
| 540 | 540 | THPL/ATFI | *Western red cedar/common ladyfern* |
| 542 | 540 | THPL/ATFI-ATFI | *Western red cedar/common ladyfern/common ladyfern* |
| 545 | 530 | THPL/ASCA | *Western red cedar/* |
| 550 | 550 | THPL/OPHO | *Western red cedar/devilsclub* |
| 565 | 570 | TSHE/GYDR | *Western red cedar/* |
| 570 | 570 | TSHE/CLUN | *Western hemlock/bride's bonnet* |
| 571 | 570 | TSHE/CLUN-CLUN | *Western hemlock/bride's bonnet/bride's bonnet* |
| 572 | 570 | TSHE/CLUN-ARNU | *Western hemlock/bride's bonnet/wild sarsparilla* |
| 573 | 570 | TSHE/CLUN-XETE | *Western hemlock/bride's bonnet/common beargrass* |
| 574 | 570 | TSHE/CLUN-MEFE | *Western hemlock/bride's bonnet/menziesia* |
| 575 | 570 | TSHE/ASCA | *Western hemlock/Canadian wildginger* |
| 577 | 570 | TSHE/ASCA-MEFE | *Western hemlock/Canadian wildginger/menziesia* |
| 578 | 570 | TSHE/ASCA-ASCA | *Western hemlock/Canadian wildginger/Canadian wildginger* |
| 579 | 690 | TSHE/MEFE | *Western hemlock/menziesia* |
| 580 | 690 | ABGR/VACA | *Grand fir/dwarf huckleberry* |
| 585 | 690 | ABGR/CARU | *Grand fir/pinegrass* |
| 590 | 510 | ABGR/LIBO | *Grand fir/twinflower* |
| 591 | 510 | ABGR/LIBO-LIBO | *Grand-fir/twinflower/twinflower* |
| 592 | 510 | ABGR/LIBO-XETE | *Grand-fir/twinflower/beargrass* |
| 610 | 610 | ABLA/OPHO | *Subalpine fir/devilsclub* |
| 620 | 620 | ABLA/CLUN | *Subalpine fir/twisted stalk* |
| 621 | 620 | ABLA/CLUN-CLUN | *Subalpine fir/bride's bonnet/bride's bonnet* |
| 622 | 620 | ABLA/CLUN-ARNU | *Subalpine fir/bride's bonnet/wild sarsaparilla* |
| 623 | 620 | ABLA/CLUN-VACA | *Subalpine fir/bride's bonnet/dwarf bilberry* |
| 624 | 620 | ABLA/CLUN-XETE | *Subalpine fir/twisted stalk/beargrass* |
| 625 | 620 | ABLA/CLUN-MEFE | *Subalpine fir/twisted stalk/menziesia* |
| 630 | 660 | ABLA/GATR | *Subalpine fir/fragrant bedstraw* |
| 632 | 660 | ABLA/GATR3/VASC | *Subalpine fir/fragrant bedstraw/grouse whortleberry* |
| 635 | 620 | ABLA/STAM | *Subalpine fir/twisted-stalk* |
| 636 | 620 | ABLA/STAM-MEFE | *Subalpine fir/menziesia* |
| 640 | 640 | ABLA/VACA | *Subalpine fir/dwarf huckleberry* |
| 641 | 640 | ABLA/VACA-VACA | *Subalpine fir/dwarf huckleberry/dwarf huckleberry* |
| 642 | 640 | ABLA/VACA-CACA | *Subalpine fir/dwarf huckleberry/bluejoint* |
| 650 | 640 | ABLA/CACA | *Subalpine fir/bluejoint* |
| 651 | 640 | ABLA/CACA-CACA | *Subalpine fir/bluejoint/bluejoint* |
| 652 | 640 | ABLA/CACA-LICA | *Subalpine fir/canby’s ligusticum* |
| 653 | 640 | ABLA/CACA-GATR | *Subalpine fir/bluejoint/fragrant bedstraw* |
| 654 | 640 | ABLA/CACA-VACA | *Subalpine fir/bluejoint/dwarf huckleberry* |
| 655 | 640 | ABLA/CACA-LEGL | *Subalpine fir/bluejoint/Labrador tea* |
| 660 | 660 | ABLA/LIBO | *Subalpine fir/twinflower* |
| 661 | 660 | ABLA/LIBO-LIBO | *Subalpine fir/twinflower/twinflower* |
| 662 | 660 | ABLA/LIBO-XETE | *Subalpine fir/twinflower/beargrass* |
| 663 | 660 | ABLA/LIBO-VASC | *Subalpine fir/twinflower/grouse whortleberry* |
| 670 | 670 | ABLA/MEFE | *Subalpine fir/menziesia* |
| 671 | 670 | ABLA/MEFE-COOL | *Subalpine fir/western goldthread* |
| 672 | 670 | ABLA/MEFE-LUHI | *Subalpine fir/menziesia* |
| 673 | 670 | ABLA/MEFE-XETE | *Subalpine fir/menziesia/common beargrass* |
| 674 | 670 | ABLA/MEFE-VASC | *Subalpine fir/menziesia/grouse whortleberry* |
| 680 | 680 | TSME/MEFE | *Mountain hemlock/menziesia* |
| 690 | 690 | ABLA/XETE | *Subalpine fir/beargrass* |
| 691 | 690 | ABLA/XETE-VAGL | *Subalpine fir/beargrass/blue huckleberry* |
| 692 | 690 | ABLA/XETE-VASC | *Subalpine fir/beargrass/grouse whortleberry* |
| 693 | 690 | ABLA/XETE-COOC | *Subalpine fir/beargrass/Idaho goldthread* |
| 700 | 730 | TSME | *Subalpine fir, lower subalpine* |
| 710 | 710 | TSME/XETE | *Mountain hemlock/beargrass* |
| 712 | 710 | TSME/XETE-VAGL | *Mountain hemlock/beargrass/blue huckleberry* |
| 720 | 720 | ABLA/VAGL | *Subalpine fir/blue huckleberry* |
| 730 | 730 | ABLA/VASC | *Subalpine fir/grouse whortleberry* |
| 731 | 730 | ABLA/VASC-CARU | *Subalpine fir/grouse whortleberry/pinegrass* |
| 732 | 730 | ABLA/VASC-VASC | *Subalpine fir/grouse whortleberry/grouse whortleberry* |
| 733 | 730 | ABLA/VASC-THOC | *Subalpine fir/grouse whortleberry/western meadow rue* |
| 734 | 730 | ABLA/VASC-PIAL | *Subalpine fir/whitebark pine phase* |
| 740 | 670 | ABLA/ALSI | *Subalpine fir/sitka alder* |
| 750 | 690 | ABLA/CARU | *Subalpine fir/pinegrass* |
| 751 | 690 | ABLA/CARU-CARU | *Subalpine fir/pinegrass/pinegrass* |
| 761 | 690 | ABLA/OSCH-PAMY | *Subalpine fir/sweetcicely/Oregon boxleaf* |
| 770 | 730 | ABLA/CLPS | *Subalpine fir/rock clematis* |
| 780 | 690 | ABLA/ARCO | *Subalpine fir/heartleaf arnica* |
| 790 | 730 | ABLA/CAGE | *Subalpine fir/elk sedge* |
| 791 | 730 | ABLA/CAGE-CAGE | *Subalpine fir/elk sedge/elk sedge* |
| 792 | 730 | ABLA/CAGE-PSME | *Subalpine fir/elk sedge/douglas-fir* |
| 810 | 830 | ABLA/RIMO | *Subalpine fir/mountain gooseberry* |
| 820 | 850 | ABLA-PIAL/VASC | *Subalpine fir/whitebark pine/grouse whortleberry* |
| 830 | 830 | ABLA/LUHI | *Subalpine fir/smooth woodrush* |
| 831 | 830 | ABLA/LUHI-VASC | *Subalpine fir/smooth woodrush/grouse whortleberry* |
| 832 | 830 | ABLA/LUHI-MEFE | *Subalpine fir/smooth woodrush/rusty menziesia* |
| 850 | 850 | PIAL-ABLA | *Whitebark pine-subalpine fir* |
| 860 | 850 | LALY-ABLA | *Alpine larch-subalpine fir* |
| 870 | 850 | PIAL | *Whitebark pine* |
| 900 | 730 | PICO | *Lodgepole pine* |
| 910 | 330 | PICO/PUTR | *Lodgepole pine/antelope bitterbrush* |
| 920 | 640 | PICO/VACA | *Lodgepole pine/dwarf huckleberry* |
| 930 | 660 | PICO/LIBO | *Lodgepole pine/twinflower* |
| 940 | 730 | PICO/VASC | *Lodgepole pine/grouse whortleberry* |
| 950 | 570 | PICO/CARU | *Lodgepole pine/pinegrass* |

The U.S. Department of Agriculture (USDA) prohibits discrimination in all its programs and activities on the basis of race, color, national origin, sex, religion, age, disability, political beliefs, sexual orientation, or marital or family status. (Not all prohibited bases apply to all programs.) Persons with disabilities who require alternative means for communication of program information (Braille, large print, audiotape, etc.) should contact USDA’s TARGET Center at (202) 720-2600 (voice and TDD).

To file a complaint of discrimination, write USDA, Director, Office of Civil Rights, Room 326-W, Whitten Building, 1400 Independence Avenue, SW, Washington, DC 20250-9410 or call (202) 720-5964 (voice or TDD). USDA is an equal opportunity provider and employer.