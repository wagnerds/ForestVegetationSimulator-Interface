East Cascades (EC) Variant Overview of the Forest Vegetation Simulator

September 2025

![](data:image/jpeg;base64...)

![Forest%20Service%20Color](data:image/jpeg;base64...)Conifer stand, Okanogan National Forest

(Jennifer Croft, FS-R)

East Cascades (EC) Variant Overview of the Forest Vegetation Simulator

# Authors and Contributors:

The FVS staff has maintained model documentation for this variant in the form of a variant overview since its release in 1987. The original author was Ralph Johnson. In 2008, the previous document was replaced with this updated variant overview. Gary Dixon, Christopher Dixon, Robert Havis, Chad Keyser, Stephanie Rebain, Erin Smith-Mateja, and Don Vandendriesche were involved with this update. Erin Smith-Mateja cross-checked information contained in this variant overview with the FVS source code. The species list for this variant was expanded and this document was extensively revised by Gary Dixon in 2012.

FVS Staff. 2008 (revised September 23, 2025). East Cascades (EC) Variant Overview – Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 66p.

Table of Contents

[Authors and Contributors: ii](#_Toc209542325)

[1.0 Introduction 1](#_Toc209542326)

[2.0 Geographic Range 2](#_Toc209542327)

[3.0 Control Variables 3](#_Toc209542328)

[3.1 Location Codes 3](#_Toc209542329)

[3.2 Species Codes 3](#_Toc209542330)

[3.3 Habitat Type, Plant Association, and Ecological Unit Codes 5](#_Toc209542331)

[3.4 Site Index 5](#_Toc209542332)

[3.5 Maximum Density 6](#_Toc209542333)

[4.0 Growth Relationships 8](#_Toc209542334)

[4.1 Height-Diameter Relationships 8](#_Toc209542335)

[4.2 Bark Ratio Relationships 11](#_Toc209542336)

[4.3 Crown Ratio Relationships 13](#_Toc209542337)

[4.3.1 Crown Ratio Dubbing 13](#_Toc209542338)

[4.3.2 Crown Ratio Change 16](#_Toc209542339)

[4.3.3 Crown Ratio for Newly Established Trees 16](#_Toc209542340)

[4.4 Crown Width Relationships 17](#_Toc209542341)

[4.5 Crown Competition Factor 20](#_Toc209542342)

[4.6 Small Tree Growth Relationships 22](#_Toc209542343)

[4.6.1 Small Tree Height Growth 22](#_Toc209542344)

[4.6.2 Small Tree Diameter Growth 26](#_Toc209542345)

[4.7 Large Tree Growth Relationships 27](#_Toc209542346)

[4.7.1 Large Tree Diameter Growth 27](#_Toc209542347)

[4.7.2 Large Tree Height Growth 31](#_Toc209542348)

[5.0 Mortality Model 40](#_Toc209542349)

[6.0 Regeneration 43](#_Toc209542350)

[7.0 Volume 46](#_Toc209542351)

[8.0 Fire and Fuels Extension (FFE-FVS) 49](#_Toc209542352)

[9.0 Insect and Disease Extensions 50](#_Toc209542353)

[10.0 Literature Cited 51](#_Toc209542354)

[11.0 Appendices 56](#_Toc209542355)

[11.1 Appendix A. Distribution of Data Samples 56](#_Toc209542356)

[11.2 Appendix B. Plant Association Codes 59](#_Toc209542357)

Quick Guide to Default Settings

|  |  |  |
| --- | --- | --- |
| **Parameter or Attribute** | **Default Setting** | |
| Number of Projection Cycles | 1 (10 if using FVS GUI) | |
| Projection Cycle Length | 10 years | |
| Location Code (National Forest) | 606 – Mount Hood | |
| Plant Association Code | 114 (CPS 241 PIPO/PUTR/AGSP) | |
| Slope | 5 percent | |
| Aspect | 0 (no meaningful aspect) | |
| Elevation | 45 (4500 feet) | |
| Latitude / Longitude | Latitude | Longitude |
| All location codes | 47 | 121 |
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

#

# 1.0 Introduction

The Forest Vegetation Simulator (FVS) is an individual tree, distance independent growth and yield model with linkable modules called extensions, which simulate various insect and pathogen impacts, fire effects, fuel loading, snag dynamics, and development of understory tree vegetation. FVS can simulate a wide variety of forest types, stand structures, and pure or mixed species stands.

New “variants” of the FVS model are created by imbedding new tree growth, mortality, and volume equations for a particular geographic area into the FVS framework. Geographic variants of FVS have been developed for most of the forested lands in the United States.

The East Cascades (EC) variant was developed in 1988. It covers the lands east of the Cascade crest in Washington over through the Okanogan National Forest and extends south through the portion of the Mt. Hood National Forest that lies east of the Cascade crest in northern Oregon. Data used in building the EC variant came from forest inventories, silviculture stand examinations, and tree nutrition studies. Forest inventories came from the Forest Service as well as the Warm Springs and Yakima Indian Reservations and the State of Washington Department of Natural Resources. Western white pine uses equations developed for the Southern Oregon/Northeastern California (SO) variant, and western redcedar uses equations from the North Idaho (NI) variant.

Since the variant’s development in 1988, many of the functions have been adjusted and improved as more data has become available, and as model technology has advanced. In 2012 this variant was expanded from 11 species to 32 species. Species added include western hemlock, mountain hemlock, Pacific yew, whitebark pine, noble fir, white fir, subalpine larch, Alaska cedar, western juniper, bigleaf maple, vine maple, red alder, paper birch, giant chinquapin, Pacific dogwood, quaking aspen, black cottonwood, Oregon white oak, plum, and willow. The “other species” grouping was split into other softwood and other hardwood. White fir uses grand fir equations from the EC variant; mountain hemlock uses equations for the original other species grouping in the 11 species version of this variant; all other individual species groupings use equations from the Westside Cascades (WC) variant; other softwood uses the equations for the original other species grouping in the 11 species version of this variant; and other hardwood uses the WC quaking aspen equations.

To fully understand how to use this variant, users should also consult the following publication:

* Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002)

This publication may be downloaded from the Forest Management Service Center (FMSC), Forest Service website. Other FVS publications may be needed if one is using an extension that simulates the effects of fire, insects, or diseases.

# 2.0 Geographic Range

The EC variant was fit to data representing forest types on the eastern slope of the Cascade range in Washington and the northern portion of the eastern slope of the Cascade range in Oregon. Data used in initial model development came from forest inventories, silviculture stand examinations, and tree nutrition studies. Forest inventories came from US. Forest Service National Forests, Warm Springs and Yakima Indian Reservations, and the state of Washington Dept. of Natural Resources. Distribution of data samples for species fit from this data are shown in Appendix A.

The EC variant covers forest types on the eastern slope of the Cascade range in Washington and the northern portion of the eastern slope of the Cascade range in Oregon. The suggested geographic range of use for the EC variant is shown in figure 2.0.1.

**![Picture of the suggested geographic range of the Eastern Cascades variant of FVS.](data:image/jpeg;base64...)Figure 2.0.1 Suggested geographic range of use for the EC variant.**

# 3.0 Control Variables

FVS users need to specify certain variables used by the EC variant to control a simulation. These are entered in parameter fields on various FVS keywords available in the FVS interface or they are read from an FVS input database using the Database Extension.

## 3.1 Location Codes

The location code is a 3-digit code where, in general, the first digit of the code represents the Forest Service Region Number, and the last two digits represent the Forest Number within that region. In some cases, a location code beginning with a “7” or “8” is used to indicate an administrative boundary that doesn’t use a Forest Service Region number (for example, other federal agencies, state agencies, or other lands).

If the location code is missing or incorrect in the EC variant, a default forest code of 606 (Mount Hood National Forest) will be used. A complete list of location codes recognized in the EC variant is shown in table 3.1.1.

**Table 3.1.1 Location codes used in the EC variant.**

|  |  |
| --- | --- |
| **Location Code** | **Location** |
| 603 | Gifford Pinchot National Forest (mapped to 617) |
| 606 | Mount Hood National Forest |
| 608 | Okanogan National Forest |
| 613 | Mount Baker – Snoqualmie National Forest (mapped to 617) |
| 617 | Wenatchee National Forest |
| 621 | Colville National Forest (mapped to 699) |
| 699 | Okanogan National Forest (Tonasket RD) |
| 8106 | Colville Reservation (mapped to 608) |
| 8117 | Umatilla Reservation (mapped to 606) |
| 8130 | Yakama Nation Reservation (mapped to 613) |
| 8131 | Spokane Reservation (mapped to 617) |

## 3.2 Species Codes

The EC variant recognizes 30 species, plus two other composite species categories. You may use FVS species codes, Forest Inventory and Analysis (FIA) species codes, or USDA Natural Resources Conservation Service PLANTS symbols to represent these species in FVS input data. Any valid western species code identifying species not recognized by the variant will be mapped to a similar species in the variant. The species mapping crosswalk is available on the FVS website variant documentation webpage. Any non-valid species code will default to the “other hardwood” category.

Either the FVS sequence number or species code must be used to specify a species in FVS keywords and Event Monitor functions. FIA codes or PLANTS symbols are only recognized during data input and may not be used in FVS keywords. Table 3.2.1 shows the complete list of species codes recognized by the EC variant.

When entering tree data, users should substitute diameter at root collar (DRC) for diameter at breast height (DBH) for woodland species (western juniper).

**Table 3.2.1 Species codes used in the EC variant.**

| **Species Number** | **Species Code** | **FIA Code** | **PLANTS Symbol** | **Scientific Name1** | **Common Name1** |
| --- | --- | --- | --- | --- | --- |
| 1 | WP | 119 | PIMO3 | *Pinus monticola* | western white pine |
| 2 | WL | 073 | LAOC | *Larix occidentalis* | western larch |
| 3 | DF | 202 | PSME | *Pseudotsuga menziesii* | Douglas-fir |
| 4 | SF | 011 | ABAM | *Abies amabilis* | Pacific silver fir |
| 5 | RC | 242 | THPL | *Thuja plicata* | western redcedar |
| 6 | GF | 017 | ABGR | *Abies grandis* | grand fir |
| 7 | LP | 108 | PICO | *Pinus contorta* | lodgepole pine |
| 8 | ES | 093 | PIEN | *Picea engelmannii* | Engelmann spruce |
| 9 | AF | 019 | ABLA | *Abies lasiocarpa* | subalpine fir |
| 10 | PP | 122 | PIPO | *Pinus ponderosa* | ponderosa pine |
| 11 | WH | 263 | TSHE | *Tsuga heterophylla* | western hemlock |
| 12 | MH | 264 | TSME | *Tsuga mertensiana* | mountain hemlock |
| 13 | PY | 231 | TABR2 | *Taxus brevifolia* | Pacific yew |
| 14 | WB | 101 | PIAL | *Pinus albicaulis* | whitebark pine |
| 15 | NF | 022 | ABPR | *Abies procera* | noble fir |
| 16 | WF | 015 | ABCO | *Abies concolor* | white fir |
| 17 | LL | 072 | LALY | *Larix lyallii* | subalpine larch |
| 18 | YC | 042 | CANO9 | *Callitropsis nootkatensis* | Alaska cedar |
| 19 | WJ | 064 | JUOC | *Juniperus occidentalis* | western juniper |
| 20 | BM | 312 | ACMA3 | *Acer macrophyllum* | bigleaf maple |
| 21 | VN | 324 | ACCI | *Acer circinatum* | vine maple |
| 22 | RA | 351 | ALRU2 | *Alnus rubra* | red alder |
| 23 | PB | 375 | BEPA | *Betula papyrifera* | paper birch |
| 24 | GC | 431 | CHCHC4 | *Chrysolepis chrysophylla* var. *chrysophylla* | giant chinquapin |
| 25 | DG | 492 | CONU4 | *Cornus nuttallii* | Pacific dogwood |
| 26 | AS | 746 | POTR5 | *Populus tremuloides* | quaking aspen |
| 27 | CW | 747 | POBAT | *Populus balsamifera* ssp. *trichocarpa* | black cottonwood |
| 28 | WO | 815 | QUGA4 | *Quercus garryana* | Oregon white oak |
| 29 | PL | 760 | PRUNU | *Prunus* | plum |
| 30 | WI | 920 | SALIX | *Salix* | willow |
| 31 | OS | 299 | 2TN |  | other softwood2 |
| 32 | OH | 998 | 2TB |  | other hardwood2 |

1Set based on the USDA Forest Service NRM TAXA lists and the USDA Plants database.

2Other categories use FIA codes and NRM TAXA codes that best match the other category.

## 3.3 Habitat Type, Plant Association, and Ecological Unit Codes

Plant association codes recognized in the EC variant are shown in Appendix B. If an incorrect plant association code is entered or no code is entered FVS will use the default plant association code, which is 114 (PIPO/PUTR/AGSP). Plant association codes are used to set default site information such as site species, site indices, and maximum stand density indices as well as predicting snag dynamics in FFE-FVS. The site species, site index and maximum stand density indices can be reset via FVS keywords. Users may enter the plant association code or the plant association FVS sequence number on the STDINFO keyword, when entering stand information from a database, or when using the SETSITE keyword without the PARMS option. If using the PARMS option with the SETSITE keyword, users must use the FVS sequence number for the plant association.

## 3.4 Site Index

Site index is used in some of the growth equations for the EC variant. Users should always use the same site curves that FVS uses as shown in table 3.4.1. If site index is available, a single site index for the whole stand can be entered, a site index for each individual species in the stand can be entered, or a combination of these can be entered.

**Table 3.4.1 Site index reference curves for species in the EC variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **Reference** | **BHA or TTA1** | **Base Age** |
| WP | Brickell, J.E., 1970, USDA-FS Res. Pap. INT-75 | TTA | 50 |
| WL, LL | Cochran, P.H.,1985, USDA-FS Res. Note PNW-424 | BHA | 50 |
| DF | Cochran, P.H.,1979, USDA-FS Res. Pap. PNW-251 | BHA | 50 |
| SF, GF, WF | Cochran, P.H.,1979, USDA-FS Res. Pap. PNW-252 | BHA | 50 |
| RC | Hegyi, R.P.F., et. al. , 1979 (Revised 1981), Province of B.C., Forest Inv. Rep.1 | TTA | 100 |
| LP | Alexander, R.R., et. al., 1967, USDA-FS Res. Pap. RM-29 | TTA | 100 |
| ES | Alexander, R.R.,1967, USDA-FS Res. Pap. RM-32 | BHA | 100 |
| AF | Demars, D.J. et. al., 1970, USDA-FS Res. Note PNW-119 | BHA | 100 |
| PP | Barrett, J.W., 1978, USDA-FS Res. Pap. PNW-232 | BHA | 100 |
| WH | Wiley, K.N., 1978, Weyerhaeuser Forestry Pap. No. 17 | BHA | 50 |
| MH, OS | Means, et. al., 1986, unpublished FIR Report. Vol. 10, No. 1, OSU2 | BHA | 100 |
| NF | Herman, F.R. et al., 1978, USDA-FS Res. Pap. PNW-243 | BHA | 100 |
| RA | Harrington, C.A. et al., 1986, USDA-FS Res. Pap. PNW-358 | TTA | 20 |
| WO4 | King, J.E., 1966, Weyhaeuser Forestry Pap. No. 8 | BHA | 50 |
| Other3 | Curtis, R.O. et al., 1974, Forest Science 20:307-316 | BHA | 100 |

1Equation is based on total tree age (TTA) or breast height age (BHA)

2The source equation is in metric units; site index values for mountain hemlock and other softwood are assumed to be in meters.

3Other includes all the following species: Pacific yew, whitebark pine, Alaska cedar, western juniper, bigleaf maple, vine maple, paper birch, giant chinquapin, Pacific dogwood, quaking aspen, black cottonwood, plum species, willow, and other hardwood.

4Site index values entered for white oak using the King reference are converted to a different basis for use in some portions of this variant.

If site index is missing or incorrect, the default site species and site index are determined by plant association codes found in Appendix B. If the plant association code is missing or incorrect, the site species is set to ponderosa pine with a default site index set to 75.

Site indices for species not assigned a site index are determined based on the site index of the site species (height at base age) with an adjustment for the reference age differences between the site species and the target species.

## 3.5 Maximum Density

Maximum stand density index (SDI) and maximum basal area (BA) are important variables in determining density related mortality and crown ratio change. Maximum basal area is a stand level metric that can be set using the BAMAX or SETSITE keywords. If not set by the user, a default value is calculated from maximum stand SDI each projection cycle. Maximum stand density index can be set for each species using the SDIMAX or SETSITE keywords. If not set by the user, a default value is assigned as discussed below.

The default maximum SDI is set based on a user-specified, or default, plant association code or a user specified basal area maximum. If a user specified basal area maximum is present, the maximum SDI for all species is computed using equation {3.5.1}; otherwise, the SDI maximum for the site species is assigned from the SDI maximum associated with the plant association code shown in Appendix B. SDI maximums were set based on growth basal area (GBA) analysis developed by Hall (1983) or an analysis of Current Vegetation Survey (CVS) plots in USFS Region 6 by Crookston (2008). Once maximum SDI is determined for the site species, maximum SDI for all other species not assigned a value is estimated using a relative adjustment as seen in equation {3.5.2}. Some SDI maximums associated with plant associations are unreasonably large, so SDI maximums are capped at 900. Maximum stand density index at the stand level is a weighted average, by basal area, of the individual species SDI maximums.

{3.5.1} *SDIMAXi* = *BAMAX* / (0.5454154 \* *SDIU)*

{3.5.2} *SDIMAXi* = *SDIMAX*(*SSEC*) \* (*SDIMAX*(*S*) / *SDIMAX*(*SS*))

where:

*SDIMAXi* is the species-specific SDI maximum

*BAMAX* is the user-specified stand basal area maximum

*SDIMAX(SSEC)* is maximum SDI for the site species for the given plant association (*SSEC*) from Appendix B

*SDIMAX(SS)* is maximum SDI for the site species (*SS*) shown in table 3.5.1

*SDIMAX(S)* is maximum SDI for the target species (*S*) shown in table 3.5.1

**Table 3.5.1 Stand density index maximums by species in the EC variant.**

| **Species Code** | **SDI Maximum** |
| --- | --- |
| WP | 645 |
| WL | 648 |
| DF | 766 |
| SF | 766 |
| RC | 766 |
| GF | 766 |
| LP | 674 |
| ES | 766 |
| AF | 700 |
| PP | 645 |
| WH | 900 |
| MH | 766 |
| PY | 900 |
| WB | 900 |
| NF | 900 |
| WF | 766 |
| LL | 900 |
| YC | 900 |
| WJ | 900 |
| BM | 900 |
| VN | 900 |
| RA | 900 |
| PB | 900 |
| GC | 900 |
| DG | 900 |
| AS | 900 |
| CW | 900 |
| WO | 900 |
| PL | 900 |
| WI | 900 |
| OS | 766 |
| OH | 900 |

# 4.0 Growth Relationships

This chapter describes the functional relationships used to fill in missing tree data and calculate incremental growth. In FVS, trees are grown in either the small tree sub-model or the large tree sub-model depending on the diameter.

## 4.1 Height-Diameter Relationships

Height-diameter relationships in FVS are primarily used to estimate tree heights missing in the input data, and occasionally to estimate diameter growth on trees smaller than a given threshold diameter. In the EC variant, FVS will dub in heights by one of two methods. By default, the EC variant will use the Curtis-Arney functional form as shown in equation {4.1.1} (Curtis 1967, Arney 1985).

If the input data contains at least three measured heights for a species, then FVS can switch to a logistic height-diameter equation {4.1.2} (Wykoff, et.al 1982) that may be calibrated to the input data. FVS will not automatically use equation {4.1.2} even if you have enough height values in the input data. To override this default, the user must use the NOHTDREG keyword and change field 2 to a 1. Coefficients for equation {4.1.1} are given in table 4.1.1 sorted by species and location code. Coefficients for equation {4.1.2} are given in table 4.1.2.

{4.1.1} Curtis-Arney functional form

DBH <u>></u> 3.0”: HT = 4.5 + P2 \* exp[-P3 \* DBH ^ P4]

DBH < 3.0”: HT = [(4.5 + P2 \* exp[-P3 \* 3.0 ^ P4] – 4.51) \* (DBH – 0.3) / 2.7] + 4.51

{4.1.2} HT = 4.5 + exp(B1 + B2 / (DBH + 1.0))

where:

*HT* is tree height

*DBH* is tree diameter at breast height

B1 - B2 are species-specific coefficients shown in table 4.1.2

P1 - P4 are species-specific coefficients shown in table 4.1.1

**Table 4.1.1 Coefficients for Curtis-Arney equation {4.1.1} in the EC variant.**

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Species Code** | **Mount Hood (606)** | | | **Gifford Pinchot (603)**  **Mt. Baker / Snoqualmie (613)** | | |
| **P2** | **P3** | **P4** | **P2** | **P3** | **P4** |
| WP | 433.7807 | 6.3318 | -0.4988 | 1143.6254 | 6.1913 | -0.3096 |
| WL | 220.0 | 5.0 | -0.6054 | 255.4638 | 5.5577 | -0.6054 |
| DF | 234.2080 | 6.3013 | -0.6413 | 519.1872 | 5.3181 | -0.3943 |
| SF | 441.9959 | 6.5382 | -0.4787 | 171.2219 | 9.9497 | -0.9727 |
| RC | 487.5415 | 5.4444 | -0.3801 | 616.3503 | 5.7620 | -0.3633 |
| GF | 376.0978 | 5.1639 | -0.4319 | 727.8110 | 5.4648 | -0.3435 |
| LP | 121.1392 | 12.6623 | -1.2981 | 102.6146 | 10.1435 | -1.2877 |
| ES | 2118.6711 | 6.6094 | -0.2547 | 211.7962 | 6.7015 | -0.6739 |
| AF | 66.6950 | 13.2615 | -1.3774 | 113.5390 | 9.0045 | -0.9907 |
| PP | 324.4467 | 8.0484 | -0.5892 | 324.4467 | 8.0484 | -0.5892 |
| WH | 341.9034 | 6.4658 | -0.5379 | 504.1935 | 6.3635 | -0.4658 |
| MH | 224.6205 | 7.2549 | -0.6890 | 631.7598 | 5.8492 | -0.3384 |
| PY | 127.1698 | 4.8977 | -0.4668 | 127.1698 | 4.8977 | -0.4668 |
| WB | 139.0727 | 5.2062 | -0.5409 | 73.9147 | 3.9630 | -0.8277 |
| NF | 328.1443 | 5.9501 | -0.5088 | 178.7700 | 9.1133 | -0.9131 |
| WF | 376.0978 | 5.1639 | -0.4319 | 727.8110 | 5.4648 | -0.3435 |
| LL | 119.7985 | 4.7067 | -0.6751 | 119.7985 | 4.7067 | -0.6751 |
| YC | 126.1074 | 6.2499 | -0.8091 | 126.1074 | 6.2499 | -0.8091 |
| WJ | 60.6009 | 4.1543 | -0.6277 | 60.6009 | 4.1543 | -0.6277 |
| BM | 220.9772 | 4.2639 | -0.4386 | 220.9772 | 4.2639 | -0.4386 |
| VN | 179.0706 | 3.6238 | -0.5730 | 179.0706 | 3.6238 | -0.5730 |
| RA | 88.1838 | 2.8404 | -0.7343 | 94.5048 | 4.0657 | -0.9592 |
| PB | 88.4509 | 2.2935 | -0.7602 | 88.4509 | 2.2935 | -0.7602 |
| GC | 10707.3906 | 8.4670 | -0.1863 | 10707.3906 | 8.4670 | -0.1863 |
| DG | 444.5618 | 3.9205 | -0.2397 | 444.5618 | 3.9205 | -0.2397 |
| AS | 1709.7229 | 5.8887 | -0.2286 | 1709.7229 | 5.8887 | -0.2286 |
| CW | 178.6441 | 4.5852 | -0.6746 | 178.6441 | 4.5852 | -0.6746 |
| WO | 55.0 | 5.5 | -0.95 | 55.0 | 5.5 | -0.95 |
| PL | 73.3348 | 2.6548 | -1.2460 | 73.3348 | 2.6548 | -1.2460 |
| WI | 149.5861 | 2.4231 | -0.1800 | 149.5861 | 2.4231 | -0.1800 |
| OS | 34.8330 | 2.6030 | -0.5352 | 34.8330 | 2.6030 | -0.5352 |
| OH | 34.8330 | 2.6030 | -0.5352 | 34.8330 | 2.6030 | -0.5352 |
| **Species Code** | **Okanagan (608, 699)** | | | **Wenatchee (617)** | | |
| **P2** | **P3** | **P4** | **P2** | **P3** | **P4** |
| WP | 12437.6601 | 8.1207 | -0.1757 | 254.5262 | 4.7234 | -0.5029 |
| WL | 248.1393 | 4.8505 | -0.5833 | 170.8511 | 5.8759 | -0.7865 |
| DF | 305.4997 | 4.7889 | -0.4347 | 318.2462 | 5.1952 | -0.4679 |
| SF | 303.7380 | 5.8516 | -0.5474 | 356.1556 | 6.0615 | -0.4783 |
| RC | 1246.8831 | 6.9633 | -0.3113 | 307.7977 | 5.9217 | -0.5040 |
| GF | 727.8110 | 5.4648 | -0.3435 | 436.2309 | 5.5680 | -0.4296 |
| LP | 130.5332 | 3.6797 | -0.6573 | 100.6367 | 7.0781 | -1.1163 |
| ES | 342.9319 | 5.4757 | -0.4805 | 233.8124 | 6.9380 | -0.6620 |
| AF | 188.7833 | 5.8908 | -0.6732 | 166.0115 | 6.1799 | -0.6792 |
| PP | 1047.4768 | 6.0765 | -0.2927 | 1167.0325 | 6.2295 | -0.2793 |
| WH | 369.9034 | 6.7038 | -0.5424 | 662.9170 | 5.7985 | -0.3668 |
| MH | 493.6376 | 6.0162 | -0.3765 | 206.3060 | 6.7321 | -0.6265 |
| PY | 127.1698 | 4.8977 | -0.4668 | 19.6943 | 25.0881 | -2.3675 |
| WB | 89.1852 | 4.7008 | -0.7043 | 98.3035 | 4.7213 | -0.6613 |
| NF | 178.7700 | 9.1133 | -0.9131 | 178.7700 | 9.1133 | -0.9131 |
| WF | 436.2309 | 5.5680 | -0.4296 | 436.2309 | 5.5680 | -0.4296 |
| LL | 119.7985 | 4.7067 | -0.6751 | 1442.5197 | 6.1880 | -0.2037 |
| YC | 694.2233 | 5.9131 | -0.3484 | 126.1074 | 6.2499 | -0.8091 |
| WJ | 60.6009 | 4.1543 | -0.6277 | 60.6009 | 4.1543 | -0.6277 |
| BM | 220.9772 | 4.2639 | -0.4386 | 220.9772 | 4.2639 | -0.4386 |
| VN | 179.0706 | 3.6238 | -0.5730 | 179.0706 | 3.6238 | -0.5730 |
| RA | 94.5048 | 4.0657 | -0.9592 | 94.5048 | 4.0657 | -0.9592 |
| PB | 83.2440 | 3.5984 | -0.9561 | 88.4509 | 2.2935 | -0.7602 |
| GC | 10707.3906 | 8.4670 | -0.1863 | 10707.3906 | 8.4670 | -0.1863 |
| DG | 444.5618 | 3.9205 | -0.2397 | 444.5618 | 3.9205 | -0.2397 |
| AS | 184.1658 | 3.4801 | -0.5127 | 1507.7287 | 5.3428 | -0.1982 |
| CW | 178.6441 | 4.5852 | -0.6746 | 178.6441 | 4.5852 | -0.6746 |
| WO | 55.0 | 5.5 | -0.95 | 55.0 | 5.5 | -0.95 |
| PL | 73.3348 | 2.6548 | -1.2460 | 73.3348 | 2.6548 | -1.2460 |
| WI | 55.0 | 5.5 | -0.95 | 55.0 | 5.5 | -0.95 |
| OS | 34.8330 | 2.6030 | -0.5352 | 34.8330 | 2.6030 | -0.5352 |
| OH | 34.8330 | 2.6030 | -0.5352 | 34.8330 | 2.6030 | -0.5352 |

**Table 4.1.2 Coefficients for the logistic Wykoff equation {4.1.2} in the EC variant.**

| **Species Code** | **Default B1** | **B2** |
| --- | --- | --- |
| WP | 5.035 | -10.674 |
| WL | 4.961 | -8.247 |
| DF | 4.920 | -9.003 |
| SF | 5.032 | -10.482 |
| RC | 4.896 | -8.391 |
| GF | 5.032 | -10.482 |
| LP | 4.854 | -8.296 |
| ES | 4.948 | -9.041 |
| AF | 4.834 | -9.042 |
| PP | 4.884 | -9.741 |
| WH | 5.298 | -13.240 |
| MH | 3.9715 | -6.7145 |
| PY | 5.188 | -13.801 |
| WB | 5.188 | -13.801 |
| NF | 5.327 | -15.450 |
| WF | 5.032 | -10.482 |
| LL | 5.188 | -13.801 |
| YC | 5.143 | -13.497 |
| WJ | 5.152 | -13.576 |
| BM | 4.700 | -6.326 |
| VN | 4.700 | -6.326 |
| RA | 4.886 | -8.792 |
| PB | 5.152 | -13.576 |
| GC | 5.152 | -13.576 |
| DG | 5.152 | -13.576 |
| AS | 5.152 | -13.576 |
| CW | 5.152 | -13.576 |
| WO | 5.152 | -13.576 |
| PL | 5.152 | -13.576 |
| WI | 5.152 | -13.576 |
| OS | 3.9715 | -6.7145 |
| OH | 5.152 | -13.576 |

When a user turns on calibration of the height-diameter equation using the NOHTDREG keyword, and calibration does occur, trees of some species which have a diameter less than a threshold diameter may use equations other than the calibrated {4.1.2} for dubbing heights.

Ponderosa pine trees less than 3.0” in diameter use equation {4.1.3}.

{4.1.3} HT = 8.31485 + 3.03659 \* DBH – 0.592 \* *JCR*))

Western hemlock trees less than 5.0” in diameter use equation {4.1.4}.

{4.1.4} HT = exp(1.3608 + (0.6151 \* DBH) - (0.0442 \* DBH^2) + 0.0829)

Pacific yew, whitebark pine, subalpine larch, and Alaska yellow cedar trees less than 5.0” in diameter use equation {4.1.5}.

{4.1.5} HT = exp(1.5097 + (0.3040 \* DBH) )

Noble fir trees less than 5.0” in diameter use equation {4.1.6}.

{4.1.6} HT = exp(1.7100 + (0.2943 \* DBH) )

Western juniper, bigleaf maple, vine maple, red alder, paper birch, giant chinquapin, Pacific dogwood, quaking aspen, black cottonwood, Oregon white oak, plum, willow, and other hardwood use equation {4.1.7} for trees less than 5.0” in diameter.

{4.1.7} HT = 0.0994 + (4.9767 \* DBH)

where:

HT is tree height

DBH is tree diameter

*JCR* is tree crown ratio code (1 = 0-10 percent, 2 = 11-20 percent, …, 7 = 61-100 percent)

## 4.2 Bark Ratio Relationships

Bark ratio estimates are used to convert between diameter outside bark and diameter inside bark in various parts of the model. The equation for western white pine, western larch, Douglas-fir, Pacific silver fir, western redcedar, grand fir, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, western hemlock, mountain hemlock, Pacific yew, whitebark pine, noble fir, white fir, subalpine larch, Alaska cedar, western juniper, and other softwood is shown in equation {4.2.1}; bigleaf maple, vine maple, red alder, paper birch, giant chinquapin, Pacific dogwood, quaking aspen, black cottonwood, plum, willow, and other hardwood use equation {4.2.2}; white oak uses equation {4.2.3}. Coefficients (b1, b2) for each species are shown in table 4.2.1.

{4.2.1} *BRATIO* = b1

{4.2.2} *BRATIO* = (b1 + b2 \* DBH) / DBH

{4.2.3} *BRATIO* = (b1 \* DBH^b2) / DBH

where:

*BRATIO* is species-specific bark ratio (bounded to 0.80 <u><</u> *BRATIO* <u><</u> 0.99)

*DBH* is tree diameter at breast height

b1, b2 are species-specific coefficients shown in table 4.2.1

**Table 4.2.1 Coefficients for equations {4.2.1} - {4.2.3} in the EC variant.**

| **Species Code** | **b1** | **b2** |
| --- | --- | --- |
| WP | 0.964 | - |
| WL | 0.851 | - |
| DF | 0.844 | - |
| SF | 0.903 | - |
| RC | 0.950 | - |
| GF | 0.903 | - |
| LP | 0.963 | - |
| ES | 0.956 | - |
| AF | 0.903 | - |
| PP | 0.889 | - |
| WH | 0.93371 | - |
| MH | 0.934 | - |
| PY | 0.93329 | - |
| WB | 0.93329 | - |
| NF | 0.904973 | - |
| WF | 0.903 | - |
| LL | 0.9 | - |
| YC | 0.837291 | - |
| WJ | 0.94967 | - |
| BM | 0.0836 | 0.94782 |
| VN | 0.0836 | 0.94782 |
| RA | 0.075256 | 0.94967 |
| PB | 0.0836 | 0.94782 |
| GC | 0.15565 | 0.90182 |
| DG | 0.075256 | 0.94967 |
| AS | 0.075256 | 0.94967 |
| CW | 0.075256 | 0.94967 |
| WO | 0.8558 | 1.0213 |
| PL | 0.075256 | 0.94967 |
| WI | 0.075256 | 0.94967 |
| OS | 0.934 | - |
| OH | 0.075256 | 0.94967 |

## 4.3 Crown Ratio Relationships

Crown ratio equations are used for three purposes in FVS: (1) to estimate tree crown ratios missing from the input data for both live and dead trees; (2) to estimate change in crown ratio from cycle to cycle for live trees; and (3) to estimate initial crown ratios for regenerating trees established during a simulation.

### 4.3.1 Crown Ratio Dubbing

In the EC variant, crown ratios missing in the input data are predicted using different equations depending on tree species and size. For western white pine, western larch, Douglas-fir, Pacific silver fir, western redcedar, grand fir, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, mountain hemlock, white fir, and “other softwood” live trees less than 1.0” in diameter and dead trees of all sizes use equations {4.3.1.1} and {4.3.1.2} to compute crown ratio. Equation coefficients are found in table 4.3.1.1.

{4.3.1.1} *X* = R1 + R2 \* *DBH* + R3 \* *HT* + R4 \* *BA* + R5 \* *PCCF* + R6 \* *HTAvg /HT* + R7 \* *HTAvg* + R8 \* *BA* \* *PCCF* + R9 \* *MAI*

{4.3.1.2} *CR* = 1 / (1 + exp(*X+* *N(0,SD)*)) where absolute value of (*X* + *N(0,SD)*) < 86

where:

CR is crown ratio expressed as a proportion (bounded to 0.05 < CR < 0.95)

DBH is tree diameter at breast height

HT is tree height

BA is total stand basal area

PCCF is crown competition factor on the inventory point where the tree is established

HTAvg is average height of the 40 largest diameter trees in the stand

MAI is stand mean annual increment

N(0,SD) is a random increment from a normal distribution with a mean of 0 and a standard deviation of SD

R1 – R9 are species-specific coefficients shown in table 4.3.1.1

Western hemlock, Pacific yew, whitebark pine, noble fir, subalpine larch, Alaska cedar, western juniper, bigleaf maple, vine maple, red alder, paper birch, giant chinquapin, Pacific dogwood, quaking aspen, black cottonwood, Oregon white oak, plum, willow, and “other hardwood” live trees less than 1.0” in diameter and dead trees of all sizes use equations {4.3.1.3} and {4.3.1.4}, and the coefficients shown in table 4.3.1.1.

{4.3.1.3} *X* = R1 + R3 \* *HT* + R4 \* *BA* + *N(0,SD)*

{4.3.1.4} *CR* = ((*X* – 1.0) \* 10 + 1.0) / 100

where:

*X* is crown ratio expressed as a code (0-9)

*CR* is crown ratio expressed as a proportion (bounded to 0.05 <u><</u> *CR* <u><</u> 0.95)

*HT* is tree height

*BA* is total stand basal area

*N(0,SD)* is a random increment from a normal distribution with a mean of 0 and a standard deviation of SD

R1, R3, R4 are species-specific coefficients shown in table 4.3.1.1

**Table 4.3.1.1 Coefficients for the crown ratio equations {4.3.1.1} and {4.3.1.3} in the EC variant.**

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Coefficient** | **Alpha Code** | | | | | | | |
| **WP, WL, LP, PP** | **DF, SF, GF, RC, ES, AF, WF** | **WH, YC** | **PY, WB, LL** | **NF** | **WJ** | **BM, VN, RA, PB, GC, DG, AS, CW, WO, PL, WI, OH** | **MH, OS** |
| R1 | -1.669490 | -0.426688 | 7.558538 | 6.489813 | 8.042774 | 9.0 | 5.0 | -2.19723 |
| R2 | -0.209765 | -0.093105 | 0 | 0 | 0 | 0 | 0 | 0 |
| R3 | 0 | 0.022409 | -0.015637 | -0.029815 | 0.007198 | 0 | 0 | 0 |
| R4 | 0.003359 | 0.002633 | -0.009064 | -0.009276 | -0.016163 | 0 | 0 | 0 |
| R5 | 0.011032 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| R6 | 0 | -0.045532 | 0 | 0 | 0 | 0 | 0 | 0 |
| R7 | 0.017727 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| R8 | -0.000053 | 0.000022 | 0 | 0 | 0 | 0 | 0 | 0 |
| R9 | 0.014098 | -0.013115 | 0 | 0 | 0 | 0 | 0 | 0 |
| SD | 0.5\* | 0.6957\*\* | 1.9658 | 2.0426 | 1.3167 | 0.5 | 0.5 | 0.2 |

\*0.6124 for lodgepole pine; 0.4942 for ponderosa pine

\*\*0.9310 for grand fir and white fir

A Weibull-based crown model developed by Dixon (1985) as described in Dixon (2002) is used to predict crown ratio for all trees 1.0” in diameter or larger. To estimate crown ratio using this methodology, the average stand crown ratio is estimated from stand density index using equation {4.3.1.5}. Weibull parameters are estimated from the average stand crown ratio using equations in equation set {4.3.1.6}. Individual tree crown ratio is then set from the Weibull distribution, equation {4.3.1.7} based on a tree’s relative position in the diameter distribution and multiplied by a scale factor, shown in equation {4.3.1.8}, which accounts for stand density. Crowns estimated from the Weibull distribution are bounded to be between the 5 and 95 percentile points of the specified Weibull distribution. Equation coefficients for each species are shown in table 4.3.1.2.

{4.3.1.5} *ACR* = d0 + d1 \* *RELSDI* \* 100.0

where: *RELSDI* = *SDIstand* / *SDImax*

{4.3.1.6} Weibull parameters A, B, and C are estimated from average crown ratio

*A* = a0

*B* = b0 + b1 \* ACR (*B* <u>></u> 3)

*C* = c0 + c1 \* ACR (*C* <u>></u> 2)

{4.3.1.7} *Y* = 1-exp(-((*X*-A)/B)^C)

{4.3.1.8} *SCALE =* 1 – (0.00167 \* (*CCF* – 100))

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

**Table 4.3.1.2 Coefficients for the Weibull parameter equations {4.3.1.5} and {4.3.1.6} in the EC variant.**

| **Species Code** | **a0** | **b0** | **b1** | **c0** | **c1** | **d0** | **d1** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| WP | 0 | 0.08106 | 1.10253 | 1.04477 | 0.42828 | 5.23986 | -0.02569 |
| WL | 0 | 0.00603 | 1.12276 | 2.73400 | 0 | 4.98675 | -0.02466 |
| DF | 0 | -0.28295 | 1.18232 | 3.03400 | 0 | 4.99727 | -0.01043 |
| SF | 0 | -0.09734 | 1.14675 | 2.71600 | 0 | 4.79981 | -0.00653 |
| RC | 0 | -0.01129 | 1.11665 | 3.35500 | 0 | 5.74915 | -0.01090 |
| GF | 0 | -0.09734 | 1.14675 | 2.71600 | 0 | 4.79981 | -0.00653 |
| LP | 0 | -0.00047 | 1.13172 | 2.22700 | 0 | 3.85379 | -0.00795 |
| ES | 0 | -0.15678 | 1.14894 | 3.05300 | 0 | 6.04394 | -0.01825 |
| AF | 0 | 0.08247 | 1.10804 | 1.45931 | 0.25495 | 6.00795 | -0.02301 |
| PP | 0 | 0.08106 | 1.10253 | 1.04477 | 0.42828 | 5.23986 | -0.02569 |
| WH | 0 | 0.490848 | 1.014138 | 3.164558 | 0 | 5.488532 | -0.007173 |
| MH | 0 | -0.01129 | 1.11665 | 3.35500 | 0 | 5.74915 | -0.01090 |
| PY | 0 | 0.196054 | 1.073909 | 0.345647 | 0.620145 | 5.417431 | -0.011608 |
| WB | 0 | 0.196054 | 1.073909 | 0.345647 | 0.620145 | 5.417431 | -0.011608 |
| NF | 0 | -0.135807 | 1.147712 | 3.017494 | 0 | 5.568864 | -0.021293 |
| WF | 0 | -0.09734 | 1.14675 | 2.71600 | 0 | 4.79981 | -0.00653 |
| LL | 0 | 0.196054 | 1.073909 | 0.345647 | 0.620145 | 5.417431 | -0.011608 |
| YC | 1 | -0.811424 | 1.056190 | -3.831124 | 1.401938 | 5.200550 | -0.014890 |
| WJ | 0 | -0.238295 | 1.180163 | 3.044134 | 0 | 4.625125 | -0.016042 |
| BM | 1 | -0.818809 | 1.054176 | -2.366108 | 1.202413 | 4.420000 | -0.010660 |
| VN | 1 | -0.818809 | 1.054176 | -2.366108 | 1.202413 | 4.420000 | -0.010660 |
| RA | 1 | -1.112738 | 1.123138 | 2.533158 | 0 | 4.120478 | -0.006357 |
| PB | 0 | -0.238295 | 1.180163 | 3.044134 | 0 | 4.625125 | -0.016042 |
| GC | 0 | -0.238295 | 1.180163 | 3.044134 | 0 | 4.625125 | -0.016042 |
| DG | 0 | -0.238295 | 1.180163 | 3.044134 | 0 | 4.625125 | -0.016042 |
| AS | 0 | -0.238295 | 1.180163 | 3.044134 | 0 | 4.625125 | -0.016042 |
| CW | 0 | -0.238295 | 1.180163 | 3.044134 | 0 | 4.625125 | -0.016042 |
| WO | 0 | -0.238295 | 1.180163 | 3.044134 | 0 | 4.625125 | -0.016042 |
| PL | 0 | -0.238295 | 1.180163 | 3.044134 | 0 | 4.625125 | -0.016042 |
| WI | 0 | -0.238295 | 1.180163 | 3.044134 | 0 | 4.625125 | -0.016042 |
| OS | 0 | -0.01129 | 1.11665 | 3.35500 | 0 | 5.74915 | -0.01090 |
| OH | 0 | -0.238295 | 1.180163 | 3.044134 | 0 | 4.625125 | -0.016042 |

### 4.3.2 Crown Ratio Change

Crown ratio change is estimated after growth, mortality and regeneration are estimated during a projection cycle. Crown ratio change is the difference between the crown ratio at the beginning of the cycle and the predicted crown ratio at the end of the cycle. Crown ratio predicted at the end of the projection cycle is estimated for live tree records using the Weibull distribution, equations {4.3.1.5}-{4.3.1.8}. Crown change is checked to make sure it doesn’t exceed the change possible if all height growth produces new crown. Crown change is further bounded to 1% per year for the length of the cycle to avoid drastic changes in crown ratio. Equations {4.3.1.1} – {4.3.1.4} are not used when estimating crown ratio change.

### 4.3.3 Crown Ratio for Newly Established Trees

Crown ratios for newly established trees during regeneration are estimated using equation {4.3.3.1}. A random component is added in equation {4.3.3.1} to ensure that not all newly established trees are assigned exactly the same crown ratio.

{4.3.3.1} *CR* = 0.89722 – 0.0000461 \* *PCCF* + *RAN*

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.2 <u><</u> *CR* <u><</u> 0.9)

*PCCF* is crown competition factor on the inventory point where the tree is established

*RAN* is a small random component

## 4.4 Crown Width Relationships

The EC variant calculates the maximum crown width for each individual tree, based on individual tree and stand attributes. Crown width for each tree is reported in the tree list output table and used for percent canopy cover (*PCC*) calculations in the model.

Crown width is calculated using equations {4.4.1} – {4.4.5}, and coefficients for these equations are shown in table 4.4.1. The minimum diameter and bounds for certain data values are given in table 4.4.2. Equation numbers in tables 4.4.1 and 4.4.2 are given with the first three digits representing the FIA species code, and the last two digits representing the equation source.

{4.4.1} Bechtold (2004); Equation 02

*DBH* <u>></u> *MinD*: *CW* = a1 + (a2 \* *DBH*) + (a3 \* *DBH^*2) + (a4 \* *CR%*) + (a5 \* *BA*) + (a6 \* *HI*)

*DBH* < *MinD*: *CW* = [a1 + (a2 \* *MinD*) + (a3 \* *MinD^*2) + (a4 \* *CR%*) + (a5 \* *BA*) + (a6 \* *HI*)] \* (*DBH* / *MinD*)

{4.4.2} Crookston (2003); Equation 03

*DBH* <u>></u> *MinD*: *CW* = [a1 \* exp[a2 + (a3 \* ln(*CL*)) + (a4 \* ln(*DBH*)) + (a5 \* ln(*HT*)) + (a6 \* ln(*BA*))]]

*DBH* < *MinD*: *CW* = [a1 \* exp[a2 + (a3 \* ln(*CL*)) + (a4 \* ln(*MinD*)) + (a5 \* ln(*HT*)) + (a6 \* ln(*BA*))]] \* (*DBH* / *MinD*)

{4.4.3 Crookston (2005); Equation 04

*DBH* <u>></u> *MinD*: *CW* = a1 \* *DBH^*a2

*DBH* < *MinD*: *CW* = [a1 \* *MinD^*a2] \* (*DBH* / *MinD*)

{4.4.4} Crookston (2005); Equation 05

*DBH* <u>></u> *MinD*: *CW* = (a1 \* *BF*) \* *DBH^*a2 \* *HT^*a3 \* *CL^*a4 \* (*BA* + 1.0)^a5 \* (exp(*EL*))^a6

*DBH* < *MinD*: *CW* = [(a1 \* *BF*) \* *MinD^*a2 \* *HT^*a3 \* *CL^*a4 \* (*BA* + 1.0)^a5 \* (exp(*EL*))^a6] \* (*DBH* / *MinD*)

{4.4.5} Donnelly (1996); Equation 06

*DBH* <u>></u> *MinD*: *CW* = a1 \* *DBH^*a2

*DBH* < *MinD*: *CW* = [a1 \* *MinD^*a2] \* (*DBH* / *MinD*)

where:

*BF* is a species-specific coefficient based on forest code

*CW* is tree maximum crown width

*CL* is tree crown length

*DBH* is tree diameter at breast height

*HT* is tree height

*BA* is total stand basal area

*EL* is stand elevation in hundreds of feet

*MinD* is the minimum diameter

a1 – a6 are species-specific coefficients shown in table 4.4.1

**Table 4.4.1 Coefficients for crown width equations {4.4.1}-{4.4.5} in the EC variant.**

| **Species Code** | **Equation Number\*** | **a1** | **a2** | **a3** | **a4** | **a5** | **a6** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| WP | 11905 | 5.3822 | 0.57896 | -0.19579 | 0.14875 | 0 | -0.00685 |
| WL | 07303 | 1.02478 | 0.99889 | 0.19422 | 0.59423 | -0.09078 | -0.02341 |
| DF | 20205 | 6.0227 | 0.54361 | -0.20669 | 0.20395 | -0.00644 | -0.00378 |
| SF | 01105 | 4.4799 | 0.45976 | -0.10425 | 0.11866 | 0.06762 | -0.00715 |
| RC | 24205 | 6.2382 | 0.29517 | -0.10673 | 0.23219 | 0.05341 | -0.00787 |
| GF | 01703 | 1.0303 | 1.14079 | 0.20904 | 0.38787 | 0 | 0 |
| LP | 10805 | 6.6941 | 0.81980 | -0.36992 | 0.17722 | -0.01202 | -0.00882 |
| ES | 09305 | 6.7575 | 0.55048 | -0.25204 | 0.19002 | 0 | -0.00313 |
| AF | 01905 | 5.8827 | 0.51479 | -0.21501 | 0.17916 | 0.03277 | -0.00828 |
| PP | 12205 | 4.7762 | 0.74126 | -0.28734 | 0.17137 | -0.00602 | -0.00209 |
| WH | 26305 | 6.0384 | 0.51581 | -0.21349 | 0.17468 | 0.06143 | -0.00571 |
| MH | 26403 | 6.90396 | 0.55645 | -0.28509 | 0.20430 | 0 | 0 |
| PY | 23104 | 6.1297 | 0.45424 | 0 | 0 | 0 | 0 |
| WB | 10105 | 2.2354 | 0.66680 | -0.11658 | 0.16927 | 0 | 0 |
| NF | 02206 | 3.0614 | 0.6276 | 0 | 0 | 0 | 0 |
| WF | 01505 | 5.0312 | 0.53680 | -0.18957 | 0.16199 | 0.04385 | -0.00651 |
| LL | 07204 | 2.2586 | 0.68532 | 0 | 0 | 0 | 0 |
| YC | 04205 | 3.3756 | 0.45445 | -0.11523 | 0.22547 | 0.08756 | -0.00894 |
| WJ | 06405 | 5.1486 | 0.73636 | -0.46927 | 0.39114 | -0.05429 | 0 |
| BM | 31206 | 7.5183 | 0.4461 | 0 | 0 | 0 | 0 |
| VN | 32102 | 5.9765 | 0.8648 | 0 | 0.0675 | 0 | 0 |
| RA | 35106 | 7.0806 | 0.4771 | 0 | 0 | 0 | 0 |
| PB | 37506 | 5.8980 | 0.4841 | 0 | 0 | 0 | 0 |
| GC | 63102 | 3.1150 | 0.7966 | 0 | 0.0745 | -0.0053 | 0.0523 |
| DG | 35106 | 7.0806 | 0.4771 | 0 | 0 | 0 | 0 |
| AS | 74605 | 4.7961 | 0.64167 | -0.18695 | 0.18581 | 0 | 0 |
| CW | 74705 | 4.4327 | 0.41505 | -0.23264 | 0.41477 | 0 | 0 |
| WO | 81505 | 2.4857 | 0.70862 | 0 | 0.10168 | 0 | 0 |
| PL | 35106 | 7.0806 | 0.4771 | 0 | 0 | 0 | 0 |
| WI | 31206 | 7.5183 | 0.4461 | 0 | 0 | 0 | 0 |
| OS | 26403 | 6.90396 | 0.55645 | -0.28509 | 0.20430 | 0 | 0 |
| OH | 74605 | 4.7961 | 0.64167 | -0.18695 | 0.18581 | 0 | 0 |

\*Equation number is a combination of the species FIA code (###) and equation source (##).

**Table 4.4.2 *MinD* values and data bounds for equations {4.4.1}-{4.1.5} in the EC variant.**

| **Species Code** | **Equation Number\*** | ***MinD*** | **EL min** | ***EL* max** | ***HI* min** | ***HI* max** | ***CW* max** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| WP | 11905 | 1.0 | 10 | 75 | n/a | n/a | 35 |
| WL | 07303 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| DF | 20205 | 1.0 | 1 | 75 | n/a | n/a | 80 |
| SF | 01105 | 1.0 | 4 | 72 | n/a | n/a | 33 |
| RC | 24205 | 1.0 | 1 | 72 | n/a | n/a | 45 |
| GF | 01703 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| LP | 10805 | 1.0 | 1 | 79 | n/a | n/a | 40 |
| ES | 09305 | 1.0 | 1 | 85 | n/a | n/a | 40 |
| AF | 01905 | 1.0 | 10 | 85 | n/a | n/a | 30 |
| PP | 12205 | 1.0 | 13 | 75 | n/a | n/a | 50 |
| WH | 26305 | 1.0 | 1 | 72 | n/a | n/a | 54 |
| MH | 26403 | n/a | n/a | n/a | n/a | n/a | 45 |
| PY | 23104 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| WB | 10105 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| NF | 02206 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| WF | 01505 | 1.0 | 2 | 75 | n/a | n/a | 35 |
| LL | 07204 | 1.0 | n/a | n/a | n/a | n/a | 33 |
| YC | 04205 | 1.0 | 16 | 62 | n/a | n/a | 59 |
| WJ | 06405 | 1.0 | n/a | n/a | n/a | n/a | 36 |
| BM | 31206 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| VN | 32102 | 5.0 | n/a | n/a | n/a | n/a | 39 |
| RA | 35106 | 1.0 | n/a | n/a | n/a | n/a | 35 |
| PB | 37506 | 1.0 | n/a | n/a | n/a | n/a | 25 |
| GC | 63102 | 5.0 | n/a | n/a | -55 | 15 | 41 |
| DG | 35106 | 1.0 | n/a | n/a | n/a | n/a | 35 |
| AS | 74605 | 1.0 | n/a | n/a | n/a | n/a | 45 |
| CW | 74705 | 1.0 | n/a | n/a | n/a | n/a | 56 |
| WO | 81505 | 1.0 | n/a | n/a | n/a | n/a | 39 |
| PL | 35106 | 1.0 | n/a | n/a | n/a | n/a | 35 |
| WI | 31206 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| OS | 26403 | n/a | n/a | n/a | n/a | n/a | 45 |
| OH | 74605 | 1.0 | n/a | n/a | n/a | n/a | 45 |

**Table 4.4.3 *BF* values for equation {4.4.4} in the EC variant.**

| **Species Code** | **Location Code** | | | | | |
| --- | --- | --- | --- | --- | --- | --- |
| **603** | **606** | **608** | **613** | **617** | **699** |
| WP | 1.128 | 1.081 | 1.081 | 1 | 1 | 1 |
| WL | 0.952 | 0.907 | 0.952 | 1 | 0.879 | 1 |
| DF | 1 | 1 | 1 | 1 | 0.975 | 1 |
| SF | 1.032 | 1.296 | 1 | 1 | 1 | 1 |
| RC | 0.920 | 1.115 | 0.905 | 1 | 0.905 | 1 |
| GF | 1 | 1.086 | 1 | 1 | 0.972 | 1 |
| LP | 1 | 0.944 | 1.114 | 1 | 0.969 | 1 |
| ES | 1 | 1 | 1 | 1 | 0.949 | 1 |
| AF | 0.906 | 1.038 | 1 | 1 | 0.906 | 1 |
| PP | 1 | 1 | 1 | 1 | 0.946 | 1 |
| WH | 1.028 | 1.260 | 1 | 1 | 0.962 | 1 |
| MH | 1.077 | 1.106 | 0.900 | 1 | 0.952 | 1 |
| PY | 1 | 1 | 1 | 1 | 1 | 1 |
| WB | 1 | 1 | 1 | 1 | 1 | 1 |
| NF | 1.123 | 1.301 | 1 | 1 | 1 | 1 |
| WF | 1 | 1.130 | 1 | 1 | 1 | 1 |
| LL | 1 | 1 | 1 | 1 | 1 | 1 |
| YC | 1 | 1.493 | 1 | 1 | 1 | 1 |
| WJ | 1 | 1 | 1 | 1 | 1 | 1 |
| BM | 1 | 1 | 1 | 1 | 1 | 1 |
| VN | 1 | 1 | 1 | 1 | 1 | 1 |
| RA | 1 | 1 | 1 | 1 | 1 | 1 |
| PB | 1 | 1 | 1 | 1 | 1 | 1 |
| GC | 1 | 1 | 1 | 1 | 1 | 1 |
| DG | 1 | 1 | 1 | 1 | 1 | 1 |
| AS | 1 | 1 | 1 | 1 | 1 | 1 |
| CW | 1 | 1 | 1 | 1 | 1 | 1 |
| WO | 1 | 1 | 1 | 1 | 1 | 1 |
| PL | 1 | 1 | 1 | 1 | 1 | 1 |
| WI | 1 | 1 | 1 | 1 | 1 | 1 |
| OS | 1.077 | 1.106 | 0.900 | 1 | 0.952 | 1 |
| OH | 1 | 1 | 1 | 1 | 1 | 1 |

## 4.5 Crown Competition Factor

The EC variant uses crown competition factor (*CCF*) as a predictor variable in some growth relationships. Crown competition factor (Krajicek and others 1961) is a relative measurement of stand density that is based on tree diameters. Individual tree *CCFt* values estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open-grown. Stand *CCF* is the summation of individual tree (*CCFt*)values. A stand *CCF* value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand.

For western white pine, western larch, Douglas-fir, Pacific silver fir, western redcedar, grand fir, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, mountain hemlock, white fir, and other softwood crown competition factor for an individual tree is calculated using the equation set {4.5.1}. All species coefficients are shown in table 4.5.1.

{4.5.1} *CCFt* equations

*DBH* <u>></u> 1.0”: *CCFt*= R1 + (R2 \* *DBH*) + (R3 \* *DBH^*2)

0.1” < *DBH* < 1.0”: *CCFt* = R4 \* *DBH*^R5

*DBH* <u><</u> 0.1”: *CCFt* = 0.001

For western hemlock, Pacific yew, whitebark pine, noble fir, subalpine larch, Alaska cedar, western juniper, bigleaf maple, vine maple, red alder, paper birch, giant chinquapin, Pacific dogwood, quaking aspen, black cottonwood, Oregon white oak, plum, willow, and other hardwood crown competition factor for an individual tree is calculated using equation {4.5.1} for trees greater than or equal to 1.0” in diameter and equation {4.5.4} for trees less than 1.0” in diameter. All species coefficients are shown in table 4.5.1.

{4.5.4} *DBH* < 1.0”: *CCFt* = (R1 + R2 + R3) \* *DBH*

where:

*CCFt* is crown competition factor for an individual tree

*DBH* is tree diameter at breast height

R1 – R5 are species-specific coefficients shown in table 4.5.1

**Table 4.5.1 Coefficients for the *CCF* equations in the EC variant.**

| **Species Code** | **R1** | **R2** | **R3** | **R4** | **R5** |
| --- | --- | --- | --- | --- | --- |
| WP | 0.03 | 0.0167 | 0.00230 | 0.009884 | 1.6667 |
| WL | 0.02 | 0.0148 | 0.00338 | 0.007244 | 1.8182 |
| DF | 0.0388 | 0.0269 | 0.00466 | 0.017299 | 1.5571 |
| SF | 0.04 | 0.0270 | 0.00405 | 0.015248 | 1.7333 |
| RC | 0.03 | 0.0238 | 0.00490 | 0.008915 | 1.7800 |
| GF | 0.04 | 0.027 | 0.00405 | 0.015248 | 1.7333 |
| LP | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| ES | 0.03 | 0.0173 | 0.00259 | 0.007875 | 1.7360 |
| AF | 0.03 | 0.0216 | 0.00405 | 0.011402 | 1.7560 |
| PP | 0.0219 | 0.0169 | 0.00325 | 0.007813 | 1.7780 |
| WH | 0.03758 | 0.0233 | 0.00361 | 0 | 0 |
| MH | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |
| PY | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| WB | 0.01925 | 0.0168 | 0.00365 | 0 | 0 |
| NF | 0.02453 | 0.0115 | 0.00134 | 0 | 0 |
| WF | 0.04 | 0.027 | 0.00405 | 0.015248 | 1.7333 |
| LL | 0.0194 | 0.0142 | 0.00261 | 0 | 0 |
| YC | 0.0194 | 0.0142 | 0.00261 | 0 | 0 |
| WJ | 0.0194 | 0.0142 | 0.00261 | 0 | 0 |
| BM | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| VN | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| RA | 0.03561 | 0.02731 | 0.00524 | 0 | 0 |
| PB | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| GC | 0.0160 | 0.0167 | 0.00434 | 0 | 0 |
| DG | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| AS | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| CW | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| WO | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| PL | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| WI | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| OS | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |
| OH | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |

## 4.6 Small Tree Growth Relationships

Trees are considered “small trees” for FVS modeling purposes when they are smaller than some threshold diameter. The threshold diameter is set to 3.0” for all species in the EC variant.

The small tree model is height-growth driven, meaning height growth is estimated first and diameter growth is estimated from height growth. These relationships are discussed in the following sections.

### 4.6.1 Small Tree Height Growth

The small-tree height increment model predicts 10-year height growth (*HTG*) for small trees, based on site index. Potential height growth is estimated using equations {4.6.1.1} – {4.6.1.4}, and coefficients for these equations are shown in table 4.6.1.1.

{4.6.1.1} *POTHTG* = (*SI* / c1) \* (1.0 - c2 \* exp(c3 \* *X*2))^c4 - (*SI* / c1) \* (1.0 - c2 \* exp(c3 \* *X*1))^c4

*X1* = ALOG [(1.0 - (c1 / *SI* \* *HT*)^(1 / c4)) / c2] / c3

*X2* = *X1* + *A*

{4.6.1.2} *POTHTG* = [(c1 + c2 \* SI) / (c3 – c4 \* SI)] \* *Y*

{4.6.1.3} *POTHTG* = [(c1 + c2 \* SI) / (c3 – c4 \* SI)] \* *Y* \* 3.280833

{4.6.1.4} POTHTG = [(c1 \* ln(1 – (SI / c2) c3 ) \* c4) – 0.1)] \* *Y*

where:

*POTHTG* is potential height growth

*SI* is species site index bounded by *SITELO* and *SITEHI* (shown in table 4.6.1.2)

*Y* is the number of years for which a growth estimate is needed

*HT* is tree height

c1 – c4 are species-specific coefficients shown in table 4.6.1.1

**Table 4.6.1.1 Coefficients and equation reference for equations {4.6.1.1} and {4.6.1.2} in the EC variant.**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Species Code** | ***POTHTG* Equation** | **c1** | **c2** | **c3** | **c4** |
| WP | {4.6.1.1} | 0.375045 | 0.92503 | -0.020796 | 2.48811 |
| WL | {4.6.1.2} | -3.97245 | 0.50995 | 28.11668 | 0.05661 |
| DF | {4.6.1.2} | 2.0 | 0.420 | 28.5 | 0.05 |
| SF | {4.6.1.2} | -0.6667 | 0.4333 | 28.5 | 0.05 |
| RC | {4.6.1.1} | 0.752842 | 1.0 | -0.0174 | 1.4711 |
| GF | {4.6.1.2} | -1.0470 | 0.4220 | 28.7739 | 0.0597 |
| LP | {4.6.1.2} | 0.3277 | 0.01296 | 1.0 | 0 |
| ES | {4.6.1.2} | -8.0 | 0.35 | 53.72545 | 0.274509 |
| AF | {4.6.1.2} | 6.0 | 0.14 | 33.882 | 0.06588 |
| PP | {4.6.1.2} | -1.0 | 0.32857 | 28.0 | 0.042857 |
| WH | {4.6.1.2} | -5.74874 | 0.54576 | 26.15767 | 0.03596 |
| MH | {4.6.1.3} | 0.965758 | 0.082969 | 55.249612 | 1.288852 |
| PY | {4.6.1.2} | 1.47043 | 0.23317 | 31.56252 | 0.05586 |
| WB | {4.6.1.2} | 1.47043 | 0.23317 | 31.56252 | 0.05586 |
| NF | {4.6.1.2} | 11.26677 | 0.12027 | 27.93806 | 0.02873 |
| WF | {4.6.1.2} | -1.0470 | 0.4220 | 28.7739 | 0.0597 |
| LL | {4.6.1.2} | -3.97245 | 0.50995 | 28.11668 | 0.05661 |
| YC | {4.6.1.2} | 1.47043 | 0.23317 | 31.56252 | 0.05586 |
| WJ | {4.6.1.2} | 1.47043 | 0.23317 | 31.56252 | 0.05586 |
| BM | {4.6.1.2} | 1.47043 | 0.23317 | 31.56252 | 0.05586 |
| VN | {4.6.1.2} | 1.47043 | 0.23317 | 31.56252 | 0.05586 |
| RA | {4.6.1.2} | -0.007025 | 0.056794 | 1.0 | 0 |
| PB | {4.6.1.2} | 1.47043 | 0.23317 | 31.56252 | 0.05586 |
| GC | {4.6.1.2} | 1.47043 | 0.23317 | 31.56252 | 0.05586 |
| DG | {4.6.1.2} | 1.47043 | 0.23317 | 31.56252 | 0.05586 |
| AS | {4.6.1.2} | 1.47043 | 0.23317 | 31.56252 | 0.05586 |
| CW | {4.6.1.2} | 1.47043 | 0.23317 | 31.56252 | 0.05586 |
| WO | {4.6.1.4} | -37.60812 | 114.24569 | 0.44444 | 0.01 |
| PL | {4.6.1.2} | 1.47043 | 0.23317 | 31.56252 | 0.05586 |
| WI | {4.6.1.2} | 1.47043 | 0.23317 | 31.56252 | 0.05586 |
| OS | {4.6.1.3} | 0.965758 | 0.082969 | 55.249612 | 1.288852 |
| OH | {4.6.1.2} | 1.47043 | 0.23317 | 31.56252 | 0.05586 |

**Table 4.6.1.2 *SITELO* and *SITEHI* values for equations {4.6.1.1-4.6.1.3} in the EC variant.**

| **Species Code** | ***SITELO*** | ***SITEHI*** |
| --- | --- | --- |
| WP | 20 | 80 |
| WL | 50 | 110 |
| DF | 50 | 110 |
| SF | 50 | 110 |
| RC | 15 | 30 |
| GF | 50 | 110 |
| LP | 30 | 70 |
| ES | 40 | 120 |
| AF | 50 | 150 |
| PP | 70 | 140 |
| WH | 0 | 999 |
| MH | 15 | 30 |
| PY | 0 | 999 |
| WB | 0 | 999 |
| NF | 0 | 999 |
| WF | 50 | 110 |
| LL | 0 | 999 |
| YC | 0 | 999 |
| WJ | 0 | 999 |
| BM | 0 | 999 |
| VN | 0 | 999 |
| RA | 0 | 999 |
| PB | 0 | 999 |
| GC | 0 | 999 |
| DG | 0 | 999 |
| AS | 0 | 999 |
| CW | 0 | 999 |
| WO | 0 | 999 |
| PL | 0 | 999 |
| WI | 0 | 999 |
| OS | 15 | 30 |
| OH | 0 | 999 |

Potential height growth is then adjusted based on stand density (*PCTRED*) and crown ratio (*VIGOR*) as shown in equations {4.6.1.5} and {4.6.1.6} respectively, to determine an estimated height growth as shown in equation {4.6.1.7}.

{4.6.1.5} *PCTRED* = 1.11436 – 0.011493\**Z* + 0.43012E-04 \* *Z^*2 – 0.72221E-07 \* *Z^*3 + 0.5607E-10 \* *Z^*4 – 0.1641E-13 \* *Z^*5

*Z* = *HTAvg* \* (*CCF* / 100) bounded so Z <u><</u> 300 and 0.01 <u><</u> *PCTRED* <u><</u> 1.0

{4.6.1.6} *VIGOR* = (150 \* *CR^*3 \* exp(-6 \* *CR*) ) + 0.3

{4.6.1.7} *HTG* = *POTHTG* \* *PCTRED* \* *VIGOR*

where:

*PCTRED* is reduction in height growth due to stand density

*HTAvg* is average height of the 40 largest diameter trees in the stand

*CCF* is stand crown competition factor

*VIGOR* is reduction in height growth due to tree vigor (bounded to *VIGOR* <u><</u> 1.0)

*CR* is a tree’s live crown ratio (compacted) expressed as a proportion

*HTG* is estimated height growth for the cycle

*POTHTG* is potential height growth

For all species, a small random error is then added to the height growth estimate. The estimated height growth (*HTG*) is then adjusted to account for cycle length, user defined small-tree height growth adjustments, and adjustments due to small tree height model calibration from the input data.

Height growth estimates from the small-tree model are weighted with the height growth estimates from the large tree model over a range of diameters (*Xmin* and *Xmax*) in order to smooth the transition between the two models. For example, the closer a tree’s *DBH* value is to the minimum diameter (*Xmin*), the more the growth estimate will be weighted towards the small-tree growth model. The closer a tree’s *DBH* value is to the maximum diameter (*Xmax*), the more the growth estimate will be weighted towards the large-tree growth model. If a tree’s *DBH* value falls outside of the range given by *Xmin* and *Xmax*, then the model will use only the small-tree or large-tree growth model in the growth estimate. The weight applied to the growth estimate is calculated using equation {4.6.1.8}, and applied as shown in equation {4.6.1.9}. The range of diameters for each species is shown in Table 4.6.1.3.

{4.6.1.8}

*DBH* <u><</u> *Xmin*: *XWT* = 0

*Xmin* < *DBH* < *Xmax*: *XWT* = (*DBH* - *Xmin*) / (*Xmax* - *Xmin*)

*DBH* <u>></u> *Xmax*: *XWT* = 1

{4.6.1.9} Estimated growth = [(1 - *XWT*) \* *STGE*] + [*XWT* \* *LTGE*]

where:

*XWT* is the weight applied to the growth estimates

*DBH* is tree diameter at breast height

*Xmax* is the maximum *DBH* is the diameter range

*Xmin* is the minimum *DBH* in the diameter range

*STGE* is the growth estimate obtained using the small-tree growth model

*LTGE* is the growth estimate obtained using the large-tree growth model

**Table 4.6.1.3 Diameter bounds by species in the EC variant.**

| **Species Code** | **Xmin** | **Xmax** |
| --- | --- | --- |
| WP | 2.0 | 4.0 |
| WL | 2.0 | 4.0 |
| DF | 2.0 | 4.0 |
| SF | 2.0 | 4.0 |
| RC | 2.0 | 10.0 |
| GF | 2.0 | 4.0 |
| LP | 1.0 | 5.0 |
| ES | 2.0 | 4.0 |
| AF | 2.0 | 6.0 |
| PP | 2.0 | 6.0 |
| WH | 2.0 | 4.0 |
| MH | 2.0 | 6.0 |
| PY | 2.0 | 4.0 |
| WB | 2.0 | 4.0 |
| NF | 2.0 | 4.0 |
| WF | 2.0 | 4.0 |
| LL | 2.0 | 4.0 |
| YC | 2.0 | 4.0 |
| WJ | 2.0 | 4.0 |
| BM | 2.0 | 4.0 |
| VN | 2.0 | 4.0 |
| RA | 2.0 | 4.0 |
| PB | 2.0 | 4.0 |
| GC | 2.0 | 4.0 |
| DG | 2.0 | 4.0 |
| AS | 2.0 | 4.0 |
| CW | 2.0 | 4.0 |
| WO | 2.0 | 4.0 |
| PL | 2.0 | 4.0 |
| WI | 2.0 | 4.0 |
| OS | 2.0 | 6.0 |
| OH | 2.0 | 4.0 |

### ****4.6.2 Small Tree Diameter Growth****

As stated previously, for trees being projected with the small tree equations, height growth is predicted first, and then diameter growth. So both height at the beginning of the cycle and height at the end of the cycle are known when predicting diameter growth. Small tree diameter growth for trees over 4.5 feet tall is calculated as the difference of predicted diameter at the start of the projection period and the predicted diameter at the end of the projection period, adjusted for bark ratio. By definition, diameter growth is zero for trees less than 4.5 feet tall. Diameter growth for trees whose diameter is 3.0” or greater at the start of the projection cycle is estimated using equations discussed in section 4.7.1.

When calibration of the height-diameter curve is turned off or does not occur for a species, these two predicted diameters are estimated using the species-specific Curtis-Arney functions shown in equation {4.1.1} with diameter solved as a function of height. When calibration of the height-diameter curve is turned on and does occur for a species, these two predicted diameters are estimated using the species specific logistic relationships shown in equation {4.1.2} with diameter solved as a function of height except in the following cases.

Ponderosa pine trees use equation {4.1.3} with diameter solved as a function of height and JCR set to 7.

Western hemlock trees use equation {4.6.2.1}.

{4.6.2.1} *D* = -0.674 + 1.522 \* ln(*H*)

Pacific yew, whitebark pine, noble fir, and subalpine larch trees use equation {4.6.2.2}.

{4.6.2.2} *D* = -2.089 + 1.980 \* ln(*H*)

Alaska yellow cedar and western juniper trees use equation {4.6.2.3}.

{4.6.2.3} *D* = -0.532 + 1.531 \* ln(*H*)

Bigleaf maple, vine maple, red alder, paper birch, giant chinquapin, Pacific dogwood, quaking aspen, black cottonwood, Oregon white oak, plum, willow, and other hardwood trees use equation {4.6.2.4}.

{4.6.2.4} *D* = 3.102 + 0.021 \* ln(*H*)

Where:

*D* is tree diameter

*H* is total tree height

## 4.7 Large Tree Growth Relationships

Trees are considered “large trees” for FVS modeling purposes when they are equal to, or larger than, some threshold diameter. This threshold diameter is set to 3.0” for all species in the EC variant.

The large-tree model is driven by diameter growth meaning diameter growth is estimated first, and then height growth is estimated from diameter growth and other variables. These relationships are discussed in the following sections.

### 4.7.1 Large Tree Diameter Growth

The large tree diameter growth model used in most FVS variants is described in section 7.2.1 in Dixon (2002). For most variants, instead of predicting diameter increment directly, the natural log of the periodic change in squared inside-bark diameter (ln(*DDS*)) is predicted (Dixon 2002; Wykoff 1990; Stage 1973; and Cole and Stage 1972). For variants predicting diameter increment directly, diameter increment is converted to the *DDS* scale to keep the FVS system consistent across all variants.

The EC variant predicts diameter growth using equation {4.7.1.1} for all species except red alder. Coefficients for this equation are shown in table 4.7.1.1 and 4.7.1.3.

{4.7.1.1} ln(*DDS* )= b1 + (b2 \* *EL*) + (b3 \* *EL^*2) + (b4 \* ln(*SI*)) + *SASP* + b6 + (b7 \* ln(*DBH*)) + b8 + (b9 \* *CR*) + (b10 \* *CR^*2) + (b11 \* *DBH^*2) + (b12 \* *BAL* / (ln(*DBH* + 1.0))) + (b13 \* *PCCF*) + (b14\* *RELHT* \* *PCCF* / 100) + (b15 \* *PCCF^*2 / 1000) + (b16 \* *RELHT*) + (b17 \* *MAI* \* *CCF*) + (b22 \* *BAL*) + (b23 \* *BA*)

For western white pine, western larch, Douglas-fir, Pacific silver fir, western redcedar, grand fir, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, mountain hemlock, white fir, and other softwood:

for *SL* = 0, *SASP* = b5

for *SL* ≠ 0, *SASP* = [b18 \* sin(*ASP*) \* *SL*] + [b19 \* cos(*ASP*) \* *SL*] + [b20 \* *SL*] + [b21 \* *SL^*2]

For all other species, except red alder:

*SASP* = [b18 \* sin(*ASP*) \* *SL*] + [b19 \* cos(*ASP*) \* *SL*] + [b20 \* *SL*] + [b21 \* SL^2]

where:

*DDS* is the square of the diameter growth increment

*EL* is stand elevation in hundreds of feet (bounded to 30 <u><</u> *EL* for western juniper, paper birch, giant chinquapin, Pacific dogwood, quaking aspen, black cottonwood, plum, willow, other hardwood)

*SI* is species site index (for other softwood and mountain hemlock, *SI* = *SI* \* 3.281)

*ASP* is stand aspect

*SL* is stand slope

*CR* is crown ratio expressed as a proportion

*DBH* is tree diameter at breast height

*BAL* is total basal area in trees larger than the subject tree

*PCCF* is crown competition factor on the inventory point where the tree is established

*RELHT* is tree height divided by average height of the 40 largest diameter trees in the stand

*MAI* is stand mean annual increment

*CCF* is stand crown competition factor

b1 is a location-specific coefficient shown in table 4.7.1.1

b2 – b23 are species-specific coefficients shown in table 4.7.1.3

**Table 4.7.1.1 b1 values by location class for equation {4.7.1.1} in the EC variant.**

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Location**  **Class** | **Species Code** | | | | | | | | | |
| **WP** | **WL** | **DF** | **SF** | **RC** | **GF, WF** | **LP** | **ES** | **AF** | **PP** |
| 1 | -4.64535 | -0.605649 | -4.081038 | -0.441408 | 1.49419 | -3.811100 | -1.084679 | -0.098284 | -0.420205 | -3.102028 |
| 2 | 0 | 0 | -3.965956 | -0.538987 | 0 | -3.673109 | -1.172470 | 0.117987 | -0.312955 | 0 |
| 3 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| **Location**  **Class** | **Species Code** | | | | | | | | | |
| **WH** | **MH** | **PY, WB, LL** | **NF** | **YC** | **WJ, PB, GC, DG, AS, CW, PL, WI, OH** | **BM, VN** | **RA** | **WO** | **OS** |
| 1 | -0.147675 | -1.407548 | -1.310067 | -1.127977 | -1.277664 | -0.107648 | -7.753469 | 0 | -1.33299 | -1.407548 |
| 2 | -0.298310 | -1.131934 | 0 | -1.401865 | 0 | 0 | 0 | 0 | 0 | -1.131934 |
| 3 | 0 | -1.539078 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | -1.539078 |

**Table 4.7.1.2 Location class by species and location code in the EC variant.**

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Location Code** | **Species Code** | | | | | | | | | |
| **WP** | **WL** | **DF** | **SF** | **RC** | **GF, WF** | **LP** | **ES** | **AF** | **PP** |
| 603 – Gifford Pinchot | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 1 | 1 |
| 606 – Mount Hood | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 608 – Okanogan | 1 | 1 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 |
| 613 – Mount Baker – Snoqualmie | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 617 – Wenatchee | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 1 | 1 | 1 |
| 699 – Okanogan (Tonasket RD) | 1 | 1 | 2 | 1 | 1 | 2 | 1 | 2 | 2 | 1 |
| **Location Code** | **Species Code** | | | | | | | | | |
| **WH** | **MH** | **PY, WB,**  **LL** | **NF** | **YC** | **WJ, PB, GC,**  **DG, AS, CW,**  **PL, WI, OH** | **BM, VN** | **RA** | **WO** | **OS** |
| 603 – Gifford Pinchot | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 606 – Mount Hood | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 608 – Okanogan | 2 | 2 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 2 |
| 613 – Mount Baker – Snoqualmie | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 617 – Wenatchee | 2 | 3 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 3 |
| 699 – Okanogan (Tonasket RD) | 2 | 3 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 3 |

**Table 4.7.1.3 Coefficients (b2- b21) for equation 4.7.1.1 in the EC variant.**

| **Coefficient** | **Species Code** | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP** | **WL** | **DF** | **SF** | **RC** | **GF, WF** | **LP** | **ES** | **AF** | **PP** |
| b2 | 0 | 0.004379 | -0.021091 | -0.015087 | -0.00175 | 0.023020 | -0.001124 | -0.014944 | -0.009430 | -0.005345 |
| b3 | 0 | 0 | 0.000225 | 0 | -0.000067 | -0.000364 | 0 | 0 | 0 | 0 |
| b4 | 0.86756 | 0.351929 | 1.119725 | 0.323625 | 0 | 0.782092 | 0.458662 | 0.290959 | 0.231960 | 0.921987 |
| b5 | 0 | -0.290174 | 0 | -0.174404 | 0 | -0.360203 | 0 | 0 | -0.278601 | 0 |
| b6 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0.3835 | 0 |
| b7 | 1.32610 | 0.609098 | 0.855516 | 0.980383 | 0.58705 | 1.042583 | 0.554261 | 0.823082 | 0.816917 | 0.665401 |
| b8 | 0 | 0 | 0 | -0.799079 | 0 | 0.522079 | 0 | 0 | 0 | 0 |
| b9 | 1.29730 | 1.158355 | 2.009866 | 1.709846 | 1.29360 | 2.182084 | 1.423849 | 1.263610 | 1.119493 | 1.671186 |
| b10 | 0 | 0 | -0.44082 | 0 | 0 | -0.843518 | 0 | 0 | 0 | 0 |
| b11 | 0 | -0.000168 | -0.000261 | -0.000219 | 0 | -0.000369 | 0 | -0.000204 | 0 | -0.000247 |
| b12 | -0.00239 | -0.004253 | -0.003075 | -0.000261 | -0.02284 | -0.001323 | -0.004803 | -0.005163 | -0.000702 | -0.008065 |
| b13 | -0.00044 | -0.000568 | -0.000441 | -0.000643 | -0.00094 | -0.001574 | -0.000627 | -0.000883 | -0.001102 | 0.00112 |
| b14 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b15 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | -0.003183 |
| b16 | 0.49649 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b17 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b18 | -0.17911 | 0.258712 | 0.029947 | -0.128126 | 0.05534 | -0.185520 | -0.142328 | 0.216231 | 0.002810 | -0.149848 |
| b19 | 0.38002 | -0.156235 | -0.092151 | -0.059062 | -0.06625 | -0.239156 | -0.064328 | -0.055587 | -0.049761 | -0.181022 |
| b20 | -0.81780 | -0.635704 | -0.309511 | 0.240178 | 0.11931 | 1.466089 | -0.097297 | -0.000577 | 1.160345 | -0.252705 |
| b21 | 0.84368 | 0 | 0 | 0.131356 | 0 | -1.817050 | 0.094464 | 0 | -1.740114 | 0 |
| b22 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b23 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| **Coefficient** | **Species Code** | | | | | | | | | |
| **WH** | **MH** | **PY** | **WB** | **NF** | **LL** | **YC** | **WJ** | **BM, VN** | **RA** |
| b2 | -0.040067 | 0.012082 | 0 | 0 | -0.069045 | 0 | 0 | -0.075986 | -0.012111 | 0 |
| b3 | 0.000395 | 0 | 0 | 0 | 0.000608 | 0 | 0 | 0.001193 | 0 | 0 |
| b4 | 0.380416 | 0.346907 | 0.252853 | 0.252853 | 0.684939 | 0.252853 | 0.244694 | 0.227307 | 1.965888 | 0 |
| b5 | 0 | -0.099908 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b6 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b7 | 0.722462 | 0.580156 | 0.879338 | 0.879338 | 0.904253 | 0.879338 | 0.816880 | 0.889596 | 1.024186 | 0 |
| b8 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b9 | 2.160348 | 1.212069 | 1.970052 | 1.970052 | 4.123101 | 1.970052 | 2.471226 | 1.732535 | 0.459387 | 0 |
| b10 | -0.834196 | 0 | 0 | 0 | -2.689340 | 0 | 0 | 0 | 0 | 0 |
| b11 | -0.000155 | -0.000019 | -0.000132 | -0.000132 | -0.0003996 | -0.000132 | -0.000254 | 0 | -0.000174 | 0 |
| b12 | -0.004065 | 0 | -0.004215 | -0.004215 | -0.006368 | -0.004215 | -0.005950 | -0.001265 | -0.010222 | 0 |
| b13 | 0 | -0.001221 | 0 | 0 | -0.000471 | 0 | 0 | 0 | -0.000757 | 0 |
| b14 | 0 | 0.156459 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b15 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b16 | -0.000358 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b17 | 0 | -0.000021 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b18 | 0 | 0.037062 | 0 | 0 | -0.207659 | 0 | 0.679903 | -0.863980 | 0 | 0 |
| b19 | 0 | -0.097288 | 0 | 0 | -0.374512 | 0 | -0.023186 | 0.085958 | 0 | 0 |
| b20 | 0.421486 | 0.089774 | 0 | 0 | 0.400223 | 0 | 0 | 0 | 0 | 0 |
| b21 | -0.693610 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b22 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b23 | 0 | 0 | -0.000173 | -0.000173 | 0 | -0.000173 | -0.000147 | -0.000981 | 0 | 0 |
| **Coefficient** | **Species Code** | | | | | | | | | |
| **PB** | **GC** | **DG** | **AS** | **CW** | **WO** | **PL** | **WI** | **OS** | **OH** |
| b2 | -0.075986 | -0.075986 | -0.075986 | -0.075986 | -0.075986 | 0 | -0.075986 | -0.075986 | 0.012082 | -0.075986 |
| b3 | 0.001193 | 0.001193 | 0.001193 | 0.001193 | 0.001193 | 0 | 0.001193 | 0.001193 | 0 | 0.001193 |
| b4 | 0.227307 | 0.227307 | 0.227307 | 0.227307 | 0.227307 | 0.14995 | 0.227307 | 0.227307 | 0.346907 | 0.227307 |
| b5 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | -0.099908 | 0 |
| b6 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b7 | 0.889596 | 0.889596 | 0.889596 | 0.889596 | 0.889596 | 1.66609 | 0.889596 | 0.889596 | 0.580156 | 0.889596 |
| b8 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b9 | 1.732535 | 1.732535 | 1.732535 | 1.732535 | 1.732535 | 0 | 1.732535 | 1.732535 | 1.212069 | 1.732535 |
| b10 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b11 | 0 | 0 | 0 | 0 | 0 | -0.00154 | 0 | 0 | -0.000019 | 0 |
| b12 | -0.001265 | -0.001265 | -0.001265 | -0.001265 | -0.001265 | 0 | -0.001265 | -0.001265 | 0 | -0.001265 |
| b13 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | -0.001221 | 0 |
| b14 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0.156459 | 0 |
| b15 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b16 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b17 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | -0.000021 | 0 |
| b18 | -0.863980 | -0.863980 | -0.863980 | -0.863980 | -0.863980 | 0 | -0.863980 | -0.863980 | 0.037062 | -0.863980 |
| b19 | 0.085958 | 0.085958 | 0.085958 | 0.085958 | 0.085958 | 0 | 0.085958 | 0.085958 | -0.097288 | 0.085958 |
| b20 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0.089774 | 0 |
| b21 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b22 | 0 | 0 | 0 | 0 | 0 | -0.00326 | 0 | 0 | 0 | 0 |
| b23 | -0.000981 | -0.000981 | -0.000981 | -0.000981 | -0.000981 | -0.00204 | -0.000981 | -0.000981 | 0 | -0.000981 |

Large-tree diameter growth for red alder is predicted using equation set {4.7.1.2}. Diameter growth is predicted based on tree diameter and stand basal area. While not shown here, this diameter growth estimate is eventually converted to the *DDS* scale.

{4.7.1.2} Used for red alder:

*DBH* <u><</u> 18.0”: *DG* = *CON* – (0.166496 \* *DBH*) + (0.004618 \* *DBH^*2)

*DBH* > 18.0”: *DG* = *CON* – (*CON* / 10) \* (*DBH* – 18)

where:

*CON* = (3.250531 – 0.003029 \* *BA*)

*DG* is potential diameter growth

*DBH* is tree diameter at breast height

*BA* is stand basal area

### 4.7.2 Large Tree Height Growth

For all species except white oak, height growth equations in the EC variant are based on the site index curves shown in section 3.4. Equations for white oak are shown later in this section.

Using a species site index and tree height at the beginning of the projection cycle, an estimated tree age is computed using the site index curves. Also, a maximum species height is computed using equations {4.7.2.1 – 4.7.2.4}.

{4.7.2.1} used for western white pine, western larch, Douglas-fir, Pacific silver fir, western redcedar, grand fir, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine and white fir

*HTMAX* = a0 + a1 \* *SI*

{4.7.2.2} used for mountain hemlock and other softwood

*HTMAX* = a0 + a1 \* *SI* \* 3.281

{4.7.2.3} used for western hemlock, Pacific yew, whitebark pine, noble fir, subalpine larch, Alaska cedar, western juniper, bigleaf maple vine maple, red alder, paper birch, giant chinquapin, Pacific dogwood, quaking aspen, black cottonwood, Oregon white oak, plum, willow, and other hardwood

*HTMAX* = a0 + a1 \* *DBH*

{4.7.2.4} used for western hemlock, Pacific yew, whitebark pine, noble fir, subalpine larch, Alaska cedar, western juniper, bigleaf maple vine maple, red alder, paper birch, giant chinquapin, Pacific dogwood, quaking aspen, black cottonwood, Oregon white oak, plum, willow, and other hardwood

*HTMAX2* = a0 + a1 \* (*DBH* + (*DG*/*BARK*))

where:

*HTMAX* is maximum expected tree height in feet at the start of the projection cycle

*HTMAX2* is maximum expected tree height in feet 10-years in the future

*SI* is the species specific site index

*DBH*  is tree diameter at the start of the projection cycle

*DG*  is estimated 10-year inside-bark diameter growth

*BARK*  is tree bark ratio

a0 – a1 are species-specific coefficients shown in table 4.7.2.1

For western white pine, western larch, Douglas-fir, Pacific silver fir, western redcedar, grand fir, lodgepole pine, Engelmann spruce, subalpine fir, ponderosa pine, mountain hemlock, white fir, and other softwood, if tree height at the beginning of the projection cycle is greater than the maximum species height (*HTMAX*), then height growth is computed using equation {4.7.2.5}. For western hemlock, Pacific yew, whitebark pine, noble fir, subalpine larch, Alaska cedar, western juniper, bigleaf maple vine maple, red alder, paper birch, giant chinquapin, Pacific dogwood, quaking aspen, black cottonwood, Oregon white oak, plum, willow, and other hardwood, if tree height at the beginning of the projection cycle is greater than the maximum species height (*HTMAX*) and less than the maximum species height at the end of the projection cycle (HTMAX2), then height growth is computed using equation {4.7.2.5}.

{4.7.2.5} *HTG* = 0.1

For western hemlock, Pacific yew, whitebark pine, noble fir, subalpine larch, Alaska cedar, western juniper, bigleaf maple vine maple, red alder, paper birch, giant chinquapin, Pacific dogwood, quaking aspen, black cottonwood, Oregon white oak, plum, willow, and other hardwood, if tree height at the beginning of the projection cycle is greater than the maximum species height (*HTMAX*) and greater than or equal to the maximum species height at the end of the projection cycle (HTMAX2), then height growth is computed using equation {4.7.2.6}.

{4.7.2.6} *HTG* = 0.5 \* DG

where:

*HTG* is estimated 10-year tree height growth (bounded 0.1 <u><</u> HTG)

*DG*  is species estimated 10-year diameter growth

a0 – a1 are species-specific coefficients shown in table 4.7.2.1

**Table 4.7.2.1 Maximum height coefficients for equations {4.7.2.1 – 4.7.2.4}, and maximum age, in the EC variant.**

| **Species Code** | **a0** | **a1** | **Maximum**  **Age** |
| --- | --- | --- | --- |
| WP | 2.3 | 2.39 | 200 |
| WL | 12.86 | 1.32 | 110 |
| DF | -2.86 | 1.54 | 180 |
| SF | 21.29 | 1.24 | 130 |
| RC | 52.27 | 1.14 | 250 |
| GF | 21.29 | 1.24 | 130 |
| LP | 2.3 | 1.75 | 140 |
| ES | 20.0 | 1.10 | 150 |
| AF | 45.27 | 1.24 | 150 |
| PP | -5.00 | 1.30 | 200 |
| WH | 51.9732476 | 4.0156013 | 200 |
| MH | -2.06 | 1.54 | 180 |
| PY | 62.7139427 | 3.2412923 | 200 |
| WB | 62.7139427 | 3.2412923 | 200 |
| NF | 39.6317079 | 4.3149844 | 200 |
| WF | 21.29 | 1.24 | 130 |
| LL | 62.7139427 | 3.2412923 | 200 |
| YC | 62.7139427 | 3.2412923 | 200 |
| WJ | 62.7139427 | 3.2412923 | 200 |
| BM | 59.3370816 | 3.9033821 | 200 |
| VN | 59.3370816 | 3.9033821 | 200 |
| RA | 59.3370816 | 3.9033821 | 200 |
| PB | 59.3370816 | 3.9033821 | 200 |
| GC | 59.3370816 | 3.9033821 | 200 |
| DG | 59.3370816 | 3.9033821 | 200 |
| AS | 59.3370816 | 3.9033821 | 200 |
| CW | 59.3370816 | 3.9033821 | 200 |
| WO | 59.3370816 | 3.9033821 | 200 |
| PL | 59.3370816 | 3.9033821 | 200 |
| WI | 59.3370816 | 3.9033821 | 200 |
| OS | -2.06 | 1.54 | 180 |
| OH | 59.3370816 | 3.9033821 | 200 |

If tree height at the beginning of the projection cycle is less than the maximum species height, height increment is obtained by estimating a tree’s potential height growth and adjusting the estimate according to the tree’s crown ratio and height relative to other trees in the stand.

If estimated tree age at the beginning of the projection cycle is greater than or equal to the species maximum age, then for all species except ponderosa pine, potential height growth is calculated using equation {4.7.2.7}. For ponderosa pine, equation {4.7.2.8} is used.

{4.7.2.7} used for all species except PP when estimated tree age is greater than or equal to the maximum age for the species

POT*HTG* = 0.1

{4.7.2.8} used for PP when estimated tree age is greater than or equal to the maximum age for the species

POT*HTG* = -1.31 + 0.5 \* *SI*

where:

*POTHTG* is estimated potential 10-year tree height growth (bounded 0.1 <u><</u> HTG)

*SI*  is species site index

When estimated tree age at the beginning of the projection cycle is less than the species maximum age, then potential height growth is obtained by subtracting estimated current height from an estimated future height. In all cases, potential height growth is then adjusted according to the tree’s crown ratio and height relative to other trees in the stand. Estimated current height (ECH) and estimated future height (H10) are both obtained using the equations shown below. Estimated current height is obtained using estimated tree age at the start of the projection cycle and site index. Estimated future height is obtained using estimated tree age at the start of the projection cycle plus 10-years and site index.

{4.7.2.9} Used for white pine

*H* = *SI* / [b0 \* (1.0 – b1 \* (exp (b2 \* *A*)))^b3]

{4.7.2.10} Used for western larch and subalpine larch

*H* = 4.5 + (b1 \* *A*) + (b2 \* *A^*2) + (b3 \* *A^*3) + (b4 \* *A^*4) + (*SI* – 4.5) \* [b5 + (b6 \* *A*) + (b7 \* *A^*2) + (b8 \* *A^*3)] – b9 \* [b10 + (b11 \* *A*) + (b12 \* *A^*2) + (b13 \* *A^*3)]

{4.7.2.11} Used for Douglas-fir

*H* = 4.5 + exp[b1 + (b2 \* ln(*A*)) + (b3 \* ln(*A*) ^4)] + b4 \* [b5 + (b6 \* (1 – exp (b7 \* *A*))^b8)] + (*SI* – 4.5) \* [b5 + b6 \* (1 – exp(b7 \* *A*)^b8)]

{4.7.2.12} Used for Pacific silver fir, grand fir, and white fir

*H* = exp[b0 + b1\* ln(*A*) + b2\* (ln(*A*))^4 + b3 \* (ln(*A*))^9 + b4 \* (ln(*A*))^11 + b5 \* (ln(*A*))^18] + b12 \* exp[b6 + b7 \* ln(*A*) + b8 \* (ln(*A*))^2 + b9 \* (ln(*A*))^7 + b10 \* (ln(*A*))^16 + b11 \* (ln(*A*))^24] + (*SI* – 4.5) \* exp[b6 + b7 \* ln(*A*) + b8 \* (ln(*A*))^2 + b9 \* (ln(*A*))^7 + b10 \* (ln(*A*))^16 + b11 \* (ln(*A*))^24] + 4.5

{4.7.2.13} Used for red cedar

*H* = b1 \* *SI* \* [(1 – exp(b2 \* *A*))^b3]

{4.7.2.14} Used for lodgepole pine

*H* = b0 + ( b1 \* *A*) + (b2 \* *A^*2) + (b4 \* *A* \* *SI*) + (b5 \* *A^*2 \* *SI*)

{4.7.2.15} Used for Engelmann spruce

*H =* 4.5 +[(b0 \* *SI* ^b1) \* (1 – exp(-b2 \* *A*)) ^ (b3 \* *SI^*b4)]

{4.7.2.16} Used for subalpine fir

*H* = *SI* \* [ b0 + ( b1 \* *A*) + b2 \* *A^*2)]

{4.7.2.17} Used for ponderosa pine

*H* = [ b0 \* (1 – exp(b1 \* *A*))^b2] – [(b3 + b4 \* (1 – exp(b5 \* *A*))^b6) \* b7] + [(b3 + b4 \* (1 – exp(b5 \* *A*))^b6) \* (*SI* – 4.5)] + 4.5

{4.7.2.18} Used for western hemlock

*H* = [*A^*2 / {b0 + (b1 \* *Z)* + ((b2 + b3 \* *Z*) \* *A*) + ((b4 + b5 \* *Z*) \* *A^*2)}] + 4.5

*Z =* 2500 / (*SI* – 4.5)

{4.7.2.19} Used for mountain hemlock and other softwood

*H* = [( b0 + b1 \* *SI*) \* (1 – exp(b2 \* (*SI^* b3) \* *A*))^(b4 + b5/*SI*) + 1.37] \* 3.281

{4.7.2.20} Used for Pacific yew, whitebark pine, Alaska cedar, western juniper, bigleaf maple, vine maple, paper birch, golden chinkapin, Pacific dogwood, quaking aspen, black cottonwood, plum, willow, and other hardwood

*H* = {(*SI* – 4.5) / [ b0 + ( b1 / (*SI* – 4.5)) + (b2 \**A^*-1.4) + ((b3 / (*SI* – 4.5)) \**A^*-1.4)]} + 4.5

{4.7.2.21} Used for noble fir

*H* = {(*SI* – 4.5) / [(*X1 \* (A^*-1)^2) + (*X2 \* (A^*-1)) + 1.0 – 0.0001 \* *X1 – 0.01 \* X2*]} + 4.5

*X1 =* b0 + ( b1 \* (*SI* – 4.5)) – (b2 \* (*SI* – 4.5)^2)

*X2 =* b3 + (b4 \* (*SI* – 4.5)^-1) + (b5 \* (*SI* – 4.5)^-2)

{4.7.2.22} Used for red alder

*H* = *SI* + {[ b0 + ( b1 \* *SI*)] \* [1 – exp((b2 + (b3 \* *SI*)) \* *A*)]^b4} - {[ b0 + ( b1 \* *SI*)] \* [1 – exp ((b2 + (b3 \* *SI*)) \* 20)]^b4}

where:

*H*  is estimated height of the tree

*SI* is species site index

*A* is estimated age of the tree

b0 – b13 are species-specific coefficients shown in table 4.7.2.2

**Table 4.7.2.2 Coefficients (b0 - b13) for height-growth equations in the EC variant.**

|  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Coefficient** | **Species Code** | | | | | | | | | | |
| **WP** | **WL, LL** | **DF** | | | **SF, GF, WF** | | | | **RC** | **LP** |
| b0 | 0.37504453 | 0 | 0 | | | -0.30935 | | | | 0 | 9.89331 |
| b1 | 0.92503 | 1.46897 | -0.37496 | | | 1.2383 | | | | 1.3283 | -0.19177 |
| b2 | -0.0207959 | 0.0092466 | 1.36164 | | | 0.001762 | | | | -0.0174 | 0.00124 |
| b3 | -2.4881068 | -0.00023957 | -0.00243434 | | | -5.40E-06 | | | | 1.4711 | 0 |
| b4 | 0 | 1.1122E-06 | -79.97 | | | 2.046E-07 | | | | 0 | 0.01387 |
| b5 | 0 | -0.12528 | -0.2828 | | | -4.04E-13 | | | | 0 | -0.0000455 |
| b6 | 0 | 0.039636 | 1.87947 | | | -6.2056 | | | | 0 | 0 |
| b7 | 0 | -0.0004278 | -0.022399 | | | 2.097 | | | | 0 | 0 |
| b8 | 0 | 1.7039E-06 | 0.966998 | | | -0.09411 | | | | 0 | 0 |
| b9 | 0 | 73.57 | 0 | | | -0.00004382 | | | | 0 | 0 |
| b10 | 0 | -0.12528 | 0 | | | 2.007E-11 | | | | 0 | 0 |
| b11 | 0 | 0.039636 | 0 | | | -2.054E-17 | | | | 0 | 0 |
| b12 | 0 | -0.0004278 | 0 | | | -84.93 | | | | 0 | 0 |
| b13 | 0 | 1.7039E-06 | 0 | | | 0 | | | | 0 | 0 |
| **Coefficient** | **Species Code** | | | | | | | | | | |
| **ES** | **AF** | **PP** | | | **WH** | | | | **MH, OS** | **PY, WB, YC, WJ, BM, VN, PB, GC, DG, AS, CW, PL, WI, OH** |
| b0 | 2.75780 | -0.07831 | 128.8952205 | | | -1.7307 | | | | 22.8741 | 0.6192 |
| b1 | 0.83312 | 0.0149 | -0.016959 | | | 0.1394 | | | | 0.950234 | -5.3394 |
| b2 | 0.015701 | -4.0818E-05 | 1.23114 | | | -0.0616 | | | | -0.00206465 | 240.29 |
| b3 | 22.71944 | 0 | -0.7864 | | | 0.0137 | | | | 0.5 | 3368.9 |
| b4 | -0.63557 | 0 | 2.49717 | | | 0.00192 | | | | 1.365566 | 0 |
| b5 | 0 | 0 | -0.004504 | | | 0.00007 | | | | 2.045963 | 0 |
| b6 | 0 | 0 | 0.33022 | | | 0 | | | | 0 | 0 |
| b7 | 0 | 0 | 100.43 | | | 0 | | | | 0 | 0 |
| b8 | 0 | 0 | 0 | | | 0 | | | | 0 | 0 |
| b9 | 0 | 0 | 0 | | | 0 | | | | 0 | 0 |
| b10 | 0 | 0 | 0 | | | 0 | | | | 0 | 0 |
| b11 | 0 | 0 | 0 | | | 0 | | | | 0 | 0 |
| b12 | 0 | 0 | 0 | | | 0 | | | | 0 | 0 |
| b13 | 0 | 0 | 0 | | | 0 | | | | 0 | 0 |
| **Coefficient** | **Species Code** | |  | |  | |  | |  | | |
| **NF** | **RA** |  |  | | | |  | |  | |
| b0 | -564.38 | 59.5864 |  |  | | | |  | |  | |
| b1 | 22.25 | 0.7953 |  |  | | | |  | |  | |
| b2 | 0.04995 | 0.00194 |  |  | | | |  | |  | |
| b3 | 6.80 | -0.00074 |  |  | | | |  | |  | |
| b4 | 2843.21 | 0.9198 |  |  | | | |  | |  | |
| b5 | 34735.54 | 0 |  |  | | | |  | |  | |
| b6 | 0 | 0 |  |  | | | |  | |  | |
| b7 | 0 | 0 |  |  | | | |  | |  | |
| b8 | 0 | 0 |  |  | | | |  | |  | |
| b9 | 0 | 0 |  |  | | | |  | |  | |
| b10 | 0 | 0 |  |  | | | |  | |  | |
| b11 | 0 | 0 |  |  | | | |  | |  | |
| b12 | 0 | 0 |  |  | | | |  | |  | |
| b13 | 0 | 0 |  |  | | | |  | |  | |

Potential 10-year height growth (*POTHTG*) is calculated by using equation {4.7.2.23}. Modifiers are then applied to the height growth based upon a tree’s crown ratio (using equation {4.7.2.24}), and relative height and shade tolerance (using equation {4.7.2.25}). Equation {4.7.2.26} uses the Generalized Chapman – Richard’s function (Donnelly et. al, 1992) to calculate a height-growth modifier. Final height growth is calculated using equation {4.7.2.27} as a product of the modifier and potential height growth. The final height growth is then adjusted to the length of the cycle.

{4.7.2.23} *POTHTG* = *H10* – *ECH*

{4.7.2.24} *HGMDCR* = (100 \* (*CR* / 100)^3) \* exp(-5 \* (*CR* / 100)) bounded HGMDCR ≤ 1.0

{4.7.2.25} *HGMDRH* = [1 + ((1 / b1)^(b2 - 1) – 1) \* exp((-1 \* (b3 / (1 – b4)) \* *RELHT^*(1 – b4)]^(-1 / (b2 - 1))

{4.7.2.26} *HTGMOD* = (0.25 \* *HGMDCR*) + (0.75 \* *HGMDRH*) bounded 0.0 ≤ *HTGMOD* ≤ 2.0

{4.7.2.27} *HTG* = *POTHTG* \* *HTGMOD*

where:

*POTHTG* is potential height growth

*H10* is estimated height of the tree in ten years

*ECH* is estimated height of the tree at the beginning of the cycle

*HGMDCR* is a height growth modifier based on crown ratio

*HGMDRH* is a height growth modifier based on relative height and shade tolerance

*HTGMOD* is a weighted height growth modifier

*CR* is crown ratio expressed as a proportion

*RELHT* is tree height divided by average height of the 40 largest diameter trees in the stand

b1 – b4 are species-specific coefficients shown in table 4.7.2.3

**Table 4.7.2.3 Coefficients (b1 – b4) for equation {4.7.2.25} in the EC variant.**

| **Species Code** | **b1** | **b2** | **b3** | **b4** |
| --- | --- | --- | --- | --- |
| WP | 0.10 | 1.1 | 15 | -1.45 |
| WL | 0.01 | 1.1 | 12 | -1.60 |
| DF | 0.10 | 1.1 | 15 | -1.45 |
| SF | 0.20 | 1.1 | 20 | -1.10 |
| RC | 0.20 | 1.1 | 20 | -1.10 |
| GF | 0.15 | 1.1 | 16 | -1.20 |
| LP | 0.01 | 1.1 | 12 | -1.60 |
| ES | 0.15 | 1.1 | 16 | -1.20 |
| AF | 0.15 | 1.1 | 16 | -1.20 |
| PP | 0.05 | 1.1 | 13 | -1.60 |
| WH | 0.20 | 1.1 | 20 | -1.10 |
| MH | 0.10 | 1.1 | 15 | -1.45 |
| PY | 0.20 | 1.1 | 20 | -1.10 |
| WB | 0.10 | 1.1 | 15 | 0.10 |
| NF | 0.10 | 1.1 | 15 | -1.45 |
| WF | 0.15 | 1.1 | 16 | -1.20 |
| LL | 0.01 | 1.1 | 12 | -1.60 |
| YC | 0.15 | 1.1 | 16 | -1.20 |
| WJ | 0.05 | 1.1 | 13 | -1.60 |
| BM | 0.20 | 1.1 | 20 | -1.10 |
| VN | 0.20 | 1.1 | 20 | -1.10 |
| RA | 0.05 | 1.1 | 13 | -1.60 |
| PB | 0.05 | 1.1 | 13 | -1.60 |
| GC | 0.10 | 1.1 | 15 | -1.45 |
| DG | 0.20 | 1.1 | 20 | -1.10 |
| AS | 0.01 | 1.1 | 12 | -1.60 |
| CW | 0.01 | 1.1 | 12 | -1.60 |
| WO | 0.10 | 1.1 | 15 | -1.45 |
| PL | 0.05 | 1.1 | 13 | -1.60 |
| WI | 0.01 | 1.1 | 12 | -1.60 |
| OS | 0.10 | 1.1 | 15 | -1.45 |
| OH | 0.01 | 1.1 | 12 | -1.60 |

For Oregon white oak, *POTHTG* is estimated using equation {4.7.2.28}.

{4.7.2.28} *POTHTG* = [4.5+{(114.24569(1-exp(-.02659\**SI*))^2.25993)-18.602 / ln(2.71\**BA*)}\*{1-exp(-.13743\**DBH2*)}^1.38994] – [4.5+{(114.24569(1-exp(-.02659\**SI*))^2.25993)-18.602 / ln(2.71\**BA*)}\*{1-exp(-.13743\**DBH1*)}^1.38994]

where:

*POTHTG* is potential height growth

*BA* is stand basal area

*SI* is site index for Oregon white oak

*DBH1* is diameter of the tree at the beginning of the cycle

*DBH2* is estimated diameter of the tree at the end of the cycle

Modifiers are then applied to the height growth as described above using equations {4.7.2.24} - {4.7.2.27}.

A check is done after computing height growth to limit the maximum height for a given diameter. This check is to make sure that current height plus height growth does not exceed the maximum height for the given diameter. The maximum height for a given diameter is calculated using equations {4.7.2.1} - {4.7.2.4}.

# 5.0 Mortality Model

The EC variant uses an SDI-based mortality model as described in Section 7.3.2 of Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002, referred to as EFVS). This SDI-based mortality model is comprised of two steps: 1) determining the amount of stand mortality (section 7.3.2.1 of EFVS) and 2) dispersing stand mortality to individual tree records (section7.3.2.2 of EFVS). In determining the amount of stand mortality, the summation of individual tree background mortality rates is used when stand density is below the minimum level for density dependent mortality (default is 55% of maximum SDI), while stand level density-related mortality rates are used when stands are above this minimum level.

The equation used to calculate individual tree background mortality rates for all species is shown in equation {5.0.1}, and this is then adjusted to the length of the cycle by using a compound interest formula as shown in equation {5.0.2}. Coefficients for these equations are shown in table 5.0.1. The overall amount of mortality calculated for the stand is the summation of the final mortality rate (*RIP*) across all live tree records.

{5.0.1} RI = [1 / (1 + exp(p0 + p1 \* DBH))] \* 0.5

{5.0.2} RIP = 1 – (1 – RI*)*^Y

where:

RI is the proportion of the tree record attributed to mortality

RIP is the final mortality rate adjusted to the length of the cycle

DBH is tree diameter at breast height

Y is length of the current projection cycle in years

p0 and p1 are species-specific coefficients shown in table 5.0.1

**Table 5.0.1 Coefficients used in the background mortality equation {5.0.1} in the EC variant.**

| **Species Code** | **p0** | **p1** |
| --- | --- | --- |
| WP | 6.5112 | -0.0052485 |
| WL | 6.5112 | -0.0052485 |
| DF | 7.2985 | -0.0129121 |
| SF | 5.1677 | -0.0077681 |
| RC | 9.6943 | -0.0127328 |
| GF | 5.1677 | -0.0077681 |
| LP | 5.9617 | -0.0340128 |
| ES | 9.6943 | -0.0127328 |
| AF | 5.1677 | -0.0077681 |
| PP | 5.5877 | -0.005348 |
| WH | 5.1677 | -0.0077681 |
| MH | 5.1677 | -0.0077681 |
| PY | 9.6943 | -0.0127328 |
| WB | 6.5112 | -0.0052485 |
| NF | 6.5112 | -0.0052485 |
| WF | 5.1677 | -0.0077681 |
| LL | 5.9617 | -0.0340128 |
| YC | 5.1677 | -0.0077681 |
| WJ | 5.5877 | -0.005348 |
| BM | 5.9617 | -0.0340128 |
| VN | 5.9617 | -0.0340128 |
| RA | 5.5877 | -0.005348 |
| PB | 5.5877 | -0.005348 |
| GC | 6.5112 | -0.0052485 |
| DG | 9.6943 | -0.0127328 |
| AS | 5.9617 | -0.0340128 |
| CW | 5.9617 | -0.0340128 |
| WO | 6.5112 | -0.0052485 |
| PL | 5.5877 | -0.005348 |
| WI | 5.9617 | -0.0340128 |
| OS | 5.1677 | -0.0077681 |
| OH | 5.9617 | -0.0340128 |

When stand density-related mortality is in effect, the total amount of stand mortality is determined based on the trajectory developed from the relationship between stand SDI and the maximum SDI for the stand. This is explained in section 7.3.2.1 of EFVS.

Once the amount of stand mortality is determined based on either the summation of background mortality rates or density-related mortality rates, mortality is dispersed to individual tree records in relation to either a tree’s percentile in the basal area distribution (PCT) using equations {5.0.3}. This value is then adjusted by a species-specific mortality modifier representing the species shade tolerance shown in equation {5.0.4}.

The mortality model makes multiple passes through the tree records multiplying a record’s trees-per-acre value times the final mortality rate (MORT), accumulating the results, and reducing the trees-per-acre representation until the desired mortality level has been reached. If the stand still exceeds the basal area maximum sustainable on the site the mortality rates are proportionally adjusted to reduce the stand to the specified basal area maximum.

{5.0.3} *MR* = 0.84525 – (0.01074 \* *PCT*) + (0.0000002 \* *PCT*^3)

{5.0.4} *MORT* = *MR* \* *MWT* \* 0.1

where:

*MR* is the proportion of the tree record attributed to mortality (bounded: 0.01 <u><</u> *MR* <u><</u> 1)

*DBH* is tree diameter at breast height

*PCT* is the subject tree’s percentile in the basal area distribution of the stand

*MORT* is the final mortality rate of the tree record

*MWT* is a mortality weight value based on a species’ tolerance shown in table 5.0.2

**Table 5.0.2 *MWT* values for the mortality equation {5.0.4} in the EC variant.**

| **Species Code** | ***MWT*** |
| --- | --- |
| WP | 0.85 |
| WL | 1.0 |
| DF | 0.55 |
| SF | 0.6 |
| RC | 0.6 |
| GF | 0.5 |
| LP | 0.9 |
| ES | 0.5 |
| AF | 0.6 |
| PP | 0.85 |
| WH | 0.60 |
| MH | 0.75 |
| PY | 0.60 |
| WB | 0.85 |
| NF | 0.85 |
| WF | 0.50 |
| LL | 0.90 |
| YC | 0.50 |
| WJ | 0.85 |
| BM | 0.90 |
| VN | 0.90 |
| RA | 0.85 |
| PB | 0.85 |
| GC | 0.85 |
| DG | 0.60 |
| AS | 0.90 |
| CW | 0.90 |
| WO | 0.85 |
| PL | 0.85 |
| WI | 0.90 |
| OS | 0.75 |
| OH | 0.90 |

# 6.0 Regeneration

The EC variant contains a partial establishment model which may be used to input regeneration and ingrowth into simulations. A more detailed description of how the partial establishment model works can be found in section 5.4.5 of the Essential FVS Guide (Dixon 2002).

The regeneration model is used to simulate stand establishment from bare ground, or to bring seedlings and sprouts into a simulation with existing trees. Sprouts are automatically added to the simulation following harvest or burning of known sprouting species (see table 6.0.1 for sprouting species).

**Table 6.0.1 Regeneration parameters by species in the EC variant.**

| **Species Code** | **Sprouting Species** | **Minimum Bud Width (in)** | **Minimum Tree Height (ft)** | **Maximum Tree Height (ft)** |
| --- | --- | --- | --- | --- |
| WP | No | 0.4 | 1.0 | 23.0 |
| WL | No | 0.3 | 1.0 | 27.0 |
| DF | No | 0.3 | 1.0 | 21.0 |
| SF | No | 0.3 | 0.5 | 21.0 |
| RC | No | 0.2 | 0.5 | 22.0 |
| GF | No | 0.3 | 0.5 | 20.0 |
| LP | No | 0.4 | 1.0 | 24.0 |
| ES | No | 0.3 | 0.5 | 18.0 |
| AF | No | 0.3 | 0.5 | 18.0 |
| PP | No | 0.5 | 1.0 | 17.0 |
| WH | No | 0.2 | 1.0 | 20.0 |
| MH | No | 0.2 | 0.5 | 22.0 |
| PY | No | 0.2 | 1.0 | 20.0 |
| WB | No | 0.4 | 1.0 | 20.0 |
| NF | No | 0.3 | 1.0 | 20.0 |
| WF | No | 0.3 | 0.5 | 20.0 |
| LL | No | 0.3 | 1.5 | 20.0 |
| YC | No | 0.2 | 1.0 | 20.0 |
| WJ | No | 0.2 | 1.0 | 20.0 |
| BM | Yes | 0.2 | 1.0 | 20.0 |
| VN | Yes | 0.2 | 1.0 | 20.0 |
| RA | Yes | 0.2 | 1.0 | 50.0 |
| PB | Yes | 0.2 | 1.0 | 20.0 |
| GC | Yes | 0.2 | 1.0 | 20.0 |
| DG | Yes | 0.2 | 1.0 | 20.0 |
| AS | Yes | 0.2 | 1.0 | 20.0 |
| CW | Yes | 0.2 | 1.0 | 20.0 |
| WO | Yes | 0.2 | 1.0 | 20.0 |
| PL | Yes | 0.2 | 1.0 | 20.0 |
| WI | Yes | 0.2 | 1.0 | 20.0 |
| OS | No | 0.2 | 0.5 | 22.0 |
| OH | No | 0.2 | 1.0 | 20.0 |

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

{6.0.5} *PS =* ((99.9 - 3.8462 \* *DSTMPi*) / 100)

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

**Table 6.0.2 Sprouting algorithm parameters for sprouting species in the EC variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **Sprouting Probability** | **Number of Sprout Records** | **Source** |
| BM | 0.9 | {6.0.2} | Roy 1955  Tappenier et al. 1996  Ag. Handbook 654 |
| VN | 0.9 | {6.0.2} | Uchytil 1989 |
| RA | {6.0.5} | 1 | Harrington 1984  Uchytil 1989 |
| PB | 0.7 | 1 | Hutnik and Cunningham 1965  Bjorkbom 1972 |
| GC | 0.9 | {6.0.2} | Harrington et al. 1992  Meyer 2012 |
| DG | 0.9 | {6.0.1} | Gucker 2005 |
| AS | {6.0.4} | 2 | Keyser 2001 |
| CW | 0.9 | {6.0.2} | Gom and Rood 2000  Steinberg 2001 |
| WO | 0.9 | {6.0.1} | Roy 1955  Gucker 2007 |
| PL | 0.7 | 1 | Ag. Handbook 654 |
| WI | 0.9 | 1 | Ag. Handbook 654 |

Regeneration of seedlings must be specified by the user with the partial establishment model by using the PLANT or NATURAL keywords. Height of the seedlings is estimated in two steps. First, the height is estimated when a tree is 5 years old (or the end of the cycle – whichever comes first) by using the small-tree height growth equations found in section 4.6.1. Users may override this value by entering a height in field 6 of the PLANT or NATURAL keyword; however the height entered in field 6 is not subject to minimum height restrictions and seedlings as small as 0.05 feet may be established. The second step also uses the equations in section 4.6.1, which grow the trees in height from the point five years after establishment to the end of the cycle.

Seedlings and sprouts are passed to the main FVS model at the end of the growth cycle in which regeneration is established. Unless noted above, seedlings being passed are subject to minimum and maximum height constraints and a minimum budwidth constraint shown in table 6.0.1. After seedling height is estimated, diameter growth is estimated using equations described in section 4.6.2. Crown ratios on newly established trees are estimated as described in section 4.3.1.

Regenerated trees and sprouts can be identified in the treelist output file with tree identification numbers beginning with the letters “ES”.

# 7.0 Volume

In the EC variant, volume is calculated for four merchantability standards: total stem cubic feet, merchantable stem cubic feet, sawlog stem cubic feet, and merchantable stem board feet (Scribner). Sawlog cubic foot volume is only reported when the FIAVBC keyword is in use. Volume estimation is based on methods contained in the National Volume Estimator Library maintained by the Forest Products Measurements group in the Forest Management Service Center (Volume Estimator Library Equations 2009). The default volume merchantability standards and equation numbers for the EC variant are shown in tables 7.0.1-7.0.3.

Volume computation methods used by the Forest Inventory and Analysis (FIA) program can be requested with the FIAVBC keyword. This keyword encompasses the National Scale Volume and Biomass estimators (NSVB; Westfall et al. 2024) and regional equations used for woodland species (Burrill et al. 2024). More information about the FIAVBC keyword and required input variables can be found in the Essential FVS Guide (Dixon 2002).

**Table 7.0.1 Volume merchantability standards for the EC variant.**

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

| **Common Name** | **Location Code** | **Equation Number** | **Reference** |
| --- | --- | --- | --- |
| western white pine | All | 616BEHW119 | Behre's Hyperbola |
| western larch | 608, 617 | I12FW2W122 | Flewelling's 2-Point Profile Model |
| western larch | 606, 699 | 616BEHW073 | Behre's Hyperbola |
| Douglas-fir | 606 | F05FW2W202 | Flewelling's 2-Point Profile Model |
| Douglas-fir | 608, 617 | I12FW2W202 | Flewelling's 2-Point Profile Model |
| Douglas-fir | 699 | 616BEHW202 | Behre's Hyperbola |
| Pacific silver fir | 606 | I12FW2W017 | Flewelling's 2-Point Profile Model |
| Pacific silver fir | 608, 617 | 616BEHW011 | Behre's Hyperbola |
| Pacific silver fir | 699 | 616BEHW011 | Behre's Hyperbola |
| western redcedar | All | 616BEHW242 | Behre's Hyperbola |
| grand fir | 606 | I13FW2W017 | Flewelling's 2-Point Profile Model |
| grand fir | 608, 617 | I11FW2W017 | Flewelling's 2-Point Profile Model |
| grand fir | 699 | 616BEHW017 | Behre's Hyperbola |
| lodgepole pine | 606 | I11FW2W108 | Flewelling's 2-Point Profile Model |
| lodgepole pine | 608, 617 | I12FW2W108 | Flewelling's 2-Point Profile Model |
| lodgepole pine | 699 | 616BEHW108 | Behre's Hyperbola |
| Engelmann spruce | 606 | I11FW2W093 | Flewelling's 2-Point Profile Model |
| Engelmann spruce | 608, 617 | I11FW2W093 | Flewelling's 2-Point Profile Model |
| Engelmann spruce | 699 | 616BEHW093 | Behre's Hyperbola |
| subalpine fir | All | 616BEHW019 | Behre's Hyperbola |
| ponderosa pine | 606, 608, 617 | I12FW2W122 | Flewelling's 2-Point Profile Model |
| ponderosa pine | 699 | 616BEHW122 | Behre's Hyperbola |
| western hemlock | 606 | I11FW2W260 | Flewelling's 2-Point Profile Model |
| western hemlock | 608, 617, 699 | 616BEHW263 | Behre's Hyperbola |
| mountain hemlock | All | 616BEHW264 | Behre's Hyperbola |
| Pacific yew | All | 616BEHW231 | Behre's Hyperbola |
| whitebark pine | All | 616BEHW101 | Behre's Hyperbola |
| noble fir | 606 | I13FW2W017 | Flewelling's 2-Point Profile Model |
| noble fir | 608, 617, 699 | 616BEHW022 | Behre's Hyperbola |
| white fir | All | 616BEHW015 | Behre's Hyperbola |
| subalpine larch | All | 616BEHW072 | Behre's Hyperbola |
| Alaska cedar | All | 616BEHW042 | Behre's Hyperbola |
| western juniper | All | 616BEHW064 | Behre's Hyperbola |
| bigleaf maple | All | 616BEHW312 | Behre's Hyperbola |
| vine maple | All | 616BEHW000 | Behre's Hyperbola |
| red alder | All | 616BEHW351 | Behre's Hyperbola |
| paper birch | All | 616BEHW375 | Behre's Hyperbola |
| giant chinquapin | All | 616BEHW431 | Behre's Hyperbola |
| Pacific dogwood | All | 616BEHW492 | Behre's Hyperbola |
| quaking aspen | All | 616BEHW746 | Behre's Hyperbola |
| black cottonwood | All | 616BEHW747 | Behre's Hyperbola |
| Oregon white oak | All | 616BEHW815 | Behre's Hyperbola |
| plum | All | 616BEHW000 | Behre's Hyperbola |
| willow | All | 616BEHW920 | Behre's Hyperbola |
| other softwood | All | 616BEHW298 | Behre's Hyperbola |
| other hardwood | All | 616BEHW998 | Behre's Hyperbola |

**Table 7.0.3 Citations by Volume Model**

| **Model Name** | **Citation** |
| --- | --- |
| Behre's Hyperbola | USFS-R6 Sale Preparation and Valuation Section of Diameter and Volume Procedures - R6 Timber Cruise System. 1978. |
| Flewelling's 2-Point Profile Model | Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II. |

# 8.0 Fire and Fuels Extension (FFE-FVS)

The Fire and Fuels Extension to the Forest Vegetation Simulator (FFE-FVS) (Reinhardt and Crookston 2003) integrates FVS with models of fire behavior, fire effects, and fuel and snag dynamics. This allows users to simulate various management scenarios and compare their effect on potential fire hazard, surface fuel loading, snag levels, and stored carbon over time. Users can also simulate prescribed burns and wildfires and get estimates of the associated fire effects such as tree mortality, fuel consumption, and smoke production, as well as see their effect on future stand characteristics. FFE-FVS, like FVS, is run on individual stands, but it can be used to provide estimates of stand characteristics such as canopy base height and canopy bulk density when needed for landscape-level fire models.

For more information on FFE-FVS and how it is calibrated for the EC variant, refer to the updated FFE-FVS model documentation (Rebain, comp. 2010) available on the FVS website.

# 9.0 Insect and Disease Extensions

FVS Insect and Pathogen models for dwarf mistletoe and western root disease have been developed for the EC variant through the participation and contribution of various organizations led by Forest Health Protection. These models are currently maintained by the Forest Management Service Center and regional Forest Health Protection specialists. Additional details regarding each model may be found in chapter 8 of the Essential FVS Users Guide (Dixon 2002).

# 10.0 Literature Cited

Alexander, R.R., Tackle, D., and Dahms, W.G. 1967. Site Indices for Engelmann Spruce. Res. Pap. RM-32. Forest Service, Rocky Mountain Research Station.

Alexander, R.R., Tackle, D., and Dahms, W.G. 1967. Site Indices for Lodgepole Pine with Corrections for Stand Density Methodology. Res. Pap. RM-29. Forest Service, Rocky Mountain Research Station. 18 p.

Arney, J. D. 1985. A modeling strategy for the growth projection of managed stands. Canadian Journal of Forest Research. 15(3):511-518.

Barrett, James W. 1978. Height growth and site index curves for managed, even-aged stands of ponderosa pine in the Pacific Northwest. Res. Pap. PNW-232. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 14 p.

Bjorkbom, John C. 1972. Stand changes in the first 10 years after seedbed preparation for paper birch. USDA Forest Service, Research Paper NE-238. Northeastern Forest Experiment Station, Upper Darby, PA. 10 p.

Brickell, James E. 1970. Equations and Computer subroutines for Estimating Site Quality of Eight Rocky Mounatin Species. Res. Pap. INT-75. Ogden, UT: Forest Service, Intermounatin Forest and Range Experimnet Station. 24 p.

Burns, R. M., & Honkala, B. H. 1990. Silvics of North America: 1. Conifers; 2. Hardwoods Agriculture Handbook 654. US Department of Agriculture, Forest Service, Washington, DC.

Burrill, Elizabeth A.; DiTommaso, Andrea M.; Turner, Jeffery A.; Pugh, Scott A.; Christensen, Glenn; Kralicek, Karin M.; Perry, Carol J.; Lepine, Lucie C.; Walker, David M.; Conkling, Barbara L. 2024. The Forest Inventory and Analysis Database, FIADB user guides, volume: database description (version 9.3), nationwide forest inventory (NFI). U.S. Department of Agriculture, Forest Service. 1026 p. [Online].

Cochran, P.H. 1979. Site index and height growth curves for managed, even-aged stands of white or grand fir east of the Cascades in Oregon and Washington. Res. Pap. PNW-251. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 16 p.

Cochran, P.H. 1979. Site index and height growth curves for managed, even-aged stands of white or grand fir east of the Cascades in Oregon and Washington. Res. Pap. PNW-252. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 13 p.

Cochran, P. H. 1985. Site index, height growth, normal yields, and stocking levels for larch in Oregon and Washington. Res. Note PNW-424. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 13 p.

Cole, D. M.; Stage, A. R. 1972. Estimating future diameters of lodgepole pine. Res. Pap. INT-131. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 20p.

Crookston, Nicholas L. 2003. Internal document on file. Data provided from Region 1. Moscow, ID: Forest Service.

Crookston, Nicholas L. 2005. Draft: Allometric Crown Width Equations for 34 Northwest United States Tree Species Estimated Using Generalized Linear Mixed Effects Models.

Crookston, Nicholas L. 2008. Internal Report.

Curtis, Robert O. 1967. Height-diameter and height-diameter-age equations for second-growth Douglas-fir. Forest Science 13(4):365-375.

Curtis, Robert O.; Herman, Francis R.; DeMars, Donald J. 1974. Height growth and site index for Douglas-fir in high-elevation forests of the Oregon-Washington Cascades. Forest Science 20(4):307-316.

DeMars, Donald J., Francis R. Herman, and John F. Bell. 1970. Preliminary site index curves for noble fir From stem analysis data. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station, Res. Note PNW-119. 9p.

Dixon, G. E. 1985. Crown ratio modeling using stand density index and the Weibull distribution. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 13p.

Dixon, Gary E. comp. 2002 (revised frequently). Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U.S. Department of Agriculture, Forest Service, Forest Management Service Center.

Donnelly, Dennis M., Betters, David R., Turner, Matthew T., and Gaines, Robert E. 1992. Thinning even-aged forest stands: Behavior of singular path solutions in optimal control analyses. Res. Pap. RM-307. Fort Collins, CO: Forest Service. Rocky Mountain Forest and Range Experiment Station. 12 p.

Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II.

Gom, L. A., & Rood, S. B. (2000). Fire induces clonal sprouting of riparian cottonwoods. Canadian Journal of Botany, 77(11), 1604-1616.

Gucker, Corey L. 2005. Cornus nuttallii. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Gucker, Corey L. 2007. Quercus garryana. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Hall, Frederick C. 1983. Growth basal area: a field method for appraising forest site productivity for stockability. Can. J. For. Res. 13:70-77.

Harrington, Constance A. 1984. Factors influencing initial sprouting of red alder. Canadian Journal of Forest Research. 14: 357-361.

Harrington, Constance A.; Curtis, Robert O. 1986. Height growth and site index curves for red alder. Res. Pap. PNW-358. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 14 p.

Harrington, T. B., Tappeiner, I. I., John, C., & Warbington, R. 1992. Predicting crown sizes and diameter distributions of tanoak, Pacific madrone, and giant chinkapin sprout clumps. Western Journal of Applied Forestry, 7(4), 103-108.

Hegyi, R.P.F., J.J. Jelinek, J. Viszlai and D.B. Carpenter. 1979. Site index equations and curves for the major species in British Columbia. For. Inv. Rep. No. 1. Ministry of Forests, Inventory Branch, 1450 Government Street, Victoria, B.C. V8W 3E7

Herman, Francis R.; Curtis, Robert O.; DeMars, Donald J. 1978. Height growth and site index estimates for noble fir in high-elevation forests of the Oregon-Washington Cascades. Res. Pap. PNW-243. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 15 p.

Hutnik, Russell J., and Frank E. Cunningham. 1965. Paper birch (Betula papyrifera Marsh.). In Silvics of forest trees of the United States. p. 93-98. H. A. Fowells, comp. U.S. Department of Agriculture, Agriculture Handbook 271. Washington, DC.

Keyser, C.E. 2001. Quaking Aspen Sprouting in Western FVS Variants: A New Approach. Unpublished Manuscript.

King, James E. 1966. Site index curves for Douglas-fir in the Pacific Northwest. Weyerhaeuser Forestry Paper No. 8. Centralia, WA. Weyerhaeuser Forestry Research Center. 49p.

Krajicek, J.; Brinkman, K.; Gingrich, S. 1961. Crown competition – a measure of density. Forest Science. 7(1):35-42

Means, J.F., M.H. Campbell, and G.P. Johnson. 1986. Preliminary height growth and site index curves for mountain hemlock. FIR Report, Vol 10, No.1. Corvallis, OR: Oregon State University.

Meyer, Rachelle. 2012. Chrysolepis chrysophylla. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Rebain, Stephanie A. comp. 2010 (revised frequently). The Fire and Fuels Extension to the Forest Vegetation Simulator: Updated Model Documentation. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 379 p.

Reinhardt, Elizabeth; Crookston, Nicholas L. (Technical Editors). 2003. The Fire and Fuels Extension to the Forest Vegetation Simulator. Gen. Tech. Rep. RMRS-GTR-116. Ogden, UT: U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station. 209 p.

Roy, D. F. 1955. Hardwood sprout measurements in northwestern California. Forest Research Notes. California Forest and Range Experiment Station, (95).

Stage, A. R. 1973. Prognosis Model for stand development. Res. Paper INT-137. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 32p.

Steinberg, Peter D. 2001. Populus balsamifera subsp. trichocarpa. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Tappeiner, I. I., John, C., Zasada, J., Huffman, D., & Maxwell, B. D. 1996. Effects of cutting time, stump height, parent tree characteristics, and harvest variables on development of bigleaf maple sprout clumps. Western Journal of Applied Forestry, 11(4), 120-124.

Uchytil, Ronald J. 1989. Acer circinatum. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Uchytil, Ronald J. 1989. Alnus rubra. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory.

USFS-R6 Sale Preparation and Valuation Section of Diameter and Volume Procedures - R6 Timber Cruise System. 1978.

Van Dyck, Michael G.; Smith-Mateja, Erin E., comps. 2000 (revised frequently). Keyword reference guide for the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

Westfall, James A.; Coulston, John W.; Gray, Andrew N.; Shaw, John D.; Radtke, Philip J.; Walker, David M.; Weiskittel, Aaron R.; MacFarlane, David W.; Affleck, David L.R.; Zhao, Dehai; Temesgen, Hailemariam; Poudel, Krishna P.; Frank, Jereme M.; Prisley, Stephen P.; Wang, Yingfang; Sánchez Meador, Andrew J.; Auty, David; Domke, Grant M. 2024. A national-scale tree volume, biomass, and carbon modeling system for the United States. Gen. Tech. Rep. WO-104. Washington, DC: U.S. Department of Agriculture, Forest Service. 37 p.

Wiley, Kenneth N. 1978. Site index tables for western hemlock in the Pacific Northwest. For. Pap. No. 17. Centralia, WA: Weyerhaeuser Forestry Research Center. 28 p.

Wykoff, W. R. 1990. A basal area increment model for individual conifers in the northern Rocky Mountains. For. Science 36(4): 1077-1104.

Wykoff, William R., Crookston, Nicholas L., and Stage, Albert R. 1982. User’s guide to the Stand Prognosis Model. Gen. Tech. Rep. INT-133. Ogden, UT: Forest Service, Intermountain Forest and Range Experiment Station. 112p.

# 11.0 Appendices

## 11.1 Appendix A. Distribution of Data Samples

The following tables contain distribution information of data used to fit species relationships in this variant’s geographic region (information from original variant overview).

**Table 11.1.1. Distribution of samples by National Forest, expressed in whole percent of total observations for each species.**

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Species** | **National Forest** | | | | | **Total Number of Observations** |
| **Gifford-Pinchot** | **Mt. Hood** | **Okanogan** | **Wenatchee** | **OK-Tonasket RD** |
| western white pine | 0 | 0 | 0 | 0 | 0 | 0 |
| western larch | 1 | 15 | 8 | 55 | 20 | 652 |
| Douglas-fir | 7 | 22 | 12 | 55 | 5 | 6249 |
| Pacific silver fir | 20 | 31 | 2 | 47 | 0 | 1210 |
| western redcedar | 0 | 0 | 0 | 0 | 0 | 0 |
| grand fir | 3 | 24 | <1 | 73 | 0 | 1950 |
| lodgepole pine | 3 | 17 | 25 | 50 | 5 | 1479 |
| Engelmann spruce | 6 | 4 | 49 | 38 | 3 | 623 |
| subalpine fir | 6 | 3 | 33 | 57 | 1 | 729 |
| ponderosa pine | 1 | 30 | 4 | 63 | 1 | 4040 |
| other species | 14 | 43 | 4 | 39 | 0 | 1443 |

**Table 11.1.2. Distribution of samples for diameter breast high, expressed in whole percent of total observations for each species.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **DBH Range** | | | | | | | | |
| **0-5** | **5-10** | **10-15** | **15-20** | **20-25** | **25-30** | **30-35** | **35-40** | **40+** |
| western white pine | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| western larch | <1 | 16 | 22 | 22 | 15 | 9 | 6 | 5 | 4 |
| Douglas-fir | 1 | 16 | 22 | 21 | 16 | 10 | 6 | 3 | 4 |
| Pacific silver fir | <1 | 16 | 20 | 21 | 18 | 10 | 7 | 4 | 3 |
| western redcedar | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| grand fir | 1 | 19 | 27 | 25 | 14 | 7 | 4 | 1 | 2 |
| lodgepole pine | <1 | 50 | 33 | 12 | 4 | 1 | <1 | 0 | 0 |
| Engelmann spruce | 0 | 22 | 25 | 22 | 15 | 8 | 5 | 2 | 1 |
| subalpine fir | <1 | 38 | 36 | 18 | 5 | 2 | 1 | <1 | 0 |
| ponderosa pine | <1 | 13 | 18 | 21 | 20 | 13 | 7 | 4 | 3 |
| other species | <1 | 13 | 25 | 24 | 19 | 9 | 4 | 2 | 2 |

**Table 11.1.3. Distribution of samples by Crown Ratio group, expressed in whole percent of total observations for each species.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **Crown Code (1=1-10,2=11-20,…,9=81-100)** | | | | | | | | |
| **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** |
| western white pine | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| western larch | 4 | 9 | 24 | 27 | 20 | 11 | 4 | 1 | <1 |
| Douglas-fir | 1 | 6 | 16 | 22 | 20 | 16 | 10 | 6 | 3 |
| Pacific silver fir | 2 | 8 | 19 | 24 | 21 | 14 | 9 | 3 | <1 |
| western redcedar | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| grand fir | 2 | 8 | 18 | 21 | 18 | 15 | 10 | 6 | 3 |
| lodgepole pine | 3 | 14 | 28 | 20 | 14 | 9 | 6 | 4 | 2 |
| Engelmann spruce | <1 | 2 | 7 | 14 | 18 | 20 | 18 | 15 | 5 |
| subalpine fir | 2 | 3 | 9 | 17 | 20 | 20 | 16 | 8 | 4 |
| ponderosa pine | 2 | 8 | 18 | 23 | 20 | 16 | 8 | 3 | 1 |
| other species | <1 | 4 | 9 | 18 | 20 | 18 | 14 | 9 | 7 |

**Table 11.1.4. Distribution of samples by Aspect Code, expressed in percent of total observations for each species.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **Aspect Code** | | | | | | | | |
| **North** | **North-east** | **East** | **South-east** | **South** | **South-west** | **West** | **North-west** | **Level** |
| western white pine | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| western larch | 16 | 15 | 6 | 8 | 5 | 2 | 7 | 7 | 34 |
| Douglas-fir | 13 | 11 | 10 | 8 | 8 | 8 | 10 | 9 | 24 |
| Pacific silver fir | 19 | 12 | 11 | 11 | 11 | 10 | 6 | 10 | 10 |
| western redcedar | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| grand fir | 12 | 8 | 6 | 8 | 6 | 7 | 3 | 5 | 45 |
| lodgepole pine | 14 | 13 | 7 | 10 | 11 | 8 | 7 | 8 | 23 |
| Engelmann spruce | 14 | 13 | 3 | 7 | 6 | 13 | 6 | 11 | 27 |
| subalpine fir | 20 | 14 | 6 | 9 | 8 | 7 | 11 | 10 | 14 |
| ponderosa pine | 9 | 7 | 6 | 6 | 7 | 7 | 4 | 4 | 50 |
| other species | 18 | 15 | 15 | 9 | 6 | 10 | 5 | 14 | 10 |

**Table 11.1.5. Distribution of samples by total stand basal area per acre, expressed in percent of total for each species.**

| **Species** | **Basal Area** | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **0-50** | **50-100** | **100-150** | **150-200** | **200-250** | **250-300** | **300-350** | **350-400** | **<u>></u> 400** |
| western white pine | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| western larch | 5 | 21 | 29 | 17 | 11 | 9 | 6 | <1 | 2 |
| Douglas-fir | 14 | 23 | 22 | 14 | 11 | 7 | 5 | 2 | 2 |
| Pacific silver fir | 4 | 8 | 6 | 13 | 19 | 22 | 14 | 7 | 6 |
| western redcedar | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| grand fir | 5 | 15 | 20 | 18 | 18 | 15 | 5 | 3 | 5 |
| lodgepole pine | 10 | 21 | 34 | 20 | 9 | 4 | 1 | 1 | <1 |
| Engelmann spruce | 2 | 10 | 17 | 29 | 22 | 12 | 7 | 1 | <1 |
| subalpine fir | 1 | 10 | 19 | 25 | 28 | 10 | 6 | 1 | <1 |
| ponderosa pine | 14 | 35 | 29 | 14 | 5 | 2 | <1 | <1 | 0 |
| other species | 6 | 12 | 11 | 14 | 16 | 20 | 11 | 5 | 4 |

**Table 11.1.6. Distribution of samples by diameter growth, expressed in percent for each species.**

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **Diameter Growth (inches/10 years)** | | | | | | | |
| **< 0.5** | **0.5-1.0** | **1.0-1.5** | **1.5-2.0** | **2.0-2.5** | **2.5-3.0** | **3.0-3.5** | **<u>></u> 3.5** |
| western white pine | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| western larch | 51 | 34 | 11 | 3 | 1 | <1 | 0 | 0 |
| Douglas-fir | 27 | 33 | 20 | 13 | 6 | 2 | 1 | <1 |
| Pacific silver fir | 35 | 38 | 17 | 6 | 3 | <1 | <1 | <1 |
| western redcedar | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| grand fir | 16 | 34 | 23 | 13 | 7 | 3 | 2 | 2 |
| lodgepole pine | 42 | 42 | 12 | 3 | <1 | <1 | <1 | <1 |
| Engelmann spruce | 32 | 39 | 16 | 8 | 3 | 1 | <1 | <1 |
| subalpine fir | 36 | 43 | 16 | 3 | 1 | 1 | 0 | 0 |
| ponderosa pine | 23 | 34 | 25 | 10 | 5 | 2 | <1 | <1 |
| other species | 38 | 41 | 15 | 5 | 1 | <1 | 0 | <1 |

**Table 11.1.7. Distribution of samples by elevation, expressed in percent for each species.**

| **Species** | **Elevation** | | | | |
| --- | --- | --- | --- | --- | --- |
| **< 3000** | **3000-4000** | **4000-5000** | **5000-6000** | **<u>></u> 6000** |
| western white pine | 0 | 0 | 0 | 0 | 0 |
| western larch | 2 | 28 | 41 | 29 | <1 |
| Douglas-fir | 26 | 37 | 29 | 8 | <1 |
| Pacific silver fir | 3 | 25 | 56 | 16 | 0 |
| western redcedar | 0 | 0 | 0 | 0 | 0 |
| grand fir | 12 | 38 | 35 | 15 | 0 |
| lodgepole pine | 5 | 14 | 34 | 39 | 8 |
| Engelmann spruce | 4 | 11 | 34 | 33 | 18 |
| subalpine fir | <1 | 5 | 30 | 50 | 16 |
| ponderosa pine | 37 | 40 | 18 | 4 | <1 |
| other species | 4 | 33 | 41 | 21 | 2 |

## 11.2 Appendix B. Plant Association Codes

**Table 11.2.1 Plant association codes recognized in the EC variant.**

| **FVS Sequence Number = Plant Association**  **Species Type** | **Alpha Code** | **Site Species** | **Site Index\*** | **Max. SDI\*** | **Source\*** | **Reference** |
| --- | --- | --- | --- | --- | --- | --- |
| 1 = PIAL/CARU  Whitebark pine/pinegrass | CAG112 | DF | 25 | 625 | C | PNW-GTR-360  p. 262 |
| 2 = PIAL/VASC/LUHI  Whitebark pine/grouse huckleberry/smooth woodrush | CAS311 | AF | 45 | 700 | C | PNW-GTR-359  p. 248 |
| 3 = THPL-ABGR/ACTR  Western redcedar-grand fir/vanilla leaf | CCF211 | DF | 72 | 850 | H | R6 E TP-004-88 p. 115 |
| 4 = THPL/ACTR  Western redcedar/vanilla leaf | CCF212 | GF | 71 | 1016 | H | R6 E TP-006-88 p. 93 |
| 5 = THPL/CLUN  Western redcedar/queencup beadily | CCF221 | DF | 64 | 840 | C | PNW-GTR-360  p. 246 |
| 6 = THPL/ARNU3  Western redcedar/wild sarsaparilla | CCF222 | DF | 69 | 670 | C | PNW-GTR-360  p. 240 |
| 7 = THPL/OPHO  Western redcedar/devil's club | CCS211 | RC | 96 | 775 | C | PNW-GTR-360  p. 251 |
| 8 = THPL/VAME  Western redcedar/big huckleberry | CCS311 | DF | 63 | 815 | C | PNW-GTR-360  p. 256 |
| 9 = PSME/PEFR3  Douglas-fir/shrubby penstemon | CDF411 | DF | 58 | 229 | H | PNW-GTR-359  p. 82 |
| 10 = PSME/ARUV-OKAN  Douglas-fir/bearberry (Okanogan) | CDG123 | DF | 38 | 331 | H | R6 E 132b-83  p. 27 |
| 11 = PSME/CARU-O&C  Douglas-fir/pinegrass (Okanogan & Colville) | CDG131 | DF | 58 | 530 | C | PNW-GTR-360  p. 49 |
| 12 = PSME/CAGE-WEN  Douglas-fir/elk sedge (Wenatchee) | CDG132 | DF | 69 | 550 | C | PNW-GTR-359  p. 60 |
| 13 = PSME/CARU-AGSP  Douglas-fir/pinegrass-bluebunch wheatgrass | CDG134 | DF | 61 | 430 | C | PNW-GTR-359  p. 64 |
| 14 = PSME/CAGE  Douglas-fir/elk sedge | CDG141 | DF | 55 | 442 | H | R6 E TP-004-88 p. 51 |
| 15 = PIPO-PSME/AGSP  Ponderosa pine-Douglas-fir/bluebunch wheatgrass | CDG311 | PP | 79 | 270 | C | PNW-GTR-360  p. 44 |
| 16 = PSME/FEOC  Douglas-fir/western fescue | CDG321 | DF | 67 | 649 | H | R6 E TP-004-88 p. 55 |
| 17 = PSME/AGSP-WEN  Douglas-fir/bluebunch wheatgrass (Wenatchee) | CDG322 | DF | 39 | 235 | C | PNW-GTR-359  p. 58 |
| 18 = PSME/AGSP-ASDE  Douglas-fir/bluebunch wheatgrass-podfern | CDG323 | DF | 58 | 188 | H | PNW-GTR-359  p. 80 |
| 19 = PSME/HODI/CAGE  Douglas-fir/oceanspray/elk sedge | CDS231 | DF | 80 | 676 | H | R6 E TP-004-88 p. 59 |
| 20 = PSME/ACCI/FEOC  Douglas-fir/vine maple/western fescue | CDS241 | DF | 76 | 720 | H | R6 E TP-006-88 p. 45 |
| 21 = PSME/PAMY-  Douglas-fir/pachistima (Okanogan) | CDS411 | DF | 59 | 630 | C | R6 E 132b-83  p. 41 |
| 22 = PSME/PAMY/CARU  Douglas-fir/pachistima/pinegrass | CDS412 | DF | 57 | 450 | C | PNW-GTR-359  p. 81 |
| 23 = PSME/ARUV-PUTR  Douglas-fir/bearberry-bitterbrush | CDS631 | DF | 45 | 232 | H | R6 E 132b-83  p. 24 |
| 24 = PSME/SYOR-O&C  Douglas-fir/Mt. snowberry (Okanogan and Colville) | CDS632 | DF | 54 | 400 | C | PNW-GTR-360  p. 71 |
| 25 = PSME/SYAL  Douglas-fir/common snowberry | CDS633 | DF | 81 | 475 | C | PNW-GTR-360  p. 66 |
| 26 = PSME/SYAL-WEN  Douglas-fir/common snowberry (Wenatchee) | CDS636 | DF | 80 | 580 | C | PNW-GTR-359  p. 72 |
| 27 = PSME/SYAL/AGSP  Douglas-fir/common snowberry/bluebunch wheatgrass | CDS637 | DF | 67 | 325 | C | PNW-GTR-359  p. 74 |
| 28 = PSME/SYAL/CARU  Douglas-fir/common snowberry/pinegrass | CDS638 | DF | 77 | 425 | C | PNW-GTR-359  p. 76 |
| 29 = PSME/SPBEL/CARU  Douglas-fir/shiny-leaf spirea/pinegrass | CDS639 | DF | 65 | 550 | C | PNW-GTR-359  p. 70 |
| 30 = PSME/SPBEL  Douglas-fir/shiny-leaf spirea | CDS640 | DF | 68 | 555 | C | PNW-GTR-359  p. 82 |
| 31 = PSME/ARUV-WEN  Douglas-fir/bearberry (Wenatchee) | CDS653 | DF | 37 | 460 | C | PNW-GTR-359  p. 80 |
| 32 = PSME/ARUV-PUTR  Douglas-fir/bearberry-bitterbrush | CDS654 | DF | 51 | 375 | C | PNW-GTR-359  p. 81 |
| 33 = PSME/ARUV/CARU  Douglas-fir/bearberry/pinegrass | CDS655 | DF | 40 | 370 | C | PNW-GTR-359  p. 80 |
| 34 = PSME/SYAL-MTH  Douglas-fir/common snowberry (Mt Hood) | CDS661 | DF | 84 | 767 | H | R6 E TP-004-88 p. 67 |
| 35 = PSME/ARNE  Douglas-fir/pinemat manzanita | CDS662 | DF | 51 | 1118 | H | R6 E TP-004-88 p. 63 |
| 36 = PSME/PUTR  Douglas-fir/bitterbursh | CDS673 | DF | 50 | 525 | C | PNW-GTR-359  p. 82 |
| 37 = PSME/PUTR/AGSP  Douglas-fir/bitterbursh/bluebunch wheatgrass | CDS674 | DF | 62 | 305 | C | PNW-GTR-359  p. 66 |
| 38 = PSME/PUTR/CARU  Douglas-fir/bitterbrush/pinegrass | CDS675 | DF | 58 | 370 | C | PNW-GTR-359  p. 68 |
| 39 = PSME/PHMA-O&C  Douglas-fir/ninebark (Okanogan & Colville) | CDS715 | DF | 63 | 470 | C | PNW-GTR-360  p. 55 |
| 40 = PSME/PHMA-LIBOL  Douglas-fir/ninebark-twinflower | CDS716 | DF | 60 | 600 | C | PNW-GTR-360  p. 61 |
| 41 = PSME/VACCI  Douglas-fir/huckleberry | CDS811 | DF | 51 | 397 | H | R6 E 132b-83  p. 33 |
| 42 = PSME/VACA-COL  Douglas-fir/dwarf huckleberry (Colville) | CDS813 | WL | 66 | 600 | C | PNW-GTR-360  p. 76 |
| 43 = PSME/VAME-COLV  Douglas-fir/big huckleberry (Colville) | CDS814 | DF | 66 | 585 | C | PNW-GTR-360  p. 82 |
| 44 = PSME/VACA  Douglas-fir/dwarf huckleberry | CDS831 | DF | 60 | 362 | H | PNW-GTR-359  p. 82 |
| 45 = PSME/VAME-WEN  Douglas-fir/big huckleberry (Wenatchee) | CDS832 | DF | 53 | 530 | C | PNW-GTR-359  p. 83 |
| 46 = PSME/VAMY/CARU  Douglas-fir/low huckleberry/pinegrass | CDS833 | DF | 48 | 265 | C | PNW-GTR-359  p. 83 |
| 47 = ABLA2/XETE  Subalpine fir/beargrass | CEF111 | AF | 54 | 905 | C | PNW-GTR-360  p. 178 |
| 48 = ABLA2/LIBOL-O&C  Subalpine fir/twinflower (Okanogan & Colville) | CEF211 | AF | 80 | 685 | C | PNW-GTR-360  p. 141 |
| 49 = ABLA2/LIBOL-WEN  Subalpine fir/twinflower (Wenatchee) | CEF222 | ES | 90 | 700 | C | PNW-GTR-359  p. 234 |
| 50 = ABLA2/CLUN  Subalpine fir/queencup beadily | CEF421 | AF | 87 | 650 | C | PNW-GTR-360  p. 131 |
| 51 = ABLA2/TRCA3  Subalpine fir/false bugbane | CEF422 | AF | 87 | 745 | C | PNW-GTR-360  p. 157 |
| 52 = ABLA2/COCA  Subalpine fir/bunchberry dogwood | CEF423 | AF | 75 | 675 | C | PNW-GTR-360  p. 136 |
| 53 = ABLA2/ARLA-POPU  Subalpine fir/broadleaf arnica-skunkleaf polemonium | CEF424 | AF | 65 | 880 | C | PNW-GTR-359  p. 214 |
| 54 = ABLA2/LUHI-WEN  Subalpine fir/smooth woodrush (Wenatchee) | CEG121 | AF | 65 | 785 | C | PNW-GTR-359  p. 218 |
| 55 = ABLA2/CARU-WEN  Subalpine fir/pinegrass (Wenatchee) | CEG310 | AF | 73 | 549 | H | PNW-GTR-359  p. 216 |
| 56 = ABLA2/CARU-O&C  Subalpine fir/pinegrass (Okanogan & Colville) | CEG311 | AF | 77 | 655 | C | PNW-GTR-360  p. 126 |
| 57 = PIEN/EQAR  Engelmann spruce/horsetail | CEM211 | ES | 72 | 535 | C | PNW-GTR-360  p. 184 |
| 58 = ABLA2/PAMY-OKAN  Subalpine fir/pachistima (Okanogan) | CES111 | AF | 90 | 381 | H | R6 E 132b-83  p. 52 |
| 59 = ABLA2/PAMY-WEN  Subalpine fir/pachistima (Wenatchee) | CES113 | ES | 111 | 820 | C | PNW-GTR-359  p. 234 |
| 60 = ABLA2/RHAL-XETE  Subalpine fir/Cascades azalea-beargrass | CES210 | AF | 56 | 790 | C | PNW-GTR-360  p. 152 |
| 61 = ABLA2/RHAL  Subalpine fir/Cascade azalea | CES211 | AF | 52 | 790 | C | PNW-GTR-359  p. 220 |
| 62 = ABLA2/RHAL/LUHI  Subalpine fir/Cascade azalea/smooth woodrush | CES213 | AF | 60 | 665 | C | PNW-GTR-359  p. 222 |
| 63 = ABLA2/VACCI  Subalpine fir/huckleberry | CES312 | AF | 102 | 511 | H | R6 E 132b-83  p. 46 |
| 64 = ABLA2/VAME-COLV  Subalpine fir/big huckleberry (Colville) | CES313 | AF | 76 | 700 | C | PNW-GTR-360  p. 168 |
| 65 = ABLA2/VAME-WEN  Subalpine fir/big huckleberry (Wenatchee) | CES342 | DF | 73 | 810 | C | PNW-GTR-359  p. 235 |
| 66 = ABLA2/VASC-O&C  Subalpine fir/grouse huckleberry (Okan & Colv) | CES412 | AF | 63 | 780 | C | PNW-GTR-360  p. 173 |
| 67 = ABLA2/VASC/CARU-OKAN  Subalpine fir/grouse huckleberry/pinegrass (Okan) | CES413 | ES | 62 | 670 | C | PNW-GTR-359  p. 236 |
| 68 = ABLA2/VACA  Subalpine fir/dwarf huckleberry | CES422 | LP | 94 | 620 | C | PNW-GTR-359  p. 235 |
| 69 = ABLA2/RULA  Subalpine fir/dwarf bramble | CES423 | AF | 90 | 785 | C | PNW-GTR-359  p. 224 |
| 70 = ABLA2/VASC/ARLA  Subalpine fir/grouse huckleberry/broadleaf arnica | CES424 | AF | 51 | 785 | C | PNW-GTR-359  p. 230 |
| 71 = ABLA2/VASC/LUHI  Subalpine fir/grouse huckleberry/smooth woodrush | CES425 | AF | 65 | 720 | C | PNW-GTR-359  p. 232 |
| 72 = ABLA2/VASC-WEN  Subalpine fir/grouse huckleberry (Wenatchee) | CES426 | DF | 69 | 720 | C | PNW-GTR-359  p. 228 |
| 73 = ABAM/TITRU  Pacific silver fir/coolwort foamflower | CFF162 | SF | 143 | 1234 | H | PNW-GTR-359  p. 168 |
| 74 = ABAM/ACTR-WEN  Pacific silver fir/vanilla leaf (Wenatchee) | CFF254 | SF | 112 | 935 | C | PNW-GTR-359  p. 158 |
| 75 = ABAM/VAAL-WEN  Pacific Silver fir/Alaska huckleberry (Wenatchee) | CFS232 | SF | 104 | 872 | H | PNW-GTR-359  p. 170 |
| 76 = ABAM/VAME/CLUN-WEN  Silver fir/big huckleberry/queencup beadlily (Wen) | CFS233 | SF | 79 | 1070 | C | PNW-GTR-359  p. 172 |
| 77 = ABAM/VAME-PYSE  Pacific silver fir/big huckleberry-sidebells pyrola | CFS234 | SF | 62 | 840 | C | PNW-GTR-359  p. 174 |
| 78 = ABAM/MEFE-WEN  Pacific silver fir/rusty menziesia (Wenatchee) | CFS542 | SF | 84 | 915 | C | PNW-GTR-359  p. 160 |
| 79 = ABAM/RHAL-OKAN  Pacific silver fir/Cascade azalea (Okanogan) | CFS553 | SF | 45 | 646 | H | R6 E 132b-83  p. 75 |
| 80 = ABAM/RHAL-VAME-WEN  Pac silver fir/Cascade azalea-big huckleberry (Wen) | CFS556 | AF | 40 | 940 | C | PNW-GTR-359  p. 164 |
| 81 = ABAM/PAMY  Pacific silver fir/pachistima | CFS558 | DF | 65 | 776 | H | R6 E 132b-83  p. 75 |
| 82 = ABAM/ACCI  Pacific silver fir/vine maple | CFS621 | SF | 104 | 550 | C | PNW-GTR-359  p. 156 |
| 83 = TSHE-ABGR/CLUN  Western hemlock-grand fir/queencup beadlily | CHC311 | GF | 81 | 798 | H | R6 E TP-004-88 p. 111 |
| 84 = TSHE/ACTR-WEN  Western hemlock/vanilla leaf (Wenatchee) | CHF223 | DF | 73 | 675 | C | PNW-GTR-359  p. 138 |
| 85 = TSHE/CLUN  Western hemlock/queencup beadlily | CHF311 | DF | 69 | 835 | C | PNW-GTR-360  p. 204 |
| 86 = TSHE/ARNU3  Western hemlock/wild sarsaparilla | CHF312 | DF | 75 | 775 | C | PNW-GTR-360  p. 199 |
| 87 = TSHE/ASCA3  Western hemlock/wild ginger | CHF313 | DF | 85 | 1253 | H | PNW-GTR-359  p. 142 |
| 88 = TSHE/GYDR  Western hemlock/oak-fern | CHF422 | DF | 83 | 900 | C | PNW-GTR-360  p. 209 |
| 89 = TSHE/XETE-COLV  Western hemlock/beargrass (Colville) | CHF521 | ES | 90 | 830 | C | PNW-GTR-360  p. 226 |
| 90 = TSHE/BENE-WEN  Western hemlock/Cascade Oregon grape (Wenatchee) | CHS142 | DF | 82 | 810 | C | PNW-GTR-359  p. 144 |
| 91 = TSHE/PAMY/CLUN  Western hemlock/pachistima/queencup beadlily | CHS143 | DF | 74 | 855 | C | PNW-GTR-359  p. 146 |
| 92 = TSHE/ARNE  Western hemlock/pinemat manzanita | CHS144 | DF | 52 | 705 | C | PNW-GTR-359  p. 140 |
| 93 = TSHE/ACCI/ACTR-WEN  Western hemlock/vine maple/vanilla leaf (Wenatchee) | CHS225 | DF | 87 | 565 | C | PNW-GTR-359  p. 132 |
| 94 = TSHE/ACCI/ASCA3  Western hemlock/vine maple/wild ginger | CHS226 | DF | 86 | 720 | C | PNW-GTR-359  p. 134 |
| 95 = TSHE/ACCI/CLUN  Western hemlock/vine maple/queencup beadlily | CHS227 | GF | 86 | 630 | C | PNW-GTR-359  p. 136 |
| 96 = TSHE/RUPE  Western hemlock/five-leaved bramble | CHS411 | ES | 103 | 1129 | H | PNW-GTR-360  p. 221 |
| 97 = TSHE/MEFE  Western hemlock/rusty menziesia | CHS711 | DF | 71 | 765 | C | PNW-GTR-360  p. 215 |
| 98 = PICO/SHCA  Lodgepole pine/russet buffaloberry | CLS521 | LP | 96 | 530 | C | PNW-GTR-360  p. 267 |
| 99 = TSME/XETE-VAMY  Mountain hemlock/beargrass-low huckleberry | CMF131 | OT | 23 | 775 | C | PNW-GTR-359  p. 202 |
| 100 = TSME/LUHI  Mountain hemlock/smooth woodrush | CMG221 | OT | 24 | 544 | H | PNW-GTR-359  p. 184 |
| 101 = TSME/VASC/LUHI  Mountain hemlock/grouse huckleberry/smooth woodrush | CMS121 | OT | 23 | 650 | C | PNW-GTR-359  p. 200 |
| 102 = TSME/RULA  Mountain hemlock/dwarf bramble | CMS122 | SF | 79 | 940 | C | PNW-GTR-359  p. 194 |
| 103 = TSME/MEFE-VAAL  Mountain hemlock/rusty menziesia-Alaska huckleberry | CMS256 | SF | 94 | 742 | H | PNW-GTR-359  p. 186 |
| 104 = TSME/MEFE-VAME  Mountain hemlock/rusty menziesia-big huckleberry | CMS257 | SF | 102 | 1115 | C | PNW-GTR-359  p. 188 |
| 105 = TSME/VAAL-WEN  Mountain hemlock/Alaska huckleberry (Wenatchee) | CMS258 | OT | 28 | 1132 | H | PNW-GTR-359  p. 196 |
| 106 = TSME/VAME-WEN  Mountain hemlock/big huckleberry (Wenatchee) | CMS259 | OT | 20 | 885 | C | PNW-GTR-359  p. 198 |
| 107 = TSME/PHEM-VADE  Mtn hemlock/red mountain heath-Cascade huckleberry | CMS354 | AF | 53 | 780 | C | PNW-GTR-359  p. 190 |
| 108 = TSME/RHAL-VAAL  Mountain hemlock/Cascade azalea-Alaska huckleberry | CMS355 | OT | 26 | 541 | H | PNW-GTR-359  p. 204 |
| 109 = TSME/RHAL-VAME  Mountain hemlock/Cascades azalea-big huckleberry | CMS356 | OT | 20 | 935 | C | PNW-GTR-359  p. 192 |
| 110 = PIPO/AGSP-WEN  Ponderosa pine/bluebunch wheatgrass (Wenatchee) | CPG141 | PP | 81 | 200 | C | PNW-GTR-359  p. 42 |
| 111 = PIPO/CARU-AGSP  Ponderosa pine/pinegrass-bluebunch wheatgrass | CPG231 | PP | 49 | 420 | C | PNW-GTR-359  p. 44 |
| 112 = PIPO-QUGA/BASA  Ponderosa pine-Or white oak/arrowleaf balsamroot | CPH211 | PP | 65 | 328 | H | R6 E TP-004-88 p. 43 |
| 113 = PIPO-QUGA/PUTR  Ponderosa pine-Oregon white oak/bitterbrush | CPH212 | PP | 63 | 342 | H | R6 E TP-004-88 p. 47 |
| 114 = PIPO/PUTR/AGSP  Ponderosa pine/bitterbursh/bluebunch wheatgrass | CPS241 | PP | 75 | 210 | C | PNW-GTR-359  p. 46 |
| 115 = ABGR-PIEN/SMST  Grand fir-Engelmann spruce/starry solomonseal | CWC511 | GF | 90 | 972 | H | R6 E TP-004-88 p. 107 |
| 116 = ABGR/LIBO2  Grand fir/twinflower | CWF321 | GF | 83 | 709 | H | R6 E TP-004-88 p. 87 |
| 117 = ABGR/ARCO  Grand fir/heartleaf arnica | CWF444 | GF | 72 | 785 | C | PNW-GTR-359  p. 102 |
| 118 = ABGR/TRLA2  Grand fir/starflower | CWF521 | GF | 91 | 810 | C | R6 E TP-004-88 p. 83 |
| 119 = ABGR/ACTR  Grand fir/vanillaleaf | CWF522 | GF | 100 | 710 | C | R6 E TP-004-88 p. 95 |
| 120 = ABGR/POPU  Grand fir/skunk-leaved polemonium | CWF523 | GF | 90 | 955 | H | R6 E TP-004-88 p. 103 |
| 121 = ABGR/ACTR-WEN  Grand fir/vanilla leaf (Wenatchee) | CWF524 | GF | 86 | 963 | H | PNW-GTR-359  p. 100 |
| 122 = ABGR/CAGE  Grand fir/elk sedge | CWG121 | GF | 104 | 712 | H | R6 E TP-004-88 p. 71 |
| 123 = ABGR/CAGE-GP  Grand fir/elk sedge (Gifford Pinchot) | CWG122 | GF | 100 | 810 | C | R6 E TP-006-88 p. 53 |
| 124 = ABGR/CARU  Grand fir/pinegrass | CWG123 | GF | 112 | 1769 | H | R6 E TP-006-88 p. 49 |
| 125 = ABGR/CARU-WEN  Grand fir/pinegrass (Wenatchee) | CWG124 | GF | 85 | 635 | C | PNW-GTR-359  p. 110 |
| 126 = ABGR/CARU-LUPIN  Grand fir/pinegrass-lupine | CWG125 | DF | 58 | 750 | C | PNW-GTR-359  p. 112 |
| 127 = ABGR/VAME/CLUN-COL  Grand fir/big huckleberry/queencup beadlily (Colv) | CWS214 | GF | 86 | 996 | H | PNW-GTR-360  p. 110 |
| 128 = ABGR/VAME/LIBO2  Grand fir/big huckleberry/twinflower | CWS221 | GF | 100 | 776 | H | R6 E TP-006-88 p. 85 |
| 129 = ABGR/VAME/CLUN  Grand fir/big huckleberry/queencup beadlily | CWS222 | GF | 103 | 745 | C | R6 E TP-006-88 p. 89 |
| 130 = ABGR/RUPA/DIHO  Grand fir/thimbleberry/fairy bells | CWS223 | GF | 108 | 455 | C | R6 E TP-006-88 p. 81 |
| 131 = ABGR/BENE/ACTR  Grand fir/dwarf Oregon grape/vanillaleaf | CWS224 | DF | 69 | 650 | C | R6 E TP-006-88 p. 73 |
| 132 = ABGR/BENE  Grand fir/Cascade Oregon grape | CWS225 | GF | 77 | 845 | C | PNW-GTR-359  p. 106 |
| 133 = ABGR/BENE/CARU-WEN  Grand fir/Cascade Oregon grape/pinegrass-Wenatchee | CWS226 | GF | 85 | 745 | C | PNW-GTR-359  p. 108 |
| 134 = ABGR/SYMPH  Grand fir/snowberry | CWS331 | GF | 90 | 695 | C | R6 E TP-004-88 p. 79 |
| 135 = ABGR/SYMO/ACTR  Grand fir/creeping snowberry/vanillaleaf | CWS332 | GF | 108 | 870 | C | R6 E TP-006-88 p. 65 |
| 136 = ABGR/SPEBL/PTAQ  Grand fir/shiny-leaf spirea/bracken fern | CWS335 | GF | 74 | 655 | C | PNW-GTR-359  p. 116 |
| 137 = ABGR/SYAL/CARU  Grand fir/common snowberry/pinegrass | CWS336 | GF | 76 | 580 | C | PNW-GTR-359  p. 118 |
| 138 = ABGR/SYOR  Grand fir/mountain snowberry | CWS337 | DF | 70 | 360 | C | PNW-GTR-359  p. 120 |
| 139 = ABGR/ARNE  Grand fir/pinemat manzanita | CWS338 | DF | 49 | 575 | C | PNW-GTR-359  p. 104 |
| 140 = ABGR/PHMA  Grand fir/ninebark | CWS421 | DF | 79 | 575 | C | PNW-GTR-360  p. 100 |
| 141 = ABGR/ACGLD/CLUN  Grand fir/Douglas maple/queencup beadlilly | CWS422 | GF | 73 | 1259 | H | PNW-GTR-360  p. 95 |
| 142 = ABGR/HODI  Grand fir/oceanspray | CWS531 | GF | 95 | 860 | C | R6 E TP-004-88 p. 75 |
| 143 = ABGR/ACCI/ACTR  Grand fir/vine maple/vanillaleaf | CWS532 | GF | 98 | 780 | C | R6 E TP-004-88 p. 91 |
| 144 = ABGR/CACH  Grand fir/chinkapin | CWS533 | DF | 57 | 690 | C | R6 E TP-004-88 p. 99 |
| 145 = ABGR/HODI-GP  Grand fir/oceanspray (Gifford Pinchot) | CWS534 | GF | 104 | 585 | C | R6 E TP-006-88 p. 61 |
| 146 = ABGR/ACCI-BEAQ/TRLA2  Grand fir/vine maple-tall Oregongrape/starflower | CWS535 | GF | 116 | 520 | C | R6 E TP-006-88 p. 57 |
| 147 = ABGR/COCO2/ACTR  Grand fir/California hazel/vanillaleaf | CWS536 | GF | 116 | 1377 | H | R6 E TP-006-88 p. 69 |
| 148 = ABGR/CONU/ACTR  Grand fir/pacific dogwood/vanillaleaf | CWS537 | DF | 64 | 650 | C | R6 E TP-006-88 p. 77 |
| 149 = ABGR/ACCI-WEN  Grand fir/vine maple (Wenatchee) | CWS551 | GF | 109 | 740 | C | PNW-GTR-359  p. 94 |
| 150 = ABGR/ACCI-CHUM  Grand fir/vine maple-western prince's pine | CWS552 | GF | 100 | 695 | C | PNW-GTR-359  p. 96 |
| 151 = ABGR/ACCI/CLUN  Grand fir/vine maple/queencup beadlily | CWS553 | GF | 104 | 1090 | H | PNW-GTR-359  p. 98 |
| 152 = ABGR/HODI/CARU  Grand fir/ocean-spray/pinegrass | CWS554 | DF | 70 | 545 | C | PNW-GTR-359  p. 114 |
| 153 = ABGR/VACA  Grand fir/dwarf huckleberry | CWS821 | DF | 74 | 560 | C | PNW-GTR-360  p. 105 |
| 154 = POTR/CARU  Quaking aspen/pinegrass | HQG111 | LP | 84 | 522 | H | R6 E 132b-83  p. 75 |
| 155 = POTR/SYAL  Quaking aspen/common snowberry | HQS211 | WL | 68 | 331 | H | R6 E 132b-83  p. 75 |

\*Site index estimates are from GBA analysis. SDI maximums are set by GBA analysis (Source=H) or CVS plot analysis (Source=C).

The U.S. Department of Agriculture (USDA) prohibits discrimination in all its programs and activities on the basis of race, color, national origin, sex, religion, age, disability, political beliefs, sexual orientation, or marital or family status. (Not all prohibited bases apply to all programs.) Persons with disabilities who require alternative means for communication of program information (Braille, large print, audiotape, etc.) should contact USDA’s TARGET Center at (202) 720-2600 (voice and TDD).

To file a complaint of discrimination, write USDA, Director, Office of Civil Rights, Room 326-W, Whitten Building, 1400 Independence Avenue, SW, Washington, DC 20250-9410 or call (202) 720-5964 (voice or TDD). USDA is an equal opportunity provider and employer.