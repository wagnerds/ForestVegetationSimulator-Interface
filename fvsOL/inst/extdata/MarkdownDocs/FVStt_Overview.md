Tetons (TT) Variant Overview of the Forest Vegetation Simulator

September 2025

**![](data:image/jpeg;base64...)**

![Forest%20Service%20Color](data:image/jpeg;base64...)Spread Creek, Bridger-Teton National Forest

(Liz Davy, FS-R4)

Tetons (TT) Variant Overview of the Forest Vegetation Simulator

# Authors and Contributors:

The FVS staff has maintained model documentation for this variant in the form of a variant overview since its release in 1982. The original author was Gary Dixon. In 2008, the previous document was replaced with an updated variant overview. Gary Dixon, Christopher Dixon, Robert Havis, Chad Keyser, Stephanie Rebain, Erin Smith-Mateja, and Don Vandendriesche were involved with that update. Don Vandendriesche cross-checked the information contained in that variant overview update with the FVS source code. In 2010, Gary Dixon expanded the species list and made significant updates to this variant overview.

FVS Staff. 2008 (revised September 23, 2025). Tetons (TT) Variant Overview – Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 58p.

Table of Contents

[Authors and Contributors: ii](#_Toc209532683)

[1.0 Introduction 1](#_Toc209532684)

[2.0 Geographic Range 2](#_Toc209532685)

[3.0 Control Variables 3](#_Toc209532686)

[3.1 Location Codes 3](#_Toc209532687)

[3.2 Species Codes 3](#_Toc209532688)

[3.3 Habitat Type, Plant Association, and Ecological Unit Codes 4](#_Toc209532689)

[3.4 Site Index 4](#_Toc209532690)

[3.5 Maximum Density 6](#_Toc209532691)

[4.0 Growth Relationships 8](#_Toc209532692)

[4.1 Height-Diameter Relationships 8](#_Toc209532693)

[4.2 Bark Ratio Relationships 9](#_Toc209532694)

[4.3 Crown Ratio Relationships 10](#_Toc209532695)

[4.3.1 Crown Ratio Dubbing 10](#_Toc209532696)

[4.3.2 Crown Ratio Change 13](#_Toc209532697)

[4.3.3 Crown Ratio for Newly Established Trees 13](#_Toc209532698)

[4.4 Crown Width Relationships 14](#_Toc209532699)

[4.5 Crown Competition Factor 16](#_Toc209532700)

[4.6 Small Tree Growth Relationships 17](#_Toc209532701)

[4.6.1 Small Tree Height Growth 17](#_Toc209532702)

[4.6.2 Small Tree Diameter Growth 21](#_Toc209532703)

[4.7 Large Tree Growth Relationships 23](#_Toc209532704)

[4.7.1 Large Tree Diameter Growth 23](#_Toc209532705)

[4.7.2 Large Tree Height Growth 26](#_Toc209532706)

[5.0 Mortality Model 32](#_Toc209532707)

[6.0 Regeneration 35](#_Toc209532708)

[7.0 Volume 37](#_Toc209532709)

[8.0 Fire and Fuels Extension (FFE-FVS) 39](#_Toc209532710)

[9.0 Insect and Disease Extensions 40](#_Toc209532711)

[10.0 Literature Cited 41](#_Toc209532712)

[11.0 Appendices 44](#_Toc209532713)

[11.1 Appendix A: Habitat Type Codes 44](#_Toc209532714)

Quick Guide to Default Settings

|  |  |  |
| --- | --- | --- |
| **Parameter or Attribute** | **Default Setting** | |
| Number of Projection Cycles | 1 (10 if using FVS GUI) | |
| Projection Cycle Length | 10 years | |
| Location Code (National Forest) | 415 – Targhee National Forest | |
| Plant Association Code | 0 (unknown) | |
| Slope | 5 percent | |
| Aspect | 0 (no meaningful aspect) | |
| Elevation | 65 (6500 feet) | |
| Latitude / Longitude | Latitude | Longitude |
| All location codes | 44 | 111 |
| Site Species | DF | |
| Site Index | 50 | |
| Maximum Stand Density Index | Species specific | |
| Maximum Basal Area | Based on maximum stand density index | |
| Volume Equations | National Volume Estimator Library | |
| Merchantable Cubic Foot Volume Specifications: | | |
| Minimum DBH / Top Diameter | LP | All Other Species |
| All location codes | 7.0 / 6.0 inches | 8.0 / 6.0 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| Merchantable Board Foot Volume Specifications: | | |
| Minimum DBH / Top Diameter | LP | All Other Species |
| All location codes | 7.0 / 6.0 inches | 8.0 / 6.0 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| Sampling Design: | | |
| Large Trees (variable radius plot) | 40 BAF | |
| Small Trees (fixed radius plot) | 1/300th Acre | |
| Breakpoint DBH | 5.0 inches | |

# 1.0 Introduction

The Forest Vegetation Simulator (FVS) is an individual tree, distance independent growth and yield model with linkable modules called extensions, which simulate various insect and pathogen impacts, fire effects, fuel loading, snag dynamics, and development of understory tree vegetation. FVS can simulate a wide variety of forest types, stand structures, and pure or mixed species stands.

New “variants” of the FVS model are created by imbedding new tree growth, mortality, and volume equations for a particular geographic area into the FVS framework. Geographic variants of FVS have been developed for most of the forested lands in the United States.

The Tetons (TT) variant was developed in 1982. It covers western Wyoming and eastern Idaho and includes the Bridger, Caribou, Targhee, and Teton National Forests.

Since the variant’s development in 1982, many of the functions have been adjusted and improved as more data has become available and as model technology has advanced. In 2010 this variant was expanded from 8 species to 18 species. Ponderosa pine was added using ponderosa pine equations from the Central Idaho variant; singleleaf pinyon was added using the common pinyon growth equations from the Utah variant; blue spruce was added using the Engelmann spruce equations; Rocky Mountain juniper and Utah juniper were added and use the western juniper equations from the Utah variant; bigtooth maple was added using bigleaf maple equations from the SO variant and other equations from the Utah variant; Rocky Mountain maple was added using Rocky Mountain maple equations from the Inland Empire variant; narrowleaf cottonwood was added using cottonwood equations from the Central Rockies variant; curl-leaf mountain mahogany was added using equations from the South Central Oregon / Northeastern California and Utah variants; and the grouping for all other species was eliminated and replaced with groupings for other softwood using the equations for the previous other species grouping (singleleaf pinyon), and other hardwood using cottonwood equations from the Central Rockies variant.

To fully understand how to use this variant, users should also consult the following publication:

* Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002)

This publication may be downloaded from the Forest Management Service Center (FMSC), Forest Service website. Other FVS publications may be needed if one is using an extension that simulates the effects of fire, insects, or diseases.

# 2.0 Geographic Range

The TT variant was fit to data representing forest types in western Wyoming and eastern Idaho. The TT variant covers forest areas in eastern Idaho and western Wyoming. The suggested geographic range of use for the TT variant is shown in figure 2.0.1.

**![Picture of the suggested range of the Tetons variant of FVS.](data:image/jpeg;base64...)**

**Figure 2.0.1 Suggested geographic range of use for the TT variant.**

# 3.0 Control Variables

FVS users need to specify certain variables used by the TT variant to control a simulation. These are entered in parameter fields on various FVS keywords available in the FVS interface or they are read from an FVS input database using the Database Extension.

## 3.1 Location Codes

The location code is a 3- or 4-digit code where, in general, the first digit of the code represents the Forest Service Region Number, and the last two digits represent the Forest Number within that region. In some cases, a location code beginning with a “7” or “8” is used to indicate an administrative boundary that doesn’t use a Forest Service Region number (for example, other federal agencies, state agencies, or other lands).

If the location code is missing or incorrect in the TT variant, a default forest code of 415 (Targhee National Forest) will be used. Location codes recognized in the TT variant are shown in tables 3.1.1 and 3.1.2.

**Table 3.1.1 Location codes used in the TT variant.**

|  |  |
| --- | --- |
| **Location Code** | **Location** |
| 403 | Bridger National Forest |
| 405 | Caribou National Forest |
| 415 | Targhee National Forest |
| 416 | Tetons National Forest |

**Table 3.1.2 Bureau of Indian Affairs reservation codes used in the TT variant.**

| **Location Code** | **Location** |
| --- | --- |
| 7306 | Wind River Reservation (mapped to 403) |
| 8107 | Fort Hall Reservation (mapped to 405) |

## 3.2 Species Codes

The TT variant recognizes 16 species, plus two other composite species categories. You may use FVS species codes, Forest Inventory and Analysis (FIA) species codes, or USDA Natural Resources Conservation Service PLANTS symbols to represent these species in FVS input data. Any valid western species code identifying species not recognized by the variant will be mapped to a similar species in the variant. The species mapping crosswalk is available on the FVS website variant documentation webpage. Any non-valid species code will default to the “other hardwood” category.

Either the FVS sequence number or species code must be used to specify a species in FVS keywords and Event Monitor functions. FIA codes or PLANTS symbols are only recognized during data input and may not be used in FVS keywords. Table 3.2.1 shows the complete list of species codes recognized by the TT variant.

When entering tree data, users should substitute diameter at root collar (DRC) for diameter at breast height (DBH) for woodland species (pinyon and junipers).

**Table 3.2.1 Species codes used in the TT variant.**

| **Species Number** | **Species Code** | **FIA Code** | **PLANTS Symbol** | **Scientific Name1** | **Common Name1** |
| --- | --- | --- | --- | --- | --- |
| 1 | WB | 101 | PIAL | *Pinus albicaulis* | whitebark pine |
| 2 | LM | 113 | PIFL2 | *Pinus flexilis* | limber pine |
| 3 | DF | 202 | PSME | *Pseudotsuga menziesii* | Douglas-fir |
| 4 | PM | 133 | PIMO | *Pinus monophylla* | singleleaf pinyon |
| 5 | BS | 096 | PIPU | *Picea pungens* | blue spruce |
| 6 | AS | 746 | POTR5 | *Populus tremuloides* | quaking aspen |
| 7 | LP | 108 | PICO | *Pinus contorta* | lodgepole pine |
| 8 | ES | 093 | PIEN | *Picea engelmannii* | Engelmann spruce |
| 9 | AF | 019 | ABLA | *Abies lasiocarpa* | subalpine fir |
| 10 | PP | 122 | PIPO | *Pinus ponderosa* | ponderosa pine |
| 11 | UJ | 065 | JUOS | *Juniperus osteosperma* | Utah juniper |
| 12 | RM | 066 | JUSC2 | *Juniperus scopulorum* | Rocky Mountain juniper |
| 13 | BI | 322 | ACGR3 | *Acer grandidentatum* | bigtooth maple |
| 14 | MM | 321 | ACGL | *Acer glabrum* | Rocky Mountain maple |
| 15 | NC | 749 | POAN3 | *Populus angustifolia* | narrowleaf cottonwood |
| 16 | MC | 475 | CELE3 | *Cercocarpus ledifolius* | curl-leaf mountain mahogany |
| 17 | OS | 299 | 2TN |  | other softwood2 |
| 18 | OH | 998 | 2TB |  | other hardwood2 |

1Set based on the USDA Forest Service NRM TAXA lists and the USDA Plants database.

2Other categories use FIA codes and NRM TAXA codes that best match the other category.

## 3.3 Habitat Type, Plant Association, and Ecological Unit Codes

In the TT variant, habitat type codes are used in the Fire and Fuels Extension (FFE) to set fuel loading in cases where there are no trees in the first cycle. They are also used in large tree diameter growth for ponderosa pine. Habitat type codes recognized in the TT variant are shown in Appendix A. If an incorrect habitat type code is entered or no code is entered, FVS will use the default habitat type code, which is 0 (unknown). Users may enter the habitat type code or the habitat type FVS sequence number on the STDINFO keyword, when entering stand information from a database, or when using the SETSITE keyword without the PARMS option. If using the PARMS option with the SETSITE keyword, users must use the FVS sequence number for the habitat type.

## 3.4 Site Index

Site index is used in some of the growth equations in the TT variant. When possible, users should enter their own values instead of relying on the default values assigned by FVS. If site index information is available, a single site index can be specified for the whole stand, a site index for each individual species can be specified, or a combination of these can be entered. If the user does not supply site index values, then default values will be used. When entering site index in the TT variant, the sources shown in table 3.4.1 should be used if possible. The default site species is Douglas-fir with a site index of 50.

When site index is not specified for a species, a relative site index value is calculated from the site index of the site species using equations {3.4.1} and {3.4.2}. Minimum and Maximum site indices used in equation {3.4.1} may be found in table 3.4.2. If the site index for the stand is less than or equal to the lower site limit, it is set to the lower limit for the calculation of *RELSI*. Similarly, if the site index for the stand is greater than the upper site limit, it is set to the upper site limit for the calculation of *RELSI*.

{3.4.1} *RELSI* = (*SIsite* – *SITELOsite*) / (*SITEHIsite* – *SITELOsite*)

{3.4.2} *SIi* = *SITELOi* +(*RELSI* \* (*SITEHIi* – *SITELOi*))

where:

*RELSI* is the relative site index of the site species

*SI* is species site index

*SITELO* is the lower bound of the *SI* range for a species

*SITEHI* is the upper bound of the *SI* range for a species

*site* is the site species

*i* is the species for which site index is to be calculated

**Table 3.4.1 Site index reference curves for species in the TT variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **Reference** | **BHA or TTA\*** | **REF Base Age** |
| DF | Brickell Res. Pap. INT-75 | TTA | 50 |
| AS, MM | Edminster, Mowrer, and Shepperd Res. Note RM-453 | BHA | 80 |
| LP, WB, LM, OS | Alexander, Tackle, and Dahms Res. Paper RM-29 | TTA | 100\*\* |
| BS, ES, AF | Alexander Res. Paper RM-32 | BHA | 100\*\* |
| PM, UJ, RM | Any 100-year base age curve | TTA | 100 |
| PP | Meyer (1961.rev) Tech. Bulletin 630 | TTA | 100 |
| MC, BI | Curtis, R. O., et. al. (1974) Forest Science | BHA | 100 |
| NC, OH | Alexander Res. Paper RM-32 | BHA | 100 |

\*Equation is based on total tree age (TTA) or breast height age (BHA)

\*\*Site index for these species will be converted to a 50-year age basis within FVS since growth equations for these species were fit with a 50-year age based site index

**Table 3.4.1 *SITELO* and *SITEHI* values for equations {3.4.1} and {3.4.2} in the TT variant.**

| **Species Code** | ***SITELO*** | ***SITEHI*** |
| --- | --- | --- |
| WB | 25 | 50 |
| LM | 25 | 50 |
| DF | 20 | 60 |
| PM | 5 | 20 |
| BS | 40 | 100 |
| AS | 30 | 70 |
| LP | 20 | 100 |
| ES | 40 | 100 |
| AF | 40 | 90 |
| PP | 40 | 80 |
| UJ | 5 | 15 |
| RM | 5 | 15 |
| BI | 5 | 30 |
| MM | 5 | 30 |
| NC | 30 | 120 |
| MC | 5 | 15 |
| OS | 20 | 50 |
| OH | 5 | 20 |

## 3.5 Maximum Density

Maximum stand density index (SDI) and maximum basal area (BA) are important variables in determining density related mortality and crown ratio change. Maximum basal area is a stand level metric that can be set using the BAMAX or SETSITE keywords. If not set by the user, a default value is calculated from maximum stand SDI each projection cycle. Maximum stand density index can be set for each species using the SDIMAX or SETSITE keywords. If not set by the user, a default value is assigned as discussed below.

The default maximum SDI is set by species or a user specified basal area maximum. If a user specified basal area maximum is present, the maximum SDI for all species is computed using equation {3.5.1}; otherwise, species SDI maximums are assigned from the SDI maximums shown in table 3.5.1. Maximum stand density index at the stand level is a weighted average, by basal area proportion, of the individual species SDI maximums.

Stand SDI is calculated using the Zeide calculation method (Dixon 2002).

{3.5.1} *SDIMAXi =* *BAMAX* / (0.5454154 \* *SDIU)*

where:

*SDIMAXi* is species-specific SDI maximum

*BAMAX* is the user-specified stand basal area maximum

*SDIU* is theproportion of theoretical maximum density at which the stand reaches actual maximum density (default 0.85, changed with the SDIMAX keyword)

**Table 3.5.1 Stand density index maximums by species in the TT variant.**

| **Species Code** | **SDI Maximum** | **Mapped to** |
| --- | --- | --- |
| WB | 621 |  |
| LM | 409 |  |
| DF | 570 |  |
| PM | 358 |  |
| BS | 620 | Engelmann spruce |
| AS | 562 |  |
| LP | 679 |  |
| ES | 620 |  |
| AF | 602 |  |
| PP | 446 |  |
| UJ | 497 |  |
| RM | 411 |  |
| BI | 619 |  |
| MM | 680 |  |
| NC | 452 | black cottonwood |
| MC | 501 |  |
| OS | 409 | limber pine |
| OH | 452 | black cottonwood |

\*Source of SDI maximums is an unpublished analysis of FIA data by John Shaw.

# 4.0 Growth Relationships

This chapter describes the functional relationships used to fill in missing tree data and calculate incremental growth. In FVS, trees are grown in either the small tree sub-model or the large tree sub-model depending on the diameter.

## 4.1 Height-Diameter Relationships

Height-diameter relationships in FVS are primarily used to estimate tree heights missing in the input data, and occasionally to estimate diameter growth on trees smaller than a given threshold diameter. In the TT variant, height-diameter relationships for all species except bigtooth maple (BI) and curl-leaf mountain mahogany (MC) are a logistic functional form, as shown in equation {4.1.1} (Wykoff, et.al. 1982). The equation was fit to data of the same species used to develop other FVS variants. Coefficients for equation {4.1.1} are shown are shown in table 4.1.1.

When heights are given in the input data for 3 or more trees of a given species, the value of B1 in equation {4.1.1} for that species is recalculated from the input data and replaces the default value shown in Table 4.1.1. In the event that the calculated value is less than zero, the default is used. Automatic calibration of the logistic height-diameter relationship is turned on by default for all species except bigtooth maple and curl-leaf mountain mahogany. This feature can be turned off using the NOHTDREG keyword.

{4.1.1} HT = 4.5 + exp(B1 + B2 / (DBH + 1.0))

where:

*HT* is tree height

*DBH* is tree diameter at breast height

B1 - B2 are species-specific coefficients shown in table 4.1.1

**Table 4.1.1 Coefficients for the height-diameter relationship equation in the TT variant.**

| **Species Code** | **Default B1** | **B2** |
| --- | --- | --- |
| WB | 4.1920 | -5.1651 |
| LM | 4.1920 | -5.1651 |
| DF | 4.5175 | -6.5129 |
| PM | 3.2 | -5.0 |
| BS | 4.5822 | -6.4818 |
| AS | 4.4625 | -5.2223 |
| LP | 4.4625 | -5.2223 |
| ES | 4.5822 | -6.4818 |
| AF | 4.3603 | -5.2148 |
| PP | 4.993 | -12.430 |
| UJ | 3.2 | -5.0 |
| RM | 3.2 | -5.0 |
| BI | 4.7 | -6.3260 |
| MM | 4.4421 | -6.5405 |
| NC | 4.4421 | -6.5405 |
| MC | 5.1520 | -13.5760 |
| OS | 4.1920 | -5.1651 |
| OH | 4.4421 | -6.5405 |

The default height-diameter relationship for bigtooth maple and curl-leaf mountain mahogany uses the Curtis-Arney functional form as shown in equation {4.1.2} (Curtis 1967, Arney 1985). If the input data contains at least three measured heights for a species, then FVS can switch to a logistic height-diameter equation {4.1.1} for trees with a *DBH* of 5.0” or greater that is calibrated to the input data. If the logistic equation is being used then trees of these two species less than 5.0” DBH use equation 4.1.3. For bigtooth maple and curl-leaf mountain mahogany in the TT variant, this switch to using the logistic equations doesn’t happen by default, but can be turned on with the NOHTDREG keyword by entering “1” in field 2.

{4.1.2} Curtis-Arney functional form

DBH <u>></u> 3.0”: HT = 4.5 + P2 \* exp[-P3 \* DBH ^ P4]

DBH < 3.0”: HT = [(4.5 + P2 \* exp[-P3 \* 3.0 ^ P4] – 4.51) \* (DBH – 0.3) / 2.7] + 4.51

where:

curl-leaf mountain mahogany bigtooth maple

P2 = 1709.7229 P2 = 76.5170

P3 = 5.8887 P3 = 2.2107

P4 = -0.2286 P4 = -0.6365

{4.1.4} *HT* = 0.0994 + 4.9767 \* *DBH* *DBH* < 5.0”

(note: 4.1.4 is used in conjuntion with 4.1.1 for trees with *DBH* <u>></u> 5.0” when the logistic equations are being used for bigtooth maple or curl-leaf mountain mahogany)

## 4.2 Bark Ratio Relationships

Bark ratio estimates are used to convert between diameter outside bark and diameter inside bark in various parts of the model. The equations are shown in {4.2.1} - {4.2.4} with equations number and coefficients (b1 and b2) by species shown in table 4.2.1.

{4.2.1} *BRATIO* = b1 + b2 \* (1/DBH) where 1.0 <u><</u> *DBH* <u><</u> 19.0

{4.2.2} *BRATIO* = b1

{4.2.3} BRATIO = b1 + b2 \*(1.0/*DBH*) where *DBH* <u>></u> 1.0

{4.2.4} *DIB* = b1 \* *DBH*^b2 BRATIO = DIB / *DBH*

where:

*BRATIO* is species-specific bark ratio (bounded to 0.80 <u><</u> *BRATIO* <u><</u> 0.97 for PP; bounded to 0.80 <u><</u> *BRATIO* <u><</u> 0.99 for all other species)

*DBH* is tree diameter outside bark at breast height

*DIB* is tree diameter inside bark at breast height

b1 - b2 are species-specific coefficients shown in table 4.2.1

**Table 4.2.1 Coefficient for bark ratio equation {4.2.1} in the TT variant.**

| **Species Code** | **b1** | **b2** | **Equation Number** |
| --- | --- | --- | --- |
| WB | 0.969 | 0. | {4.2.2} |
| LM | 0.969 | 0. | {4.2.2} |
| DF | 0.867 | 0. | {4.2.2} |
| PM | 0.9002 | -0.3089 | {4.2.1} |
| BS | 0.956 | 0. | {4.2.2} |
| AS | 0.969 | 0. | {4.2.2} |
| LP | 0.969 | 0. | {4.2.2} |
| ES | 0.956 | 0. | {4.2.2} |
| AF | 0.937 | 0. | {4.2.2} |
| PP | 0.80943 | 1.01687 | {4.2.4} |
| UJ | 0.9002 | -0.3089 | {4.2.1} |
| RM | 0.9002 | -0.3089 | {4.2.1} |
| BI | 0.94782 | 0.0836 | {4.2.3} |
| MM | 0.950 | 0. | {4.2.2} |
| NC | 0.892 | -0.086 | {4.2.3} |
| MC | 0.9 | 0. | {4.2.2} |
| OS | 0.969 | 0. | {4.2.2} |
| OH | 0.892 | -0.086 | {4.2.3} |

## 4.3 Crown Ratio Relationships

Crown ratio equations are used for three purposes in FVS: (1) to estimate tree crown ratios missing from the input data for both live and dead trees; (2) to estimate change in crown ratio from cycle to cycle for live trees; and (3) to estimate initial crown ratios for regenerating trees established during a simulation.

### 4.3.1 Crown Ratio Dubbing

In the TT variant, crown ratios missing in the input data are predicted using different equations depending on tree species and size. For all species except narrowleaf cottonwood and other hardwood, live trees less than 1.0” in diameter and dead trees of all sizes use equation {4.3.1.1} and one of the equations listed below,{4.3.1.2} or {4.3.1.3}, to compute crown ratio. Curlleaf mountain mahogany and bigtooth maple use crown ratio equation {4.3.1.3}, whereas all others not listed above use crown ratio equation {4.3.1.2}. Equation coefficients are found in table 4.3.1.1.

{4.3.1.1} *X* = R1 + R2 \* *DBH* + R3 \* *HT* + R4 \* *BA* + R5 \* *PCCF* + R6 \* *HTAvg / HT* + R7 \* *HTAvg* + R8 \* *BA* \* *PCCF* + R9 \* *MAI*

{4.3.1.2} *CR* = 1 / (1 + exp(*X* + *N(0,SD)*) where absolute value of (*X*+ *N(0,SD)*) *<u><</u> 86*

{4.3.1.3} *CR* = ((*X*-1.0) \* 10 + 1) / 100

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

**Table 4.3.1.1 Coefficients for the crown ratio equation {4.3.1.1} in the TT variant.**

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Coefficient** | **Species Code** | | | | | | |
| **WB, LM** | **DF, BS, ES, AF, NC, OH** | **AS, MM** | **LP** | **PM, UJ, RM, OS** | **PP** | **BI, MC** |
| R1 | -1.669490 | -0.426688 | -0.426688 | -1.669490 | -2.19723 | -0.17561 | 5.0 |
| R2 | -0.209765 | -0.093105 | -0.093105 | -0.209765 | 0 | -0.33847 | 0 |
| R3 | 0 | 0.022409 | 0.022409 | 0 | 0 | 0.05699 | 0 |
| R4 | 0.003359 | 0.002633 | 0.002633 | 0.003359 | 0 | 0.00692 | 0 |
| R5 | 0.011032 | 0 | 0 | 0.011032 | 0 | 0 | 0 |
| R6 | 0 | -0.045532 | -0.045532 | 0 | 0 | 0 | 0 |
| R7 | 0.017727 | 0 | 0 | 0.017727 | 0 | 0 | 0 |
| R8 | -0..000053 | 0.000022 | 0.000022 | -0.000053 | 0 | 0 | 0 |
| R9 | 0.014098 | -0.013115 | -0.013115 | 0.014098 | 0 | 0 | 0 |
| SD | 0.5 | 0.6957 | 0.9310 | 0.6124 | 0.2 | 0.8866 | 0.5 |

For all species, except singleleaf pinyon, Utah juniper, Rocky Mountain juniper, narrowleaf cottonwood, and other hardwood, a Weibull-based crown model developed by Dixon (1985) as described in Dixon (2002) is used to predict crown ratio for all live trees 1.0” in diameter or larger. To estimate crown ratio using this methodology, the average stand crown ratio is estimated from stand density index using equation {4.3.1.4}. Weibull parameters are then estimated from the average stand crown ratio using equations in equation set {4.3.1.5}. Individual tree crown ratio is then set from the Weibull distribution, equation {4.3.1.6} based on a tree’s relative position in the diameter distribution and multiplied by a scale factor, shown in equation {4.3.1.7}, which accounts for stand density. Crowns estimated from the Weibull distribution are bounded to be between the 5 and 95 percentile points of the specified Weibull distribution. Equation coefficients for each species are shown in table 4.3.1.2.

{4.3.1.4} *ACR* = d0 + d1 \* *RELSDI* \* 100.0

where: RELSDI = SDIstand / SDImax

{4.3.1.5} Weibull parameters A, B, and C are estimated from average crown ratio

*A* = a0

*B* = b0 + b1 \* ACR (*B* <u>></u> 1)

*C* = c0 + c1 \* ACR (*C* <u>></u> 2)

{4.3.1.6} *Y* = 1-exp(-((*X*-*A*)/*B*))^*C*

{4.3.1.7} *SCALE =* 1 – 0.00167 \* (*CCF* – 100)

where:

*ACR* is predicted average stand crown ratio for the species

*SDIstand* is stand density index of the stand

*SDImax* is maximum stand density index

*A*, *B*, *C* are parameters of the Weibull crown ratio distribution

*X* is a tree’s crown ratio expressed as a percent / 10

*Y* is a trees rank in the diameter distribution (1 = smallest; ITRN = largest) divided by the total number of trees (ITRN) multiplied by *SCALE*

*SCALE* is a density dependent scaling factor(bounded to 0.3 <u><</u> *SCALE* <u><</u> 1.0)

*CCF* is stand crown competition factor

a0, b0-1, c0-1, and d0-1 are species-specific coefficients shown in table 4.3.1.2

**Table 4.3.1.2 Coefficients for the Weibull parameter equation {4.3.4} in the TT variant.**

| **Species Code** | **a0** | **b0** | **b1** | **c0** | **c1** | **d0** | **d1** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| WB | 1 | -0.82631 | 1.06217 | 3.31429 | 0 | 6.19911 | -0.02216 |
| LM | 1 | -0.82631 | 1.06217 | 3.31429 | 0 | 6.19911 | -0.02216 |
| DF | 1 | -0.24217 | 0.96529 | -7.94832 | 1.93832 | 7.46296 | -0.02944 |
| ES | 1 | -0.90648 | 1.08122 | 3.48889 | 0 | 6.81087 | -0.01037 |
| AS | 0 | -0.08414 | 1.14765 | 2.77500 | 0 | 4.01678 | -0.01516 |
| LP | 0 | 0.17162 | 1.07338 | 3.15000 | 0 | 6.00567 | -0.03520 |
| ES | 1 | -0.90648 | 1.08122 | 3.48889 | 0 | 6.81087 | -0.01037 |
| AF | 1 | -0.89553 | 1.07728 | 1.74621 | 0.29052 | 7.65751 | -0.03513 |
| PP | 0 | 0.24916 | 1.04831 | 4.36 | 0 | 6.41166 | -0.02041 |
| BI | 0 | -0.23830 | 1.18016 | 3.04 | 0 | 4.62512 | -0.01604 |
| MM | 0 | -0.08414 | 1.14765 | 2.77500 | 0 | 4.01678 | -0.01516 |
| MC | 0 | -0.23830 | 1.18016 | 3.04 | 0 | 4.62512 | -0.01604 |
| OS | 1 | -0.26595 | 0.98326 | -7.00555 | 1.60411 | 7.92810 | -0.06298 |

Narrowleaf cottonwood and other hardwood live and dead trees of all sizes are assigned a crown ratio using equations {4.3.1.8} and {4.3.1.10}. Singleleaf pinyon, Utah juniper, and Rocky Mountain juniper live and dead trees 1.0 inch in diameter and larger are assigned a crown ratio using equation {4.3.1.9} and {4.3.1.10}.

{4.3.1.8} *CL* = 5.17281 + 0.32552 \* *HT* – 0.01675 \* *BA*

{4.3.1.9} *CL* = -0.59373 + 0.67703 \* *HT*

{4.3.1.10} *CR* = (*CL* / *HT*)

where:

*BA* is total stand basal area in square feet/acre

*HT* is total tree height in feet

*CL* is crown length in feet (bounded between 1.0 and *HT*)

*CR* is tree crown ratio expressed as a proportion of total tree height

### 4.3.2 Crown Ratio Change

Crown ratio change is estimated after growth, mortality and regeneration are estimated during a projection cycle. Crown ratio change is the difference between the crown ratio at the beginning of the cycle and the predicted crown ratio at the end of the cycle. Crown ratio predicted at the end of the projection cycle is estimated for live tree records using equations {4.3.1.8} and {4.3.10} for narrowleaf cottonwood and other hardwood; equations {4.3.1.9} and {4.3.1.10} for singleleaf pinyon, Utah juniper, and Rocky Mountain juniper; and the Weibull distribution, equations {4.3.1.4}-{4.3.1.7}, for all other species. Crown change is checked to make sure it doesn’t exceed the change possible if all height growth produces new crown. Crown change is further bounded to 1% per year for the length of the cycle to avoid drastic changes in crown ratio. Equations {4.3.1.1} – {4.3.1.3} are not used when estimating crown ratio change.

### 4.3.3 Crown Ratio for Newly Established Trees

Crown ratios for newly established trees during regeneration are estimated using equation {4.3.3.1}. A random component is added in equation {4.3.3.1} to ensure that not all newly established trees are assigned exactly the same crown ratio.

{4.3.3.1} *CR* = 0.89722 – 0.0000461 \* *PCCF* + *RAN*

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.2 <u><</u> *CR* <u><</u> 0.9)

*PCCF* is crown competition factor on the inventory point where the tree is established

*RAN* is a small random component

## 4.4 Crown Width Relationships

The TT variant calculates the maximum crown width for each individual tree, based on individual tree and stand attributes. Crown width for each tree is reported in the tree list output table and used for percent canopy cover (*PCC*) calculations in the model. Crown width is calculated using equations {4.4.1} - {4.4.5}, and coefficients for these equations are shown in table 4.4.1. The minimum diameter and bounds for certain data values are given in table 4.4.2. Equation numbers in table 4.4.1 are given with the first three digits representing the FIA species code, and the last two digits representing the equation source.

{4.4.1} Bechtold (2004); Equation 01

*DBH* <u>></u> *MinD: CW* = a1 + (a2 \* *DBH*) + (a3 \* *DBH*^2)

*DBH* < *MinD: CW* = [a1 + (a2 \* *MinD*) \* (a3 \* *MinD*^2)] \* (*DBH* / *MinD*)

{4.4.2} Bechtold (2004); Equation 02

*DBH* <u>></u> *MinD*: *CW* = a1 + (a2 \* *DBH*) + (a3 \* *DBH*^2) + (a4 \* *CR*) + (a5 \* *BA*) + (a6 \* *HI*)

*DBH* < *MinD*: *CW* = [a1 + (a2 \* *MinD*) + (a3 \* *MinD*^2) + (a4 \* *CR*) + (a5 \* *BA*) + (a6 \* *HI*)] \* (*DBH* / *MinD*)

{4.4.3} Crookston (2003); Equation 03

*DBH* <u>></u> *MinD: CW* = [a1 \* exp[a2 + (a3 \* ln(*CL*)) + (a4 \* ln(*DBH*)) + (a5 \* ln(*HT*)) + (a6 \* ln(*BA*))]]

*DBH* < *MinD:CW* = [a1 \* exp[a2 + (a3 \* ln(*CL*)) + (a4 \* ln(*MinD*)) + (a5 \* ln(*HT*)) + (a6 \* ln(*BA*))]] \* (*DBH* / *MinD*)

{4.4.4} Crookston (2005); Equation 05

*DBH* <u>></u> *MinD: CW* = (a1 \* *BF*) \* *DBH*^a2 \* *HT*^a3 \* *CL^*a4 \* (*BA* + 1.0)^a5 \* exp(*EL*)^a6

*DBH* < *MinD: CW* = (a1 \* BF) \* *MinD*^a2 \* HT^a3 \* CL^a4 \* (BA + 1.0)^a5 \* exp(EL)^a6] \* (*DBH* / *MinD*)

{4.4.5} Donnelly (1996); Equation 06

*DBH* <u>></u> *MinD CW* = a1 \* *DBH^*a2

*DBH* < *MinD CW* = [a1 \* *MinD*^a2] \* (*DBH* / *MinD*)

where:

*BF* is a species-specific coefficient based on forest code (*BF* = 1.0 in the TT variant)

*CW* is tree maximum crown width

*CL* is tree crown length

*CR* is tree crown ratio expressed as a percent

*DBH* is tree diameter at breast height

*HT* is tree height

*BA* is total stand basal area

*EL* is stand elevation in hundreds of feet

*MinD* is the minimum diameter

*HI* is the Hopkins Index

*HI* = (ELEVATION - 5449) / 100) \* 1.0 + (LATITUDE - 42.16) \* 4.0 + (-116.39 -LONGITUDE) \* 1.25

a1 – a6 are species-specific coefficients shown in table 4.4.1

**Table 4.4.1 Coefficients for crown width equations {4.4.1} - {4.4.5} in the TT variant.**

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Species Code** | **Equation Number\*** | **a1** | **a2** | **a3** | **a4** | **a5** | **a6** |
| WB | 10105 | 2.2354 | 0.66680 | -0.11658 | 0.16927 | 0 | 0 |
| LM | 11301 | 4.0181 | 0.8528 | 0 | 0 | 0 | 0 |
| DF | 20205 | 6.0227 | 0.54361 | -0.20669 | 0.20395 | -0.00644 | -0.00378 |
| PM | 10602 | -5.4647 | 1.9660 | -0.0395 | 0.0427 | 0 | -0.0259 |
| BS | 09305 | 6.7575 | 0.55048 | -0.25204 | 0.19002 | 0 | -0.00313 |
| AS | 74605 | 4.7961 | 0.64167 | -0.18695 | 0.18581 | 0 | 0 |
| LP | 10805 | 6.6941 | 0.81980 | -0.36992 | 0.17722 | -0.01202 | -0.00882 |
| ES | 09305 | 6.7575 | 0.55048 | -0.25204 | 0.19002 | 0 | -0.00313 |
| AF | 01905 | 5.8827 | 0.51479 | -0.21501 | 0.17916 | 0.03277 | -0.00828 |
| PP | 12203 | 1.02687 | 1.49085 | 0.1862 | 0.68272 | -0.28242 | 0 |
| UJ | 06405 | 5.1486 | 0.73636 | -0.46927 | 0.39114 | -0.05429 | 0 |
| RM | 06405 | 5.1486 | 0.73636 | -0.46927 | 0.39114 | -0.05429 | 0 |
| BI | 31206 | 7.5183 | 0.4461 | 0 | 0 | 0 | 0 |
| MM | 32102 | 5.9765 | 0.8648 | 0 | 0.0675 | 0 | 0 |
| NC | 74902 | 4.1687 | 1.5355 | 0 | 0 | 0 | 0.1275 |
| MC | 47502 | 4.0105 | 0.8611 | 0 | 0 | 0 | -0.0431 |
| OS | 12205 | 4.7762 | 0.74126 | -0.28734 | 0.17137 | -0.00602 | -0.00209 |
| OH | 74902 | 4.1687 | 1.5355 | 0 | 0 | 0 | 0.1275 |

\*Equation number is a combination of the species FIA code (###) and source (##).

\*\*DBH limited to a maximum of 25” for calculation of crown width

**Table 4.4.2 *MinD* values and data bounds for equations {4.4.1} - {4.4.5} in the TT variant.**

| **Species Code** | **Equation Number\*** | ***MinD*** | ***EL min*** | ***EL* max** | ***HI* min** | ***HI* max** | ***CW* max** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| WB | 10105 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| LM | 11301 | 5.0 | n/a | n/a | n/a | n/a | 25 |
| DF | 20205 | 1.0 | 1 | 75 | n/a | n/a | 80 |
| PM | 10602 | 5.0 | n/a | n/a | -40 | 11 | 25 |
| BS | 09305 | 1.0 | 1 | 85 | n/a | n/a | 40 |
| AS | 74605 | 1.0 | n/a | n/a | n/a | n/a | 45 |
| LP | 10805 | 1.0 | 1 | 79 | n/a | n/a | 40 |
| ES | 09305 | 1.0 | 1 | 85 | n/a | n/a | 40 |
| AF | 01905 | 1.0 | 10 | 85 | n/a | n/a | 30 |
| PP | 12203 | 2.0 | n/a | n/a | n/a | n/a | 46 |
| UJ | 06405 | 1.0 | n/a | n/a | n/a | n/a | 36 |
| RM | 06405 | 1.0 | n/a | n/a | n/a | n/a | 36 |
| BI | 31206 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| MM | 32102 | 5.0 | n/a | n/a | n/a | n/a | 39 |
| NC | 74902 | 5.0 | n/a | n/a | -26 | -2 | 35 |
| MC | 47502 | 5.0 | n/a | n/a | -37 | 27 | 29 |
| OS | 12205 | 1.0 | 13 | 75 | n/a | n/a | 50 |
| OH | 74902 | 5.0 | n/a | n/a | -26 | -2 | 35 |

\*Equation number is a combination of the species FIA code (###) and source (##).

## 4.5 Crown Competition Factor

The TT variant uses crown competition factor (*CCF*) as a predictor variable in some growth relationships. Crown competition factor (Krajicek and others 1961) is a relative measurement of stand density that is based on tree diameters. Individual tree *CCFt* values estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open-grown. Stand *CCF* is the summation of individual tree (*CCFt*)values. A stand *CCF* value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand. Crown competition factor for an individual tree is calculated using equation {4.5.1} for all species except ponderosa pine, bigtooth maple, and curl-leaf mountain mahogany. Ponderosa pine uses equations {4.5.2}. Bigtooth maple and curl-leaf mountain mahogany species use equations {4.5.3}. Coefficients for all species are shown in Table 4.5.1.

All species other than bigtooth maple and curl-leaf mountain mahogany:

{4.5.1} Used for all species except ponderosa pine, bigtooth maple, and curl-leaf mountain mahogany

*DBH* <u>></u> *DBRK*: *CCFt* = R1 + (R2 \* *DBH*) + (R3 \* *DBH*^2)

0.1” < *DBH* < *DBRK*: *CCFt* = R4 \* *DBH*^R5

*DBH* <u><</u> 0.1”:*CCFt* = 0.001

{4.5.2} Used for ponderosa pine:

*DBH* <u>></u> *DBRK*: *CCFt* = R1 + (R2 \* *DBH*) + (R3 \* *DBH*^2)

*DBH* < *DBRK*: *CCFt* = R4 \* *DBH*^R5

{4.5.3} Used for curl-leaf mountain mahogany and bigtooth maple:

*DBH <u>></u> DBRK: CCFt* = R1 + (R2 \* *DBH*) + (R3 \* *DBH*^2)

*DBH < DBRK: CCFt* = *DBH* \* (R1 + R2 + R3 )

where:

*CCFt* is crown competition factor for an individual tree

*DBH* is tree diameter at breast height

*DBRK* is 10” for ponderosa pine, narrowleaf cottonwood, and other hardwood; 1.0” for all other species

R1 - R5 are species-specific coefficients shown in table 4.5.1

**Table 4.5.1 Coefficients *CCF* equations {4.5.1} – {4.5.3} in the TT variant.**

| **Species Code** | **R1** | **R2** | **R3** | **R4** | **R5** |
| --- | --- | --- | --- | --- | --- |
| WB | 0.01925 | 0.0168 | 0.00365 | 0.009187 | 1.7600 |
| LM | 0.01925 | 0.0168 | 0.00365 | 0.009187 | 1.7600 |
| DF | 0.11 | 0.0333 | 0.00259 | 0.017299 | 1.5571 |
| PM | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| BS | 0.03 | 0.0173 | 0.00259 | 0.007875 | 1.7360 |
| AS | 0.03 | 0.0238 | 0.00490 | 0.008915 | 1.7800 |
| LP | 0.01925 | 0.0168 | 0.00365 | 0.009187 | 1.7600 |
| ES | 0.03 | 0.0173 | 0.00259 | 0.007875 | 1.7360 |
| AF | 0.03 | 0.0216 | 0.00405 | 0.011402 | 1.7560 |
| PP | 0.03 | 0.0180 | 0.00281 | 0.007813 | 1.7680 |
| UJ | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| RM | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| BI | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| MM | 0.03 | 0.0238 | 0.00490 | 0.008915 | 1.7800 |
| NC | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |
| MC | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| OS | 0.01925 | 0.0168 | 0.00365 | 0.009187 | 1.7600 |
| OH | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |

## 4.6 Small Tree Growth Relationships

Trees are considered “small trees” for FVS modeling purposes when they are smaller than some threshold diameter. In the TT variant the threshold diameter is set to: 1.0” for narrowleaf cottonwood and other hardwood; 99.0” for singleleaf pinyon, Utah juniper, Rocky Mountain juniper, bigtooth maple, and curl-leaf mountain mahogany; and 3.0” for all other species.

The small tree model is height-growth driven, meaning height growth is estimated first and diameter growth is estimated from height growth. These relationships are discussed in the following sections.

### 4.6.1 Small Tree Height Growth

The small-tree height increment model predicts either 5-year, or 10-year, height growth (*HTG*) depending on species. Height growth estimates are then scaled to the appropriate cycle length.

Small tree 5-year height growth in the TT variant is estimated as a function of crown ratio and point crown competition factor for whitebark pine, limber pine, Douglas-fir, blue spruce, lodgepole pine, Engelmann spruce, subalpine fir, and other softwood. Height growth is estimated using equation {4.6.1.1} and coefficients shown in table 4.6.1.1.

{4.6.1.1} *HTG* = exp[c1 + (c2 \* ln(*TPCCF*))] + *CR* \* exp[c3 + (c4 \* ln(*TPCCF*))] + *ZRAND* \* *STDEV*

*STDEV* = *HTG* \* (c5 + (c6 \* *CR*))

where:

*HTG* is estimated 5-year height growth

*STDEV* is estimated standard deviation for the height growth estimate

*ZRAND* is a random number, bounded -2 <u><</u> ZRAND <u><</u> 2

*TPCCF* is crown competition factor based on sample point statistics (bounded to 25 <u><</u> *TPCCF* <u><</u> 300)

*CR* is a tree’s live crown ratio (compacted) expressed as a percent

c1 – c6 are species-specific coefficients for equation {4.6.1.1} shown in table 4.6.1.1

**Table 4.6.1.1 Coefficients (c1 – c6) for equation {4.6.1.1} in the TT variant.**

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Species Code** | **c1** | **c2** | **c3** | **c4** | **c5** | **c6** |
| WB | 1.17527 | -0.42124 | -2.56002 | -0.58642 | 1.08720 | -0.00230 |
| LM | 1.17527 | -0.42124 | -2.56002 | -0.58642 | 1.08720 | -0.00230 |
| DF | -4.35709 | 0.67307 | -2.49682 | -0.51938 | 1.13785 | -0.00185 |
| BS | -0.55052 | -0.02858 | -2.26007 | -0.67115 | 1.09730 | -0.00130 |
| LP | -0.90086 | 0.16996 | -1.50963 | -0.61825 | 1.00749 | -0.00435 |
| ES | -0.55052 | -0.02858 | -2.26007 | -0.67115 | 1.09730 | -0.00130 |
| AF | -4.35709 | 0.67307 | -2.49682 | -0.51938 | 1.13785 | -0.00185 |
| OS | 1.17527 | -0.42124 | -2.56002 | -0.58642 | 1.08720 | -0.00230 |

Small tree 10-year height growth for quaking aspen and Rocky Mountain maple is obtained from a height-age curve from Shepperd (1995). Because Shepperd’s original curve seemed to overestimate height growth, the TT variant reduces the estimated height growth by 25 percent (shown in equation {4.6.1.2}). A height is estimated from the tree’s current age, and then its current age plus 10 years. Height growth is the difference between these two height estimates, and converted from centimeters to feet. An estimate of the tree’s current age may be entered during data input, is obtained at the start of a projection using the tree’s height and solving equation {4.6.1.2} for age, or known for trees established using the regeneration establishment model in FVS.

{4.6.1.2} *HTG*  = ([((26.9825 \* (*A+10)*^1.1752)- (26.9825 \* *A*^1.1752)) / (2.54 \* 12)] + 0.1\**ZRAND*)

\* 0.75 \* *RSIMOD*

RSIMOD = 0.5 \* (1 + (*SI* – 30)/40) for quaking aspen, bounded 0 <u><</u> *RSIMOD* <u><</u> 1

RSIMOD = 0.5 \* (1 + (*SI* – 5)/25) for Rocky Mountain maple, bounded 0 <u><</u> *RSIMOD* <u><</u> 1

where:

*HTG* is estimated 10-year tree height growth in feet

*A* is tree age

*ZRAND* is a random number, bounded -2 <u><</u> ZRAND <u><</u> 2

*SI* is species site index

Small tree potential 10-year height growth for singleleaf pinyon, Utah juniper, Rocky Mountain juniper, bigtooth maple, narrowleaf cottonwood, curl-leaf mountain mahogany, and other hardwood is estimated using equation {4.6.1.3}.

{4.6.1.3} *POTHTG* = ((*SJ* / 5.0) \* (*SJ* \* 1.5 - *H*) / (*SJ* \* 1.5)) \* 0.83

where:

*POTHTG* is potential 10-year height growth

*SJ* is species site index on a base-age basis

*H* is tree height at the beginning of the projection cycle

Potential height growth is then adjusted based on stand density (*PCTRED*) as computed with equation {4.6.1.4}, and crown ratio (*VIGOR*) as shown in equations {4.6.1.5} and {4.6.1.6}. Bigtooth maple, Rocky Mountain maple, narrowleaf cottonwood, curl-leaf mountain mahogany, and other hardwood use equation {4.6.1.5} to estimate *VIGOR*; singleleaf pinyon, Utah juniper, and Rocky Mountain juniper use equation {4.6.1.6}. Height growth is then estimated using equation 4.6.1.7 or 4.6.1.8.

{4.6.1.4} *PCTRED* = 1.1144 – 0.0115\**Z* + 0.4301E-04 \* *Z^*2 – 0.7222E-07 \* *Z^*3 + 0.5607E-10 \* *Z^*4 – 0.1641E-13 \* *Z^*5

*Z* = *HTAvg* \* (*CCF* / 100)

{4.6.1.5} *VIGOR* = (150 \* *CR^*3 \* exp(-6 \* *CR*)) + 0.3

{4.6.1.6} *VIGOR* = 1 – [(1 – (150 \* *CR*^3 \* exp(-6 \* *CR*)) + 0.3) / 3]

{4.6.1.7} *HTG* = *POTHTG* \* *PCTRED* \* *VIGOR* + 0.1 \* *ZRAND*

Used for singleleaf pinyon, Utah juniper, Rocky Mountain juniper, bigtooth maple, Rocky

Mountain maple, and curl-leaf mountain mahogany.

{4.6.1.8} *HTG* = *POTHTG* \* *PCTRED* \* *VIGOR* + 0.2 \* *ZRAND*

Used for narrowleaf cottonwood and other hardwood.

where:

*PCTRED* is reduction in height growth due to stand density (bounded to 0.01 <u><</u> *PCTRED* <u><</u> 1)

*HTAvg* is average height of the 40 largest diameter trees in the stand

*CCF* is stand crown competition factor

*VIGOR* is reduction in height growth due to tree vigor (bounded to *VIGOR* <u><</u> 1.0)

*CR* is a tree’s live crown ratio (compacted) expressed as a proportion

*HTG* is estimated height growth for the cycle

*POTHTG* is potential 10-year height growth

*ZRAND* is a random number, bounded -2 <u><</u> ZRAND <u><</u> 0.5

Small tree 5-year height growth for ponderosa pine (PP) is estimated using equation {4.6.1.9}.

{4.6.1.9} *HTG* = 2.764559- 0.009643\* BA + 0.025303\* *CR*^2 + 0.1 \* *ZRAND*

where:

*HTG* is estimated 5-year height growth

*BA* is total stand basal area

*CR* is a tree’s live crown ratio class (1 = 0-10 percent, 2 = 11-20 percent, …,9 = >80 percent)

*ZRAND* is a random number, bounded -2 <u><</u> ZRAND <u><</u> 0.5

For all species, the estimated height growth is then adjusted to account for cycle length, user defined small-tree height growth adjustments, and adjustments due to small tree height model calibration from the input data.

Height growth estimates from the small-tree model are weighted with the height growth estimates from the large tree model over a range of diameters (*Xmin* and *Xmax*) in order to smooth the transition between the two models. For example, the closer a tree’s *DBH* value is to the minimum diameter (*Xmin*), the more the growth estimate will be weighted towards the small-tree growth model. The closer a tree’s *DBH* value is to the maximum diameter (*Xmax*), the more the growth estimate will be weighted towards the large-tree growth model. If a tree’s *DBH* value falls outside of the range given by *Xmin* and *Xmax*, then the model will use only the small-tree or large-tree growth model in the growth estimate. The weight applied to the growth estimate is calculated using equation {4.6.1.10}, and applied as shown in equation {4.6.1.11}. The range of diameters for each species is shown in table 4.6.1.2.

{4.6.1.10}

DBH <u><</u> Xmin: XWT = 0

Xmin < DBH < Xmax: XWT = (DBH - Xmin) / (Xmax - Xmin)

DBH <u>></u> Xmax: XWT = 1

{4.6.1.11} Estimated growth = [(1 - *XWT*) \* *STGE*] + [*XWT* \* *LTGE*]

where:

*XWT* is the weight applied to the growth estimates

*DBH* is tree diameter at breast height

*Xmax* is the maximum *DBH* is the diameter range

*Xmin* is the minimum *DBH* in the diameter range

*STGE* is the growth estimate obtained using the small-tree growth model

*LTGE* is the growth estimate obtained using the large-tree growth model

**Table 4.6.1.2 Diameter bounds by species in the TT variant.**

| **Species Code** | **Xmin** | **Xmax** |
| --- | --- | --- |
| WB | 1.5 | 3.0 |
| LM | 1.5 | 3.0 |
| DF | 1.5 | 3.0 |
| PM\* | 90.0 | 99.0 |
| BS | 1.5 | 3.0 |
| AS | 1.5 | 3.0 |
| LP | 1.5 | 3.0 |
| ES | 1.5 | 3.0 |
| AF | 1.5 | 3.0 |
| PP | 2.0 | 5.0 |
| UJ\* | 90.0 | 99.0 |
| RM\* | 90.0 | 99.0 |
| BI\* | 90.0 | 99.0 |
| MM | 2.0 | 4.0 |
| NC | 0.5 | 2.0 |
| MC\* | 90.0 | 99.0 |
| OS | 1.5 | 3.0 |
| OH | 0.5 | 2.0 |

\*There is only one growth relationship that applies to trees of all sizes for these species. These relationships are contained in the “small” tree portion of FVS.

### ****4.6.2 Small Tree Diameter Growth****

As stated previously, for trees being projected with the small tree equations, height growth is predicted first, and then diameter growth. So both height at the beginning of the cycle and height at the end of the cycle are known when predicting diameter growth. Small tree diameter growth for trees over 4.5 feet tall is calculated as the difference of predicted diameter at the start of the projection period and the predicted diameter at the end of the projection period, adjusted for bark ratio. By definition, diameter growth is zero for trees less than 4.5 feet tall.

For whitebark pine, limber pine, Douglas-fir, blue spruce, quaking aspen, lodgepole pine, Engelmann spruce, subalpine fir, and other softwood in the TT variant, these two small-tree diameters are estimated using equation {4.6.2.1} or {4.6.2.2}, and coefficients for these equations are shown in table 4.6.2.1.

{4.6.2.1} *DBH* = [b1 \* (*HT* – 4.5) \* *CR* + b2\* (*HT* – 4.5) \* *PCCF* + b3 \* *CR* + b4 \* (*HT* –4.5)] + 0.3

{4.6.2.2} *DBH* = b1 + (b2 \* *HT*) + (b3 \* *CR*) + (b4 \* *PCCF*)

where:

*DBH* is tree diameter at breast height

*HT* is tree height

*CR* is a tree’s live crown ratio (compacted) expressed as a percent

*PCCF* is crown competition factor on the inventory point where the tree is established

b1 – b4 are species-specific coefficients shown in table 4.6.2.1

**Table 4.6.2.1 Coefficients (b1 - b4) for equations {4.6.2.1} and {4.6.2.2} in the TT variant.**

| **Species Code** | **Equation Used** | **b1** | **b2** | **b3** | **b4** |
| --- | --- | --- | --- | --- | --- |
| WB | {4.6.2.1} | 0.000231 | -0.00005 | 0.001711 | 0.17023 |
| LM | {4.6.2.1} | 0.000231 | -0.00005 | 0.001711 | 0.17023 |
| DF | {4.6.2.2} | -0.28654 | 0.13469 | 0.002736 | 0.00036 |
| BS | {4.6.2.2} | 0.04125 | 0.17486 | -0.002371 | -0.00070 |
| AS | {4.6.2.2} | -0.41227 | 0.16944 | 0.003191 | -0.00220 |
| LP | {4.6.2.2} | -0.41227 | 0.16944 | 0.003191 | -0.00220 |
| ES | {4.6.2.2} | 0.04125 | 0.17486 | -0.002371 | -0.00070 |
| AF | {4.6.2.2} | -0.15906 | 0.15323 | 0 | 0 |
| OS | {4.6.2.1} | 0.000231 | -0.00005 | 0.001711 | 0.17023 |

For Rocky Mountain maple, narrowleaf cottonwood, and other hardwood these two small-tree diameters are estimated using the species-specific height-diameter relationships discussed in section 4.1.

Singleleaf pinyon, Utah juniper, and Rocky Mountain juniper use equation {4.6.2.3} as previously described.

{4.6.2.3} *DBH* = 10 \* (*HT* – 4.5) / (*SI* – 4.5)

where:

*DBH* is tree diameter at root collar

*HT* is tree height

*SI* is species site index on a base-age basis

Bigtooth maple and curl-leaf mountain mahogany use the Curtis-Arney method by default and is shown in equation {4.6.2.4}. If height calibration is specified with the NOHTDREG keyword, the logistic equations discussed in section 4.1 are used to estimate small tree diameter growth.

{4.6.2.4} Used for Bigtooth maple and curl-leaf mountain mahogany

*HT* > *HAT3*: *DBH* = exp(ln((ln(*HT –* 4.5) – ln(a))/-b) / c)

*HT* <u><</u> *HAT3*: *DBH* = ((*HT* – 4.51) \* 2.7) / (4.5 + a \* exp(-b \* (3.0 ^ c)) – 4.51) + 0.3

where:

*HAT3*  = 4.5 + a \* exp(-b \* (3.0 ^ c))

*DBH* is tree diameter at breast height

*HT* is tree height

a, b, c are species-specific coefficients shown as P2, P3, and P4 in section 4.1

For ponderosa pine (PP) these two small-tree diameters are estimated using equation {4.6.2.5).

{4.6.2.5} *DBH* = exp(-1.10700 + 0.830144 \* *HT*)

where:

*DBH* is tree diameter at breast height

*HT* is tree height

## 4.7 Large Tree Growth Relationships

Trees are considered “large trees” for FVS modeling purposes when they are equal to, or larger than, some threshold diameter. In the TT variant the threshold diameter is set to: 1.0” for narrowleaf cottonwood and other hardwood; 99.0” for singleleaf pinyon, Utah juniper, Rocky Mountain juniper, bigtooth maple, and curl-leaf mountain mahogany; and 3.0” for all other species.

The large-tree model is driven by diameter growth meaning diameter growth is estimated first, and then height growth is estimated from diameter growth and other variables. These relationships are discussed in the following sections.

### 4.7.1 Large Tree Diameter Growth

The large tree diameter growth model used in most FVS variants is described in section 7.2.1 in Dixon (2002). For most variants, instead of predicting diameter increment directly, the natural log of the periodic change in squared inside-bark diameter (ln(*DDS*)) is predicted (Dixon 2002; Wykoff 1990; Stage 1973; and Cole and Stage 1972). For variants predicting diameter increment directly, diameter increment is converted to the *DDS* scale to keep the FVS system consistent across all variants.

The TT variant predicts diameter growth for whitebark pine, limber pine, Douglas-fir, blue spruce, lodgepole pine, Engelmann spruce, subalpine fir ponderosa pine and other softwood using equation {4.7.1.1}. Ponderosa pine coefficients are from an equation fit for the Payette National Forest in the Central Idaho variant. Coefficients for these equations are shown in tables 4.7.1.1 – 4.7.1.6. Diameter growth equations for other species in the TT variant are shown later in this section.

{4.7.1.1} ln(*DDS*) = b1 + (b2 \* *SI*) + (b3 \* sin(*ASP*) \* *SL*) + (b4 \* cos(*ASP*) \* *SL*) + (b5 \* *SL*) + (b6 \* *SL*^2) + (b7 \* ln(*DBH*)) + (b8 \* *BAL* / 100) + (b9 \* *CR*) + (b10 \* *CR*^2) + (b11 \* *DBH*^2) + b12 \* (*CCF* / 100)) + b13 + (b14 \* *PBAL /* ln(*DBH*+ 1)) + (b15 \* ln(*BA*))

where:

*DDS*  is squared inside-bark diameter

*SI* is species site index

*ASP*  is a species-specific variable for stand aspect ((ASP = stand aspect) for ponderosa pine; (ASP = stand aspect – 0.7854) for all other species)

*SL* is stand slope

*DBH* is tree diameter at breast height

*BAL* is total basal area in trees larger than the subject tree

*PBAL* is total basal area in trees larger than the subject tree on the inventory point where the

tree is located

*CR* is a tree’s live crown ratio (compacted) expressed as a proportion

*CCF* is stand crown competition factor

*BA* is total stand basal area

b1 is a location-specific coefficient shown in table 4.7.1.2

b2 is a coefficient based on site index species shown in table 4.7.1.3

b3- b10, b14, b15 are species-specific coefficients shown in tables 4.7.1.1

b11 is a location-specific coefficient shown in table 4.7.1.4

b12 is a coefficient based on site index class shown in table 4.7.1.5

b13 is a coefficient based on habitat type class shown in table 4.7.1.6

**Table 4.7.1.1 Coefficients (b3- b10, b14, b15) for equation {4.7.1.1} in the TT variant.**

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Coefficient** | **Species Code** | | | | | |
| **WB, LM, OS** | **DF** | **LP** | **BS, ES** | **AF** | **PP** |
| b3 | -0.017520 | 0.076614 | -0.036871 | 0.102053 | 0.052805 | 0.076531 |
| b4 | -0.609774 | -0.268610 | -0.075306 | -0.698103 | -0.17839 | 0.127311 |
| b5 | -2.057060 | -0.711260 | -0.129291 | 1.335928 | 0.784185 | 0.024336 |
| b6 | 2.113263 | 0 | 0 | -1.481349 | -1.504007 | -0.781480 |
| b7 | 0.213947 | 0.533965 | 0.563751 | 0.378802 | 0.648535 | 0.822203 |
| b8 | -0.358634 | -0.574858 | -0.469671 | -0.490005 | -0.312129 | 0 |
| b9 | 1.523464 | 1.931900 | 2.164346 | 1.098353 | 0.137638 | 1.768935 |
| b10 | 0 | -0.894368 | -0.625799 | 0 | 1.0665429 | -0.176164 |
| b14 | 0 | 0 | 0 | 0 | 0 | -0.006065 |
| b15 | 0 | 0 | 0 | 0 | 0 | - 0.257322 |

**Table 4.7.1.2 b1 values by location code for equation {4.7.1.1} in the TT variant.**

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Location Code** | **Species Code** | | | | | |
| **WB, LM, OS** | **DF** | **LP** | **BS, ES** | **AF** | **PP** |
| 403 – Bridger | 1.911884 | 1.084994 | 0.494205 | 1.543251 | 0.921658 | 1.879603 |
| 405 – Caribou | 1.911884 | 1.084994 | 0.494205 | 1.543251 | 0.921658 | 1.879603 |
| 415 – Targhee | 1.568742 | 0.796640 | 0.502908 | 0.943003 | 0.807282 | 1.879603 |
| 416 – Teton | 2.001195 | 1.042871 | 0.502908 | 0.792165 | 0.914279 | 1.879603 |

**Table 4.7.1.3 b2 coefficients by site index species for equation {4.7.1.1} in the TT variant.**

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Site Index Species** | **Species Code** | | | | | |
| **WB, LM, OS** | **DF** | **LP** | **BS, ES** | **AF** | **PP** |
| WB, LM, PM, LP, PP, UJ, RM, BI, MM, NC, MC, OS, OH | 0.001766 | 0.011597 | 0.009756 | 0.011389 | 0.003955 | 0 |
| DF | 0.001766 | 0.011597 | 0.009756 | 0.011389 | 0.003955 | 0 |
| BS, ES, AF | 0.001766 | 0.011597 | 0.009756 | 0.011389 | 0.003955 | 0 |
| -- | 0.001766 | 0.011597 | 0.014334 | 0.019985 | 0.006310 | 0 |
| AS | 0.001766 | 0.011597 | 0.014334 | 0.019985 | 0.006310 | 0 |

**Table 4.7.1.4 b11 coefficients by location code for equation {4.7.1.1} in the TT variant.**

| **Location Code** | **Species Code** | | | | | |
| --- | --- | --- | --- | --- | --- | --- |
| **WB, LM, OS** | **DF** | **LP** | **BS, ES** | **AF** | **PP** |
| 403 – Bridger | -0.0006538 | -0.0001997 | 0 | -0.0001056 | -0.0002152 | -0.0004163 |
| 405 – Caribou | -0.0006538 | -0.0001997 | 0 | -0.0001056 | -0.0002152 | -0.0004163 |
| 415 – Targhee | -0.0006538 | -0.0001997 | -0.0009803 | -0.0001056 | -0.0002152 | -0.0004163 |
| 416 – Teton | -0.0006538 | -0.0001997 | -0.0016416 | -0.0001056 | -0.0002567 | -0.0004163 |

**Table 4.7.1.5 b12 coefficients by site index class for equation {4.7.1.1} in the TT variant.**

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Site Index Class** | **Species Code** | | | | | |
| **WB, LM, OS** | **DF** | **LP** | **BS, ES** | **AF** | **PP** |
| 1 (*SI*<30) | -0.199592 | -0.641932 | -0.206752 | -0.045495 | -0.186614 | 0 |
| 2 (30<u><</u>*SI*<u><</u>39) | -0.199592 | -0.141370 | -0.206752 | -0.045495 | -0.186614 | 0 |
| 3 (40<u><</u>*SI*<u><</u>49) | -0.199592 | -0.141370 | -0.206752 | -0.204852 | -0.186614 | 0 |
| 4 (50<u><</u>*SI*<u><</u>59) | -0.199592 | -0.141370 | -0.206752 | -0.311383 | -0.023236 | 0 |
| 5 (60<u><</u>*SI*) | -0.199592 | -0.141370 | -0.206752 | -0.311383 | -0.023236 | 0 |

**Table 4.7.1.6 b13 coefficients by habitat type class for equation {4.7.1.2} in the TT variant. Mapping of habitat type classes is shown in Appendix A.**

|  |  |
| --- | --- |
| **Habitat Type Class** | **Species Code** |
| **PP** |
| 0 | 0. |
| 1 | 0.006074 |
| 2 | 0.181590 |
| 3 | -0.196098 |
| 4 | -0.055780 |
| 5 | 0.133907 |

Large-tree diameter growth for quaking aspen and Rocky Mountain maple are predicted using equation set {4.7.1.3}. Diameter growth is predicted from a potential diameter growth equation that is modified by stand density, average tree size and site. While not shown here, this diameter growth estimate is eventually converted to the *DDS* scale.

{4.7.1.3}Used for quaking aspen and Rocky Mountain maple

*POTGR* = (0.4755 – 0.0000038336 \* *DBH*^4.1488) + (0.0451 \* *CR* \* *DBH*^0.67266)

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

*BA* is total stand basal area

*QMD* is stand quadratic mean diameter

*PREDGR* is predicted diameter growth

*SI* is species site index

Large-tree diameter growth for narrowleaf cottonwood and other hardwood is predicted using equation set {4.7.1.4}. Diameter at the end of the growth cycle is predicted first. Then diameter growth is calculated as the difference between the diameters at the beginning of the cycle and end of the cycle, adjusted for bark ratio. While not shown here, this diameter growth estimate is eventually converted to the *DDS* scale.

{4.7.1.4} Used for narrowleaf cottonwood and other hardwood

*DF* = (1.55986 + 1.01825 \* *DBH* – 0.29342 \* ln(*TBA*) + 0.00672 \* *SJ* – 0.00073 \* *BAU* / *BA*) \* 1.05

*DG* = (*DF* – *DBH*) \* *BRATIO* \* *DSTAG*

*DSTAG* = 1 when RELSDI is less than or equal to 0.7 or the stagnation indicator has not been turned

on using field 7 of the SDIMAX keyword.

*DSTAG* = 3.33333 \* (1 – RELSDI) when RELSDI is greater than 0.7 and the stagnation indicator has

been turned on using field 7 of the SDIMAX keyword.

where:

*DF* is tree diameter at breast height at the end of the cycle

*DBH* is tree diameter at breast height at the beginning of the cycle

*BA* is total stand basal area at the beginning of the cycle

*TBA* is total stand basal area at the beginning of the cycle (bounded to be <u>></u> 5)

*BAU* is total stand basal area at the beginning of the cycle in diameter classes larger than the diameter class the tree being projected is in

*SJ* is species-specific site index on a base-age basis

*DG* is tree diameter growth

*BRATIO* is species-specific bark ratio

*DSTAG* is a growth multiplier to account for stand stagnation

*RELSDI* is a current stand density index divided by the maximum stand density index for the stand (bounded to be less than or equal to 0.85)

Equations presented in section 4.6 are used for trees of all sizes for singleleaf pinyon, Utah juniper, Rocky Mountain juniper, bigtooth maple, and curl-leaf mountain mahogany.

### 4.7.2 Large Tree Height Growth

Species in the TT variant use different types of equations depending on species. Ten species use Johnson’s SBB (1949) method (Schreuder and Hafley, 1977). These species are whitebark pine, limber pine, Douglas-fir, blue spruce, quaking aspen, lodgepole pine, Engelmann spruce, subalpine fir, Rocky Mountain maple, and other softwood. Using this method, height growth is obtained by subtracting current height from the estimated future height. Parameters of the SBB distribution cannot be calculated if tree diameter is greater than (C1 + 0.1) or tree height is greater than (C2 + 4.5), where C1 and C2 are shown in table 4.7.2.1. In this case, height growth is set to 0.1. Otherwise, the SBB distribution “*Z*” parameter is estimated using equation {4.7.2.1}.

{4.7.2.1} *Z* = [C4 + C6 \* *FBY2* – C7 \* (C3 + C5 \* *FBY1*)] \* (1 – C7^2)^-0.5

*FBY1* = ln[*Y1*/(1 - *Y1*)]

*FBY2* = ln[*Y2*/(1 - *Y2*)]

*Y1* = (*DBH* – 0.1) / C1

*Y2* = (*HT* – 4.5) / C2

where:

*HT* is tree height

*DBH* is tree diameter at breast height

*Z* is a parameter in the SBB distribution

Y1*, Y2* are temporary variables in the calculation of Z

*FBY1, FBY2* are temporary variables in the calculation of Z

C1 – C7 are coefficients based on species and crown ratio class shown in table 4.7.2.1

**Table 4.7.2.1 Coefficients in the large tree height growth model, by crown ratio, for species using the Johnson’s SBB height distribution in the TT variant.**

| **Coefficient by *CR*\* class** | **Species Code** | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WB** | **LM** | **DF** | **AS, MM** | **LP** | **BS, ES** | **AF** | **OS** |
| C1 ( *CR*<u><</u> 24) | 37 | 37 | 60 | 30 | 30 | 50 | 20 | 37 |
| C1 (25<u><</u>*CR*<u><</u>74) | 45 | 45 | 70 | 30 | 45 | 50 | 35 | 45 |
| C1 (75<u><</u>*CR*<u><</u>100) | 45 | 45 | 70 | 35 | 35 | 50 | 50 | 45 |
| C2 ( *CR*<u><</u> 24) | 85 | 85 | 105 | 85 | 105 | 145 | 95 | 85 |
| C2 (25<u><</u>*CR*<u><</u>74) | 100 | 100 | 120 | 85 | 110 | 145 | 110 | 100 |
| C2 (75<u><</u>*CR*<u><</u>100) | 90 | 90 | 130 | 85 | 90 | 140 | 130 | 90 |
| C3 ( *CR*<u><</u> 24) | 1.77836 | 1.77836 | 2.43099 | 2.00995 | 2.00207 | 1.23692 | 0.90779 | 1.77836 |
| C3 (25<u><</u>*CR*<u><</u>74) | 1.66674 | 1.66674 | 1.85710 | 2.00995 | 2.50885 | 1.23692 | 1.36713 | 1.66674 |
| C3 (75<u><</u>*CR*<u><</u>100) | 1.64770 | 1.64770 | 1.51547 | 1.80388 | 1.31478 | 0.94647 | 1.63172 | 1.64770 |
| C4 ( *CR*<u><</u> 24) | -0.51147 | -0.51147 | 0.20403 | 0.03288 | -0.25204 | 0.30499 | 0.33845 | -0.51147 |
| C4 (25<u><</u>*CR*<u><</u>74) | 0.25626 | 0.25626 | -0.10692 | 0.03288 | 0.09740 | 0.30499 | 0.35062 | 0.25626 |
| C4 (75<u><</u>*CR*<u><</u>100) | 0.30546 | 0.30546 | 0.30923 | -0.07682 | 0.21254 | 0.31838 | 0.60577 | 0.30546 |
| C5 ( *CR*<u><</u> 24) | 1.88795 | 1.88795 | 1.28447 | 1.81059 | 2.04453 | 1.19486 | 1.06402 | 1.88795 |
| C5 (25<u><</u>*CR*<u><</u>74) | 1.45477 | 1.45477 | 1.40067 | 1.81059 | 1.85457 | 1.19486 | 1.25426 | 1.45477 |
| C5 (75<u><</u>*CR*<u><</u>100) | 1.35015 | 1.35015 | 1.30655 | 1.70032 | 1.29774 | 1.04318 | 1.29877 | 1.35015 |
| C6 ( *CR*<u><</u> 24) | 1.20654 | 1.20654 | 0.99886 | 1.28612 | 1.62734 | 1.09838 | 0.81823 | 1.20654 |
| C6 (25<u><</u>*CR*<u><</u>74) | 1.11251 | 1.11251 | 1.16053 | 1.28612 | 1.48205 | 1.09838 | 1.05571 | 1.11251 |
| C6 (75<u><</u>*CR*<u><</u>100) | 0.94823 | 0.94823 | 1.23707 | 1.29148 | 1.09363 | 0.95444 | 1.16988 | 0.94823 |
| C7 ( *CR*<u><</u> 24) | 0.57697 | 0.57697 | 0.79629 | 0.72051 | 0.72514 | 0.90058 | 0.97688 | 0.57697 |
| C7 (25<u><</u>*CR*<u><</u>74) | 0.67375 | 0.67375 | 0.78576 | 0.72051 | 0.77851 | 0.90058 | 0.90342 | 0.67375 |
| C7 (75<u><</u>*CR*<u><</u>100) | 0.70453 | 0.70453 | 0.86427 | 0.72343 | 0.85692 | 0.91934 | 0.90860 | 0.70453 |
| C8 ( *CR*<u><</u> 24) | 3.57635 | 3.57635 | 5.66171 | 3.00551 | 2.84910 | 2.08863 | 1.95458 | 3.57635 |
| C8 (25<u><</u>*CR*<u><</u>74) | 2.17942 | 2.17942 | 3.85554 | 3.00551 | 3.49791 | 2.08863 | 2.31128 | 2.17942 |
| C8 (75<u><</u>*CR*<u><</u>100) | 2.46480 | 2.46480 | 2.24521 | 2.91519 | 2.30681 | 1.78262 | 2.11592 | 2.46480 |
| C9 ( *CR*<u><</u> 24) | 0.90283 | 0.90283 | 1.02398 | 1.01433 | 0.91104 | 0.97969 | 1.27034 | 0.90283 |
| C9 (25<u><</u>*CR*<u><</u>74) | 0.88103 | 0.88103 | 0.94853 | 1.01433 | 0.97420 | 0.97969 | 1.07333 | 0.88103 |
| C9 (75<u><</u>*CR*<u><</u>100) | 1.00316 | 1.00316 | 0.91281 | 0.95244 | 1.01686 | 1.00481 | 1.00870 | 1.00316 |

\**CR* represents percent crown ratio

Bias in the estimate of Z for Douglas-fir, blue spruce, lodgepole pine, Engelmann spruce, and subalpine fir is estimated using the set of equations shown in {4.7.2.2} and coefficients shown in table 4.7.2.2.

{4.7.2.2} *ZBIAS* = C10 + C11 \* *EL* for 55 <u><</u> *EL* <u><</u> 80

where:

ZBIAS = 0 for stand elevations outside this range; or when ZBIAS < 0 and (Z – ZBIAS) > 2

EL is the elevation of the stand expressed in hundreds of feet

**Table 4.7.2.2 Coefficients for the large tree height growth model bias correction in the TT variant.**

|  |  |  |
| --- | --- | --- |
| **Species Code** | **C10** | **C11** |
| DF | -0.86001 | 0.01051 |
| BS | -0.84735 | 0.01102 |
| LP | 0.40153 | -0.0078 |
| ES | -0.84735 | 0.01102 |
| AF | 0.89035 | -0.01331 |

Quaking aspen and Rocky Mountain maple use equation {4.7.2.3} to eliminate known bias.

{4.7.2.3} ZBIAS = 0.1 – 0.10273 \* *Z* + 0.00273 \* *Z*^2 (bounded ZBIAS <u>></u> 0)

Equation set {4.7.2.4} is used to eliminate known bias in the estimate of Z.

{4.7.2.4} Z = Z – ZBIAS for Douglas-fir, blue spruce, lodgepole pine, Engelmann spruce and subalpine fir

Z = Z + ZBIAS for quaking aspen and Rocky Mountain maple

If the *Z* value is 2.0 or less, it is adjusted for all younger aged trees using equation {4.7.2.5}. This adjustment is done for trees with an estimated age between 11 and 39 years and a diameter less than 9.0 inches. After this calculation, the value of *Z* is bounded to be 2.0 or less for trees meeting these criteria.

{4.7.2.5} *Z* = *Z* \* (0.3564 \* *DG*) \* CLOSUR \* *K*

*CCF* <u>></u> 100: *CLOSUR* = *PCT* / 100

*CCF* < 100: *CLOSUR* = 1

*CR* <u>></u> 75 %: *K* = 1.1

*CR* < 75 %: *K* = 1.0

where:

*DG* is diameter growth for the cycle

*PCT* is the subject tree’s percentile in the basal area distribution of the stand

*CCF* is stand crown competition factor

*CLOSUR* is an adjustment based on crown closure

*K* is an adjustment for trees with long crowns

Estimated height 10 years later is calculated using equation {4.7.2.6}, and finally, 10-year height growth is calculated by subtraction using equation {4.7.2.7} and adjusted to the cycle length.

{4.7.2.6} *H10* = [(*PSI* / (1 + *PSI*)) \* C2] + 4.5

*PSI* = C8 \* [(*D10* – 0.1) / (0.1 + C1– *D10*)]^C9 \* [exp(*K*)]

*K* = *Z* \* [(1 - C7^2)^(0.5 / C6)]

{4.7.2.7} Height growth:

H10 > HT: POTHTG = H10 – HT

H10 <u><</u> HT: POTHTG = 0.1

where:

*H10* is estimated height of the tree in ten years

*HT* is height of the tree at the beginning of the cycle

*D10* is estimated diameter at breast height of the tree in ten years

*POTHTG* is potential height growth

C1 – C9 are regression coefficients based on crown ratio class shown in table 4.7.2.1

Large tree height growth for Ponderosa pine is estimated using equation set {4.7.2.8}.

{4.7.2.8} *HTG* = exp(*X) +* 0.4809 (bounded *HTG* <u>></u> 0.1)

*X* = 2.76195 + 0.62144 \* ln(*DG*) – 0.00013358 \* *HT*2 – 0.5657 \* ln(*D*) + 0.23315 \* ln(*HT*)

where:

*HTG* is estimated height growth

*HT* is tree height at the beginning of the cycle

*D* is tree diameter at breast height at the beginning of the cycle

*DG* is estimated tree diameter growth for the current cycle

Large tree height growth for narrowleaf cottonwood and other hardwood is estimated using equations from the Spruce-fir model type of the Central Rockies variant. The equations predict height growth from site index curves for even-aged stands and height growth from a regression equation for uneven-aged stands. These estimates get blended when certain conditions are met, and in some instances a growth reduction due to stand stagnation may be applied. A stand is considered uneven-aged if the range in ages between the 5th percentile and 95th percentile trees in the basal area distribution exceeds 40 years.

Four tree heights are estimated: height at the beginning of the projection cycle and 10-years into the future using the equations for even-aged stands, and height at the beginning of the projection cycle and 10-years into the future using the equations for uneven-aged stands. Two 10-year height growth estimates are obtained. An even-aged height growth estimate is obtained from the difference between the two estimated heights using equations for even-aged stands, and an uneven-aged height growth estimate is obtained from the difference between the two estimated heights using equations for uneven-aged stands.

The final height growth estimate for a tree depends on whether the stand is even-aged or uneven-aged, total stand basal area, the tree’s position in the stand, and whether the stand is considered as stagnated. Equation {4.7.2.9} is used when the stand is even-aged, or the total stand basal area is less than 70 square feet, or when the stand is uneven-aged with total stand basal area at least 70 square feet and the tree’s percentile in the basal area distribution is at least 40. Equation {4.7.2.10} is used when the stand is uneven-aged with stand basal area at least 70 square feet and the tree’s percentile in the basal area distribution is less than 40. Equation {4.7.2.11} is used when the stand is uneven-aged with stand basal area at least 70 square feet and the tree’s percentile in the basal area distribution is at least 10 but no larger than 40.

{4.7.2.9} *HTG* = [((HHE2 - HHE1) \* ADJUST) + (ZZRAN \* 0.1)] \* [(DSTAG + 1) \* 0.5]

{4.7.2.10} *HTG* = [(HHU2 - HHU1) + (ZZRAN \* 0.1)] \* [(DSTAG + 1) \* 0.5]

{4.7.2.11} *HTG* = [(XWT \* ((HHE2 - HHE1) \* ADJUST) + (1 - XWT) \* (HHU2 - HHU1)) + (ZZRAN \* 0.1)] \*

[(DSTAG + 1) \* 0.5]

where:

*HTG* is estimated 10-year height growth

*HHE1* is estimated tree height at the beginning of the cycle using the even-aged equations

*HHE2* is estimated tree height 10-years in the future using the even-aged equations

*HHU1* is estimated tree height at the beginning of the cycle using the uneven-aged equations

*HHU2* is estimated tree height 10-years in the future using the uneven-aged equations

*ADJUST* is an adjustment based on site index (*ADJUST* = 0.78 + 0.0023 \* site index)

*ZZRAN* is a random number in the range -2 <u><</u> *ZZRAN* <u><</u> 2

*DSTAG* is an adjustment for stagnated stand conditions

*XWT* is a weight used to blend even-aged and uneven-aged height growth estimates

(*XWT* = ((*PCT* - 10) \* (10 / 3)) / 100

*PCT* is the tree’s percentile in the basal area distribution

Even-aged height is estimated using Alexander’s (1967) site curves for Engelmann spruce and sub-alpine fir. Height is estimated using equation {4.7.2.12}. If the tree age is less than 30 years, then the height estimate is modified using equation {4.7.2.13}.

{4.7.2.12} *HTE* = (4.5 + (2.75780 \* *SJ* ^0.83312) \* [1 – exp(-0.015701 \* *AGETEM*)] ^ (22.71944 \* *SJ*^ -0.63557)) \* *FACTOR*

{4.7.2.13} *HTE* = 4.5 + [(*HTE* – 4.5) / *AGETEM*] \* *A*

where:

*HTE* is the even-aged height estimate

*A* is breast-height tree age

*SJ* is species site index on a base-age basis

*AGETEM* is the tree’s breast-height age, bounded *AGETEM* <u>></u> 30

*FACTOR* is an adjustment based on the ratio of stand basal area in trees larger than the diameter class for the subject tree to total stand basal area (*FACTOR* = (1 – (*BAU* / *BA*)) bounded 0.728 <u><</u> *FACTOR* <u><</u> 1.0)

*BAU* is total basal area in trees in larger diameter classes than the subject tree

*BA* is total stand basal area

The estimate for uneven-aged stands is similarly obtained from equations that predict a tree’s future height based on stand and tree variables, equation {4.7.2.14}.

{4.7.2.14} *HTU* = 4.5 + (-2.04 + 1.4534 \* *SJ*) \* [(1 – exp(-0.058112 \* *DBH*)) ^ (1.8944 \* (*BA*^ -0.192979)]

where:

*HTU* is the uneven-aged height estimate

*SJ* is species site index on a base-age basis

*DBH* is tree diameter at breast height

*BA* is total stand basal area, bounded to be <u>></u> 10

Height growth for singleleaf pinyon, Utah juniper, Rocky Mountain juniper, bigtooth maple, and curl-leaf mountain mahogany is estimated using small tree height growth equations discussed in section 4.6.1 for all sizes of trees.

# 5.0 Mortality Model

The TT variant uses a blend of the SDI-based mortality model as described in Section 7.3.2 of Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002, referred to as EFVS) and the original Prognosis type mortality model described in Section7.3.1. The SDI-based mortality model is comprised of two steps: 1) determining the amount of stand mortality (section 7.3.2.1 of EFVS) and 2) dispersing stand mortality to individual tree records (section7.3.2.2 of EFVS). In determining the amount of stand mortality, the summation of individual tree background mortality rates is used when stand density is below the minimum level for density dependent mortality (default is 55% of maximum SDI), while stand level density-related mortality rates are used when stands are above this minimum level.

The equation used to calculate individual tree background mortality rates for all species except ponderosa pine is shown in equation {5.0.1}, and this is then adjusted to the length of the cycle by using a compound interest formula as shown in equation {5.0.2}. Coefficients for these equations are shown in table 5.0.1. The overall amount of mortality calculated for the stand is the summation of the final mortality rate (*RIP*) across all live tree records.

{5.0.1} RI = [1 / (1 + exp(p0 + p1 \* DBH))] \* 0.5

{5.0.2} RIP = 1 – (1 – RI*)*^Y

where:

RI is the proportion of the tree record attributed to mortality

RIP is the final mortality rate adjusted to the length of the cycle

DBH is tree diameter at breast height

Y is length of the current projection cycle in years

p0 and p1 are species-specific coefficients shown in table 5.0.1

**Table 5.0.1 Coefficients used in the background mortality equation {5.0.1} in the TT variant.**

| **Species Code** | **p0** | **p1** |
| --- | --- | --- |
| WB | 6.5112 | -0.0052485 |
| LM | 6.5112 | -0.0052485 |
| DF | 7.2985 | -0.0129121 |
| PM | 5.1677 | -0.0077681 |
| BS | 9.6943 | -0.0127328 |
| AS | 5.1677 | -0.0077681 |
| LP | 5.9617 | -0.0340128 |
| ES | 9.6943 | -0.0127328 |
| AF | 5.1677 | -0.0077681 |
| PP | 0.21180 | 0 |
| UJ | 5.1677 | -0.0077681 |
| RM | 5,1677 | -0.0077681 |
| BI | 5.5877 | -0.005348 |
| MM | 5.1677 | -0.0077681 |
| NC | 5.9617 | -0.0052485 |
| MC | 5.9617 | -0.0340128 |
| OS | 5.1677 | -0.0077681 |
| OH | 5.9617 | -0.0052485 |

Ponderosa pine in the TT variant uses the Prognosis-type mortality model (Hamilton 1986). The first part of the mortality rate estimate predicts individual tree mortality based on habitat type, species, diameter, diameter increment, estimated potential diameter increment, stand basal area, and a tree’s diameter relative to the average stand diameter. The second part of the mortality rate estimate is dependent on the proximity of stand basal area to the site maximum and the rate of basal area increment. The final mortality rate applied to a tree record is a weighted average of these two predictions.

The equation used to calculate the first part of mortality for ponderosa pine is shown in equation {5.0.3} and this is then adjusted to the length of the cycle using a compound interest formula as shown in equation {5.0.4}. The coefficient used for equation {5.0.3} is shown in table 5.0.1 Diameter growth in equation {5.0.3} is estimated using equation {5.0.5} Values for the diameter growth index (*I*) represent ponderosa pine habitat types on the Payette National Forest.

{5.0.3} *RI* = [1 / (1 + exp(p0 + 2.76253 + 0.2223 \* √*DBH* + -0.0460508 \* √*BA* + 11.2007 \* *DG* + 0.2463 \* *RDBH* + ((-0.55442 + 6.0713 \* *DG*) / *DBH*)))]

{5.0.4} *RIP* = 1 – (1 – *RI*)^*Y*

{5.0.5} *DG* = 0.20 + (0.05 \* *I*)

where:

*RI* is the proportion of the tree record attributed to mortality

*DBH* is tree diameter at breast height

*BA* is total stand basal area

*Y* is length of the current projection cycle in years

*DG* is diameter growth for the cycle

*I* is a diameter growth index value determined by habitat type and location code

*I* = 12 for trees with *DBH* > 5.0”

*I* = 41 for trees with *DBH* <u><</u> 5.0”

*BAMAX* is maximum basal area expected for the species

*SDImax* is maximum stand density index

p0 is a species-specific coefficient shown in table 5.0.1

When stand density-related mortality is in effect, the total amount of stand mortality is determined based on the trajectory developed from the relationship between stand SDI and the maximum SDI for the stand. This is explained in section 7.3.2.1 of EFVS.

Once the amount of stand mortality is determined based on either the summation of background mortality rates or density-related mortality rates, mortality is dispersed to individual tree records in relation to a tree’s percentile in the basal area distribution (*PCT*) using equation {5.0.6}. This value is then adjusted by a species-specific mortality modifier (representing the species’ tolerance), and for some species a crown ratio modifier, to obtain a final mortality rate as shown in equation {5.0.7}. The mortality modifier for ponderosa pine is from ponderosa pine in the Utah variant.

The mortality model makes multiple passes through the tree records multiplying a record’s trees-per-acre value times the final mortality rate (MORT), accumulating the results, and reducing the trees-per-acre representation until the desired mortality level has been reached. If the stand still exceeds the basal area maximum sustainable on the site the mortality rates are proportionally adjusted to reduce the stand to the specified basal area maximum.

{5.0.6} *MR* = 0.84525 – (0.01074 \* PCT) + (0.0000002 \* PCT3)

{5.0.7} Final mortality rate

Used for narrowleaf cottonwood and other hardwood: *MORT* = *MR* \* (1– (*CR* / *100*)) \* *MWT* \* 0.1

Used for all other species: *MORT = MR \* MWT \* 0.1*

where:

*MR* is the proportion of the tree record attributed to mortality (bounded: 0.01 <u><</u> *MR* <u><</u> 1)

*PCT* is the subject tree’s percentile in the basal area distribution of the stand

*MORT* is the final mortality rate of the tree record

*MWT* is a mortality weight value based on a species’ tolerance shown in table 5.2.1

**Table 5.2.1 *MWT* values for the mortality equation {5.0.7} in the TT variant.**

| **Species Code** | ***MWT*** |
| --- | --- |
| WB | 0.8 |
| LM | 0.7 |
| DF | 0.55 |
| PM | 0.7 |
| BS | 0.5 |
| AS | 1.0 |
| LP | 0.9 |
| ES | 0.5 |
| AF | 0.6 |
| PP | 0.85 |
| UJ | 0.7 |
| RM | 0.7 |
| BI | 0.7 |
| MM | 1.0 |
| NC | 0.9 |
| MC | 1.1 |
| OS | 0.75 |
| OH | 0.90 |

# 6.0 Regeneration

The TT variant contains a partial establishment model which may be used to input regeneration and ingrowth into simulations. A more detailed description of how the partial establishment model works can be found in section 5.4.5 of the Essential FVS Guide (Dixon 2002).

The regeneration model is used to simulate stand establishment from bare ground, or to bring seedlings and sprouts into a simulation with existing trees. Sprouts are automatically added to the simulation following harvest or burning of known sprouting species (see table 6.0.1 for sprouting species).

**Table 6.0.1 Regeneration parameters by species in the TT variant.**

| **Species Code** | **Sprouting Species** | **Minimum Bud Width (in)** | **Minimum Tree Height (ft)** | **Maximum Tree Height (ft)** |
| --- | --- | --- | --- | --- |
| WB | No | 0.4 | 1.0 | 23.0 |
| LM | No | 0.3 | 1.0 | 27.0 |
| DF | No | 0.3 | 1.0 | 21.0 |
| PM | No | 0.4 | 0.5 | 6.0 |
| BS | No | 0.3 | 0.5 | 18.0 |
| AS | Yes | 0.2 | 6.0 | 20.0 |
| LP | No | 0.4 | 1.0 | 24.0 |
| ES | No | 0.3 | 0.5 | 18.0 |
| AF | No | 0.3 | 0.5 | 18.0 |
| PP | No | 0.5 | 1.0 | 17.0 |
| UJ | No | 0.3 | 0.5 | 6.0 |
| RM | No | 0.3 | 0.5 | 6.0 |
| BI | Yes | 0.2 | 0.5 | 6.0 |
| MM | Yes | 0.2 | 6.0 | 16.0 |
| NC | Yes | 0.3 | 3.0 | 16.0 |
| MC | No | 0.2 | 0.5 | 6.0 |
| OS | No | 0.2 | 0.5 | 22.0 |
| OH | No | 0.3 | 3.0 | 16.0 |

The number of sprout records created for each sprouting species is found in table 6.0.2. For root suckering hardwood species, logic rule {6.0.1} is used to determine the number of sprout records. The trees-per-acre represented by each sprout record is determined using the general sprouting probability equation {6.0.2}. See table 6.0.2 for species-specific sprouting probabilities, number of sprout records created, and reference information.

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

**Table 6.0.2 Sprouting algorithm parameters for sprouting species in the TT variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **Sprouting Probability** | **Number of Sprout Records** | **Source** |
| AS | {6.0.3} | 2 | Keyser 2001 |
| BI | 0.7 | 1 | Tollefson 2006 |
| MM | 0.7 | 1 | Anderson 2001 |
| NC | 0.9 | {6.0.1} | Simonin 2001 |

Regeneration of seedlings must be specified by the user with the partial establishment model by using the PLANT or NATURAL keywords. Height of the seedlings is estimated in two steps. First, the height is estimated when a tree is 5 years old (or the end of the cycle – whichever comes first) by using the small-tree height growth equations found in section 4.6.1. Users may override this value by entering a height in field 6 of the PLANT or NATURAL keyword; however the height entered in field 6 is not subject to minimum height restrictions and seedlings as small as 0.05 feet may be established. The second step also uses the equations in section 4.6.1, which grow the trees in height from the point five years after establishment to the end of the cycle.

Seedlings and sprouts are passed to the main FVS model at the end of the growth cycle in which regeneration is established. Unless noted above, seedlings being passed are subject to minimum and maximum height constraints and a minimum budwidth constraint shown in table 6.0.1. After seedling height is estimated, diameter growth is estimated using equations described in section 4.6.2. Crown ratios on newly established trees are estimated as described in section 4.3.1.

Regenerated trees and sprouts can be identified in the treelist output file with tree identification numbers beginning with the letters “ES”.

# 7.0 Volume

In the TT variant, volume is calculated for four merchantability standards: total stem cubic feet, merchantable stem cubic feet, sawlog stem cubic feet, and merchantable stem board feet (Scribner Decimal C). Sawlog cubic foot volume is only reported when the FIAVBC keyword is in use. Volume estimation is based on methods contained in the National Volume Estimator Library maintained by the Forest Products Measurements group in the Forest Management Service Center (Volume Estimator Library Equations 2009). The default volume merchantability standards and equation numbers for the TT variant are shown in tables 7.0.1-7.0.3.

Volume computation methods used by the Forest Inventory and Analysis (FIA) program can be requested with the FIAVBC keyword. This keyword encompasses the National Scale Volume and Biomass estimators (NSVB; Westfall et al. 2024) and regional equations used for woodland species (Burrill et al. 2024). More information about the FIAVBC keyword and required input variables can be found in the Essential FVS Guide (Dixon 2002).

**Table 7.0.1 Volume merchantability standards for the TT variant.**

|  |  |  |
| --- | --- | --- |
| **Merchantable Cubic Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | LP | All Other Species |
| All location codes | 7.0 / 6.0 inches | 8.0 / 6.0 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| **Merchantable Board Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | LP | All Other Species |
| All location codes | 7.0 / 6.0 inches | 8.0 / 6.0 inches |
| Stump Height | 1.0 foot | 1.0 foot |

**Table 7.0.2 Volume equation defaults for each species, at specific location codes, with model name.**

| **Common Name** | **Location Code** | **Equation Number** | **Reference** |
| --- | --- | --- | --- |
| whitbark pine | 403,405,415,416 | 400MATW108 | Rustagi and Loveless Profile Models |
| limber pine | 403,405,415,416 | 400MATW108 | Rustagi and Loveless Profile Models |
| Douglas-fir | 403,415,416 | 400MATW202 | Rustagi and Loveless Profile Models |
| Douglas-fir | 405 | 405MATW202 | Rustagi and Loveless Profile Models |
| singleleaf pine | 403,405,415,416 | 400DVEW133 | Chojnacky Equations |
| blue spruce | 403,405,415,416 | 400MATW093 | Rustagi and Loveless Profile Models |
| quaking aspen | 403,405,415,416 | 400MATW746 | Rustagi and Loveless Profile Models |
| lodgepole pine | 403,405,415,416 | 400MATW108 | Rustagi and Loveless Profile Models |
| Engelmann spruce | 403,405,415,416 | 400MATW093 | Rustagi and Loveless Profile Models |
| subalpine fir | 403,415,416 | 400MATW019 | Rustagi and Loveless Profile Models |
| subalpine fir | 405 | 405MATW019 | Rustagi and Loveless Profile Models |
| ponderosa pine | 403,405,415,416 | 400MATW122 | Rustagi and Loveless Profile Models |
| Utah juniper | 403,405,415,416 | 400DVEW065 | Chojnacky Equations |
| Rocky mountain juniper | 403,405,415,416 | 400DVEW066 | Chojnacky Equations |
| bigtooth maple | 403,405,415,416 | 400MATW108 | Rustagi and Loveless Profile Models |
| Rocky mountain maple | 403,405,415,416 | 400MATW108 | Rustagi and Loveless Profile Models |
| narrowleaf cottonwood | 403,405,415,416 | 400MATW108 | Rustagi and Loveless Profile Models |
| curl-leaf mountain mahogany | 403,405,415,416 | 400DVEW475 | Chojnacky Equations |
| other softwood | 403,405,415,416 | 400MATW108 | Rustagi and Loveless Profile Models |
| other hardwood | 403,405,415,416 | 400DVEW998 | Chojnacky Equations |

**Table 7.0.3 Citations by Volume Model**

| **Model Name** | **Citation** |
| --- | --- |
| Chojnacky Equations | Chojnacky, David 1985. Pinyon-Juniper Volume Equations for the Central Rocky Mountain States. Intermountain Research Station Research Paper INT-339. |
| Rustagi and and Loveless Profile Models | Rustagi, K.R. and Loveless, R.S.,Jr., 1991. Compatible variable-form volume and stem-profile equations for Douglas-fir. Can. J. For. Res. 21:143-151. |

# 8.0 Fire and Fuels Extension (FFE-FVS)

The Fire and Fuels Extension to the Forest Vegetation Simulator (FFE-FVS) (Reinhardt and Crookston 2003) integrates FVS with models of fire behavior, fire effects, and fuel and snag dynamics. This allows users to simulate various management scenarios and compare their effect on potential fire hazard, surface fuel loading, snag levels, and stored carbon over time. Users can also simulate prescribed burns and wildfires and get estimates of the associated fire effects such as tree mortality, fuel consumption, and smoke production, as well as see their effect on future stand characteristics. FFE-FVS, like FVS, is run on individual stands, but it can be used to provide estimates of stand characteristics such as canopy base height and canopy bulk density when needed for landscape-level fire models.

For more information on FFE-FVS and how it is calibrated for the TT variant, refer to the updated FFE-FVS model documentation (Rebain, comp. 2010) available on the FVS website.

# 9.0 Insect and Disease Extensions

FVS Insect and Pathogen models for dwarf mistletoe and western root disease have been developed for the TT variant through the participation and contribution of various organizations led by Forest Health Protection. These models are currently maintained by the Forest Management Service Center and regional Forest Health Protection specialists. Additional details regarding each model may be found in chapter 8 of the Essential FVS Users Guide (Dixon 2002).

# 10.0 Literature Cited

Alexander, R.R. 1967. Site Indices for Engelmann Spruce. Res. Pap. RM-32. Forest Service, Rocky Mountain Research Station. 7p.

Alexander, R.R., Tackle, D., and Dahms, W.G. 1967. Site Indices for Lodgepole Pine with Corrections for Stand Density Methodology. Res. Pap. RM-29. Forest Service, Rocky Mountain Research Station. 18 p.

Anderson, Michelle D. 2001. Acer glabrum. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Arney, J. D. 1985. A modeling strategy for the growth projection of managed stands. Canadian Journal of Forest Research. 15(3):511-518.

Bechtold, William A. 2004. Largest-crown-diameter Prediction Models for 53 Species in the Western United States. WJAF. Forest Service. 19(4): pp 241-245.

Brickell, James E. 1970. Equations and Computer subroutines for Estimating Site Quality of Eight Rocky Mounatin Species. Res. Pap. INT-75. Ogden, UT: Forest Service, Intermountain Forest and Range Experimnet Station. 24 p.

Burrill, Elizabeth A.; DiTommaso, Andrea M.; Turner, Jeffery A.; Pugh, Scott A.; Christensen, Glenn; Kralicek, Karin M.; Perry, Carol J.; Lepine, Lucie C.; Walker, David M.; Conkling, Barbara L. 2024. The Forest Inventory and Analysis Database, FIADB user guides, volume: database description (version 9.3), nationwide forest inventory (NFI). U.S. Department of Agriculture, Forest Service. 1026 p. [Online].

Chojnacky, David 1985. Pinyon-Juniper Volume Equations for the Central Rocky Mountain States. Intermountain Research Station Research Paper INT-339.

Cole, D. M.; Stage, A. R. 1972. Estimating future diameters of lodgepole pine. Res. Pap. INT-131. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 20p.

Crookston, Nicholas L. 2003. Internal document on file. Data provided from Region 1. Moscow, ID: Forest Service.

Crookston, Nicholas L. 2005. Draft: Allometric Crown Width Equations for 34 Northwest United States Tree Species Estimated Using Generalized Linear Mixed Effects Models.

Curtis, Robert O. 1967. Height-diameter and height-diameter-age equations for second-growth Douglas-fir. Forest Science 13(4):365-375.

Curtis, Robert O.; Herman, Francis R.; DeMars, Donald J. 1974. Height growth and site index for Douglas-fir in high-elevation forests of the Oregon-Washington Cascades. Forest Science 20(4):307-316.

Dixon, G. E. 1985. Crown ratio modeling using stand density index and the Weibull distribution. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 13p.

Dixon, Gary E. comp. 2002 (revised frequently). Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U.S. Department of Agriculture, Forest Service, Forest Management Service Center.

Donnelly, Dennis. 1996. Internal document on file. Data provided from Region 6. Fort Collins, CO: Forest Service.

Edminster, Carleton B., Mowrer, Todd H., and Shepperd, Wayne D. 1985. Site index curves for aspen in the central Rocky Mountains. Res. Note RM-453. Fort Collins, CO: Forest Service, Rocky Mountain Forest and Range Experiment Station. 4p.

Hamilton, D. A., Jr. 1986. A logistic model of mortality in thinned and unthinned mixed conifer stands of northern Idaho. Forest Science 32(4): 989-1000.

Johnson, N.L. 1949. Bivariate distributions based on simple translation systems. Biometrika 36: 297–304.

Keyser, C.E. 2001. Quaking Aspen Sprouting in Western FVS Variants: A New Approach. Unpublished Manuscript.

Krajicek, J.; Brinkman, K.; Gingrich, S. 1961. Crown competition – a measure of density. Forest Science. 7(1):35-42

Meyer, Walter H. 1961.rev. Yield of even-aged stands of ponderosa pine. Tech. Bull. No. 630. Washington D.C.: Forest Service

Rebain, Stephanie A. comp. 2010 (revised frequently). The Fire and Fuels Extension to the Forest Vegetation Simulator: Updated Model Documentation. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 379 p.

Reinhardt, Elizabeth; Crookston, Nicholas L. (Technical Editors). 2003. The Fire and Fuels Extension to the Forest Vegetation Simulator. Gen. Tech. Rep. RMRS-GTR-116. Ogden, UT: U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station. 209 p.

Rustagi, K.R. and Loveless, R.S.,Jr., 1991. Compatible variable-form volume and stem-profile equations for Douglas-fir. Can. J. For. Res. 21:143-151.

Schreuder, H.T. and W.L. Hafley. 1977. A Useful Distribution for Describing Stand Structure of Tree Heights and Diameters. Biometrics 33, 471-478.

Shepperd, Wayne D. 1995. Unpublished equation. Data on file. Fort Collins, CO: Forest Service, Rocky Mountain Research Station.

Simonin, Kevin A. 2001. Populus angustifolia. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Stage, A. R. 1973. Prognosis Model for stand development. Res. Paper INT-137. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 32p.

Tollefson, Jennifer E. 2006. Acer grandidentatum. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Van Dyck, Michael G.; Smith-Mateja, Erin E., comps. 2000 (revised frequently). Keyword reference guide for the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

Westfall, James A.; Coulston, John W.; Gray, Andrew N.; Shaw, John D.; Radtke, Philip J.; Walker, David M.; Weiskittel, Aaron R.; MacFarlane, David W.; Affleck, David L.R.; Zhao, Dehai; Temesgen, Hailemariam; Poudel, Krishna P.; Frank, Jereme M.; Prisley, Stephen P.; Wang, Yingfang; Sánchez Meador, Andrew J.; Auty, David; Domke, Grant M. 2024. A national-scale tree volume, biomass, and carbon modeling system for the United States. Gen. Tech. Rep. WO-104. Washington, DC: U.S. Department of Agriculture, Forest Service. 37 p.

Wykoff, W. R. 1990. A basal area increment model for individual conifers in the northern Rocky Mountains. For. Science 36(4): 1077-1104.

Wykoff, William R., Crookston, Nicholas L., and Stage, Albert R. 1982. User’s guide to the Stand Prognosis Model. Gen. Tech. Rep. INT-133. Ogden, UT: Forest Service, Intermountain Forest and Range Experiment Station. 112p.

# 11.0 Appendices

## 11.1 Appendix A: Habitat Type Codes

**Table 11.1.1 Habitat Type Codes recognized in the TT variant and corresponding habitat type class.**

| **FVS Seq Num** | **Habitat Type Codes** | **Habitat Type Name** | **Abbreviation** | **Habitat Type Class {4.7.1.2}** |
| --- | --- | --- | --- | --- |
| 1 | 050 | limber pine/Idaho fescue | PIFL2/FEID | 1 |
| 2 | 060 | limber pine/curl-leaf mountain mahogany | PIFL2/CELE3 | 1 |
| 3 | 070 | limber pine/common juniper | PIFL2/JUCO6 | 1 |
| 4 | 080 | limber pine/spike fescue | PIFL2/LEKI2 | 1 |
| 5 | 090 | limber pine | PIFL2 | 1 |
| 6 | 100 | ponderosa pine | PIPO | 1 |
| 7 | 120 | ponderosa pine/western needlegrass | PIPO/ACOCO | 1 |
| 8 | 130 | ponderosa pine/bluebunch wheatgrass | PIPO/PSSPS | 1 |
| 9 | 140 | ponderosa pine/Idaho fescue | PIPO/FEID | 1 |
| 10 | 150 | ponderosa pine/western snowberry | PIPO/SYOC h.t. | 1 |
| 11 | 160 | ponderosa pine/antelope bitterbrush | PIPO/PUTR2 | 1 |
| 12 | 161 | ponderosa pine/antelope bitterbrush-bluebunch wheatgrass | PIPO/PUTR2-PSSPS | 1 |
| 13 | 162 | ponderosa pine/antelope bitterbrush-Idaho fescue | PIPO/PUTR2-FEID | 1 |
| 14 | 170 | ponderosa pine/common snowberry | PIPO/SYAL | 1 |
| 15 | 190 | ponderosa pine/mallow ninebark | PIPO/PHMA5 | 2 |
| 16 | 195 | ponderosa pine/mountain snowberry | PIPO/SYOR2 | 2 |
| 17 | 41045 | limber pine/creeping barberry | PIFL2/MARE11 | 1 |
| 18 | 41115 | ponderosa pine/Geyer's sedge | PIPO/CAGE2 | 1 |
| 19 | 41141 | ponderosa pine/Idaho fescue-Idaho fescue | PIPO/FEID-FEID | 1 |
| 20 | 41143 | ponderosa pine/Idaho fescue/greenleaf manzanita | PIPO/FEID/ARPA6 | 1 |
| 21 | 41144 | ponderosa pine/Idaho fescue/big sagebrush | PIPO/FEID/ARTR2 | 1 |
| 22 | 41376 | Douglas-fir/sweetcicely/Oregon boxleaf | PSME/OSBE/PAMY | 4 |
| 23 | 41406 | blue spruce/bluebunch wheatgrass | PIPU/PSSPS | 0 |
| 24 | 41416 | Engelmann spruce/dwarf bilberry | PIEN/VACA13 | 0 |
| 25 | 41708 | subalpine fir/sicletop lousewort/Douglas-fir | ABLA/PERA/PSME | 0 |
| 26 | 41709 | subalpine fir/sicletop lousewort-sicletop lousewort | ABLA/PERA-PERA | 0 |
| 27 | 41715 | subalpine fir/creeping barberry-gooseberry currant | ABLA/MARE11-RIMO2 | 0 |
| 28 | 41716 | subalpine fir/creeping barberry-common juniper | ABLA/MARE11-JUCO6 | 0 |
| 29 | 41717 | subalpine fir/creeping barberry/Douglas-fir | ABLA/MARE11/PSME | 0 |
| 30 | 41725 | subalpine fir/grouse whortleberry/broadlef arnica | ABLA/VASC/ARLA8 | 0 |
| 31 | 41726 | subalpine fir/grouse whortleberry/Geyer's sedge | ABLA/VASC/CAGE2 | 0 |
| 32 | 41813 | subalpine fir/gooseberry currant/Fendler's meadow-rue | ABLA/RIMO2/THFE | 0 |
| 33 | 41814 | subalpine fir/gooseberry currant/lodgepole pine | ABLA/RIMO2/PICO | 0 |
| 34 | 41815 | subalpine fir/gooseberry currant/spike trisetum | ABLA/RIMO2/TRSP2 | 0 |
| 35 | 41862 | white fir/sweetcicely | ABCO/OSBE | 0 |
| 36 | 41864 | white fir/creeping barberry/mountain snowberry | ABCO/MARE11/SYOR2 | 0 |
| 37 | 41915 | lodgepole pine/bluejoint | PICO/CACA4 | 0 |
| 38 | 41956 | lodgepole pine/kinnikinnick | PICO/ARUV | 0 |
| 39 | 41957 | lodgepole pine/creeping barberry | PICO/MARE11 | 0 |
| 40 | 41970 | lodgepole pine/Ross' sedge | PICO/CARO5 | 0 |
| 41 | 41107 | ponderosa pine/greenleaf manzanita | PIPO/ARPA6 | 1 |
| 42 | 41108 | ponderosa pine/curl-leaf mountain mahogany | PIPO/CELE3 | 1 |
| 43 | 41109 | ponderosa pine/black sagebrush | PIPO/ARNO4 | 1 |
| 44 | 41111 | ponderosa pine/Gamble oak | PIPO/QUGA | 1 |
| 45 | 41112 | ponderosa pine/Gamble oak-mountain snowberry | PIPO/QUGA-SYOR2 | 1 |
| 46 | 41113 | ponderosa pine/Gamble oak-Gamble oak | PIPO/QUGA-QUGA | 1 |
| 47 | 41114 | ponderosa pine/mountain muhly | PIPO/MUMO | 1 |
| 48 | 41365 | Douglas-fir/greenleaf manzanita | PSME/ARPA6 | 4 |
| 49 | 41366 | Douglas-fir/alderleaf mountain mahogany | PSME/CEMO2 | 4 |
| 50 | 41367 | Douglas-fir/Gamble oak | PSME/QUGA | 4 |
| 51 | 41382 | Douglas-fir/creeping barberry/ponderosa pine | PSME/MARE11/PIPO | 4 |
| 52 | 41408 | blue spruce/field horsetail | PIPU/EQAR | 0 |
| 53 | 41409 | blue spruce/common juniper | PIPU/JUCO6 | 0 |
| 54 | 41746 | subalpine fir/Columbian monkshood | ABLA/ACCO4 | 0 |
| 55 | 41747 | subalpine fir/whortleberry | ABLA/VAMY2 | 0 |
| 56 | 41816 | subalpine fir/gooseberry currant/aspen bluebells | ABLA/RIMO2/MEAR6 | 0 |
| 57 | 41866 | white fir/creeping barberry-common juniper | ABCO/MARE11-JUCO6 | 0 |
| 58 | 41867 | white fir/mountain snowberry | ABCO/SYOR2 | 0 |
| 59 | 41868 | white fir/common juniper | ABCO/JUCO6 | 0 |
| 60 | 41869 | white fir/Gamble oak | ABCO/QUGA | 0 |
| 61 | 41871 | white fir/greenleaf manzanita | ABCO/ARPA6 | 0 |
| 62 | 41872 | white fir/curl-leaf mountain mahogany | ABCO/CELE3 | 0 |
| 63 | 41873 | white fir/Rocky Mountain maple | ABCO/ACGL | 0 |
| 64 | 42001 | quaking aspen/California false hellebore | POTR5/VECA2 | 0 |
| 65 | 42002 | quaking aspen/western brackenfern | POTR5/PTAQ | 0 |
| 66 | 42003 | quaking aspen/mule-ears | POTR5/WYAM | 0 |
| 67 | 42004 | quaking aspen/Thurber's fescue | POTR5/FETH | 0 |
| 68 | 42005 | quaking aspen/tall forb | POTR5/2FORB | 0 |
| 69 | 42006 | quaking aspen/pinegrass | POTR5/CARU | 0 |
| 70 | 42007 | quaking aspen/Fendler's meadow-rue | POTR5/THFE | 0 |
| 71 | 42008 | quaking aspen/California brome | POTR5/BRCA5 | 0 |
| 72 | 42009 | quaking aspen/Ross' sedge | POTR5/CARO5 | 0 |
| 73 | 42010 | quaking aspen/needle and thread | POTR5/HECOC8 | 0 |
| 74 | 42011 | quaking aspen/timber milkvetch | POTR5/ASMI9 | 0 |
| 75 | 42012 | quaking aspen/Kentucky bluegrass | POTR5/POPR | 0 |
| 76 | 42040 | quaking aspen/thimbleberry | POTR5/RUPA | 0 |
| 77 | 42041 | quaking aspen/red elderberry | POTR5/SARA2 | 0 |
| 78 | 42042 | quaking aspen/russet buffaloberry | POTR5/SHCA | 0 |
| 79 | 42043 | quaking aspen/mountain snowberry | POTR5/SYOR2 | 0 |
| 80 | 42044 | quaking aspen/mountain snowberry/tall forb phase | POTR5/SYOR2/2FORB | 0 |
| 81 | 42045 | quaking aspen/mountain snowberry/pinegrass | POTR5/SYOR2/CARU | 0 |
| 82 | 42046 | quaking aspen/mountain snowberry/Fendler's meadow-rue | POTR5/SYOR2/THFE | 0 |
| 83 | 42047 | quaking aspen/mountain snowberry/Thurber's fescue | POTR5/SYOR2/FETH | 0 |
| 84 | 42048 | quaking aspen/mountain snowberry/Ross' sedge | POTR5/SYOR2/CARO5 | 0 |
| 85 | 42049 | quaking aspen/mountain snowberry/mule-ears | POTR5/SYOR2/WYAM | 0 |
| 86 | 42050 | quaking aspen/mountain snowberry/California brome | POTR5/SYOR2/BRCA5 | 0 |
| 87 | 42051 | quaking aspen/mountain snowberry/Kentucky bluegrass | POTR5/SYOR2/POPR | 0 |
| 88 | 42052 | quaking aspen/common juniper | POTR5/JUCO6 | 0 |
| 89 | 42053 | quaking aspen/common juniper/Geyer's sedge | POTR5/JUCO6/CAGE2 | 0 |
| 90 | 42054 | quaking aspen/common juniper/silvery lupine | POTR5/JUCO6/LUAR3 | 0 |
| 91 | 42055 | quaking aspen/common juniper/timber milkvetch | POTR5/JUCO6/ASMI9 | 0 |
| 92 | 42056 | quaking aspen/big sagebrush | POTR5/ARTR2 | 0 |
| 93 | 42080 | quaking aspen/Scouler's willow | POTR5/SASC | 0 |
| 94 | 42081 | quaking aspen/Saskatoon serviceberry-mountain snowberry | POTR5/AMAL2-SYOR2 | 0 |
| 95 | 42082 | quaking aspen/Saskatoon serviceberry-mountain snowberry/tall forb | POTR5/AMAL2-SYOR2/2FORB | 0 |
| 96 | 42083 | quaking aspen/Saskatoon serviceberry-mountain snowberry/Fendler's meadow-rue | POTR5/AMAL2-SYOR2/THFE | 0 |
| 97 | 42084 | quaking aspen/Saskatoon serviceberry-mountain snowberry/pinegrass | POTR5/AMAL2-SYOR2/CARU | 0 |
| 98 | 42085 | quaking aspen/Saskatoon serviceberry-mountain snowberry/California brome | POTR5/AMAL2-SYOR2/BRCA5 | 0 |
| 99 | 42086 | quaking aspen/Saskatoon serviceberry-roundleaf snowberry | POTR5/AMAL2-SYRO | 0 |
| 100 | 42087 | quaking aspen/Saskatoon serviceberry/western brackenfern | POTR5/AMAL2/PTAQ | 0 |
| 101 | 42088 | quaking aspen/Saskatoon serviceberry/tall forb | POTR5/AMAL/2FORB | 0 |
| 102 | 42089 | quaking aspen/Saskatoon serviceberry/Fendler's meadow-rue | POTR5/AMAL2/THFE | 0 |
| 103 | 42101 | quaking aspen-subalpine fir/tall forb | POTR5-ABLA/2FORB | 0 |
| 104 | 42102 | quaking aspen-subalpine fir/Fendler's meadow-rue | POTR5-ABLA/THFE | 0 |
| 105 | 42103 | quaking aspen-subalpine fir/Geyer's sedge | POTR5-ABLA/CAGE2 | 0 |
| 106 | 42104 | quaking aspen-subalpine fir/Ross' sedge | POTR5-ABLA/CARO5 | 0 |
| 107 | 42105 | quaking aspen-subalpine fir/russet buffaloberry | POTR5-ABLA/SHCA | 0 |
| 108 | 42106 | quaking aspen-subalpine fir/mountain snowberry | POTR5-ABLA/SYOR2 | 0 |
| 109 | 42107 | quaking aspen-subalpine fir/mountain snowberry/tall forb | POTR5-ABLA/SYOR2/2FORB | 0 |
| 110 | 42108 | quaking aspen-subalpine fir/mountain snowberry/Fendler's meadow-rue | POTR5-ABLA/SYOR2/THFE | 0 |
| 111 | 42109 | quaking aspen-subalpine fir/mountain snowberry/California brome | POTR5-ABLA/SYOR2/BRCA5 | 0 |
| 112 | 42110 | quaking aspen-subalpine fir/common juniper | POTR5-ABLA/JUCO6 | 0 |
| 113 | 42111 | quaking aspen-subalpine fir/Saskatoon serviceberry | POTR5-ABLA/AMAL2 | 0 |
| 114 | 42201 | quaking aspen-lodgepole pine/Fendler's meadow-rue | POTR5-PICO/THFE | 0 |
| 115 | 42202 | quaking aspen-lodgepole pine/Geyer's sedge | POTR5-PICO/CAGE2 | 0 |
| 116 | 42203 | quaking aspen-lodgepole pine/mountain snowberry | POTR5-PICO/SYOR2 | 0 |
| 117 | 42204 | quaking aspen-lodgepole pine/common juniper | POTR5-PICO/JUCO6 | 0 |
| 118 | 42301 | quaking aspen-Douglas-fir/pinegrass | POTR5-PSME/CARU | 0 |
| 119 | 42302 | quaking aspen-Douglas-fir/mountain snowberry | POTR5-PSME/SYOR2 | 0 |
| 120 | 42303 | quaking aspen-Douglas-fir/common juniper | POTR5-PSME/JUCO | 0 |
| 121 | 42304 | quaking aspen-Douglas-fir/Saskatoon serviceberry | POTR5-PSME/AMAL2 | 0 |
| 122 | 42401 | quaking aspen-white fir/Kentucky bluegrass | POTR5-ABCO/POPR | 0 |
| 123 | 42402 | quaking aspen-white fir/mountain snowberry | POTR5-ABCO/SYOR2 | 0 |
| 124 | 42403 | quaking aspen-white fir/greenleaf manzanita | POTR5-ABCO/ARPA6 | 0 |
| 125 | 42500 | quaking aspen-blue spruce | POTR5-PIPU | 0 |
| 126 | 42600 | quaking aspen-limber pine | POTR5-PIFL2 | 0 |
| 127 | 42700 | quaking aspen-ponderosa pine | POTR5-PIPO | 0 |
| 128 | 43002 | spruce/redosier dogwood | PICEA/COSES | 0 |
| 129 | 43004 | spruce/field horsetail | PICEA/EQAR | 0 |
| 130 | 43006 | spruce/bluejoint | PICEA/CACA4 | 0 |
| 131 | 43012 | spruce/fragrant bedstraw | PICEA/GATR3 | 0 |
| 132 | 43105 | gray alder/northern black currant | ALIN2/RIHU | 0 |
| 133 | 43202 | Booth's willow/beaked sedge | SABO2/CARO6 | 0 |
| 134 | 43208 | Booth's willow/starry false lily of the vally | SABO2/MAST4 | 0 |
| 135 | 43225 | Geyer's willow/Kentucky bluegrass | SAGE2/POPR | 0 |
| 136 | 43227 | Geyer's willow/forb (mesic) | SAGE2/2FORB | 0 |
| 137 | 43241 | narrowleaf willow/field horsetail | SAEX/EQAR | 0 |
| 138 | 43271 | yellow willow | SALU2 | 0 |
| 139 | 43283 | mountain willow | SAEA | 0 |
| 140 | 43303 | Wolf's willow/Nebraska sedge | SAWO/CANE2 | 0 |
| 141 | 43305 | Wolf's willow/bluejoint | SAWO/CACA4 | 0 |
| 142 | 43307 | Wolf's willow/fowl bluegrass | SAWO/POPA2 | 0 |
| 143 | 43321 | diamondleaf willow | SAPL2 | 0 |
| 144 | 43354 | redosier dogwood/fragrant bedstraw | COSES/GATR3 | 0 |
| 145 | 43400 | alderleaf buckthorn | RHAL | 0 |
| 146 | 43552 | shrubby cinquefoil/Idaho fescue | DAFL3/FEID | 0 |
| 147 | 43602 | silver sagebrush/Idaho fescue | ARCA13/FEID | 0 |
| 148 | 43813 | sedge | CAREX | 0 |
| 149 | 43881 | fowl bluegrass | POPA2 | 0 |
| 150 | 43941 | forb (mesic, meadow) | 2FORB | 0 |
| 151 | 43003 | conifer/field horsetail | 2TE/EQAR | 0 |
| 152 | 43005 | conifer/bluejoint | 2TE/CACA4 | 0 |
| 153 | 43007 | conifer/blue wildrye | 2TE/ELGL | 0 |
| 154 | 43008 | conifer/shrubby cinquefoil | 2TE/DAFL3 | 0 |
| 155 | 43009 | conifer/tufted hairgrass | 2TE/DECA18 | 0 |
| 156 | 43011 | conifer/Columbian monkshood | 2TE/ACCO4 | 0 |
| 157 | 43013 | conifer/red baneberry | 2TE/ACRU2 | 0 |
| 158 | 43041 | narrowleaf cottonwood/water birch | POAN3/BEOC2 | 0 |
| 159 | 43042 | narrowleaf cottonwood/bigtooth maple | POAN3/ACGR3 | 0 |
| 160 | 43044 | narrowleaf cottonwood/Woods' rose | POAN3/ROWO | 0 |
| 161 | 43045 | narrowleaf cottonwood/fragrant sumac | POAN3/RHAR4 | 0 |
| 162 | 43081 | boxelder/redosier dogwood | ACNE2/COSE16 | 0 |
| 163 | 43082 | boxelder/field horsetail | ACNE2/EQAR | 0 |
| 164 | 43102 | gray alder/field horsetail | ALIN2/EQAR | 0 |
| 165 | 43201 | Booth's willow/water sedge | SABO2/CAAQ | 0 |
| 166 | 43209 | Booth's willow/mesic forb | SABO2/2FORB | 0 |
| 167 | 43210 | Booth's willow/mesic graminoid | SABO2/2GRAM | 0 |
| 168 | 43221 | Geyer's willow/water sedge | SAGE2/CAAQ | 0 |
| 169 | 43226 | Geyer's willow/tufted hairgrass | SAGE2/DECA18 | 0 |
| 170 | 43244 | narrowleaf willow/mesic graminoid | SAEX/2GRAM | 0 |
| 171 | 43245 | narrowleaf willow (barren) | SAEX | 0 |
| 172 | 43281 | Bebb willow/mesic graminoid | SABE2/2GRAM | 0 |
| 173 | 43286 | arroyo willow (barren) | SALA6 | 0 |
| 174 | 43322 | diamondleaf willow/water sedge | SAPL2/CAAQ | 0 |
| 175 | 43323 | diamondleaf willow/bluejoint | SAPL2/CACA4 | 0 |
| 176 | 43324 | diamondleaf willow/tufted hairgrass | SAPL2/DECA18 | 0 |
| 177 | 43326 | grayleaf willow/tufted hairgrass | SAGL/DECA18 | 0 |
| 178 | 43601 | silver sagebrush/tufted hairgrass | ARCA13/DECA18 | 0 |
| 179 | 43603 | silver sagebrush/sheep fescue | ARCA13/FEOV | 0 |
| 180 | 43802 | Buxbaum's sedge | CABU6 | 0 |
| 181 | 43804 | woollyfruit sedge | CALA11 | 0 |
| 182 | 43806 | mud sedge | CALI7 | 0 |
| 183 | 43810 | russet sedge | CAPH8 | 0 |
| 184 | 43851 | bluejoint | CACA4 | 0 |
| 185 | 43861 | timber oatgrass | DAIN | 0 |
| 186 | 43901 | white marsh marigold | CALE4 | 0 |
| 187 | 43925 | broadleaf cattail type | TYLA | 0 |
| 188 | 46001 | little sagebrush/bluebunch wheatgrass | ARAR8/PSSPS | 0 |
| 189 | 46002 | little sagebrush/Idaho fescue | ARAR8/FEID | 0 |
| 190 | 46003 | little sagebrush/Sandberg bluegrass | ARAR8/POSE | 0 |
| 191 | 46011 | silver sagebrush/mat muhly | ARCAB3/MURI | 0 |
| 192 | 46021 | silver sagebrush/Idaho fescue | ARCAV2/FEID | 0 |
| 193 | 46031 | little sagebrush/Idaho fescue | ARARL/FEID | 0 |
| 194 | 46041 | black sagebrush/bluebunch wheatgrass | ARNO4/PSSPS | 0 |
| 195 | 46042 | black sagebrush/Idaho fescue | ARNO4/FEID | 0 |
| 196 | 46043 | black sagebrush/needle and thread | ARNO4/HECOC8 | 0 |
| 197 | 46051 | scabland sagebrush/Sandberg bluegrass | ARRI2/POSE | 0 |
| 198 | 46061 | little sagebrush/Idaho fescue | ARART/FEID | 0 |
| 199 | 46101 | big sagebrush/mountain brome (subalpine) | ARTRS2/BRCA5 | 0 |
| 200 | 46111 | big sagebrush/bluebunch wheatgrass | ARTR2/PSSPS | 0 |
| 201 | 46112 | big sagebrush/basin wildrye | ARTR2/LECI4 | 0 |
| 202 | 46113 | big sagebrush/Idaho fescue | ARTR2/FEID | 0 |
| 203 | 46114 | big sagebrush/needle and thread grass | ARTR2/HECOC8 | 0 |
| 204 | 46131 | threetip sagebrush/bluebunch wheatgrass | ARTR4/PSSPS | 0 |
| 205 | 46132 | threetip sagebrush/Idaho fescue | ARTR4/FEID | 0 |
| 206 | 46133 | threetip sagebrush/needle and thread | ARTR4/HECOC8 | 0 |
| 207 | 46151 | mountain big sagebrush/bluebunch wheatgrass | ARTRV/PSSPS | 0 |
| 208 | 46152 | mountain big sagebrush/basin wildrye | ARTRV/LECI4 | 0 |
| 209 | 46153 | mountain big sagebrush/Idaho fescue | ARTRV/FEID | 0 |
| 210 | 46154 | mountain big sagebrush/needle and thread | ARTRV/HECOC8 | 0 |
| 211 | 46155 | mountain big sagebrush/Thurber's needlegrass | ARTRV/ACTH7 | 0 |
| 212 | 46156 | big sagebrush/Geyer's sedge | ARTRS2/CAGE2 | 0 |
| 213 | 46157 | mountain big sagebrush/mountain snowberry/bluebunch wheatgrass | ARTRV/SYOR2/PSSPS | 0 |
| 214 | 46158 | mountain big sagebrush/mountain snowberry/Idaho fescue | ARTRV/SYOR2/FEID | 0 |
| 215 | 46159 | mountain big sagebrush/mountain snowberry/Geyer's sedge | ARTRV/SYOR2/CAGE2 | 0 |
| 216 | 46171 | Wyoming big sagebrush/bluebunch wheatgrass | ARTRW8/PSSPS | 0 |
| 217 | 46172 | Wyoming big sagebrush/Sandberg bluegrass | ARTRW8/POSE | 0 |
| 218 | 46173 | Wyoming big sagebrush/squirreltail | ARTRW8/ELELE | 0 |
| 219 | 46174 | Wyoming big sagebrush/Thurber's needlegrass | ARTRW8/ACTH7 | 0 |
| 220 | 46191 | big sagebrush/bluebunch wheatgrass | ARTRX/PSSPS | 0 |
| 221 | 46192 | big sagebrush/Idaho fescue | ARTRX/FEID | 0 |
| 222 | 46201 | antelope bitterbrush/bluebunch wheatgrass | PUTR2/PSSPS | 0 |
| 223 | 46301 | curl-leaf mountain mahogany/bluebunch wheatgrass | CELE3/PSSPS | 0 |
| 224 | 47001 | Idaho fescue-bluebunch wheatgrass | FEID-PSSPS | 0 |
| 225 | 47011 | bluebunch wheatgrass-Sandberg bluegrass | PSSPS-POSE | 0 |
| 226 | 47012 | bluebunch wheatgrass-Idaho fescue | PSSPS-FEID | 0 |
| 227 | 47021 | sand dropseed-Sandberg bluegrass | SPCR-POSE | 0 |
| 228 | 47025 | Fendler threeawn-Sandberg bluegrass | ARPUL-POSE | 0 |
| 229 | 47002 | Idaho fescue/prairie Junegrass | FEID/KOMA | 0 |
| 230 | 47003 |  |  | 0 |
| 231 | 47004 |  |  | 0 |
| 232 | 43001 | conifer/redosier dogwood | 2TE/COSE16 | 0 |
| 233 | 43010 | conifer/Kentucky bluegrass | 2TE/POPR | 0 |
| 234 | 43043 | narrowleaf cottonwood/redosier dogwood | POAN3/COSES | 0 |
| 235 | 43046 | narrowleaf cottonwoon/Kentucky bluegrass | POAN3/POPR | 0 |
| 236 | 43101 | gray alder/redosier dogwood | ALIN2/COSE16 | 0 |
| 237 | 43103 | gray alder/mesic forb | ALIN2/2FORB | 0 |
| 238 | 43104 | gray alder/mesic graminoid | ALIN2/2GRAM | 0 |
| 239 | 43151 | water birch/redosier dogwood | BEOC2/COSE16 | 0 |
| 240 | 43152 | water birch/mesic forb | BEOC2/2FORB | 0 |
| 241 | 43155 | water birch/Kentucky bluegrass | BEOC2/POPR | 0 |
| 242 | 43203 | Booth's willow/Nebraska sedge | SABO2/CANE2 | 0 |
| 243 | 43204 | Booth's willow/bluejoint | SABO2/CACA4 | 0 |
| 244 | 43205 | Booth's willow/field horsetail | SABO2/EQAR | 0 |
| 245 | 43206 | Booth's willow/fowl bluegrass | SABO2/POPA2 | 0 |
| 246 | 43207 | Booth's willow/Kentucky bluegrass | SABO2/POPR | 0 |
| 247 | 43222 | Geyer's willow/beaked sedge | SAGE2/CARO6 | 0 |
| 248 | 43223 | Geyer's willow/bluejoint | SAGE2/CACA4 | 0 |
| 249 | 43224 | Geyer's willow/fowl bluegrass | SAGE2/POPA2 | 0 |
| 250 | 43228 | Geyer's willow/mesic graminoid | SAGE2/2GRAM | 0 |
| 251 | 43242 | narrowleaf willow/Kentucky bluegrass | SAEX/POPR | 0 |
| 252 | 43243 | narrowleaf willow/mesic forb | SAEX/2FORB | 0 |
| 253 | 43301 | Wolf's willow/field horsetail | SAWO/EQAR | 0 |
| 254 | 43302 | Wolf's willow/beaked sedge | SAWO/CARO6 | 0 |
| 255 | 43306 | Wolf's willow/tufted hairgrass | SAWO/DECA18 | 0 |
| 256 | 43308 | Wolf's willow/mesic forb | SAWO/2FORB | 0 |
| 257 | 43353 | redosier dogwood/common cowparsnip | COSES/HEMA80 | 0 |
| 258 | 43551 | shrubby cinquefoil/tufted hairgrass | DAFL3/DECA18 | 0 |
| 259 | 43553 | shrubby cinquefoil/Kentucky bluegrass | DAFL3/POPR | 0 |
| 260 | 43604 | silver sagebrush/Kentucky bluegrass | ARCA13/POPR | 0 |
| 261 | 43801 | water sedge | CAAQ | 0 |
| 262 | 43805 | woolly sedge | CAPE42 | 0 |
| 263 | 43807 | smallwing sedge | CAMI7 | 0 |
| 264 | 43808 | Nebraska sedge | CANE2 | 0 |
| 265 | 43809 | beaked sedge | CARO6 | 0 |
| 266 | 43812 | analogue sedge | CASI2 | 0 |
| 267 | 43821 | common spikerush | ELPA3 | 0 |
| 268 | 43822 | fewflower spikerush | ELQU2 | 0 |
| 269 | 43831 | Baltic rush | JUBA | 0 |
| 270 | 43871 | tufted hairgrass | DECA18 | 0 |
| 271 | 43882 | Kentucky bluegrass | POPR | 0 |
| 272 | 43921 | tall fringed bluebells | MECI3 | 0 |
| 273 | 43931 | California false hellebore | VECA2 | 0 |
| 274 | 41050 | limber pine/Idaho fescue | PIFL2/FEID | 1 |
| 275 | 41060 | limber pine/curl-leaf mountain mahogany | PIFL2/CELE3 | 1 |
| 276 | 41070 | limber pine/common juniper | PIFL2/JUCO6 | 1 |
| 277 | 41080 | limber pine/spike fescue | PIFL2/LEKI2 | 1 |
| 278 | 41140 | ponderosa pine/Idaho fescue | PIPO/FEID | 1 |
| 279 | 41160 | ponderosa pine/antelope bitterbrush | PIPO/PUTR2 | 1 |
| 280 | 41195 | ponderosa pine/mountain snowberry | PIPO/SYOR2 | 2 |
| 281 | 41220 | Douglas-fir/Idaho fescue | PSME/FEID | 3 |
| 282 | 41221 | Douglas-fir/Idaho fescue-Idaho fescue | PSME/FEID-FEID | 3 |
| 283 | 41260 | Douglas-fir/mallow ninebark | PSME/PHMA5 | 4 |
| 284 | 41265 | Douglas-fir/mallow ninebark/Douglas-fir | PSME/PHMA5/PSME | 4 |
| 285 | 41266 | Douglas-fir/mallow ninebark-Oregon boxleaf | PSME/PHMA5-PAMY | 4 |
| 286 | 41280 | Douglas-fir/thinleaf huckleberry | PSME/VAME | 3 |
| 287 | 41310 | Douglas-fir/common snowberry | PSME/SYAL | 0 |
| 288 | 41313 | Douglas-fir/common snowberry-common snowberry | PSME/SYAL-SYAL | 0 |
| 289 | 41320 | Douglas-fir/pinegrass | PSME/CARU | 0 |
| 290 | 41323 | Douglas-fir/pinegrass-pinegrass | PSME/CARU-CARU | 0 |
| 291 | 41340 | Douglas-fir/white spirea | PSME/SPBE2 | 4 |
| 292 | 41341 | Douglas-fir/white spirea-white spirea | PSME/SPBE2-SPBE2 | 4 |
| 293 | 41343 | Douglas-fir/white spirea/pinegrass | PSME/SPBE2/CARU | 4 |
| 294 | 41360 | Douglas-fir/common juniper | PSME/JUCO6 | 0 |
| 295 | 41370 | Douglas-fir/heartleaf arnica | PSME/ARCO9 | 0 |
| 296 | 41371 | Douglas-fir/heartleaf arnica-heartleaf arnica | PSME/ARCO9-ARCO9 | 0 |
| 297 | 41372 | Douglas-fir/heartleaf arnica/timber milkvetch | PSME/ARCO9/ASMI9 | 0 |
| 298 | 41375 | Douglas-fir/sweetcicely | PSME/OSBE | 0 |
| 299 | 41380 | Douglas-fir/mountain snowberry | PSME/SYOR2 | 0 |
| 300 | 41385 | Douglas-fir/curl-leaf mountain mahogany | PSME/CELE3 | 0 |
| 301 | 41390 | Douglas-fir/Rocky Mountain maple | PSME/ACGL | 0 |
| 302 | 41395 | Douglas-fir/creeping barberry | PSME/MARE11 | 0 |
| 303 | 41396 | Douglas-fir/creeping barberry-creeping barberry | PSME/MARE11-MARE11 | 0 |
| 304 | 41397 | Douglas-fir/creeping barberry-mountain snowberry | PSME/MARE11-SYOR2 | 0 |
| 305 | 41398 | Douglas-fir/creeping barberry/Geyer's sedge | PSME/MARE11/CAGE2 | 0 |
| 306 | 41399 | Douglas-fir/creeping barberry/common juniper | PSME/MARE11/JUCO6 | 0 |
| 307 | 41407 | blue spruce/creeping barberry | PIPU/MARE11 | 0 |
| 308 | 41410 | Engelmann spruce/field horsetail | PIEN/EQAR | 0 |
| 309 | 41415 | Engelmann spruce/white marsh marigold | PIEN/CALE4 | 0 |
| 310 | 41440 | Engelmann spruce/fragrant bedstraw | PIEN/GATR3 | 0 |
| 311 | 41485 | Engelmann spruce/grouse whortleberry | PIEN/VASC | 0 |
| 312 | 41490 | Engelmann spruce/softleaf sedge | PIEN/CADI6 | 0 |
| 313 | 41493 | Engelmann spruce/revolute hypnum moss | PIEN/HYRE70 | 5 |
| 314 | 41497 | Engelmann spruce/gooseberry current | PIEN/RIMO2 | 0 |
| 315 | 41601 | subalpine fir/red baneberry | ABLA/ACRU2 | 0 |
| 316 | 41603 | subalpine fir/mallow ninebark | ABLA/PHMA5 | 0 |
| 317 | 41635 | subalpine fir/claspleaf twistedstalk | ABLA/STAM2 | 0 |
| 318 | 41636 | subalpine fir/claspleaf twistedstalk-claspleaf twistedstalk phase | ABLA/STAM2-STAM2 | 0 |
| 319 | 41640 | subalpine fir/dwarf bilberry | ABLA/VACA13 | 0 |
| 320 | 41645 | subalpine fir/Rocky Mountain maple | ABLA/ACGL | 0 |
| 321 | 41650 | subalpine fir/bluejoint | ABLA/CACA4 | 0 |
| 322 | 41651 | subalpine fir/bluejoint-bluejoint | ABLA/CACA4-CACA4 | 0 |
| 323 | 41654 | subalpine fir/bluejoint/dwarf bilberry | ABLA/CACA4/VACA13 | 0 |
| 324 | 41655 | subalpine fir/bluejoint/western Labrador tea | ABLA/CACA4/LEGL | 0 |
| 325 | 41660 | subalpine fir/twinflower | ABLA/LIBO3 | 0 |
| 326 | 41661 | subalpine fir/twinflower-twinflower | ABLA/LIBO3-LIBO3 | 0 |
| 327 | 41663 | subalpine fir/twinflower/grouse whortleberry | ABLA/LIBO3/VASC | 0 |
| 328 | 41670 | subalpine fir/rusty menziesia | ABLA/MEFE | 0 |
| 329 | 41671 | subalpine fir/rusty menziesia-rusty menziesia | ABLA/MEFE-MEFE | 0 |
| 330 | 41690 | subalpine fir/common beargrass | ABLA/XETE | 0 |
| 331 | 41691 | subalpine fir/common beargrass/thinleaf huckleberry | ABLA/XETE/VAME | 0 |
| 332 | 41692 | subalpine fir/common beargrass/grouse whortleberry | ABLA/XETE/VASC | 0 |
| 333 | 41702 | subalpine fir/creeping barberry-creeping barberry | ABLA/MARE11-MARE11 | 0 |
| 334 | 41703 | subalpine fir/creeping barberry | ABLA/MARE11 | 0 |
| 335 | 41705 | subalpine fir/white spirea | ABLA/SPBE2 | 0 |
| 336 | 41706 | subalpine fir/creeping barberry/Engelmann spruce | ABLA/MARE11/PIEN | 0 |
| 337 | 41707 | subalpine fir/sicletop lousewort | ABLA/PERA | 0 |
| 338 | 41714 | subalpine fir/creeping barberry/limber pine | ABLA/MARE11/PIFL2 | 0 |
| 339 | 41720 | subalpine fir/thinleaf huckleberry | ABLA/VAME | 0 |
| 340 | 41721 | subalpine fir/thinleaf huckleberry/grouse whortleberry | ABLA/VAME/VASC | 0 |
| 341 | 41723 | subalpine fir/thinleaf huckleberry-thinleaf huckleberry | ABLA/VAME-VAME | 0 |
| 342 | 41730 | subalpine fir/grouse whortleberry | ABLA/VASC | 0 |
| 343 | 41731 | subalpine fir/grouse whortleberry/pinegrass | ABLA/VASC/CARU | 0 |
| 344 | 41732 | subalpine fir/grouse whortleberry-grouse whortleberry | ABLA/VASC-VASC | 0 |
| 345 | 41734 | subalpine fir/grouse whortleberry/whitebark pine | ABLA/VASC/PIAL | 0 |
| 346 | 41745 | subalpine fir/common juniper | ABLA/JUCO6 | 0 |
| 347 | 41750 | subalpine fir/pinegrass | ABLA/CARU | 0 |
| 348 | 41760 | subalpine fir/sweetcicely | ABLA/OSBE | 0 |
| 349 | 41780 | subalpine fir/heartleaf arnica | ABLA/ARCO9 | 0 |
| 350 | 41790 | subalpine fir/Geyer's sedge | ABLA/CAGE2 | 0 |
| 351 | 41791 | subalpine fir/Geyer's sedge-Geyer'ssedge | ABLA/CAGE2-CAGE2 | 0 |
| 352 | 41795 | subalpine fir/Ross' sedge | ABLA/CARO5 | 0 |
| 353 | 41810 | subalpine fir/gooseberry currant | ABLA/RIMO2 | 0 |
| 354 | 41811 | subalpine fir/gooseberry currant-gooseberry currant | ABLA/RIMO2-RIMO2 | 0 |
| 355 | 41830 | subalpine fir/Hitchcock's smooth woodrush | ABLA/LUGLH | 0 |
| 356 | 41831 | subalpine fir/Hitchcock's smooth woodrush/grouse whortleberry | ABLA/LUGLH/VASC | 0 |
| 357 | 41861 | white fir/mallow ninebark | ABCO/PHMA5 | 0 |
| 358 | 41863 | white fir/creeping barberry | ABCO/MARE11 | 0 |
| 359 | 41865 | white fir/creeping barberry-creeping barberry | ABCO/MARE11-MARE11 | 0 |
| 360 | 41920 | lodgepole pine/dwarf bilberry | PICO/VACA13 | 0 |
| 361 | 41940 | lodgepole pine/grouse whortleberry | PICO/VASC | 0 |
| 362 | 41955 | lodgepole pine/Geyer's sedge | PICO/CAGE2 | 0 |
| 363 | 41960 | lodgepole pine/common juniper | PICO/JUCO6 | 0 |

The U.S. Department of Agriculture (USDA) prohibits discrimination in all its programs and activities on the basis of race, color, national origin, sex, religion, age, disability, political beliefs, sexual orientation, or marital or family status. (Not all prohibited bases apply to all programs.) Persons with disabilities who require alternative means for communication of program information (Braille, large print, audiotape, etc.) should contact USDA’s TARGET Center at (202) 720-2600 (voice and TDD).

To file a complaint of discrimination, write USDA, Director, Office of Civil Rights, Room 326-W, Whitten Building, 1400 Independence Avenue, SW, Washington, DC 20250-9410 or call (202) 720-5964 (voice or TDD). USDA is an equal opportunity provider and employer.