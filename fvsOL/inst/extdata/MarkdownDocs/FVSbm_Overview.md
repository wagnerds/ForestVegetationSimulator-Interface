Blue Mountains (BM) Variant Overview of the Forest Vegetation Simulator

September 2025

**![](data:image/jpeg;base64...)**

![](data:image/jpeg;base64...)Ponderosa pine stand, Umatilla National Forest

(David Powell, FS-R6)

Blue Mountains (BM) Variant Overview of the Forest Vegetation Simulator

# Authors and Contributors:

The FVS staff has maintained model documentation for this variant in the form of a variant overview since its release in 1986. The original author was Ralph Johnson. In 2008, the previous document was replaced with this updated variant overview. Gary Dixon, Christopher Dixon, Robert Havis, Chad Keyser, Stephanie Rebain, Erin Smith-Mateja, and Don Vandendriesche were involved with this major update. Chad Keyser cross-checked information contained in this variant overview with the FVS source code. In 2009, Gary Dixon expanded the species list and made significant updates to this variant overview.

FVS Staff. 2008 (revised September 23, 2025). Blue Mountains (BM) Variant Overview – Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 60p.

Table of Contents

[Authors and Contributors: ii](#_Toc209542033)

[1.0 Introduction 1](#_Toc209542034)

[2.0 Geographic Range 2](#_Toc209542035)

[3.0 Control Variables 3](#_Toc209542036)

[3.1 Location Codes 3](#_Toc209542037)

[3.2 Species Codes 3](#_Toc209542038)

[3.3 Habitat Type, Plant Association, and Ecological Unit Codes 4](#_Toc209542039)

[3.4 Site Index 4](#_Toc209542040)

[3.5 Maximum Density 5](#_Toc209542041)

[4.0 Growth Relationships 7](#_Toc209542042)

[4.1 Height-Diameter Relationships 7](#_Toc209542043)

[4.2 Bark Ratio Relationships 9](#_Toc209542044)

[4.3 Crown Ratio Relationships 11](#_Toc209542045)

[4.3.1 Crown Ratio Dubbing 11](#_Toc209542046)

[4.3.2 Crown Ratio Change 13](#_Toc209542047)

[4.3.3 Crown Ratio for Newly Established Trees 14](#_Toc209542048)

[4.4 Crown Width Relationships 14](#_Toc209542049)

[4.5 Crown Competition Factor 17](#_Toc209542050)

[4.6 Small Tree Growth Relationships 18](#_Toc209542051)

[4.6.1 Small Tree Height Growth 19](#_Toc209542052)

[4.6.2 Small Tree Diameter Growth 22](#_Toc209542053)

[4.7 Large Tree Growth Relationships 23](#_Toc209542054)

[4.7.1 Large Tree Diameter Growth 23](#_Toc209542055)

[4.7.2 Large Tree Height Growth 29](#_Toc209542056)

[5.0 Mortality Model 36](#_Toc209542057)

[6.0 Regeneration 39](#_Toc209542058)

[7.0 Volume 42](#_Toc209542059)

[8.0 Fire and Fuels Extension (FFE-FVS) 44](#_Toc209542060)

[9.0 Insect and Disease Extensions 45](#_Toc209542061)

[10.0 Literature Cited 46](#_Toc209542062)

[11.0 Appendices 50](#_Toc209542063)

[11.1 Appendix A. Distribution of Data Samples 50](#_Toc209542064)

[11.2 Appendix B. Plant Association Codes 52](#_Toc209542065)

Quick Guide to Default Settings

|  |  |  |
| --- | --- | --- |
| **Parameter or Attribute** | **Default Setting** | |
| Number of Projection Cycles | 1 (10 if using FVS GUI) | |
| Projection Cycle Length | 10 years | |
| Location Code (National Forest) | 616 – Wallowa-Whitman | |
| Plant Association Code | 79 (CWG113 ABGR/CARU-BLUE) | |
| Slope | 5 percent | |
| Aspect | 0 (no meaningful aspect) | |
| Elevation | 45 (4500 feet) | |
| Latitude / Longitude | Latitude | Longitude |
| All location codes | 45 | 118 |
| Site Species | Plant Association Code specific | |
| Site Index | Plant Association Code specific | |
| Maximum Stand Density Index | Plant Association Code specific | |
| Maximum Basal Area | Based on maximum stand density index | |
| Volume Equations | National Volume Estimator Library | |
| Merchantable Cubic Foot Volume Specifications: | | |
| Minimum DBH / Top Diameter | LP | All Other Species |
| All location codes | 6.0 / 4.5 inches | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| Merchantable Board Foot Volume Specifications: | | |
| Minimum DBH / Top Diameter | LP | All Other Species |
| All location codes | 6.0 / 4.5 inches | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| Sampling Design: | | |
| Large Trees (variable radius plot) | 40 BAF | |
| Small Trees (fixed radius plot) | 1/300th Acre | |
| Breakpoint DBH | 5.0 inches | |

# 1.0 Introduction

The Forest Vegetation Simulator (FVS) is an individual tree, distance independent growth and yield model with linkable modules called extensions, which simulate various insect and pathogen impacts, fire effects, fuel loading, snag dynamics, and development of understory tree vegetation. FVS can simulate a wide variety of forest types, stand structures, and pure or mixed species stands.

New “variants” of the FVS model are created by imbedding new tree growth, mortality, and volume equations for a particular geographic area into the FVS framework. Geographic variants of FVS have been developed for most of the forested lands in the United States.

The Blue Mountains (BM) variant was developed in 1986. It covers the northeast quarter of Oregon, roughly bounded on the west by U.S. Highway 97 from Bend to Biggs and on the south by U.S. Highway 20 from Bend to Ontario, and includes a small portion of southeast Washington, roughly surrounded by U.S. Highway 12 from Walla Walla to Lewiston, Idaho. Data used in the BM variant came from forest inventories gathered by the Forest Service, and tree nutrition studies. Equations for western white pine came from those developed for the South Central Oregon and Northeastern California (SO) variant; equations used for mountain hemlock are from the North Idaho (NI) variant.

Since the variant’s development in 1986, many of the functions have been adjusted and improved as more data has become available, and as model technology has advanced. In 2009 this variant was expanded from its 10 original species to 18 species. Surrogate equations from other variants were used for these additional 8 species. Equations for western juniper, limber pine, and quaking aspen came from the Utah variant; whitebark pine from the Tetons variant; and Pacific yew, Alaska cedar, black cottonwood, and other hardwood from the West Cascades variant. In addition, the other softwood category was modified to use the same equations as ponderosa pine.

To fully understand how to use this variant, users should also consult the following publication:

* Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002)

This publication can be downloaded from the Forest Management Service Center (FMSC), Forest Service website. Other FVS publications may be needed if one is using an extension that simulates the effects of fire, insects, or diseases.

# 2.0 Geographic Range

The BM variant was fit to data representing forest types in northeastern Oregon and southeastern Washington. Data used in initial model development came from forest inventories on the Malheur, Ochoco, Umatilla, and Wallowa-Whitman National Forests and tree nutrition studies. Distribution of data samples for species fit from this data are shown in Appendix A.

The BM variant covers forest types in northeastern Oregon and the southeastern corner of Washington. The suggested geographic range of use for the BM variant is shown in figure 2.0.1.

**![Picture of the suggested geographic range for the Blue Mountains variant.](data:image/jpeg;base64...)Figure 2.0.1 Suggested geographic range of use for the BM variant.**

# 3.0 Control Variables

FVS users need to specify certain variables used by the BM variant to control a simulation. These are entered in parameter fields on various FVS keywords available in the FVS interface or they are read from an FVS input database using the Database Extension.

## 3.1 Location Codes

The location code is a 3- or 4-digit code where, in general, the first digit of the code represents the Forest Service Region Number, and the last two digits represent the Forest Number within that region. In some cases, a location code beginning with a “7” or “8” is used to indicate an administrative boundary that doesn’t use a Forest Service Region number (for example, other federal agencies, state agencies, or other lands).

If the location code is missing or incorrect in the BM variant, a default forest code of 616 (Wallowa – Whitman) will be used. Location codes recognized in the BM variant are shown in table 3.1.1.

**Table 3.1.1 Location codes used in the BM variant.**

|  |  |
| --- | --- |
| **Location Code** | **Location** |
| 604 | Malheur National Forest |
| 607 | Ochoco National Forest |
| 614 | Umatilla National Forest |
| 616 | Wallowa – Whitman National Forest |
| 619 | Whitman National Forest (mapped to 616) |
| 8117 | Umatilla Reservation (mapped to 614) |

## 3.2 Species Codes

The BM variant recognizes 16 species, plus two other composite species categories. You may use FVS species codes, Forest Inventory and Analysis (FIA) species codes, or USDA Natural Resources Conservation Service PLANTS symbols to represent these species in FVS input data. Any valid western species code identifying species not recognized by the variant will be mapped to a similar species in the variant. The species mapping crosswalk is available on the FVS website variant documentation webpage. Any non-valid species code will default to the “other hardwood” category.

Either the FVS sequence number or species code must be used to specify a species in FVS keywords and Event Monitor functions. FIA codes or PLANTS symbols are only recognized during data input and may not be used in FVS keywords. Table 3.2.1 shows the complete list of species codes recognized by the BM variant.

**Table 3.2.1 Species codes recognized by the BM variant.**

| **Species Number** | **Species Code** | **FIA Code** | **PLANTS Symbol** | **Scientific Name1** | **Common Name1** |
| --- | --- | --- | --- | --- | --- |
| 1 | WP | 119 | PIMO3 | *Pinus monticola* | western white pine |
| 2 | WL | 073 | LAOC | *Larix occidentalis* | western larch |
| 3 | DF | 202 | PSME | *Pseudotsuga menziesii* | Douglas-fir |
| 4 | GF | 017 | ABGR | *Abies grandis* | grand fir |
| 5 | MH | 264 | TSME | *Tsuga mertensiana* | mountain hemlock |
| 6 | WJ | 064 | JUOC | *Juniperus occidentalis* | western juniper |
| 7 | LP | 108 | PICO | *Pinus contorta* | lodgepole pine |
| 8 | ES | 093 | PIEN | *Picea engelmannii* | Engelmann spruce |
| 9 | AF | 019 | ABLA | *Abies lasiocarpa* | subalpine fir |
| 10 | PP | 122 | PIPO | *Pinus ponderosa* | ponderosa pine |
| 11 | WB | 101 | PIAL | *Pinus albicaulis* | whitebark pine |
| 12 | LM | 113 | PIFL2 | *Pinus flexilis* | limber pine |
| 13 | PY | 231 | TABR2 | *Taxus brevifolia* | Pacific yew |
| 14 | YC | 042 | CANO9 | *Callitropsis nootkatensis* | Alaska cedar |
| 15 | AS | 746 | POTR5 | *Populus tremuloides* | quaking aspen |
| 16 | CW | 747 | POBAT | *Populus balsamifera* ssp. *trichocarpa* | black cottonwood |
| 17 | OS | 299 | 2TN |  | other softwood2 |
| 18 | OH | 998 | 2TB |  | other hardwood2 |

1Set based on the USDA Forest Service NRM TAXA lists and the USDA Plants database.

2Other categories use FIA codes and NRM TAXA codes that best match the other category.

## 3.3 Habitat Type, Plant Association, and Ecological Unit Codes

Plant association codes recognized in the BM variant are shown in Appendix B. If an incorrect plant association code is entered or no code is entered FVS will use the default plant association code, which is 79 (CWG113 ABGR/CARU-BLUE). Plant association codes are used to set default site information such as site species, site indices, and maximum stand density indices as well as modeling snag dynamics in FFE-FVS. The site species, site index and maximum stand density indices can be reset via FVS keywords. Users may enter the plant association code or the plant association FVS sequence number on the STDINFO keyword, when entering stand information from a database, or when using the SETSITE keyword without the PARMS option. If using the PARMS option with the SETSITE keyword, users must use the FVS sequence number for the plant association.

## 3.4 Site Index

Site index is used in some of the growth equations for the BM variant. Users should always use the same site curves that FVS uses, which are shown in table 3.4.1. If site index is available, a single site index for the whole stand can be entered, a site index for each individual species in the stand can be entered, or a combination of these can be entered.

**Table 3.4.1 Site index reference curves for species in the BM variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **Reference** | **BHA or TTA1** | **Base Age** |
| WP | Brickell, J.E. (1970) | TTA | 50 |
| WL | Cochran, P.H. (1985) | BHA | 50 |
| DF | Cochran, P.H. (1979a) | BHA | 50 |
| GF | Cochran, P.H. (1979b) | BHA | 50 |
| MH | Means unpublished (1986)2 | BHA | 100 |
| LP | Dahms, Walter (1964) | TTA | 50 |
| ES | Alexander (1967) | BHA | 100 |
| AF | Demars, D.J. et. al. (1970) | BHA | 100 |
| PP, OS | Barrett, J.W. (1978) | BHA | 100 |
| WJ, WB, LM | Alexander, Tackle, and Dahms (1967) | TTA | 100 |
| PY, YC, CW, OH | Curtis, R.O., et. al. (1974) | BHA | 100 |
| AS | Edminster, Mowrer, and Shepperd (1985) | BHA | 80 |

1 Equation is based on total tree age (TTA) or breast height age (BHA)

2 The source equation is in metric units; site index values for MH are assumed to be in meters.

If site index is missing or incorrect, the default site species and site index are determined by plant association codes found in Appendix B. If the plant association code is missing or incorrect, the site species is set to grand fir with a default site index set to 63.

Site indices for species not assigned a site index are determined based on the site index of the site species (height at base age) with an adjustment for the reference age differences between the site species and the target species.

## 3.5 Maximum Density

Maximum stand density index (SDI) and maximum basal area (BA) are important variables in determining density related mortality and crown ratio change. Maximum basal area is a stand level metric that can be set using the BAMAX or SETSITE keywords. If not set by the user, a default value is calculated from maximum stand SDI each projection cycle. Maximum stand density index can be set for each species using the SDIMAX or SETSITE keywords. If not set by the user, a default value is assigned as discussed below.

The default maximum SDI is set based on a user-specified, or default, plant association code or a user specified basal area maximum. If a user specified basal area maximum is present, the maximum SDI for all species is computed using equation {3.5.1}; otherwise, the SDI maximum for a species is assigned from the SDI maximum for that species associated with the plant association code shown in Appendix B. If a species SDI maximum is unknown for a given plant association code, then it is assigned the SDI maximum for the site species associated with the plant association code. SDI maximums were set based on growth basal area (GBA) analysis developed by Hall (1983), an analysis of Current Vegetation Survey (CVS) plots in USFS Region 6 by Crookston (2008) or an analysis performed by Powell (2009). Some SDI maximums associated with plant associations are unreasonably large, so SDI maximums are capped at 850. Maximum stand density index at the stand level is a weighted average, by basal area, of the individual species SDI maximums.

{3.5.1} *SDIMAXi* = *BAMAX* / (0.5454154 \* *SDIU)*

where:

*SDIMAXi* is the species-specific SDI maximum

*BAMAX* is the user-specified stand basal area maximum

*SDIU* is theproportion of theoretical maximum density at which the stand reaches actual maximum density (default 0.85, changed with the SDIMAX keyword)

# 4.0 Growth Relationships

This chapter describes the functional relationships used to fill in missing tree data and calculate incremental growth. In FVS, trees are grown in either the small tree sub-model or the large tree sub-model depending on the diameter.

## 4.1 Height-Diameter Relationships

Height-diameter relationships in FVS are primarily used to estimate tree heights missing in the input data, and occasionally to estimate diameter growth on trees smaller than a given threshold diameter. In the BM variant, FVS will dub in heights by one of two methods. By default, for all species except western juniper, whitebark pine, limber pine, and quaking aspen, the BM variant will use the Curtis-Arney functional form as shown in equation {4.1.1} (Curtis 1967, Arney 1985). For western juniper, whitebark pine, limber pine, and quaking aspen a logistic height-diameter equation {4.1.2} (Wykoff, et.al 1982) is used.

If the input data contains at least three measured heights for a species, then FVS can calibrated the logistic height-diameter equation to the input data. This calibration is done automatically for western juniper, whitebark pine, limber pine and quaking aspen. However, it must be invoked using the NOHTDREG keyword for all other species. Coefficients for equation {4.1.1} are given in table 4.1.1 sorted by species and location code. Coefficients for equation {4.1.3} are given in table 4.1.2.

{4.1.1} Curtis-Arney functional form

DBH <u>></u> 3.0”: HT = 4.5 + P2 \* exp[-P3 \* DBH ^ P4]

DBH < 3.0”: HT = [(4.5 + P2 \* exp[-P3 \* 3.0 ^ P4] – 4.51) \* (DBH – 0.3) / 2.7] + 4.51

{4.1.2} HT = 4.5 + exp(B1 + B2 / (DBH + 1.0))

where:

*HT* is tree height

*DBH* is tree diameter at breast height

B1 - B2 are species-specific coefficients shown in table 4.1.2

P1 - P4 are species-specific coefficients shown in table 4.1.1

**Table 4.1.1 Coefficients for Curtis-Arney equation {4.1.1} in the BM variant.**

| **Species Code** | **Location Code** | **P2** | **P3** | **P4** |
| --- | --- | --- | --- | --- |
| WP | 604 - Malheur | 140.8498 | 4.9436 | -0.6048 |
| WP | 607 - Ochoco | 140.8498 | 4.9436 | -0.6048 |
| WP | 614 - Umatilla | 140.8498 | 4.9436 | -0.6048 |
| WP | 616 - Wallowa-Whitman | 140.8498 | 4.9436 | -0.6048 |
| WL | 604 - Malheur | 188.1500 | 5.6420 | -0.7348 |
| WL | 607 - Ochoco | 255.4638 | 5.5577 | -0.6054 |
| WL | 614 - Umatilla | 186.6625 | 5.3006 | -0.7604 |
| WL | 616 - Wallowa-Whitman | 326.9389 | 4.6684 | -0.4657 |
| DF | 604 - Malheur | 476.1213 | 5.0963 | -0.3461 |
| DF | 607 - Ochoco | 318.7441 | 5.6666 | -0.4666 |
| DF | 614 - Umatilla | 219.4816 | 5.3103 | -0.5643 |
| DF | 616 - Wallowa-Whitman | 260.1577 | 5.2245 | -0.5013 |
| GF | 604 - Malheur | 846.4856 | 6.1757 | -0.3210 |
| GF | 607 - Ochoco | 686.4831 | 6.5393 | -0.3740 |
| GF | 614 - Umatilla | 297.7143 | 5.9520 | -0.5290 |
| GF | 616 - Wallowa-Whitman | 360.9231 | 5.7382 | -0.4544 |
| MH | 604 - Malheur | 150.5836 | 5.5158 | -0.6435 |
| MH | 607 - Ochoco | 150.5836 | 5.5158 | -0.6435 |
| MH | 614 - Umatilla | 150.5836 | 5.5158 | -0.6435 |
| MH | 616 - Wallowa-Whitman | 150.5836 | 5.5158 | -0.6435 |
| LP | 604 - Malheur | 1901.4963 | 5.9791 | -0.2300 |
| LP | 607 - Ochoco | 228.0877 | 4.2939 | -0.4277 |
| LP | 614 - Umatilla | 89.0137 | 7.7404 | -1.3530 |
| LP | 616 - Wallowa-Whitman | 117.1495 | 4.8451 | -0.8613 |
| ES | 604 - Malheur | 211.5595 | 7.310 | -0.7176 |
| ES | 607 - Ochoco | 738.6208 | 5.5866 | -0.3193 |
| ES | 614 - Umatilla | 221.5298 | 6.1879 | -0.6629 |
| ES | 616 - Wallowa-Whitman | 219.4529 | 6.1539 | -0.6558 |
| AF | 604 - Malheur | 437.3897 | 5.6600 | -0.3975 |
| AF | 607 - Ochoco | 128.7188 | 6.9094 | -0.9039 |
| AF | 614 - Umatilla | 164.6321 | 6.9476 | -0.7650 |
| AF | 616 - Wallowa-Whitman | 128.7188 | 6.9094 | -0.9039 |
| PP | 604 - Malheur | 1818.1733 | 6.8482 | -0.2535 |
| PP | 607 - Ochoco | 1526.6312 | 6.9207 | -0.2774 |
| PP | 614 - Umatilla | 313.4270 | 6.4808 | -0.5194 |
| PP | 616 - Wallowa-Whitman | 649.6683 | 6.1279 | -0.3511 |
| PY | 604 - Malheur | 77.2207 | 3.5181 | -0.5894 |
| PY | 607 - Ochoco | 77.2207 | 3.5181 | -0.5894 |
| PY | 614 - Umatilla | 77.2207 | 3.5181 | -0.5894 |
| PY | 616 - Wallowa-Whitman | 77.2207 | 3.5181 | -0.5894 |
| YC | 604 - Malheur | 97.7769 | 8.8202 | -1.0534 |
| YC | 607 - Ochoco | 97.7769 | 8.8202 | -1.0534 |
| YC | 614 - Umatilla | 97.7769 | 8.8202 | -1.0534 |
| YC | 616 - Wallowa-Whitman | 97.7769 | 8.8202 | -1.0534 |
| CW | 604 - Malheur | 178.6441 | 4.5852 | -0.6746 |
| CW | 607 - Ochoco | 178.6441 | 4.5852 | -0.6746 |
| CW | 614 - Umatilla | 178.6441 | 4.5852 | -0.6746 |
| CW | 616 - Wallowa-Whitman | 178.6441 | 4.5852 | -0.6746 |
| OS | 604 - Malheur | 1818.1733 | 6.8482 | -0.2535 |
| OS | 607 - Ochoco | 1526.6312 | 6.9207 | -0.2774 |
| OS | 614 - Umatilla | 313.4270 | 6.4808 | -0.5194 |
| OS | 616 - Wallowa-Whitman | 649.6683 | 6.1279 | -0.3511 |
| OH | 604 - Malheur | 1709.7229 | 5.8887 | -0.2286 |
| OH | 607 - Ochoco | 1709.7229 | 5.8887 | -0.2286 |
| OH | 614 - Umatilla | 1709.7229 | 5.8887 | -0.2286 |
| OH | 616 - Wallowa-Whitman | 1709.7229 | 5.8887 | -0.2286 |

**Table 4.1.2 Coefficients for the logistic Wykoff equation {4.1.2} in the BM variant.**

| **Species Code** | **Default B1** | **B2** |
| --- | --- | --- |
| WP | 5.035 | -10.674 |
| WL | 5.043 | -9.123 |
| DF | 4.929 | -10.744 |
| GF | 4.874 | -10.405 |
| MH | 4.874 | -10.405 |
| WJ | 3.200 | -5.000 |
| LP | 4.954 | -9.177 |
| ES | 5.035 | -10.674 |
| AF | 4.875 | -9.568 |
| PP | 4.993 | -12.430 |
| WB | 4.1920 | -5.1651 |
| LM | 4.1920 | -5.1651 |
| PY | 5.1880 | -13.8010 |
| YC | 5.143 | -13.497 |
| AS | 4.4421 | -6.5405 |
| CW | 5.1520 | -13.5760 |
| OS | 4.993 | -12.430 |
| OH | 5.1520 | -13.5760 |

## 4.2 Bark Ratio Relationships

Bark ratio estimates are used to convert between diameter outside bark and diameter inside bark in various parts of the model. The equation used for western white pine, western larch, Douglas-fir, grand fir, mountain hemlock, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, Pacific yew, Alaska cedar, other softwood, and other hardwood is shown in equation {4.2.1} and coefficients (b1 and b2) for this equation by species are shown in table 4.2.1.

{4.2.1} *DIB* = b1 \* *DBH*^b2 where *BRATIO* = *DIB* / *DBH*

where:

*BRATIO* is species-specific bark ratio. Bounded to 0 <u><</u> *BRATIO* <u><</u> 0.999 for WP, WL, DF, GF, MH, LP, ES, AF, PP, OS and bounded to 0.80<u><</u> *BRATIO* <u><</u> 0.99 for PY, YC, OH

*DBH* is tree diameter at breast height

*DIB* is tree diameter inside bark at breast height

b1 - b2 are species-specific coefficients shown in table 4.2.1

The equation used for western juniper and limber pine is shown in {4.2.2} with coefficients (b1 and b2) shown in table 4.2.1.

{4.2.2} *BRATIO* = b1 + b2\*(1/*DBH*)

where:

*BRATIO* is species-specific bark ratio(bounded to 0.80<u><</u> *BRATIO* <u><</u> 0.99)

*DBH* is tree diameter at breast height. Bounded to 1.0<u><</u> *DBH* <u><</u> 19.0) for WJ and bounded to 1.0<u><</u> *DBH* for LM

b1 - b2 are species-specific coefficients shown in table 4.2.1

The equation used for whitebark pine and quaking aspen is shown in {4.2.3} with coefficient (b1) shown in table 4.2.1.

{4.2.3} *BRATIO* = b1

where:

*BRATIO* is species-specific bark ratio (bounded to 0.80<u><</u> *BRATIO* <u><</u> 0.99)

b1 is the species-specific coefficient shown in table 4.2.1

Black cottonwood uses equation {4.2.4} with coefficients (b1 and b2) shown in table 4.2.1.

{4.2.4} *DIB* = b1 + b2\**DBH* *BRATIO* = *DIB* / *DBH*

where:

*BRATIO* is species-specific bark ratio(bounded to 0.80<u><</u> *BRATIO* <u><</u> 0.99)

*DBH* is tree diameter at breast height

*DIB* is tree diameter inside bark at breast height

b1 - b2 are species-specific coefficients shown in table 4.2.1

**Table 4.2.1 Coefficients for the bark ratio equation {4.2.1} in the BM variant.**

| **Species Code** | **b1** | **b2** |
| --- | --- | --- |
| WP | 0.859045 | 1.0 |
| WL | 0.859045 | 1.0 |
| DF | 0.903563 | 0.989388 |
| GF | 0.904973 | 1.0 |
| MH | 0.903563 | 0.989388 |
| WJ | 0.9002 | -0.3089 |
| LP | 0.9 | 1.0 |
| ES | 0.9 | 1.0 |
| AF | 0.904973 | 1.0 |
| PP | 0.809427 | 1.016866 |
| WB | 0.969 | 0.0 |
| LM | 0.9625 | -0.1141 |
| PY | 0.933290 | 1.0 |
| YC | 0.837291 | 1.0 |
| AS | 0.950 | 0.0 |
| CW | 0.075256 | 0.949670 |
| OS | 0.809427 | 1.016866 |
| OH | 0.9000 | 1.0 |

## 4.3 Crown Ratio Relationships

Crown ratio equations are used for three purposes in FVS: (1) to estimate tree crown ratios missing from the input data for both live and dead trees; (2) to estimate change in crown ratio from cycle to cycle for live trees; and (3) to estimate initial crown ratios for regenerating trees established during a simulation.

### 4.3.1 Crown Ratio Dubbing

In the BM variant, crown ratios missing in the input data are predicted using different equations depending on tree species and size. For all species, live trees less than 1.0” in diameter and dead trees of all sizes use equation {4.3.1.1} and one of the equations listed below, {4.3.1.2} - {4.3.1.3}, to compute crown ratio. Species group assignment and equation number used by species is found in table 4.3.1.1. Equation coefficients are found in table 4.3.1.2.

{4.3.1.1} *X* = R1 + R2 \* *DBH* + R3 \* *HT* + R4 \* *BA* + R5 \* *PCCF* + R6 \* *AVH/HT* + R7 \* *AVH* + R8 \* *BA* \* *PCCF* + R9 \* *MAI*

{4.3.1.2} *CR* = 1 / (1 + exp(*X+* *N(0,SD)*)) where absolute value of (*X* + *N(0,SD)*) < 86

{4.3.1.3} *CR* = (((*X* + *N(0,SD)*) - 1) \* 10 + 1) / 100

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

**Table 4.3.1.1 Species group and equation assignment by species in the BM variant.**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Species Code** | **Species Group** | **Equation Number** | **Species Code** | **Species Group** | **Equation Number** |
| WP | 1 | {4.3.1.1} | PP | 3 | {4.3.1.1} |
| WL | 1 | {4.3.1.1} | WB | 3 | {4.3.1.1} |
| DF | 2 | {4.3.1.1} | LM | 3 | {4.3.1.1} |
| GF | 2 | {4.3.1.1} | PY | 5 | {4.3.1.2} |
| MH | 2 | {4.3.1.1} | YC | 6 | {4.3.1.2} |
| WJ | 4 | {4.3.1.1} | AS | 2 | {4.3.1.1} |
| LP | 3 | {4.3.1.1} | CW | 7 | {4.3.1.2} |
| ES | 2 | {4.3.1.1} | OS | 3 | {4.3.1.1} |
| AF | 2 | {4.3.1.1} | OH | 7 | {4.3.1.2} |

**Table 4.3.1.2 Coefficients by species group (1 – 7) for the crown ratio equation {4.3.1.1} in the BM variant.**

| **Coefficient** | **1** | **2** | **3** | **4** | **5** | **6** | **7** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| R1 | -1.66949 | -0.426688 | -1.66949 | -2.19723 | 6.489813 | 7.558538 | 5.0 |
| R2 | -0.209765 | -0.093105 | -0.209765 | 0 | 0 | 0 | 0 |
| R3 | 0 | 0.022409 | 0 | 0 | -0.029815 | -0.015637 | 0 |
| R4 | 0.003359 | 0.002633 | 0.003359 | 0 | -0.009276 | -0.009064 | 0 |
| R5 | 0.011032 | 0 | 0.011032 | 0 | 0 | 0 | 0 |
| R6 | 0 | -0.045532 | 0 | 0 | 0 | 0 | 0 |
| R7 | 0.017727 | 0 | 0.017727 | 0 | 0 | 0 | 0 |
| R8 | -0.000053 | 0.000022 | -0.000053 | 0 | 0 | 0 | 0 |
| R9 | 0.014098 | -0.013115 | 0.014098 | 0 | 0 | 0 | 0 |
| SD | 0.5 | 0.6957\*\* | \* | 0.2 | 2.0426 | 1.9658 | 0.5 |

\* SD = 0.6124 for LP; 0.4942 for PP and OS; 0.5 for WB and LM

\*\* SD = 0.9310 for AS

A Weibull-based crown model developed by Dixon (1985) as described in Dixon (2002) is used to predict crown ratio for all live trees 1.0” in diameter or larger. To estimate crown ratio using this methodology, the average stand crown ratio is estimated from stand density index using equation {4.3.1.4}. Weibull parameters are then estimated from the average stand crown ratio using equations in equation set {4.3.1.5}. Individual tree crown ratio is then set from the Weibull distribution, equation {4.3.1.6} based on a tree’s relative position in the diameter distribution and multiplied by a scale factor, shown in equation {4.3.1.7}, which accounts for stand density. Crowns estimated from the Weibull distribution are bounded to be between the 5 and 95 percentile points of the specified Weibull distribution. Equation coefficients for each species are shown in table 4.3.1.3.

{4.3.1.4} *ACR* = d0 + d1 \* *RELSDI* \* 100.0 where: *RELSDI* = *SDIstand* / *SDImax*

{4.3.1.5} Weibull parameters A, B, and C are estimated from average crown ratio

*A* = a0

*B* = b0 + b1 \* *ACR* (*B* <u>></u> 3)

*C* = c0 + c1 \* *ACR* (*C* <u>></u> 2)

{4.3.1.6} Y = 1-exp(-((*X*-A)/B)^C)

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

a0, b0-1, c0-1, and d0-1 are species-specific coefficients shown in table 4.3.1.3

**Table 4.3.1.3 Coefficients for the Weibull parameter equations {4.3.1.4} and {4.3.1.5} in the BM variant.**

| **Species Code** | **a0** | **b0** | **b1** | **c0** | **c1** | **d0** | **d1** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| WP | 0 | 0.74338 | 0.97850 | -3.98461 | 1.34802 | 6.94062 | -0.01927 |
| WL | 0 | -0.00114 | 1.11300 | 3.40943 | 0 | 5.30390 | -0.02049 |
| DF | 0 | 0.35559 | 1.04220 | -0.68418 | 0.80153 | 6.69836 | -0.02594 |
| GF | 0 | 0.46010 | 1.02563 | -1.74681 | 0.98317 | 7.07172 | -0.03044 |
| MH | 0 | 0.46010 | 1.02563 | -1.74681 | 0.98317 | 7.07172 | -0.03044 |
| WJ | 0 | 0.07609 | 1.10184 | 3.01 | 0 | 7.23800 | 0 |
| LP | 0 | -0.04970 | 1.14250 | 2.49474 | 0 | 4.82367 | -0.02373 |
| ES | 0 | 0.74338 | 0.97850 | -3.98461 | 1.34802 | 6.94062 | -0.01927 |
| AF | 0 | 0.40743 | 1.02954 | 4.06366 | 0 | 7.97175 | -0.03545 |
| PP | 0 | 0.22542 | 1.06011 | 0.58615 | 0.64158 | 6.23850 | -0.03064 |
| WB | 1 | -0.82631 | 1.06217 | 3.31429 | 0 | 6.19911 | -0.02216 |
| LM | 1 | -0.82631 | 1.06217 | 3.31429 | 0 | 6.19911 | -0.02216 |
| PY | 0 | 0.196054 | 1.073909 | 0.345647 | 0.620145 | 5.417431 | -0.011608 |
| YC | 1 | -0.811424 | 1.056190 | -3.831124 | 1.401938 | 5.200550 | -0.014890 |
| AS | 0 | -0.08414 | 1.14765 | 2.77500 | 0 | 4.01678 | -0.01516 |
| CW | 0 | -0.238295 | 1.180163 | 3.044134 | 0 | 4.625125 | -0.016042 |
| OS | 0 | 0.22542 | 1.06011 | 0.58615 | 0.64158 | 6.23850 | -0.03064 |
| OH | 0 | -0.238295 | 1.180163 | 3.044134 | 0 | 4.625125 | -0.016042 |

### 4.3.2 Crown Ratio Change

Crown ratio change is estimated after growth, mortality and regeneration are estimated during a projection cycle. Crown ratio change is the difference between the crown ratio at the beginning of the cycle and the predicted crown ratio at the end of the cycle. Crown ratio predicted at the end of the projection cycle is estimated for live tree records using the Weibull distribution, equations {4.3.1.4}-{4.3.1.7}, for all species. Crown change is checked to make sure it doesn’t exceed the change possible if all height growth produces new crown. Crown change is further bounded to 1% per year for the length of the cycle to avoid drastic changes in crown ratio. Equations {4.3.1.1}-{4.3.1.3} are not used when estimating crown ratio change.

### 4.3.3 Crown Ratio for Newly Established Trees

Crown ratios for newly established trees during regeneration are estimated using equation {4.3.3.1}. A random component is added in equation {4.3.3.1} to ensure that not all newly established trees are assigned exactly the same crown ratio.

{4.3.3.1} *CR* = 0.89722 – 0.0000461 \* *PCCF* + *RAN*

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.2 <u><</u> *CR* <u><</u> 0.9)

*PCCF* is crown competition factor on the inventory point where the tree is established

*RAN* is a small random component

## 4.4 Crown Width Relationships

The BM variant calculates the maximum crown width for each individual tree, based on individual tree and stand attributes. Crown width for each tree is reported in the tree list output table and used for percent canopy cover (*PCC*) calculations in the model.

Crown width is calculated using equations {4.4.1} – {4.4.6}, and coefficients for these equations are shown in table 4.4.1. The minimum diameter and bounds for certain data values are given in table 4.4.2. Equation numbers in Table 4.4.1 are given with the first three digits representing the FIA species code, and the last two digits representing the equation source.

{4.4.1} Bechtold (2004); Equation 01

*DBH* <u>></u> *MinD: CW* = a1 + (a2 \* *DBH*) + (a3 \* *DBH*^2)

*DBH* < *MinD: CW* = [a1 + (a2 \* *MinD*) \* (a3 \* *MinD*^2)] \* (*DBH* / *MinD*)

{4.4.2} Crookston (2003); Equation 03 (used only for Mountain Hemlock)

*HT* < 5.0: *CW* = [0.8 \* *HT* \* MAX(0.5, *CR* \* 0.01)] \* [1 - (*HT* - 5) \* 0.1] \* a1 \* *DBH*^a2 \* *HT*^a3 \* *CL*^a4 \* (*HT*-5) \* 0.1

5.0 <u><</u> *HT* < 15.0: *CW* = 0.8 \* *HT* \* MAX(0.5, *CR* \* 0.01)

*HT* <u>></u> 15.0: *CW* = a1 \* (*DBH*^a2) \* (*HT*^a3) \* (*CL^*a4)

{4.4.3} Crookston (2003); Equation 03 (western larch and grand fir)

*DBH* <u>></u> *MinD: CW* = [a1 \* exp[a2 + (a3 \* ln(*CL*)) + (a4 \* ln(*DBH*)) + (a5 \* ln(*HT*)) + (a6 \* ln(*BA*))]]

*DBH* < *MinD:CW* = [a1 \* exp[a2 + (a3 \* ln(*CL*)) + (a4 \* ln(*MinD*)) + (a5 \* ln(*HT*)) + (a6 \* ln(*BA*))]] \* (*DBH* / *MinD*)

{4.4.4 Crookston (2005); Equation 04

*DBH* <u>></u> *MinD: CW* = a1 \* *DBH^*a2

*DBH* < *MinD: CW* = [a1 \* *MinD*^a2] \* (*DBH* / *MinD*)

{4.4.5} Crookston (2005); Equation 05

*DBH* <u>></u> *MinD: CW* = (a1 \* *BF*) \* *DBH*^a2 \* *HT*^a3 \* *CL^*a4 \* (*BA* + 1.0)^a5 \* exp(*EL*)^a6

*DBH* < *MinD: CW* = (a1 \* BF) \* *MinD*^a2 \* HT^a3 \* CL^a4 \* (BA + 1.0)^a5 \* exp(EL)^a6] \* (*DBH* / *MinD*)

{4.4.6} Donnelly (1996); Equation 06

*DBH* <u>></u> *MinD CW* = a1 \* *DBH^*a2

*DBH* < *MinD CW* = [a1 \* *MinD*^a2] \* (*DBH* / *MinD*)

where:

*BF* is a species-specific coefficient based on forest code (*BF* = 1.0 in the AK variant)

*CW* is tree maximum crown width

*CL* is tree crown length

*DBH* is tree diameter at breast height

*HT* is tree height

*BA* is total stand basal area

*EL* is stand elevation in hundreds of feet

*MinD* is the minimum diameter

a1 – a6 are species-specific coefficients shown in table 4.4.1

**Table 4.4.1 Coefficients (a1 – a6) for crown width equations {4.4.1}-{4.4.6} in the BM variant.**

| **Species Code** | **Equation Number\*** | **a1** | **a2** | **a3** | **a4** | **a5** | **a6** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| WP | 11905 | 5.3822 | 0.57896 | -0.19579 | 0.14875 | 0 | -0.00685 |
| WL | 07303 | 1.02478 | 0.99889 | 0.19422 | 0.59423 | -0.09078 | -0.02341 |
| DF | 20205 | 6.0227 | 0.54361 | -0.20669 | 0.20395 | -0.00644 | -0.00378 |
| GF | 01703 | 1.0303 | 1.14079 | 0.20904 | 0.38787 | 0 | 0 |
| MH | 26403 | 6.90396 | 0.55645 | -0.28509 | 0.20430 | 0 | 0 |
| WJ | 06405 | 5.1486 | 0.73636 | -0.46927 | 0.39114 | -0.05429 | 0 |
| LP | 10805 | 6.6941 | 0.81980 | -0.36992 | 0.17722 | -0.01202 | -0.00882 |
| ES | 09305 | 6.7575 | 0.55048 | -0.25204 | 0.19002 | 0 | -0.00313 |
| AF | 01905 | 5.8827 | 0.51479 | -0.21501 | 0.17916 | 0.03277 | -0.00828 |
| PP | 12205 | 4.7762 | 0.74126 | -0.28734 | 0.17137 | -0.00602 | -0.00209 |
| WB | 10105 | 2.2354 | 0.66680 | -0.11658 | 0.16927 | 0 | 0 |
| LM | 11301 | 4.0181 | 0.8528 | 0 | 0 | 0 | 0 |
| PY | 23104 | 6.1297 | 0.45424 | 0 | 0 | 0 | 0 |
| YC | 04205 | 3.3756 | 0.45445 | -0.11523 | 0.22547 | 0.08756 | -0.00894 |
| AS | 74605 | 4.7961 | 0.64167 | -0.18695 | 0.18581 | 0 | 0 |
| CW | 74705 | 4.4327 | 0.41505 | -0.23264 | 0.41477 | 0 | 0 |
| OS | 12205 | 4.7762 | 0.74126 | -0.28734 | 0.17137 | -0.00602 | -0.00209 |
| OH | 31206 | 7.5183 | 0.4461 | 0 | 0 | 0 | 0 |

\*Equation number is a combination of the species FIA code (###) and equation source (##).

**Table 4.4.2 *MinD* values and data bounds for equations {4.4.1}-{4.4.6} in the BM variant.**

| **Species Code** | **Equation Number\*** | ***MinD*** | **EL min** | ***EL* max** | ***HI* min** | ***HI* max** | ***CW* max** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| WP | 11905 | 1.0 | 10 | 75 | n/a | n/a | 35 |
| WL | 07303 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| DF | 20205 | 1.0 | 1 | 75 | n/a | n/a | 80 |
| GF | 01703 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| MH | 26403 | n/a | n/a | n/a | n/a | n/a | 45 |
| WJ | 06405 | 1.0 | n/a | n/a | n/a | n/a | 36 |
| LP | 10805 | 1.0 | 1 | 79 | n/a | n/a | 40 |
| ES | 09305 | 1.0 | 1 | 85 | n/a | n/a | 40 |
| AF | 01905 | 1.0 | 10 | 85 | n/a | n/a | 30 |
| PP | 12205 | 1.0 | 13 | 75 | n/a | n/a | 50 |
| WB | 10105 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| LM | 11301 | 5.0 | n/a | n/a | n/a | n/a | 25 |
| PY | 23104 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| YC | 04205 | 1.0 | 16 | 62 | n/a | n/a | 59 |
| AS | 74605 | 1.0 | n/a | n/a | n/a | n/a | 45 |
| CW | 74705 | 1.0 | n/a | n/a | n/a | n/a | 56 |
| OS | 12205 | 1.0 | 13 | 75 | n/a | n/a | 50 |
| OH | 31206 | 1.0 | n/a | n/a | n/a | n/a | 30 |

**Table 4.4.3 BF values by location code (604, 607, 614, 616, and 619) for equation {4.4.5} in the BM variant.**

| **Species Code** | **604** | **607** | **614** | **616** | **619** |
| --- | --- | --- | --- | --- | --- |
| WP | 1.081 | 1 | 1.128 | 1 | 1 |
| WL | 0.818 | 0.879 | 0.907 | 0.818 | 0.818 |
| DF | 1.058 | 1.055 | 1.055 | 1 | 1 |
| GF | 1 | 1 | 1.076 | 1 | 1 |
| MH | 1 | 1 | 1 | 1.077 | 1.077 |
| WJ | 1 | 1 | 1 | 1 | 1 |
| LP | 1.196 | 1.196 | 1.244 | 1.114 | 1.114 |
| ES | 1.121 | 1.169 | 1.137 | 1.070 | 1.070 |
| AF | 1.110 | 1.110 | 1.110 | 1 | 1 |
| PP | 1 | 1 | 1.035 | 1 | 1 |
| WB | 1 | 1 | 1 | 1 | 1 |
| LM | 1 | 1 | 1 | 1 | 1 |
| PY | 1 | 1 | 1 | 1 | 1 |
| YC | 1 | 1 | 1 | 1 | 1 |
| AS | 1 | 1 | 1 | 1 | 1 |
| CW | 1 | 1 | 1 | 1 | 1 |
| OS | 1 | 1 | 1.035 | 1 | 1 |
| OH | 1 | 1 | 1 | 1 | 1 |

## 4.5 Crown Competition Factor

The BM variant uses crown competition factor (*CCF*) as a predictor variable in some growth relationships. Crown competition factor (Krajicek and others 1961) is a relative measurement of stand density that is based on tree diameters. Individual tree *CCFt* values estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open-grown. Stand *CCF* is the summation of individual tree (*CCFt*)values. A stand *CCF* value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand.

For all species except Pacific yew, Alaska cedar, black cottonwood, and other hardwood, crown competition factor for an individual tree is calculated using equation {4.5.1}. Coefficients are either from Paine and Hann (1982) or the Inland Empire variant coefficients (Wykoff, et.al 1982).

{4.5.1} All species except Pacific yew, Alaska cedar, black cottonwood, and other hardwood

*DBH* <u>></u> 1.0”: *CCFt* = R1 + (R2 \* *DBH*) + (R3 \* *DBH*^2)

0.1” < *DBH* < 1.0”: *CCFt* = R4 \* *DBH*^R5

*DBH* <u><</u> 0.1”:*CCFt* = 0.001

where:

CCFt is crown competition factor for an individual tree

DBH is tree diameter at breast height

R1 – R5 are species-specific coefficients shown in table 4.5.1

For Pacific yew, Alaska cedar, black cottonwood, and other hardwood, equation {4.5.2} is used. All species coefficients are shown in table 4.5.1.

{4.5.2} CCF equation for Pacific yew, Alaska cedar, black cottonwood, and other hardwood

*DBH* <u>></u> 1.0”: *CCFt* = R1 + (R2 \* *DBH*) + (R3 \* *DBH*^2)

*DBH* < 1.0”: *CCFt* = (R1 + R2 + R2 )\* *DBH*

where:

*CCFt* is crown competition factor for an individual tree

*DBH* is tree diameter at breast height

R1 – R5 are species-specific coefficients shown in table 4.5.1

**Table 4.5.1 Coefficients (R1 – R5) for the CCF equations in the BM variant.**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Species Code** | **R1** | **R2** | **R3** | **R4** | **R5** |
| WP | 0.0186 | 0.0146 | 0.00288 | 0.009884 | 1.6667 |
| WL | 0.0392 | 0.0180 | 0.00207 | 0.007244 | 1.8182 |
| DF | 0.0388 | 0.0269 | 0.00466 | 0.017299 | 1.5571 |
| GF | 0.0690 | 0.0225 | 0.00183 | 0.015248 | 1.7333 |
| MH | 0.03 | 0.018 | 0.00281 | 0.011109 | 1.7250 |
| WJ | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| LP | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| ES | 0.03 | 0.0173 | 0.00259 | 0.007875 | 1.7360 |
| AF | 0.0172 | 0.00876 | 0.00112 | 0.011402 | 1.7560 |
| PP | 0.0219 | 0.0169 | 0.00325 | 0.007813 | 1.7780 |
| WB | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| LM | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| PY | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| YC | 0.0194 | 0.0142 | 0.00261 | 0 | 0 |
| AS | 0.03 | 0.0238 | 0.00490 | 0.008915 | 1.7800 |
| CW | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| OS | 0.0219 | 0.0169 | 0.00325 | 0.007813 | 1.7780 |
| OH | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |

## 4.6 Small Tree Growth Relationships

Trees are considered “small trees” for FVS modeling purposes when they are smaller than some threshold diameter. The threshold diameter is set to 3.0” for all species in the BM variant except western juniper. Western juniper uses the small-tree relationships to predict height and diameter growth for trees of all sizes.

The small tree model is height-growth driven, meaning height growth is estimated first, then diameter growth is estimated from height growth. These relationships are discussed in the following sections.

### 4.6.1 Small Tree Height Growth

The small-tree height increment model predicts 10-year height growth (*HTG*) for small trees, based on site index. Potential height growth is estimated using equations {4.6.1.1} – {4.6.1.3}, depending on species, and coefficients shown in table 4.6.1.1.

Potential height growth for western white pine is calculated using equation {4.6.1.1}.

{4.6.1.1} *POTHTG* = (*SI* / c1) \* (1.0 - c2 \* exp(c3 \* *X*2))^c4 - (*SI* / c1) \* (1.0 - c2 \* exp(c3 \* *X*1))^c4

*X1* = ALOG [(1.0 - (c1 / *SI* \* *HT*)^(1 / c4)) / c2] / c3

*X2* = *X1* + *A*

Potential height growth for western larch, Douglas-fir, grand fir, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, whitebark pine, Pacific yew, Alaska cedar, black cottonwood, other softwood, and other hardwood is calculated using equation {4.6.1.2}.

{4.6.1.2} *POTHTG* = [(c1 + c2 \* *SI*) / (c3 – c4 \* *SI*)] \* *A*

Potential height growth for mountain hemlock is calculated using equation {4.6.1.3}.

{4.6.1.3} *POTHTG* = [(c1 + c2 \* *SI*) / (c3 – c4 \* *SI*)] \* *A* \* 3.280833

Potential height growth for western juniper is calculated using equation {4.6.1.4}.

{4.6.1.4} *POTHTG* = [(*SI* / 5) \* (1.5 \* *SI* - *HT*)] / (*SI* \* 1.5) (*SI* bounded 5.5 <u><</u> *SI* <u><</u> 75)

Potential height growth for limber pine is calculated using equation {4.6.1.5}.

{4.6.1.5} *POTHTG* = *SI* / 5

where:

*POTHTG* is potential height growth

*SI* is species site index

*A* is tree age

*HT* is tree height

c1 – c4 are species-specific coefficients shown in table 4.6.1.1

**Table 4.6.1.1 Coefficients (c1 – c4) and equation reference by species in the BM variant.**

| **Species Code** | ***POTHTG* Equation** | **c1** | **c2** | **c3** | **c4** |
| --- | --- | --- | --- | --- | --- |
| WP | {4.6.1.1} | 0.375045 | 0.92503 | -.020796 | 2.48811 |
| WL | {4.6.1.2} | -3.9725 | 0.50995 | 28.1168 | 0.05661 |
| DF | {4.6.1.2} | 2.0 | 0.420 | 28.5 | 0.05 |
| GF | {4.6.1.2} | 4.2435 | 0.1510 | 19.0184 | 0.0570 |
| MH | {4.6.1.3} | 0.965758 | 0.082969 | 55.249612 | 1.288852 |
| WJ | {4.6.1.4} | 0 | 0 | 0 | 0 |
| LP | {4.6.1.2} | 0 | 0.0200805 | 1.0 | 0 |
| ES | {4.6.1.2} | 0.09211 | 0.208517 | 43.358 | 0.168166 |
| AF | {4.6.1.2} | 6.0 | 0.14 | 33.882 | 0.06588 |
| PP | {4.6.1.2} | -1.0 | 0.32857 | 28.0 | 0.042857 |
| WB | {4.6.1.2} | 0 | 0.0321409 | 1.0 | 0 |
| LM | {4.6.1.5} | 0 | 0.2 | 0 | 0 |
| PY | {4.6.1.2} | 1.47043 | 0.23317 | 31.56252 | 0.05586 |
| YC | {4.6.1.2} | 1.47043 | 0.23317 | 31.56252 | 0.05586 |
| AS | {4.6.1.10} | 0 | 0 | 0 | 0 |
| CW | {4.6.1.2} | 1.47043 | 0.23317 | 31.56252 | 0.05586 |
| OS | {4.6.1.2} | -1.0 | 0.32857 | 28.0 | 0.042857 |
| OH | {4.6.1.2} | 1.47043 | 0.23317 | 31.56252 | 0.05586 |

Potential height growth for all species except quaking aspen is then adjusted based on stand density (*PCTRED*) and crown ratio (*VIGOR*) as shown in equations {4.6.1.6} - {4.6.1.8} to determine an estimated height growth as shown in equation {4.6.1.9}.

{4.6.1.6} *PCTRED* = 1.11436 – 0.011493\**Z* + 0.43012E-04 \* *Z*^2 – 0.72221E-07 \* *Z*^3 + 0.5607E-10 \* *Z*^4 – 0.1641E-13 \* *Z*^5

*Z* = *HTAvg* \* (*CCF* / 100)

{4.6.1.7} Used for all species except quaking aspen and western juniper

*VIGOR* = (150 \* *CR*^3 \* exp(-6 \* *CR*) ) + 0.3

Note, for western juniper the VIGOR adjustment is reduced by two-thirds as shown in equation {4.6.1.8}.

{4.6.1.8} Used for western juniper

*VIGOR* = 1 - ((1 - *VIGOR*) /3 )

{4.6.1.9} *HTG* = *POTHTG* \* *PCTRED* \* *VIGOR*

where:

*PCTRED* is reduction in height growth due to stand density (bounded to 0.01 <u><</u> *PCTRED* <u><</u> 1)

*HTAvg* is average height of the 40 largest diameter trees in the stand

*CCF* is stand crown competition factor

*VIGOR* is reduction in height growth due to tree vigor (bounded to *VIGOR* <u><</u> 1.0)

*CR* is a tree’s live crown ratio (compacted) expressed as a proportion

*HTG* is estimated height growth for the cycle

*POTHTG* is potential height growth

Height growth for quaking aspen is obtained from an aspen height-age curve, equation {4.6.1.10} (Shepperd 1995). Because Shepperd’s original curve seemed to overestimate height growth, the BM variant reduces the estimated height growth by 25 percent. A height is estimated from the trees’ current age, and then its current age plus 10 years. Height growth is the difference between these two height estimates adjusted to account for cycle length and any user defined small-tree height growth adjustments for aspen. This equation estimates height growth in centimeters so FVS also converts the estimate from centimeters to feet. An estimate of the tree’s current age is obtained at the start of a projection using the tree’s height and solving equation {4.6.1.10} for age.

{4.6.1.10} *HT* = (26.9825 \* *A*^1.1752) \* (1 + [(*SI* – *SITELO*) / (*SITEHI* – *SITELO*)] ) \* 1.8

where:

*HT* is total tree height

*A* is total tree age

*SI* is quaking aspen site index (bounded *SITELO* + 0.5 <u><</u> *SI* )

*SITEHI* is upper end of the site index range for quaking aspen (66 in the BM variant)

For all species, a small random error is then added to the height growth estimate. The estimated height growth (*HTG*) is then adjusted to account for cycle length, user defined small-tree height growth adjustments, and adjustments due to small tree height model calibration from the input data.

Height growth estimates from the small-tree model are weighted with the height growth estimates from the large tree model over a range of diameters (*Xmin* and *Xmax*) in order to smooth the transition between the two models. The closer a tree’s *DBH* value is to the minimum diameter (*Xmin*), the more the growth estimate will be weighted towards the small-tree growth model. The closer a tree’s *DBH* value is to the maximum diameter (*Xmax*), the more the growth estimate will be weighted towards the large-tree growth model. If a tree’s *DBH* value falls outside of the range given by *Xmin* and *Xmax*, then the model will use only the small-tree or large-tree growth model in the growth estimate. The weight applied to the growth estimate is calculated using equation {4.6.1.11}, and applied as shown in equation {4.6.1.12}. The range of diameters for each species is shown in table 4.6.1.2.

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

**Table 4.6.1.2 Diameter bounds by species in the BM variant.**

| **Species Code** | **Xmin** | **Xmax** |
| --- | --- | --- |
| WP | 2.0 | 3.0 |
| WL | 1.0 | 2.0 |
| DF | 2.0 | 4.0 |
| GF | 2.0 | 4.0 |
| MH | 1.0 | 2.0 |
| WJ | 90.0 | 99.0 |
| LP | 2.0 | 4.0 |
| ES | 2.0 | 4.0 |
| AF | 2.0 | 4.0 |
| PP | 1.0 | 5.0 |
| WB | 1.5 | 3.0 |
| LM | 2.0 | 4.0 |
| PY | 2.0 | 4.0 |
| YC | 2.0 | 4.0 |
| AS | 2.0 | 4.0 |
| CW | 2.0 | 4.0 |
| OS | 1.0 | 5.0 |
| OH | 2.0 | 4.0 |

### ****4.6.2 Small Tree Diameter Growth****

As stated previously, for trees being projected with the small tree equations, height growth is predicted first, and then diameter growth. So both height at the beginning of the cycle and height at the end of the cycle are known when predicting diameter growth. Small tree diameter growth for trees over 4.5 feet tall is calculated as the difference of predicted diameter at the start of the projection period and the predicted diameter at the end of the projection period, adjusted for bark ratio. These two predicted diameters are estimated using the species-specific height-diameter relationships. By definition, diameter growth is zero for trees less than 4.5 feet tall.

For western white pine, western larch, Douglas-fir, grand fir, mountain hemlock, Engelmann spruce, subalpine fir, limber pine, and quaking aspen, diameters are predicted using the height-diameter equations discussed in section 4.1; equation {4.6.2.1} is used for lodgepole pine; equation {4.6.2.2} is used for ponderosa pine and other softwood; equation {4.6.2.3} is used for western juniper; equation {4.6.2.4} is used for whitebark pine; equation {4.6.2.5} is used for Pacific yew, Alaska cedar, black cottonwood, and other hardwood with coefficients shown in table 4.6.2.1.

{4.6.2.1} *DBH* = [-9.8752 / (ln(*HT* – 4.5) – 4.8656)] – 1.0

{4.6.2.2} *DBH* = (*HT* – 4.17085) / 3.03659

{4.6.2.3} *DBH* = [(*HT* – 4.5) \* 10] / (*SI* – 4.5)

{4.6.2.4} *DBH* = 0.3 + 0.000231\*(*HT* – 4.5)\**CR* – 0.00005\*(*HT* – 4.5)\**PCCF* +0.001711\* *CR* + 0.17023\*(*HT* – 4.5)

{4.6.2.5} *DBH* = c1 + c2\**CR* / 10 + c3\* ln(*HT*) + c4\* *HT* + c5\* *MGD*

where:

*DBH* is tree diameter at breast height

*HT* is tree height

*SI* is the species-specific site index

*CR* is the tree’s live crown ratio (compacted) expressed as a percent

*PCCF* is crown competition factor on the inventory point where the tree is established (bounded 25 <u><</u>  *PCCF* <u><</u> 300)

*MGD* is 1 if the stand is a managed stand; 0 otherwise

c1 - c5 are species-specific coefficients shown in table 4.6.2.1

**Table 4.6.2.1 Coefficients (c1 – c5) by species for equation {4.6.2.5} in the BM variant.**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Species Code** | **c1** | **c2** | **c3** | **c4** | **c5** |
| PY | -2.089 | 0 | 1.980 | 0 | 0 |
| YC | -0.532 | 0 | 1.531 | 0 | 0 |
| CW | 3.102 | 0 | 0 | 0.021 | 0 |
| OH | 3.102 | 0 | 0 | 0.021 | 0 |

## 4.7 Large Tree Growth Relationships

Trees are considered “large trees” for FVS modeling purposes when they are equal to, or larger than, some threshold diameter. This threshold diameter is set to 3.0” for all species, except western juniper, in the BM variant. Western juniper uses the small-tree relationships to predict height and diameter growth for trees of all sizes.

The large-tree model is driven by diameter growth meaning diameter growth is estimated first, and then height growth is estimated from diameter growth and other variables. These relationships are discussed in the following sections.

### 4.7.1 Large Tree Diameter Growth

The large tree diameter growth model used in most FVS variants is described in section 7.2.1 in Dixon (2002). For most variants, instead of predicting diameter increment directly, the natural log of the periodic change in squared inside-bark diameter (ln(*DDS*)) is predicted (Dixon 2002; Wykoff 1990; Stage 1973; and Cole and Stage 1972). For variants predicting diameter increment directly, diameter increment is converted to the *DDS* scale to keep the FVS system consistent across all variants.

The BM variant uses different equation forms to predict large-tree diameter growth based on species. Equation {4.7.1.1} is used to predict diameter growth for all trees. Coefficients for this equation are shown in tables 4.7.1.1 – 4.7.1.2.

Equation {4.7.1.2} predicts diameter growth in large trees with a *DBH* value less than 10.0” for western white pine, western larch, Douglas-fir, grand fir, mountain hemlock, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine and other softwood. Coefficients for this equation are given in tables 4.7.1.3 – 4.7.1.7. For these 10 species, results from equation {4.7.1.2} are weighted with results from equation {4.7.1.1} over the diameter range 3.0” to 10” using equation {4.7.1.3}. However, equation {4.7.1.2} yields a 5-year estimate which must be expanded to a 10-year basis before the weighting using equation {4.7.1.3}. Expansion, which is not shown here, is in terms of squared diameter in real scale and then converted back to a natural logarithm scale for weighting.

{4.7.1.1} ln(*DDSL*)= b1 + (b2 \* *EL*) + (b3 \* *EL*^2) + (b4 \* ln(*TSI*)) + (b5 \* sin(*ASP*)) + (b6\* cos(*ASP*)) + (b7 \* *SL*) + (b8 \* *SL*^2) + (b9 \* ln(*DBH*)) + (b10 \* ln(*BA*)) + (b11 \* *CR*) + (b12 \* *CR*^2) + (b13\* *DBH*^2) + (b14\* *BAL* / (ln(*DBH* + 1.0))) + (b15 \* *PCCF*) + (b16 \* *BAL*) + (b17 \* *BA*) + (b18 \* *MAI* \* *CCF*) + (b19 \* *CCF*) + (b20 \* *TSI*)

{4.7.1.2} ln(*DDSS*)= b1 + (b2 \* *EL*) + (b3 \* *EL*^2) + (b4 \* sin(*ASP*)) + (b5 \* cos(*ASP*)) + (b6 \* *SL*) + (b7 \* ln(*DBH*)) + (b8 \* ln(*BA*)) + (b9 \* *CR*) + (b10 \* *CR*^2) + (b11\* *DBH*^2) + (b12 \* *BAL* / (ln(*DBH* + 1.0))) + (b13\* *PCCF*) + *HAB*

{4.7.1.3} ln(*DDS*) = XWT\* ln(*DDSS*) + (1-XWT)\* ln(*DDSL*)

where:

*DDS* is the square of the diameter growth increment

*DDSL* is the estimated square of the diameter growth increment using equation {4.7.1.1}

*DDSS* is the estimated square of the diameter growth increment using equation {4.7.1.2}

*EL* is stand elevation in hundreds of feet (bounded to *EL* <u><</u> 30 for species 16 and 18)

*TSI* is a site index function based on species

*TSI* = *SI*  for WP, WL, DF, GF, WJ, ES, AF, PP, WB, LM,

PY, YC, AS, CW, OS, OH

*TSI* = 3.28 \* *SI* for MH

*TSI* = -43.78 + (2.16 \* *SI*) for LP

where: *SI* is the site index for the species

*ASP* is stand aspect for species 1-5, 7-10, 13-14, and 16-18

is (stand aspect – 0.7854) for species 6, 11-12, and 15

*SL* is stand slope

*CR* is crown ratio expressed as a proportion

*DBH* is tree diameter at breast height

*BA* is total stand basal area

*BAL* is total basal area in trees larger than the subject tree for species 1-10, and 13-18 is (total basal area in trees larger than the subject tree / 100) for species 11-12

*PCCF* is crown competition factor on the inventory point where the tree is established

*MAI* is stand mean annual increment

*CCF* is stand crown competition factor

*HAB* is a plant association code dependent intercept shown in table 4.7.1.6 and 4.7.1.7

 is a location-specific coefficient shown in tables 4.7.1.2 and 4.7.1.5

-  are species-specific coefficients shown in tables 4.7.1.1 and 4.7.1.4

*XWT* is 0 if *DBH* <u>></u> 10” ; 1 if *DBH* < 3” ; and ((10-*DBH*) / 7) otherwise

**Table 4.7.1.1 Coefficients (b2- b20) for equation 4.7.1.1 in the BM variant.**

| **Coefficient** | **Species Code** | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL** | **DF** | **GF** | **MH** | **LP** | **ES** | **AF** | **PP** |
| b2 | 0.00279 | 0 | 0.00371 | -0.00633 | 0.08520 | -0.06908 | 0 | -0.01423 | -0.05796 |
| b3 | -0.00001 | 0 | 0 | 0 | -0.00094 | 0.00062 | 0 | 0 | 0.00060 |
| b4 | 0 | 0.47469 | 0.76217 | 0.58666 | 0 | 0.34450 | 0.34406 | 0.51754 | 0.73067 |
| b5 | -0.19278 | 0 | -0.11862 | -0.19627 | 0.13360 | 0.09760 | 0.35781 | -0.27729 | -0.12480 |
| b6 | 0.12915 | 0 | -0.15167 | -0.16504 | 0.17940 | -0.37870 | -0.11989 | -0.44759 | -0.02280 |
| b7 | 0.77922 | 0 | -0.28123 | -0.67496 | 0.07630 | 0.03990 | 0 | 0.35402 | -0.16402 |
| b8 | -0.93813 | 0 | 0 | 0.76704 | 0 | 0 | 0 | 0 | 0 |
| b9 | 0.77889 | 0.41802 | 0.57990 | 1.01031 | 0.89780 | 0.70429 | 1.12805 | 0.83642 | 0.44675 |
| b10 | 0 | 0 | -0.06574 | -0.15658 | 0 | -0.17037 | 0 | -0.18969 | -0.10675 |
| b11 | 3.36606 | 2.15440 | 2.13121 | 2.56530 | 1.28400 | 3.00236 | 3.22770 | 1.60755 | 1.70901 |
| b12 | -1.80146 | -1.03088 | -0.40173 | -0.91846 | 0 | -1.24947 | -1.13951 | 0 | 0 |
| b13 | -0.00009 | 0 | -0.00038 | -0.00054 | -0.00048 | 0 | -0.00029 | 0.00009 | -0.00021 |
| b14 | -0.00897 | -0.00801 | -0.00886 | -0.00557 | -0.00661 | -0.00251 | -0.00156 | -0.00091 | -0.01184 |
| b15 | 0 | 0 | -0.00034 | 0 | -0.00107 | -0.00032 | -0.00014 | -0.00038 | -0.00057 |
| b16 | 0.00121 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b17 | 0 | -0.00070 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b18 | -1.00E-07 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b19 | -1.60E-06 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b20 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |

**Table 4.7.1.1 (Continued) Coefficients (b2- b20) for equation 4.7.1.1 in the BM variant.**

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Coefficient** | **Species Code** | | | | | | |
| **WB** | **LM** | **PY** | **YC** | **CW** | **OS** | **OH** |
| b2 | 0 | 0 | 0 | 0 | -0.075986 | -0.05796 | -0.075986 |
| b3 | 0 | 0 | 0 | 0 | 0.001193 | 0.00060 | 0.001193 |
| b4 | 0 | 0 | 0.252853 | 0.244694 | 0.227307 | 0.73067 | 0.227307 |
| b5 | -0.01752 | -0.01752 | 0 | 0.679903 | -0.86398 | -0.12480 | -0.86398 |
| b6 | -0.609774 | -0.609774 | 0 | -0.023186 | 0.085958 | -0.02280 | 0.085958 |
| b7 | -2.057060 | -2.057060 | 0 | 0 | 0 | -0.16402 | 0 |
| b8 | 2.11326 | 2.11326 | 0 | 0 | 0 | 0 | 0 |
| b9 | 0.213947 | 0.213947 | 0.879338 | 0.816880 | 0.889596 | 0.44675 | 0.889596 |
| b10 | 0 | 0 | 0 | 0 | 0 | -0.10675 | 0 |
| b11 | 1.523464 | 1.523464 | 1.970052 | 2.471226 | 1.732535 | 1.70901 | 1.732535 |
| b12 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| **Coefficient** | **Species Code** | | | | | | |
| **WB** | **LM** | **PY** | **YC** | **CW** | **OS** | **OH** |
| b13 | -0.000654 | -0.000654 | -0.000132 | -0.000254 | 0 | -0.00021 | 0 |
| b14 | 0 | 0 | -0.004215 | -0.005950 | -0.001265 | -0.01184 | -0.001265 |
| b15 | 0 | 0 | 0 | 0 | 0 | -0.00057 | 0 |
| b16 | -0.358634 | -0.358634 | 0 | 0 | 0 | 0 | 0 |
| b17 | 0 | 0 | -0.000173 | -0.000147 | -0.000981 | 0 | -0.000981 |
| b18 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b19 | -0.001996 | -0.001996 | 0 | 0 | 0 | 0 | 0 |
| b20 | 0.001766 | 0.001766 | 0 | 0 | 0 | 0 | 0 |

**Table 4.7.1.2 b1 values by location code for equation {4.7.1.1} in the BM variant.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Forest**  **Code** | **Species Code** | | | | | | | | |
| **WP** | **WL** | **DF** | **GF** | **MH** | **LP** | **ES** | **AF** | **PP** |
| 604, 614 | -0.23185 | -0.56061 | -1.69223 | -1.16884 | -1.6803 | 1.59448 | -2.38952 | -0.48027 | 0.05217 |
| 607 | -0.23185 | -0.56061 | -1.69223 | -1.16884 | -1.6803 | 1.59448 | -2.38952 | -0.48027 | -0.04456 |
| 616, 619 | -0.23185 | -0.56061 | -1.78978 | -1.16884 | -1.6803 | 1.49879 | -2.38952 | -0.48027 | 0.11197 |

**Table 4.7.1.2 (Continued) b1 values by location code for equation {4.7.1.1} in the BM variant.**

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Forest**  **Code** | **Species Code** | | | | | | |
| **WB** | **LM** | **PY** | **YC** | **CW** | **OS** | **OH** |
| 604, 614 | 1.91188 | 1.91188 | -1.31007 | -1.17804 | -0.10765 | 0.05217 | -0.10765 |
| 607 | 1.91188 | 1.91188 | -1.31007 | -1.17804 | -0.10765 | -0.04456 | -0.10765 |
| 616, 619 | 1.91188 | 1.91188 | -1.31007 | -1.17804 | -0.10765 | 0.11197 | -0.10765 |

**Table 4.7.1.3 Classification of species 1-5, 7-10, and 18 (Location Class) for the diameter increment model, equation {4.7.1.2}, in the BM variant; equation {4.7.1.2} does not pertain to species 6 or 11-16.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species Code** | | | | | | | | | |
| **WP** | **WL** | **DF** | **GF** | **MH** | **LP** | **ES** | **AF** | **PP** | **OS** |
| 1 | 1 | 2 | 3 | 4 | 4 | 3 | 3 | 5 | 5 |

**Table 4.7.1.4 Coefficients (b2- b13) by location class (1 – 5) for equation 4.7.1.2 in the BM variant.**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Coefficient** | **1** | **2** | **3** | **4** | **5** |
| b2 | 0 | -0.00823 | -0.09472 | 0.00912 | -0.07547 |
| b3 | 0 | 0 | 0.00092 | 0 | 0.00087 |
| b4 | 0.12754 | 0.05022 | -0.11202 | 0.35696 | -0.13976 |
| b5 | -0.06358 | -0.11174 | -0.18548 | -0.46361 | -0.08695 |
| b6 | -0.41366 | -0.36252 | -0.16110 | 0.45733 | -0.24248 |
| b7 | 1.20856 | 1.12948 | 1.52803 | 1.00488 | 1.04225 |
| b8 | -0.24782 | -0.15369 | -0.13405 | -0.24135 | -0.24965 |
| b9 | 1.73596 | 1.54957 | 0.66664 | 2.47118 | 2.31970 |
| b10 | 0 | 0 | 1.20070 | -0.99894 | -0.43073 |
| b11 | -0.000571 | -0.000023 | -0.000951 | -0.000643 | -0.000157 |
| b12 | -0.00066 | -0.00223 | -0.00199 | -0.00358 | -0.00105 |
| b13 | 0 | -0.00003 | -0.00167 | 0 | 0 |

**Table 4.7.1.5 b1 values by location class (1 – 5) for equation {4.7.1.2} in the BM variant.**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Forest Code** | **1** | **2** | **3** | **4** | **5** |
| 604 | -0.00991 | 0.12927 | 1.31341 | -0.21988 | 1.61313 |
| 607 | -0.00991 | 0.12927 | 1.53206 | -0.21988 | 1.75654 |
| 614 | 0.24298 | 0.42841 | 1.78409 | 0.22239 | 1.90894 |
| 616, 619 | -0.00991 | 0.31221 | 1.73754 | -0.47388 | 1.75744 |

**Table 4.7.1.6 *HAB* values by habitat class and location class (1 – 5) for equation {4.7.1.2} in the BM variant.**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Habitat Class** | **1** | **2** | **3** | **4** | **5** |
| 0 | 0 | 0 | 0 | 0 | 0 |
| 1 | -0.131277 | -0.336855 | -0.137259 | 0.119324 | 0.482619 |
| 2 | -0.328134 | -1.004248 | 0.282528 | 0.425094 | 0.173487 |
| 3 | 0 | -0.195972 | 0 | 0 | -0.087731 |
| 4 | 0 | -0.092403 | 0 | 0 | 0 |

**Table 4.7.1.7 Classification of habitat class by plant association code and location class (1 – 5) in the BM variant.**

| **PA**  **Code** | **1** | **2** | **3** | **4** | **5** | **PA**  **Code** | **1** | **2** | **3** | **4** | **5** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 0 | 1 | 0 | 0 | 0 | 47 | 0 | 0 | 0 | 0 | 0 |
| 2 | 0 | 1 | 0 | 0 | 0 | 48 | 0 | 0 | 0 | 0 | 0 |
| 3 | 0 | 3 | 0 | 2 | 0 | 49 | 0 | 3 | 0 | 0 | 3 |
| 4 | 0 | 3 | 0 | 2 | 0 | 50 | 0 | 3 | 0 | 0 | 3 |
| 5 | 0 | 3 | 0 | 2 | 0 | 51 | 0 | 3 | 0 | 0 | 3 |
| 6 | 0 | 3 | 0 | 2 | 0 | 52 | 0 | 3 | 0 | 0 | 3 |
| 7 | 0 | 3 | 0 | 2 | 0 | 53 | 0 | 3 | 0 | 2 | 3 |
| 8 | 0 | 3 | 0 | 2 | 0 | 54 | 0 | 3 | 0 | 2 | 3 |
| 9 | 0 | 3 | 0 | 2 | 0 | 55 | 0 | 3 | 0 | 0 | 3 |
| 10 | 0 | 3 | 0 | 2 | 0 | 56 | 0 | 3 | 0 | 0 | 3 |
| 11 | 0 | 4 | 0 | 0 | 0 | 57 | 0 | 0 | 0 | 0 | 0 |
| 12 | 0 | 4 | 0 | 0 | 0 | 58 | 0 | 0 | 0 | 0 | 0 |
| 13 | 0 | 3 | 0 | 2 | 0 | 59 | 0 | 3 | 0 | 0 | 3 |
| 14 | 0 | 0 | 0 | 0 | 0 | 60 | 0 | 0 | 0 | 0 | 0 |
| 15 | 0 | 0 | 0 | 0 | 0 | 61 | 0 | 3 | 0 | 0 | 3 |
| 16 | 0 | 0 | 0 | 0 | 0 | 62 | 2 | 2 | 0 | 0 | 0 |
| 17 | 0 | 0 | 0 | 0 | 0 | 63 | 0 | 0 | 0 | 0 | 0 |
| 18 | 0 | 0 | 0 | 0 | 0 | 64 | 0 | 0 | 0 | 0 | 0 |
| 19 | 0 | 0 | 0 | 0 | 0 | 65 | 0 | 0 | 0 | 0 | 0 |
| 20 | 0 | 0 | 0 | 0 | 0 | 66 | 0 | 0 | 0 | 0 | 0 |
| 21 | 0 | 1 | 0 | 0 | 0 | 67 | 0 | 0 | 0 | 0 | 0 |
| 22 | 0 | 1 | 0 | 0 | 0 | 68 | 0 | 0 | 0 | 0 | 1 |
| 23 | 0 | 0 | 0 | 0 | 0 | 69 | 0 | 0 | 0 | 0 | 1 |
| 24 | 0 | 1 | 0 | 0 | 0 | 70 | 1 | 0 | 0 | 1 | 2 |
| 25 | 0 | 1 | 0 | 0 | 0 | 71 | 1 | 0 | 0 | 1 | 2 |
| 26 | 0 | 0 | 0 | 0 | 0 | 72 | 0 | 0 | 0 | 0 | 1 |
| 27 | 0 | 1 | 0 | 0 | 0 | 73 | 0 | 0 | 0 | 0 | 1 |
| 28 | 2 | 2 | 0 | 0 | 0 | 74 | 0 | 0 | 0 | 0 | 1 |
| 29 | 0 | 0 | 0 | 0 | 0 | 75 | 0 | 0 | 0 | 0 | 1 |
| 30 | 2 | 2 | 0 | 0 | 0 | 76 | 0 | 0 | 0 | 0 | 1 |
| 31 | 0 | 3 | 0 | 2 | 3 | 77 | 1 | 0 | 0 | 1 | 0 |
| 32 | 0 | 3 | 0 | 2 | 3 | 78 | 1 | 0 | 0 | 1 | 0 |
| 33 | 0 | 3 | 0 | 2 | 3 | 79 | 1 | 0 | 0 | 1 | 0 |
| 34 | 0 | 3 | 0 | 2 | 3 | 80 | 1 | 0 | 0 | 1 | 0 |
| 35 | 0 | 3 | 0 | 2 | 3 | 81 | 1 | 0 | 0 | 1 | 2 |
| 36 | 0 | 3 | 0 | 2 | 3 | 82 | 1 | 0 | 0 | 0 | 1 |
| 37 | 0 | 3 | 0 | 2 | 3 | 83 | 1 | 0 | 0 | 1 | 0 |
| 38 | 0 | 3 | 0 | 2 | 3 | 84 | 1 | 0 | 0 | 1 | 0 |
| 39 | 0 | 3 | 0 | 2 | 3 | 85 | 1 | 0 | 0 | 1 | 2 |
| 40 | 0 | 3 | 0 | 2 | 3 | 86 | 1 | 0 | 2 | 0 | 0 |
| 41 | 0 | 3 | 0 | 2 | 3 | 87 | 1 | 3 | 1 | 0 | 0 |
| 42 | 0 | 3 | 0 | 2 | 3 | 88 | 1 | 3 | 1 | 0 | 0 |
| 43 | 0 | 3 | 0 | 2 | 3 | 89 | 1 | 0 | 2 | 0 | 0 |
| 44 | 0 | 3 | 0 | 2 | 3 | 90 | 0 | 3 | 0 | 2 | 3 |
| 45 | 0 | 3 | 0 | 2 | 3 | 91 | 0 | 3 | 0 | 2 | 3 |
| 46 | 0 | 3 | 0 | 2 | 3 | 92 | 0 | 3 | 0 | 2 | 3 |

\*A 0 value means that no habitat code is used.

Large-tree diameter growth for quaking aspen is predicted using the aspen equation from the UT variant identified in equation set {4.7.1.4}. Diameter growth is predicted from a potential diameter growth equation that is modified by stand density, average tree size and site. While not shown here, this diameter growth estimate is eventually converted to the *DDS* scale.

{4.7.1.4} Quaking aspen

*POTGR* = (0.4755 – 0.0000038336 \* *DBH*^ 4.1488) + (0.0451 \* *CR* \* *DBH* ^.67266)

*MOD* = 1.0 – exp (-*FOFR* \* *GOFAD* \* ((310-*BA*)/310)^0.5)

*FOFR* = 1.07528 \* (1.0 – exp (–1.89022 \* *DBH* / *QMD*))

*GOFAD* = 0.21963 \* (*QMD* + 1.0) ^0.73355

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

### 4.7.2 Large Tree Height Growth

Height growth equations in the BM variant for all species except western juniper, whitebark pine, limber pine, and quaking aspen are based on the site index curves shown in section 3.4. Equations for whitebark pine, limber pine, and quaking aspen are shown later in this section. Height growth for western juniper of all sizes is estimated as described in section 4.6.1 for all sizes of trees.

Using a species site index and tree height at the beginning of the projection cycle, an estimated tree age is computed using the site index curves. Also, a maximum species height is computed using equation {4.7.2.1}. If tree height at the beginning of the projection cycle is greater than the maximum species height, then height growth is computed using equation {4.7.2.2}.

{4.7.2.1} *HTMAX* = a0 + a1 \* *SI*

{4.7.2.2} *HTG* = b0 + b1 \* *RELSI*

*RELSI* = (*SIB* – *SITELO*) / (*SITEHI* – *SITELO*)

where:

*HTMAX* is maximum expected tree height in feet for the species in this variant (for mountain hemlock *HTMAX* is multiplied by 3.281 to convert maximum height from meters to feet)

*HTG* is estimated 10-year tree height growth (bounded 0.1 <u><</u> HTG)

*SI*  is species site index

*SIB* is species site index [bounded (*SITELO* + 0.5) <u><</u> SIB <u><</u> *SITEHI* ]

*RELSI* is relative site index

*SITELO* is minimum expected site index for this species in this variant shown in table 4.7.2.1

*SITEHI* is maximum expected site index for this species in this variant shown in table 4.7.2.1

a0 – a1 are species-specific coefficients shown in table 4.7.2.1

b0 – b1 are species-specific coefficients shown in table 4.7.2.1

**Table 4.7.2.3 *SITELO*, *SITEHI*, Maximum Age, and coefficients a0, a1, bo, b1 in the BM variant.**

| **Species Code** | ***SITELO*** | ***SITEHI*** | ***Max***  ***Age*** | **a0** | **a1** | **b0** | **b1** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| WP | 20 | 80 | 200 | 2.3 | 2.39 | 1.5 | 0.003 |
| WL | 50 | 110 | 110 | 12.86 | 1.32 | 2.0 | 0.0026 |
| DF | 50 | 110 | 180 | -2.86 | 1.54 | 0.4 | 0.0080 |
| GF | 50 | 110 | 130 | 21.29 | 1.24 | 2.1 | 0 |
| MH | 15 | 30 | 250 | 52.27 | 1.14 | 0 | 0 |
| WJ | - | - | - | - | - | - | - |
| LP | 30 | 70 | 140 | 2.3 | 1.75 | 1.5 | 0 |
| ES | 40 | 120 | 150 | 20.0 | 1.1 | 1.5 | 0 |
| AF | 50 | 150 | 150 | 45.27 | 1.24 | 1.5 | 0 |
| PP | 70 | 140 | 200 | -5.0 | 1.3 | 1.3 | 0.002 |
| WB | 20 | 65 | 400 | 85.0 | 0 | 0 | 0 |
| LM | 20 | 50 | 400 | 85.0 | 0 | 0 | 0 |
| PY | 5 | 75 | 200 | 50.0 | 0 | 0 | 0 |
| YC | 50 | 110 | 200 | 100.0 | 0 | 0 | 0 |
| AS | 30 | 66 | 100 | 75.0 | 0 | 0 | 0 |
| CW | 10 | 191 | 100 | 125.0 | 0 | 0 | 0 |
| OS | 70 | 140 | 200 | -5.0 | 1.3 | 1.3 | 0.002 |
| OH | 5 | 125 | 100 | 100.0 | 0 | 0 | 0 |

If tree height at the beginning of the projection cycle is less than the maximum species height, then for western white pine, western larch, Douglas-fir, grand fir, mountain hemlock, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, Pacific yew, Alaska cedar, black cottonwood, other softwood, and other hardwood, height increment is obtained by subtracting estimated current height from estimated future height, then adjusting the difference according to tree’s crown ratio and height relative to other trees in the stand. Estimated current height (ECH) and estimated future height (H10) are both obtained using the equations shown below. Estimated current height is obtained using estimated tree age at the start of the projection cycle and site index. Estimated future height is obtained using estimated tree age at the start of the projection cycle plus 10-years and site index.

{4.7.2.3} Used for white pine

*H* = *SI* / [c0 \* (1.0 – c1 \* (exp(c2\* *A*)))^c3]

{4.7.2.4} Used for western larch

*H* = 4.5 + (c1\* *A*) + (c2\* *A^*2) + (c3\* *A^*3) + (c4\* *A^*4) + (*SI* – 4.5) \* [c5 + (c6\* *A*) + (c7\* *A^*2)+ (c8\* *A^*3)] – c9\* [c10 + (c11\* *A*) + (c12\* *A^*2)+ (c13\* *A^*3)]

{4.7.2.5} Used for Douglas-fir and other species

*H* = 4.5 + exp[c1 + (c2 \* ln(*A*)) + (c3 \* ln(*A*))^4] + c4 \* [c5 + (c6 \* (1 – exp(c7 \* *A*))^c8)] + (*SI* – 4.5) \* [c5 + c6\* (1 – exp(c7\* *A*)^c8)]

{4.7.2.6} Used for grand fir

*H* = exp[c0 + c1\* ln(*A*) + c2 \* (ln(*A*))^4 + c3 \* (ln(*A*))^9 + c4 \* (ln(*A*))^11 + c5 \* (ln(*A*))^18] + c12 \* exp[c6 + c7 \* ln(*A*) + c8 \* (ln(*A*))^2 + c9 \* (ln(*A*))^7 + c10 \* (ln(*A*))^16 + c11\* (ln(*A*))^24] + (*SI* – 4.5) \* exp[c6 + c7 \* ln(*A*) + c8 \* (ln(*A*))^2 + c9 \* (ln(*A*))^7 + c10 \* (ln(*A*))^16 + c11 \* (ln(*A*))^24] + 4.5

{4.7.2.7} Used for mountain hemlock

*H* = [(c0 + (c1 \* *SI*)) \* (1 – exp(c2 \* SQRT(*SI*) \* *A*))^ c4 + (c5 / *SI*)) + 1.37] \* 3.281

{4.7.2.8} Used for lodgepole pine

*H* = *SI* \* [c0 + (c1 \* *A*) + (c2\* *A*^2)]

{4.7.2.9} Used for Engelmann spruce

*H =* 4.5 +[(c0 \* *SI*^c1) \* (1 – exp(-c2 \* *A*)) ^ (c3 \* *SI*^c4)]

{4.7.2.10} Used for subalpine fir

*H* = *SI* \* [c0 + (c1\* *A*) + (c2\* *A^*2)]

{4.7.2.11} Used for ponderosa pine and other softwood

*H* = [c0 \* (1 – exp(c1\* *A*))^c2] – [(c3 + c4 \* (1 – exp(c5\* *A*))^c6) \*c7] + [(c3 + c4 \* (1 – exp(c5\* *A*))^c6) \* (*SI* – 4.5)] + 4.5

{4.7.2.12} Used for Pacific yew, Alaska cedar, black cottonwood and other hardwood

*H* = (*SI* – 4.5) / (c0 + [c1 / (*SI* – 4.5)] + [c2 \* (*A*)^-1.4] + [(c3 / (*SI* – 4.5)) \* (*A*)^-1.4) + 4.5

where:

*H* is estimated height of the tree

*SI* is species site index

*A* is estimated age of the tree

c0 – c13 are species-specific coefficients shown in table 4.7.2.2

**Table 4.7.2.2 Coefficients (c0-c13) for height-growth equations in the BM variant.**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Coefficient** | **Species Code** | | | | |
| **WP** | **WL** | **DF** | **GF** | **MH** |
| c0 | 0.37504453 | 0 | 0 | -0.30935 | 22.8741 |
| c1 | 0.92503 | 1.46897 | -0.37496 | 1.2383 | 0.950234 |
| c2 | -0.0207959 | 0.0092466 | 1.36164 | 0.001762 | -0.00206465 |
| c3 | -2.4881068 | -0.00023957 | -0.00243434 | -0.0000054 | 0 |
| c4 | 0 | 1.1122E-06 | -79.97 | 2.046E-07 | 1.365566 |
| c5 | 0 | -0.12528 | -0.2828 | -4.04E-13 | 2.045963 |
| c6 | 0 | 0.039636 | 1.87947 | -6.2056 | 0 |
| c7 | 0 | -0.0004278 | -0.022399 | 2.097 | 0 |
| c8 | 0 | 1.7039E-06 | 0.966998 | -0.09411 | 0 |
| c9 | 0 | 73.57 | 0 | -0.00004382 | 0 |
| c10 | 0 | -0.12528 | 0 | 2.007E-11 | 0 |
| c11 | 0 | 0.039636 | 0 | -2.054E-17 | 0 |
| c12 | 0 | -0.0004278 | 0 | -84.93 | 0 |
| c13 | 0 | 1.7039E-06 | 0 | 0 | 0 |
| **Coefficient** | **Species Code** | | | | |
| **LP** | **ES** | **AF** | **PP, OS** | **PY, YC, CW, OH** |
| c0 | -0.0968 | 2.75780 | -0.07831 | 128.8952205 | 0.6192 |
| c1 | 0.02679 | 0.83312 | 0.0149 | -0.016959 | -5.3394 |
| c2 | -0.00009309 | 0.015701 | -0.000040818 | 1.23114 | 240.29 |
| c3 | 0 | 22.71944 | 0 | -0.7864 | 3368.9 |
| c4 | 0 | -0.63557 | 0 | 2.49717 | 0 |
| c5 | 0 | 0 | 0 | -0.0045042 | 0 |
| c6 | 0 | 0 | 0 | 0.33022 | 0 |
| c7 | 0 | 0 | 0 | 100.43 | 0 |
| c8 | 0 | 0 | 0 | 0 | 0 |
| c9 | 0 | 0 | 0 | 0 | 0 |
| c10 | 0 | 0 | 0 | 0 | 0 |
| c11 | 0 | 0 | 0 | 0 | 0 |
| c12 | 0 | 0 | 0 | 0 | 0 |
| c13 | 0 | 0 | 0 | 0 | 0 |

Potential 10-year height growth (*POTHTG*) is calculated by using equation {4.7.2.13}. Then, modifiers are applied to the height growth based upon a tree’s crown ratio (using equation {4.7.2.14}), and relative height and shade tolerance (using equation {4.7.2.15}). Equation {4.7.2.16} uses the Generalized Chapman – Richard’s function (Donnelly et. al, 1992) to calculate a height-growth modifier. Final height growth is calculated using equation {4.7.2.17} as a product of the modifier and potential height growth. The final height growth is then adjusted to the length of the cycle.

{4.7.2.13} *POTHTG* = *H10* – *ECH*

{4.7.2.14} *HGMDCR* = (100 \* (*CR* / 100)^3) \* exp(-5 \* (*CR* / 100)) bounded HGMDCR ≤ 1.0

{4.7.2.15} *HGMDRH* = [1 + ((1 / d1)^d2 - 1) – 1) \* exp((-1 \* (d3 / (1 – d4)) \* *RELHT^*(1 – d4)]^(-1 / (d2 - 1))

{4.7.2.16} *HTGMOD* = (0.25 \* *HGMDCR*) + (0.75 \* *HGMDRH*) bounded 0.1 ≤ *HTGMOD* ≤ 2.0

{4.7.2.17} *HTG* = *POTHTG* \* *HTGMOD*

where:

*POTHTG* is potential height growth

*H10* is estimated height of the tree in ten years

*ECH* is estimated height of the tree at the beginning of the cycle

*HGMDCR* is a height growth modifier based on crown ratio

*HGMDRH* is a height growth modifier based on relative height and shade tolerance

*HTGMOD* is a weighted height growth modifier

*CR* is crown ratio expressed as a percent

*RELHT* is tree height divided by average height of the 40 largest diameter trees in the stand; bounded *RELHT* <u><</u> 1.5

d1 – d4 are species-specific coefficients shown in table 4.7.2.3

**Table 4.7.2.3 Coefficients (d1 – d4) for equation 4.7.2.15 in the BM variant.**

|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Coefficient** | | **Species Code** | | | | | | | | | | | | |
| **WP** | **WL** | | **DF** | | **GF** | | **MH** | **LP** | **ES** | **AF** | **PP,OS** | **PY** | |
| d1 | | 0.10 | 0.01 | | 0.10 | | 0.20 | | 0.20 | 0.01 | 0.15 | 0.15 | 0.05 | 0.20 | |
| d2 | | 1.10 | 1.10 | | 1.10 | | 1.10 | | 1.10 | 1.10 | 1.10 | 1.10 | 1.10 | 1.10 | |
| d3 | | 15.0 | 12.0 | | 15.0 | | 20.0 | | 20.0 | 12.0 | 16.0 | 16.0 | 13.0 | 20.0 | |
| d4 | | -1.45 | -1.60 | | -1.45 | | -1.10 | | -1.10 | -1.60 | -1.20 | -1.20 | -1.60 | -1.10 | |
| **Coefficient** | **Species Code** | | | | | | |
| **YC** | | | **CW** | | **OH** | |
| d1 | 0.15 | | | 0.01 | | 0.10 | |
| d2 | 1.10 | | | 1.10 | | 1.10 | |
| d3 | 16.0 | | | 12.0 | | 15.0 | |
| d4 | -1.20 | | | -1.60 | | -1.45 | |

Whitebark pine, limber pine, and quaking aspen use Johnson’s SBB (1949) method (Schreuder and Hafley, 1977) for predicting height growth. Height increment is obtained by subtracting current height from the estimated future height. If tree diameter is greater than (C1 + 0.1), or tree height is greater than (C2 + 4.5), where C1 and C2 are shown in table 4.7.2.4, parameters of the SBB distribution cannot be calculated and height growth is set to 0.1. Otherwise, the SBB distribution “*Z*” parameter is estimated using equation {4.7.2.18}.

{4.7.2.18} *Z* = [C4 + C6 \* *FBY2* – C7 \* (C3 + C5 \* *FBY1*)] \* (1 – C7^2)^-0.5

FBY1 = ln[Y1/(1 - Y1)]

FBY2 = ln[Y2/(1 - Y2)]

Y1 = (DBH – 0.095) / C1

Y2 = (HT – 4.5) / C2

where:

*HT* is tree height at the beginning of the cycle

*DBH* is tree diameter at breast height at the beginning of the cycle

C1 – C7 are coefficients based on species and crown ratio class shown in table 4.7.2.4

Equation {4.7.2.19} is used to eliminate known bias in this methodology.

{4.7.2.19} Z = Z + (0.1 – 0.10273 \* *Z* + 0.00273 \* *Z^*2) if Z < 0; set Z = 0

If the *Z* value is 2.0 or less, it is adjusted for all younger aged trees using equation {4.7.2.20}. This adjustment is done for trees with an estimated age between 11 and 39 years and a diameter less than 9.0 inches. After this calculation, the value of *Z* is bounded to be 2.0 or less for trees meeting these criteria.

{4.7.2.20} *Z* = *Z* \* (0.3564 \* *DG*) \* CLOSUR \* *K*

if CCF > 100: CLOSUR = PCT / 100

if CCF < 100: CLOSUR = 1

if CR > 75 %: K = 1.1

if CR < 75 %: K = 1.0

where:

*DG* is diameter growth for the cycle

*PCT* is the subject tree’s percentile in the basal area distribution of the stand

*CCF* is stand crown competition factor

Estimated height 10 years later is calculated using equation {4.7.2.21}, and finally, 10-year height growth is calculated by subtraction using equation {4.7.2.22} and adjusted to the cycle length.

{4.7.2.21} *H10* = [(*PSI* / (1 + *PSI*)) \* C2] + 4.5

*PSI* = C8 \* [(*D10* – 0.1) / (0.1 + C1– *D10*)]^C9 \* [e(*K*)]

*K* = *Z* \* [(1 - C7^2)^0.5 / C6]

{4.7.2.22} Height 10 years later

H10 > HT: POTHTG = H10 – HT

H10 <u><</u> HT: POTHTG = 0.1

where:

*H10* is estimated height of the tree in ten years

*HT* is tree height at the beginning of the cycle

*D10* is estimated diameter at breast height of the tree in ten years

*POTHTG* is potential height growth

C1 – C9 are coefficients based on species and crown ratio class shown in table 4.7.2.4

**Table 4.7.2.4 Coefficients in the large tree height growth model, by crown ratio, for species using the Johnson’s SBB height distribution in the BM variant.**

| **Coefficient\*** | **WB, LM** | **AS** |
| --- | --- | --- |
| C1 (*CR*<u><</u> 24) | 37.0 | 30.0 |
| C1 (25<u><</u>*CR*<u><</u>74) | 45.0 | 30.0 |
| C1 (75<u><</u>*CR*<u><</u>100) | 45.0 | 35.0 |
| C2 (*CR*<u><</u> 24) | 85.0 | 85.0 |
| C2 (25<u><</u>*CR*<u><</u>74) | 100.0 | 85.0 |
| C2 (75<u><</u>*CR*<u><</u>100) | 90.0 | 85.0 |
| C3 (*CR*<u><</u> 24) | 1.77836 | 2.00995 |
| C3 (25<u><</u>*CR*<u><</u>74) | 1.66674 | 2.00995 |
| C3 (75<u><</u>*CR*<u><</u>100) | 1.64770 | 1.80388 |
| C4 (*CR*<u><</u> 24) | -0.51147 | 0.03288 |
| C4 (25<u><</u>*CR*<u><</u>74) | 0.25626 | 0.03288 |
| C4 (75<u><</u>*CR*<u><</u>100) | 0.30546 | -0.07682 |
| C5 (*CR*<u><</u> 24) | 1.88795 | 1.81059 |
| C5 (25<u><</u>*CR*<u><</u>74) | 1.45477 | 1.81059 |
| C5 (75<u><</u>*CR*<u><</u>100) | 1.35015 | 1.70032 |
| C6 (*CR*<u><</u> 24) | 1.20654 | 1.28612 |
| C6 (25<u><</u>*CR*<u><</u>74) | 1.11251 | 1.28612 |
| C6 (75<u><</u>*CR*<u><</u>100) | 0.94823 | 1.29148 |
| C7 (*CR*<u><</u> 24) | 0.57697 | 0.72051 |
| C7 (25<u><</u>*CR*<u><</u>74) | 0.67375 | 0.72051 |
| C7 (75<u><</u>*CR*<u><</u>100) | 0.70453 | 0.72343 |
| C8 (*CR*<u><</u> 24) | 3.57635 | 3.00551 |
| C8 (25<u><</u>*CR*<u><</u>74) | 2.17942 | 3.00551 |
| C8 (75<u><</u>*CR*<u><</u>100) | 2.46480 | 2.91519 |
| C9 (*CR*<u><</u> 24) | 0.90283 | 1.01433 |
| C9 (25<u><</u>*CR*<u><</u>74) | 0.88103 | 1.01433 |
| C9 (75<u><</u>*CR*<u><</u>100) | 1.00316 | 0.95244 |

\**CR* represents percent crown ratio

For quaking aspen, if estimated tree age at the beginning of the projection cycle is greater than the expected maximum age for quaking aspen then height increment is set to 0.1 foot.

# 5.0 Mortality Model

The BM variant uses an SDI-based mortality model as described in Section 7.3.2 of Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002, referred to as EFVS). This SDI-based mortality model is comprised of two steps: 1) determining the amount of stand mortality (section 7.3.2.1 of EFVS) and 2) dispersing stand mortality to individual tree records (section7.3.2.2 of EFVS). In determining the amount of stand mortality, the summation of individual tree background mortality rates is used when stand density is below the minimum level for density dependent mortality (default is 55% of maximum SDI), while stand level density-related mortality rates are used when stands are above this minimum level.

The equation used to calculate individual tree background mortality rates for all species is shown in equation {5.0.1}, and this is then adjusted to the length of the cycle by using a compound interest formula as shown in equation {5.0.2}. Coefficients for these equations are shown in table 5.0.1. The overall amount of mortality calculated for the stand is the summation of the final mortality rate (*RIP*) across all live tree records.

{5.0.1} RI = [1 / (1 + exp(p0 + p1 \* DBH))] \* 0.5

{5.0.2} RIP = 1 – (1 – RI*)*^Y

where:

RI is the proportion of the tree record attributed to mortality

RIP is the final mortality rate adjusted to the length of the cycle

DBH is tree diameter at breast height

Y is length of the current projection cycle in years

p0 and p1 are species-specific coefficients shown in table 5.0.1

**Table 5.0.1 Coefficients used in the background mortality equation {5.0.1} in the BM variant.**

| **Species Code** | **p0** | **p1** |
| --- | --- | --- |
| WP | 6.5112 | -0.0052485 |
| WL | 6.5112 | -0.0052485 |
| DF | 7.2985 | -0.0129121 |
| GF | 5.1677 | -0.0077681 |
| MH | 9.6943 | -0.0127328 |
| WJ | 5.1677 | -0.0077681 |
| LP | 5.9617 | -0.0340128 |
| ES | 9.6943 | -0.0127328 |
| AF | 5.1677 | -0.0077681 |
| PP | 5.5877 | -0.005348 |
| WB | 6.5112 | -0.0052485 |
| LM | 6.5112 | -0.0052485 |
| PY | 5.5877 | -0.005348 |
| YC | 5.5877 | -0.005348 |
| AS | 5.1677 | -0.0077681 |
| CW | 5.5877 | -0.005348 |
| OS | 5.5877 | -0.005348 |
| OH | 5.9617 | -0.0340128 |

When stand density-related mortality is in effect, the total amount of stand mortality is determined based on the trajectory developed from the relationship between stand SDI and the maximum SDI for the stand. This is explained in section 7.3.2.1 of EFVS.

Once the amount of stand mortality is determined based on either the summation of background mortality rates or density-related mortality rates, mortality is dispersed to individual tree records in relation to either a tree’s DBH or percentile in the basal area distribution (PCT) using equations {5.0.3} or {5.0.4}. This value is then adjusted by a species-specific mortality modifier representing the species shade tolerance shown in equation {5.0.5}.

The mortality model makes multiple passes through the tree records multiplying a record’s trees-per-acre value times the final mortality rate (MORT), accumulating the results, and reducing the trees-per-acre representation until the desired mortality level has been reached. If the stand still exceeds the basal area maximum sustainable on the site the mortality rates are proportionally adjusted to reduce the stand to the specified basal area maximum.

{5.0.3} Used for western white pine, western larch, Douglas-fir, grand fir, mountain hemlock,

lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, and other softwood

*MR* = [14.94435 – (0.69929 \* *DBH*) + (0.00868 \* *DBH^*2)] \* 0.001

{5.0.4} Used for western juniper, whitebark pine, limber pine, Pacific yew, Alaska cedar, quaking

Aspen, black cottonwood, and other hardwood

*MR* = [0.84525 – (0.01074 \* *PCT*) + (0.0000002 \* *PCT^*3)] \* 0.01

{5.0.5} *MORT* = *MR* \* *SPADJ*

where:

*MR* is the proportion of the tree record attributed to mortality (bounded: 0.01 <u><</u> *MR* <u><</u> 1)

*DBH* is tree diameter at breast height

*PCT* is the subject tree’s percentile in the basal area distribution of the stand

*MORT* is the final mortality rate of the tree record

*SPADJ* is the species specific shade tolerance adjustment shown in table 5.0.2

**Table 5.0.2 Shade tolerance adjustment (*SPADJ*) used in the density-related mortality equation {5.0.5} in the BM variant.**

| **Species Code** | ***SPADJ*** |
| --- | --- |
| WP | 1.0 |
| WL | 1.0 |
| DF | 1.0 |
| GF | 1.0 |
| MH | 1.0 |
| WJ | 1.1 |
| LP | 1.0 |
| ES | 1.0 |
| AF | 1.0 |
| PP | 1.0 |
| WB | 0.8 |
| LM | 0.8 |
| PY | 0.5 |
| YC | 0.5 |
| AS | 1.3 |
| CW | 0.85 |
| OS | 1.0 |
| OH | 1.0 |

# 6.0 Regeneration

The BM variant contains a partial establishment model which may be used to input regeneration and ingrowth into simulations. A more detailed description of how the partial establishment model works can be found in section 5.4.5 of the Essential FVS Guide (Dixon 2002).

The regeneration model is used to simulate stand establishment from bare ground, or to bring seedlings and sprouts into a simulation with existing trees. Sprouts are automatically added to the simulation following harvest or burning of known sprouting species (see table 6.0.1 for sprouting species).

**Table 6.0.1 Regeneration parameters by species in the BM variant.**

| **Species Code** | **Sprouting Species** | **Minimum Bud Width (in)** | **Minimum Tree Height (ft)** | **Maximum Tree Height (ft)** |
| --- | --- | --- | --- | --- |
| WP | No | 0.4 | 0.9 | 23 |
| WL | No | 0.3 | 1.7 | 27 |
| DF | No | 0.3 | 1.0 | 21 |
| GF | No | 0.3 | 1.0 | 21 |
| MH | No | 0.2 | 0.5 | 22 |
| WJ | No | 0.3 | 0.5 | 6 |
| LP | No | 0.4 | 1.3 | 24 |
| ES | No | 0.3 | 0.5 | 18 |
| AF | No | 0.3 | 0.5 | 18 |
| PP | No | 0.5 | 1.0 | 17 |
| WB | No | 0.4 | 1.0 | 23 |
| LM | No | 0.4 | 1.0 | 9 |
| PY | Yes | 0.2 | 1.0 | 20 |
| YC | No | 0.2 | 1.0 | 20 |
| AS | Yes | 0.2 | 6.0 | 16 |
| CW | Yes | 0.2 | 1.0 | 20 |
| OS | No | 0.5 | 1.0 | 17 |
| OH | No | 0.2 | 1.0 | 20 |

One sprout record is created for Pacific yew, two sprout records for quaking aspen and logic rule {6.0.1} is used to determine the number of sprout records for black cottonwood. The trees-per-acre represented by each sprout record is determined using the general sprouting probability equation {6.0.2}. See table 6.0.2 for species-specific sprouting probabilities, number of sprout records created, and reference information.

Users wanting to modify or turn off automatic sprouting can do so with the SPROUT or NOSPROUT keywords, respectively. Sprouts are not subject to maximum and minimum tree heights found in table 6.0.1 and do not need to be grown to the end of the cycle because estimated heights and diameters are end of cycle values.

{6.0.1} For black cottonwood:

*DSTMPi* ≤ 5: NUMSPRC = 1

5 < *DSTMPi* ≤ 10: NUMSPRC = NINT(-1.0 + 0.4 \* *DSTMPi*)

*DSTMPi* > 10: NUMSPRC = 3

{6.0.2} TPAs = *TPAi* \* *PS*

{6.0.3} *PS =* (*TPAi* / (*ASTPAR* \* 2)) \* ((*ASBAR* / 198) \* (40100.45 - 3574.02 \* *RSHAG* ^ 2 + 554.02 \* *RSHAG* ^ 3 - 3.5208 \* *RSHAG* ^ 5 + 0.011797 \* *RSHAG* ^ 7))

where:

DSTMPi  is the diameter at breast height of the parent tree

NUMSPRC is the number of sprout tree records

NINT rounds the value to the nearest integer

TPAs  is the trees per acre represented by each sprout record

*TPAi* is the trees per acre removed/killed represented by the parent tree

PS is a sprouting probability (see table 6.0.2)

ASBAR is the aspen basal area removed

ASTPAR is the aspen trees per acre removed

*RSHAG* is the age of the sprouts at the end of the cycle in which they were created

**Table 6.0.2 Sprouting algorithm parameters for sprouting species in the BM variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **Sprouting Probability** | **Number of Sprout Records** | **Source** |
| PY | 0.4 | 1 | Minore 1996  Ag. Handbook 654 |
| AS | {6.0.3} | 2 | Keyser 2001 |
| CW | 0.9 | {6.0.1} | Gom and Rood 2000  Steinberg 2001 |

Regeneration of seedlings must be specified by the user with the partial establishment model by using the PLANT or NATURAL keywords. Height of the seedlings is estimated in two steps. First, the height is estimated when a tree is 5 years old (or the end of the cycle – whichever comes first) by using the small-tree height growth equations found in section 4.6.1. Users may override this value by entering a height in field 6 of the PLANT or NATURAL keyword; however the height entered in field 6 is not subject to minimum height restrictions and seedlings as small as 0.05 feet may be established. The second step also uses the equations in section 4.6.1, which grow the trees in height from the point five years after establishment to the end of the cycle.

Seedlings and sprouts are passed to the main FVS model at the end of the growth cycle in which regeneration is established. Unless noted above, seedlings being passed are subject to minimum and maximum height constraints and a minimum budwidth constraint shown in table 6.0.1. After seedling height is estimated, diameter growth is estimated using equations described in section 4.6.2. Crown ratios on newly established trees are estimated as described in section 4.3.1.

Regenerated trees and sprouts can be identified in the treelist output file with tree identification numbers beginning with the letters “ES”.

# 7.0 Volume

In the BM variant, volume is calculated for four merchantability standards: total stem cubic feet, merchantable stem cubic feet, sawlog stem cubic feet, and merchantable stem board feet (Scribner). Sawlog cubic foot volume is only reported when the FIAVBC keyword is in use. Volume estimation is based on methods contained in the National Volume Estimator Library maintained by the Forest Products Measurements group in the Forest Management Service Center (Volume Estimator Library Equations 2009). The default volume merchantability standards and equation numbers for the BM variant are shown in tables 7.0.1 – 7.0.3.

Volume computation methods used by the Forest Inventory and Analysis (FIA) program can be requested with the FIAVBC keyword. This keyword encompasses the National Scale Volume and Biomass estimators (NSVB; Westfall et al. 2024) and regional equations used for woodland species (Burrill et al. 2024). More information about the FIAVBC keyword and required input variables can be found in the Essential FVS Guide (Dixon 2002).

**Table 7.0.1 Volume merchantability standards for the BM variant.**

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

**Table 7.0.2 Volume equation defaults for each species, at specific location codes, with model name.**

| **Common Name** | **Location Codes** | **Equation Number** | **Model Name** |
| --- | --- | --- | --- |
| western white pine | All | 616BEHW119 | Behre’s Hyperbola |
| western larch | 604 | 616BEHW073 | Behre’s Hyperbola |
| western larch | 607 | I12FW2W073 | Flewelling 2-Point Profile Model |
| western larch | 614 | I13FW2W202 | Flewelling 2-Point Profile Model |
| western larch | 616 | I13FW2W073 | Flewelling 2-Point Profile Model |
| Douglas-fir | 604, 607 | I12FW2W202 | Flewelling 2-Point Profile Model |
| Douglas-fir | 614 | I13FW2W017 | Flewelling 2-Point Profile Model |
| Douglas-fir | 616 | I11FW2W202 | Flewelling 2-Point Profile Model |
| grand fir | 616 | I11FW2W017 | Flewelling 2-Point Profile Model |
| grand fir | 604, 607 | I12FW2W017 | Flewelling 2-Point Profile Model |
| grand fir | 614 | I13FW2W017 | Flewelling 2-Point Profile Model |
| mountain hemlock | All | 616BEHW264 | Behre’s Hyperbola |
| western juniper | All | 616BEHW064 | Behre’s Hyperbola |
| lodgepole pine | 604, 607 | I12FW2W108 | Flewelling 2-Point Profile Model |
| lodgepole pine | 614, 616 | I00FW2W108 | Flewelling 2-Point Profile Model |
| Engelmann spruce | 604, 607 | 616BEHW093 | Behre’s Hyperbola |
| Engelmann spruce | 614 | I00FW2W093 | Flewelling 2-Point Profile Model |
| Engelmann spruce | 616 | I11FW2W093 | Flewelling 2-Point Profile Model |
| subalpine fir | 604, 607, 616 | 616BEHW019 | Behre’s Hyperbola |
| subalpine fir | 614 | I00FW2W019 | Flewelling 2-Point Profile Model |
| ponderosa pine | 604, 607 | I12FW2W122 | Flewelling 2-Point Profile Model |
| ponderosa pine | 614 | I13FW2W122 | Flewelling 2-Point Profile Model |
| ponderosa pine | 616 | I11FW2W122 | Flewelling 2-Point Profile Model |
| whitebark pine | All | 616BEHW101 | Behre’s Hyperbola |
| limber pine | All | 616BEHW113 | Behre’s Hyperbola |
| Pacific yew | All | 616BEHW231 | Behre’s Hyperbola |
| Alaska cedar | All | 616BEHW042 | Behre’s Hyperbola |
| quaking aspen | All | 616BEHW746 | Behre’s Hyperbola |
| black cottonwood | All | 616BEHW747 | Behre’s Hyperbola |
| other softwood | All | 616BEHW299 | Behre’s Hyperbola |
| other hardwood | All | 616BEHW998 | Behre’s Hyperbola |

**Table 7.0.3 Citations by Volume Model**

|  |  |
| --- | --- |
| **Model Name** | **Citation** |
| Behre’s Hyperbola | USFS-R6 Sale Preparation and Valuation Section of Diameter and Volume Procedures - R6 Timber Cruise System. 1978. |
| Flewelling 2-Point Profile Model | Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II. |

# 8.0 Fire and Fuels Extension (FFE-FVS)

The Fire and Fuels Extension to the Forest Vegetation Simulator (FFE-FVS) (Reinhardt and Crookston 2003) integrates FVS with models of fire behavior, fire effects, and fuel and snag dynamics. This allows users to simulate various management scenarios and compare their effect on potential fire hazard, surface fuel loading, snag levels, and stored carbon over time. Users can also simulate prescribed burns and wildfires and get estimates of the associated fire effects such as tree mortality, fuel consumption, and smoke production, as well as see their effect on future stand characteristics. FFE-FVS, like FVS, is run on individual stands, but it can be used to provide estimates of stand characteristics such as canopy base height and canopy bulk density when needed for landscape-level fire models.

For more information on FFE-FVS and how it is calibrated for the BM variant, refer to the updated FFE-FVS model documentation (Rebain, comp. 2010) available on the FVS website.

# 9.0 Insect and Disease Extensions

FVS Insect and Pathogen models for dwarf mistletoe and western root disease have been developed for the BM variant through the participation and contribution of various organizations led by Forest Health Protection. These models are currently maintained by the Forest Management Service Center and regional Forest Health Protection specialists. Additional details regarding each model may be found in chapter 8 of the Essential FVS Users Guide (Dixon 2002).

# 10.0 Literature Cited

Alexander, R.R. 1967. Site Indices for Engelmann Spruce. Res. Pap. RM-32. Forest Service, Rocky Mountain Research Station. 7 p.

Alexander, R.R., Tackle, D., and Dahms, W.G. 1967. Site Indices for Lodgepole Pine with Corrections for Stand Density Methodology. Res. Pap. RM-29. Forest Service, Rocky Mountain Research Station. 18 p.

Arney, J. D. 1985. A modeling strategy for the growth projection of managed stands. Canadian Journal of Forest Research. 15(3):511-518.

Barrett, James W. 1978. Height growth and site index curves for managed, even-aged stands of ponderosa pine in the Pacific Northwest. Res. Pap. PNW-232. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 14 p.

Bechtold, William A. 2004. Largest-crown-diameter Prediction Models for 53 Species in the Western United States. WJAF. Forest Service. 19(4): pp 241-245.

Brickell, James E. 1970. Equations and Computer subroutines for Estimating Site Quality of Eight Rocky Mountain Species. Res. Pap. INT-75. Ogden, UT: Forest Service, Intermountain Forest and Range Experiment Station. 24 p.

Burns, R. M., & Honkala, B. H. 1990. Silvics of North America: 1. Conifers; 2. Hardwoods Agriculture Handbook 654. US Department of Agriculture, Forest Service, Washington, DC.

Burrill, Elizabeth A.; DiTommaso, Andrea M.; Turner, Jeffery A.; Pugh, Scott A.; Christensen, Glenn; Kralicek, Karin M.; Perry, Carol J.; Lepine, Lucie C.; Walker, David M.; Conkling, Barbara L. 2024. The Forest Inventory and Analysis Database, FIADB user guides, volume: database description (version 9.3), nationwide forest inventory (NFI). U.S. Department of Agriculture, Forest Service. 1026 p. [Online].

Cochran, P.H. 1979a. Site index and height growth curves for managed, even-aged stands of Douglas-fir east of the Cascades in Oregon and Washington. Res. Pap. PNW-251. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 16 p.

Cochran, P.H. 1979b. Site index and height growth curves for managed, even-aged stands of white or grand fir east of the Cascades in Oregon and Washington. Res. Pap. PNW-252. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 13 p.

Cochran, P. H. 1985. Site index, height growth, normal yields, and stocking levels for larch in Oregon and Washington. Res. Note PNW-424. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 13 p.

Cole, D. M.; Stage, A. R. 1972. Estimating future diameters of lodgepole pine. Res. Pap. INT-131. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 20p.

Crookston, Nicholas L. 2003. Internal document on file. Data provided from Region 1. Moscow, ID: Forest Service.

Crookston, Nicholas L. 2005. Draft: Allometric Crown Width Equations for 34 Northwest United States Tree Species Estimated Using Generalized Linear Mixed Effects Models.

Crookston, Nicholas L. 2008. Internal Report.

Curtis, Robert O. 1967. Height-diameter and height-diameter-age equations for second-growth Douglas-fir. Forest Science 13(4):365-375.

Curtis, Robert O., Herman, Francis R., and Demars, Donald J. 1974. Height growth and site index for Douglas-fir in high-elevation forests of the Oregon-Washington Cascades. Forest Science 20(4):307-316.

Dahms, Walter. 1964. Gross and net yield tables for lodgepole pine. Res. Pap. PNW-8. Portland, OR: Pacific Northwest Forest and Range Experiment Station. 14 p.

DeMars, Donald J., Herman, Francis R., and Bell, John F. 1970. Preliminary site index curves for noble fir From stem analysis data. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station, Res. Note PNW-119. 9p.

Dixon, G. E. 1985. Crown ratio modeling using stand density index and the Weibull distribution. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 13p.

Dixon, Gary E. comp. 2002 (revised frequently). Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U.S. Department of Agriculture, Forest Service, Forest Management Service Center.

Donnelly, Dennis. 1996. Internal document on file. Data provided from Region 6. Fort Collins, CO: Forest Service.

Donnelly, Dennis M., Betters, David R., Turner, Matthew T., and Gaines, Robert E. 1992. Thinning even-aged forest stands: Behavior of singular path solutions in optimal control analyses. Res. Pap. RM-307. Fort Collins, CO: Forest Service. Rocky Mountain Forest and Range Experiment Station. 12 p.

Edminster, Carleton B., Mowrer, Todd H., and Shepperd, Wayne D. 1985. Site index curves for aspen in the central Rocky Mountains. Res. Note. RM-453. Fort Collins, CO: Forest Service, Rocky Mountain Forest and Range Experiment Station. 4p.

Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II.

Gom, L. A., & Rood, S. B. (2000). Fire induces clonal sprouting of riparian cottonwoods. Canadian Journal of Botany, 77(11), 1604-1616.

Hall, Frederick C. 1983. Growth basal area: a field method for appraising forest site productivity for stockability. Can. J. For. Res. 13:70-77.

Johnson, N.L. 1949. Bivariate distributions based on simple translation systems. Biometrika 36:297-304.

Keyser, C.E. 2001. Quaking Aspen Sprouting in Western FVS Variants: A New Approach. Unpublished Manuscript.

Krajicek, J.; Brinkman, K.; Gingrich, S. 1961. Crown competition – a measure of density. Forest Science. 7(1):35-42

Means, J.F., M.H. Campbell, and Johnson, G.P. 1986. Preliminary height growth and site index curves for mountain hemlock. FIR Report, Vol 10, No.1. Corvallis, OR: Oregon State University.

Minore, D., & Weatherly, H. G. (1996). Stump sprouting of Pacific yew. General Technical Report. PNW-GTR-378. Portland, Or.: U.S. Dept. of Agriculture, Pacific Northwest Research Station.

Paine, D.P., and Hann, D.W. 1982. Maximum Crown Width Equations for Southwestern Oregon Tree Species. Res. Pap. 46. Corvallis, OR: Oregon State University, Forest Research Laboratory. 20 p.

Powell, D.C. 2009. Updates of Maximum Stand Density Index and Site Index for the Blue Mountains Variant of the Forest Vegetation Simulator. Internal Rep. Pendleton, OR: US Department of Agriculture, Forest Service, Umatilla National Forest. 30p.

Powell, David C. 2024. Suggested Stocking Levels for Upland Forests of Northeastern Oregon and Southeastern Washington. January 2024. USDA Forest Service Umatilla National Forest Tech. Pub F14-SO-TP-01-24. 289pp.

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

# 11.0 Appendices

## 11.1 Appendix A. Distribution of Data Samples

The following tables contain distribution information of data used to fit species relationships in this variant’s geographic region (information from original variant overview).

**Table 11.1.1. Distribution of samples by National Forest, expressed in whole percent of total observations for each species.**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Species** | **Malheur** | **Ochoco** | **Umatilla** | **Wallowa-Whitman** | **Total Number of Observations** |
| western larch | 14 | 18 | 51 | 17 | 1209 |
| Douglas-fir | 28 | 13 | 36 | 22 | 3478 |
| grand fir | 27 | 16 | 40 | 18 | 2963 |
| lodgepole pine | 33 | 13 | 34 | 20 | 1117 |
| Engelmann spruce | 6 | 6 | 66 | 23 | 596 |
| subalpine fir | 11 | 8 | 48 | 32 | 599 |
| ponderosa pine | 44 | 25 | 20 | 12 | 6577 |

**Table 11.1.2. Distribution of samples for diameter breast high, expressed in whole percent of total observations for each species.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **DBH Range** | | | | | | | | |
| **0-5** | **5-10** | **10-15** | **15-20** | **20-25** | **25-30** | **30-35** | **35-40** | **40+** |
| western larch | 0 | 26 | 24 | 19 | 13 | 8 | 6 | 3 | 2 |
| Douglas-fir | 0 | 26 | 28 | 18 | 12 | 7 | 4 | 3 | 2 |
| grand fir | 0 | 28 | 26 | 18 | 11 | 8 | 6 | 2 | 2 |
| lodgepole pine | <1 | 73 | 23 | 3 | 1 | <1 | 0 | 0 | 0 |
| Engelmann spruce | 0 | 22 | 22 | 23 | 14 | 9 | 6 | 3 | 2 |
| subalpine fir | 0 | 42 | 29 | 16 | 10 | 3 | <1 | 0 | 0 |
| ponderosa pine | <1 | 22 | 19 | 15 | 15 | 13 | 9 | 5 | 3 |

**Table 11.1.3. Distribution of samples by Crown Ratio group, expressed in whole percent of total observations for each species.**

| **Species** | **Crown Code (1=1-10,2=11-20,…,9=81-100)** | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** |
| western larch | 2 | 10 | 26 | 28 | 19 | 11 | 4 | 1 | 0 |
| Douglas-fir | 1 | 3 | 7 | 16 | 21 | 22 | 16 | 11 | 4 |
| grand fir | 0 | 3 | 9 | 15 | 21 | 21 | 17 | 10 | 40 |
| lodgepole pine | 4 | 19 | 32 | 18 | 13 | 8 | 3 | 3 | 1 |
| Engelmann spruce | 0 | 2 | 6 | 12 | 17 | 22 | 19 | 15 | 6 |
| subalpine fir | 0 | 2 | 7 | 9 | 16 | 22 | 24 | 16 | 5 |
| ponderosa pine | 0 | 2 | 8 | 18 | 27 | 25 | 13 | 5 | 1 |

**Table 11.1.4. Distribution of samples by Aspect Code, expressed in percent of total observations for each species.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **Aspect Code** | | | | | | | | |
| **North** | **North-east** | **East** | **South-east** | **South** | **South-west** | **West** | **North-west** | **Level** |
| western larch | 26 | 17 | 10 | 7 | 5 | 5 | 13 | 11 | 7 |
| Douglas-fir | 21 | 13 | 12 | 6 | 10 | 6 | 13 | 11 | 7 |
| grand fir | 19 | 16 | 10 | 8 | 8 | 7 | 14 | 12 | 7 |
| lodgepole pine | 21 | 10 | 9 | 9 | 5 | 9 | 14 | 10 | 14 |
| Engelmann spruce | 21 | 15 | 7 | 8 | 8 | 4 | 8 | 16 | 13 |
| subalpine fir | 19 | 10 | 11 | 9 | 14 | 6 | 9 | 15 | 10 |
| ponderosa pine | 9 | 10 | 9 | 11 | 16 | 14 | 12 | 7 | 13 |

**Table 11.1.5. Distribution of samples by Slope Code, expressed in percent of total observations for each species.**

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **Slope code** | | | | | | | | | |
| **<u><</u> 5** | **6-15** | **16-25** | **26-35** | **36-45** | **46-55** | **56-65** | **66-75** | **76-85** | **<u>></u> 86** |
| western larch | 10 | 24 | 23 | 17 | 10 | 9 | 5 | 3 | 0 | 0 |
| Douglas-fir | 9 | 18 | 18 | 13 | 13 | 12 | 10 | 6 | 0 | 0 |
| grand fir | 10 | 20 | 22 | 15 | 12 | 10 | 7 | 3 | 1 | 0 |
| lodgepole pine | 22 | 34 | 22 | 13 | 5 | 4 | 1 | 1 | 0 | - |
| Engelmann spruce | 16 | 31 | 23 | 9 | 10 | 6 | 4 | 1 | 0 | - |
| subalpine fir | 12 | 38 | 17 | 15 | 9 | 5 | 2 | - | 4 | - |
| ponderosa pine | 19 | 28 | 21 | 12 | 9 | 6 | 3 | 1 | 0 | 0 |

**Table 11.1.6. Distribution of samples by total stand basal area per acre, expressed in percent of total for each species.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **Basal Area** | | | | | | | | |
| **0-50** | **50-**  **100** | **100-150** | **150-200** | **200-250** | **250-300** | **300-350** | **350-400** | **<u>></u> 400** |
| western larch | - | <1 | 7 | 35 | 45 | 13 | - | - | - |
| Douglas-fir | 2 | 21 | 35 | 21 | 13 | 6 | 2 | <1 | <1 |
| grand fir | 1 | 10 | 21 | 25 | 25 | 14 | 4 | 1 | 1 |
| lodgepole pine | 2 | 9 | 35 | 33 | 14 | 6 | 1 | <1 | - |
| Engelmann spruce | 1 | 5 | 12 | 21 | 27 | 25 | 10 | 1 | - |
| subalpine fir | - | 3 | 11 | 24 | 30 | 24 | 7 | 2 | - |
| ponderosa pine | 3 | 36 | 41 | 15 | 4 | 1 | 0 | 0 | 0 |

**Table 11.1.7. Distribution of samples by diameter growth, expressed in percent for each species.**

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **Diameter Growth (inches/10 years)** | | | | | | | |
| **< 0.5** | **0.5-1.0** | **1.0-1.5** | **1.5-2.0** | **2.0-2.5** | **2.5-3.0** | **3.0-3.5** | **<u>></u> 3.5** |
| western larch | 39 | 37 | 17 | 5 | 2 | - | <1 | - |
| Douglas-fir | 15 | 32 | 26 | 14 | 8 | 3 | 2 | 1 |
| grand fir | 10 | 31 | 30 | 16 | 7 | 3 | 2 | 1 |
| lodgepole pine | 31 | 43 | 18 | 5 | 2 | <1 | <1 | <1 |
| Engelmann spruce | 11 | 36 | 28 | 12 | 8 | 2 | 3 | 2 |
| subalpine fir | 22 | 42 | 22 | 9 | 3 | 1 | <1 | - |
| ponderosa pine | 27 | 37 | 22 | 9 | 3 | 1 | <1 | <1 |

**Table 11.1.8. Distribution of samples by elevation, expressed in percent for each species.**

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Species** | **Elevation** | | | | | |
| **< 2000** | **2000-3000** | **3000-4000** | **4000-5000** | **5000-6000** | **<u>></u> 6000** |
| western larch | - | <1 | 7 | 35 | 45 | 13 |
| Douglas-fir | - | 1 | 10 | 41 | 40 | 9 |
| grand fir | - | <1 | 4 | 31 | 47 | 17 |
| lodgepole pine | - | - | 1 | 16 | 62 | 20 |
| Engelmann spruce | - | <1 | 2 | 31 | 39 | 28 |
| subalpine fir | - | - | - | 8 | 44 | 49 |
| ponderosa pine | - | <1 | 5 | 39 | 53 | 3 |

## 11.2 Appendix B. Plant Association Codes

**Table 11.2.1 Plant association codes recognized in the BM variant.**

| **FVS Seq. Num. =  PA Type** | **PA Name** | **Alpha Code** | **SP** | **Site SP** | **Site Index** | **Site Source** | **Max SDI** | **Max SDI Source** | **Reference** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 = ABLA2/CAGE | Subalpine fir/elk sedge | CAG111 | DF |  | 48 | P |  |  | R6 E TP-036-92, p. 37 |
|  | WL |  | 65 | P |  |  |
|  | LP | X | 78 | P | 490 | P |
|  | ES |  | 66 | P |  |  |
|  | AF |  | 62 | P | 465 | P |
| 2 =ABLA2/STOC | Subalpine fir/western featherbells | CAG4 | DF |  | 56 | P |  |  | R6-ERW-TP-036-92 |
|  | LP | X | 78 | P | 490 | P |
|  | ES |  | 64 | P |  |  |
|  | AF |  | 48 | P | 465 | P |
| 3 = PSME/CAGE-BLUE | Douglas-fir/elk sedge (Blue Mountains) | CDG111 | PP | X | 77 | P | 278 | P | R6 E TP-036-92 , p. 93 |
|  | DF |  | 52 | P | 351 | P |
|  | WL |  | 59 | P |  |  |
|  | GF |  | 62 | P |  |  |
| 4 = PSME/CARU-BLUE | Douglas-fir/pinegrass (Blue Mountains) | CDG112 | PP | X | 83 | P | 329 | P | R6 E TP-036-92, p. 91 |
|  | DF |  | 53 | P | 330 | P |
|  | WL |  | 55 | P |  |  |
|  | GF |  | 48 | P |  |  |
| 5 = PSME/CARU | Douglas-fir/pinegrass | CDG121 | PP | X | 86 | P | 451 | P | R6 E TP-255-86, p. 93 |
|  | DF |  | 55 | P | 475 | P |
| 6 = PSME/HODI | Douglas-fir/oceanspray | CDS611 | PP |  | 86 | P | 425 | P | R6 E TP-036-92, p. 85 |
|  | DF | X | 64 | P | 319 | P |
| 7 = PSME/SYAL-WALLO | Douglas-fir/common snowberry (Wallowa) | CDS622 | PP | X | 84 | P | 416 | P | R6 E TP-255-86, p. 358 |
|  | DF |  | 60 | P | 475 | P |
| 8 = PSME/SYOR-WALLO | Douglas-fir/mountain snowberry (Wallowa) | CDS623 | PP | X | 90 | P | 451 | P | R6 E TP-255-86, p. 365 |
|  | DF |  | 55 | P |  |  |
| 9 = PSME/SYAL-BLUE | Douglas fir/common snowberry (Blue Mountains) | CDS624 | PP |  | 81 | P | 341 | P | R6 E TP-036-92, p. 87 |
|  | DF | X | 61 | P | 309 | P |
|  | WL |  |  |  | 256 | P |
|  | GF |  | 70 | P |  |  |
| 10= PSME/SPBE | Douglas-fir/spiraea | CDS634 | PP | X | 82 | P | 441 | P | R6 E TP-255-86, p. 352 |
|  | DF |  | 61 | P | 464 | P |
| 11 = PSME/PHMA-BLUE | Douglas-fir/ninebark | CDS711 | PP |  | 87 | P | 343 | P | R6 E TP-036-92, p. 83 |
|  | DF | X | 59 | P | 281 | P |
|  | WL |  | 64 | P | 320 | P |
| 12 = PSME/ACGL-PHMA | Douglas-fir/Rocky Mountain maple-ninebark | CDS722 | DF | X | 64 | P | 346 | P | R6 E TP-255-86, p. 339 |
|  | PP |  | 96 | P | 351 | P |
| 13 = PSME/VAME-BLUE | Douglas-fir/big huckleberry (Blue Mountains) | CDS821 | PP |  | 92 | P | 241 | P | R6 E TP-036-92, p. 81 |
|  | DF | X | 53 | P | 229 | P |
| 14 = ABLA2/LIBO2 | Subalpine fir/twinflower | CEF221 | WL |  | 62 | P | 348 | P | R6 E TP-255-86, p. 268 |
|  | LP | X | 65 | P | 333 | P |
|  | ES |  | 67 | P | 538 | P |
|  | AF |  | 40 | P | 488 | P |
| 15 = ABLA2/STAM | Subalpine fir/twisted stalk | CEF311 | LP | X | 65 | P | 359 | P | R6 E TP-255-86, p. 275 |
|  | ES |  | 69 | P | 586 | P |
|  | GF |  | 57 | P |  |  |
|  | AF |  | 65 | P | 443 | P |
| 16 = ABLA2/TRCA3-BLUE | Subalpine fir/false bugbane (Blue Mountains) | CEF331 | LP | X | 65 | P | 556 | P | R6 E TP-036-92, p. 25 |
|  | ES |  | 60 | P | 430 | P |
|  | AF |  |  |  | 478 | P |
| 17 = ABLA2/POPU | Subalpine fir/Woodrush | CEF411 | DF |  | 59 | P | 475 | P | R6-ECOL-TP-255A86 |
|  | WL |  |  |  | 513 | P |
|  | LP | X | 65 | P | 405 | P |
|  | ES |  | 58 | P | 568 | P |
|  | GF |  | 54 | P |  |  |
|  | AF |  | 54 | P | 483 | P |
| 18 = PIEN/CAEU | Engelmann spruce/widefruit sedge | CEM111 | ES | X | 80 |  | 635 | H | R6 E TP-279-87, p. 55 |
| 19 = PIEN/EQAR-STRO | Engelmann spruce/common horsetail-rosy twisted stalk | CEM221 | ES | X | 90 |  | 712 | H | R6 E TP-279-87, p. 57 |
| 20 = PIEN/CLUN | Engelmann spruce/queen’s cup beadlily | CEM222 | ES | X | 15 |  | 842 | H | R6 E Tp-279-87, p. 49 |
| 21 = PIEN/VAOC2-FORB | Englemann spruce/bog blueberry/forb | CEM311 | ES | X | 85 |  | 643 | H | R6 E TP-004-88, p. 59 |
| 22 = PIEN/VAOC2/CAEU | Engelmann spruce/bog blueberry/ widefruit sedge | CEM312 | ES | X | 76 |  | 444 | H | R6 E TP-006-88, p. 45 |
| 23 = ABLA2/CLUN | Subalpine fir/queen’s cup beadily | CES131 | PP |  |  |  | 379 | P | R6 E TP-255-86 , p. 262 |
|  | WL | X | 83 | P | 414 | P |
|  | ES |  | 72 | P | 586 | P |
|  | GF |  | 77 | P | 681 | P |
|  | AF |  | 69 | P | 429 | P |
| 24 = ABLA2/MEFE | Subalpine fir/fool’s huckleberry | CES221 | DF |  | 56 | P |  |  | R6 E TP-255-86, p. 238 |
|  | LP | X | 65 | P | 360 | P |
|  | ES |  |  |  | 460 | P |
|  | AF |  |  |  | 410 | P |
| 25 = ABLA2/VAME-BLUE | Subalpine fir/big huckleberry (Blue Mountains) | CES311 | WL |  | 63 | P | 478 | P | R6 E TP-036-92, p. 33 |
|  | LP |  |  |  | 319 | P |
|  | ES |  | 58 | P | 478 | P |
|  | GF |  | 72 | P |  |  |
|  | AF | X | 51 | P | 331 | P |
| 26 = ABLA2/CLUN-BLUE | Subalpine fir/queen’s cup beadily (Blue Mountains) | CES314 | WL | X | 79 | P | 513 | P | R6 E TP-036-92, p. 27 |
|  | ES |  | 69 | P | 586 | P |
|  | GF |  | 69 | P |  |  |
|  | AF |  | 53 | P | 520 | P |
| 27 = ABLA2/VAME-WALLO | Subalpine fir/big huckleberry (Wallowa) | CES315 | DF |  | 55 | P | 475 | P | R6 E TP-255-86, p. 253 |
|  | WL |  | 62 | P | 460 | P |
|  | LP | X | 82 | P | 381 | P |
|  | ES |  | 65 | P | 573 | P |
|  | GF |  | 55 | P |  |  |
|  | AF |  | 63 | P | 425 | P |
| 28 = ABLA2/VASC-BLUE | Subalpine fir/grouse huckleberry (Blue Mountains) | CES411 | DF |  |  |  | 458 | P | R6 E TP-036-92, p. 35 |
|  | WL |  | 46 | P | 475 | P |
|  | LP | X | 66 | P | 396 | P |
|  | ES |  | 53 | P | 458 | P |
|  | GF |  | 61 | P |  |  |
|  | AF |  | 44 | P | 456 | P |
|  | WB |  | 19 | P |  |  |
| 29 = ABLA2/LIBO2 | Subalpine fir/twinflower | CES414 | DF |  | 64 | P |  |  | R6 E TP-036-92, p. 29 |
|  | WL |  | 58 | P | 513 | P |
|  | LP |  | 66 | P |  |  |
|  | ES |  | 60 | P | 474 | P |
|  | GF |  | 52 | P |  |  |
|  | AF | X | 53 | P | 419 | P |
| 30 = ABLA2/VASC/POPU | Subalpine fir/grouse huckleberry/skunk-leaved polem | CES415 | DF |  |  |  | 475 | P | R6 E TP-255-86, p. 244 |
|  | WL |  | 51 | P | 513 | P |
|  | LP | X | 70 | P | 405 | P |
|  | ES |  | 57 | P | 568 | P |
|  | GF |  | 51 | P |  |  |
|  | AF |  | 48 | P | 483 | P |
| 31 = PICO/LIBO2 | Lodgepole pine/twinflower | CLF211 | WL |  | 55 | P |  |  | R6 E TP-255-86, p. 305 |
|  | LP | X | 72 | P | 690 | C |
| 32 = PICO/CARU-VASC | Lodgepole pine/pinegrass-grouse huckleberry | CLG211 | LP | X | 39 |  | 395 | H | R6 AG 3-1-73, p. 34 |
| 33 = PICO/POPR | Lodgepole pine/Kentucky bluegrass | CLM112 | PP | X | 97 |  | 538 | H | R6 E TP-279-87, p. 29 |
| 34 = PICO/CAEU | Lodgepole pine/widefruit sedge | CLM113 | LP | X | 57 |  | 491 | H | R6 E TP-279-87, p. 41 |
| 35 = PICO/CAAQ | Lodgepole pine/aquatic sedge | CLM114 | LP | X | 45 |  | 549 | H | R6 E TP-279-87, p. 43 |
| 36 = PICO/VAOC2/CAEU | Lodgepole pine/bog blueberry/widefruit sedge | CLM312 | LP | X | 54 |  | 466 | H | R6 E TP-279-87, p. 39 |
| 37 = PICO/SPDO/FORB | Lodgepole pine/Douglas spiraea/forb | CLM313 | LP | X | 51 |  | 558 | H | R6 E TP-279-87, p. 33 |
| 38 = PICO/SPDO/CAEU | Lodgepole pine/Douglas spiraea/widefruit sedge | CLM314 | LP | X | 59 |  | 519 | H | R6 E TP-279-87, p. 35 |
| 39 = PICO-PIEN/ELPA2 | Lodgepole pine-Engelmann spruce/few-flow spikerush | CLM911 | LP | X | 35 |  | 495 | C | R6 E TP-279-87, p. 45 |
| 40 = PICO/VASC-BLUE | Lodgepole pine/grouse huckleberry (Blue Mountains) | CLS411 | LP | X | 34 |  | 331 | H | R6 AG 3-1-73, p. 36 |
| 41 = PICO/VASC/POPU-WALLO | Lodgepole pine/grouse huckleberry/skunk-leaved polem | CLS415 | WL |  | 45 | P |  |  | R6 E TP-255-86, p. 250 |
|  | LP | X | 61 | P | 785 | C |
|  | ES |  | 52 | P |  |  |
|  | AF |  | 42 | P |  |  |
| 42 = PICO/CARU | Lodgepole pine/pinegrass | CLS416 | PP |  | 78 | P |  |  | R6 E TP-036-92, p. 79 |
|  | DF |  | 53 | P |  |  |
|  | WL |  | 55 | P |  |  |
|  | LP | X | 66 | P | 279 | P |
| 43 = PICO(ABGR)/VAME-LIBO2 | Lodgepole pine/thinleaf huckleberry/pinegrass | CLS5 | PP |  |  |  | 456 | P | R6-ERW-TP-036-92 |
|  | DF |  | 55 | P | 475 | P |
|  | WL |  | 52 | P | 463 | P |
|  | LP | X | 67 | P | 543 | P |
|  | ES |  | 56 | P | 499 | P |
|  | GF |  | 52 | P | 645 | P |
|  | AF |  |  |  | 466 | P |
| 44 = PICO/VAME-BLUE | Lodgepole pine/big huckleberry (Blue Mountains) | CLS511 | LP | X | 30 | P | 348 | H | R6 AG 3-1-73, p. 35 |
| 45 = PICO/VAME-WALLO | Lodgepole pine/big huckleberry (Wallowa) | CLS515 | WL |  | 46 | P |  |  | R6 E TP-255-86, p. 259 |
|  | LP | X | 65 | P | 414 | H |
|  | ES |  | 46 | P |  |  |
| 46 = PICO(ABGR)/ALSI | Lodgepole pine/Sitka alders | CLS6 | DF |  |  |  | 475 | P | R6-ERW-TP-036-92 |
|  | WL |  | 59 | P | 513 | P |
|  | LP | X | 65 | P | 346 | P |
|  | ES |  |  |  | 586 | P |
|  | GF |  |  |  | 700 | P |
| 47 = TSME/VASC-WALLO | Mountain hemlock/grouse huckleberry (Wallowa) | CMS131 | LP | X | 68 | P | 283 | P | R6 E TP-255-86, p.230 |
|  | ES |  |  |  | 371 | P |
|  | AF |  |  |  | 520 | P |
|  | MH |  | 16 | P | 610 | C |
| 48 = TSME/VAME-WALLO | Mountain hemlock/big huckleberry (Wallowa) | CMS231 | LP | X | 68 | P | 283 | P | R6 E TP-255-86, p. 230 |
|  | ES |  |  |  | 371 | P |
|  | AF |  |  |  | 520 | P |
|  | MH |  | 15 | P | 745 | C |
| 49 = PIPO/AGSP-BLUE | Ponderosa pine/bluebunch wheatgrass (Blue Mountains) | CPG111 | PP | X | 72 | P | 166 | P | R6 E TP-036-92, p. 121 |
|  | DF |  | 52 | P |  |  |
|  | GF |  | 69 | P |  |  |
| 50 = PIPO/FEID-BLUE | Ponderosa pine/Idaho fescue (Blue Mountains) | CPG112 | PP | X | 74 | P | 243 | P | R6 E TP-036-92, p. 119 |
|  | DF |  | 59 | P |  |  |
| 51 = PIPO/FEID-WALLO | Ponderosa pine/Idaho fescue (Wallowa) | CPG131 | PP | X | 79 | P | 259 | P | R6 E TP-255-86, p. 378 |
|  | DF |  | 57 | P |  |  |
| 52 = PIPO-AGSP-WALLO | Ponderoas Pine/bluebunch wheatgrass (Wallowa) | CPG132 | PP | X | 77 | P | 233 | P | R6 E TP-255-86, p. 383 |
|  | DF |  | 62 | P |  |  |
| 53 = PIPO/CARU | Ponderosa pine/pinegrass | CPG221 | PP | X | 77 | P | 456 | P | R6 E TP-036-92, p. 107 |
|  | DF |  | 55 | P |  |  |
|  | GF |  | 66 | P |  |  |
| 54 = PIPO/CAGE | Ponderosa pine/elk sedge | CPG222 | PP | X | 73 | P | 251 | P | R6 E TP-036-92, p. 109 |
|  | DF |  | 51 | P |  |  |
|  | LP |  | 70 | P |  |  |
| 55 = PIPO/ELGL | Ponderosa pine/blue wildrye | CPM111 | PP | X | 80 | ? | 235 | H | R6 AG 3-1-73, p. 28 |
| 56 = PIPO/ARTR/FEID-AGSP | Ponderosa Pine/mtn big sagebrush/ID fescue-wheatgrass | CPS131 | PP | X | 73 | P | 238 | P | R6 E TP-036-92, p. 117 |
| 57 = PIPO/PUTR/CARO | Ponderosa pine/bitterbrush/Ross’ edge | CPS221 | PP | X | 74 | P | 304 | P | R6 E TP-036-92, p. 111 |
| 58 = PIPO/PUTR/CAGE | Ponderosa pine/bitterbrush/elk sedge | CPS222 | PP | X | 79 | P | 255 | P | R6 E TP-036-92, p. 113 |
| 59 = PIPO/PUTR/FEID-AGSP | Ponderosa pine/bitterbrush/ID fescue-bluebunch wheatgr. | CPS226 | PP | X | 64 | P | 231 | P | R6 E TP-036-92, p. 115 |
| 60 = PIPO/CELE/CAGE | Ponderosa pine/mountain-mahogany/elk sedge | CPS232 | PP | X | 65 | P | 290 | P | R6 E TP-036-92, p. 97 |
|  | DF |  | 53 | P |  |  |
| 61 = PIPO/CELE/PONE | Ponderosa pine/mountain-mahogany/Wheeler’s bluegrass | CPS233 | PP | X | 67 | P | 199 | P | R6 E TP-036-92, p. 99 |
| 62 = PIPO/CELE/FEID-AGSP | Pond. pine/mtn mahogany/ID fescue-bluebunch wheatgr. | CPS234 | PP | X | 66 | P | 196 | P | R6 E TP-036-92, p. 101 |
|  | DF |  | 51 | P |  |  |
| 63 = PIPO/SYAL-FLOOD | Ponderosa pine/common snowberry-floodplain | CPS511 | PP | X | 101 |  | 516 | H | R6 E TP-279-87, p. 27 |
| 64 = PIPO/SYAL-WALLO | Ponderosa pine/common snowberry (Wallowa) | CPS522 | PP | X | 85 | P | 301 | P | R6 E TP-255-86, p. 372 |
|  | DF |  | 70 | P |  |  |
| 65 = PIPO/SPBE | Ponderosa pine/spiraea | CPS523 | PP | X | 96 | P | 276 | P | R6 E TP-255-86, p. 377 |
|  | DF |  | 71 | P |  |  |
| 66 = PIPO/SYAL | Ponderosa pine/common snowberry | CPS524 | PP | X | 81 | P | 398 | P | R6 E TP-036-92, p. 103 |
|  | DF |  | 56 | P |  |  |
| 67 = PIPO/SYOR | Ponderosa pine/mountain snowberry | CPS525 | PP | X | 79 | P | 325 | P | R6 E TP-036-92, p. 105 |
| 68 = ABGR/TABR/CLUN | Grand fir/Pacific yew/queen’s cup beadily | CWC811 | ES | X | 76 | P | 533 | P | R6 E TP-036-92, p. 51 |
|  | GF |  | 69 | P | 700 | P |
| 69 = ABGR/TABR/LIBO2 | Grand fir/Pacific yew/twinflower | CWC812 | DF |  | 76 | P | 475 | P | R6 E TP-036-92, p. 53 |
|  | WL |  |  |  | 378 | P |
|  | ES | X | 66 | P | 374 | P |
|  | GF |  | 90 | P | 700 | P |
| 70 = ABGR/LIBO2 | Grand fir/twinflower | CWF311 | PP |  | 104 | P |  |  | R6 E TP-255-86, p. 298 |
|  | DF |  | 60 | P | 475 | P |
|  | WL |  | 60 | P | 511 | P |
|  | LP | X | 73 | P | 380 | P |
|  | ES |  | 59 | P |  |  |
|  | GF |  | 59 | P | 700 | P |
| 71 = ABGR/LIBO2-BLUE | Grand fir/twin flower (Blue Mountains) | CWF312 | PP |  | 92 | P | 456 | P | R6 E TP-036-92, p. 59 |
|  | DF |  | 62 | P | 475 | P |
|  | WL |  | 58 | P | 463 | P |
|  | LP | X | 72 | P | 543 | P |
|  | ES |  | 53 | P | 499 | P |
|  | GF |  | 56 | P | 645 | P |
|  | AF |  |  |  | 466 | P |
| 72 = ABGR/CLUN-WALLO | Grand fir/queen’s cup beadily (Wallowa) | CWF421 | PP |  | 111 | P | 456 | P | R6 E TP-255-86, p. 279 |
|  | DF |  | 69 | P | 475 | P |
|  | WL |  | 79 | P | 455 | P |
|  | LP | X | 81 | P | 428 | P |
|  | ES |  | 72 | P | 586 | P |
|  | GF |  | 74 | P | 700 | P |
|  | WP |  | 40 | P |  |  |
| 73 = ABCO/CLUN | White fir/queen’s cup beadily | CWF431 | DF | X | 77 |  | 872 | H | R6 E TP-279-87, p. 47 |
| 74 = ABGR/TRCA3 | Grand fir/false bugbane | CWF512 | DF |  | 75 | P |  |  | R6 E TP-036-92, p. 49 |
|  | WL |  |  |  | 498 | P |
|  | ES | X | 72 | P | 485 | P |
|  | GF |  | 79 | P | 693 | P |
| 75 = ABGR/GYDR | Grand fir/oakfern | CWF611 | GF | X | 79 | P | 691 | P | R6 E TP-036-92, p. 45 |
| 76 = ABGR/POMU-ASCA3 | Grand fir/sword fern ginger | CWF612 | WL | X | 79 | P | 438 | P | R6 E TP-036-92, p. 47 |
|  | ES |  |  |  | 586 | P |
|  | GF |  | 78 | P | 608 | P |
| 77 = ABGR/CAGE-BLUE | Grand fir/elk sedge (Blue Mountains) | CWG111 | PP | X | 81 | P | 263 | P | R6 E TP-036-92, p. 73 |
|  | DF |  | 56 | P | 376 | P |
|  | WL |  | 64 | P |  |  |
|  | LP |  | 70 | P |  |  |
|  | ES |  | 68 | P |  |  |
|  | GF |  | 50 | P | 700 | P |
| 78 = ABGR/CARU | Grand fir/pinegrass | CWG112 | PP | X | 90 | P | 456 | P | R6 E TP-255-86, p. 320 |
|  | DF |  | 60 | P | 475 | P |
|  | WL |  | 55 | P |  |  |
|  | ES |  | 75 | P |  |  |
|  | GF |  | 56 | P |  |  |
| 79 = ABGR/CARU-BLUE | Grand fir/pinegrass (Blue Mountains) | CWG113 | PP | X | 80 | P | 395 | P | R6 E TP-036-92, p. 71 |
|  | DF |  | 56 | P | 446 | P |
|  | WL |  | 59 | P | 384 | P |
|  | LP |  | 76 | P | 384 | P |
|  | GF |  | 52 | P | 555 | P |
| 80 = ABGR/BRVU | Grand fir/Columbia brome | CWG211 | WL | X | 79 | P | 513 | P | R6 E TP-036-92, p. 67 |
|  | ES |  |  |  | 586 | P |
|  | GF |  | 57 | P | 700 | P |
|  | AF |  | 55 | P |  |  |
| 81 = ABGR/VAME | Grand fir/big huckleberry | CWS211 | PP |  | 86 | P | 424 | P | R6 E TP-255-86, p. 290 |
|  | DF |  | 66 | P | 439 | P |
|  | WL |  | 84 | P | 464 | P |
|  | LP | X | 54 | P | 331 | P |
|  | ES |  | 66 | P | 586 | P |
|  | GF |  | 61 | P | 700 | P |
| 82 = ABGR/VAME-BLUE | Grand fir/big huckleberry | CWS212 | PP |  | 79 | P | 365 | P | R6 E TP-036-92, p. 61 |
|  | DF |  | 61 | P | 475 | P |
|  | WL |  | 57 | P | 513 | P |
|  | LP | X | 68 | P | 298 | P |
|  | ES |  | 67 | P | 426 | P |
|  | GF |  | 60 | P | 569 | P |
|  | AF |  |  |  | 515 | P |
| 83 = ABGR/SPBE | Grand fir/spiraea | CWS321 | PP | X | 92 | P | 456 | P | R6 E TP-255-86, p. 315 |
|  | DF |  | 58 | P | 475 | P |
|  | LP |  | 74 | P |  |  |
|  | GF |  | 65 | P |  |  |
| 84 = ABGR/SPBE-BLUE | Grand fir/birchleaf spiraea | CWS322 | PP |  | 82 | P | 319 | P | R6 E TP-036-92, p. 69 |
|  | DF | X | 57 | P | 248 | P |
|  | LP |  | 60 | P |  |  |
|  | GF |  | 49 | P | 443 | P |
| 85 = ABGR/AGGL-PHMA | Grand fir/Rocky Mountain maple-ninebark | CWS412 | PP |  | 107 | P |  |  | R6 E TP-255-86, p. 325 |
|  | DF | X | 66 | P | 475 | P |
|  | WL |  | 79 | P | 444 | P |
|  | GF |  | 65 | P | 628 | P |
| 86 = ABGR/ACGL | Grand fir/Rocky Mountain maple | CWS541 | DF | X | 70 | P | 301 | P | R6 E TP-036-92, p. 55 |
|  | WL |  |  |  | 439 | P |
|  | ES |  |  |  | 405 | P |
|  | GF |  | 71 | P | 576 | P |
| 87 = ABGR/VASC | Grand fir/grouse huckleberry | CWS811 | PP |  | 101 | P | 215 | P | R6 E TP-036-92, p. 65 |
|  | DF |  | 59 | P | 343 | P |
|  | WL |  | 61 | P | 380 | P |
|  | LP | X | 65 | P | 370 | P |
|  | ES |  | 43 | P |  |  |
|  | GF |  | 48 | P | 460 | P |
| 88 = ABGR/VASC-LIBO2 | Grand fir/grouse huckleberry-twinflower | CWS812 | PP |  | 81 | P |  |  | R6 E TP-036-92, p. 63 |
|  | DF |  | 56 | P | 434 | P |
|  | WL | X | 56 | P | 316 | P |
|  | LP |  | 75 | P | 413 | P |
|  | ES |  | 70 | P | 436 | P |
|  | GF |  | 56 | P | 618 | P |
|  | AF |  |  |  | 230 | P |
| 89 = ABGR/ACGL | Grand fir/Rocky Mountain maple | CWS912 | PP |  |  |  | 456 | P | R6 E TP-255-86, p. 310 |
|  | DF | X | 67 | P | 475 | P |
|  | WL |  | 64 | P |  |  |
|  | GF |  | 69 | P | 700 | P |
| 90 = POTR/ELGL | Quaking aspen/blue wildrye | HQM121 | LP | X | 55 |  | 464 | H | R6 E TP-279-87, p. 61 |
| 91 = POTR-PICO/SPDO/CAEU | Quaking Aspen-Lodgepole pine/Doug spiraea/wildfruit sedge | HQM411 | LP | X | 59 |  | 640 | H |  |
| 92 = POTR/SYAL/ELGL | Quaking aspen/common snowberry/blue wildrye | HQS221 | PP | X | 101 |  | 596 | H |  |

\*Site index estimates are from GBA analysis. Site index and SDI maximums are set by GBA analysis, Source=H (Hall 1983); CVS plot analysis, Source=C (Crookston 2008); or Blue Mountains Variant Analysis, Source = P (Powell 2009 & Powell 2024).

The U.S. Department of Agriculture (USDA) prohibits discrimination in all its programs and activities on the basis of race, color, national origin, sex, religion, age, disability, political beliefs, sexual orientation, or marital or family status. (Not all prohibited bases apply to all programs.) Persons with disabilities who require alternative means for communication of program information (Braille, large print, audiotape, etc.) should contact USDA’s TARGET Center at (202) 720-2600 (voice and TDD).

To file a complaint of discrimination, write USDA, Director, Office of Civil Rights, Room 326-W, Whitten Building, 1400 Independence Avenue, SW, Washington, DC 20250-9410 or call (202) 720-5964 (voice or TDD). USDA is an equal opportunity provider and employer.