Utah (UT) Variant Overview of the Forest Vegetation Simulator

March 2026

![Picture of Aspen-mixed conifer stand on the Manti-Lasal National Forest.](data:image/jpeg;base64...)

![Forest%20Service%20Color](data:image/jpeg;base64...)Aspen-Mixed Conifer Stand, Manti-LaSal National Forest

(Diane Cote, FS-R4)

Utah (UT) Variant Overview of the Forest Vegetation Simulator

# Authors and Contributors:

The FVS staff has maintained model documentation for this variant in the form of a variant overview since its release in 1983. The original author was Gary Dixon. In 2008, the previous document was replaced with this updated variant overview. Gary Dixon, Christopher Dixon, Robert Havis, Chad Keyser, Stephanie Rebain, Erin Smith-Mateja, and Don Vandendriesche were involved with this update. Don Vandendriesche cross-checked information contained in this variant overview with the FVS source code. In 2010, Gary Dixon expanded the species list and made significant updates to this variant overview.

FVS Staff. 2008 (revised March 9, 2026). Utah (UT) Variant Overview – Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 57p.

Table of Contents

[Authors and Contributors: ii](#_Toc223523920)

[1.0 Introduction 1](#_Toc223523921)

[2.0 Geographic Range 2](#_Toc223523922)

[3.0 Control Variables 3](#_Toc223523923)

[3.1 Location Codes 3](#_Toc223523924)

[3.2 Species Codes 4](#_Toc223523925)

[3.3 Habitat Type, Plant Association, and Ecological Unit Codes 5](#_Toc223523926)

[3.4 Site Index 5](#_Toc223523927)

[3.5 Maximum Density 7](#_Toc223523928)

[4.0 Growth Relationships 9](#_Toc223523929)

[4.1 Height-Diameter Relationships 9](#_Toc223523930)

[4.2 Bark Ratio Relationships 10](#_Toc223523931)

[4.3 Crown Ratio Relationships 11](#_Toc223523932)

[4.3.1 Crown Ratio Dubbing 11](#_Toc223523933)

[4.3.2 Crown Ratio Change 14](#_Toc223523934)

[4.3.3 Crown Ratio for Newly Established Trees 14](#_Toc223523935)

[4.4 Crown Width Relationships 15](#_Toc223523936)

[4.5 Crown Competition Factor 17](#_Toc223523937)

[4.6 Small Tree Growth Relationships 19](#_Toc223523938)

[4.6.1 Small Tree Height Growth 19](#_Toc223523939)

[4.6.2 Small Tree Diameter Growth 22](#_Toc223523940)

[4.7 Large Tree Growth Relationships 23](#_Toc223523941)

[4.7.1 Large Tree Diameter Growth 23](#_Toc223523942)

[4.7.2 Large Tree Height Growth 26](#_Toc223523943)

[5.0 Mortality Model 33](#_Toc223523944)

[6.0 Regeneration 36](#_Toc223523945)

[7.0 Volume 39](#_Toc223523946)

[8.0 Fire and Fuels Extension (FFE-FVS) 41](#_Toc223523947)

[9.0 Insect and Disease Extensions 42](#_Toc223523948)

[10.0 Literature Cited 43](#_Toc223523949)

[11.0 Appendices 46](#_Toc223523950)

[11.1 Appendix A: Habitat Type Codes 46](#_Toc223523951)

Quick Guide to Default Settings

|  |  |  |
| --- | --- | --- |
| **Parameter or Attribute** | **Default Setting** | |
| Number of Projection Cycles | 1 (10 if using FVS GUI) | |
| Projection Cycle Length | 10 years | |
| Location Code (National Forest) | 408 – Fish Lake National Forest | |
| Plant Association Code | 0 (unknown) | |
| Slope | 5 percent | |
| Aspect | 0 (no meaningful aspect) | |
| Elevation | 83 (8300 feet) | |
| Latitude / Longitude | Latitude | Longitude |
| All location codes | 40 | 112 |
| Site Species | LP | |
| Site Index | 46 | |
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

The Utah (UT) variant was developed in 1983. It covers all the forested areas in Utah, the part of the Wasatch National Forest extending into southern Wyoming, and the small piece of the Manti-La Sal National Forest extending into west-central Colorado.

Since the variant’s development in 1983, many of the functions have been adjusted and improved as more data has become available and as model technology has advanced. This variant was expanded in 2000 from its original 10 species to 14 species with the addition of blue spruce, pinyon pine, western juniper, and a general oak species group. Equations for Engelmann spruce were used for blue spruce, and equations from the Central Rockies variant were used for pinyon pine, western juniper, and oak. In 2010 this variant was expanded from 14 species to 24 species. The general oak species group was eliminated and replaced with Gambel oak using the general oak growth equations; pinyon pine was changed to common pinyon and singleleaf pinyon was added using the common pinyon growth equations; Rocky Mountain juniper and Utah juniper were added and use the western juniper equations; Great Basin bristlecone pine was added and uses bristlecone pine equations from the Central Rockies (CR) variant; narrowleaf cottonwood, Fremont cottonwood, and box elder were added and use cottonwood equations from the CR variant; curl-leaf mountain mahogany was added using equations from the South Central Oregon / Northeastern California (SO) and Utah variants; bigtooth maple was added using bigleaf maple equations from the SO variant and other equations from the Utah variant; and the grouping for all other species was eliminated and replaced with groupings for other softwood using the equations for the previous other species grouping, and other hardwood using equations for Gambel oak.

To fully understand how to use this variant, users should also consult the following publication:

* Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002)

This publication may be downloaded from the Forest Management Service Center (FMSC), Forest Service website. Other FVS publications may be needed if one is using an extension that simulates the effects of fire, insects, or diseases.

# 2.0 Geographic Range

The UT variant covers all the forested areas in Utah, the part of the Wasatch National Forest extending into southern Wyoming, and the small piece of the Manti-La Sal National Forest extending into west-central Colorado. The suggested geographic range of use for the UT variant is shown in figure 2.0.1. The UT variant was not fit to forest types in Nevada, but it is currently the best available variant for that area.

![Picture of the suggested geographic range of the Utah variant of FVS.](data:image/jpeg;base64...)

**Figure 2.0.1 Suggested geographic range of use for the UT variant.**

# 3.0 Control Variables

FVS users need to specify certain variables used by the UT variant to control a simulation. These are entered in parameter fields on various FVS keywords available in the FVS interface or they are read from an FVS input database using the Database Extension.

## 3.1 Location Codes

The location code is a 3- or 4-digit code where, in general, the first digit of the code represents the Forest Service Region Number, and the last two digits represent the Forest Number within that region. In some cases, a location code beginning with a “7” or “8” is used to indicate an administrative boundary that doesn’t use a Forest Service Region number (for example, other federal agencies, state agencies, or other lands).

If the location code is missing or incorrect in the UT variant, a default forest code of 408 (Fishlake National Forest) will be used. Location codes recognized in the UT variant are shown in tables 3.1.1 and 3.1.2.

**Table 3.1.1 Location codes used in the UT variant.**

|  |  |
| --- | --- |
| **Location Code** | **Location** |
| 401 | Ashley National Forest |
| 407 | Dixie National Forest |
| 408 | Fishlake National Forest |
| 410 | Manti-LaSal National Forest |
| 418 | Uinta National Forest |
| 419 | Wasatch National Forest |
| 404 | Cache National Forest (mapped to 419) |
| 409 | Humboldt National Forest (mapped to 408) |
| 417 | Toiyabe National Forest (mapped to 408) |

**Table 3.1.2 Bureau of Indian Affairs reservation codes used in the UT variant.**

| **Location Code** | **Location** |
| --- | --- |
| 7702 | Fort Mojave Reservation (mapped to 417) |
| 7711 | Fort Mcdermitt Indian Reservation (mapped to 409) |
| 7712 | Pyramid Lake Paiute Reservation (mapped to 409) |
| 7714 | Summit Lake Reservation (mapped to 409) |
| 7715 | Walker River Reservation (mapped to 417) |
| 7716 | Yomba Reservation (mapped to 417) |
| 7717 | Skull Valley Reservation (mapped to 419) |
| 7718 | Uintah And Ouray Reservation (mapped to 401) |
| 7721 | Duck Valley Reservation (mapped to 409) |
| 7722 | South Fork Reservation (mapped to 409) |
| 7723 | Goshute Reservation (mapped to 409) |
| 7728 | Kaibab Indian Reservation (mapped to 407) |
| 7729 | Paiute, (Ut Reservation) (mapped to 407) |
| 7835 | Timbi-Sha Shoshone Reservation (mapped to 417) |
| 7920 | Ute Mountain Reservation (mapped to 410) |
| 8001 | Navajo Nation Reservation (mapped to 410) |

## 3.2 Species Codes

The UT variant recognizes 22 species, plus two other composite species categories. You may use FVS species codes, Forest Inventory and Analysis (FIA) species codes, or USDA Natural Resources Conservation Service PLANTS symbols to represent these species in FVS input data. Any valid western species code identifying species not recognized by the variant will be mapped to a similar species in the variant. The species mapping crosswalk is available on the FVS website variant documentation webpage. Any non-valid species code will default to the “other hardwood” category.

Either the FVS sequence number or species code must be used to specify a species in FVS keywords and Event Monitor functions. FIA codes or PLANTS symbols are only recognized during data input and may not be used in FVS keywords. Table 3.2.1 shows the complete list of species codes recognized by the UT variant.

When entering tree data, users should substitute diameter at root collar (DRC) for diameter at breast height (DBH) for woodland species (pinyons, junipers, and oaks).

**Table 3.2.1 Species codes used in the UT variant.**

| **Species Number** | **Species Code** | **FIA Code** | **PLANTS Symbol** | **Scientific Name1** | **Common Name1** |
| --- | --- | --- | --- | --- | --- |
| 1 | WB | 101 | PIAL | *Pinus albicaulis* | whitebark pine |
| 2 | LM | 113 | PIFL2 | *Pinus flexilis* | limber pine |
| 3 | DF | 202 | PSME | *Pseudotsuga menziesii* | Douglas-fir |
| 4 | WF | 015 | ABCO | *Abies concolor* | white fir |
| 5 | BS | 096 | PIPU | *Picea pungens* | blue spruce |
| 6 | AS | 746 | POTR5 | *Populus tremuloides* | quaking aspen |
| 7 | LP | 108 | PICO | *Pinus contorta* | lodgepole pine |
| 8 | ES | 093 | PIEN | *Picea engelmannii* | Engelmann spruce |
| 9 | AF | 019 | ABLA | *Abies lasiocarpa* | subalpine fir |
| 10 | PP | 122 | PIPO | *Pinus ponderosa* | ponderosa pine |
| 11 | PI | 106 | PIED | *Pinus edulis* | common pinyon |
| 12 | WJ | 064 | JUOC | *Juniperus occidentalis* | western juniper |
| 13 | GO | 814 | QUGA | *Quercus gambelii* | Gambel oak |
| 14 | PM | 133 | PIMO | *Pinus monophylla* | singleleaf pinyon |
| 15 | RM | 066 | JUSC2 | *Juniperus scopulorum* | Rocky Mountain juniper |
| 16 | UJ | 065 | JUOS | *Juniperus osteosperma* | Utah juniper |
| 17 | GB | 142 | PILO | *Pinus longaeva* | Great Basin bristlecone pine |
| 18 | NC | 749 | POAN3 | *Populus angustifolia* | narrowleaf cottonwood |
| 19 | FC | 748 | POFR2 | *Populus fremontii* | Fremont cottonwood |
| 20 | MC | 475 | CELE3 | *Cercocarpus ledifolius* | curl-leaf mountain mahogany |
| 21 | BI | 322 | ACGR3 | *Acer grandidentatum* | bigtooth maple |
| 22 | BE | 313 | ACNE2 | *Acer negundo* | boxelder |
| 23 | OS | 299 | 2TN |  | other softwood2 |
| 24 | OH | 998 | 2TB |  | other hardwood2 |

1Set based on the USDA Forest Service NRM TAXA lists and the USDA Plants database.

2Other categories use FIA codes and NRM TAXA codes that best match the other category.

## 3.3 Habitat Type, Plant Association, and Ecological Unit Codes

In the UT variant, habitat type codes are only used in the Fire and Fuels Extension (FFE) to set fuel loading in cases where there are no trees in the first cycle. Habitat type codes recognized in the UT variant are shown in Appendix A. If an incorrect habitat type code is entered or no code is entered, FVS will use the default habitat type code, which is 0 (unknown). Users may enter the habitat type code or the habitat type FVS sequence number on the STDINFO keyword, when entering stand information from a database, or when using the SETSITE keyword without the PARMS option. If using the PARMS option with the SETSITE keyword, users must use the FVS sequence number for the habitat type.

## 3.4 Site Index

Site index is used in the growth equations for the UT variant. When possible, users should enter their own values instead of relying on the default values assigned by FVS. If site index information is available, a single site index can be specified for the whole stand, a site index for each individual species can be specified, or a combination of these can be entered. If the user does not supply site index values, then default values will be used. When entering site index in the UT variant, the sources shown in table 3.4.1 should be used if possible. The default site species is LP with a site index of 46.

When site index is not specified for a species, a relative site index value is calculated from the site index of the site species using equations {3.4.1} and {3.4.2}. Minimum and Maximum site indices used in equation {3.4.1} may be found in table 3.4.2. If the site index for the stand is less than or equal to the lower site limit, it is set to the lower limit + 0.5 for the calculation of *RELSI*. Similarly, if the site index for the stand is greater than the upper site limit, it is set to the upper site limit for the calculation of *RELSI*.

{3.4.1} *RELSI* = (*SIsite* – *SITELOsite*) / (*SITEHIsite* – *SITELOsite*)

{3.4.2} *SIi* = *SITELOi* +(*RELSI*\*(*SITEHIi* – *SITELOi*))

where:

*RELSI* is the relative site index of the site species

*SI* is species site index

*SITELO* is the lower bound of the *SI* range for a species

*SITEHI* is the upper bound of the *SI* range for a species

*site* is the site species

*i* is the species for which site index is to be calculated

**Table 3.4.1 Site index reference curves for species in the UT variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **Reference** | **BHA or TTA\*** | **Base Age** |
| DF | Brickell (1970) Research Paper INT-75 | TTA | 50 |
| AS | Edminster, Mowrer, and Shepperd (1985) Research Note RM-453 | BHA | 80 |
| LP, WB, LM, OS | Alexander, Tackle, and Dahms (1967) Research Paper RM-29 | TTA | 100\*\* |
| ES, BS, WF, AF | Alexander (1967) Research Paper RM-32 | BHA | 100\*\* |
| PP | Meyer (1961.rev) Tech. Bulletin 630 | TTA | 100\*\* |
| PI, WJ, GO, PM, RM, UJ, OH | Any 100-year base age curve | TTA | 100 |
| GB, NC, FC, BE | Alexander (1967) Research Paper RM-32 | BHA | 100 |
| MC, BI | Curtis, R. O., et. al. (1974) Forest Science | BHA | 100 |

**\***Site index equation based on total tree age (TTA) or breast height age (BHA)

\*\*Site index for these species will be converted to a 50-year age basis within FVS since growth equations for these species were fit with a 50-year age based site index

**Table 3.4.1 *SITELO* and *SITEHI* values for equation {3.4.1} in the UT variant.**

| **Species Code** | ***SITELO*** | ***SITEHI*** |
| --- | --- | --- |
| WB | 20 | 50 |
| LM | 20 | 50 |
| DF | 30 | 70 |
| WF | 40 | 80 |
| BS | 40 | 90 |
| AS | 30 | 70 |
| LP | 40 | 85 |
| ES | 40 | 100 |
| AF | 50 | 90 |
| PP | 40 | 80 |
| PI | 5 | 20 |
| WJ | 5 | 15 |
| GO | 5 | 20 |
| PM | 5 | 20 |
| RM | 5 | 15 |
| UJ | 5 | 15 |
| GB | 20 | 60 |
| NC | 30 | 120 |
| FC | 30 | 90 |
| MC | 5 | 15 |
| BI | 5 | 30 |
| BE | 15 | 40 |
| OS | 20 | 50 |
| OH | 5 | 20 |

## 3.5 Maximum Density

Maximum stand density index (SDI) and maximum basal area (BA) are important variables in determining density related mortality and crown ratio change. Maximum basal area is a stand level metric that can be set using the BAMAX or SETSITE keywords. If not set by the user, a default value is calculated from maximum stand SDI each projection cycle. Maximum stand density index can be set for each species using the SDIMAX or SETSITE keywords. If not set by the user, a default value is assigned as discussed below.

The default maximum SDI is set by species or a user specified basal area maximum. If a user specified basal area maximum is present, the maximum SDI for all species is computed using equation {3.5.1}; otherwise, species SDI maximums are assigned from the SDI maximums shown in table 3.5.1. Maximum stand density index at the stand level is a weighted average, by basal area, of the individual species SDI maximums.

Stand SDI is calculated using the Zeide calculation method (Dixon 2002).

{3.5.1} *SDIMAXi =* *BAMAX* / (0.5454154 \* *SDIU)*

where:

*SDIMAXi* is species-specific SDI maximum

*BAMAX* is the user-specified stand basal area maximum

*SDIU* is theproportion of theoretical maximum density at which the stand reaches actual maximum density (default 0.85, changed with the SDIMAX keyword)

**Table 3.5.1 Stand density index maximums by species in the UT variant.**

| **Species Code** | **SDI Maximum\*** | **Mapped to** |
| --- | --- | --- |
| WB | 621 |  |
| LM | 409 |  |
| DF | 570 |  |
| WF | 634 | Engelmann spruce |
| BS | 620 |  |
| AS | 562 |  |
| LP | 679 |  |
| ES | 620 |  |
| AF | 602 |  |
| PP | 446 |  |
| PI | 348 |  |
| WJ | 272 |  |
| GO | 652 |  |
| PM | 358 |  |
| RM | 411 |  |
| UJ | 497 | whitebark pine |
| GB | 621 | black cottonwood |
| NC | 452 | black cottonwood |
| FC | 452 |  |
| MC | 501 |  |
| BI | 619 |  |
| BE | 344 | limber pine |
| OS | 409 | Gamble oak |
| OH | 652 |  |

\*Source of SDI maximums is an unpublished analysis of FIA data by John Shaw.

# 4.0 Growth Relationships

This chapter describes the functional relationships used to fill in missing tree data and calculate incremental growth. In FVS, trees are grown in either the small tree sub-model or the large tree sub-model depending on the diameter.

## 4.1 Height-Diameter Relationships

Height-diameter relationships in FVS are primarily used to estimate tree heights missing in the input data and to estimate diameter growth on trees smaller than a given threshold diameter for some species. In the UT variant, height-diameter relationships for all species except curl-leaf mountain mahogany and bigtooth maple are a logistic functional form, as shown in equation {4.1.1} (Wykoff, et.al 1982). The equation was fit to data of the same species used to develop other FVS variants. Coefficients for equation {4.1.1} are shown are shown in table 4.1.1.

When heights are given in the input data for 3 or more trees of a given species, the value of B1 in equation {4.1.1} for that species is recalculated from the input data and replaces the default value shown in table 4.1.1. In the event that the calculated value is less than zero, the default is used. Automatic calibration of the logistic height-diameter relationship is turned on by default for all species except curl-leaf mountain mahogany and bigtooth maple. This feature can be turned off using the NOHTDREG keyword.

{4.1.1} HT = 4.5 + exp(B1 + B2 / (DBH + 1.0))

where:

*HT* is tree height

*DBH* is tree diameter at breast height

B1 - B2 are species-specific coefficients shown in table 4.1.1

**Table 4.1.1 Coefficients for the height-diameter relationship equation in the UT variant.**

| **Species Code** | **Default B1** | **B2** |
| --- | --- | --- |
| WB | 4.1920 | -5.1651 |
| LM | 4.1920 | -5.1651 |
| DF | 4.5879 | -8.9277 |
| WF | 4.3008 | -6.8139 |
| BS | 4.5293 | -7.7725 |
| AS | 4.4421 | -6.5405 |
| LP | 4.3767 | -6.1281 |
| ES | 4.5293 | -7.7725 |
| AF | 4.4717 | -6.7387 |
| PP | 4.6024 | -11.4693 |
| PI | 3.2000 | -5.0000 |
| WJ | 3.2000 | -5.0000 |
| GO | 3.2000 | -5.0000 |
| PM | 3.2000 | -5.0000 |
| RM | 3.2000 | -5.0000 |
| UJ | 3.2000 | -5.0000 |
| GB | 4.1920 | -5.1651 |
| NC | 4.4421 | -6.5405 |
| FC | 4.4421 | -6.5405 |
| MC | 5.1520 | -13.5760 |
| BI | 4.7000 | -6.3260 |
| BE | 4.4421 | -6.5405 |
| OS | 4.2597 | -9.3949 |
| OH | 3.2000 | -5.0000 |

The default height-diameter relationship for bigtooth maple and curl-leaf mountain mahogany uses the Curtis-Arney functional form as shown in equation {4.1.2} (Curtis 1967, Arney 1985). If the input data contains at least three measured heights for a species, then FVS can switch to a logistic height-diameter equation {4.1.1} for trees with a *DBH* of 5.0” or greater that is calibrated to the input data. If the logistic equation is being used then trees of these two species less than 5.0” DBH use equation 4.1.3. For bigtooth maple and curl-leaf mountain mahogany in the UT variant, this switch to using the logistic equations doesn’t happen by default, but can be turned on with the NOHTDREG keyword by entering “1” in field 2.

{4.1.2} Curtis-Arney functional form

DBH <u>></u> 3.0”: HT = 4.5 + P2 \* exp[-P3 \* DBH ^ P4]

DBH < 3.0”: HT = [(4.5 + P2 \* exp[-P3 \* 3.0 ^ P4] – 4.51) \* (DBH – 0.3) / 2.7] + 4.51

where:

curl-leaf mountain mahogany bigtooth maple

P2 = 1709.7229 P2 = 76.5170

P3 = 5.8887 P3 = 2.2107

P4 = -0.2286 P4 = -0.6365

{4.1.3} *DBH* < 5.0”: *HT* = 0.0994 + 4.9767 \* *DBH*

(note: 4.1.3 is used for trees with DBH < 5.0”, in conjuntion with 4.1.1 for trees with *DBH* <u>></u> 5.0”, when the logistic equations are being used for bigtooth maple or curl-leaf mountain mahogany.)

## 4.2 Bark Ratio Relationships

Bark ratio estimates are used to convert between diameter outside bark and diameter inside bark in various parts of the model. The equations are shown in {4.2.1} - {4.2.4} with equations number and coefficients (b1 and b2) by species shown in table 4.2.1.

{4.2.1} *BRATIO* = b1 + b2 \* (1/DBH) where 1.0 <u><</u> *DBH* <u><</u> 19.0

{4.2.2} *BRATIO* = b1

{4.2.3} *BRATIO* = b1 + b2 \*(1.0/*DBH*) where *DBH* <u>></u> 1.0

where:

*BRATIO* is species-specific bark ratio (bounded to 0.80 <u><</u> *BRATIO* <u><</u> 0.99)

*DBH* is tree diameter outside bark at breast height

*DIB* is tree diameter inside bark at breast height

b1 - b2 are species-specific coefficients shown in table 4.2.1

**Table 4.2.1 Coefficients for the bark ratio equation {4.2.1} in the UT variant.**

| **Species Code** | **b1** | **b2** | **Equation Number** |
| --- | --- | --- | --- |
| WB | 0.9625 | -0.1141 | {4.2.3} |
| LM | 0.9625 | -0.1141 | {4.2.3} |
| DF | 0.867 | 0. | {4.2.2} |
| WF | 0.890 | 0. | {4.2.2} |
| BS | 0.9502 | -0.2528 | {4.2.3} |
| AS | 0.950 | 0. | {4.2.2} |
| LP | 0.9625 | -0.1141 | {4.2.3} |
| ES | 0.9502 | -0.2528 | {4.2.3} |
| AF | 0.890 | 0. | {4.2.2} |
| PP | 0.8967 | -0.4448 | {4.2.3} |
| PI | 0.9002 | -0.3089 | {4.2.1} |
| WJ | 0.9002 | -0.3089 | {4.2.1} |
| GO | 0.93789 | -0.24096 | {4.2.3} |
| PM | 0.9002 | -0.3089 | {4.2.1} |
| RM | 0.9002 | -0.3089 | {4.2.1} |
| UJ | 0.9002 | -0.3089 | {4.2.1} |
| GB | 0.9625 | -0.1141 | {4.2.3} |
| NC | 0.892 | -0.086 | {4.2.3} |
| FC | 0.892 | -0.086 | {4.2.3} |
| MC | 0.9 | 0. | {4.2.2} |
| BI | 0.94782 | 0.0836 | {4.2.3} |
| BE | 0.892 | -0.086 | {4.2.3} |
| OS | 0.9625 | -0.1141 | {4.2.3} |
| OH | 0.93789 | -0.24096 | {4.2.3} |

## 4.3 Crown Ratio Relationships

Crown ratio equations are used for three purposes in FVS: (1) to estimate tree crown ratios missing from the input data for both live and dead trees; (2) to estimate change in crown ratio from cycle to cycle for live trees; and (3) to estimate initial crown ratios for regenerating trees established during a simulation.

### 4.3.1 Crown Ratio Dubbing

In the UT variant, crown ratios missing in the input data are predicted using different equations depending on tree species and size. For all species except Great Basin bristlecone pine, narrowleaf cottonwood, Fremont cottonwood, and boxelder, live trees less than 1.0” in diameter and dead trees of all sizes use equation {4.3.1.1} and one of the equations listed below,{4.3.1.2} or {4.3.1.3}, to compute crown ratio. Curlleaf mountain mahogany and bigtooth maple use crown ratio equation {4.3.1.3}, whereas all others not listed above use crown ratio equation {4.3.1.2}. Equation coefficients are found in table 4.3.1.1.

{4.3.1.1} *X* = R1 + R2 \* *DBH* + R3 \* *HT* + R4 \* *BA* + R5 \* *PCCF* + R6 \* *HTAvg / HT* + R7 \* *HTAvg* + R8 \* *BA* \* *PCCF* + R9 \* *MAI*

{4.3.1.2} *CR* = 1 / (1 + exp(*X*+ *N(0,SD)*) where absolute value of (*X*+ *N(0,SD)) <u><</u> 86*

{4.3.1.3} *CR* = ((*X* - 1) \* 10 + 1) / 100

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

**Table 4.3.1.1 Coefficients for the crown ratio equation {4.3.1.1} in the UT variant.**

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Coefficient** | **Species Code** | | | | | |
| **WB, LM** | **DF, WF, BS, ES, AF** | **AS** | **LP, GO, OH** | **PP** | **PI, WJ, PM, RM, UJ, OS** |
| R1 | -1.66949 | -0.426688 | -0.426688 | -1.66949 | -1.66949 | -2.19723 |
| R2 | -0.209765 | -0.093105 | -0.093105 | -0.209765 | -0.209765 | 0 |
| R3 | 0 | 0.022409 | 0.022409 | 0 | 0 | 0 |
| R4 | 0.003359 | 0.002633 | 0.002633 | 0.003359 | 0.003359 | 0 |
| R5 | 0.011032 | 0 | 0 | 0.011032 | 0.011032 | 0 |
| R6 | 0 | -0.045532 | -0.045532 | 0 | 0 | 0 |
| R7 | 0.017727 | 0 | 0 | 0.017727 | 0.017727 | 0 |
| R8 | -0.000053 | 0.000022 | 0.000022 | -0.000053 | -0.000053 | 0 |
| R9 | 0.014098 | -0.013115 | -0.013115 | 0.014098 | 0.014098 | 0 |
| SD | 0.5 | 0.6957 | 0.931 | 0.6124\* | 0.4942 | 0.2 |

\* 0.5 for GO and OH

For all species except common pinyon, western juniper, Gambel oak, singleleaf pinyon, Rocky Mountain juniper, Utah Juniper, Great Basin bristlecone pine, narrowleaf cottonwood, Fremont cottonwood, boxelder, and other hardwood, a Weibull-based crown model developed by Dixon (1985) as described in Dixon (2002) is used to predict crown ratio for all live trees 1.0” in diameter or larger. To estimate crown ratio using this methodology, the average stand crown ratio is estimated from stand density index using equation {4.3.1.4}. Weibull parameters are then estimated from the average stand crown ratio using equations in equation set {4.3.1.5}. Individual tree crown ratio is then set from the Weibull distribution, equation {4.3.1.6} based on a tree’s relative position in the diameter distribution and multiplied by a scale factor, shown in equation {4.3.1.7}, which accounts for stand density. Crowns estimated from the Weibull distribution are bounded to be between the 5 and 95 percentile points of the specified Weibull distribution. Equation coefficients for each species are shown in table 4.3.1.2.

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

*Y* is a trees rank in the diameter distribution (1 = smallest; ITRN = largest)

divided by the total number of trees (ITRN) multiplied by *SCALE*

*SCALE* is a density dependent scaling factor(bounded to 0.3 <u><</u> *SCALE* <u><</u> 1.0)

*CCF* is stand crown competition factor

a0, b0-1, c0-1, and d0-1 are species-specific coefficients shown in table 4.3.2

**Table 4.3.1.2 Coefficients for the Weibull parameter equations {4.3.6} and {4.3.7} in the UT variant.**

| **Species Code** | **a0** | **b0** | **b1** | **c0** | **c1** | **d0** | **d1** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| WB | 1 | -0.82631 | 1.06217 | 3.31429 | 0 | 6.19911 | -0.02216 |
| LM | 1 | -0.82631 | 1.06217 | 3.31429 | 0 | 6.19911 | -0.02216 |
| DF | 1 | -0.24217 | 0.96529 | -7.94832 | 1.93832 | 7.46296 | -0.02944 |
| WF | 1 | -0.89553 | 1.07728 | 1.74621 | 0.29052 | 7.65751 | -0.03513 |
| BS | 1 | -0.90648 | 1.08122 | 3.48889 | 0 | 6.81087 | -0.01037 |
| AS | 0 | -0.08414 | 1.14765 | 2.77500 | 0 | 4.01678 | -0.01516 |
| LP | 0 | 0.17162 | 1.07338 | 3.15000 | 0 | 6.00567 | -0.03520 |
| ES | 1 | -0.90648 | 1.08122 | 3.48889 | 0 | 6.81087 | -0.01037 |
| AF | 1 | -0.89553 | 1.07728 | 1.74621 | 0.29052 | 7.65751 | -0.03513 |
| PP | 1 | -0.82631 | 1.06217 | -1.02873 | 0.80143 | 6.19911 | -0.02216 |
| MC | 0 | -0.23830 | 1.18016 | 3.04000 | 0 | 4.62512 | -0.01604 |
| BI | 0 | -0.23830 | 1.18016 | 3.04000 | 0 | 4.62512 | -0.01604 |
| OS | 1 | -0.26595 | 0.98326 | -1.60411 | 1.60411 | 7.92810 | -0.06298 |

Narrowleaf cottonwood, Fremont cottonwood, and boxelder live and dead trees of all sizes are assigned a crown ratio using equation {4.3.1.8} and {4.3.1.10}. Great Basin bristlecone pine live and dead trees of all sizes are assigned a crown ratio using equations {4.3.1.9} and {4.3.1.10}. Common pinyon, western juniper, Gambel oak, singleleaf pinyon, Rocky Mountain juniper, Utah juniper, and other hardwood trees 1.0 inch diameter and larger use equations {4.3.1.9} and {4.3.1.10}.

{4.3.1.8} *CL* = 5.17281 + 0.32552 \* *HT* – 0.01675 \* *BA*

{4.3.1.9} *CL* = -0.59373 + 0.67703 \* *HT*

{4.3.1.10} *CR* = (*CL* / *HT*)

where:

*BA* is total stand basal area in square feet/acre

*HT* is total tree height in feet

*CL* is crown length in feet (bounded between 1.0 and *HT*)

*CR* is tree crown ratio expressed as a proportion of total tree height

### 4.3.2 Crown Ratio Change

Crown ratio change is estimated after growth, mortality and regeneration are estimated during a projection cycle. Crown ratio change is the difference between the crown ratio at the beginning of the cycle and the predicted crown ratio at the end of the cycle. Crown ratio predicted at the end of the projection cycle is estimated for live tree records using equations {4.3.1.8} and {4.3.10} for narrowleaf cottonwood, Fremont cottonwood, and boxelder; equations {4.3.1.9} and {4.3.1.10} for Great Basin bristlecone pine, common pinyon, western juniper, Gambel oak, singleleaf pinyon, Rocky Mountain juniper, Utah juniper, and other hardwood; and the Weibull distribution, equations {4.3.1.4}-{4.3.1.7}, for all other species. Crown change is checked to make sure it doesn’t exceed the change possible if all height growth produces new crown. Crown change is further bounded to 1% per year for the length of the cycle to avoid drastic changes in crown ratio. Equations {4.3.1.1} – {4.3.1.3} are not used when estimating crown ratio change

### 4.3.3 Crown Ratio for Newly Established Trees

Crown ratios for newly established trees during regeneration are estimated using equation {4.3.3.1}. A random component is added in equation {4.3.3.1} to ensure that not all newly established trees are assigned exactly the same crown ratio.

{4.3.3.1} *CR* = 0.89722 – 0.0000461 \* *PCCF* + *RAN*

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.2 <u><</u> *CR* <u><</u> 0.9)

*PCCF* is crown competition factor on the inventory point where the tree is established

*RAN* is a small random component

## 4.4 Crown Width Relationships

The UT variant calculates the maximum crown width for each individual tree based on individual tree and stand attributes. Crown width for each tree is reported in the tree list output table and used for percent canopy cover (*PCC*) calculations in the model. Crown width is calculated using equations {4.4.1} – {4.4.4}, and coefficients for these equations are shown in table 4.4.1. The minimum diameter and bounds for certain data values are given in table 4.4.2. Equation numbers in table 4.4.1 are given with the first three digits representing the FIA species code, and the last two digits representing the equation source.

{4.4.1} Bechtold (2004); Equation 01

*DBH* <u>></u> *MinD: CW* = a1 + (a2 \* *DBH*) + (a3 \* *DBH*^2)

*DBH* < *MinD: CW* = [a1 + (a2 \* *MinD*) \* (a3 \* *MinD*^2)] \* (*DBH* / *MinD*)

{4.4.2} Bechtold (2004); Equation 02

*DBH* <u>></u> *MinD*: *CW* = a1 + (a2 \* *DBH*) + (a3 \* *DBH*^2) + (a4 \* *CR*) + (a5 \* *BA*) + (a6 \* *HI*)

*DBH* < *MinD*: *CW* = [a1 + (a2 \* *MinD*) + (a3 \* *MinD*^2) + (a4 \* *CR*) + (a5 \* *BA*) + (a6 \* *HI*)] \* (*DBH* / *MinD*)

{4.4.3} Crookston (2005); Equation 05

*DBH* <u>></u> *MinD: CW* = (a1 \* *BF*) \* *DBH*^a2 \* *HT*^a3 \* *CL^*a4 \* (*BA* + 1.0)^a5 \* exp(*EL*)^a6

*DBH* < *MinD: CW* = (a1 \* BF) \* *MinD*^a2 \* HT^a3 \* CL^a4 \* (BA + 1.0)^a5 \* exp(EL)^a6] \* (*DBH* / *MinD*)

{4.4.4} Donnelly (1996); Equation 06

*DBH* <u>></u> *MinD CW* = a1 \* *DBH^*a2

*DBH* < *MinD CW* = [a1 \* *MinD*^a2] \* (*DBH* / *MinD*)

where:

*BF* is a species-specific coefficient based on forest code (*BF* = 1.0 in the UT variant)

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

**Table 4.4.1 Coefficients for crown width equations {4.4.1} – {4.4.4} in the UT variant.**

| **Species Code** | **Equation Number\*** | **a1** | **a2** | **a3** | **a4** | **a5** | **a6** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| WB | 10105 | 2.2354 | 0.6668 | -0.11658 | 0.16927 | 0 | 0 |
| LM | 11301 | 4.0181 | 0.8528 | 0 | 0 | 0 | 0 |
| DF | 20205 | 6.0227 | 0.54361 | -0.20669 | 0.20395 | -0.00644 | -0.00378 |
| WF | 01505 | 5.0312 | 0.53680 | -0.18957 | 0.16199 | 0.04385 | -0.00651 |
| BS | 09305 | 6.7575 | 0.55048 | -0.25204 | 0.19002 | 0 | -0.00313 |
| AS | 74605 | 4.7961 | 0.64167 | -0.18695 | 0.18581 | 0 | 0 |
| LP | 10805 | 6.6941 | 0.8198 | -0.36992 | 0.17722 | -0.01202 | -0.00882 |
| ES | 09305 | 6.7575 | 0.55048 | -0.25204 | 0.19002 | 0 | -0.00313 |
| AF | 01905 | 5.8827 | 0.51479 | -0.21501 | 0.17916 | 0.03277 | -0.00828 |
| PP | 12205 | 4.7762 | 0.74126 | -0.28734 | 0.17137 | -0.00602 | -0.00209 |
| PI | 10602 | -5.4647 | 1.9660 | -0.0395 | 0.0427 | 0 | -0.0259 |
| WJ | 06405 | 5.1486 | 0.73636 | -0.46927 | 0.39114 | -0.05429 | 0 |
| GO | 81402 | 0.3309 | 0.8918 | 0 | 0.0510 | 0 | 0 |
| PM | 10602 | -5.4647 | 1.9660 | -0.0395 | 0.0427 | 0 | -0.0259 |
| RM | 06405 | 5.1486 | 0.73636 | -0.46927 | 0.39114 | -0.05429 | 0 |
| UJ | 06405 | 5.1486 | 0.73636 | -0.46927 | 0.39114 | -0.05429 | 0 |
| GB | 10201 | 7.4251 | 0.8991 | 0 | 0 | 0 | 0 |
| NC | 74902 | 4.1687 | 1.5355 | 0 | 0 | 0 | 0.1275 |
| FC | 74902 | 4.1687 | 1.5355 | 0 | 0 | 0 | 0.1275 |
| MC | 47502 | 4.0105 | 0.8611 | 0 | 0 | 0 | -0.0431 |
| BI | 31206 | 7.5183 | 0.4461 | 0 | 0 | 0 | 0 |
| BE | 74902 | 4.1687 | 1.5355 | 0 | 0 | 0 | 0.1275 |
| OS | 12205 | 4.7762 | 0.74126 | -0.28734 | 0.17137 | -0.00602 | -0.00209 |
| OH | 81402 | 0.3309 | 0.8918 | 0 | 0.0510 | 0 | 0 |

\*Equation number is a combination of the species FIA code (###) and source (##).

\*\*DBH limited to a maximum of 25” for calculation of crown width

**Table 4.4.2 *MinD* values and data bounds for equations {4.4.1} – {4.4.4} in the UT variant.**

| **Species Code** | **Equation Number\*** | ***MinD*** | ***EL min*** | ***EL* max** | ***HI* min** | ***HI* max** | ***CW* max** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| WB | 10105 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| LM | 11301 | 5.0 | n/a | n/a | n/a | n/a | 25 |
| DF | 20205 | 1.0 | 1 | 75 | n/a | n/a | 80 |
| WF | 01505 | 1.0 | 2 | 75 | n/a | n/a | 35 |
| BS | 09305 | 1.0 | 1 | 85 | n/a | n/a | 40 |
| AS | 74605 | 1.0 | n/a | n/a | n/a | n/a | 45 |
| LP | 10805 | 1.0 | 1 | 79 | n/a | n/a | 40 |
| ES | 09305 | 1.0 | 1 | 85 | n/a | n/a | 40 |
| AF | 01905 | 1.0 | 10 | 85 | n/a | n/a | 30 |
| PP | 12205 | 1.0 | 13 | 75 | n/a | n/a | 50 |
| PI | 10602 | 5.0 | n/a | n/a | -40 | 11 | 25 |
| WJ | 06405 | 1.0 | n/a | n/a | n/a | n/a | 36 |
| GO | 81402 | 5.0 | n/a | n/a | n/a | n/a | 19 |
| PM | 10602 | 5.0 | n/a | n/a | -40 | 11 | 25 |
| RM | 06405 | 1.0 | n/a | n/a | n/a | n/a | 36 |
| UJ | 06405 | 1.0 | n/a | n/a | n/a | n/a | 36 |
| GB | 10201 | 5.0 | n/a | n/a | n/a | n/a | 25 |
| NC | 74902 | 5.0 | n/a | n/a | -26 | -2 | 35 |
| FC | 74902 | 5.0 | n/a | n/a | -26 | -2 | 35 |
| MC | 47502 | 5.0 | n/a | n/a | -37 | 27 | 29 |
| BI | 31206 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| BE | 74902 | 5.0 | n/a | n/a | -26 | -2 | 35 |
| OS | 12205 | 1.0 | 13 | 75 | n/a | n/a | 50 |
| OH | 81402 | 5.0 | n/a | n/a | n/a | n/a | 19 |

\*Equation number is a combination of the species FIA code (###) and source (##).

## 4.5 Crown Competition Factor

The UT variant uses crown competition factor (*CCF*) as a predictor variable in some growth relationships. Crown competition factor (Krajicek and others 1961) is a relative measurement of stand density that is based on tree diameters. Individual tree *CCFt* values estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open-grown. Stand *CCF* is the summation of individual tree (*CCFt*)values. A stand *CCF* value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand. Crown competition factor for an individual tree is calculated using equation {4.5.1} for all species except curl-leaf mountain mahogany and bigtooth maple. These two species use equation {4.5.2}. Coefficients for all species are shown in table 4.5.1.

{4.5.1} Used for all species other than bigtooth maple and curl-leaf mountain mahogany:

*DBH* <u>></u> *DBRK*: *CCFt* = R1 + (R2 \* *DBH*) + (R3 \* *DBH*^2)

0.1” < *DBH* < *DBRK*: *CCFt* = R4 \* *DBH*^R5

*DBH* <u><</u> 0.1”:*CCFt* = 0.001

{4.5.2} Used for curl-leaf mountain mahogany and bigtooth maple:

*DBH <u>></u> DBRK: CCFt* = R1 + (R2 \* *DBH*) + (R3 \* *DBH*^2)

*DBH < DBRK: CCFt* = *DBH* \* (R1 + R2 + R3 )

where:

*CCFt* is crown competition factor for an individual tree

*DBH* is tree diameter at breast height

*DBRK* is 10” for Great Basin bristlecone pine, narrowleaf cottonwood, Fremont cottonwood, and boxelder; 1.0” for all other species

R1 - R5 are species-specific coefficients shown in table 4.5.1

**Table 4.5.1 Coefficients *CCF* equations {4.5.1} – {4.5.2} in the UT variant.**

| **Species Code** | **R1** | **R2** | **R3** | **R4** | **R5** |
| --- | --- | --- | --- | --- | --- |
| WB | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| LM | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| DF | 0.11 | 0.0333 | 0.00259 | 0.017299 | 1.5571 |
| WF | 0.04 | 0.0270 | 0.00405 | 0.015248 | 1.7333 |
| BS | 0.03 | 0.0173 | 0.00259 | 0.007875 | 1.7360 |
| AS | 0.03 | 0.0238 | 0.00490 | 0.008915 | 1.7800 |
| LP | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| ES | 0.03 | 0.0173 | 0.00259 | 0.007875 | 1.7360 |
| AF | 0.03 | 0.0216 | 0.00405 | 0.011402 | 1.7560 |
| PP | 0.03 | 0.0180 | 0.00281 | 0.007813 | 1.7680 |
| PI | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| WJ | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| GO | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |
| PM | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| RM | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| UJ | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| GB | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| NC | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |
| FC | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |
| MC | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| BI | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| BE | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |
| OS | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| OH | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |

## 4.6 Small Tree Growth Relationships

Trees are considered “small trees” for FVS modeling purposes when they are smaller than some threshold diameter. In the UT variant the threshold diameter is set to: 1.0” for narrowleaf cottonwood, Fremont cottonwood, and boxelder; 99.0” for common pinyon, western juniper, Gambel oak, singleleaf pinyon, Rocky Mountain juniper, Utah juniper, Great Basin bristlecone pine, curl-leaf mountain mahogany, bigtooth maple and other hardwood; and 3.0” for all other species.

The small tree model is height-growth driven, meaning height growth is estimated first and diameter growth is estimated from height growth. These relationships are discussed in the following sections.

### 4.6.1 Small Tree Height Growth

The small-tree height increment model predicts 10-year height growth (*HTG*) for small trees based on site index, and is then modified to account for density effects and tree vigor.

Potential height growth for whitebark pine, limber pine, Douglas-fir, white fir, blue spruce, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine and other softwood is estimated using equation {4.6.1.1}.

{4.6.1.1} *POTHTG* = (*SI* / 5.0)

Potential height growth for common pinyon, western juniper, Gambel oak, singleleaf pinyon, Rocky Mountain juniper, Utah juniper, Great Basin bristlecone pine, narrowleaf cottonwood, Fremont cottonwood, curl-leaf mountain mahogany, bigtooth maple boxelder, and other hardwood is estimated using equation {4.6.1.2}.

{4.6.1.2} *POTHTG* = ((*SJ* / 5.0) \* (*SJ* \* 1.5 - *H*) / (*SJ* \* 1.5)) \* 0.83

where:

*POTHTG* is potential height growth

*SI* is species site index on a 50-year age basis

*SJ* is species site index on a base-age basis

*H* is tree height

Potential height growth is then adjusted based on stand density (*PCTRED*) as computed with equation {4.6.1.3}, and crown ratio (*VIGOR*) as shown in equations {4.6.1.4} and {4.6.1.5}. Common pinyon, western juniper, Gambel oak, singleleaf pinyon, Rocky Mountain juniper, Utah juniper, Great Basin bristlecone pine, and other hardwood use equation {4.6.1.5} to estimate *VIGOR*. Height growth is then estimated using equation 4.6.1.6 for all species except quaking aspen.

{4.6.1.3} *PCTRED* = 1.1144 – 0.0115\**Z* + 0.4301E-04 \* *Z*^2 – 0.7222E-07 \* *Z*^3 + 0.5607E-10 \* *Z*^4 – 0.1641E-13 \* *Z*^5

*Z* = *HTAvg* \* (*CCF* / 100)

{4.6.1.4} *VIGOR* = (150 \* *CR*^3 \* exp(-6 \* *CR*) ) + 0.3

{4.6.1.5} *VIGOR* = 1 – [(1 – (150 \* *CR*^3 \* exp(-6 \* *CR*)) + 0.3) / 3]

{4.6.1.6} *HTG* = *POTHTG* \* *PCTRED* \* *VIGOR*

where:

*PCTRED* is reduction in height growth due to stand density (bounded to 0.01 <u><</u> *PCTRED* <u><</u> 1)

*HTAvg* is average height of the 40 largest diameter trees in the stand

*CCF* is stand crown competition factor

*VIGOR* is reduction in height growth due to tree vigor (bounded to *VIGOR* <u><</u> 1.0)

*CR* is a tree’s live crown ratio (compacted) expressed as a proportion

*HTG* is estimated height growth for the cycle

*POTHTG* is potential height growth

Height growth for small quaking aspen is obtained from a height-age curve from Shepperd (1995). Shepperd’s original curve seemed to overestimate height growth when compared with field data from the geographic range of the UT variant, so the UT variant reduces the estimated height growth by 25 percent (as shown in equation {4.6.1.7}). A height is estimated from the tree’s current age and then its current age plus 10 years. Height growth is the difference between these two height estimates converted from centimeters to feet. An estimate of the tree’s current age is obtained at the start of a projection using the tree’s height and solving equation {4.6.1.7} for age.

{4.6.1.7} *HTG* = (26.9825 \* *A*^1.1752) \* 0.75 \* *RSIMOD*

*RSIMOD* = 0.5 \* (1 + ((SJ – 30) / 40))

where:

*HTG* is estimated height growth for the cycle

*A* is tree age

*RSIMOD* is a growth modifier based on relative site index

*SJ* is species site index on a base-age basis bounded 30 < SJ for this calculation

For all species, a small random error is added to the height growth estimate. The estimated height growth (*HTG*) is then adjusted to account for cycle length, user defined small-tree height growth adjustments, and adjustments due to small tree height model calibration from the input data.

Height growth estimates from the small-tree model are weighted with the height growth estimates from the large tree model over a range of diameters (*Xmin* and *Xmax*) in order to smooth the transition between the two models. For example, the closer a tree’s *DBH* value is to the minimum diameter (*Xmin*), the more the growth estimate will be weighted towards the small-tree growth model. The closer a tree’s *DBH* value is to the maximum diameter (*Xmax*), the more the growth estimate will be weighted towards the large-tree growth model. If a tree’s *DBH* value falls outside of the range given by *Xmin* and *Xmax*, then the model will use only the small-tree or large-tree growth model in the growth estimate. The weight applied to the growth estimate is calculated using equation {4.6.1.8}, and applied as shown in equation {4.6.1.9}. The range of diameters for each species is shown in table 4.6.1.1.

{4.6.1.8}

DBH <u><</u> Xmin: XWT = 0

Xmin < DBH < Xmax: XWT = (DBH - Xmin) / (Xmax - Xmin)

DBH <u>></u> Xmax: XWT = 1

{4.6.1.9} Estimated growth = [(1 - *XWT*) \* *STGE*] + [*XWT* \* *LTGE*]

where:

*XWT* is the weight applied to the growth estimates

*DBH* is tree diameter at breast height

*Xmax* is the maximum *DBH* is the diameter range

*Xmin* is the minimum *DBH* in the diameter range

*STGE* is the growth estimate obtained using the small-tree growth model

*LTGE* is the growth estimate obtained using the large-tree growth model

**Table 4.6.1.2 Diameter and diameter growth bounds by species in the UT variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | ***Xmin*** | ***Xmax*** | ***DGmax*** |
| WB | 2.0 | 4.0 | 2.8 |
| LM | 2.0 | 4.0 | 2.8 |
| DF | 2.0 | 4.0 | 2.4 |
| WF | 2.0 | 4.0 | 3.6 |
| BS | 2.0 | 4.0 | 3.6 |
| AS | 2.0 | 4.0 | 2.5 |
| LP | 1.0 | 5.0 | 3.5 |
| ES | 2.0 | 4.0 | 3.6 |
| AF | 2.0 | 6.0 | 3.6 |
| PP | 2.0 | 6.0 | 2.8 |
| PI\* | 90.0 | 99.0 | 2.0 |
| WJ\* | 90.0 | 99.0 | 2.0 |
| GO\* | 90.0 | 99.0 | 2.0 |
| PM\* | 90.0 | 99.0 | 2.0 |
| RM\* | 90.0 | 99.0 | 2.0 |
| UJ\* | 90.0 | 99.0 | 2.0 |
| GB\* | 99.0 | 199.0 | 2.0 |
| NC | 0.5 | 2.0 | 2.5 |
| FC | 0.5 | 2.0 | 2.5 |
| MC\* | 90.0 | 99.0 | 2.0 |
| BI\* | 90.0 | 99.0 | 2.0 |
| BE | 0.5 | 2.0 | 2.5 |
| OS | 2.0 | 6.0 | 2.8 |
| OH\* | 90.0 | 99.0 | 2.0 |

\*There is only one growth relationship that applies to trees of all sizes for these species. These relationships are contained in the “small” tree portion of FVS.

### ****4.6.2 Small Tree Diameter Growth****

As stated previously, for trees being projected with the small tree equations, height growth is predicted first, and then diameter growth. So both height at the beginning of the cycle and height at the end of the cycle are known when predicting diameter growth. Small tree diameter growth for trees over 4.5 feet tall is calculated as the difference of predicted diameter at the start of the projection period and the predicted diameter at the end of the projection period, adjusted for bark ratio. For whitebark pine, limber pine, Douglas-fir, white fir, blue spruce, quaking aspen, lodgepole pine, Engelmann spruce, subalpine fir, narrowleaf cottonwood, Fremont cottonwood, boxelder, and other softwood, these two predicted diameters are estimated using the species-specific height-diameter relationships discussed in section 4.1. By definition, diameter growth is zero for trees less than 4.5 feet tall.

Ponderosa pine uses equation {4.6.2.1} in the same manner as just described for the other species.

{4.6.2.1} *DBH* = (*HT* – 4.17085) / 3.03659

Common pinyon, western juniper, Gambel oak, singleleaf pinyon, Rocky Mountain juniper, Utah juniper, Great Basin bristlecone pine, and other hardwood use equation {4.6.2.2} as previously described.

{4.6.2.2} *DBH* = 10 \* (*HT* – 4.5) / (*SI* – 4.5)

where:

*DBH* is tree diameter

*HT* is tree height

*SI* is species site index on a base-age basis

Curl-leaf mountain mahogany and bigtooth maple use the Curtis-Arney method by default and is shown in equations {4.6.2.3}. Equation {4.6.2.3} is used when calibration of the height-diameter equation is turned off, or when it’s turned on and does not occur. If calibration of the height-diameter curve is turned on and does occur, then equation {4.6.2.4} is used to estimate diameter growth directly.

{4.6.2.3} Curtis-Arney method

*HT* > *HAT3*: *DBH* = exp(ln((ln(*HT –* 4.5) – ln(a))/-b) / c)

*HT* <u><</u> *HAT3*: *DBH* = ((*HT* – 4.51) \* 2.7) / (4.5 + a \* exp(-b \* (3.0 ^ c)) – 4.51) + 0.3

{4.6.2.4} *DG* = 0.1 \* *HTG*

where:

*HAT3*  = 4.5 + a \* exp(-b \* (3.0 ^ c))

*DBH* is tree diameter at breast height

*HT* is tree height

*DG* is estimated tree diameter growth

*HTG* is estimated tree height growth

a, b, c are species-specific coefficients shown as P2, P3, and P4 in section 4.1

For all species the estimate of diameter growth is adjusted to account for user defined small-tree diameter growth adjustments, and then bounded using equation {4.6.2.5} and coefficients shown in table 4.6.1.2.

{4.6.2.5} *DG* <u><</u> (FINT/10) \* *DGmax*

where:

*DG* is estimated tree diameter growth

*FINT* is projection cycle length

*DGmax* is the species specific maximum 10-year diameter growth from table 4.6.1.2

## 4.7 Large Tree Growth Relationships

Trees are considered “large trees” for FVS modeling purposes when they are equal to or greater than some threshold diameter. This threshold diameter is set to: 1.0” for narrowleaf cottonwood, Fremont cottonwood, and boxelder; 99.0” for common pinyon, western juniper, Gambel oak, singleleaf pinyon, Rocky Mountain juniper, Utah juniper, Great Basin bristlecone pine, curl-leaf mountain mahogany, bigtooth maple and other hardwood; and 3.0” for all other species.

The large-tree model is driven by diameter growth meaning diameter growth is estimated first, and then height growth is estimated from diameter growth and other variables. These relationships are discussed in the following sections.

### 4.7.1 Large Tree Diameter Growth

The large tree diameter growth model used in most FVS variants is described in section 7.2.1 in Dixon (2002). Instead of predicting diameter increment directly, most variants predict the natural log of the periodic change in squared inside-bark diameter (ln(*DDS*)) (Dixon 2002; Wykoff 1990; Stage 1973; and Cole and Stage 1972). For variants predicting diameter increment directly, diameter increment is converted to the *DDS* scale to keep the FVS system consistent across all variants.

The UT variant predicts diameter growth for whitebark pine, limber pine, Douglas-fir, white fir, blue spruce, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, and other softwood using equation {4.7.1.1}. Coefficients for this equation are shown in tables 4.7.1.1 – 4.7.1.3.

{4.7.1.1} ln(*DDS)* = b1 + (b2 \* *SI*) + (b3 \* sin(*ASP* – 0.7854) \* *SL*) + (b4 \* cos(*ASP* – 0.7854) \* *SL*) + (b5 \* *SL*) + (b6 \* *SL^*2) + (b7 \* ln(*DBH*)) + (b8 \* (*BAL* / 100)) + (b9 \* *CR*) + (b10 \* *CR^*2) + (b11 \* *DBH^*2) + (b12 \* *PCCF*) + (b13 \* (*CCF* / 100))

ln(*DDS*) = ln(*DDS*) \* 0.95 (for blue spruce only)

where:

*DDS* is the predicted periodic change in squared inside-bark diameter

*SI* is species site index on a 50-year age basis

*ASP* is stand aspect

*SL* is stand slope

*DBH* is tree diameter at breast height

*BAL* is total basal area in trees larger than the subject tree

*CR* is a tree’s live crown ratio (compacted) expressed as a proportion

*PCCF* is crown competition factor on the inventory point where the tree is established

*CCF* is stand crown competition factor

b1 is a location-specific coefficient shown in Table 4.7.1.1

b2 is a coefficient based on site index mapped class shown in table 4.7.1.2

b3- b13 are species-specific coefficients shown in tables 4.7.1.3

**Table 4.7.1.1 b1 values by location code for equation {4.7.1.1} in the UT variant.**

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Location Code** | **Species Code** | | | | | | |
| **WB, LM, OS** | **DF** | **WF** | **BS, ES** | **LP** | **AF** | **PP** |
| 401 – Ashley | 1.911884 | 0.192136 | -0.061856 | 0.011943 | -0.256987 | -0.467188 | -0.13235 |
| 407 – Dixie | 1.911884 | -0.064516 | -0.130667 | 0.011943 | -0.256987 | -0.638653 | -0.460129 |
| 408 – Fishlake  409 – Humbolt  417 – Toiyabe | 1.911884 | -0.064516 | -0.314746 | 0.011943 | -0.256987 | -0.467188 | -0.460129 |
| 410 – Manti LaSal | 1.911884 | -0.064516 | -0.314746 | 0.265071 | -0.256987 | -0.467188 | -0.302309 |
| 418 – Uinta | 1.911884 | 0.477698 | 0.421806 | -0.094861 | -0.425846 | -0.467188 | -0.302309 |
| 419 – Wasatch  404 – Cache | 1.911884 | 0.589169 | 0.421806 | 0.796948 | 0.530457 | 0.116430 | -0.302309 |

**Table 4.7.1.2 b2 coefficients by species and site index species for equation {4.7.1.1} in the UT variant.**

| **Site Index Species** | **Species Code** | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **WB, LM, OS** | **DF** | **WF** | **BS, ES** | **LP** | **AF** | **PP** |
| WB, LM, LP, PI, WJ, GO, PM, RM, UJ, GB, NC, FC, MC, BI, BE, OH | 0.001766 | 0.010968 | 0.017663 | 0.015133 | 0.021764 | 0.004468 | 0.019282 |
| DF | 0.001766 | 0.006827 | 0.005327 | 0.021085 | 0.021764 | 0.004468 | 0.019282 |
| AF | 0.001766 | 0.010968 | 0.017663 | 0.021085 | 0.021764 | 0.008147 | 0.019282 |
| BS, ES | 0.001766 | 0.006827 | 0.017663 | 0.021085 | 0.027956 | 0.008147 | 0.019282 |
| AS | 0.001766 | 0.010968 | 0.017663 | 0.021085 | 0.027956 | -0.015283 | 0.019282 |
| WF | 0.001766 | 0.010968 | 0.017663 | 0.021085 | 0.027956 | 0.008147 | 0.049804 |
| PP, OS | 0.001766 | 0.010968 | 0.005327 | 0.021085 | 0.027956 | 0.008147 | 0.02943 |

**Table 4.7.1.3 Coefficients (b3- b13) for equation {4.7.1.1} in the UT variant.**

| **Coefficient** | **Species Code** | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **WB, LM,**  **OS** | **DF** | **WF** | **BS, ES** | **LP** | **AF** | **PP** |
| b3 | -0.017520 | 0.022753 | -0.082731 | -0.122483 | 0.128610 | -0.192975 | -0.287654 |
| b4 | -0.609774 | 0.015235 | 0.012704 | -0.198194 | -0.168522 | -0.232267 | -0.411292 |
| b5 | -2.057060 | -0.532905 | -1.133123 | 0.240433 | 0.120589 | 0.383578 | 0.016965 |
| b6 | 2.113263 | -0.086518 | 1.931351 | 0 | -0.266226 | -0.333955 | 2.282665 |
| b7 | 0.213947 | 0.479631 | 0.827167 | 0.587579 | 0.587503 | 0.833096 | 0.733305 |
| b8 | -0.358634 | -0.707380 | -0.010478 | -0.399357 | -0.192073 | -0.182808 | -0.320124 |
| b9 | 1.523464 | 3.182592 | -0.207507 | 0.331129 | 2.148640 | 1.422919 | 1.315804 |
| b10 | 0 | -1.310144 | 1.578941 | 0.816301 | -0.598897 | 0.225676 | 0.238917 |
| b11\* | -0.000654 | 0 | -0.000018 | 0 | 0 | -0.000167 | -0.0005345 |
| b12 | 0 | -0.001613 | -0.000428 | 0 | -0.000467 | -0.000200 | -0.002576 |
| b13\*\* | -0.199592 | 0 | -0.098821 | -0.043414 | -0.407523 | 0 | 0 |

\*The value of b11 is set to –0.0006363 for PP if the location code is 407 (Dixie)

\*\*The value of b13 is set to –0.154870 for ES if the site index for the site species is greater than 39

Large-tree diameter growth for quaking aspen is predicted using equation set {4.7.1.2}. Diameter growth is predicted from a potential diameter growth equation that is modified by stand density, average tree size and site. While not shown here, this diameter growth estimate is eventually converted to the *DDS* scale.

{4.7.1.2} *POTGR* = (0.4755 – 0.0000038336 \* *DBH*^4.1488) + (0.04510 \* *CR* \* *DBH*^0.67266)

*MOD* = 1.0 – exp(-*FOFR* \* *GOFAD* \* ((310-*BA*)/310)^0.5)

*FOFR* = 1.07528 \* (1.0 – exp(–1.89022 \* *DBH* / *QMD*))

*GOFAD* = 0.21963 \* (*QMD* + 1.0)^0.73355

*PREDGR* = *POTGR* \* *MOD* \* (0.48630 + 0.01258 \* *SJ*)

where:

*POTGR* is potential diameter growth bounded to be <u>></u> 0.01

*DBH* is tree diameter at breast height

*CR* is crown ratio expressed as a percent divided by 10

*MOD* is a modifier based on tree diameter and stand density

*FOFR* is the relative density modifier

*GOFAD* is the average diameter modifier

*BA* is total stand basal area bounded to be <u><</u> 305

*QMD* is stand quadratic mean diameter

*PREDGR* is predicted diameter growth

*SJ* is the quaking aspen site index on a base age 80 basis

Large-tree diameter growth for narrowleaf cottonwood, Fremont cottonwood, and boxelder is estimated using equation {4.7.1.3}. Diameter at the end of the growth cycle (DF) is predicted first. Then diameter growth is calculated as the difference between the diameters at the beginning of the cycle and end of the cycle, adjusted for bark ratio. While not shown here, this diameter growth estimate is eventually converted to the *DDS* scale.

{4.7.1.3} *DF* = (1.55986 + 1.01825 \* *DBH* – 0.29342 \* ln(*TBA*) + 0.00672 \* *SJ* – 0.00073 \* *BAU* / *BA*) \* 1.05

DG = (DF – DBH) \* BRATIO \* *DSTAG*

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

Equations presented in section 4.6 are used for trees of all sizes for common pinyon, western juniper, Gambel Oak, singleleaf pinyon, Rocky Mountain juniper, Utah juniper, Great Basin bristlecone pine, curl-leaf mountain mahogany, bigtooth maple, and other hardwood.

### 4.7.2 Large Tree Height Growth

Species in the UT variant use different types of equations depending on species. Eleven species use the Johnson’s SBB (1949) method (Schreuder and Hafley, 1977). These species are whitebark pine, limber pine, Douglas-fir, white fir, blue spruce, quaking aspen, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, and other softwood. Using this method, height growth is obtained by subtracting current height from the estimated future height. Parameters of the SBB distribution cannot be calculated if tree diameter is greater than (C1 + 0.1) or tree height is greater than (C2 + 4.5), where C1 and C2 are shown in table 4.7.2.1 and table 4.7.2.2. In this case, height growth is set to 0.1. Otherwise, the SBB distribution “*Z*” parameter is estimated using equation {4.7.2.1}.

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

C1 – C7 are coefficients based on species and crown ratio class shown in table 4.7.2.1, or species and site class shown in table 4.7.2.2

**Table 4.7.2.1 Coefficients in the large tree height growth model, by crown ratio, for species using the Johnson’s SBB height distribution in the UT variant.**

| **Coefficient by *CR*\* class** | **Species Code** | | | | |
| --- | --- | --- | --- | --- | --- |
| **WB, LM, OS** | **WF** | **AS** | **LP** | **PP** |
| C1 ( *CR*<u><</u> 24) | 37 | 50 | 30 | 30 | 55 |
| C1 (25<u><</u>*CR*<u><</u>74) | 45 | 50 | 30 | 35 | 60 |
| C1 (75<u><</u>*CR*<u><</u>100) | 45 | 50 | 35 | 30 | 50 |
| C2 ( *CR*<u><</u> 24) | 85 | 97 | 85 | 80 | 95 |
| C2 (25<u><</u>*CR*<u><</u>74) | 100 | 97 | 85 | 93 | 115 |
| C2 (75<u><</u>*CR*<u><</u>100) | 90 | 100 | 85 | 80 | 95 |
| C3 ( *CR*<u><</u> 24) | 1.77836 | 1.54 | 2.00995 | 1.85047 | 1.35731 |
| C3 (25<u><</u>*CR*<u><</u>74) | 1.66674 | 1.25483 | 2.00995 | 1.49353 | 1.01274 |
| C3 (75<u><</u>*CR*<u><</u>100) | 1.6477 | 1.54368 | 1.80388 | 0.85472 | 0.53723 |
| C4 ( *CR*<u><</u> 24) | -0.51147 | 0.26509 | 0.03288 | -0.2558 | 0.03681 |
| C4 (25<u><</u>*CR*<u><</u>74) | 0.25626 | 0.162 | 0.03288 | 0.08644 | 0.07372 |
| C4 (75<u><</u>*CR*<u><</u>100) | 0.30546 | -0.23177 | -0.07682 | 0.14709 | -0.1006 |
| C5 ( *CR*<u><</u> 24) | 1.88795 | 1.41204 | 1.81059 | 1.6717 | 1.22927 |
| C5 (25<u><</u>*CR*<u><</u>74) | 1.45477 | 1.23576 | 1.81059 | 1.6115 | 1.30149 |
| C5 (75<u><</u>*CR*<u><</u>100) | 1.35015 | 1.46073 | 1.70032 | 1.3151 | 1.06347 |
| C6 ( *CR*<u><</u> 24) | 1.20654 | 1.25972 | 1.28612 | 1.5366 | 0.98859 |
| C6 (25<u><</u>*CR*<u><</u>74) | 1.11251 | 1.22028 | 1.28612 | 1.57042 | 1.10133 |
| C6 (75<u><</u>*CR*<u><</u>100) | 0.94823 | 1.11638 | 1.29148 | 1.22489 | 0.87482 |
| C7 ( *CR*<u><</u> 24) | 0.57697 | 0.7448 | 0.72051 | 0.72508 | 0.86025 |
| C7 (25<u><</u>*CR*<u><</u>74) | 0.67375 | 0.84747 | 0.72051 | 0.73267 | 0.83541 |
| C7 (75<u><</u>*CR*<u><</u>100) | 0.70453 | 0.7941 | 0.72343 | 0.8383 | 0.86191 |
| C8 ( *CR*<u><</u> 24) | 3.57635 | 2.01391 | 3.00551 | 2.82825 | 3.13888 |
| C8 (25<u><</u>*CR*<u><</u>74) | 2.17942 | 2.09323 | 3.00551 | 1.89981 | 2.01632 |
| C8 (75<u><</u>*CR*<u><</u>100) | 2.4648 | 3.69006 | 2.91519 | 1.59182 | 1.90485 |
| C9 ( *CR*<u><</u> 24) | 0.90283 | 0.83486 | 1.01433 | 0.78883 | 1.06969 |
| C9 (25<u><</u>*CR*<u><</u>74) | 0.88103 | 0.85822 | 1.01433 | 0.75184 | 0.98724 |
| C9 (75<u><</u>*CR*<u><</u>100) | 1.00316 | 1.03903 | 0.95244 | 0.90003 | 1.04777 |

\**CR* represents percent crown ratio

**Table 4.7.2.2 Coefficients in the large tree height growth model, by site index, for species using the Johnson’s SBB height distribution in the UT variant.**

| **Coefficient by *SI*\* class** | **Species Code** | | |
| --- | --- | --- | --- |
| **DF** | **BS, ES** | **AF** |
| C1 ( *SI*<u><</u> 20) | 50 | 50 | 35 |
| C1 (21<u><</u>*SI*<u><</u>30) | 60 | 50 | 40 |
| C1 (31<u><</u>*SI*<u><</u>40) | 55 | 60 | 40 |
| C1 (41<u><</u>*SI*<u><</u>50) | 50 | 45 | 40 |
| C1 ( 50<u><</u>*SI*) | 38 | 45 | 40 |
| C2 ( *SI*<u><</u> 20) | 95 | 105 | 75 |
| C2 (21<u><</u>*SI*<u><</u>30) | 110 | 105 | 95 |
| C2 (31<u><</u>*SI*<u><</u>40) | 105 | 120 | 100 |
| C2 (41<u><</u>*SI*<u><</u>50) | 110 | 120 | 110 |
| C2 ( 50<u><</u>*SI*) | 110 | 125 | 115 |
| C3 ( *SI*<u><</u> 20) | 1.03766 | 1.84149 | 2.60522 |
| C3 (21<u><</u>*SI*<u><</u>30) | 1.63201 | 1.2124 | 1.95832 |
| C3 (31<u><</u>*SI*<u><</u>40) | 1.3179 | 1.42571 | 1.64996 |
| C3 (41<u><</u>*SI*<u><</u>50) | 1.00167 | 1.54101 | 1.21724 |
| C3 ( 50<u><</u>*SI*) | 0.38147 | 0.403 | 1.19929 |
| C4 ( *SI*<u><</u> 20) | -0.10314 | 0.43562 | 0.33274 |
| C4 (21<u><</u>*SI*<u><</u>30) | 0.32350 | -0.15047 | 0.38168 |
| C4 (31<u><</u>*SI*<u><</u>40) | -0.36654 | -0.18256 | -0.03653 |
| C4 (41<u><</u>*SI*<u><</u>50) | -0.55765 | 0.20997 | -0.03316 |
| C4 ( 50<u><</u>*SI*) | -0.67042 | -0.81957 | 0.01214 |
| C5 ( *SI*<u><</u> 20) | 1.16073 | 1.50911 | 1.88966 |
| C5 (21<u><</u>*SI*<u><</u>30) | 1.30538 | 1.30622 | 1.53254 |
| C5 (31<u><</u>*SI*<u><</u>40) | 1.38496 | 1.33875 | 1.52713 |
| C5 (41<u><</u>*SI*<u><</u>50) | 1.37084 | 1.38766 | 1.30125 |
| C5 ( 50<u><</u>*SI*) | 1.13209 | 1.15151 | 1.20833 |
| C6 ( *SI*<u><</u> 20) | 1.02648 | 1.27174 | 1.50108 |
| C6 (21<u><</u>*SI*<u><</u>30) | 1.33112 | 1.12217 | 1.40855 |
| C6 (31<u><</u>*SI*<u><</u>40) | 1.18264 | 1.10993 | 1.24917 |
| C6 (41<u><</u>*SI*<u><</u>50) | 1.29851 | 1.22927 | 1.11284 |
| C6 ( 50<u><</u>*SI*) | 0.9219 | 0.85881 | 0.9818 |
| C7 ( *SI*<u><</u> 20) | 0.83396 | 0.83183 | 0.78085 |
| C7 (21<u><</u>*SI*<u><</u>30) | 0.8187 | 0.82399 | 0.77849 |
| C7 (31<u><</u>*SI*<u><</u>40) | 0.83039 | 0.8263 | 0.82371 |
| C7 (41<u><</u>*SI*<u><</u>50) | 0.78167 | 0.89085 | 0.88781 |
| C7 ( 50<u><</u>*SI*) | 0.83348 | 0.80328 | 0.89815 |
| C8 ( *SI*<u><</u> 20) | 2.56902 | 2.36779 | 3.10664 |
| C8 (21<u><</u>*SI*<u><</u>30) | 2.13984 | 2.78522 | 2.25099 |
| C8 (31<u><</u>*SI*<u><</u>40) | 3.43941 | 3.40712 | 3.0564 |
| C8 (41<u><</u>*SI*<u><</u>50) | 2.80787 | 2.57529 | 2.72071 |
| C8 ( 50<u><</u>*SI*) | 2.92151 | 3.78573 | 2.9587 |
| C9 ( *SI*<u><</u> 20) | 0.94303 | 0.98709 | 0.98298 |
| C9 (21<u><</u>*SI*<u><</u>30) | 0.80286 | 0.95913 | 0.84702 |
| C9 (31<u><</u>*SI*<u><</u>40) | 0.97246 | 0.99665 | 1.007 |
| C9 (41<u><</u>*SI*<u><</u>50) | 0.82521 | 1.00564 | 1.03812 |
| C9 ( 50<u><</u>*SI*) | 1.02351 | 1.07705 | 1.10539 |

\**SI* represents site index for the species

Bias in the estimate of Z for Douglas-fir, blue spruce, lodgepole pine, Engelmann spruce, and subalpine fir is estimated using the set of equations shown in {4.7.2.2} and coefficients shown in table 4.7.2.3.

{4.7.2.2} *ZBIAS* = C10 + C11 \* (*EL* – 20) for 80 <u><</u> *EL* <u><</u> 105

*ZBIAS* = 0 for stand elevations outside this range; or when *ZBIAS* < 0 and (*Z* – *ZBIAS*) <u>></u> 2

where:

*Z* is the estimated SBB distribution parameter

*ZBIAS* is the known bias in the estimate of Z

*EL* is the elevation of the stand expressed in hundreds of feet

**Table 4.7.2.3 Coefficients for the large tree height growth model bias correction in the UT variant.**

|  |  |  |
| --- | --- | --- |
| **Species Code** | **C10** | **C11** |
| DF | -0.86001 | 0.01051 |
| BS | -0.84735 | 0.01102 |
| LP | 0.40153 | -0.0078 |
| ES | -0.84735 | 0.01102 |
| AF | 0.89035 | -0.01331 |

Equation {4.7.2.3} is used to eliminate known bias in the estimate of Z.

{4.7.2.3} Z = Z + (0.1 – 0.10273 \* (Z – ZBIAS) + 0.00273 \* (Z – ZBIAS)^2) if Z < 0; set Z = 0

If the *Z* value is 2.0 or less, it is adjusted for all younger aged trees using equation {4.7.2.4}. This adjustment is done for trees with an estimated age between 11 and 39 years and a diameter less than 9.0 inches. After this calculation, the value of *Z* is bounded to be 2.0 or less for trees meeting these criteria.

{4.7.2.4} *Z* = *Z* \* (0.3564 \* *DG*) \* CLOSUR \* *K*

*CCF* <u>></u> 100: *CLOSUR* = *PCT* / 100

*CCF* < 100: *CLOSUR* = 1

*CR* <u>></u> 75%: *K* = 1.1

*CR* < 75%: *K* = 1.0

where:

*DG* is diameter growth for the cycle

*PCT* is the subject tree’s percentile in the basal area distribution of the stand

*CCF* is stand crown competition factor

*CLOSUR* is an adjustment based on crown closure

*K* is an adjustment for trees with long crowns

Estimated height 10 years later is calculated using equation {4.7.2.5}, and finally, 10-year height growth is calculated by subtraction using equation {4.7.2.6} and adjusted to the cycle length.

{4.7.2.5} *H10* = [(*PSI* / (1 + *PSI*)) \* C2] + 4.5

*PSI* = C8 \* [(*D10* – 0.1) / (0.1 + C1– *D10*)]^C9 \* [exp(*K*)]

*K* = *Z* \* [(1 - C7^2)^(0.5 / C6)]

{4.7.2.6} Height growth:

H10 > HT: POTHTG = H10 – HT

H10 <u><</u> HT: POTHTG = 0.1

where:

*H10* is estimated height of the tree in ten years

*HT* is height of the tree at the beginning of the cycle

*D10* is estimated diameter at breast height of the tree in ten years

*POTHTG* is potential height growth

C1 – C9 are regression coefficients based on species

Whitebark pine, limber pine, white fir, quaking aspen, lodgepole pine, ponderosa pine, other softwood are based on crown ratio class and shown in table 4.7.2.1 Douglas-fir, blue spruce, Engelmann spruce, subalpine fir are based on site index class and shown in table 4.7.2.2

Large tree height growth for narrowleaf cottonwood, Fremont cottonwood, and boxelder is estimated using equations from the Spruce-fir model type of the Central Rockies variant. The equations predict height growth from site index curves for even-aged stands and height growth from a regression equation for uneven-aged stands. These estimates get blended when certain conditions are met, and in some instances a growth reduction due to stand stagnation may be applied. A stand is considered uneven-aged if the range in ages between the 5th percentile and 95th percentile trees in the basal area distribution exceeds 40 years.

Four tree heights are estimated: height at the beginning of the projection cycle and 10-years into the future using the equations for even-aged stands, and height at the beginning of the projection cycle and 10-years into the future using the equations for uneven-aged stands. Two 10-year height growth estimates are obtained. An even-aged height growth estimate is obtained from the difference between the two estimated heights using equations for even-aged stands, and an uneven-aged height growth estimate is obtained from the difference between the two estimated heights using equations for uneven-aged stands.

The final height growth estimate for a tree depends on whether the stand is even-aged or uneven-aged, total stand basal area, the tree’s position in the stand, and whether the stand is considered as stagnated. Equation {4.7.2.7} is used when the stand is even-aged, or the total stand basal area is less than 70 square feet, or when the stand is uneven-aged with total stand basal area at least 70 square feet and the tree’s percentile in the basal area distribution is at least 40. Equation {4.7.2.8} is used when the stand is uneven-aged with stand basal area at least 70 square feet and the tree’s percentile in the basal area distribution is less than 40. Equation {4.7.2.9} is used when the stand is uneven-aged with stand basal area at least 70 square feet and the tree’s percentile in the basal area distribution is at least 10 but no larger than 40.

{4.7.2.7} *HTG* = [((*HHE2* - *HHE1*) \* *ADJUST*) + (*ZZRAN* \* 0.1)] \* [(*DSTAG* + 1) \* 0.5]

{4.7.2.8} *HTG* = [(*HHU2* - *HHU1*) + (*ZZRAN* \* 0.1)] \* [(*DSTAG* + 1) \* 0.5]

{4.7.2.9} *HTG* = [(*XWT* \* ((*HHE2* - *HHE1*) \* *ADJUST*) + (1 - *XWT*) \* (*HHU2* - *HHU1*)) + (*ZZRAN* \* 0.1)] \*

[(*DSTAG* + 1) \* 0.5]

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

Even-aged height is estimated using Alexander’s (1967) site curves for Engelmann spruce and sub-alpine fir. Height is estimated using equation {4.7.2.10}. If the tree age is less than 30 years, then the height estimate is modified using equation {4.7.2.11}.

{4.7.2.10} *HTE* = (4.5 + (2.75780 \* *SJ* ^0.83312) \* [1 – exp(-0.015701 \* *AGETEM*)] ^ (22.71944 \* *SJ*^ -0.63557)) \* *FACTOR*

{4.7.2.11} *HTE* = 4.5 + [(*HTE* – 4.5) / *AGETEM*] \* *A*

where:

*HTE* is the even-aged height estimate

*A* is breast-height tree age

*SJ* is species site index on a base-age basis

*AGETEM* is the tree’s breast-height age, bounded *AGETEM* <u>></u> 30

*FACTOR* is an adjustment based on the ratio of stand basal area in trees larger than the diameter class for the subject tree to total stand basal area (*FACTOR* = (1 – (*BAU* / *BA*)) bounded 0.728 <u><</u> *FACTOR* <u><</u> 1.0)

*BAU* is total basal area in trees in larger diameter classes than the subject tree

*BA* is total stand basal area

The estimate for uneven-aged stands is similarly obtained from equations that predict a tree’s future height based on stand and tree variables, equation {4.7.2.12}.

{4.7.2.12} *HTU* = 4.5 + (-2.04 + 1.4534 \* *SJ*) \* [(1 – exp(-0.058112 \* *DBH*)) ^ (1.8944 \* (*BA*^ -0.192979)]

where:

*HTU* is the uneven-aged height estimate

*SJ* is species site index on a base-age basis

*DBH* is tree diameter at breast height

*BA* is total stand basal area, bounded to be <u>></u> 10

Height growth for common pinyon, western juniper, Gambel oak, singleleaf pinyon, Rocky Mountain juniper, Utah juniper, Great Basin bristlecone pine, curl-leaf mountain mahogany, bigtooth maple, and other hardwood is estimated using small tree height growth equations discussed in section 4.6.1 for all sizes of trees.

## 5.0 Mortality Model

The UT variant uses an SDI-based mortality model as described in Section 7.3.2 of Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002, referred to as EFVS). This SDI-based mortality model is comprised of two steps: 1) determining the amount of stand mortality (section 7.3.2.1 of EFVS) and 2) dispersing stand mortality to individual tree records (section7.3.2.2 of EFVS). In determining the amount of stand mortality, the summation of individual tree background mortality rates is used when stand density is below the minimum level for density dependent mortality (default is 55% of maximum SDI), while stand level density-related mortality rates are used when stands are above this minimum level.

The equation used to calculate individual tree background mortality rates for all species is shown in equation {5.0.1}, and this is then adjusted to the length of the cycle by using a compound interest formula as shown in equation {5.0.2}. Coefficients for these equations are shown in table 5.0.1. The overall amount of mortality calculated for the stand is the summation of the final mortality rate (*RIP*) across all live tree records.

{5.0.1} RI = [1 / (1 + exp(p0 + p1 \* DBH))] \* 0.5

{5.0.2} RIP = 1 – (1 – RI*)*^Y

where:

RI is the proportion of the tree record attributed to mortality

RIP is the final mortality rate adjusted to the length of the cycle

DBH is tree diameter at breast height

Y is length of the current projection cycle in years

p0 and p1 are species-specific coefficients shown in table 5.0.1

**Table 5.0.1 Coefficients used in the background mortality equation {5.0.1} in the UT variant.**

| **Species Code** | **p0** | **p1** |
| --- | --- | --- |
| WB | 6.5112 | -0.0052485 |
| LM | 6.5112 | -0.0052485 |
| DF | 7.2985 | -0.0129121 |
| WF | 5.1677 | -0.0077681 |
| BS | 9.6943 | -0.0127328 |
| AS | 5.1677 | -0.0077681 |
| LP | 5.9617 | -0.0340128 |
| ES | 9.6943 | -0.0127328 |
| AF | 5.1677 | -0.0077681 |
| PP | 5.5877 | -0.005348 |
| PI | 5.1677 | -0.0077681 |
| WJ | 5.1677 | -0.0077681 |
| GO | 5.1677 | -0.0077681 |
| PM | 5.1677 | -0.0077681 |
| RM | 5.1677 | -0.0077681 |
| UJ | 5.1677 | -0.0077681 |
| GB | 5.1677 | -0.0077681 |
| NC | 5.9617 | -0.0052485 |
| FC | 5.9617 | -0.0052485 |
| MC | 5.9617 | -0.0340128 |
| BI | 5.5877 | -0.005348 |
| BE | 5.9617 | -0.0052485 |
| OS | 5.1677 | -0.0077681 |
| OH | 5.1677 | -0.0077681 |

When stand density-related mortality is in effect, the total amount of stand mortality is determined based on the trajectory developed from the relationship between stand SDI and the maximum SDI for the stand. This is explained in section 7.3.2.1 of EFVS.

Once the amount of stand mortality is determined based on either the summation of background mortality rates or density-related mortality rates, mortality is dispersed to individual tree records in relation to a tree’s percentile in the basal area distribution (PCT) using equations {5.0.3}. This value is then adjusted by a species-specific mortality modifier (representing the species’ tolerance), and for some species a crown ratio modifier, to obtain a final mortality rate as shown in equations {5.0.4} and {5.0.5}.

The mortality model makes multiple passes through the tree records multiplying a record’s trees-per-acre value times the final mortality rate (MORT), accumulating the results, and reducing the trees-per-acre representation until the desired mortality level has been reached. If the stand still exceeds the basal area maximum sustainable on the site the mortality rates are proportionally adjusted to reduce the stand to the specified basal area maximum.

{5.0.3} *MR* = [0.84525 – (0.01074 \* *PCT*) + (0.0000002 \* *PCT^*3)]

{5.0.4} Used for Great Basin bristlecone pine, narrowleaf cottonwood, Fremont cottonwood, and boxelder:

*MORT* = *MR* \* (1– (*CR* / *100*)) \* *MWT* \* 0.1

{5.0.5} For all other species:

*MORT* = *MR* \* *MWT* \* 0.1

where:

*MR* is the proportion of the tree record attributed to mortality (bounded: 0.01 <u><</u> *MR* <u><</u> 1)

*PCT* is the subject tree’s percentile in the basal area distribution of the stand

*CR* is the subject tree’s crown ratio expressed as a percent

*MORT* is the final mortality rate of the tree record

*MWT* is a mortality weight value based on a species’ tolerance shown in table 5.2.1

**Table 5.2.1 *MWT* values for the mortality equations {5.0.4} and {5.0.5} in the UT variant.**

|  |  |
| --- | --- |
| **Species Code** | ***MWT*** |
| WB | 0.80 |
| LM | 0.70 |
| DF | 0.55 |
| WF | 0.50 |
| BS | 0.50 |
| AS | 1.00 |
| LP | 0.90 |
| ES | 0.50 |
| AF | 0.60 |
| PP | 0.85 |
| PI | 0.70 |
| WJ | 0.70 |
| GO | 0.70 |
| PM | 0.70 |
| RM | 0.70 |
| UJ | 0.70 |
| GB | 0.90 |
| NC | 0.90 |
| FC | 0.90 |
| MC | 1.10 |
| BI | 0.70 |
| BE | 0.90 |
| OS | 0.75 |
| OH | 0.70 |

# 6.0 Regeneration

The UT variant contains a partial establishment model which may be used to input regeneration and ingrowth into simulations. A more detailed description of how the partial establishment model works can be found in section 5.4.5 of the Essential FVS Guide (Dixon 2002).

The regeneration model is used to simulate stand establishment from bare ground, or to bring seedlings and sprouts into a simulation with existing trees. Sprouts are automatically added to the simulation following harvest or burning of known sprouting species (see table 6.0.1 for sprouting species).

**Table 6.0.1 Regeneration parameters by species in the UT variant.**

| **Species Code** | **Sprouting Species** | **Minimum Bud Width (in)** | **Minimum Tree Height (ft)** | **Maximum Tree Height (ft)** |
| --- | --- | --- | --- | --- |
| WB | No | 0.4 | 1 | 9 |
| LM | No | 0.4 | 1 | 9 |
| DF | No | 0.3 | 1 | 10 |
| WF | No | 0.3 | 0.5 | 7 |
| BS | No | 0.3 | 0.5 | 7 |
| AS | Yes | 0.2 | 6 | 16 |
| LP | No | 0.4 | 1 | 10 |
| ES | No | 0.3 | 0.5 | 7 |
| AF | No | 0.3 | 0.5 | 7 |
| PP | No | 0.5 | 1 | 10 |
| PI | No | 0.4 | 0.5 | 6 |
| WJ | No | 0.3 | 0.5 | 6 |
| GO | Yes | 0.3 | 0.5 | 10 |
| PM | No | 0.4 | 0.5 | 6 |
| RM | No | 0.3 | 0.5 | 6 |
| UJ | No | 0.3 | 0.5 | 6 |
| GB | No | 0.4 | 0.5 | 9 |
| NC | Yes | 0.3 | 3 | 16 |
| FC | Yes | 0.3 | 3 | 16 |
| MC | No | 0.2 | 0.5 | 6 |
| BI | Yes | 0.2 | 0.5 | 6 |
| BE | Yes | 0.3 | 3 | 16 |
| OS | No | 0.2 | 0.5 | 9 |
| OH | No | 0.3 | 0.5 | 10 |

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

**Table 6.0.2 Sprouting algorithm parameters for sprouting species in the UT variant.**

| **Species Code** | **Sprouting Probability** | **Number of Sprout Records** | **Source** |
| --- | --- | --- | --- |
| AS | {6.0.4} | 2 | Keyser 2001 |
| GO | 0.8 | {6.0.1} | Simonin 2000 |
| NC | 0.8 | {6.0.2} | Simonin 2001 |
| FC | 0.8 | {6.0.2} | Taylor 2000 |
| BI | 0.7 | 1 | Tollefson 2006 |
| BE | 0.6 for DBH < 15",  0.3 for DBH > 15" | 1 | Maeglin and Ohman 1973  Eyre 1980 |

Regeneration of seedlings must be specified by the user with the partial establishment model by using the PLANT or NATURAL keywords. Height of the seedlings is estimated in two steps. First, the height is estimated when a tree is 5 years old (or the end of the cycle – whichever comes first) by using the small-tree height growth equations found in section 4.6.1. Users may override this value by entering a height in field 6 of the PLANT or NATURAL keyword; however the height entered in field 6 is not subject to minimum height restrictions and seedlings as small as 0.05 feet may be established. The second step also uses the equations in section 4.6.1, which grow the trees in height from the point five years after establishment to the end of the cycle.

Seedlings and sprouts are passed to the main FVS model at the end of the growth cycle in which regeneration is established. Unless noted above, seedlings being passed are subject to minimum and maximum height constraints and a minimum budwidth constraint shown in table 6.0.1. After seedling height is estimated, diameter growth is estimated using equations described in section 4.6.2. Crown ratios on newly established trees are estimated as described in section 4.3.1.

Regenerated trees and sprouts can be identified in the treelist output file with tree identification numbers beginning with the letters “ES”.

# 7.0 Volume

In the UT variant, volume is calculated for four merchantability standards: total stem cubic feet, merchantable stem cubic feet, sawlog stem cubic feet, and merchantable stem board feet (Scribner Decimal C). Sawlog cubic foot volume is only reported when the FIAVBC keyword is in use. Volume estimation is based on methods contained in the National Volume Estimator Library maintained by the Forest Products Measurements group in the Forest Management Service Center (Volume Estimator Library Equations 2009). The default volume merchantability standards and equation numbers for the UT variant are shown in tables 7.0.1-7.0.3.

Volume computation methods used by the Forest Inventory and Analysis (FIA) program can be requested with the FIAVBC keyword. This keyword encompasses the National Scale Volume and Biomass estimators (NSVB; Westfall et al. 2024) and regional equations used for woodland species (Burrill et al. 2024). More information about the FIAVBC keyword and required input variables can be found in the Essential FVS Guide (Dixon 2002).

**Table 7.0.1 Volume merchantability standards for the UT variant.**

|  |  |  |
| --- | --- | --- |
| **Merchantable Cubic Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | LP | All Other Species |
| All location codes | 7.0 / 6.0 inches | 8.0 / 6.0 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| **Merchantable Board Foot Volume Specifications\*:** | | |
| Minimum DBH / Top Diameter | LP | All Other Species |
| All location codes | 7.0 / 6.0 inches | 8.0 / 6.0 inches |
| Stump Height | 1.0 foot | 1.0 foot |

\* Board foot volume is not calculated for common pinyon, western juniper, Gambel oak, singleleaf pinyon, Utah juniper, or curl-leaf mountain mahogany when using the default volume equations. Additionally, no volumes of any kind are calculated for Rocky Mountain juniper.

**Table 7.0.2 Volume equation defaults for each species, at specific location codes, with model name.**

| **Common Name** | **Location Code** | **Equation Number** | **Reference** |
| --- | --- | --- | --- |
| whitebark pine | All | 400MATW108 | Rustagi and Loveless Profile Models |
| limber pine | All | 400MATW108 | Rustagi and Loveless Profile Models |
| Douglas-fir | All | 400MATW202 | Rustagi and Loveless Profile Models |
| white fir | All | 400MATW015 | Rustagi and Loveless Profile Models |
| blue spruce | 407 | 407FW2W093 | Flewelling's 2-Point Profile Model |
| blue spruce | 408 | 407MATW093 | Rustagi and Loveless Profile Models |
| blue spruce | 401, 410, 418, 419 | 400MATW093 | Rustagi and Loveless Profile Models |
| quaking aspen | All | 400MATW746 | Rustagi and Loveless Profile Models |
| lodgepole pine | All | 400MATW108 | Rustagi and Loveless Profile Models |
| Engelmann spruce | 401, 410, 418, 419 | 400MATW093 | Rustagi and Loveless Profile Models |
| Engelmann spruce | 407 | 407FW2W093 | Flewelling's 2-Point Profile Model |
| Engelmann spruce | 408 | 407MATW093 | Rustagi and Loveless Profile Models |
| subalpine fir | All | 400MATW019 | Rustagi and Loveless Profile Models |
| ponderosa pine | 401 | 401MATW122 | Rustagi and Loveless Profile Models |
| ponderosa pine | 407, 408, 410, 418, 419 | 402MATW122 | Rustagi and Loveless Profile Models |
| common pinyon | All | 400DVEW106 | Chojnacky Equations |
| western juniper | All | 400DVEW064 | Chojnacky Equations |
| Gambel oak | All | 300DVEW800 | Chojnacky Equations |
| singleleaf pinyon | All | 400DVEW133 | Chojnacky Equations |
| Rocky Mountain juniper | All | 400DVEW066 | Chojnacky Equations |
| Utah juniper | All | 400DVEW065 | Chojnacky Equations |
| Great Basin bristlecone pine | All | 400MATW108 | Rustagi and Loveless Profile Models |
| narrowleaf cottonwood | All | 400MATW108 | Rustagi and Loveless Profile Models |
| Fremont cottonwood | All | 400MATW108 | Rustagi and Loveless Profile Models |
| curl-leaf mountain mahogany | All | 400DVEW475 | Chojnacky Equations |
| bigtooth maple | All | 400MATW108 | Rustagi and Loveless Profile Models |
| boxelder | All | 400MATW108 | Rustagi and Loveless Profile Models |
| other softwood | All | 400MATW108 | Rustagi and Loveless Profile Models |
| other hardwood | All | 400DVEW998 | Chojnacky Equations |

**Table 7.0.3 Citations by Volume Model**

| **Model Name** | **Citation** |
| --- | --- |
| Chojnacky Equations | David Chojnacky 1985. Pinyon-Juniper Volume Equations for the Central Rocky Mountain States. Intermountain Research Station Research Paper INT-339. |
| Flewelling's 2-Point Profile Model | Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II. |
| Rustagi and and Loveless Profile Models | Rustagi, K.R. and Loveless, R.S.,Jr., 1991. Compatible variable-form volume and stem-profile equations for Douglas-fir. Can. J. For. Res. 21:143-151. |

# 8.0 Fire and Fuels Extension (FFE-FVS)

The Fire and Fuels Extension to the Forest Vegetation Simulator (FFE-FVS) (Reinhardt and Crookston 2003) integrates FVS with models of fire behavior, fire effects, and fuel and snag dynamics. This allows users to simulate various management scenarios and compare their effect on potential fire hazard, surface fuel loading, snag levels, and stored carbon over time. Users can also simulate prescribed burns and wildfires and get estimates of the associated fire effects such as tree mortality, fuel consumption, and smoke production, as well as see their effect on future stand characteristics. FFE-FVS, like FVS, is run on individual stands, but it can be used to provide estimates of stand characteristics such as canopy base height and canopy bulk density when needed for landscape-level fire models.

For more information on FFE-FVS and how it is calibrated for the UT variant, refer to the updated FFE-FVS model documentation (Rebain, comp. 2010) available on the FVS website.

# 9.0 Insect and Disease Extensions

FVS Insect and Pathogen models for dwarf mistletoe and western root disease have been developed for the UT variant through the participation and contribution of various organizations led by Forest Health Protection. These models are currently maintained by the Forest Management Service Center and regional Forest Health Protection specialists. Additional details regarding each model may be found in chapter 8 of the Essential FVS Users Guide (Dixon 2002).

# 10.0 Literature Cited

Alexander, R.R. 1967. Site Indices for Engelmann Spruce. Res. Pap. RM-32. Forest Service, Rocky Mountain Research Station. 7p.

Alexander, R.R., Tackle, D., and Dahms, W.G. 1967. Site Indices for Lodgepole Pine with Corrections for Stand Density Methodology. Res. Pap. RM-29. Forest Service, Rocky Mountain Research Station. 18 p.

Arney, J. D. 1985. A modeling strategy for the growth projection of managed stands. Canadian Journal of Forest Research. 15(3):511-518.

Bechtold, William A. 2004. Largest-crown-diameter Prediction Models for 53 Species in the Western United States. WJAF. Forest Service. 19(4): pp 241-245.

Brickell, James E. 1970. Equations and Computer subroutines for Estimating Site Quality of Eight Rocky Mounatin Species. Res. Pap. INT-75. Ogden, UT: Forest Service, Intermounatin Forest and Range Experimnet Station. 24 p.

Burrill, Elizabeth A.; DiTommaso, Andrea M.; Turner, Jeffery A.; Pugh, Scott A.; Christensen, Glenn; Kralicek, Karin M.; Perry, Carol J.; Lepine, Lucie C.; Walker, David M.; Conkling, Barbara L. 2024. The Forest Inventory and Analysis Database, FIADB user guides, volume: database description (version 9.3), nationwide forest inventory (NFI). U.S. Department of Agriculture, Forest Service. 1026 p. [Online].

Chojnacky, David 1985. Pinyon-Juniper Volume Equations for the Central Rocky Mountain States. Intermountain Research Station Research Paper INT-339.

Cole, D. M.; Stage, A. R. 1972. Estimating future diameters of lodgepole pine. Res. Pap. INT-131. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 20p.

Crookston, Nicholas L. 2005. Draft: Allometric Crown Width Equations for 34 Northwest United States Tree Species Estimated Using Generalized Linear Mixed Effects Models.

Curtis, Robert O. 1967. Height-diameter and height-diameter-age equations for second-growth Douglas-fir. Forest Science 13(4):365-375.

Curtis, Robert O.; Herman, Francis R.; DeMars, Donald J. 1974. Height growth and site index for Douglas-fir in high-elevation forests of the Oregon-Washington Cascades. Forest Science 20(4):307-316.

Dixon, G. E. 1985. Crown ratio modeling using stand density index and the Weibull distribution. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 13p.

Dixon, Gary E. comp. 2002 (revised frequently). Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U.S. Department of Agriculture, Forest Service, Forest Management Service Center.

Donnelly, Dennis M., Betters, David R., Turner, Matthew T., and Gaines, Robert E. 1992. Thinning even-aged forest stands: Behavior of singular path solutions in optimal control analyses. Res. Pap. RM-307. Fort Collins, CO: Forest Service. Rocky Mountain Forest and Range Experiment Station. 12 p.

Donnelly, Dennis. 1996. Internal document on file. Data provided from Region 6. Fort Collins, CO: Forest Service.

Edminster, Carleton B., Mowrer, Todd H., and Shepperd, Wayne D. 1985. Site index curves for aspen in the central Rocky Mountains. Res. Note RM-453. Fort Collins, CO: Forest Service, Rocky Mountain Forest and Range Experiment Station. 4p.

Eyre, F. H., ed. 1980. Forest cover types of the United States and Canada. Washington, DC: Society of American Foresters. 148 p.

Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II.

Johnson, N.L. 1949. Bivariate distributions based on simple translation systems. Biometrika 36: 297–304.

Krajicek, J.; Brinkman, K.; Gingrich, S. 1961. Crown competition – a measure of density. Forest Science. 7(1):35-42

Maeglin, R. R., and L. F. Ohmann. 1973. Boxelder (Acer negundo): a review and commentary. Bulletin of the Torrey Botanical Club 100:357-363.

Meyer, Walter H. 1961.rev. Yield of even-aged stands of ponderosa pine. Tech. Bull. No. 630. Washington D.C.: Forest Service

Rebain, Stephanie A. comp. 2010 (revised frequently). The Fire and Fuels Extension to the Forest Vegetation Simulator: Updated Model Documentation. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 379 p.

Reinhardt, Elizabeth; Crookston, Nicholas L. (Technical Editors). 2003. The Fire and Fuels Extension to the Forest Vegetation Simulator. Gen. Tech. Rep. RMRS-GTR-116. Ogden, UT: U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station. 209 p.

Rustagi, K.R. and Loveless, R.S.,Jr., 1991. Compatible variable-form volume and stem-profile equations for Douglas-fir. Can. J. For. Res. 21:143-151.

Schreuder, H.T. and W.L. Hafley. 1977. A Useful Distribution for Describing Stand Structure of Tree Heights and Diameters. Biometrics 33, 471-478.

Shepperd, Wayne D. 1995. Unpublished equation. Data on file. Fort Collins, CO: Forest Service, Rocky Mountain Research Station.

Simonin, Kevin A. 2000. Quercus gambelii. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Simonin, Kevin A. 2001. Populus angustifolia. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Stage, A. R. 1973. Prognosis Model for stand development. Res. Paper INT-137. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 32p.

Taylor, Jennifer L. 2000. Populus fremontii. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Tollefson, Jennifer E. 2006. Acer grandidentatum. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Van Dyck, Michael G.; Smith-Mateja, Erin E., comps. 2000 (revised frequently). Keyword reference guide for the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

Westfall, James A.; Coulston, John W.; Gray, Andrew N.; Shaw, John D.; Radtke, Philip J.; Walker, David M.; Weiskittel, Aaron R.; MacFarlane, David W.; Affleck, David L.R.; Zhao, Dehai; Temesgen, Hailemariam; Poudel, Krishna P.; Frank, Jereme M.; Prisley, Stephen P.; Wang, Yingfang; Sánchez Meador, Andrew J.; Auty, David; Domke, Grant M. 2024. A national-scale tree volume, biomass, and carbon modeling system for the United States. Gen. Tech. Rep. WO-104. Washington, DC: U.S. Department of Agriculture, Forest Service. 37 p.

Wykoff, W. R. 1990. A basal area increment model for individual conifers in the northern Rocky Mountains. For. Science 36(4): 1077-1104.

Wykoff, William R., Crookston, Nicholas L., and Stage, Albert R. 1982. User’s guide to the Stand Prognosis Model. Gen. Tech. Rep. INT-133. Ogden, UT: Forest Service, Intermountain Forest and Range Experiment Station. 112p.

# 11.0 Appendices

## 11.1 Appendix A: Habitat Type Codes

**Table 11.1.1 Habitat type codes recognized in the UT variant.**

| **FVS Seq Num** | **Habitat Type Codes** | **Habitat type Type Name** | **Abbreviation** |
| --- | --- | --- | --- |
| 1 | 050 | limber pine/Idaho fescue | PIFL2/FEID |
| 2 | 060 | limber pine/curl-leaf mountain mahogany | PIFL2/CELE3 |
| 3 | 070 | limber pine/common juniper | PIFL2/JUCO6 |
| 4 | 080 | limber pine/spike fescue | PIFL2/LEKI2 |
| 5 | 090 | limber pine | PIFL2 |
| 6 | 100 | ponderosa pine | PIPO |
| 7 | 120 | ponderosa pine/western needlegrass | PIPO/ACOCO |
| 8 | 130 | ponderosa pine/bluebunch wheatgrass | PIPO/PSSPS |
| 9 | 140 | ponderosa pine/Idaho fescue | PIPO/FEID |
| 10 | 150 | ponderosa pine/western snowberry | PIPO/SYOC h.t. |
| 11 | 160 | ponderosa pine/antelope bitterbrush | PIPO/PUTR2 |
| 12 | 161 | ponderosa pine/antelope bitterbrush-bluebunch wheatgrass | PIPO/PUTR2-PSSPS |
| 13 | 162 | ponderosa pine/antelope bitterbrush-Idaho fescue | PIPO/PUTR2-FEID |
| 14 | 170 | ponderosa pine/common snowberry | PIPO/SYAL |
| 15 | 190 | ponderosa pine/mallow ninebark | PIPO/PHMA5 |
| 16 | 195 | ponderosa pine/mountain snowberry | PIPO/SYOR2 |
| 17 | 41045 | limber pine/creeping barberry | PIFL2/MARE11 |
| 18 | 41115 | ponderosa pine/Geyer's sedge | PIPO/CAGE2 |
| 19 | 41141 | ponderosa pine/Idaho fescue-Idaho fescue | PIPO/FEID-FEID |
| 20 | 41143 | ponderosa pine/Idaho fescue/greenleaf manzanita | PIPO/FEID/ARPA6 |
| 21 | 41144 | ponderosa pine/Idaho fescue/big sagebrush | PIPO/FEID/ARTR2 |
| 22 | 41376 | Douglas-fir/sweetcicely/Oregon boxleaf | PSME/OSBE/PAMY |
| 23 | 41406 | blue spruce/bluebunch wheatgrass | PIPU/PSSPS |
| 24 | 41416 | Engelmann spruce/dwarf bilberry | PIEN/VACA13 |
| 25 | 41708 | subalpine fir/sicletop lousewort/Douglas-fir | ABLA/PERA/PSME |
| 26 | 41709 | subalpine fir/sicletop lousewort-sicletop lousewort | ABLA/PERA-PERA |
| 27 | 41715 | subalpine fir/creeping barberry-gooseberry currant | ABLA/MARE11-RIMO2 |
| 28 | 41716 | subalpine fir/creeping barberry-common juniper | ABLA/MARE11-JUCO6 |
| 29 | 41717 | subalpine fir/creeping barberry/Douglas-fir | ABLA/MARE11/PSME |
| 30 | 41725 | subalpine fir/grouse whortleberry/broadlef arnica | ABLA/VASC/ARLA8 |
| 31 | 41726 | subalpine fir/grouse whortleberry/Geyer's sedge | ABLA/VASC/CAGE2 |
| 32 | 41813 | subalpine fir/gooseberry currant/Fendler's meadow-rue | ABLA/RIMO2/THFE |
| 33 | 41814 | subalpine fir/gooseberry currant/lodgepole pine | ABLA/RIMO2/PICO |
| 34 | 41815 | subalpine fir/gooseberry currant/spike trisetum | ABLA/RIMO2/TRSP2 |
| 35 | 41862 | white fir/sweetcicely | ABCO/OSBE |
| 36 | 41864 | white fir/creeping barberry/mountain snowberry | ABCO/MARE11/SYOR2 |
| 37 | 41915 | lodgepole pine/bluejoint | PICO/CACA4 |
| 38 | 41956 | lodgepole pine/kinnikinnick | PICO/ARUV |
| 39 | 41957 | lodgepole pine/creeping barberry | PICO/MARE11 |
| 40 | 41970 | lodgepole pine/Ross' sedge | PICO/CARO5 |
| 41 | 41107 | ponderosa pine/greenleaf manzanita | PIPO/ARPA6 |
| 42 | 41108 | ponderosa pine/curl-leaf mountain mahogany | PIPO/CELE3 |
| 43 | 41109 | ponderosa pine/black sagebrush | PIPO/ARNO4 |
| 44 | 41111 | ponderosa pine/Gamble oak | PIPO/QUGA |
| 45 | 41112 | ponderosa pine/Gamble oak-mountain snowberry | PIPO/QUGA-SYOR2 |
| 46 | 41113 | ponderosa pine/Gamble oak-Gamble oak | PIPO/QUGA-QUGA |
| 47 | 41114 | ponderosa pine/mountain muhly | PIPO/MUMO |
| 48 | 41365 | Douglas-fir/greenleaf manzanita | PSME/ARPA6 |
| 49 | 41366 | Douglas-fir/alderleaf mountain mahogany | PSME/CEMO2 |
| 50 | 41367 | Douglas-fir/Gamble oak | PSME/QUGA |
| 51 | 41382 | Douglas-fir/creeping barberry/ponderosa pine | PSME/MARE11/PIPO |
| 52 | 41408 | blue spruce/field horsetail | PIPU/EQAR |
| 53 | 41409 | blue spruce/common juniper | PIPU/JUCO6 |
| 54 | 41746 | subalpine fir/Columbian monkshood | ABLA/ACCO4 |
| 55 | 41747 | subalpine fir/whortleberry | ABLA/VAMY2 |
| 56 | 41816 | subalpine fir/gooseberry currant/aspen bluebells | ABLA/RIMO2/MEAR6 |
| 57 | 41866 | white fir/creeping barberry-common juniper | ABCO/MARE11-JUCO6 |
| 58 | 41867 | white fir/mountain snowberry | ABCO/SYOR2 |
| 59 | 41868 | white fir/common juniper | ABCO/JUCO6 |
| 60 | 41869 | white fir/Gamble oak | ABCO/QUGA |
| 61 | 41871 | white fir/greenleaf manzanita | ABCO/ARPA6 |
| 62 | 41872 | white fir/curl-leaf mountain mahogany | ABCO/CELE3 |
| 63 | 41873 | white fir/Rocky Mountain maple | ABCO/ACGL |
| 64 | 42001 | quaking aspen/California false hellebore | POTR5/VECA2 |
| 65 | 42002 | quaking aspen/western brackenfern | POTR5/PTAQ |
| 66 | 42003 | quaking aspen/mule-ears | POTR5/WYAM |
| 67 | 42004 | quaking aspen/Thurber's fescue | POTR5/FETH |
| 68 | 42005 | quaking aspen/tall forb | POTR5/2FORB |
| 69 | 42006 | quaking aspen/pinegrass | POTR5/CARU |
| 70 | 42007 | quaking aspen/Fendler's meadow-rue | POTR5/THFE |
| 71 | 42008 | quaking aspen/California brome | POTR5/BRCA5 |
| 72 | 42009 | quaking aspen/Ross' sedge | POTR5/CARO5 |
| 73 | 42010 | quaking aspen/needle and thread | POTR5/HECOC8 |
| 74 | 42011 | quaking aspen/timber milkvetch | POTR5/ASMI9 |
| 75 | 42012 | quaking aspen/Kentucky bluegrass | POTR5/POPR |
| 76 | 42040 | quaking aspen/thimbleberry | POTR5/RUPA |
| 77 | 42041 | quaking aspen/red elderberry | POTR5/SARA2 |
| 78 | 42042 | quaking aspen/russet buffaloberry | POTR5/SHCA |
| 79 | 42043 | quaking aspen/mountain snowberry | POTR5/SYOR2 |
| 80 | 42044 | quaking aspen/mountain snowberry/tall forb phase | POTR5/SYOR2/2FORB |
| 81 | 42045 | quaking aspen/mountain snowberry/pinegrass | POTR5/SYOR2/CARU |
| 82 | 42046 | quaking aspen/mountain snowberry/Fendler's meadow-rue | POTR5/SYOR2/THFE |
| 83 | 42047 | quaking aspen/mountain snowberry/Thurber's fescue | POTR5/SYOR2/FETH |
| 84 | 42048 | quaking aspen/mountain snowberry/Ross' sedge | POTR5/SYOR2/CARO5 |
| 85 | 42049 | quaking aspen/mountain snowberry/mule-ears | POTR5/SYOR2/WYAM |
| 86 | 42050 | quaking aspen/mountain snowberry/California brome | POTR5/SYOR2/BRCA5 |
| 87 | 42051 | quaking aspen/mountain snowberry/Kentucky bluegrass | POTR5/SYOR2/POPR |
| 88 | 42052 | quaking aspen/common juniper | POTR5/JUCO6 |
| 89 | 42053 | quaking aspen/common juniper/Geyer's sedge | POTR5/JUCO6/CAGE2 |
| 90 | 42054 | quaking aspen/common juniper/silvery lupine | POTR5/JUCO6/LUAR3 |
| 91 | 42055 | quaking aspen/common juniper/timber milkvetch | POTR5/JUCO6/ASMI9 |
| 92 | 42056 | quaking aspen/big sagebrush | POTR5/ARTR2 |
| 93 | 42080 | quaking aspen/Scouler's willow | POTR5/SASC |
| 94 | 42081 | quaking aspen/Saskatoon serviceberry-mountain snowberry | POTR5/AMAL2-SYOR2 |
| 95 | 42082 | quaking aspen/Saskatoon serviceberry-mountain snowberry/tall forb | POTR5/AMAL2-SYOR2/2FORB |
| 96 | 42083 | quaking aspen/Saskatoon serviceberry-mountain snowberry/Fendler's meadow-rue | POTR5/AMAL2-SYOR2/THFE |
| 97 | 42084 | quaking aspen/Saskatoon serviceberry-mountain snowberry/pinegrass | POTR5/AMAL2-SYOR2/CARU |
| 98 | 42085 | quaking aspen/Saskatoon serviceberry-mountain snowberry/California brome | POTR5/AMAL2-SYOR2/BRCA5 |
| 99 | 42086 | quaking aspen/Saskatoon serviceberry-roundleaf snowberry | POTR5/AMAL2-SYRO |
| 100 | 42087 | quaking aspen/Saskatoon serviceberry/western brackenfern | POTR5/AMAL2/PTAQ |
| 101 | 42088 | quaking aspen/Saskatoon serviceberry/tall forb | POTR5/AMAL/2FORB |
| 102 | 42089 | quaking aspen/Saskatoon serviceberry/Fendler's meadow-rue | POTR5/AMAL2/THFE |
| 103 | 42101 | quaking aspen-subalpine fir/tall forb | POTR5-ABLA/2FORB |
| 104 | 42102 | quaking aspen-subalpine fir/Fendler's meadow-rue | POTR5-ABLA/THFE |
| 105 | 42103 | quaking aspen-subalpine fir/Geyer's sedge | POTR5-ABLA/CAGE2 |
| 106 | 42104 | quaking aspen-subalpine fir/Ross' sedge | POTR5-ABLA/CARO5 |
| 107 | 42105 | quaking aspen-subalpine fir/russet buffaloberry | POTR5-ABLA/SHCA |
| 108 | 42106 | quaking aspen-subalpine fir/mountain snowberry | POTR5-ABLA/SYOR2 |
| 109 | 42107 | quaking aspen-subalpine fir/mountain snowberry/tall forb | POTR5-ABLA/SYOR2/2FORB |
| 110 | 42108 | quaking aspen-subalpine fir/mountain snowberry/Fendler's meadow-rue | POTR5-ABLA/SYOR2/THFE |
| 111 | 42109 | quaking aspen-subalpine fir/mountain snowberry/California brome | POTR5-ABLA/SYOR2/BRCA5 |
| 112 | 42110 | quaking aspen-subalpine fir/common juniper | POTR5-ABLA/JUCO6 |
| 113 | 42111 | quaking aspen-subalpine fir/Saskatoon serviceberry | POTR5-ABLA/AMAL2 |
| 114 | 42201 | quaking aspen-lodgepole pine/Fendler's meadow-rue | POTR5-PICO/THFE |
| 115 | 42202 | quaking aspen-lodgepole pine/Geyer's sedge | POTR5-PICO/CAGE2 |
| 116 | 42203 | quaking aspen-lodgepole pine/mountain snowberry | POTR5-PICO/SYOR2 |
| 117 | 42204 | quaking aspen-lodgepole pine/common juniper | POTR5-PICO/JUCO6 |
| 118 | 42301 | quaking aspen-Douglas-fir/pinegrass | POTR5-PSME/CARU |
| 119 | 42302 | quaking aspen-Douglas-fir/mountain snowberry | POTR5-PSME/SYOR2 |
| 120 | 42303 | quaking aspen-Douglas-fir/common juniper | POTR5-PSME/JUCO |
| 121 | 42304 | quaking aspen-Douglas-fir/Saskatoon serviceberry | POTR5-PSME/AMAL2 |
| 122 | 42401 | quaking aspen-white fir/Kentucky bluegrass | POTR5-ABCO/POPR |
| 123 | 42402 | quaking aspen-white fir/mountain snowberry | POTR5-ABCO/SYOR2 |
| 124 | 42403 | quaking aspen-white fir/greenleaf manzanita | POTR5-ABCO/ARPA6 |
| 125 | 42500 | quaking aspen-blue spruce | POTR5-PIPU |
| 126 | 42600 | quaking aspen-limber pine | POTR5-PIFL2 |
| 127 | 42700 | quaking aspen-ponderosa pine | POTR5-PIPO |
| 128 | 43002 | spruce/redosier dogwood | PICEA/COSES |
| 129 | 43004 | spruce/field horsetail | PICEA/EQAR |
| 130 | 43006 | spruce/bluejoint | PICEA/CACA4 |
| 131 | 43012 | spruce/fragrant bedstraw | PICEA/GATR3 |
| 132 | 43105 | gray alder/northern black currant | ALIN2/RIHU |
| 133 | 43202 | Booth's willow/beaked sedge | SABO2/CARO6 |
| 134 | 43208 | Booth's willow/starry false lily of the vally | SABO2/MAST4 |
| 135 | 43225 | Geyer's willow/Kentucky bluegrass | SAGE2/POPR |
| 136 | 43227 | Geyer's willow/forb (mesic) | SAGE2/2FORB |
| 137 | 43241 | narrowleaf willow/field horsetail | SAEX/EQAR |
| 138 | 43271 | yellow willow | SALU2 |
| 139 | 43283 | mountain willow | SAEA |
| 140 | 43303 | Wolf's willow/Nebraska sedge | SAWO/CANE2 |
| 141 | 43305 | Wolf's willow/bluejoint | SAWO/CACA4 |
| 142 | 43307 | Wolf's willow/fowl bluegrass | SAWO/POPA2 |
| 143 | 43321 | diamondleaf willow | SAPL2 |
| 144 | 43354 | redosier dogwood/fragrant bedstraw | COSES/GATR3 |
| 145 | 43400 | alderleaf buckthorn | RHAL |
| 146 | 43552 | shrubby cinquefoil/Idaho fescue | DAFL3/FEID |
| 147 | 43602 | silver sagebrush/Idaho fescue | ARCA13/FEID |
| 148 | 43813 | sedge | CAREX |
| 149 | 43881 | fowl bluegrass | POPA2 |
| 150 | 43941 | forb (mesic, meadow) | 2FORB |
| 151 | 43003 | conifer/field horsetail | 2TE/EQAR |
| 152 | 43005 | conifer/bluejoint | 2TE/CACA4 |
| 153 | 43007 | conifer/blue wildrye | 2TE/ELGL |
| 154 | 43008 | conifer/shrubby cinquefoil | 2TE/DAFL3 |
| 155 | 43009 | conifer/tufted hairgrass | 2TE/DECA18 |
| 156 | 43011 | conifer/Columbian monkshood | 2TE/ACCO4 |
| 157 | 43013 | conifer/red baneberry | 2TE/ACRU2 |
| 158 | 43041 | narrowleaf cottonwood/water birch | POAN3/BEOC2 |
| 159 | 43042 | narrowleaf cottonwood/bigtooth maple | POAN3/ACGR3 |
| 160 | 43044 | narrowleaf cottonwood/Woods' rose | POAN3/ROWO |
| 161 | 43045 | narrowleaf cottonwood/fragrant sumac | POAN3/RHAR4 |
| 162 | 43081 | boxelder/redosier dogwood | ACNE2/COSE16 |
| 163 | 43082 | boxelder/field horsetail | ACNE2/EQAR |
| 164 | 43102 | gray alder/field horsetail | ALIN2/EQAR |
| 165 | 43201 | Booth's willow/water sedge | SABO2/CAAQ |
| 166 | 43209 | Booth's willow/mesic forb | SABO2/2FORB |
| 167 | 43210 | Booth's willow/mesic graminoid | SABO2/2GRAM |
| 168 | 43221 | Geyer's willow/water sedge | SAGE2/CAAQ |
| 169 | 43226 | Geyer's willow/tufted hairgrass | SAGE2/DECA18 |
| 170 | 43244 | narrowleaf willow/mesic graminoid | SAEX/2GRAM |
| 171 | 43245 | narrowleaf willow (barren) | SAEX |
| 172 | 43281 | Bebb willow/mesic graminoid | SABE2/2GRAM |
| 173 | 43286 | arroyo willow (barren) | SALA6 |
| 174 | 43322 | diamondleaf willow/water sedge | SAPL2/CAAQ |
| 175 | 43323 | diamondleaf willow/bluejoint | SAPL2/CACA4 |
| 176 | 43324 | diamondleaf willow/tufted hairgrass | SAPL2/DECA18 |
| 177 | 43326 | grayleaf willow/tufted hairgrass | SAGL/DECA18 |
| 178 | 43601 | silver sagebrush/tufted hairgrass | ARCA13/DECA18 |
| 179 | 43603 | silver sagebrush/sheep fescue | ARCA13/FEOV |
| 180 | 43802 | Buxbaum's sedge | CABU6 |
| 181 | 43804 | woollyfruit sedge | CALA11 |
| 182 | 43806 | mud sedge | CALI7 |
| 183 | 43810 | russet sedge | CAPH8 |
| 184 | 43851 | bluejoint | CACA4 |
| 185 | 43861 | timber oatgrass | DAIN |
| 186 | 43901 | white marsh marigold | CALE4 |
| 187 | 43925 | broadleaf cattail type | TYLA |
| 188 | 46001 | little sagebrush/bluebunch wheatgrass | ARAR8/PSSPS |
| 189 | 46002 | little sagebrush/Idaho fescue | ARAR8/FEID |
| 190 | 46003 | little sagebrush/Sandberg bluegrass | ARAR8/POSE |
| 191 | 46011 | silver sagebrush/mat muhly | ARCAB3/MURI |
| 192 | 46021 | silver sagebrush/Idaho fescue | ARCAV2/FEID |
| 193 | 46031 | little sagebrush/Idaho fescue | ARARL/FEID |
| 194 | 46041 | black sagebrush/bluebunch wheatgrass | ARNO4/PSSPS |
| 195 | 46042 | black sagebrush/Idaho fescue | ARNO4/FEID |
| 196 | 46043 | black sagebrush/needle and thread | ARNO4/HECOC8 |
| 197 | 46051 | scabland sagebrush/Sandberg bluegrass | ARRI2/POSE |
| 198 | 46061 | little sagebrush/Idaho fescue | ARART/FEID |
| 199 | 46101 | big sagebrush/mountain brome (subalpine) | ARTRS2/BRCA5 |
| 200 | 46111 | big sagebrush/bluebunch wheatgrass | ARTR2/PSSPS |
| 201 | 46112 | big sagebrush/basin wildrye | ARTR2/LECI4 |
| 202 | 46113 | big sagebrush/Idaho fescue | ARTR2/FEID |
| 203 | 46114 | big sagebrush/needle and thread grass | ARTR2/HECOC8 |
| 204 | 46131 | threetip sagebrush/bluebunch wheatgrass | ARTR4/PSSPS |
| 205 | 46132 | threetip sagebrush/Idaho fescue | ARTR4/FEID |
| 206 | 46133 | threetip sagebrush/needle and thread | ARTR4/HECOC8 |
| 207 | 46151 | mountain big sagebrush/bluebunch wheatgrass | ARTRV/PSSPS |
| 208 | 46152 | mountain big sagebrush/basin wildrye | ARTRV/LECI4 |
| 209 | 46153 | mountain big sagebrush/Idaho fescue | ARTRV/FEID |
| 210 | 46154 | mountain big sagebrush/needle and thread | ARTRV/HECOC8 |
| 211 | 46155 | mountain big sagebrush/Thurber's needlegrass | ARTRV/ACTH7 |
| 212 | 46156 | big sagebrush/Geyer's sedge | ARTRS2/CAGE2 |
| 213 | 46157 | mountain big sagebrush/mountain snowberry/bluebunch wheatgrass | ARTRV/SYOR2/PSSPS |
| 214 | 46158 | mountain big sagebrush/mountain snowberry/Idaho fescue | ARTRV/SYOR2/FEID |
| 215 | 46159 | mountain big sagebrush/mountain snowberry/Geyer's sedge | ARTRV/SYOR2/CAGE2 |
| 216 | 46171 | Wyoming big sagebrush/bluebunch wheatgrass | ARTRW8/PSSPS |
| 217 | 46172 | Wyoming big sagebrush/Sandberg bluegrass | ARTRW8/POSE |
| 218 | 46173 | Wyoming big sagebrush/squirreltail | ARTRW8/ELELE |
| 219 | 46174 | Wyoming big sagebrush/Thurber's needlegrass | ARTRW8/ACTH7 |
| 220 | 46191 | big sagebrush/bluebunch wheatgrass | ARTRX/PSSPS |
| 221 | 46192 | big sagebrush/Idaho fescue | ARTRX/FEID |
| 222 | 46201 | antelope bitterbrush/bluebunch wheatgrass | PUTR2/PSSPS |
| 223 | 46301 | curl-leaf mountain mahogany/bluebunch wheatgrass | CELE3/PSSPS |
| 224 | 47001 | Idaho fescue-bluebunch wheatgrass | FEID-PSSPS |
| 225 | 47011 | bluebunch wheatgrass-Sandberg bluegrass | PSSPS-POSE |
| 226 | 47012 | bluebunch wheatgrass-Idaho fescue | PSSPS-FEID |
| 227 | 47021 | sand dropseed-Sandberg bluegrass | SPCR-POSE |
| 228 | 47025 | Fendler threeawn-Sandberg bluegrass | ARPUL-POSE |
| 229 | 47002 | Idaho fescue/prairie Junegrass | FEID/KOMA |
| 230 | 47003 |  |  |
| 231 | 47004 |  |  |
| 232 | 43001 | conifer/redosier dogwood | 2TE/COSE16 |
| 233 | 43010 | conifer/Kentucky bluegrass | 2TE/POPR |
| 234 | 43043 | narrowleaf cottonwood/redosier dogwood | POAN3/COSES |
| 235 | 43046 | narrowleaf cottonwoon/Kentucky bluegrass | POAN3/POPR |
| 236 | 43101 | gray alder/redosier dogwood | ALIN2/COSE16 |
| 237 | 43103 | gray alder/mesic forb | ALIN2/2FORB |
| 238 | 43104 | gray alder/mesic graminoid | ALIN2/2GRAM |
| 239 | 43151 | water birch/redosier dogwood | BEOC2/COSE16 |
| 240 | 43152 | water birch/mesic forb | BEOC2/2FORB |
| 241 | 43155 | water birch/Kentucky bluegrass | BEOC2/POPR |
| 242 | 43203 | Booth's willow/Nebraska sedge | SABO2/CANE2 |
| 243 | 43204 | Booth's willow/bluejoint | SABO2/CACA4 |
| 244 | 43205 | Booth's willow/field horsetail | SABO2/EQAR |
| 245 | 43206 | Booth's willow/fowl bluegrass | SABO2/POPA2 |
| 246 | 43207 | Booth's willow/Kentucky bluegrass | SABO2/POPR |
| 247 | 43222 | Geyer's willow/beaked sedge | SAGE2/CARO6 |
| 248 | 43223 | Geyer's willow/bluejoint | SAGE2/CACA4 |
| 249 | 43224 | Geyer's willow/fowl bluegrass | SAGE2/POPA2 |
| 250 | 43228 | Geyer's willow/mesic graminoid | SAGE2/2GRAM |
| 251 | 43242 | narrowleaf willow/Kentucky bluegrass | SAEX/POPR |
| 252 | 43243 | narrowleaf willow/mesic forb | SAEX/2FORB |
| 253 | 43301 | Wolf's willow/field horsetail | SAWO/EQAR |
| 254 | 43302 | Wolf's willow/beaked sedge | SAWO/CARO6 |
| 255 | 43306 | Wolf's willow/tufted hairgrass | SAWO/DECA18 |
| 256 | 43308 | Wolf's willow/mesic forb | SAWO/2FORB |
| 257 | 43353 | redosier dogwood/common cowparsnip | COSES/HEMA80 |
| 258 | 43551 | shrubby cinquefoil/tufted hairgrass | DAFL3/DECA18 |
| 259 | 43553 | shrubby cinquefoil/Kentucky bluegrass | DAFL3/POPR |
| 260 | 43604 | silver sagebrush/Kentucky bluegrass | ARCA13/POPR |
| 261 | 43801 | water sedge | CAAQ |
| 262 | 43805 | woolly sedge | CAPE42 |
| 263 | 43807 | smallwing sedge | CAMI7 |
| 264 | 43808 | Nebraska sedge | CANE2 |
| 265 | 43809 | beaked sedge | CARO6 |
| 266 | 43812 | analogue sedge | CASI2 |
| 267 | 43821 | common spikerush | ELPA3 |
| 268 | 43822 | fewflower spikerush | ELQU2 |
| 269 | 43831 | Baltic rush | JUBA |
| 270 | 43871 | tufted hairgrass | DECA18 |
| 271 | 43882 | Kentucky bluegrass | POPR |
| 272 | 43921 | tall fringed bluebells | MECI3 |
| 273 | 43931 | California false hellebore | VECA2 |
| 274 | 41050 | limber pine/Idaho fescue | PIFL2/FEID |
| 275 | 41060 | limber pine/curl-leaf mountain mahogany | PIFL2/CELE3 |
| 276 | 41070 | limber pine/common juniper | PIFL2/JUCO6 |
| 277 | 41080 | limber pine/spike fescue | PIFL2/LEKI2 |
| 278 | 41140 | ponderosa pine/Idaho fescue | PIPO/FEID |
| 279 | 41160 | ponderosa pine/antelope bitterbrush | PIPO/PUTR2 |
| 280 | 41195 | ponderosa pine/mountain snowberry | PIPO/SYOR2 |
| 281 | 41220 | Douglas-fir/Idaho fescue | PSME/FEID |
| 282 | 41221 | Douglas-fir/Idaho fescue-Idaho fescue | PSME/FEID-FEID |
| 283 | 41260 | Douglas-fir/mallow ninebark | PSME/PHMA5 |
| 284 | 41265 | Douglas-fir/mallow ninebark/Douglas-fir | PSME/PHMA5/PSME |
| 285 | 41266 | Douglas-fir/mallow ninebark-Oregon boxleaf | PSME/PHMA5-PAMY |
| 286 | 41280 | Douglas-fir/thinleaf huckleberry | PSME/VAME |
| 287 | 41310 | Douglas-fir/common snowberry | PSME/SYAL |
| 288 | 41313 | Douglas-fir/common snowberry-common snowberry | PSME/SYAL-SYAL |
| 289 | 41320 | Douglas-fir/pinegrass | PSME/CARU |
| 290 | 41323 | Douglas-fir/pinegrass-pinegrass | PSME/CARU-CARU |
| 291 | 41340 | Douglas-fir/white spirea | PSME/SPBE2 |
| 292 | 41341 | Douglas-fir/white spirea-white spirea | PSME/SPBE2-SPBE2 |
| 293 | 41343 | Douglas-fir/white spirea/pinegrass | PSME/SPBE2/CARU |
| 294 | 41360 | Douglas-fir/common juniper | PSME/JUCO6 |
| 295 | 41370 | Douglas-fir/heartleaf arnica | PSME/ARCO9 |
| 296 | 41371 | Douglas-fir/heartleaf arnica-heartleaf arnica | PSME/ARCO9-ARCO9 |
| 297 | 41372 | Douglas-fir/heartleaf arnica/timber milkvetch | PSME/ARCO9/ASMI9 |
| 298 | 41375 | Douglas-fir/sweetcicely | PSME/OSBE |
| 299 | 41380 | Douglas-fir/mountain snowberry | PSME/SYOR2 |
| 300 | 41385 | Douglas-fir/curl-leaf mountain mahogany | PSME/CELE3 |
| 301 | 41390 | Douglas-fir/Rocky Mountain maple | PSME/ACGL |
| 302 | 41395 | Douglas-fir/creeping barberry | PSME/MARE11 |
| 303 | 41396 | Douglas-fir/creeping barberry-creeping barberry | PSME/MARE11-MARE11 |
| 304 | 41397 | Douglas-fir/creeping barberry-mountain snowberry | PSME/MARE11-SYOR2 |
| 305 | 41398 | Douglas-fir/creeping barberry/Geyer's sedge | PSME/MARE11/CAGE2 |
| 306 | 41399 | Douglas-fir/creeping barberry/common juniper | PSME/MARE11/JUCO6 |
| 307 | 41407 | blue spruce/creeping barberry | PIPU/MARE11 |
| 308 | 41410 | Engelmann spruce/field horsetail | PIEN/EQAR |
| 309 | 41415 | Engelmann spruce/white marsh marigold | PIEN/CALE4 |
| 310 | 41440 | Engelmann spruce/fragrant bedstraw | PIEN/GATR3 |
| 311 | 41485 | Engelmann spruce/grouse whortleberry | PIEN/VASC |
| 312 | 41490 | Engelmann spruce/softleaf sedge | PIEN/CADI6 |
| 313 | 41493 | Engelmann spruce/revolute hypnum moss | PIEN/HYRE70 |
| 314 | 41497 | Engelmann spruce/gooseberry current | PIEN/RIMO2 |
| 315 | 41601 | subalpine fir/red baneberry | ABLA/ACRU2 |
| 316 | 41603 | subalpine fir/mallow ninebark | ABLA/PHMA5 |
| 317 | 41635 | subalpine fir/claspleaf twistedstalk | ABLA/STAM2 |
| 318 | 41636 | subalpine fir/claspleaf twistedstalk-claspleaf twistedstalk phase | ABLA/STAM2-STAM2 |
| 319 | 41640 | subalpine fir/dwarf bilberry | ABLA/VACA13 |
| 320 | 41645 | subalpine fir/Rocky Mountain maple | ABLA/ACGL |
| 321 | 41650 | subalpine fir/bluejoint | ABLA/CACA4 |
| 322 | 41651 | subalpine fir/bluejoint-bluejoint | ABLA/CACA4-CACA4 |
| 323 | 41654 | subalpine fir/bluejoint/dwarf bilberry | ABLA/CACA4/VACA13 |
| 324 | 41655 | subalpine fir/bluejoint/western Labrador tea | ABLA/CACA4/LEGL |
| 325 | 41660 | subalpine fir/twinflower | ABLA/LIBO3 |
| 326 | 41661 | subalpine fir/twinflower-twinflower | ABLA/LIBO3-LIBO3 |
| 327 | 41663 | subalpine fir/twinflower/grouse whortleberry | ABLA/LIBO3/VASC |
| 328 | 41670 | subalpine fir/rusty menziesia | ABLA/MEFE |
| 329 | 41671 | subalpine fir/rusty menziesia-rusty menziesia | ABLA/MEFE-MEFE |
| 330 | 41690 | subalpine fir/common beargrass | ABLA/XETE |
| 331 | 41691 | subalpine fir/common beargrass/thinleaf huckleberry | ABLA/XETE/VAME |
| 332 | 41692 | subalpine fir/common beargrass/grouse whortleberry | ABLA/XETE/VASC |
| 333 | 41702 | subalpine fir/creeping barberry-creeping barberry | ABLA/MARE11-MARE11 |
| 334 | 41703 | subalpine fir/creeping barberry | ABLA/MARE11 |
| 335 | 41705 | subalpine fir/white spirea | ABLA/SPBE2 |
| 336 | 41706 | subalpine fir/creeping barberry/Engelmann spruce | ABLA/MARE11/PIEN |
| 337 | 41707 | subalpine fir/sicletop lousewort | ABLA/PERA |
| 338 | 41714 | subalpine fir/creeping barberry/limber pine | ABLA/MARE11/PIFL2 |
| 339 | 41720 | subalpine fir/thinleaf huckleberry | ABLA/VAME |
| 340 | 41721 | subalpine fir/thinleaf huckleberry/grouse whortleberry | ABLA/VAME/VASC |
| 341 | 41723 | subalpine fir/thinleaf huckleberry-thinleaf huckleberry | ABLA/VAME-VAME |
| 342 | 41730 | subalpine fir/grouse whortleberry | ABLA/VASC |
| 343 | 41731 | subalpine fir/grouse whortleberry/pinegrass | ABLA/VASC/CARU |
| 344 | 41732 | subalpine fir/grouse whortleberry-grouse whortleberry | ABLA/VASC-VASC |
| 345 | 41734 | subalpine fir/grouse whortleberry/whitebark pine | ABLA/VASC/PIAL |
| 346 | 41745 | subalpine fir/common juniper | ABLA/JUCO6 |
| 347 | 41750 | subalpine fir/pinegrass | ABLA/CARU |
| 348 | 41760 | subalpine fir/sweetcicely | ABLA/OSBE |
| 349 | 41780 | subalpine fir/heartleaf arnica | ABLA/ARCO9 |
| 350 | 41790 | subalpine fir/Geyer's sedge | ABLA/CAGE2 |
| 351 | 41791 | subalpine fir/Geyer's sedge-Geyer'ssedge | ABLA/CAGE2-CAGE2 |
| 352 | 41795 | subalpine fir/Ross' sedge | ABLA/CARO5 |
| 353 | 41810 | subalpine fir/gooseberry currant | ABLA/RIMO2 |
| 354 | 41811 | subalpine fir/gooseberry currant-gooseberry currant | ABLA/RIMO2-RIMO2 |
| 355 | 41830 | subalpine fir/Hitchcock's smooth woodrush | ABLA/LUGLH |
| 356 | 41831 | subalpine fir/Hitchcock's smooth woodrush/grouse whortleberry | ABLA/LUGLH/VASC |
| 357 | 41861 | white fir/mallow ninebark | ABCO/PHMA5 |
| 358 | 41863 | white fir/creeping barberry | ABCO/MARE11 |
| 359 | 41865 | white fir/creeping barberry-creeping barberry | ABCO/MARE11-MARE11 |
| 360 | 41920 | lodgepole pine/dwarf bilberry | PICO/VACA13 |
| 361 | 41940 | lodgepole pine/grouse whortleberry | PICO/VASC |
| 362 | 41955 | lodgepole pine/Geyer's sedge | PICO/CAGE2 |
| 363 | 41960 | lodgepole pine/common juniper | PICO/JUCO6 |

The U.S. Department of Agriculture (USDA) prohibits discrimination in all its programs and activities on the basis of race, color, national origin, sex, religion, age, disability, political beliefs, sexual orientation, or marital or family status. (Not all prohibited bases apply to all programs.) Persons with disabilities who require alternative means for communication of program information (Braille, large print, audiotape, etc.) should contact USDA’s TARGET Center at (202) 720-2600 (voice and TDD).

To file a complaint of discrimination, write USDA, Director, Office of Civil Rights, Room 326-W, Whitten Building, 1400 Independence Avenue, SW, Washington, DC 20250-9410 or call (202) 720-5964 (voice or TDD). USDA is an equal opportunity provider and employer.