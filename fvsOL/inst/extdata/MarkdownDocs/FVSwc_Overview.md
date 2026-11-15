Westside Cascades (WC) Variant Overview of the Forest Vegetation Simulator

March 2026

**![](data:image/jpeg;base64...)**

Mount Jefferson

(Arnie Browning, BIA)

Westside Cascades (WC) Variant Overview of the Forest Vegetation Simulator

# Authors and Contributors:

The FVS staff has maintained model documentation for this variant in the form of a variant overview since its release in 1992. The original authors were Dennis Donnelly and Ralph Johnson. In 2008, the previous document was replaced with this updated variant overview. Gary Dixon, Christopher Dixon, Robert Havis, Chad Keyser, Stephanie Rebain, Erin Smith-Mateja, and Don Vandendriesche were involved with this update. Erin Smith-Mateja cross-checked information contained in this variant overview with the FVS source code.

FVS Staff. 2008 (revised March 9, 2026). Westside Cascades (WC) Variant Overview – Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 86p.

Table of Contents

[Authors and Contributors: ii](#_Toc223526595)

[1.0 Introduction 1](#_Toc223526596)

[2.0 Geographic Range 2](#_Toc223526597)

[3.0 Control Variables 3](#_Toc223526598)

[3.1 Location Codes 3](#_Toc223526599)

[3.2 Species Codes 4](#_Toc223526600)

[3.3 Habitat Type, Plant Association, and Ecological Unit Codes 5](#_Toc223526601)

[3.4 Site Index 5](#_Toc223526602)

[3.5 Maximum Density 7](#_Toc223526603)

[4.0 Growth Relationships 9](#_Toc223526604)

[4.1 Height-Diameter Relationships 9](#_Toc223526605)

[4.2 Bark Ratio Relationships 13](#_Toc223526606)

[4.3 Crown Ratio Relationships 14](#_Toc223526607)

[4.3.1 Crown Ratio Dubbing 15](#_Toc223526608)

[4.3.2 Crown Ratio Change 18](#_Toc223526609)

[4.3.3 Crown Ratio for Newly Established Trees 18](#_Toc223526610)

[4.4 Crown Width Relationships 19](#_Toc223526611)

[4.5 Crown Competition Factor 23](#_Toc223526612)

[4.6 Small Tree Growth Relationships 25](#_Toc223526613)

[4.6.1 Small Tree Height Growth 25](#_Toc223526614)

[4.6.2 Small Tree Diameter Growth 28](#_Toc223526615)

[4.7 Large Tree Growth Relationships 30](#_Toc223526616)

[4.7.1 Large Tree Diameter Growth 30](#_Toc223526617)

[4.7.2 Large Tree Height Growth 34](#_Toc223526618)

[5.0 Mortality Model 43](#_Toc223526619)

[6.0 Regeneration 46](#_Toc223526620)

[7.0 Volume 50](#_Toc223526621)

[8.0 Fire and Fuels Extension (FFE-FVS) 63](#_Toc223526622)

[9.0 Insect and Disease Extensions 64](#_Toc223526623)

[10.0 Literature Cited 65](#_Toc223526624)

[11.0 Appendices 71](#_Toc223526625)

[11.1 Appendix A: Distribution of Data Samples 71](#_Toc223526626)

[11.2 Appendix B: Plant Association Codes 78](#_Toc223526627)

Quick Guide to Default Settings

| **Parameter or Attribute** | **Default Setting** | | |
| --- | --- | --- | --- |
| Number of Projection Cycles | 1 (10 if using FVS GUI) | | |
| Projection Cycle Length | 10 years | | |
| Location Code (National Forest) | 618 - Willamette | | |
| Plant Association Code | 52 (CFS551 ABAM/RHAL/XETE) | | |
| Slope | 5 percent | | |
| Aspect | 0 (no meaningful aspect) | | |
| Elevation | 35 (3500 feet) | | |
| Latitude / Longitude | Latitude | | Longitude |
| All location codes | 46 | | 122 |
| Site Species | Plant Association Code specific | | |
| Site Index | Plant Association Code specific | | |
| Maximum Stand Density Index | Plant Association Code specific | | |
| Maximum Basal Area | Based on maximum stand density index for site species | | |
| Volume Equations | National Volume Estimator Library | | |
| Merchantable Cubic Foot Volume Specifications: | | | |
| Minimum DBH / Top Diameter | LP | | All Other |
| 708 – BLM Salem; 709 BLM Eugene;  712 – BLM Coos Bay | 7.0 / 5.0 inches | | 7.0 / 5.0 inches |
| All other location codes | 6.0 / 4.5 inches | | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | | 1.0 foot |
| Merchantable Board Foot Volume Specifications: | | | |
| Minimum DBH / Top Diameter | LP | All Other | |
| 708 – BLM Salem; 709 BLM Eugene;  712 – BLM Coos Bay | 7.0 / 5.0 inches | 7.0 / 5.0 inches | |
| All other location codes | 6.0 / 4.5 inches | 7.0 / 4.5 inches | |
| Stump Height | 1.0 foot | 1.0 foot | |
| Sampling Design: | | | |
| Basal Area Factor | 40 BAF | | |
| Small-Tree Fixed Area Plot | 1/300th Acre | | |
| Breakpoint DBH | 5.0 inches | | |

# 1.0 Introduction

The Forest Vegetation Simulator (FVS) is an individual tree, distance independent growth and yield model with linkable modules called extensions, which simulate various insect and pathogen impacts, fire effects, fuel loading, snag dynamics, and development of understory tree vegetation. FVS can simulate a wide variety of forest types, stand structures, and pure or mixed species stands.

New “variants” of the FVS model are created by imbedding new tree growth, mortality, and volume equations for a particular geographic area into the FVS framework. Geographic variants of FVS have been developed for most of the forested lands in the United States.

The Westside Cascades (WC) variant was developed in 1992 and includes the western slopes of the Cascade Mountains from the Canadian border south through Washington and Oregon to the area just north of Interstate 5 from Grants Pass to Medford, Oregon. Data used to build the WC variant came from Forest Service, U.S. Department of Agriculture forest inventories and silviculture stand examinations. In 2013, new small tree growth equations from Gould and Harrington (2012) were embedded in the WC variant. Relationships for redwood were incorporated in 2021.

To fully understand how to use this variant, users should also consult the following publication:

* Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002)

This publication may be downloaded from the Forest Management Service Center (FMSC), Forest Service website. Other FVS publications may be needed if one is using an extension that simulates the effects of fire, insects, or diseases.

# 2.0 Geographic Range

The WC variant was fit to data representing forest types on the western slopes of the Cascade Mountains from the Canadian border south through Washington and Oregon to the area just north of Interstate 5 from Grants Pass to Medford, Oregon. Data used in initial model development came from USDA Forest Service forest inventories and silviculture stand examinations. Distribution of data samples for species fit from this data are shown in Appendix A.

The WC variant covers inland forest areas of the Pacific Northwest states of Washington and Oregon. The suggested geographic range of use for the WC variant is shown in figure 2.0.1.

**![Picture of the suggested range of the WC variant.](data:image/jpeg;base64...)**

**Figure 2.0.1 Suggested geographic range of use for the WC variant.**

# 3.0 Control Variables

FVS users need to specify certain variables used by the PN variant to control a simulation. These are entered in parameter fields on various FVS keywords available in the FVS interface or they are read from an FVS input database using the Database Extension.

## 3.1 Location Codes

The location code is a 3- or 4-digit code where, in general, the first digit of the code represents the Forest Service Region Number, and the last two digits represent the Forest Number within that region. In some cases, a location code beginning with a “7” or “8” is used to indicate an administrative boundary that doesn’t use a Forest Service Region number (for example, other federal agencies, state agencies, or other lands).

If the location code is missing or incorrect in the WC variant, a default forest code of 618 (Willamette National Forest) will be used. Location codes recognized in the WC variant are shown in tables 3.1.1 and 3.1.2.

**Table 3.1.1 Location codes used in the WC variant.**

|  |  |
| --- | --- |
| **Location Code** | **Location** |
| 603 | Gifford Pinchot National Forest |
| 605 | Mt. Baker - Snoqualmie National Forest |
| 606 | Mount Hood National Forest |
| 610 | Rogue River National Forest |
| 615 | Umpqua National Forest |
| 618 | Willamette National Forest |
| 708 | BLM Salem ADU |
| 709 | BLM Eugene ADU |
| 710 | BLM Roseburg ADU |
| 711 | BLM Medford ADU |
| 613 | Mt. Baker - Snoqualmie National Forest (mapped to 605) |

**Table 3.1.2 Bureau of Indian Affairs reservation codes used in the WC variant.**

| **Location Code** | **Location** |
| --- | --- |
| 8124 | Sauk-Suiattle Reservation (mapped to 605) |
| 8130 | Yakama Nation Reservation (mapped to 603) |

## 3.2 Species Codes

The WC variant recognizes 36 species, plus one other composite species category. You may use FVS species codes, Forest Inventory and Analysis (FIA) species codes, or USDA Natural Resources Conservation Service PLANTS symbols to represent these species in FVS input data. Any valid western species code identifying species not recognized by the variant will be mapped to a similar species in the variant. The species mapping crosswalk is available on the FVS website variant documentation webpage. Any non-valid species code will default to the “other hardwood” category.

Either the FVS sequence number or species code must be used to specify a species in FVS keywords and Event Monitor functions. FIA codes or PLANTS symbols are only recognized during data input and may not be used in FVS keywords. Table 3.2.1 shows the complete list of species codes recognized by the WC variant.

When entering tree data, users should substitute diameter at root collar (DRC) for diameter at breast height (DBH) for woodland species (western juniper).

**Table 3.2.1 Species codes used in the WC variant.**

| **Species Number** | **Species Code** | **FIA Code** | **PLANTS Symbol** | **Scientific Name1** | **Common Name1** |
| --- | --- | --- | --- | --- | --- |
| 1 | SF | 011 | ABAM | *Abies amabilis* | Pacific silver fir |
| 2 | WF | 015 | ABCO | *Abies concolor* | white fir |
| 3 | GF | 017 | ABGR | *Abies grandis* | grand fir |
| 4 | AF | 019 | ABLA | *Abies lasiocarpa* | subalpine fir |
| 5 | RF | 020 | ABMA | *Abies magnifica* | California red fir |
| 7 | NF | 022 | ABPR | *Abies procera* | noble fir |
| 8 | YC | 042 | CANO9 | *Callitropsis nootkatensis* | Alaska cedar |
| 9 | IC | 081 | CADE27 | *Calocedrus decurrens* | incense cedar |
| 10 | ES | 093 | PIEN | *Picea engelmannii* | Engelmann spruce |
| 11 | LP | 108 | PICO | *Pinus contorta* | lodgepole pine |
| 12 | JP | 116 | PIJE | *Pinus jeffreyi* | Jeffrey pine |
| 13 | SP | 117 | PILA | *Pinus lambertiana* | sugar pine |
| 14 | WP | 119 | PIMO3 | *Pinus monticola* | western white pine |
| 15 | PP | 122 | PIPO | *Pinus ponderosa* | ponderosa pine |
| 16 | DF | 202 | PSME | *Pseudotsuga menziesii* | Douglas-fir |
| 17 | RW | 211 | SESE3 | *Sequoia sempervirens* | redwood |
| 18 | RC | 242 | THPL | *Thuja plicata* | western redcedar |
| 19 | WH | 263 | TSHE | *Tsuga heterophylla* | western hemlock |
| 20 | MH | 264 | TSME | *Tsuga mertensiana* | mountain hemlock |
| 21 | BM | 312 | ACMA3 | *Acer macrophyllum* | bigleaf maple |
| 22 | RA | 351 | ALRU2 | *Alnus rubra* | red alder |
| 23 | WA | 352 | ALRH2 | *Alnus rhombifolia* | white alder |
| 24 | PB | 375 | BEPA | *Betula papyrifera* | paper birch |
| 25 | GC | 431 | CHCHC4 | *Chrysolepis chrysophylla* var. *chrysophylla* | giant chinquapin |
| 26 | AS | 746 | POTR5 | *Populus tremuloides* | quaking aspen |
| 27 | CW | 747 | POBAT | *Populus balsamifera* ssp. *trichocarpa* | black cottonwood |
| 28 | WO | 815 | QUGA4 | *Quercus garryana* | Oregon white oak |
| 29 | WJ | 064 | JUOC | *Juniperus occidentalis* | western juniper |
| 30 | LL | 072 | LALY | *Larix lyallii* | subalpine larch |
| 31 | WB | 101 | PIAL | *Pinus albicaulis* | whitebark pine |
| 32 | KP | 103 | PIAT | *Pinus attenuata* | knobcone pine |
| 33 | PY | 231 | TABR2 | *Taxus brevifolia* | Pacific yew |
| 34 | DG | 492 | CONU4 | *Cornus nuttallii* | Pacific dogwood |
| 35 | HT | 500 | CRATA | *Crataegus* | hawthorn |
| 36 | CH | 768 | PREM | *Prunus emarginata* | bitter cherry |
| 37 | WI | 920 | SALIX | *Salix* | willow |
| 39 | OT | 999 | 2TREE |  | other2 |

1Set based on the USDA Forest Service NRM TAXA lists and the USDA Plants database.

2Other categories use FIA codes and NRM TAXA codes that best match the other category.

## 3.3 Habitat Type, Plant Association, and Ecological Unit Codes

Plant association codes recognized in the WC variant are shown in Appendix B. If an incorrect plant association code is entered or no code is entered FVS will use the default plant association code, which is 52 (CFS551 ABAM/RHAL/XETE). Plant association codes are used to set default site information such as site species, site indices, and maximum stand density indices as well as predicting snag dynamics in FFE-FVS. The site species, site index and maximum stand density indices can be reset via FVS keywords. Users may enter the plant association code or the plant association FVS sequence number on the STDINFO keyword, when entering stand information from a database, or when using the SETSITE keyword without the PARMS option. If using the PARMS option with the SETSITE keyword, users must use the FVS sequence number for the plant association.

## 3.4 Site Index

Site index is used in some of the growth equations for the WC variant. Users should always use the same site curves that FVS uses, which are shown in table 3.4.1. If site index is available, a single site index for the whole stand can be entered, a site index for each individual species in the stand can be entered, or a combination of these can be entered.

**Table 3.4.1 Site index reference curves for species in the WC variant.**

| **Species Code** | **Reference** | **BHA or TTA1** | **Base Age** |
| --- | --- | --- | --- |
| SF | Hoyer and Herman (1989) | BHA | 100 |
| GF, WF | Cochran (1979) | BHA | 50 |
| AF, ES | Alexander (1967) | BHA | 100 |
| RF | Dolph (1991) | BHA | 50 |
| NF | Herman et al. (1978) | BHA | 100 |
| LP | Dahms (1964) | TTA | 50 |
| WP, SP | Curtis et al. (1990) | BHA | 100 |
| PP, IC, JP | Barrett (1978) | BHA | 100 |
| WH | Wiley (1978) | BHA | 50 |
| MH | Means et al. (1986)2 | BHA | 100 |
| RA | Harrington and Curtis (1986) | TTA | 20 |
| LL | Cochran (1985) | BHA | 50 |
| Other3 | Curtis et al. (1974) | BHA | 100 |
| WO | King (1966) | BHA | 50 |
| RW4 | Krumland and Eng (2005) | BHA | 50 |

1 Equation is based on total tree age (TTA) or breast height age (BHA)

2 The source equation is in metric units; site index values for Mountain hemlock are assumed to be in meters.

3 Other includes all the following species: Douglas-fir, Alaska cedar, bigleaf maple, white alder, paper birch, giant chinquapin, quaking aspen, black cottonwood, western juniper, whitebark pine, knobcone pine, Pacific yew, Pacific dogwood, hawthorn bitter cherry, western redcedar, willow.

4 Equation form is presented on page 34 and coefficients are provided on page 68

If site index is missing or incorrect, the default site species and site index are determined by plant association codes found in Appendix B. If the plant association code is missing or incorrect, the site species is set to Douglas-fir with a default site index set to 73.

Site indices for species not assigned a site index are determined based on the site index of the site species (height at base age) with an adjustment for the reference age differences between the site species and the target species. For some species that use the Curtis et al. (1974) equation, the site index estimate is adjusted by multiplying the site index estimate by an adjustment factor in table 3.4.2, if the species is not listed as the site species. Similarly, for Oregon white oak, an adjustment is made from the site species using the maximum height equation {3.4.1} from Gould and Harrington (2009).

**Table 3.4.2 Site index adjustment factors for hardwood species using Curtis et al equations in the WC variant.**

| **Species** | **Base Age** |
| --- | --- |
| BM | 0.75 |
| WA | 0.65 |
| PB | 1.50 |
| GC | 0.70 |
| AS | 0.75 |
| CW | 0.85 |
| WJ | 0.23 |
| WB | 0.70 |
| PY | 0.25 |
| DG | 0.60 |
| HT | 0.25 |
| CH | 0.50 |
| WI | 0.50 |

{3.4.1} SIwo= 114.24569[1-exp(-.02659\*SI*site*)]^2.25993

where:

SIwo site index estimate of Oregon white oak

SI*site* Site Index of site species

## 3.5 Maximum Density

Maximum stand density index (SDI) and maximum basal area (BA) are important variables in determining density related mortality and crown ratio change. Maximum basal area is a stand level metric that can be set using the BAMAX or SETSITE keywords. If not set by the user, a default value is calculated from maximum stand SDI each projection cycle. Maximum stand density index can be set for each species using the SDIMAX or SETSITE keywords. If not set by the user, a default value is assigned as discussed below.

The default maximum SDI is set based on a user-specified, or default, plant association code or a user specified basal area maximum. If a user specified basal area maximum is present, the maximum SDI for all species is computed using equation {3.5.1}; otherwise, the SDI maximum for all species is assigned from the SDI maximum associated with the site species for the plant association code shown in Appendix B. SDI maximums were set based on growth basal area (GBA) analysis developed by Hall (1983) or an analysis of Current Vegetation Survey (CVS) plots in USFS Region 6 by Crookston (2008). Some SDI maximums associated with plant associations are unreasonably large, so SDI maximums are capped based on location code, see table 3.5.1. Maximum stand density index at the stand level is a weighted average, by basal area, of the individual species SDI maximums.

{3.5.1} *SDIMAXi* = *BAMAX* / (0.5454154 \* *SDIU)*

where:

*SDIMAXi* is species-specific SDI maximum

*BAMAX* is the user-specified stand basal area maximum

*SDIU* is theproportion of theoretical maximum density at which the stand reaches actual maximum density (default 0.85, changed with the SDIMAX keyword)

**Table 3.5.1 Stand density index caps by location code in the WC variant.**

| **Location Code** | **Max SDI** |
| --- | --- |
| 603 | 950 |
| 605 | 950 |
| 606 | 900 |
| 610 | 850 |
| 613 | 950 |
| 615 | 825 |
| 618 | 870 |
| 708 | 885 |
| 709 | 870 |
| 710 | 825 |
| 711 | 850 |

# 4.0 Growth Relationships

This chapter describes the functional relationships used to fill in missing tree data and calculate incremental growth. In FVS, trees are grown in either the small tree sub-model or the large tree sub-model depending on the diameter.

## 4.1 Height-Diameter Relationships

Height-diameter relationships in FVS are primarily used to estimate tree heights missing in the input data, and occasionally to estimate diameter growth on trees smaller than a given threshold diameter. In the WC variant, FVS will dub in heights by one of two methods. By default, the WC variant will use the Curtis-Arney functional form as shown in equation {4.1.1} (Curtis 1967, Arney 1985). If the input data contains at least three measured heights for a species, then FVS can switch to a logistic height-diameter equation {4.1.2} (Wykoff, et.al 1982) or {4.1.3} that may be calibrated to the input data. However, the default in the WC variant is to use equation {4.1.1}.

FVS will not automatically use equations {4.1.2} and {4.1.3} even if you have enough height values in the input data. To override this default, the user must use the NOHTDREG keyword and change field 2 to a 1. Coefficients for equation {4.1.1} are shown in table 4.1.1a and 4.1.1b sorted by species and location code. Coefficients for equations {4.1.2} and {4.1.3} are given in table 4.1.2 by species.

{4.1.1} Curtis-Arney functional form

DBH <u>></u> 3.0”: HT = 4.5 + P2 \* exp[-P3 \* DBH^P4]

DBH < 3.0”: HT = [(4.5 + P2 \* exp[-P3 \* 3.0^P4] – 4.51) \* (DBH – 0.3) / 2.7] + 4.51

{4.1.2} Wykoff functional form

DBH <u>></u> 5.0”: HT = 4.5 + exp(B1 + B2 / (DBH + 1.0))

{4.1.3} Other functional form

Species: 1-14, 20, 30 or 33

DBH < 5.0”: HT = exp(H1 + (H2 \* DBH) + (H3\* CR )+ (H4 \* DBH^2) + H5)

Species: 16, 18, 19, 21-29, 31, 32, 34-39

DBH < 5.0”: HT = H1 + (H2 \* DBH) + (H3\* CR ) + (H4 \* DBH^2) + H5

Species: 15

DBH < 4.0”: HT = 8.31485 + 3.03659 \* DBH - 0.59200 \* CRC

where:

HT is tree height

DBH is tree diameter at breast height

CR is crown ratio expressed in percent

CRC is crown ratio code (CRC=6)

B1 - B2 are species-specific coefficients shown in table 4.1.1a and 4.1.1b

P2 - P4 are species and location specific coefficients shown in table 4.1.2

H1 - H5 are species-specific coefficients shown in table 4.1.1a and 4.1.1b

**Table 4.1.1a Coefficients for equation {4.1.1} in the WC variant in the 603, 605, 606, and 708 locations.**

| **Species Code** | **603 – Gifford Pinchot** | | | **605 – Mount Baker/Snoqualmine** | | | **606 – Mount Hood, 708 – BLM Salem** | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **P**2 | **P**3 | **P**4 | **P**2 | **P**3 | **P**4 | **P**2 | **P**3 | **P**4 |
| SF | 407.996 | 6.783 | -0.523 | 476.634 | 6.484 | -0.469 | 223.3492 | 6.3964 | -0.6566 |
| WF | 475.170 | 6.247 | -0.481 | 475.170 | 6.247 | -0.481 | 475.1698 | 6.2472 | -0.4812 |
| GF | 686.483 | 6.539 | -0.374 | 727.811 | 5.465 | -0.344 | 432.2186 | 6.2941 | -0.5028 |
| AF | 216.400 | 6.170 | -0.602 | 495.784 | 6.530 | -0.411 | 290.5142 | 6.414 | -0.472 |
| RF | 375.382 | 6.088 | -0.472 | 375.382 | 6.088 | -0.472 | 375.382 | 6.088 | -0.472 |
| NF | 561.959 | 6.551 | -0.446 | 2067.859 | 6.849 | -0.259 | 247.7348 | 6.183 | -0.6335 |
| YC | 505.271 | 6.474 | -0.432 | 181.454 | 6.579 | -0.657 | 255.4638 | 5.5577 | -0.6054 |
| IC | 4691.634 | 7.467 | -0.199 | 4691.634 | 7.467 | -0.199 | 4691.634 | 7.4671 | -0.1989 |
| ES | 27357.521 | 8.721 | -0.141 | 211.796 | 6.702 | -0.674 | 206.3211 | 9.1227 | -0.8281 |
| LP | 133.660 | 4.846 | -0.697 | 121.139 | 12.662 | -1.298 | 139.7159 | 4.0091 | -0.708 |
| JP | 1031.520 | 7.662 | -0.360 | 1031.520 | 7.662 | -0.360 | 1031.52 | 7.6616 | -0.3599 |
| SP | 702.186 | 5.703 | -0.380 | 702.186 | 5.703 | -0.380 | 702.1856 | 5.7025 | -0.3798 |
| WP | 3261.831 | 7.372 | -0.252 | 433.781 | 6.332 | -0.499 | 1333.818 | 6.6219 | -0.312 |
| PP | 1548.415 | 6.550 | -0.270 | 1181.724 | 6.698 | -0.315 | 1181.724 | 6.6981 | -0.3151 |
| DF | 452.399 | 5.969 | -0.491 | 536.737 | 5.580 | -0.410 | 949.1046 | 5.8482 | -0.3251 |
| RW | 595.1068 | 5.8103 | -0.3821 | 595.1068 | 5.8103 | -0.3821 | 595.1068 | 5.8103 | -0.3821 |
| RC | 531.007 | 5.964 | -0.408 | 422.970 | 5.734 | -0.427 | 1560.685 | 6.2328 | -0.2541 |
| WH | 465.081 | 6.477 | -0.494 | 319.374 | 6.396 | -0.570 | 317.8257 | 6.8287 | -0.6034 |
| MH | 368.372 | 6.827 | -0.507 | 547.949 | 7.137 | -0.422 | 2478.099 | 7.0762 | -0.2456 |
| BM | 179.071 | 3.624 | -0.573 | 293.111 | 3.734 | -0.346 | 76.517 | 2.2107 | -0.6365 |
| RA | 182.305 | 3.668 | -0.474 | 1089.505 | 5.200 | -0.257 | 484.4591 | 4.5713 | -0.3643 |
| WA | 133.797 | 6.405 | -0.833 | 133.797 | 6.405 | -0.833 | 133.7965 | 6.405 | -0.8329 |
| PB | 1709.723 | 5.889 | -0.229 | 1709.723 | 5.889 | -0.229 | 1709.723 | 5.8887 | -0.2286 |
| GC | 10707.391 | 8.467 | -0.186 | 10707.391 | 8.467 | -0.186 | 10707.39 | 8.467 | -0.1863 |
| AS | 1709.723 | 5.889 | -0.229 | 1709.723 | 5.889 | -0.229 | 1709.723 | 5.8887 | -0.2286 |
| CW | 178.644 | 4.585 | -0.675 | 290.333 | 5.280 | -0.585 | 178.6441 | 4.5852 | -0.6746 |
| WO | 55.000 | 5.500 | -0.950 | 59.421 | 5.318 | -1.037 | 59.4214 | 5.3178 | -1.0367 |
| WJ | 503.662 | 4.954 | -0.209 | 503.662 | 4.954 | -0.209 | 503.6619 | 4.9544 | -0.2085 |
| LL | 503.662 | 4.954 | -0.209 | 503.662 | 4.954 | -0.209 | 503.6619 | 4.9544 | -0.2085 |
| WB | 89.554 | 4.228 | -0.644 | 89.554 | 4.228 | -0.644 | 73.9147 | 3.963 | -0.8277 |
| KP | 34749.474 | 9.129 | -0.142 | 34749.474 | 9.129 | -0.142 | 34749.47 | 9.1287 | -0.1417 |
| PY | 1221.918 | 5.817 | -0.210 | 175.865 | 5.089 | -0.462 | 77.2207 | 3.5181 | -0.5894 |
| DG | 444.562 | 3.921 | -0.240 | 444.562 | 3.921 | -0.240 | 403.3221 | 4.3271 | -0.2422 |
| HT | 55.000 | 5.500 | -0.950 | 55.000 | 5.500 | -0.950 | 55 | 5.5 | -0.95 |
| CH | 73.335 | 2.655 | -1.246 | 73.335 | 2.655 | -1.246 | 73.3348 | 2.6548 | -1.246 |
| WI | 149.586 | 2.423 | -0.180 | 149.586 | 2.423 | -0.180 | 149.5861 | 2.4231 | -0.18 |
| OT | 1709.723 | 5.889 | -0.229 | 1709.723 | 5.889 | -0.229 | 1709.723 | 5.8887 | -0.2286 |

**Table 4.1.1b Coefficients for equation {4.1.1} in the WC variant in the 610, 711, 615, 710, 618, and 709 locations.**

| **Species Code** | **610 – Rogue River, 711 – BLM Medford ADU** | | | **615 – Umpqua, 710 – BLM Roseburg** | | | **618 – Williamette, 709 – BLM Eugene** | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **P**2 | **P**3 | **P**4 | **P**2 | **P**3 | **P**4 | **P**2 | **P**3 | **P**4 |
| SF | 380.251 | 7.306 | -0.576 | 380.251 | 7.306 | -0.576 | 237.919 | 7.795 | -0.726 |
| WF | 253.925 | 6.614 | -0.591 | 475.170 | 6.247 | -0.481 | 475.170 | 6.247 | -0.481 |
| GF | 432.219 | 6.294 | -0.503 | 432.219 | 6.294 | -0.503 | 432.219 | 6.294 | -0.503 |
| AF | 5185.988 | 8.758 | -0.227 | 133.869 | 6.780 | -0.738 | 133.869 | 6.780 | -0.738 |
| RF | 375.382 | 6.088 | -0.472 | 375.382 | 6.088 | -0.472 | 375.382 | 6.088 | -0.472 |
| NF | 483.375 | 7.244 | -0.511 | 483.375 | 7.244 | -0.511 | 483.375 | 7.244 | -0.511 |
| YC | 97.777 | 8.820 | -1.053 | 97.777 | 8.820 | -1.053 | 97.777 | 8.820 | -1.053 |
| IC | 2245.574 | 7.199 | -0.240 | 1899.321 | 6.942 | -0.255 | 4691.634 | 7.467 | -0.199 |
| ES | 155.000 | 9.123 | -0.828 | 206.321 | 9.123 | -0.828 | 206.321 | 9.123 | -0.828 |
| LP | 115.892 | 5.000 | -0.901 | 127.571 | 6.346 | -0.864 | 105.445 | 7.969 | -1.092 |
| JP | 1000.000 | 6.550 | -0.270 | 1031.520 | 7.662 | -0.360 | 1031.520 | 7.662 | -0.360 |
| SP | 1631.376 | 6.479 | -0.257 | 544.372 | 6.880 | -0.464 | 702.186 | 5.703 | -0.380 |
| WP | 1143.625 | 6.191 | -0.310 | 433.781 | 6.332 | -0.499 | 514.158 | 6.300 | -0.465 |
| PP | 1548.415 | 6.550 | -0.270 | 1181.724 | 6.698 | -0.315 | 1181.724 | 6.698 | -0.315 |
| DF | 540.941 | 5.680 | -0.404 | 316.128 | 5.966 | -0.575 | 439.120 | 5.818 | -0.485 |
| RW | 595.1068 | 5.8103 | -0.3821 | 595.1068 | 5.8103 | -0.3821 | 595.1068 | 5.8103 | -0.3821 |
| RC | 617.762 | 5.521 | -0.351 | 617.762 | 5.521 | -0.351 | 1012.127 | 6.096 | -0.308 |
| WH | 263.127 | 6.936 | -0.662 | 608.610 | 6.088 | -0.416 | 395.498 | 6.422 | -0.532 |
| MH | 233.699 | 6.906 | -0.617 | 393.981 | 6.393 | -0.475 | 192.961 | 7.388 | -0.723 |
| BM | 143.999 | 3.512 | -0.551 | 106.030 | 3.882 | -0.783 | 160.217 | 3.304 | -0.530 |
| RA | 88.184 | 2.840 | -0.734 | 88.184 | 2.840 | -0.734 | 10099.721 | 7.638 | -0.162 |
| WA | 123.211 | 4.125 | -0.555 | 105.129 | 5.134 | -0.789 | 133.797 | 6.405 | -0.833 |
| PB | 1709.723 | 5.889 | -0.229 | 1709.723 | 5.889 | -0.229 | 1709.723 | 5.889 | -0.229 |
| GC | 83.746 | 8.332 | -1.048 | 1076.427 | 6.147 | -0.282 | 10707.391 | 8.467 | -0.186 |
| AS | 1709.723 | 5.889 | -0.229 | 1709.723 | 5.889 | -0.229 | 1709.723 | 5.889 | -0.229 |
| CW | 178.644 | 4.585 | -0.675 | 178.644 | 4.585 | -0.675 | 178.644 | 4.585 | -0.675 |
| WO | 59.421 | 5.318 | -1.037 | 55.000 | 5.500 | -0.950 | 55.000 | 5.500 | -0.950 |
| WJ | 503.662 | 4.954 | -0.209 | 503.662 | 4.954 | -0.209 | 503.662 | 4.954 | -0.209 |
| LL | 503.662 | 4.954 | -0.209 | 503.662 | 4.954 | -0.209 | 503.662 | 4.954 | -0.209 |
| WB | 89.554 | 4.228 | -0.644 | 89.554 | 4.228 | -0.644 | 73.915 | 3.963 | -0.828 |
| KP | 4421.458 | 7.057 | -0.194 | 4421.458 | 7.057 | -0.194 | 34749.474 | 9.129 | -0.142 |
| PY | 127.170 | 4.898 | -0.467 | 139.073 | 5.206 | -0.541 | 139.073 | 5.206 | -0.541 |
| DG | 403.322 | 4.327 | -0.242 | 202.975 | 3.294 | -0.323 | 444.562 | 3.921 | -0.240 |
| HT | 55.000 | 5.500 | -0.950 | 55.000 | 5.500 | -0.950 | 55.000 | 5.500 | -0.950 |
| CH | 73.335 | 2.655 | -1.246 | 73.335 | 2.655 | -1.246 | 73.335 | 2.655 | -1.246 |
| WI | 149.586 | 2.423 | -0.180 | 149.586 | 2.423 | -0.180 | 149.586 | 2.423 | -0.180 |
| OT | 1709.723 | 5.889 | -0.229 | 1709.723 | 5.889 | -0.229 | 1709.723 | 5.889 | -0.229 |

**Table 4.1.2 Coefficients for equations {4.1.2} and {4.1.3} in the WC variant.**

| **Species Code** | **Default B**1 | **B**2 | **H**1 | **H**2 | **H**3 | **H**4 | **H**5 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| SF | 5.288 | -14.147 | 1.3134 | 0.3432 | 0.0366 | 0 | 0 |
| WF | 5.308 | -13.624 | 1.4769 | 0.3579 | 0 | 0 | 0 |
| GF | 5.308 | -13.624 | 1.4769 | 0.3579 | 0 | 0 | 0 |
| AF | 5.313 | -15.321 | 1.4261 | 0.3334 | 0 | 0 | 0 |
| RF | 5.313 | -15.321 | 1.3526 | 0.3335 | 0.0367 | 0 | 0 |
| NF | 5.327 | -15.450 | 1.7100 | 0.2943 | 0 | 0 | 0.1054 |
| YC | 5.143 | -13.497 | 1.5907 | 0.3040 | 0 | 0 | 0 |
| IC | 5.188 | -13.801 | 1.5907 | 0.3040 | 0 | 0 | 0 |
| ES | 5.188 | -13.801 | 1.5907 | 0.3040 | 0 | 0 | 0 |
| LP | 4.865 | -9.305 | 0.9717 | 0.3934 | 0.0339 | 0 | 0.3044 |
| JP | 5.333 | -17.762 | 1.0756 | 0.4369 | 0 | 0 | 0 |
| SP | 5.382 | -15.866 | 0.9717 | 0.3934 | 0.0339 | 0 | 0.3044 |
| WP | 5.382 | -15.866 | 0.9717 | 0.3934 | 0.0339 | 0 | 0.3044 |
| PP | 5.333 | -17.762 | 1.0756 | 0.4369 | 0 | 0 | 0 |
| DF | 5.288 | -14.147 | 7.1391 | 4.2891 | -0.7150 | 0.2750 | 2.0393 |
| RW | 5.3401 | -15.9354 | 1.5907 | 0.3040 | 0 | 0 | 0 |
| RC | 5.271 | -14.996 | 2.3115 | 0.2370 | -0.0556 | 0 | 0.3218 |
| WH | 5.298 | -13.240 | 1.3608 | 0.6151 | 0 | -0.0442 | 0.0829 |
| MH | 5.081 | -13.430 | 1.2278 | 0.4000 | 0 | 0 | 0 |
| BM | 4.700 | -6.326 | 0.0994 | 4.9767 | 0 | 0 | 0 |
| RA | 4.886 | -8.792 | 0.0994 | 4.9767 | 0 | 0 | 0 |
| WA | 5.152 | -13.576 | 0.0994 | 4.9767 | 0 | 0 | 0 |
| PB | 5.152 | -13.576 | 0.0994 | 4.9767 | 0 | 0 | 0 |
| GC | 5.152 | -13.576 | 0.0994 | 4.9767 | 0 | 0 | 0 |
| AS | 5.152 | -13.576 | 0.0994 | 4.9767 | 0 | 0 | 0 |
| CW | 5.152 | -13.576 | 0.0994 | 4.9767 | 0 | 0 | 0 |
| WO | 5.152 | -13.576 | 0.0994 | 4.9767 | 0 | 0 | 0 |
| WJ | 5.152 | -13.576 | 0.0994 | 4.9767 | 0 | 0 | 0 |
| LL | 5.188 | -13.801 | 1.5907 | 0.3040 | 0 | 0 | 0 |
| WB | 5.188 | -13.801 | 1.5907 | 0.3040 | 0 | 0 | 0 |
| KP | 5.188 | -13.801 | 1.5907 | 0.3040 | 0 | 0 | 0 |
| PY | 5.188 | -13.801 | 1.5907 | 0.3040 | 0 | 0 | 0 |
| DG | 5.152 | -13.576 | 0.0994 | 4.9767 | 0 | 0 | 0 |
| HT | 5.152 | -13.576 | 0.0994 | 4.9767 | 0 | 0 | 0 |
| CH | 5.152 | -13.576 | 0.0994 | 4.9767 | 0 | 0 | 0 |
| WI | 5.152 | -13.576 | 0.0994 | 4.9767 | 0 | 0 | 0 |
| OT | 5.152 | -13.576 | 0.0994 | 4.9767 | 0 | 0 | 0 |

## 4.2 Bark Ratio Relationships

Bark ratio estimates are used to convert between diameter outside bark and diameter inside bark in various parts of the model. In the WC variant, bark ratio values are determined using estimates from DIB equations. Equations used in the WC variant are shown in {4.2.1} and {4.2.2}. Coefficients (b1 and b2) and equation reference for each species are shown in table 4.2.1.

{4.2.1} DIB = b1 \* (DBH ^ b2); BRATIO = DIB / DBH

{4.2.2} DIB = b1 + (b2 \* DBH); BRATIO = DIB / DBH

where:

BRATIO is species-specific bark ratio (bounded to 0.80 <u><</u> BRATIO <u><</u> 0.99)

DBH is tree diameter at breast height

DIB is tree diameter inside bark at breast height

b1, b2 are species-specific coefficients shown in table 4.2.1

**Table 4.2.1 Coefficients and equation reference for bark ratio equations in the WC variant.**

| **Species Code** | **b**1 | **b**2 | **Equation Used** | **Equation Source** |
| --- | --- | --- | --- | --- |
| SF | 0.904973 | 1.0 | {4.2.1} | Walters et al (1985) |
| WF | 0.904973 | 1.0 | {4.2.1} | Walters et al (1985) |
| GF | 0.904973 | 1.0 | {4.2.1} | Walters et al (1985) |
| AF | 0.904973 | 1.0 | {4.2.1} | Walters et al (1985) |
| RF | 0.904973 | 1.0 | {4.2.1} | Walters et al (1985) |
| NF | 0.904973 | 1.0 | {4.2.1} | Walters et al (1985) |
| YC | 0.837291 | 1.0 | {4.2.1} | Walters et al (1985) |
| IC | 0.837291 | 1.0 | {4.2.1} | Walters et al (1985) |
| ES | 0.90 | 1.0 | {4.2.1} | Wykoff et al (1982) |
| LP | 0.90 | 1.0 | {4.2.1} | Wykoff et al (1982) |
| JP | 0.859045 | 1.0 | {4.2.1} | Walters et al (1985) |
| SP | 0.859045 | 1.0 | {4.2.1} | Walters et al (1985) |
| WP | 0.859045 | 1.0 | {4.2.1} | Walters et al (1985) |
| PP | 0.809427 | 1.016866 | {4.2.1} | Walters et al (1985) |
| DF | 0.903563 | 0.989388 | {4.2.1} | Walters et al (1985) |
| RW | 0.7012 | 1.04862 | {4.2.1} | Castle 2021 |
| RC | 0.949670 | 1.0 | {4.2.1} | Wykoff et al (1982) |
| WH | 0.933710 | 1.0 | {4.2.1} | Wykoff et al (1982) |
| MH | 0.949670 | 1.0 | {4.2.1} | Wykoff et al (1982) |
| BM | 0.08360 | 0.94782 | {4.2.2} | Pillsbury and Kirkley (1984) |
| RA | 0.075256 | 0.949670 | {4.2.2} | \*Pillsbury and Kirkley (1984) |
| WA | 0.075256 | 0.949670 | {4.2.2} | \*Pillsbury and Kirkley (1984) |
| PB | 0.08360 | 0.94782 | {4.2.2} | Pillsbury and Kirkley |
| GC | 0.15565 | 0.90182 | {4.2.2} | Pillsbury and Kirkley |
| AS | 0.075256 | 0.949670 | {4.2.2} | \*Pillsbury and Kirkley (1984) |
| CW | 0.075256 | 0.949670 | {4.2.2} | \*Pillsbury and Kirkley (1984) |
| WO | 0.8558 | 1.0213 | {4.2.1} | Gould & Harrington (2009) |
| WJ | 0.949670 | 1.0 | {4.2.1} | Wykoff et al (1982) |
| LL | 0.90 | 1.0 | {4.2.1} | Wykoff et al (1982) |
| WB | 0.933290 | 1.0 | {4.2.1} | \*\*Wykoff (1982) |
| KP | 0.933290 | 1.0 | {4.2.1} | \*\*Wykoff (1982) |
| PY | 0.933290 | 1.0 | {4.2.1} | \*\*Wykoff (1982) |
| DG | 0.075256 | 0.949670 | {4.2.2} | \*Pillsbury and Kirkley (1984) |
| HT | 0.075256 | 0.949670 | {4.2.2} | \*Pillsbury and Kirkley (1984) |
| CH | 0.075256 | 0.949670 | {4.2.2} | \*Pillsbury and Kirkley (1984) |
| WI | 0.075256 | 0.949670 | {4.2.2} | \*Pillsbury and Kirkley (1984) |
| OT | 0.90 | 1.0 | {4.2.1} | Wykoff et al (1982) |

\* Equation was developed from averaging 5 hardwood species from Pillsbury and Kirkley (1984)
\*\* Equation was developed from averaging 5 conifer species from Wykoff (1982)

## 4.3 Crown Ratio Relationships

Crown ratio equations are used for three purposes in FVS: (1) to estimate tree crown ratios missing from the input data for both live and dead trees; (2) to estimate change in crown ratio from cycle to cycle for live trees; and (3) to estimate initial crown ratios for regenerating trees established during a simulation.

### 4.3.1 Crown Ratio Dubbing

In the WC variant, crown ratios missing in the input data for live and dead trees are predicted using different equations depending on tree size. For all species except redwood, live trees less than 1.0” in diameter and dead trees of all sizes use equations {4.3.1.1} and {4.3.1.2} to compute crown ratio. Equation coefficients are found in table 4.3.1.1.

{4.3.1.1} X = R1 + R2 \* HT + R3 \* BA + *N(0,SD)*

{4.3.1.2} *CR* = ((*X* - 1) \* 10 + 1) / 100

where:

CR is crown ratio expressed as a proportion (bounded to 0.05 <u><</u> *CR* <u><</u> 0.95)

HT is tree height

BA is total stand basal area

*N(0,SD)* is a random increment from a normal distribution with a mean of 0 and a standard deviation of SD

R1 – R3 are species-specific coefficients shown in table 4.3.1.1

**Table 4.3.1.1 Coefficients for the crown ratio equation {4.3.1.1} in the WC variant.**

| **Species Code** | **R1** | **R2** | **R3** | **SD** |
| --- | --- | --- | --- | --- |
| SF | 8.042774 | 0.007198 | -0.016163 | 1.3167 |
| WF | 8.042774 | 0.007198 | -0.016163 | 1.3167 |
| GF | 8.042774 | 0.007198 | -0.016163 | 1.3167 |
| AF | 8.042774 | 0.007198 | -0.016163 | 1.3167 |
| RF | 8.042774 | 0.007198 | -0.016163 | 1.3167 |
| NF | 8.042774 | 0.007198 | -0.016163 | 1.3167 |
| YC | 7.558538 | -0.015637 | -0.009064 | 1.9658 |
| IC | 7.558538 | -0.015637 | -0.009064 | 1.9658 |
| ES | 8.042774 | 0.007198 | -0.016163 | 1.3167 |
| LP | 6.489813 | -0.029815 | -0.009276 | 2.0426 |
| JP | 6.489813 | -0.029815 | -0.009276 | 2.0426 |
| SP | 6.489813 | -0.029815 | -0.009276 | 2.0426 |
| WP | 6.489813 | -0.029815 | -0.009276 | 2.0426 |
| PP | 8.477025 | -0.018033 | -0.018140 | 1.3756 |
| DF | 8.477025 | -0.018033 | -0.018140 | 1.3756 |
| RC | 7.558538 | -0.015637 | -0.009064 | 1.9658 |
| WH | 7.558538 | -0.015637 | -0.009064 | 1.9658 |
| MH | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| BM | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| RA | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| WA | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| PB | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| GC | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| AS | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| CW | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| WO | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| WJ | 9.000000 | 0.000000 | 0.000000 | 0.5 |
| LL | 6.489813 | -0.029815 | -0.009276 | 2.0426 |
| WB | 6.489813 | -0.029815 | -0.009276 | 2.0426 |
| KP | 6.489813 | -0.029815 | -0.009276 | 2.0426 |
| PY | 6.489813 | -0.029815 | -0.009276 | 2.0426 |
| DG | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| HT | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| CH | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| WI | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| OT | 5.000000 | 0.000000 | 0.000000 | 0.5 |

For all species except redwood, a Weibull-based crown model developed by Dixon (1985) as described in Dixon (2002) is used to predict crown ratio for all live trees 1.0” in diameter or larger. To estimate crown ratio using this methodology, the average stand crown ratio is estimated from stand density index using equation {4.3.1.3}. Weibull parameters are then estimated from the average stand crown ratio using equations in equation set {4.3.1.4}. Individual tree crown ratio is then set from the Weibull distribution, equation {4.3.1.5} based on a tree’s relative position in the diameter distribution and multiplied by a scale factor, shown in equation {4.3.1.6}, which accounts for stand density. Crowns estimated from the Weibull distribution are bounded to be between the 5 and 95 percentile points of the specified Weibull distribution. Species equation index number is shown in table 4.3.1.2 with equation coefficients for each index shown in table 4.3.1.2.

{4.3.1.3} ACR = d0 + d1 \* RELSDI \* 100.0

RELSDI = SDIstand / SDImax

{4.3.1.4} Weibull parameters A, B, and C are estimated from average crown ratio

A = a0

B = b0 + b1 \* ACR (B <u>></u> 3)

C = c0 + c1 \* ACR (C <u>></u> 2)

{4.3.1.5} Y = 1-exp(-((X-A)/B)^C)

{4.3.1.6} SCALE *=* 1 – (0.00167 \* (CCF – 100))

where:

ACR is predicted average stand crown ratio for the species

SDIstand is stand density index of the stand

SDImax is maximum stand density index

A, B, C are parameters of the Weibull crown ratio distribution

Xis a tree’s crown ratio expressed as a percent / 10

Yis a trees rank in the diameter distribution (1 = smallest; ITRN = largest) divided by the total number of trees (ITRN) multiplied by *SCALE*

SCALEis a density dependent scaling factor(bounded to 0.3 <u><</u> *SCALE* <u><</u> 1.0)

CCF is stand crown competition factor

a0, b0-1, c0-1, and d0-1 are species index-specific coefficients shown in table 4.3.1.3

**Table 4.3.1.2 Species index number used in assigning Weibull parameters in the WC variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **Species Index Number** | **Species Code** | **Species Index Number** |
| SF | 1 | BM | 12 |
| WF | 2 | RA | 13 |
| GF | 2 | WA | 14 |
| AF | 3 | PB | 14 |
| RF | 3 | GC | 14 |
| NF | 4 | AS | 14 |
| YC | 15 | CW | 14 |
| IC | 11 | WO | 14 |
| ES | 11 | WJ | 14 |
| LP | 16 | LL | 11 |
| JP | 6 | WB | 11 |
| SP | 5 | KP | 11 |
| WP | 5 | PY | 11 |
| PP | 6 | DG | 14 |
| DF | 7 | HT | 14 |
| RC | 8 | CH | 14 |
| WH | 9 | WI | 14 |
| MH | 10 | OT | 14 |

**Table 4.3.1.3 Coefficients for the Weibull parameter equations {4.3.1.3} and {4.3.1.4} in the WC variant.**

| **Species Index** | **a0** | **b0** | **b1** | **c0** | **c1** | **d0** | **d1** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 0.0 | -0.173100 | 1.080573 | 1.062168 | 0.445799 | 5.614200 | -0.016547 |
| 2 | 0.0 | 0.130939 | 1.093406 | 1.355139 | 0.350472 | 5.212394 | -0.011623 |
| 3 | 1.0 | -0.981113 | 1.092273 | 1.326047 | 0.318386 | 4.860467 | -0.006173 |
| 4 | 0.0 | -0.135807 | 1.147712 | 3.017494 | 0.000000 | 5.568864 | -0.021293 |
| 5 | 0.0 | 0.019948 | 1.108738 | 2.621230 | 0.186734 | 4.279655 | -0.002484 |
| 6 | 0.0 | -0.036696 | 1.132792 | 2.876094 | 0.000000 | 5.073273 | -0.020988 |
| 7 | 0.0 | -0.082379 | 1.137459 | 2.914892 | 0.000000 | 5.067560 | -0.010484 |
| 8 | 0.0 | 0.179839 | 1.084924 | 0.122967 | 0.567784 | 5.570928 | -0.012043 |
| 9 | 0.0 | 0.490848 | 1.014138 | 3.164558 | 0.000000 | 5.488532 | -0.007173 |
| 10 | 0.0 | 0.162672 | 1.073404 | 3.288501 | 0.000000 | 6.484942 | -0.023248 |
| 11 | 0.0 | 0.196054 | 1.073909 | 0.345647 | 0.620145 | 5.417431 | -0.011608 |
| 12 | 1.0 | -0.818809 | 1.054176 | -2.366108 | 1.202413 | 4.420000 | -0.010660 |
| 13 | 1.0 | -1.112738 | 1.123138 | 2.533158 | 0.000000 | 4.120478 | -0.006357 |
| 14 | 0.0 | -0.238295 | 1.180163 | 3.044134 | 0.000000 | 4.625125 | -0.016042 |
| 15 | 1.0 | -0.811424 | 1.056190 | -3.831124 | 1.401938 | 5.200550 | -0.014890 |
| 16 | 0.0 | -0.131210 | 1.159760 | 2.598238 | 0.000000 | 4.890318 | -0.018837 |

For redwood, equation {4.3.1.7} and equation {4.3.1.8} are used to compute crown ratio for live trees less than 1” and dead trees of all sizes. For live trees greater than 1”, equation {4.3.1.7} and equation {4.3.1.9} are used to compute crown ratio.

{4.3.1.7} *X* = -1.021064 + 0.309296 \* ln(*H\*12/D)* + 0.869720 \* *PRD -* 0.116274 \* *D/QMDPLT*

{4.3.1.8} *CR* = 1 / (1 + exp(*X +* *N(0,SD)*))

{4.3.1.9} *CR* = 1 / (1 + exp(*X*))

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.05 <u><</u> *CR* <u><</u> 0.95)

*D* is tree diameter at breast height

*H* is tree height

*PRD* isrelative density of the inventory point (point Zeide SDI / point SDI max)

*QMDPLT* is quadratic mean diameter of the inventory point (constrained to minimum of 1”)

*N(0,SD)* is a random increment from a normal distribution with a mean of 0 and a standard deviation of SD (0.15)

### 4.3.2 Crown Ratio Change

Crown ratio change is estimated after growth, mortality and regeneration are estimated during a projection cycle. Crown ratio change is the difference between the crown ratio at the beginning of the cycle and the predicted crown ratio at the end of the cycle. Crown ratio predicted at the end of the projection cycle is estimated for live tree records using the Weibull distribution, equations {4.3.1.3}-{4.3.1.6}, for all species except redwood. For redwood, crown ratio predicted at the end of the projection cycle is estimated using equations {4.3.1.7) and {4.3.1.9}. Crown change is checked to make sure it doesn’t exceed the change possible if all height growth produces new crown. Crown change is further bounded to 1% per year for the length of the cycle to avoid drastic changes in crown ratio. Equations {4.3.1.1} – {4.3.1.2} are not used when estimating crown ratio change.

### 4.3.3 Crown Ratio for Newly Established Trees

Crown ratios for newly established trees during regeneration are estimated using equation {4.3.3.1}. A random component is added in equation {4.3.3.1} to ensure that not all newly established trees are assigned exactly the same crown ratio.

{4.3.3.1} CR = 0.89722 – 0.0000461 \* PCCF + RAN

where:

CR is crown ratio expressed as a proportion (bounded to 0.2 <u><</u> CR <u><</u> 0.9)

PCCF is crown competition factor on the inventory point where the tree is established

RAN is a small random component

## 4.4 Crown Width Relationships

The WC variant calculates the maximum crown width for each individual tree, based on individual tree and stand attributes. Crown width for each tree is reported in the tree list output table and used for percent canopy cover (*PCC*) calculations in the model.

Crown width is calculated using equations {4.4.1} – {4.4.6}, and coefficients for these equations are shown in table 4.4.1. The minimum diameter and bounds for certain data values are given in table 4.4.2. Equation numbers in table 4.4.1 are given with the first three digits representing the FIA species code, and the last two digits representing the equation source.

{4.4.1} Bechtold (2004); Equation 02

DBH <u>></u> MinD: CW = a1 + (a2 \* DBH) + (a3 \* DBH^2) + (a4 \* CR%) + (a5 \* BA) + (a6 \* HI)

DBH < MinD: CW = [a1 + (a2 \* MinD) + (a3 \* MinD^2) + (a4 \* CR%) + (a5 \* BA) + (a6 \* HI)] \* (DBH / MinD)

{4.4.2} Crookston (2003); Equation 03 (used only for Mountain Hemlock)

HT < 5.0: CW = [0.8 \* HT \* MAX(0.5, CR \* 0.01)] \* [1 - (HT - 5) \* 0.1] \* a1 \* DBH^a2 \* HT^a3 \* CL^a4 \* (HT-5) \* 0.1

5.0 <u><</u> HT < 15.0: CW = 0.8 \* HT \* MAX(0.5, CR \* 0.01)

HT <u>></u> 15.0: CW = a1 \* (DBH^a2) \* (HT^a3) \* (CL^a4)

{4.4.3} Crookston (2003); Equation 03

DBH <u>></u> MinD*:* CW = [a1 \* exp[a2 + (a3 \* ln(CL)) + (a4 \* ln(DBH)) + (a5 \* ln(HT)) + (a6 \* ln(BA))]]

DBH < MinD*:* CW = [a1 \* exp[a2 + (a3 \* ln(CL)) + (a4 \* ln(MinD)) + (a5 \* ln(HT)) + (a6 \* ln(BA))]] \* (DBH / MinD)

{4.4.4} Crookston (2005); Equation 04

DBH <u>></u> MinD*:* CW = a1 \* DBH*^*a2

DBH < MinD*:* CW = [a1 \* MinD*^*a2] \* (DBH / MinD)

{4.4.5} Crookston (2005); Equation 05

DBH <u>></u> MinD: CW = (a1 \* BF) \* DBH^a2 \* HT^a3 \* CL^a4 \* (BA + 1.0)^a5 \* (exp(EL)^a6

DBH < MinD: CW = [(a1 \* BF) \* MinD^a2 \* HT^a3 \* CL^a4 \* (BA + 1.0)^a5 \* (exp(EL)^a6] \* (DBH / MinD)

{4.4.6} Donnelly (1996); Equation 06

DBH <u>></u> MinD: CW = a1 \* DBH^a2

DBH < MinD: CW = [a1 \* MinD^a2] \* (DBH / MinD)

where:

BF is a species-specific coefficient based on forest code shown in table 4.4.3

CW is tree maximum crown width

CL is tree crown length

CR% is crown ratio expressed as a percent

DBH is tree diameter at breast height

HT is tree height

BA is total stand basal area

EL is stand elevation in hundreds of feet

MinD is the minimum diameter

HI is the Hopkins Index

HI = (ELEVATION - 5449) / 100) \* 1.0 + (LATITUDE - 42.16) \* 4.0 + (-116.39 -LONGITUDE) \* 1.25

a1 – a6 are species-specific coefficients shown in table 4.4.1

**Table 4.4.1 Coefficients for crown width equations {4.4.1}-{4.4.6} in the WC variant.**

| **Species Code** | **Equation Number\*** | **a1** | **a2** | **a3** | **a4** | **a5** | **a6** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| SF | 1105 | 4.4799 | 0.45976 | -0.1043 | 0.11866 | 0.06762 | -0.0072 |
| WF | 1505 | 5.0312 | 0.5368 | -0.1896 | 0.16199 | 0.04385 | -0.0065 |
| GF | 1703 | 1.0303 | 1.14079 | 0.20904 | 0.38787 | 0 | 0 |
| AF | 1905 | 5.8827 | 0.51479 | -0.215 | 0.17916 | 0.03277 | -0.0083 |
| RF | 2006 | 3.1146 | 0.578 | 0 | 0 | 0 | 0 |
| NF | 2206 | 3.0614 | 0.6276 | 0 | 0 | 0 | 0 |
| YC | 4205 | 3.3756 | 0.45445 | -0.1152 | 0.22547 | 0.08756 | -0.0089 |
| IC | 8105 | 5.0446 | 0.47419 | -0.1392 | 0.1423 | 0.04838 | -0.0062 |
| ES | 9305 | 6.7575 | 0.55048 | -0.252 | 0.19002 | 0 | -0.0031 |
| LP | 10805 | 6.6941 | 0.8198 | -0.3699 | 0.17722 | -0.012 | -0.0088 |
| JP | 11605 | 4.0217 | 0.66815 | -0.1135 | 0.09689 | -0.636 | 0 |
| SP | 11705 | 3.593 | 0.63503 | -0.2277 | 0.17827 | 0.04267 | -0.0029 |
| WP | 11905 | 5.3822 | 0.57896 | -0.1958 | 0.14875 | 0 | -0.0069 |
| PP | 12205 | 4.7762 | 0.74126 | -0.2873 | 0.17137 | -0.006 | -0.0021 |
| DF | 20205 | 6.0227 | 0.54361 | -0.2067 | 0.20395 | -0.0064 | -0.0038 |
| RW | 21104 | 3.7023 | 0.52618 | 0 | 0 | 0 | 0 |
| RC | 24205 | 6.2382 | 0.29517 | -0.1067 | 0.23219 | 0.05341 | -0.0079 |
| WH | 26305 | 6.0384 | 0.51581 | -0.2135 | 0.17468 | 0.06143 | -0.0057 |
| MH | 26403 | 6.90396 | 0.55645 | -0.2851 | 0.2043 | 0 | 0 |
| BM | 31206 | 7.5183 | 0.4461 | 0 | 0 | 0 | 0 |
| RA | 35106 | 7.0806 | 0.4771 | 0 | 0 | 0 | 0 |
| WA | 31206 | 7.5183 | 0.4461 | 0 | 0 | 0 | 0 |
| PB | 37506 | 5.898 | 0.4841 | 0 | 0 | 0 | 0 |
| GC | 63102 | 3.115 | 0.7966 | 0 | 0.0745 | -0.0053 | 0.0523 |
| AS | 74605 | 4.7961 | 0.64167 | -0.187 | 0.18581 | 0 | 0 |
| CW | 74705 | 4.4327 | 0.41505 | -0.2326 | 0.41477 | 0 | 0 |
| WO | 81505 | 2.4857 | 0.70862 | 0 | 0.10168 | 0 | 0 |
| WJ | 6405 | 5.1486 | 0.73636 | -0.4693 | 0.39114 | -0.0543 | 0 |
| LL | 7204 | 2.2586 | 0.68532 | 0 | 0 | 0 | 0 |
| WB | 10105 | 2.2354 | 0.6668 | -0.1166 | 0.16927 | 0 | 0 |
| KP | 10305 | 4.0069 | 0.84628 | -0.2904 | 0.13143 | 0 | -0.0084 |
| PY | 23104 | 6.1297 | 0.45424 | 0 | 0 | 0 | 0 |
| DG | 35106 | 7.0806 | 0.4771 | 0 | 0 | 0 | 0 |
| HT | 35106 | 7.0806 | 0.4771 | 0 | 0 | 0 | 0 |
| CH | 35106 | 7.0806 | 0.4771 | 0 | 0 | 0 | 0 |
| WI | 31206 | 7.5183 | 0.4461 | 0 | 0 | 0 | 0 |
| OT | 12205 | 4.7762 | 0.74126 | -0.2873 | 0.17137 | -0.006 | -0.0021 |

\*Equation number is a combination of the species FIA code (###) and source (##).

**Table 4.4.2 *MinD* values and data bounds for equations {4.4.1}-{4.4.6} in the WC variant.**

| **Species Code** | **Equation Number\*** | ***MinD*** | ***EL* min** | ***EL* max** | ***HI* min** | ***HI* max** | **CW max** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| SF | 01105 | 1.0 | 4 | 72 | n/a | n/a | 33 |
| WF | 01505 | 1.0 | 2 | 75 | n/a | n/a | 35 |
| GF | 01703 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| AF | 01905 | 1.0 | 10 | 85 | n/a | n/a | 30 |
| RF | 02006 | 1.0 | n/a | n/a | n/a | n/a | 65 |
| NF | 02206 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| YC | 04205 | 1.0 | 16 | 62 | n/a | n/a | 59 |
| IC | 08105 | 1.0 | 5 | 62 | n/a | n/a | 78 |
| ES | 09305 | 1.0 | 1 | 85 | n/a | n/a | 40 |
| LP | 10805 | 1.0 | 1 | 79 | n/a | n/a | 40 |
| JP | 11605 | 1.0 | n/a | n/a | n/a | n/a | 39 |
| SP | 11705 | 1.0 | 5 | 75 | n/a | n/a | 56 |
| WP | 11905 | 1.0 | 10 | 75 | n/a | n/a | 35 |
| PP | 12205 | 1.0 | 13 | 75 | n/a | n/a | 50 |
| DF | 20205 | 1.0 | 1 | 75 | n/a | n/a | 80 |
| RW | 21104 | 1.0 | n/a | n/a | n/a | n/a | 39 |
| RC | 24205 | 1.0 | 1 | 72 | n/a | n/a | 45 |
| WH | 26305 | 1.0 | 1 | 72 | n/a | n/a | 54 |
| MH | 26403 | n/a | n/a | n/a | n/a | n/a | 45 |
| BM | 31206 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| RA | 35106 | 1.0 | n/a | n/a | n/a | n/a | 35 |
| WA | 31206 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| PB | 37506 | 1.0 | n/a | n/a | n/a | n/a | 25 |
| GC | 63102 | 5.0 | n/a | n/a | -55 | 15 | 41 |
| AS | 74605 | 1.0 | n/a | n/a | n/a | n/a | 45 |
| CW | 74705 | 1.0 | n/a | n/a | n/a | n/a | 56 |
| WO | 81505 | 1.0 | n/a | n/a | n/a | n/a | 39 |
| WJ | 06405 | 1.0 | n/a | n/a | n/a | n/a | 36 |
| LL | 07204 | 1.0 | n/a | n/a | n/a | n/a | 33 |
| WB | 10105 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| KP | 10305 | 1.0 | 12 | 49 | n/a | n/a | 46 |
| PY | 23104 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| DG | 35106 | 1.0 | n/a | n/a | n/a | n/a | 35 |
| HT | 35106 | 1.0 | n/a | n/a | n/a | n/a | 35 |
| CH | 35106 | 1.0 | n/a | n/a | n/a | n/a | 35 |
| WI | 31206 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| OT | 12205 | 1.0 | 13 | 75 | n/a | n/a | 50 |

**Table 4.4.3 BF values for equation {4.4.5} in the WC variant.**

| **Species Code** | **Location Code** | | | | | |
| --- | --- | --- | --- | --- | --- | --- |
| **603** | **605** | **606, 708** | **610, 710, 711** | **613** | **618, 709** |
| SF | 1.032 |  | 1.296 |  | 1.032 |  |
| WF |  |  | 1.130 |  | 1.130 |  |
| GF |  |  | 1.086 |  |  | 0.972 |
| AF | 0.906 | 0.886 | 1.038 | 0.886 |  | 0.936 |
| NF | 1.123 | 1.075 | 1.301 |  | 1.043 |  |
| YC |  |  | 1.493 |  | 1.295 | 1.127 |
| IC |  |  |  | 0.903 |  |  |
| ES |  | 0.949 |  | 0.949 | 1.325 | 0.857 |
| LP |  |  | 0.944 | 0.944 | 1.050 | 0.903 |
| JP |  |  |  |  |  |  |
| SP |  |  |  | 1.048 | 1.097 | 1.097 |
| WP | 1.128 | 1.081 | 1.081 | 1.081 | 1.128 | 1.081 |
| PP |  |  |  | 0.918 | 1.035 | 1.070 |
| DF |  | 1.019 |  |  | 1.055 |  |
| RC | 0.920 | 0.973 | 1.115 |  | 1.049 |  |
| WH | 1.028 |  | 1.260 |  | 1.106 | 1.087 |
| MH | 1.077 |  | 1.106 | 0.900 |  |  |
| RA |  |  |  | 0.810 |  |  |

\*Any *BF* values not listed in Table 4.4.3 are assumed to be *BF* = 1.0

## 4.5 Crown Competition Factor

The WC variant uses crown competition factor (*CCF*) as a predictor variable in some growth relationships. Crown competition factor (Krajicek and others 1961) is a relative measurement of stand density that is based on tree diameters. Individual tree *CCFt* values estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open-grown. Stand *CCF* is the summation of individual tree (*CCFt*)values. A stand *CCF* value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand.

Crown competition factor for an individual tree is calculated using equation set {4.5.1}. For Douglas-fir and ponderosa pine greater than 1.0 inch DBH, the coefficients were derived from Paine and Hann (1982). All others use the Inland Empire variant coefficients (Wykoff, et.al 1982). All species coefficients are shown in table 4.5.1.

{4.5.1} CCF Equations

DBH <u>></u> 1.0”: CCFt = R1 + (R2 \* DBH) + (R3 \* DBH*^*2)

DBH < 1.0”: CCFt = (R1 + R2 + R3) \* DBH

where:

CCFt is crown competition factor for an individual tree

DBH is tree diameter at breast height

R1 – R3 are species-specific coefficients shown in table 4.5.1

**Table 4.5.1 Coefficients for *CCF* equation set {4.5.1} in the WC variant.**

| **Species Code** | **R**1 | **R**2 | **R**3 |
| --- | --- | --- | --- |
| SF | 0.10142 | 0.0432725 | 0.00461575 |
| WF | 0.0690403 | 0.0224682 | 0.00182799 |
| GF | 0.0690403 | 0.0224682 | 0.00182799 |
| AF | 0.0245276 | 0.0114741 | 0.0013419 |
| RF | 0.0172 | 0.00876 | 0.00112 |
| NF | 0.0245276 | 0.0114741 | 0.0013419 |
| YC | 0.0194415 | 0.0142461 | 0.00260979 |
| IC | 0.0194415 | 0.0142461 | 0.00260979 |
| ES | 0.0288484 | 0.0173091 | 0.00259636 |
| LP | 0.0220871 | 0.0252424 | 0.0072121 |
| JP | 0.0219 | 0.0168 | 0.00325 |
| SP | 0.0219 | 0.0168 | 0.00325 |
| WP | 0.0387616 | 0.0268821 | 0.00466086 |
| PP | 0.0219 | 0.0168 | 0.00325 |
| DF | 0.0387616 | 0.0268821 | 0.00466086 |
| RW | 0.0387616 | 0.0268821 | 0.00466086 |
| RC | 0.0288484 | 0.0237999 | 0.00490874 |
| WH | 0.037577 | 0.0232893 | 0.00360853 |
| MH | 0.037577 | 0.0232893 | 0.00360853 |
| BM | 0.0160051 | 0.0166659 | 0.00433848 |
| RA | 0.115394 | 0.0441381 | 0.0042207 |
| WA | 0.115394 | 0.0441381 | 0.0042207 |
| PB | 0.0170887 | 0.0213617 | 0.00667579 |
| GC | 0.0160051 | 0.0166659 | 0.00433848 |
| AS | 0.0170887 | 0.0213617 | 0.00667579 |
| CW | 0.000450757 | 0.0029209 | 0.00473186 |
| WO | 0.0170887 | 0.0213617 | 0.00667579 |
| WJ | 0.0318054 | 0.0215065 | 0.00363562 |
| LL | 0.0219 | 0.0168 | 0.00325 |
| WB | 0.01925 | 0.01676 | 0.00365 |
| KP | 0.01925 | 0.01676 | 0.00365 |
| PY | 0.0318054 | 0.0215065 | 0.00363562 |
| DG | 0.0160051 | 0.0166659 | 0.00433848 |
| HT | 0.0170887 | 0.0213617 | 0.00667579 |
| CH | 0.0160051 | 0.0166659 | 0.00433848 |
| WI | 0.0160051 | 0.0166659 | 0.00433848 |
| OT | 0.0220871 | 0.0252424 | 0.0072121 |

## 4.6 Small Tree Growth Relationships

Trees are considered “small trees” for FVS modeling purposes when they are smaller than some threshold diameter. The threshold diameter is set to 3.0” for all species in the WC variant.

The small tree model is diameter-growth driven, meaning diameter growth is estimated first, then height growth is estimated from diameter growth. These relationships are discussed in the following sections and were developed by Gould and Harrington (2012).

### 4.6.1 Small Tree Height Growth

With the exception of redwood, for trees being projected with the small tree equations, diameter growth is predicted first, and then height growth. Five year height increment is calculated using a height-diameter ratio equation {4.6.1.1}.

{4.6.1.1} Small Tree Height Growth

*H5*= *D5*/a1

where:

*D5*  is 5-yr diameter increment (in)

*H5*  is 5-yr height increment (ft)

a1 is a species-specific coefficient from table 4.6.1.1

For trees that have not yet reached breast height, the *D5* value in equation {4.6.2.1} is temporarily calculated to calculate *H5* using equation {4.6.2.2}. If the new height is less than 4.5 feet, than *D5* value remains at 0. If the new height is greater than 4.5 feet then the trees diameter is calculated using equation 4.6.2.2

**Table 4.6.1.1 Coefficient (a1) and equation reference for small-tree height increment equations {4.6.1.1} and equation {4.6.2.2} in the WC variant.**

| **SpeciesNumber** | **Species Code** | **a1** |
| --- | --- | --- |
|
| 1 | SF | 0.2474 |
| 2 | WF | 0.2175 |
| 3 | GF | 0.1797 |
| 4 | AF | 0.2056 |
| 5 | RF | 0.2168 |
| 7 | NF | 0.2822 |
| 8 | YC | 0.2168 |
| 9 | IC | 0.2815 |
| 10 | ES | 0.1704 |
| 11 | LP | 0.1682 |
| 12 | JP | 0.2168 |
| 13 | SP | 0.2168 |
| 14 | WP | 0.2168 |
| 15 | PP | 0.2369 |
| 16 | DF | 0.1635 |
| 18 | RC | 0.1829 |
| 19 | WH | 0.1727 |
| 20 | MH | 0.3029 |
| 21 | BM | 0.2168 |
| 22 | RA | 0.2168 |
| 23 | WA | 0.2168 |
| 24 | PB | 0.2168 |
| 25 | GC | 0.2168 |
| 26 | AS | 0.2168 |
| 27 | CW | 0.2168 |
| 28 | WO | 0.2168 |
| 29 | WJ | 0.2168 |
| 30 | LL | 0.2168 |
| 31 | WB | 0.2168 |
| 32 | KP | 0.1682 |
| 33 | PY | 0.2168 |
| 34 | DG | 0.2168 |
| 35 | HT | 0.2168 |
| 36 | CH | 0.2168 |
| 37 | WI | 0.2168 |
| 39 | OT | 0.1635 |

For redwood, a potential height growth curve is used to estimate small tree height growth. Height growth is computed by subtracting the current predicted height from the predicted height 5 years in the future, as depicted in equation {4.6.1.2}.

{4.6.1.2} *POTHTG* = 2.242202 \* *SI* \* [1.0 – exp (-0.010742 \* *AGE1*)]^ 0.919076

where:

*POTHTG* is predicted tree height, used for current and future height growth

*SI* is species site index

*AGE1* is tree age

A*GE1* = 1/ -0.010742 \* (ln(1-(*HT*/2.242202/*SI*)^(1/ 0.919076))

For all species, a small random error is then added to the height growth estimate. The estimated height growth is then adjusted to account for cycle length, user defined small-tree height growth adjustments, and adjustments due to small tree height increment calibration from input data.

Height growth estimates from the small-tree model are weighted with the height growth estimates from the large tree model over a range of diameters (*Xmin* and *Xmax*) in order to smooth the transition between the two models. For example, the closer a tree’s *DBH* value is to the minimum diameter (*Xmin*), the more the growth estimate will be weighted towards the small-tree growth model. The closer a tree’s *DBH* value is to the maximum diameter (*Xmax*), the more the growth estimate will be weighted towards the large-tree growth model. If a tree’s *DBH* value falls outside of the range given by *Xmin* and *Xmax*, then the model will use only the small-tree or large-tree growth model in the growth estimate. The weight applied to the growth estimate is calculated using equation {4.6.1.3}, and applied as shown in equation {4.6.1.4}. The range of diameters for each species is shown in table 4.6.1.2.

{4.6.1.3}

*DBH* <u><</u> *X*min: *XWT* = 0

*X*min < *DBH* < *X*max:  *XWT* = (*DBH* - *X*min) / (*X*max - *X*min)

*DBH* <u>></u> *X*max:  *XWT* = 1

{4.6.1.4}

Estimated growth = [(1 - *XWT*) \* *STGE*] + [*XWT* \* *LTGE*]

Redwood estimated growth = [(1 - *XWT*) \* ((*STGE+LTGE*)/*2.0)*] + [*XWT* \* *LTGE*]

where:

*XWT*  is the weight applied to the growth estimates

*DBH*  is tree diameter at breast height

*Xmax*  is the maximum *DBH* is the diameter range

*X*min  is the minimum *DBH* in the diameter range

*STGE* is the growth estimate obtained using the small-tree growth model

*LTGE* is the growth estimate obtained using the large-tree growth model

**Table 4.6.1.2 Diameter bounds by species in the WC variant.**

| **Species Code** | ***Xmin*** | ***Xmax*** | **Species Code** | ***Xmin*** | ***Xmax*** |
| --- | --- | --- | --- | --- | --- |
| SF | 2.0 | 4.0 | RA | 2.0 | 4.0 |
| WF | 2.0 | 4.0 | WA | 2.0 | 4.0 |
| GF | 2.0 | 4.0 | PB | 2.0 | 4.0 |
| AF | 2.0 | 4.0 | GC | 2.0 | 4.0 |
| RF | 2.0 | 4.0 | AS | 2.0 | 4.0 |
| NF | 2.0 | 4.0 | CW | 2.0 | 4.0 |
| YC | 2.0 | 4.0 | WO | 2.0 | 4.0 |
| IC | 2.0 | 4.0 | WJ | 2.0 | 4.0 |
| ES | 2.0 | 4.0 | LL | 2.0 | 4.0 |
| LP | 1.0 | 3.0 | WB | 2.0 | 4.0 |
| JP | 2.0 | 4.0 | KP | 2.0 | 4.0 |
| SP | 2.0 | 4.0 | PY | 2.0 | 4.0 |
| WP | 2.0 | 4.0 | DG | 2.0 | 4.0 |
| PP | 2.0 | 4.0 | HT | 2.0 | 4.0 |
| DF | 2.0 | 4.0 | CH | 2.0 | 4.0 |
| RW | 2.0 | 10.0 | WI | 2.0 | 4.0 |
| RC | 2.0 | 4.0 | OT | 2.0 | 4.0 |
| WH | 2.0 | 4.0 |  |  |  |
| MH | 2.0 | 4.0 |  |  |  |
| BM | 2.0 | 4.0 |  |  |  |

### 4.6.2 Small Tree Diameter Growth

The small-tree diameter model predicts 5-year diameter increment growth for small trees. For all species except redwood, diameter growth is estimated using equations {4.6.2.1} and coefficients for these equations are shown in table 4.6.2.1. In the case that height is initially less than 4.5 feet, but after height growth is calculated a tree grows to be greater than 4.5 feet, a height-diameter equation {4.6.2.2} is used to calculate an initial diameter for the tree.

{4.6.2.1} Small Tree Diameter Growth

HT < 4.5: *D5* = *0*

HT > 4.5: *D5* = *DMAX* / (1 + exp(c0 + c1\**PTBA*+ c2\**PTBA2* + c3\**PTBAL* + c4\**PTBAL2* + c5\**OPEN* + c6\**CR* + c7\**RELHT* + c8\**RELHT2* + c9\* *SI*))

where:

*OPEN* = 1/(1 + exp(-3.1 + 0.18\**PTBA*))

{4.6.2.2} Small tree Height – Diameter Equation

*DBH* = (*HT* – 4.5) \* a1

where:

HT is tree height

DBH is tree diameter at breast height

D5 is 5-yr diameter increment (in)

DMAX is maximum diameter increment for the species (in).

OPEN is an adjustment for open grown conditions

PTBA is basal area (sq. ft. /ac.) on the inventory point where the tree is located

PTBA2 is the transformation of *PTBA*: log(*PTBA* + 2.71)

PTBAL is basal area of trees larger than the subject tree (ft2/acre) on the inventory point

Where the tree is located

PTBAL2 is the transformation of PTBAL: log(*PTBAL* + 2.71)

CR is crown ratio expressed as a proportion

RELHT is tree height / height of 40 largest trees/acre, measured at the stand level (proportion, bound between 0 and 1.5)

RELHT2 is *RELHT^*0.5

SI is species site index, if species is Douglas-fir the values are transformed using the following equation: SI= 5.21486+0.66486\*SI

c0-c9 are species-specific coefficients in table 4.6.2.1

a1 are species-specific coefficients in table 4.6.1.1

**Table 4.6.2.1 Coefficients (c0 – c9) and equation reference for small-tree diameter increment equations {4.6.2.1} in the WC variant.**

| **Species Code** | ***DMAX*** | **Model Coefficients** | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **c0** | **c1** | **c2** | **c3** | **c4** | **c5** | **c6** | **c7** | **c8** | **c9** |
| SF | 1.7035 | 2.9445 | 0 | 0 | 0.0068 | 0 | 0 | -0.1895 | 0 | -1.4049 | -0.0168 |
| WF | 1.4964 | 1.7536 | 0 | 0.2928 | 0.0009 | 0 | -0.0446 | -2.0349 | 0 | -1.3839 | -0.0033 |
| GF | 1.6389 | 2.3571 | 0.0052 | 0 | 0.0006 | 0 | -0.4269 | -1.2219 | 0 | 0 | -0.0170 |
| AF | 1.1961 | 2.5839 | 0 | 0.0410 | 0.0020 | 0 | -0.0152 | -2.2060 | 0 | -0.5915 | -0.0009 |
| RF | 1.5146 | 2.4743 | 0 | 0 | 0.0032 | 0 | -0.8934 | -2.2709 | 0 | -1.0690 | 0 |
| NF | 2.9394 | 0.3376 | 0 | 0 | 0.0101 | 0 | 0 | 0 | 0 | 0 | -0.0043 |
| YC | 1.5400 | -2.0216 | 0.0063 | 0 | 0 | 0.7175 | 0 | 0 | 0 | 0 | 0 |
| IC | 1.6825 | 0.5996 | 0 | 0 | 0.0080 | 0 | 0 | 0 | -1.0479 | 0 | 0 |
| ES | 1.8853 | 0.0452 | 0.0080 | 0 | 0.0071 | 0 | 0 | 0 | 0 | 0 | 0 |
| LP | 1.6535 | 1.7400 | 0 | 0.3718 | 0.0027 | 0 | -0.1712 | -2.1359 | 0 | -0.7266 | -0.0074 |
| JP | 1.7985 | 1.8451 | 0 | 0 | 0.0167 | 0 | -1.4737 | 0 | 0 | -0.4103 | -0.0112 |
| SP | 2.4740 | 3.8085 | 0 | 0 | 0.0023 | 0 | -0.4265 | -2.0913 | 0 | -1.3932 | -0.0093 |
| WP | 2.4740 | 3.8085 | 0 | 0 | 0.0023 | 0 | -0.4265 | -2.0913 | 0 | -1.3932 | -0.0093 |
| PP | 1.7985 | 1.8451 | 0 | 0 | 0.0167 | 0 | -1.4737 | 0 | 0 | -0.4103 | -0.0112 |
| DF | 5.3730 | 2.4473 | 0 | 0 | 0.0098 | 0 | -0.4290 | -0.1710 | 0 | -0.1879 | -0.0110 |
| RC | 2.7899 | 1.6815 | 0 | 0 | 0.0068 | 0 | 0 | 0 | 0 | -0.6049 | -0.0121 |
| WH | 3.4187 | 2.9527 | 0 | 0 | 0.0066 | 0 | 0 | -0.4734 | 0 | -0.7394 | -0.0207 |
| MH | 1.3834 | 2.6762 | 0.0024 | 0 | 0.0006 | 0 | -0.4309 | -1.6205 | 0 | -0.5930 | -0.0051 |
| BM | 3.0939 | -1.2421 | 0.0124 | 0 | 0 | 0.4161 | 0 | 0 | 0 | 0 | 0 |
| RA | 3.0939 | 1.4593 | 0 | 0 | 0.0085 | 0 | -0.6000 | 0 | 0 | -1.2280 | 0 |
| WA | 2.0110 | -1.1900 | 0.0158 | 0 | 0 | 0.6600 | 0 | 0 | 0 | 0 | 0 |
| PB | 2.1657 | -1.2421 | 0.0124 | 0 | 0 | 0.7813 | 0 | 0 | 0 | 0 | 0 |
| GC | 3.0939 | -1.2421 | 0.0124 | 0 | 0 | 0.6382 | 0 | 0 | 0 | 0 | 0 |
| AS | 2.4751 | -1.2421 | 0.0124 | 0 | 0 | 0.6013 | 0 | 0 | 0 | 0 | 0 |
| CW | 3.7127 | -1.2421 | 0.0124 | 0 | 0 | 0.6013 | 0 | 0 | 0 | 0 | 0 |
| WO | 0.9861 | -2.1910 | 0 | 0 | 0 | 0.7191 | -3.1321 | 0 | 0 | 0 | 0 |
| WJ | 1.2192 | 0.3755 | 0.0120 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| LL | 0.6234 | 1.0527 | 0 | 0.3580 | 0.0019 | 0 | 0 | -0.6008 | 0 | -0.7451 | -0.0101 |
| WB | 0.8070 | 2.4949 | 0 | 0 | 0.0049 | 0 | -0.2085 | -1.7001 | 0 | -0.7952 | -0.0177 |
| KP | 0.5859 | -0.8085 | 0 | 0.5001 | 0 | 0 | 0 | 0 | 0 | 0 | -0.0081 |
| PY | 0.8601 | 1.5156 | 0 | 0 | 0.0012 | 0 | 0 | -0.5478 | 0 | -0.6123 | 0 |
| DG | 1.0032 | -3.8345 | 0 | 0 | 0 | 1.0701 | 0 | 0 | 0 | 0 | 0 |
| HT | 1.8903 | 3.5521 | 0 | 0 | 0.0002 | 0 | 0 | -0.5932 | 0 | -0.5029 | -0.0038 |
| CH | 2.1657 | -1.2421 | 0.0124 | 0 | 0 | 0.7312 | 0 | 0 | 0 | 0 | 0 |
| WI | 2.1657 | -1.2421 | 0.0124 | 0 | 0 | 0.6598 | 0 | 0 | 0 | 0 | 0 |
| OT | 5.3730 | 2.4473 | 0 | 0 | 0.0098 | 0 | -0.3575 | -0.1710 | 0 | -0.1879 | -0.0110 |

For redwood, small tree height growth is predicted first, and then diameter growth. Both height at the beginning of the cycle and height at the end of the cycle are known when predicting diameter growth. Small tree diameter growth for trees over 4.5 feet tall is calculated as the difference of predicted diameter at the start of the projection period and the predicted diameter at the end of the projection period, adjusted for bark ratio. Diameter growth is predicted with the height-diameter equations shown in section 4.1 inverted, so that diameter is a function of height. Diameter growth estimates for redwood are weighted with the diameter growth estimates from the large-tree model when DBH is between 2” and 7”, in a similar manner to the weighting explained in section 4.6.1. By definition, diameter growth is zero for trees less than 4.5 feet tall.

## 4.7 Large Tree Growth Relationships

Trees are considered “large trees” for FVS modeling purposes when they are equal to, or larger than, some threshold diameter. This threshold diameter is set to 3.0” for all species in the WC variant.

The large-tree model is driven by diameter growth meaning diameter growth is estimated first, and then height growth is estimated from diameter growth and other variables. These relationships are discussed in the following sections.

### 4.7.1 Large Tree Diameter Growth

The large tree diameter growth model used in most FVS variants is described in section 7.2.1 in Dixon (2002). For most variants, instead of predicting diameter increment directly, the natural log of the periodic change in squared inside-bark diameter (ln(*DDS*)) is predicted (Dixon 2002; Wykoff 1990; Stage 1973; and Cole and Stage 1972). For variants predicting diameter increment directly, diameter increment is converted to the *DDS* scale to keep the FVS system consistent across all variants.

The WC variant predicts diameter growth using equation {4.7.1.1} for all species except red alder and redwood. Coefficients for this equation are shown in tables 4.7.1.1 – 4.7.1.4.

In the WC variant, each species is mapped into a species index as shown in table 4.7.1.1. The coefficients for each species for equation 4.7.1.1 will depend on the species index of the subject species.

{4.7.1.1} ln(DDS )= b1 + (b2 \* EL) + (b3 \* EL^2) + (b4 \* ln(SI)) + (b5 \* sin(ASP) \* *SL*) + (b6 \* cos(ASP) \* *SL*) + (b7 \* SL) + (b8 \* SL^2) + (b9 \* ln(DBH)) + (b10 \* CR) + (b11 \* CR^2) + (b12 \* DBH^2) + (b13 \* BAL / (ln(DBH + 1.0))) + (b14 \* PCCF) + (b15 \* RELHT) + (b16 \* ln(BA)) + (b17 \* BAL) + (b18 \* BA)

where:

DDS is the square of the diameter growth increment

EL is stand elevation in hundreds of feet (if species index 14, *EL* <u><</u> 30)

SI is species site index in feet (if species index 10, *SI* = *SI* \* 3.281 or if species index =18, *SI = SIKing*)

ASPis stand aspect

SL is stand slope

DBH is tree diameter at breast height

BAL is total basal area in trees larger than the subject tree

CR is crown ratio expressed as a proportion

PCCF is crown competition factor on the inventory point where the tree is established

RELHT is tree height divided by average height of the 40 largest diameter trees in the stand bounded to *RELHT* <u><</u> 1.5)

BA is total stand basal area

b1 is a location-specific coefficient shown in table 4.7.1.3

b2- b18 are species-specific coefficients shown in table 4.7.1.4

**Table 4.7.1.1 Mapped species index for each species for large-tree diameter growth in the WC variant.**

| **Species Code** | **Species Index** | **Species Code** | **Species Index** |
| --- | --- | --- | --- |
| SF | 1 | BM | 12 |
| WF | 2 | RA | 13 |
| GF | 2 | WA | 14 |
| AF | 3 | PB | 14 |
| RF | 17 | GC | 14 |
| NF | 4 | AS | 14 |
| YC | 15 | CW | 14 |
| IC | 11 | WO | 18 |
| ES | 11 | WJ | 14 |
| LP | 16 | LL | 11 |
| JP | 6 | WB | 11 |
| SP | 5 | KP | 11 |
| WP | 5 | PY | 11 |
| PP | 6 | DG | 14 |
| DF | 7 | HT | 14 |
| RC | 8 | CH | 14 |
| WH | 9 | WI | 14 |
| MH | 10 | OT | 14 |

**Table 4.7.1.2 Coefficients (b**2**-b**18**) for species with a species index 1-9 for equation {4.7.1.1} in the WC variant.**

| **Coefficient** | **Species Index** | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** |
| b2 | -0.048852 | -0.003051 | -0.003773 | -0.069045 | -0.023376 | -0.003784 | -0.037591 | -0.050081 | -0.040067 |
| b3 | 0.000478 | 0 | 0 | 0.000608 | 0 | 0.0000666 | 0.000549 | 0.00066 | 0.000395 |
| b4 | 0.534255 | 0.318254 | 0.349888 | 0.684939 | 0.40401 | 1.011504 | 1.020863 | 0.139734 | 0.380416 |
| b5 | 0 | 0 | 0.02216 | -0.207659 | 0 | 0 | -0.038992 | 0 | 0 |
| b6 | 0 | 0 | -0.782418 | -0.374512 | 0 | 0 | -0.080943 | 0 | 0 |
| b7 | 0.245548 | 0 | 0.319956 | 0.400223 | 0 | 0 | 0.077787 | 0 | 0.421486 |
| b8 | 0 | 0 | 0 | 0 | 0 | 0 | -0.215778 | 0 | -0.69361 |
| b9 | 0.527758 | 0.905119 | 0.993986 | 0.904253 | 0.84469 | 0.73875 | 0.534138 | 0.843013 | 0.722462 |
| b10 | 2.982807 | 1.754811 | 1.522401 | 4.123101 | 1.59725 | 3.454857 | 1.636854 | 2.878032 | 2.160348 |
| b11 | -1.331331 | 0 | 0 | -2.68934 | 0 | -1.773805 | -0.045578 | -1.631418 | -0.834196 |
| b12 | -0.0001983 | -0.0003137 | -0.0002621 | -0.0003996 | -0.0000596 | -0.0004708 | -0.0001039 | -0.0000644 | -0.0001546 |
| b13 | -0.011247 | -0.005355 | -0.002979 | -0.006368 | -0.003726 | -0.013091 | -0.009363 | -0.003923 | -0.004065 |
| b14 | 0 | 0 | 0 | -0.000471 | -0.000257 | -0.000593 | 0 | -0.000552 | 0 |
| b15 | 0 | -0.000661 | 0 | 0 | 0 | 0 | 0 | 0 | -0.000358 |
| b16 | -0.03073 | 0 | 0 | 0 | 0 | -0.131185 | 0 | 0 | 0 |
| b17 | 0.002839 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b18 | 0 | 0 | -0.000137 | 0 | 0 | 0 | -0.000215 | 0 | 0 |

\*If location code is 610 (Rogue River) or 711 (BLM Medford ADU),  = 0 for species index 1

**Table 4.7.1.2 (continued) Coefficients (b**2**- b**18**) for species with a species index 10-17 for equation {4.7.1.1} in the WC variant.**

| **Coefficient** | **Species Index** | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **10** | **11** | **12** | **14** | **15** | **16** | **17** | **18** |
| b2 | -0.003809 | 0 | -0.012111 | -0.075986 | 0 | -0.005414 | 0.323546 | 0 |
| b3 | 0 | 0 | 0 | 0.001193 | 0 | 0 | -0.00313 | 0 |
| b4 | 0.20804 | 0.252853 | 1.965888 | 0.227307 | 0.244694 | 0.391327 | 0.375175 | 0.14995 |
| b5 | -0.12613 | 0 | 0 | -0.86398 | 0.679903 | 0.37886 | 0.202507 | 0 |
| b6 | -0.104495 | 0 | 0 | 0.085958 | -0.023186 | 0.207853 | -0.93587 | 0 |
| b7 | 0.411602 | 0 | 0 | 0 | 0 | -0.06644 | 0 | 0 |
| b8 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b9 | 0.857131 | 0.879338 | 1.024186 | 0.889596 | 0.81688 | 0.478504 | 0.949631 | 1.66609 |
| b10 | 1.505513 | 1.970052 | 0.459387 | 1.732535 | 2.471226 | 1.905011 | 1.826879 | 0 |
| b11 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b12 | -0.0002214 | -0.0001323 | -0.0001737 | 0 | -0.0002536 | 0 | -0.0003552 | -0.00154 |
| b13 | -0.004101 | -0.004215 | -0.010222 | -0.001265 | -0.00595 | -0.004706 | -0.00535 | 0 |
| b14 | -0.000201 | 0 | -0.000757 | 0 | 0 | 0 | 0 | 0 |
| b15 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b16 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b17 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | -0.00326 |
| b18 | 0 | -0.000173 | 0 | -0.000981 | -0.000147 | -0.000114 | 0.00004 | -0.002040 |

**Table 4.7.1.3 b**1 **values by location class for species that have a species index 1 – 9 for equation {4.7.1.1} in the WC variant.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Location**  **Class** | **Species Index** | | | | | | | | |
| **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** |
| 1 | -0.619069 | -0.64392 | -1.888949 | -1.401865 | -0.58957 | -2.922255 | -2.750874 | 0.412763 | -0.29831 |
| 2 | -0.479015 | 0 | -1.27618 | -1.127977 | -0.909553 | 0 | -2.787499 | 0.645645 | -0.147675 |
| 3 | -0.291244 | 0 | 0 | 0 | 0 | 0 | -2.672664 | 0 | -0.006413 |
| 4 | 0 | 0 | 0 | 0 | 0 | 0 | -2.533437 | 0 | 0 |
| 5 | -0.420228 | 0 | 0 | 0 | 0 | 0 | -2.693964 | 0 | 0 |
| 6 | -0.746419 | 0 | 0 | 0 | 0 | 0 | -2.718852 | 0 | 0 |

**Table 4.7.1.3 (continued) b1 values by location class for species that have a species index 10 – 17 for equation {4.7.1.1} in the WC variant.**

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Location**  **Class** | **Species Index** | | | | | | | |
| **10** | **11** | **12** | **14** | **15** | **16** | **17** | **18** |
| 1 | -1.052161 | -1.310067 | -7.753469 | -0.107648 | -1.277664 | -0.524624 | -9.211184 | -1.33299 |
| 2 | -0.793945 | -1.432659 | -8.279266 | -0.098335 | -1.178041 | -0.803095 | -9.800653 | 0 |
| 3 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 4 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 5 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 6 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |

**Table 4.7.1.4 Location class by species index and location code in the WC variant.**

| **Location Code** | **Species Index** | | | | | | | | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** | **10** | **11** | **12** | **14** | **15** | **16** | **17** | **18** |
| 603-Gifford Pinchot | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 605-Mt. Baker - Snoqualmie | 2 | 1 | 1 | 1 | 1 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 606-Mt. Hood,708-BLM Salem | 3 | 1 | 1 | 2 | 1 | 1 | 3 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 610-Rogue River,711-BLM Medford | 4 | 1 | 2 | 2 | 1 | 1 | 4 | 1 | 3 | 2 | 1 | 1 | 1 | 1 | 2 | 1 | 1 |
| 615-Umpqua,710-BLM Roseburg | 5 | 1 | 1 | 2 | 1 | 1 | 5 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 2 | 2 | 1 |
| 618-Willamette,709-BLM Eugene | 6 | 1 | 1 | 2 | 2 | 1 | 6 | 1 | 1 | 1 | 2 | 2 | 2 | 2 | 2 | 1 | 1 |

Large-tree diameter growth for red alder is predicted using equation set {4.7.1.2}. Diameter growth is predicted based on tree diameter and stand basal area. While not shown here, this diameter growth estimate is eventually converted to the *DDS* scale.

{4.7.1.2} Used for red alder

DBH <u><</u> 18.0”: DG = CON – (0.166496 \* DBH) + (0.004618 \* DBH*^*2)

DBH > 18.0”: DG = CON – (CON / 10) \* (DBH – 18)

CON = (3.2505 – 0.00303 \* BA)

where:

DGis potential diameter growth

DBH is tree diameter at breast height

BAis stand basal area

Diameter growth for redwood is predicted using equation {4.7.1.3}.

{4.7.1.3} *DI* = exp(-3.502444 + (0.185911 \* ln(*DBH*)) + (-0.000073 \* *DBH*^2) + (-0.001796 \* *PBAL*) + (- 0.42078 \* *PRD*) + (0.589318 \* ln(*CR*)) + (0.415435 \* ln(*SI*)) + (-0.000926 \* *SL*) + (- 0.002203 \* (*SL*) \* COS(*ASP*)))

where:

*DI* is 10-year outside bark diameter growth increment

*SI* is species site index

*ASP* is stand aspect

*SL* is stand slope

*CR* is crown ratio expressed as a proportion

*DBH* is tree diameter at breast height

*PBAL* is point basal area in trees larger than the subject tree

*PRD* isrelative density of the inventory point (point Zeide SDI / point SDI max)

For all species except redwood, diameter growth is checked to make sure diameter growth is between zero and a maximum allowed value, set by equation {4.7.1.4}. If diameter growth exceeds the estimate in equation {4.7.1.4}, diameter growth is set to the maximum growth allowed.

{4.7.1.4} *DGMax* = (7.92 \* exp(-0.03\**DBH*))

where:

DGMaxis maximum diameter growth allowed

DBH is tree diameter at breast height

### 4.7.2 Large Tree Height Growth

For all species except white oak and redwood, height growth equations used in the WC variant are based on site index curves shown in section 3.4. Species differences in height growth are accounted for by entering the appropriate curve with the species specific site index value (see section 3.4).

In the WC variant, each species is mapped into a species index as shown in table 4.7.2.1. The coefficients and equations used for each species will depend on the species index of the subject species.

**Table 4.7.2.1 Mapped species index for each species for height growth in the WC variant.**

| **Species Code** | **Species Index** | **Species Code** | **Species Index** |
| --- | --- | --- | --- |
| SF | 1 | BM | 6 |
| WF | 2 | RA | 12 |
| GF | 2 | WA | 6 |
| AF | 3 | PB | 6 |
| RF | 4 | GC | 6 |
| NF | 5 | AS | 6 |
| YC | 6 | CW | 6 |
| IC | 7 | WO |  |
| ES | 3 | WJ | 6 |
| LP | 8 | LL | 13 |
| JP | 7 | WB | 6 |
| SP | 9 | KP | 6 |
| WP | 9 | PY | 6 |
| PP | 7 | DG | 6 |
| DF | 6 | HT | 6 |
| RW |  | CH | 6 |
| RC | 6 | WI | 6 |
| WH | 10 | OT | 6 |
| MH | 11 |  |  |

Using a species site index and tree height at the beginning of the projection cycle, an estimated tree age is computed using the site index curves. Also, maximum species heights are computed using equations {4.7.2.1 – 4.7.2.2}.

{4.7.2.1} *HTMAX* = a0 + a1 \* *DBH*

{4.7.2.2} *HTMAX2* = a0 + a1 \* (*DBH* + (*DG*/*BARK*))

where:

*HTMAX* is maximum expected tree height in feet at the start of the projection cycle

*HTMAX2* is maximum expected tree height in feet 10-years in the future

*DBH*  is tree diameter at the start of the projection cycle

*DG*  is estimated 10-year inside-bark diameter growth

*BARK*  is tree bark ratio

a0 – a1 are species-specific coefficients shown in table 4.7.2.2

**Table 4.7.2.2 Coefficients for equations {4.7.2.1} and {4.7.2.2} and maximum age in the WC variant.**

| **Species Code** | **a0** | **a1** | **Maximum**  **Age** |
| --- | --- | --- | --- |
| SF | 43.9957174 | 4.3396271 | 200 |
| WF | 43.9957174 | 4.3396271 | 200 |
| GF | 43.9957174 | 4.3396271 | 200 |
| AF | 39.6317079 | 4.3149844 | 200 |
| RF | 39.6317079 | 4.3149844 | 200 |
| NF | 39.6317079 | 4.3149844 | 200 |
| YC | 62.7139427 | 3.2412923 | 200 |
| IC | 62.7139427 | 3.2412923 | 200 |
| ES | 39.6317079 | 4.3149844 | 200 |
| LP | 65.7622908 | 2.3475244 | 200 |
| JP | 18.6043842 | 5.5324838 | 200 |
| SP | 18.6043842 | 5.5324838 | 200 |
| WP | 18.6043842 | 5.5324838 | 200 |
| PP | 18.6043842 | 5.5324838 | 200 |
| DF | 16.2223589 | 6.3657425 | 200 |
| RC | 62.7139427 | 3.2412923 | 200 |
| WH | 51.9732476 | 4.0156013 | 200 |
| MH | 51.9732476 | 4.0156013 | 200 |
| BM | 59.3370816 | 3.9033821 | 200 |
| RA | 59.3370816 | 3.9033821 | 200 |
| WA | 59.3370816 | 3.9033821 | 200 |
| PB | 59.3370816 | 3.9033821 | 200 |
| GC | 59.3370816 | 3.9033821 | 200 |
| AS | 59.3370816 | 3.9033821 | 200 |
| CW | 59.3370816 | 3.9033821 | 200 |
| WO | 59.3370816 | 3.9033821 | 200 |
| WJ | 62.7139427 | 3.2412923 | 200 |
| LL | 62.7139427 | 3.2412923 | 200 |
| WB | 62.7139427 | 3.2412923 | 200 |
| KP | 62.7139427 | 3.2412923 | 200 |
| PY | 62.7139427 | 3.2412923 | 200 |
| DG | 59.3370816 | 3.9033821 | 200 |
| HT | 59.3370816 | 3.9033821 | 200 |
| CH | 59.3370816 | 3.9033821 | 200 |
| WI | 59.3370816 | 3.9033821 | 200 |
| OT | 16.2223589 | 6.3657425 | 200 |

If tree height at the beginning of the projection cycle is greater than the maximum species height (*HTMAX*), then tree height at the beginning of the projection cycle is compared to the estimated tree height at the end of the projection cycle (HTMAX2). If beginning of the cycle height is less than HTMAX2, height growth is computed using equation {4.7.2.3}; if beginning of the cycle height is greater than or equal to HTMAX2, height growth is set using equation {4.7.2.3} or {4.7.2.4} whichever is larger.

If tree height at the beginning of the projection cycle is less than or equal to the maximum species height (*HTMAX*), then height growth is obtained by estimating a tree’s potential height growth and adjusting the estimate using a height growth modifier based on the tree’s crown ratio and height relative to other trees in the stand, equation {4.7.2.5}.

{4.7.2.3} *HTG* = 0.1

{4.7.2.4} *HTG* = 0.5 \* DG

{4.7.2.5} *HTG* = *POTHTG* \* *HTGMOD*

where:

*HTG* is estimated 10-year tree height growth (bounded 0.1 <u><</u> HTG)

*DG*  is species estimated 10-year diameter growth

*POTHTG* is potential height growth

*HTGMOD* is a weighted height growth modifier

If estimated tree age at the beginning of the projection cycle is greater than or equal to the species maximum age, potential height growth is calculated using equation {4.7.2.6}.

{4.7.2.6} POT*HTG* = 0.1

where:

*POTHTG* is estimated potential 10-year tree height growth (bounded 0.1 <u><</u> HTG)

When estimated tree age at the beginning of the projection cycle is less than the species maximum age, then potential height growth is obtained by subtracting estimated current height from an estimated future height. In all cases, potential height growth is then adjusted according to the tree’s crown ratio and height relative to other trees in the stand.

For all species except Oregon white oak, estimated current height (ECH) and estimated future height (H10) are both obtained using the equations shown below. Estimated current height is obtained using estimated tree age at the start of the projection cycle and site index. Estimated future height is obtained using estimated tree age at the start of the projection cycle plus 10-years and site index.

{4.7.2.7} Used for species index 1: Pacific silver fir

H = ([1 – exp((-1 \* (b0+ b1 \* SM45)) \* A)]^b2 / [1 – exp((-1 \* (b0 + b1 \* SM45)) \* 100)]^b2) \* SM45 + 4.5

SM45 = SI – 4.5

{4.7.2.8} Used for species index 2: white fir, grand fir

H = exp[b0 + b1\* ln(A) + b2\* (ln(A))^4 + b3\* (ln(A))^9 + b4\* (ln(A))^11 + b5\* (ln(A))^18] + b12 \* exp[b6 + b7\* ln(A) + b8\* (ln(A))^2 + b9\* (ln(A))^7 + b10\* (ln(A))^16 + b11\* (ln(A))^24] + (SI – 4.5) \* exp[b6 + b7\* ln(A) + b8\* (ln(A))^2 + b9\* (ln(A))^7 + b10\* (ln(A))^16 + b11\* (ln(A))^24] + 4.5

{4.7.2.9} Used for species index 3: subalpine fir, Engelmann spruce

H = 4.5 + [(b0\* SI*^*b1) \* {1 – exp(-b2\* A)) ^ (b3\* SI*^*b4)]

{4.7.2.10} Used for species index 4: California red fir

H = [(SI – 4.5) \* (1 – exp(-X \* A*^*b1))] / [1 – exp(-Y \* 50^b1)] + 4.5

X = (SI \* TERM) + (b4 \* TERM^2) + b5

TERM = A \* b2\* exp (A \* b3)

Y = (SI \* TERM2) + (b4\* TERM2^2) + b5

TERM2 = 50 \* b2 \* exp (50 \* b3)

{4.7.2.11} Used for species index 5: noble fir

H = 4.5 + [(SI – 4.5) / (X1 \* (1 / A)^2 + X2 \* (1 / A) + 1 – (X1 \* 0.0001) – (X2 \* 0.01))]

X1 = b0 + (b1 \* (SI – 4.5)) – (b2 \* (SI – 4.5)^2)

X2 = b3 + (b4 \* 1 / (SI – 4.5)) – (b5 \* (SI – 4.5)^-2)

{4.7.2.12} Used for species index 6: Alaska cedar, Douglas-fir, western redcedar, bigleaf maple, white alder, paper birch, giant chinquapin, quaking aspen, black cottonwood, western juniper, whitebark pine, knobcone pine, Pacific yew, Pacific dogwood, hawthorn, bitter cherry, willow, other

H = [(SI – 4.5) / [b0 + (b1 / (SI – 4.5)) + [b2 + (b3 / (SI – 4.5))] \* A^-1.4] + 4.5

{4.7.2.13} Used for species index 7: incense cedar, Jeffrey pine, ponderosa pine

H = [b0 \* (1 – exp(b1 \* A))^b2] – [(b3 + b4 \* (1 – exp(b5 \* A))^b6) \*b7] + [(b3 + b4 \* (1 – exp(b5 \* A))^b6) \* (SI – 4.5)] + 4.5

{4.7.2.14} Used for species index 8: lodgepole pine

H = SI \* [b0 + (b1\* A) + (b2\* A^2)]

{4.7.2.15} Used for species index 9: sugar pine, western white pine

H = ([1 – exp(-exp(b0+ (b1 \* ln(A)) + (b2 / SI)))] / [1 – exp(-exp(b0 + (b1 \* ln(100)) + (b2/ SI)))]) \* (SI – 4.5) + 4.5

{4.7.2.16} Used for species index 10: western hemlock

H = [A^2 / (b0 + (b1 \* Z) + ((b2 + (b3 \* Z)) \* A) + ((b4 + (b5 \* Z)) \* A^2))] + 4.5

Z = 2500 / (SI – 4.5)

{4.7.2.17} Used for species index 11: mountain hemlock

H = [(b0 + b1 \* SI) \* (1 – exp(b2 \* SI ^0.5 \* A))^(b4 + b5/SI) + 1.37] \* 3.281

{4.7.2.18} Used for species index 12: red alder

H = SI + (b0 + (b1 \* SI)) \* (1 – exp(b2 + (b3 \* SI) \* A))^b4 – (b0 + (b1 \* SI)) \* (1 – exp(b2 + (b3 \* SI) \* 20))^b4

{4.7.2.19} Used for species index 13: subalpine larch

H = 4.5 + [(b1 \* A) + (b2 \* A^2) + (b3 \* A^3) + (b4\* A^4)] + [(SI – 4.5) \* (b5+ (b6 \* A) + (b7 \* A^2) + (b8 \* A^3))] - [b9 \* (b10 + (b11 \* A) + (b12 \* A^2) + (b13 \* A^3))]

where:

H is estimated height of the tree

SI is species site index

A is estimated tree age

b0 – b13 are species-specific coefficients shown in table 4.7.2.3

**Table 4.7.2.3 Coefficients (b0-b13) for height-growth equations in the WC variant.**

| **Coefficient** | **Species Index** | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** |
| b0 | 0.0071839 | -0.30935 | 2.7578 | 0 | -564.38 | 0.6192 | 128.89522 | -0.0968 |
| b1 | 0.0000571 | 1.2383 | 0.83312 | 1.51744 | 22.25 | -5.3394 | -0.016959 | 0.02679 |
| b2 | 1.39005 | 0.001762 | 0.015701 | 1.42E-06 | 0.04995 | 240.29 | 1.23114 | -9.31E-05 |
| b3 | 0 | -5.40E-06 | 22.71944 | -0.044085 | 6.8 | 3368.9 | -0.7864 | 0 |
| b4 | 0 | 2.05E-07 | -0.63557 | -3.05E+06 | 2843.21 | 0 | 2.49717 | 0 |
| b5 | 0 | -4.04E-13 | 0 | 5.72E-04 | 34735.54 | 0 | -0.004504 | 0 |
| b6 | 0 | -6.2056 | 0 | 0 | 0 | 0 | 0.33022 | 0 |
| b7 | 0 | 2.097 | 0 | 0 | 0 | 0 | 100.43 | 0 |
| b8 | 0 | -0.09411 | 0 | 0 | 0 | 0 | 0 | 0 |
| b9 | 0 | -4.38E-05 | 0 | 0 | 0 | 0 | 0 | 0 |
| b10 | 0 | 2.01E-11 | 0 | 0 | 0 | 0 | 0 | 0 |
| b11 | 0 | -2.05E-17 | 0 | 0 | 0 | 0 | 0 | 0 |
| b12 | 0 | -84.93 | 0 | 0 | 0 | 0 | 0 | 0 |
| b13 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |

**Table 4.7.2.2 (continued) Coefficients (b0- b13) for height-growth equations in the WC variant.**

| **Coefficient** | **Species Index** | | | | |
| --- | --- | --- | --- | --- | --- |
| **9** | **10** | **11** | **12** | **13** |
| b0 | -4.62536 | -1.7307 | 22.8741 | 59.5864 | 0 |
| b1 | 1.346399 | 0.1394 | 0.950234 | 0.7953 | 1.46897 |
| b2 | -135.3545 | -0.0616 | -0.002065 | 0.00194 | 0.0092466 |
| b3 | 0 | 0.0137 | 0 | -0.00074 | -2.40E-04 |
| b4 | 0 | 0.00192 | 1.365566 | 0.9198 | 1.11E-06 |
| b5 | 0 | 0.00007 | 2.045963 | 0 | -0.12528 |
| b6 | 0 | 0 | 0 | 0 | 0.039636 |
| b7 | 0 | 0 | 0 | 0 | -4.28E-04 |
| b8 | 0 | 0 | 0 | 0 | 1.70E-06 |
| b9 | 0 | 0 | 0 | 0 | 73.57 |
| b10 | 0 | 0 | 0 | 0 | -0.12528 |
| b11 | 0 | 0 | 0 | 0 | 0.039636 |
| b12 | 0 | 0 | 0 | 0 | -4.28E-04 |
| b13 | 0 | 0 | 0 | 0 | 1.70E-06 |

For all species except Oregon white oak, potential height growth is estimated using equation {4.7.2.20}.

{4.7.2.20} POTHTG = H10 – ECH

where:

*POTHTG* is potential height growth

*H10* is estimated height of the tree in ten years

*ECH* is estimated height of the tree at the beginning of the cycle

For Oregon white oak, potential 10-year height growth is calculated using equation {4.7.2.21}.

{4.7.2.21} POTHTG = [4.5+{(114.24569(1-exp(-.02659\*SIKing))^2.25993)-18.602 / ln(2.71\*BA)}\*{1-exp(-.13743\*DBH2)}^1.38994] – [4.5+{(114.24569(1-exp(-.02659\*SIKing))^2.25993)-18.602 / ln(2.71\*BA)}\*{1-exp(-.13743\*DBH1)}^1.38994]

where:

POTHTG is potential 10-year height growth

BAis stand basal area

SIkingis Site Index based on King (1966)

DBH1is diameter of the tree at the beginning of the cycle

DBH2is estimated diameter of the tree at the end of the cycle

Modifiers are applied to the height growth based upon a tree’s crown ratio (equation {4.7.2.22}), and relative height and shade tolerance (equation {4.7.2.23}). Equation {4.7.2.24} uses the Generalized Chapman – Richard’s function (Donnelly et. al, 1992) to calculate a height-growth modifier. Final height growth is calculated using equation {4.7.2.5} as a product of the modifier and potential height growth. The final height growth is then adjusted to the length of the cycle.

{4.7.2.22} HGMDCR = (100 \* (CR / 100)^3) \* exp(-5 \* (CR / 100 )) bounded *HGMDCR* ≤ 1.0

{4.7.2.23} HGMDRH = [1 + ((1 / b1)^(b2 - 1) – 1) \* exp(-1 \* (b3 / (1 – b4)) \* RELHT*^*(1 – b4))]^(-1 / (b2 - 1))

{4.7.2.24} HTGMOD = (0.25 \* HGMDCR) + (0.75 \* HGMDRH) bounded 0.0 ≤ *HTGMOD* ≤ 2.0

\*if HTGMOD ≤ 0.0, then HTGMOD = 0.1

where:

POTHTG is potential height growth

H10 is estimated height of the tree in ten years

HT is height of the tree at the beginning of the cycle

BAis stand basal area

SIkingis Site Index based on King (1966)

DBH1is diameter of the tree at the beginning of the cycle

DBH2is estimated diameter of the tree at the end of the cycle

HGMDCR is a height growth modifier based on crown ratio

HGMDRH is a height growth modifier based on relative height and shade tolerance

HTGMOD is a weighted height growth modifier

CR is crown ratio expressed as a percent

RELHT is tree height divided by average height of the 40 largest diameter trees in the stand

b1 – b4 are species-specific coefficients shown in table 4.7.2.4

**Table 4.7.2.4 Coefficients (b**1 **– b**4**) for equation 4.7.2.23 in the WC variant.**

| **Species Code** | **b**1 | **b**2 | **b**3 | **b**4 |
| --- | --- | --- | --- | --- |
| SF | 0.15 | 1.1 | 16 | -1.2 |
| WF | 0.15 | 1.1 | 16 | -1.2 |
| GF | 0.15 | 1.1 | 16 | -1.2 |
| AF | 0.2 | 1.1 | 20 | -1.1 |
| RF | 0.15 | 1.1 | 16 | -1.2 |
| NF | 0.1 | 1.1 | 15 | -1.45 |
| YC | 0.15 | 1.1 | 16 | -1.2 |
| IC | 0.2 | 1.1 | 20 | -1.1 |
| ES | 0.15 | 1.1 | 16 | -1.2 |
| LP | 0.01 | 1.1 | 12 | -1.6 |
| JP | 0.05 | 1.1 | 13 | -1.6 |
| SP | 0.1 | 1.1 | 15 | -1.45 |
| WP | 0.15 | 1.1 | 15 | -1.45 |
| PP | 0.05 | 1.1 | 13 | -1.6 |
| DF | 0.1 | 1.1 | 15 | -1.45 |
| RC | 0.2 | 1.1 | 20 | -1.1 |
| WH | 0.2 | 1.1 | 20 | -1.1 |
| MH | 0.2 | 1.1 | 20 | -1.1 |
| BM | 0.2 | 1.1 | 20 | -1.1 |
| RA | 0.05 | 1.1 | 13 | -1.6 |
| WA | 0.05 | 1.1 | 13 | -1.6 |
| PB | 0.05 | 1.1 | 13 | -1.6 |
| GC | 0.1 | 1.1 | 15 | -1.45 |
| AS | 0.01 | 1.1 | 12 | -1.6 |
| CW | 0.01 | 1.1 | 12 | -1.6 |
| WO | 0.1 | 1.1 | 15 | -1.45 |
| WJ | 0.05 | 1.1 | 13 | -1.6 |
| LL | 0.01 | 1.1 | 12 | -1.6 |
| WB | 0.1 | 1.1 | 15 | 0.1 |
| KP | 0.01 | 1.1 | 12 | -1.6 |
| PY | 0.2 | 1.1 | 20 | -1.1 |
| DG | 0.2 | 1.1 | 20 | -1.1 |
| HT | 0.01 | 1.1 | 12 | -1.6 |
| CH | 0.05 | 1.1 | 13 | -1.6 |
| WI | 0.01 | 1.1 | 12 | -1.6 |
| OT | 0.1 | 1.1 | 15 | -1.45 |

One check is done after computing height growth to limit the maximum height for a given diameter. This check is to make sure that current height plus height growth does not exceed the maximum height for the given diameter. The maximum height for a given diameter is calculated using equation {4.7.2.25}. Species-specific coefficients for this equation are shown in Table 4.7.2.2.

{4.7.2.25} HTmax = a0 + a1 \* DBH

where:

HTmaxis the maximum height for a given diameter

DBH is tree diameter at breast height

a0, a1 are species-specific coefficients shown in table 4.7.2.2

Equation {4.7.2.26} is used to predict 10-year height increment for redwood. The final height growth is then adjusted to the length of the cycle.

{4.7.2.26} *HTG* = exp(1.412947+ (-0.000204 \* *DBH*^2) + (0.31971 \* ln(*DBH*)) + (0.394005 \* ln(*SI*)) + (-(0.399888 \* (ln(*DG10*)) + (-0.451708 \* ln(*HT*))

where:

*HTG* is 10-year height growth increment

*DBH* is diameter at breast height

*SI* is species site index

*DG10* is 10-year outside bark diameter growth increment

*HT* is total tree height

A height growth bounding function is used to ensure tree heights do not exceed the height maximum of redwood. The bounding function is applied using the following concepts. For a tree with height less than the lower height-bounding limit, the height growth modifier is set to 1.0. For a tree with a height greater than or equal to the lower height-bounding limit and less than the upper height-bounding limit, a height growth modifier is computed using equation {4.7.2.27}. For a tree with a height greater than the upper height-bounding limit, the height growth modifier is set to 0.1. The lower bounding limit was determined from the height growth fitting data and the upper bounding limit was determined from literature. The final height increment estimate is multiplied by the bounding function, equation {4.7.2.28}.

{4.7.2.27} *HGBND* = 1.0 – ((*HT* - HTLO) / (*HTHI*- *HTLO*))

{4.7.2.28} *HTG* = *HTG* \* *HGBND*

where:

*HGBND* is height growth bounding modifier, limited to 0.1 <u><</u> *HGBND* <u><</u> 1.0

*HT* is total tree height (ft)

*HTLO* is the lower height-bounding limit (217 ft)

*HTHI* is the upper height-bounding limit (380 ft)

# 5.0 Mortality Model

All species in the WC variant use individual tree mortality equations. The large tree equations except for Oregon white oak and redwood, were developed by Hann et al 2003 and Hann and Hanus 2001. The small tree equations were developed by Gould and Harrington 2013. The equation for redwood was developed by Castle 2021.

The annual mortality rate estimates, *RA*, predicts individual tree mortality based on trees size, stand density and other tree and stand attributes. The equations used to calculate the annual mortality rate is shown in equations {5.0.1} – {5.0.4}.

{5.0.1} Hann Mortality Equations:

DBH <u>></u> 3.0”: RA=1-[((1-(1/(1+exp(-Z))))0.2)\*CRADJ]

group 1 species: Z=d0 + d1\*DBH.5 + d3\*CR0.25 + d4\*(XSITE1+4.5) + d5\*BAL

group 2 species: Z= d0 + d1\*DBH + d4\*(XSITE1+4.5)+ d5\*(BAL/DBH)

group 3 species: Z= d0 + d1\*DBH + d2\*DBH2+ d3\*CR + d4\*(XSITE2+4.5) + d5\*BAL

group 4 species: Z= d0 + d1\*DBH + d2\*DBH2+ d3\*CR +\*(XSITE1+4.5) + d5\*BAL

{5.0.2} Gould and Harrington (2009) Mortality Equation for Oregon white oak

DBH <u>></u> 3.0”: RA = 1 – [1/(1+exp(-6.6707 + 0.5105\*ln(5+BA) - 1.3183\*RELHT)))]\*RADJ

{5.0.3} Gould and Harrington (2013) Mortality for small trees

DBH < 3”: RA = 1- [1/(1 + exp(-4.4384 + 0.0053\* PBAL\* MCLASS / (DBHA + 1)0.5+ -0.6001 \* RELHT0.5]

HT < 4.5: DBHA = DBH+HT\* a1

HT <u>></u> 4.5: DBHA = DBH+4.5\* a1

{5.0.4} Redwood mortality equation

RA = [1/(1+exp(2.901447+ 0.578694\*DBH - 0.001793\*PBAL)))]

where:

RA is the estimated annual mortality rate (bound to minimum value of 0.001)

DBH is tree diameter at breast height

BAis total stand basal area

BAL is total basal area in trees larger

RELHT is tree height divided by average height of the 40 largest diameter trees in the stand

CR is crown ratio

CRADJ crown adjustment =1.0-exp(-(25.0\*CR)2)

XSITE1 =5.21486+0.66486\*Douglas-fir site index

XSITE2 Western hemlock site index

PBAL is basal area of trees larger than the subject tree on the inventory point

MCLASS Mortality class based on shade tolerance table 5.0.1

HT is tree height

d0-5 are species-specific coefficients shown in table 5.0.1

ai is a species-specific coefficient from table 4.6.1.1

**Table 5.0.1 values used in the individual tree mortality equation {5.0.1, 5.0.3} in the WC variant.**

| **Species Code** | **group** | **d0** | **d1** | **d2** | **d3** | **d4** | **d5** | **MCLASS** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| SF | 2 | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1 |
| WF | 2 | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1.5 |
| GF | 2 | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1.5 |
| AF | 2 | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1.5 |
| RF | 2 | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1.5 |
| NF | 2 | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 2.25 |
| YC | 4 | -1.92269 | -0.13608 | 0.00248 | -3.17812 | 0 | 0.004684 | 1.5 |
| IC | 4 | -1.92269 | -0.13608 | 0.00248 | -3.17812 | 0 | 0.004684 | 2.25 |
| ES | 2 | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1.5 |
| LP | 4 | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 3.375 |
| JP | 4 | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 3.375 |
| SP | 4 | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 2.25 |
| WP | 4 | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 2.25 |
| PP | 4 | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 3.375 |
| DF | 1 | -4.13142 | -1.13736 | 0 | -0.82331 | 0.030775 | 0.00991 | 2.25 |
| RC | 3 | -0.76161 | -0.52937 | 0 | -4.74019 | 0.011959 | 0.007564 | 1 |
| WH | 3 | -0.76161 | -0.52937 | 0 | -4.74019 | 0.011959 | 0.007564 | 1 |
| MH | 3 | -0.76161 | -0.52937 | 0 | -4.74019 | 0.011959 | 0.007564 | 1 |
| BM | 4 | -2.97682 | 0 | 0 | -6.22325 | 0 | 0 | 1 |
| RA | 4 | -2 | -0.5 | 0.015 | -3 | 0.015 | 0.01 | 3.375 |
| WA | 4 | -2 | -0.5 | 0.015 | -3 | 0.015 | 0.01 | 2.25 |
| PB | 4 | -2 | -0.5 | 0.015 | -3 | 0.015 | 0.01 | 3.375 |
| GC | 4 | -4.13175 | -0.0577 | 0 | 0 | 0.004861 | 0.009981 | 2.25 |
| AS | 4 | -2 | -0.5 | 0.015 | -3 | 0.015 | 0.01 | 5.062 |
| CW | 4 | -2 | -0.5 | 0.015 | -3 | 0.015 | 0.01 | 5.062 |
| WO | 5 | 0 | 0 | 0 | 0 | 0 | 0 | 5.062 |
| WJ | 4 | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 5.062 |
| LL | 4 | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 3.375 |
| WB | 4 | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 3.375 |
| KP | 4 | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 5.062 |
| PY | 4 | -4.07278 | -0.17643 | 0 | -1.72945 | 0 | 0.012526 | 1 |
| DG | 4 | -3.02035 | 0 | 0 | -8.46788 | 0.013966 | 0.009462 | 1 |
| HT | 4 | -3.02035 | 0 | 0 | -8.46788 | 0.013966 | 0.009462 | 2.25 |
| CH | 4 | -3.02035 | 0 | 0 | -8.46788 | 0.013966 | 0.009462 | 2.25 |
| WI | 4 | -2 | -0.5 | 0.015 | -3 | 0.015 | 0.01 | 5.062 |
| -- | 1 | -4.13142 | -1.13736 | 0 | -0.82331 | 0.030775 | 0.00991 | 1 |
| OT | 1 | -4.13412 | -1.13736 | 0 | -0.82331 | 0.030775 | 0.00991 | 5.062 |

The annual mortality rates are adjusted for the length of cycle using a compound interest formula (Hamilton 1976), and then applied to each tree record. After the rate is applied to each tree, if the stand density is above the maximum stand density index (or a basal area of 550ft2/acre) the stand will reapply the mortality rate to each tree record again until the stand is below the maximum density.

{5.0.4} *RT* = 1 – (1 – *RA*)*Y*

where:

*RT* is the mortality rate applied to an individual tree record for the growth period

*RA* is the annual mortality rate for the tree record

*Y* is length of the current projection cycle in years

# 6.0 Regeneration

The WC variant contains a partial establishment model which may be used to input regeneration and ingrowth into simulations. A more detailed description of how the partial establishment model works can be found in section 5.4.5 of the Essential FVS Guide (Dixon 2002).

The regeneration model is used to simulate stand establishment from bare ground, or to bring seedlings and sprouts into a simulation with existing trees. Sprouts are automatically added to the simulation following harvest or burning of known sprouting species (see table 6.0.1 for sprouting species).

**Table 6.0.1 Regeneration parameters by species in the WC variant.**

| **Species Code** | **Sprouting Species** | **Minimum Bud Width (in)** | **Minimum Tree Height (ft)** | **Maximum Tree Height (ft)** |
| --- | --- | --- | --- | --- |
| SF | No | 0.3 | 1.0 | 20.0 |
| WF | No | 0.3 | 1.5 | 20.0 |
| GF | No | 0.3 | 1.5 | 20.0 |
| AF | No | 0.3 | 1.0 | 20.0 |
| RF | No | 0.3 | 1.0 | 20.0 |
| NF | No | 0.3 | 1.0 | 20.0 |
| YC | No | 0.2 | 1.0 | 20.0 |
| IC | No | 0.2 | 1.0 | 20.0 |
| ES | No | 0.3 | 1.0 | 20.0 |
| LP | No | 0.4 | 1.4 | 20.0 |
| JP | No | 0.4 | 1.0 | 20.0 |
| SP | No | 0.4 | 1.0 | 20.0 |
| WP | No | 0.4 | 1.0 | 20.0 |
| PP | No | 0.5 | 1.3 | 20.0 |
| DF | No | 0.3 | 1.5 | 20.0 |
| RW | Yes | 0.2 | 2.0 | 20.0 |
| RC | No | 0.2 | 1.0 | 20.0 |
| WH | No | 0.2 | 1.0 | 20.0 |
| MH | No | 0.2 | 1.0 | 20.0 |
| BM | Yes | 0.2 | 1.0 | 20.0 |
| RA | Yes | 0.2 | 1.0 | 50.0 |
| WA | Yes | 0.2 | 1.0 | 20.0 |
| PB | Yes | 0.2 | 1.0 | 20.0 |
| GC | Yes | 0.2 | 1.0 | 20.0 |
| AS | Yes | 0.2 | 1.0 | 20.0 |
| CW | Yes | 0.2 | 1.0 | 20.0 |
| WO | Yes | 0.2 | 1.0 | 20.0 |
| WJ | No | 0.2 | 1.0 | 20.0 |
| LL | No | 0.3 | 1.5 | 20.0 |
| WB | No | 0.4 | 1.0 | 20.0 |
| KP | No | 0.4 | 1.0 | 20.0 |
| PY | Yes | 0.2 | 1.0 | 20.0 |
| DG | Yes | 0.2 | 1.0 | 20.0 |
| HT | Yes | 0.2 | 1.0 | 20.0 |
| CH | Yes | 0.2 | 1.0 | 20.0 |
| WI | Yes | 0.2 | 1.0 | 20.0 |
| OT | No | 0.2 | 1.0 | 20.0 |

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

{6.0.4} *PS =* ((93.2669 - 0.4303 \* *DSTMPi*)/100)

{6.0.5} *PS =* ((99.9 - 3.8462 \* *DSTMPi*)/100)

{6.0.6} *PS =* (*TPAi* / (*ASTPAR* \* 2)) \* ((*ASBAR* / 198) \* (40100.45 - 3574.02 \* *RSHAG*^2 + 554.02 \* *RSHAG*^3 - 3.5208 \* *RSHAG*^5 + 0.011797 \* *RSHAG*^7))

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

**Table 6.0.2 Sprouting algorithm parameters for sprouting species in the WC variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **Sprouting Probability** | **Number of Sprout Records** | **Source** |
| RW | {6.0.4} | {6.0.2} | Neal 1967  Boe 1975  Griffith 1992 |
| BM | 0.9 | {6.0.2} | Roy 1955  Tappenier et al. 1996  Ag. Handbook 654 |
| RA | {6.0.5} | {6.0.2} | Harrington 1984  Uchytil 1989 |
| WA | 0.9 | {6.0.2} | See red alder (RA) |
| PB | 0.7 | 1 | Hutnik and Cunningham 1965  Bjorkbom 1972 |
| GC | 0.9 | {6.0.2} | Harrington et al. 1992  Wilkinson et al. 1997  Fryer 2008 |
| AS | {6.0.6} | 2 | Keyser 2001 |
| CW | 0.9 | {6.0.2} | Gom and Rood 2000  Steinberg 2001 |
| WO | 0.9 | {6.0.1} | Roy 1955  Gucker 2007 |
| PY | 0.4 | 1 | Minore 1996  Ag. Handbook 654 |
| DG | 0.9 | [A] | Gucker 2005 |
| HT | No info available--default to 0.7 | 1 | n/a |
| CH | 0.9 | {6.0.2} | Mueggler 1965  Leedge and Hickey 1971  Morgan and Neuenschwander 1988 |
| WI | 0.9 | 1 | Ag. Handbook 654 |

Regeneration of seedlings must be specified by the user with the partial establishment model by using the PLANT or NATURAL keywords. Height of the seedlings is estimated in two steps. First, the height is estimated when a tree is 5 years old (or the end of the cycle – whichever comes first) by using the small-tree height growth equations found in section 4.6.1. Users may override this value by entering a height in field 6 of the PLANT or NATURAL keyword; however the height entered in field 6 is not subject to minimum height restrictions and seedlings as small as 0.05 feet may be established. The second step also uses the equations in section 4.6.1, which grow the trees in height from the point five years after establishment to the end of the cycle.

Seedlings and sprouts are passed to the main FVS model at the end of the growth cycle in which regeneration is established. Unless noted above, seedlings being passed are subject to minimum and maximum height constraints and a minimum budwidth constraint shown in table 6.0.1. After seedling height is estimated, diameter growth is estimated using equations described in section 4.6.2. Crown ratios on newly established trees are estimated as described in section 4.3.1.

Regenerated trees and sprouts can be identified in the treelist output file with tree identification numbers beginning with the letters “ES”.

# 7.0 Volume

Volume is calculated for four merchantability standards: total stem cubic feet, merchantable stem cubic feet, sawlog stem cubic feet, and merchantable stem board feet (Scribner). Sawlog cubic foot volume is only reported when the FIAVBC keyword is in use. Volume estimation is based on methods contained in the National Volume Estimator Library maintained by the Forest Products Measurements group in the Forest Management Service Center (Volume Estimator Library Equations 2009). The default volume merchantability standards and equation numbers for the WC variant are shown in tables 7.0.1-7.0.4.

Volume computation methods used by the Forest Inventory and Analysis (FIA) program can be requested with the FIAVBC keyword. This keyword encompasses the National Scale Volume and Biomass estimators (NSVB; Westfall et al. 2024) and regional equations used for woodland species (Burrill et al. 2024). More information about the FIAVBC keyword and required input variables can be found in the Essential FVS Guide (Dixon 2002).

**Table 7.0.1 Volume merchantability standards for the WC variant.**

|  |  |  |
| --- | --- | --- |
| **Merchantable Cubic Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | LP | All Other |
| 708 – BLM Salem; 709 BLM Eugene;  712 – BLM Coos Bay | 7.0 / 5.0 inches | 7.0 / 5.0 inches |
| All other location codes | 6.0 / 4.5 inches | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| **Merchantable Board Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | LP | All Other |
| 708 – BLM Salem; 709 BLM Eugene;  712 – BLM Coos Bay | 7.0 / 5.0 inches | 7.0 / 5.0 inches |
| All other location codes | 6.0 / 4.5 inches | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |

**Table 7.0.2 Volume equation defaults for each species, at specific location codes, with model name.**

| **Common Name** | **Location Code** | **Equation Number** | **Reference** |
| --- | --- | --- | --- |
| Pacific silver fir | 603, 606 | I12FW2W017 | Flewelling's 2-Point Profile Model |
| Pacific silver fir | 605, 610, 618 | 616BEHW011 | Behre's Hyperbola |
| Pacific silver fir | 615 | I13FW2W017 | Flewelling's Profile Model |
| Pacific silver fir | 708, 709, 710, 711 | B00BEHW011 | Behre's Hyperbola |
| white fir | 603, 605, 606, 618 | 616BEHW015 | Behre's Hyperbola |
| white fir | 610 | I00FW2W093 | Flewelling's 2-Point Profile Model |
| white fir | 615 | I00FW2W017 | Flewelling's 2-Point Profile Model |
| white fir | 708, 709, 710, 711 | B00BEHW015 | Behre's Hyperbola |
| grand fir | 606 | I13FW2W017 | Flewelling's 2-Point Profile Model |
| grand fir | 603, 605, 610, 615, 618 | 616BEHW017 | Behre's Hyperbola |
| grand fir | 708, 709, 710, 711 | B00BEHW017 | Behre's Hyperbola |
| subalpine fir | 603 | I00FW2W108 | Flewelling's 2-Point Profile Model |
| subalpine fir | 605, 606, 610, 615, 618 | 616BEHW019 | Behre's Hyperbola |
| subalpine fir | 708, 709, 710, 711 | B00BEHW015 | Behre's Hyperbola |
| California red fir | 615 | I00FW2W012 | Flewelling's 2-Point Profile Model |
| California red fir | 603, 605, 606, 610, 618 | 616BEHW020 | Behre's Hyperbola |
| California red fir | 708, 709, 710, 711 | B00BEHW021 | Behre's Hyperbola |
| noble fir | 606 | I13FW2W017 | Flewelling's 2-Point Profile Model |
| noble fir | 618 | I00FW2W108 | Flewelling's 2-Point Profile Model |
| noble fir | 603, 605, 610, 615 | 616BEHW022 | Behre's Hyperbola |
| noble fir | 708, 709, 710, 711 | B00BEHW022 | Behre's Hyperbola |
| Alaska cedar | All Region 6 | 616BEHW042 | Behre's Hyperbola |
| Alaska cedar | 708, 709, 710, 711 | B00BEHW042 | Behre's Hyperbola |
| incense cedar | 615 | I00FW2W073 | Flewelling's 2-Point Profile Model |
| incense cedar | 603, 605, 606, 610, 618 | 616BEHW081 | Behre's Hyperbola |
| incense cedar | 708, 709, 710, 711 | B00BEHW081 | Behre's Hyperbola |
| Engelmann spruce | 606 | I11FW2W093 | Flewelling's 2-Point Profile Model |
| Engelmann spruce | 615 | I00FW2W093 | Flewelling's 2-Point Profile Model |
| Engelmann spruce | 603, 605, 610, 618 | 616BEHW093 | Behre's Hyperbola |
| Engelmann spruce | 708, 709, 710, 711 | B00BEHW093 | Behre's Hyperbola |
| lodgepole pine | 606 | I11FW2W108 | Flewelling's 2-Point Profile Model |
| lodgepole pine | 615 | I00FW2W108 | Flewelling's 2-Point Profile Model |
| lodgepole pine | 603, 605, 606, 610, 618 | 616BEHW108 | Behre's Hyperbola |
| lodgepole pine | 708, 709, 710, 711 | B00BEHW108 | Behre's Hyperbola |
| Jeffrey pine | All Region 6 | 616BEHW116 | Behre's Hyperbola |
| Jeffrey pine | 708, 709, 710, 711 | B00BEHW116 | Behre's Hyperbola |
| sugar pine | All Region 6 | 616BEHW117 | Behre's Hyperbola |
| sugar pine | 708, 709, 710, 711 | B00BEHW117 | Behre's Hyperbola |
| western white pine | All Region 6 | 616BEHW119 | Behre's Hyperbola |
| western white pine | 708, 709, 710, 711 | B00BEHW119 | Behre's Hyperbola |
| ponderosa pine | 606 | I12FW2W122 | Flewelling's 2-Point Profile Model |
| ponderosa pine | 610, 615 | I00FW2W073 | Flewelling's 2-Point Profile Model |
| ponderosa pine | 603, 605, 618 | 616BEHW122 | Behre's Hyperbola |
| ponderosa pine | 708, 709, 710, 711 | B00BEHW122 | Behre's Hyperbola |
| Douglas‑fir | 603 | F03FW2W202 | Flewelling's 2-Point Profile Model |
| Douglas‑fir | 605 | F08FW2W202 | Flewelling's 2-Point Profile Model |
| Douglas‑fir | 606 | F03FW2W202 | Flewelling's 2-Point Profile Model |
| Douglas‑fir | 610 | F06FW2W202 | Flewelling's 2-Point Profile Model |
| Douglas‑fir | 615 | F00FW2W202 | Flewelling's 2-Point Profile Model |
| Douglas‑fir | 618 | F05FW2W202 | Flewelling's 2-Point Profile Model |
| Douglas‑fir | 708, 709, 710, 711 | B01BEHW202 | Behre's Hyperbola |
| redwood | All Region 6 | 616BEHW211 | Behre's Hyperbola |
| redwood | 708, 709, 710, 711 | B00BEHW211 | Behre's Hyperbola |
| western redcedar | 615 | I00FW2W012 | Flewelling's 2-Point Profile Model |
| western redcedar | 603, 605, 606, 610, 618 | 616BEHW242 | Behre's Hyperbola |
| western redcedar | 708, 709, 710, 711 | B00BEHW242 | Behre's Hyperbola |
| western hemlock | 603 | F00FW2W263 | Flewelling's 2-Point Profile Model |
| western hemlock | 605, 618 | F03FW2W263 | Flewelling's 2-Point Profile Model |
| western hemlock | 610 | 616BEHW263 | Behre's Hyperbola |
| western hemlock | 606, 615 | I11FW2W260 | Flewelling's 2-Point Profile Model |
| western hemlock | 708, 709, 710, 711 | B00BEHW260 | Behre's Hyperbola |
| mountain hemlock | 615 | I00FW2W242 | Flewelling's 2-Point Profile Model |
| mountain hemlock | 603, 605, 606, 610, 618 | 616BEHW264 | Behre's Hyperbola |
| mountain hemlock | 708, 709, 710, 711 | B00BEHW260 | Behre's Hyperbola |
| bigleaf maple | All Region 6 | 616BEHW312 | Behre's Hyperbola |
| bigleaf maple | 708, 709, 710, 711 | B00BEHW312 | Behre's Hyperbola |
| red alder | 603 | A16CURW351 | Curtis Profile Model |
| red alder | 605, 606, 610, 613, 615, 618 | 616BEHW351 | Behre's Hyperbola |
| red alder | 708, 709, 710, 711 | B00BEHW351 | Behre's Hyperbola |
| white alder | All Region 6 | 616BEHW352 | Behre's Hyperbola |
| white alder | 708, 709, 710, 711 | B00BEHW361 | Behre's Hyperbola |
| paper birch | All Region 6 | 616BEHW375 | Behre's Hyperbola |
| paper birch | 708, 709, 710, 711 | B00BEHW999 | Behre's Hyperbola |
| giant chinquapin | All Region 6 | 616BEHW431 | Behre's Hyperbola |
| giant chinquapin | 708, 709, 710, 711 | B00BEHW431 | Behre's Hyperbola |
| quaking aspen | All Region 6 | 616BEHW746 | Behre's Hyperbola |
| quaking aspen | 708, 709, 710, 711 | B00BEHW999 | Behre's Hyperbola |
| black cottonwood | All Region 6 | 616BEHW747 | Behre's Hyperbola |
| black cottonwood | 708, 709, 710, 711 | B00BEHW747 | Behre's Hyperbola |
| Oregon white oak | All Region 6 | 616BEHW815 | Behre's Hyperbola |
| Oregon white oak | 708, 709, 710, 711 | B00BEHW800 | Behre's Hyperbola |
| western juniper | All Region 6 | 616BEHW064 | Behre's Hyperbola |
| western juniper | 708, 709, 710, 711 | B00BEHW242 | Behre's Hyperbola |
| subalpine larch | All Region 6 | 616BEHW072 | Behre's Hyperbola |
| subalpine larch | 708, 709, 710, 711 | B00BEHW073 | Behre's Hyperbola |
| whitebark pine | All Region 6 | 616BEHW101 | Behre's Hyperbola |
| whitebark pine | 708, 709, 710, 711 | B00BEHW119 | Behre's Hyperbola |
| knobcone pine | 615 | I00FW2W260 | Flewelling's Profile Model |
| knobcone pine | 603, 605, 606, 610, 618 | 616BEHW103 | Behre's Hyperbola |
| knobcone pine | 708, 709, 710, 711 | B00BEHW108 | Behre's Hyperbola |
| Pacific yew | All Region 6 | 616BEHW231 | Behre's Hyperbola |
| Pacific yew | 708, 709, 710, 711 | B00BEHW231 | Behre's Hyperbola |
| Pacific dogwood | All Region 6 | 616BEHW492 | Behre's Hyperbola |
| Pacific dogwood | 708, 709, 710, 711 | B00BEHW999 | Behre's Hyperbola |
| hawthorn | All Region 6 | 616BEHW500 | Behre's Hyperbola |
| hawthorn | 708, 709, 710, 711 | B00BEHW999 | Behre's Hyperbola |
| bitter cherry | All Region 6 | 616BEHW768 | Behre's Hyperbola |
| bitter cherry | 708, 709, 710, 711 | B00BEHW999 | Behre's Hyperbola |
| willow | All Region 6 | 616BEHW920 | Behre's Hyperbola |
| willow | 708, 709, 710, 711 | B00BEHW999 | Behre's Hyperbola |
| other | All Region 6 | 616BEHW999 | Behre's Hyperbola |
| other | 708, 709, 710, 711 | B00BEHW999 | Behre's Hyperbola |

**Table 7.0.3 Citations by Volume Model**

|  |  |
| --- | --- |
| **Model Name** | **Citation** |
| Behre's Hyperbola | USFS-R6 Sale Preparation and Valuation Section of Diameter and Volume Procedures - R6 Timber Cruise System. 1978. |
| Curtis Profile Model | Curtis, Robert O, David Bruce, and Caryanne VanCoevering. 1968. Volume and Taper Tables for Red Alder. Pacifc Northwest Forest and Range Exp. Sta. Research Paper PNW-56. |
| Flewelling Profile Model | Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II. |
| Flewelling 2-Point Profile Model | Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II. |

**Table 7.0.4 Species-specific default form class values for the WC variant.**

|  | | **Form Class** | | | | |
| --- | --- | --- | --- | --- | --- | --- |
| **Species Code** | **Behre’s Hyperbola Equation Number** | **0<DBH<11** | **11<=DBH<21** | **21<=DBH<31** | **31<=DBH<41** | **DBH>=41** |
| **Gifford Pinchot NF (603)** | | | | | | |
| SF\* | 616BEHW011 | 97 | 97 | 93 | 92 | 92 |
| WF | 616BEHW015 | 95 | 95 | 91 | 90 | 90 |
| GF | 616BEHW017 | 93 | 93 | 89 | 88 | 88 |
| AF\* | 616BEHW019 | 98 | 98 | 90 | 89 | 89 |
| RF | 616BEHW020 | 87 | 87 | 82 | 80 | 79 |
| NF | 616BEHW022 | 95 | 95 | 90 | 88 | 88 |
| YC | 616BEHW042 | 93 | 93 | 86 | 86 | 84 |
| IC | 616BEHW081 | 81 | 81 | 72 | 71 | 70 |
| ES | 616BEHW093 | 90 | 90 | 86 | 85 | 85 |
| LP | 616BEHW108 | 96 | 96 | 91 | 91 | 90 |
| JP | 616BEHW116 | 92 | 92 | 82 | 80 | 79 |
| SP | 616BEHW117 | 79 | 79 | 76 | 76 | 75 |
| WP | 616BEHW119 | 93 | 93 | 89 | 88 | 88 |
| PP | 616BEHW122 | 89 | 89 | 82 | 80 | 80 |
| DF\* | 616BEHW202 | 90 | 90 | 87 | 86 | 86 |
| RW | 616BEHW211 | 82 | 82 | 79 | 78 | 78 |
| RC | 616BEHW242 | 79 | 79 | 76 | 74 | 74 |
| WH\* | 616BEHW263 | 95 | 95 | 91 | 91 | 90 |
| MH | 616BEHW260 | 96 | 96 | 90 | 89 | 88 |
| BM | 616BEHW312 | 84 | 84 | 82 | 81 | 80 |
| RA | 616BEHW351 | 84 | 84 | 80 | 78 | 78 |
| WA | 616BEHW352 | 82 | 82 | 78 | 76 | 76 |
| PB | 616BEHW375 | 79 | 79 | 76 | 74 | 74 |
| GC | 616BEHW431 | 87 | 87 | 81 | 79 | 79 |
| AS | 616BEHW746 | 85 | 85 | 81 | 80 | 79 |
| CW | 616BEHW747 | 82 | 82 | 80 | 79 | 79 |
| WO | 616BEHW815 | 95 | 95 | 95 | 95 | 95 |
| WJ | 616BEHW064 | 81 | 81 | 81 | 81 | 74 |
| LL | 616BEHW072 | 92 | 92 | 92 | 92 | 92 |
| WB | 616BEHW101 | 96 | 96 | 96 | 96 | 96 |
| KP | 616BEHW103 | 96 | 96 | 89 | 87 | 86 |
| PY | 616BEHW231 | 81 | 81 | 74 | 70 | 70 |
| DG | 616BEHW492 | 91 | 91 | 84 | 82 | 82 |
| HT | 616BEHW500 | 95 | 95 | 95 | 95 | 95 |
| CH | 616BEHW768 | 86 | 86 | 86 | 84 | 84 |
| WI | 616BEHW920 | 92 | 92 | 92 | 92 | 92 |
| OT | 616BEHW999 | 84 | 84 | 80 | 79 | 78 |
| **Mt. Baker - Snoqualmie (605)** | | | | | | |
| SF | 616BEHW011 | 97 | 97 | 92 | 91 | 91 |
| WF | 616BEHW015 | 95 | 95 | 91 | 90 | 90 |
| GF | 616BEHW017 | 86 | 86 | 83 | 82 | 82 |
| AF | 616BEHW019 | 97 | 97 | 97 | 95 | 95 |
| RF | 616BEHW020 | 87 | 87 | 82 | 80 | 79 |
| NF | 616BEHW022 | 88 | 88 | 84 | 82 | 82 |
| YC | 616BEHW042 | 92 | 92 | 85 | 85 | 83 |
| IC | 616BEHW081 | 81 | 81 | 72 | 71 | 70 |
| ES | 616BEHW093 | 90 | 90 | 86 | 85 | 85 |
| LP | 616BEHW108 | 96 | 96 | 91 | 91 | 90 |
| JP | 616BEHW116 | 92 | 92 | 82 | 80 | 79 |
| SP | 616BEHW117 | 79 | 79 | 76 | 76 | 75 |
| WP | 616BEHW119 | 95 | 95 | 91 | 90 | 90 |
| PP | 616BEHW122 | 89 | 89 | 82 | 80 | 80 |
| DF\* | 616BEHW202 | 82 | 82 | 80 | 79 | 78 |
| RW | 616BEHW211 | 82 | 82 | 79 | 78 | 78 |
| RC | 616BEHW242 | 85 | 85 | 81 | 79 | 79 |
| WH\* | 616BEHW263 | 96 | 96 | 93 | 92 | 91 |
| MH | 616BEHW260 | 98 | 98 | 95 | 94 | 93 |
| BM | 616BEHW312 | 84 | 84 | 82 | 81 | 80 |
| RA | 616BEHW351 | 84 | 84 | 80 | 78 | 78 |
| WA | 616BEHW352 | 82 | 82 | 78 | 76 | 76 |
| PB | 616BEHW375 | 79 | 79 | 76 | 74 | 74 |
| GC | 616BEHW431 | 87 | 87 | 81 | 79 | 79 |
| AS | 616BEHW746 | 85 | 85 | 81 | 80 | 79 |
| CW | 616BEHW747 | 82 | 82 | 80 | 79 | 79 |
| WO | 616BEHW815 | 95 | 95 | 95 | 95 | 95 |
| WJ | 616BEHW064 | 81 | 81 | 81 | 81 | 74 |
| LL | 616BEHW072 | 92 | 92 | 92 | 92 | 92 |
| WB | 616BEHW101 | 96 | 96 | 96 | 96 | 96 |
| KP | 616BEHW103 | 96 | 96 | 89 | 87 | 86 |
| PY | 616BEHW231 | 76 | 76 | 69 | 65 | 65 |
| DG | 616BEHW492 | 86 | 86 | 79 | 78 | 78 |
| HT | 616BEHW500 | 95 | 95 | 95 | 95 | 95 |
| CH | 616BEHW768 | 86 | 86 | 86 | 84 | 84 |
| WI | 616BEHW920 | 92 | 92 | 92 | 92 | 92 |
| OT | 616BEHW999 | 84 | 84 | 80 | 79 | 78 |
| **Mount Hood (606)** | | | | | | |
| SF\* | 616BEHW011 | 98 | 98 | 93 | 92 | 92 | |
| WF | 616BEHW015 | 97 | 97 | 94 | 92 | 92 | |
| GF\* | 616BEHW017 | 84 | 84 | 81 | 80 | 79 | |
| AF | 616BEHW019 | 98 | 98 | 95 | 93 | 93 | |
| RF | 616BEHW020 | 87 | 87 | 82 | 80 | 79 | |
| NF\* | 616BEHW022 | 88 | 88 | 84 | 82 | 82 | |
| YC | 616BEHW042 | 92 | 92 | 85 | 85 | 83 | |
| IC | 616BEHW081 | 92 | 92 | 82 | 80 | 79 | |
| ES\* | 616BEHW093 | 87 | 87 | 83 | 82 | 81 | |
| LP\* | 616BEHW108 | 89 | 89 | 84 | 84 | 83 | |
| JP | 616BEHW116 | 92 | 92 | 82 | 80 | 79 | |
| SP | 616BEHW117 | 79 | 79 | 76 | 76 | 75 | |
| WP | 616BEHW119 | 93 | 93 | 89 | 88 | 88 | |
| PP\* | 616BEHW122 | 92 | 92 | 85 | 84 | 83 | |
| DF\* | 616BEHW202 | 83 | 83 | 81 | 80 | 79 | |
| RW | 616BEHW211 | 82 | 82 | 79 | 78 | 78 | |
| RC | 616BEHW242 | 85 | 85 | 81 | 79 | 79 | |
| WH\* | 616BEHW263 | 86 | 86 | 83 | 82 | 82 | |
| MH | 616BEHW260 | 84 | 84 | 79 | 78 | 77 | |
| BM | 616BEHW312 | 84 | 84 | 82 | 81 | 80 | |
| RA | 616BEHW351 | 84 | 84 | 80 | 78 | 78 | |
| WA | 616BEHW352 | 82 | 82 | 78 | 76 | 76 | |
| PB | 616BEHW375 | 79 | 79 | 76 | 74 | 74 | |
| GC | 616BEHW431 | 87 | 87 | 81 | 79 | 79 | |
| AS | 616BEHW746 | 85 | 85 | 81 | 80 | 79 | |
| CW | 616BEHW747 | 82 | 82 | 80 | 79 | 79 | |
| WO | 616BEHW815 | 95 | 95 | 95 | 95 | 95 | |
| WJ | 616BEHW064 | 81 | 81 | 81 | 81 | 74 | |
| LL | 616BEHW072 | 92 | 92 | 92 | 92 | 92 | |
| WB | 616BEHW101 | 96 | 96 | 96 | 96 | 96 | |
| KP | 616BEHW103 | 96 | 96 | 89 | 87 | 86 | |
| PY | 616BEHW231 | 81 | 81 | 74 | 70 | 70 | |
| DG | 616BEHW492 | 86 | 86 | 79 | 78 | 78 | |
| HT | 616BEHW500 | 95 | 95 | 95 | 95 | 95 | |
| CH | 616BEHW768 | 86 | 86 | 86 | 84 | 84 | |
| WI | 616BEHW920 | 92 | 92 | 92 | 92 | 92 | |
| OT | 616BEHW999 | 84 | 84 | 80 | 79 | 78 | |
| **Rogue River (610)** | | | | | | |
| SF | 616BEHW011 | 86 | 86 | 81 | 80 | 80 | |
| WF\* | 616BEHW015 | 86 | 86 | 83 | 82 | 82 | |
| GF | 616BEHW017 | 86 | 86 | 83 | 82 | 82 | |
| AF | 616BEHW019 | 94 | 94 | 87 | 85 | 85 | |
| RF | 616BEHW020 | 90 | 90 | 84 | 82 | 81 | |
| NF | 616BEHW022 | 87 | 87 | 82 | 81 | 80 | |
| YC | 616BEHW042 | 85 | 85 | 78 | 78 | 76 | |
| IC | 616BEHW081 | 85 | 85 | 75 | 74 | 73 | |
| ES | 616BEHW093 | 86 | 86 | 82 | 81 | 80 | |
| LP | 616BEHW108 | 82 | 82 | 78 | 78 | 76 | |
| JP | 616BEHW116 | 93 | 93 | 83 | 81 | 80 | |
| SP | 616BEHW117 | 84 | 84 | 81 | 81 | 80 | |
| WP | 616BEHW119 | 85 | 85 | 82 | 81 | 80 | |
| PP\* | 616BEHW122 | 89 | 89 | 82 | 80 | 80 | |
| DF\* | 616BEHW202 | 84 | 84 | 82 | 81 | 80 | |
| RW | 616BEHW211 | 76 | 76 | 74 | 73 | 73 | |
| RC | 616BEHW242 | 79 | 79 | 76 | 74 | 74 | |
| WH | 616BEHW263 | 82 | 82 | 79 | 78 | 77 | |
| MH | 616BEHW260 | 83 | 83 | 78 | 77 | 76 | |
| BM | 616BEHW312 | 81 | 81 | 80 | 79 | 78 | |
| RA | 616BEHW351 | 81 | 81 | 78 | 76 | 76 | |
| WA | 616BEHW352 | 84 | 84 | 80 | 79 | 79 | |
| PB | 616BEHW375 | 79 | 79 | 76 | 74 | 74 | |
| GC | 616BEHW431 | 84 | 84 | 78 | 76 | 76 | |
| AS | 616BEHW746 | 81 | 81 | 78 | 77 | 76 | |
| CW | 616BEHW747 | 80 | 80 | 78 | 77 | 77 | |
| WO | 616BEHW815 | 89 | 89 | 89 | 89 | 89 | |
| WJ | 616BEHW064 | 95 | 95 | 95 | 95 | 86 | |
| LL | 616BEHW072 | 95 | 95 | 95 | 95 | 86 | |
| WB | 616BEHW101 | 92 | 92 | 92 | 92 | 87 | |
| KP | 616BEHW103 | 82 | 82 | 76 | 74 | 73 | |
| PY | 616BEHW231 | 98 | 98 | 88 | 84 | 84 | |
| DG | 616BEHW492 | 85 | 85 | 78 | 76 | 76 | |
| HT | 616BEHW500 | 95 | 95 | 95 | 95 | 95 | |
| CH | 616BEHW768 | 79 | 79 | 79 | 77 | 77 | |
| WI | 616BEHW920 | 98 | 98 | 98 | 98 | 98 | |
| OT | 616BEHW999 | 79 | 79 | 76 | 74 | 74 | |
| **Umpqua (615)** | | | | | | |
| SF | 616BEHW011 | 94 | 94 | 89 | 88 | 87 |
| WF\* | 616BEHW015 | 92 | 92 | 88 | 87 | 87 |
| GF | 616BEHW017 | 92 | 92 | 88 | 87 | 87 |
| AF | 616BEHW019 | 97 | 97 | 97 | 95 | 95 |
| RF\* | 616BEHW020 | 97 | 97 | 91 | 89 | 88 |
| NF | 616BEHW022 | 94 | 94 | 89 | 87 | 87 |
| YC | 616BEHW042 | 76 | 76 | 70 | 70 | 69 |
| IC\* | 616BEHW081 | 76 | 76 | 68 | 66 | 66 |
| ES\* | 616BEHW093 | 97 | 97 | 93 | 91 | 91 |
| LP\* | 616BEHW108 | 96 | 96 | 91 | 91 | 90 |
| JP | 616BEHW116 | 94 | 94 | 84 | 82 | 81 |
| SP | 616BEHW117 | 82 | 82 | 79 | 79 | 78 |
| WP | 616BEHW119 | 86 | 86 | 83 | 82 | 82 |
| PP\* | 616BEHW122 | 90 | 90 | 83 | 81 | 81 |
| DF\* | 616BEHW202 | 84 | 84 | 82 | 81 | 80 |
| RW | 616BEHW211 | 82 | 82 | 79 | 78 | 78 |
| RC\* | 616BEHW242 | 79 | 79 | 76 | 74 | 74 |
| WH\* | 616BEHW263 | 96 | 96 | 93 | 92 | 91 |
| MH\* | 616BEHW260 | 90 | 90 | 84 | 83 | 82 |
| BM | 616BEHW312 | 85 | 85 | 83 | 82 | 81 |
| RA | 616BEHW351 | 85 | 85 | 81 | 79 | 79 |
| WA | 616BEHW352 | 82 | 82 | 78 | 76 | 76 |
| PB | 616BEHW375 | 79 | 79 | 76 | 74 | 74 |
| GC | 616BEHW431 | 87 | 87 | 81 | 79 | 79 |
| AS | 616BEHW746 | 85 | 85 | 81 | 80 | 79 |
| CW | 616BEHW747 | 83 | 83 | 81 | 80 | 80 |
| WO | 616BEHW815 | 95 | 95 | 95 | 95 | 95 |
| WJ | 616BEHW064 | 92 | 92 | 92 | 92 | 92 |
| LL | 616BEHW072 | 92 | 92 | 92 | 92 | 92 |
| WB | 616BEHW101 | 96 | 96 | 96 | 96 | 96 |
| KP | 616BEHW103 | 96 | 96 | 89 | 87 | 86 |
| PY | 616BEHW231 | 95 | 95 | 86 | 82 | 82 |
| DG | 616BEHW492 | 92 | 92 | 85 | 83 | 83 |
| HT | 616BEHW500 | 95 | 95 | 95 | 95 | 95 |
| CH | 616BEHW768 | 87 | 87 | 87 | 85 | 85 |
| WI | 616BEHW920 | 92 | 92 | 92 | 92 | 92 |
| OT | 616BEHW999 | 79 | 79 | 76 | 74 | 74 |
| **Willamette (618)** | | | | | | |
| SF | 616BEHW011 | 78 | 78 | 74 | 73 | 73 |
| WF | 616BEHW015 | 95 | 95 | 91 | 90 | 90 |
| GF | 616BEHW017 | 76 | 76 | 73 | 72 | 72 |
| AF | 616BEHW019 | 81 | 81 | 75 | 73 | 73 |
| RF | 616BEHW020 | 87 | 87 | 82 | 80 | 79 |
| NF\* | 616BEHW022 | 78 | 78 | 74 | 73 | 72 |
| YC | 616BEHW042 | 69 | 69 | 63 | 63 | 62 |
| IC | 616BEHW081 | 69 | 69 | 61 | 60 | 59 |
| ES | 616BEHW093 | 79 | 79 | 76 | 74 | 74 |
| LP | 616BEHW108 | 82 | 82 | 78 | 78 | 76 |
| JP | 616BEHW116 | 92 | 92 | 82 | 80 | 79 |
| SP | 616BEHW117 | 76 | 76 | 74 | 73 | 73 |
| WP | 616BEHW119 | 78 | 78 | 74 | 73 | 73 |
| PP | 616BEHW122 | 82 | 82 | 76 | 74 | 74 |
| DF\* | 616BEHW202 | 71 | 71 | 69 | 68 | 68 |
| RW | 616BEHW211 | 82 | 82 | 79 | 78 | 78 |
| RC | 616BEHW242 | 63 | 63 | 60 | 59 | 59 |
| WH\* | 616BEHW263 | 75 | 75 | 72 | 72 | 71 |
| MH | 616BEHW260 | 77 | 77 | 72 | 71 | 71 |
| BM | 616BEHW312 | 75 | 75 | 73 | 72 | 71 |
| RA | 616BEHW351 | 77 | 77 | 73 | 72 | 71 |
| WA | 616BEHW352 | 82 | 82 | 78 | 76 | 76 |
| PB | 616BEHW375 | 79 | 79 | 76 | 74 | 74 |
| GC | 616BEHW431 | 87 | 87 | 81 | 79 | 79 |
| AS | 616BEHW746 | 85 | 85 | 81 | 80 | 79 |
| CW | 616BEHW747 | 75 | 75 | 73 | 73 | 72 |
| WO | 616BEHW815 | 95 | 95 | 95 | 95 | 95 |
| WJ | 616BEHW064 | 81 | 81 | 81 | 81 | 74 |
| LL | 616BEHW072 | 92 | 92 | 92 | 92 | 92 |
| WB | 616BEHW101 | 96 | 96 | 96 | 96 | 96 |
| KP | 616BEHW103 | 96 | 96 | 89 | 87 | 86 |
| PY | 616BEHW231 | 76 | 76 | 69 | 65 | 65 |
| DG | 616BEHW492 | 86 | 86 | 79 | 78 | 78 |
| HT | 616BEHW500 | 95 | 95 | 95 | 95 | 95 |
| CH | 616BEHW768 | 86 | 86 | 86 | 84 | 84 |
| WI | 616BEHW920 | 92 | 92 | 92 | 92 | 92 |
| OT | 616BEHW999 | 84 | 84 | 80 | 79 | 78 |

**\*Species whose default volume equation at this location code is not Behre’s Hyperbola (see Table 7.0.2).**

| **BLM Locations:** | | **708** | **709** | | **710** | **711** |
| --- | --- | --- | --- | --- | --- | --- |
| SF | B00BEHW011 | 84 | 82 | 82 | | 74 | |
| WF | B00BEHW015 | 86 | 78 | 76 | | 78 | |
| GF | B00BEHW017 | 84 | 82 | 80 | | 77 | |
| AF | B00BEHW015 | 82 | 78 | 82 | | 75 | |
| RF | B00BEHW021 | 75 | 78 | 76 | | 78 | |
|  | B00BEHW999 | 80 | 78 | 76 | | 70 | |
| NF | B00BEHW022 | 84 | 78 | 76 | | 75 | |
| YC | B00BEHW042 | 73 | 78 | 70 | | 67 | |
| IC | B00BEHW081 | 73 | 70 | 66 | | 66 | |
| ES | B00BEHW093 | 77 | 78 | 76 | | 74 | |
| LP | B00BEHW108 | 68 | 78 | 80 | | 68 | |
| JP | B00BEHW116 | 75 | 78 | 80 | | 70 | |
| SP | B00BEHW117 | 75 | 72 | 80 | | 76 | |
| WP | B00BEHW119 | 76 | 78 | 80 | | 76 | |
| PP | B00BEHW122 | 82 | 70 | 80 | | 80 | |
| DF | B02BEHW202 | 80 | 78 | 72 | | 76 | |
| RW | B00BEHW211 | 75 | 78 | 76 | | 70 | |
| RC | B00BEHW242 | 76 | 72 | 72 | | 70 | |
| WH | B00BEHW260 | 88 | 80 | 82 | | 78 | |
| MH | B00BEHW260 | 72 | 78 | 76 | | 70 | |
| BM | B00BEHW312 | 84 | 78 | 82 | | 72 | |
| RA | B00BEHW351 | 88 | 80 | 82 | | 72 | |
| WA | B00BEHW361 | 70 | 78 | 76 | | 72 | |
| PB | B00BEHW999 | 70 | 78 | 76 | | 70 | |
| GC | B00BEHW431 | 75 | 80 | 76 | | 72 | |
| AS | B00BEHW999 | 75 | 78 | 76 | | 72 | |
| CW | B00BEHW747 | 74 | 82 | 76 | | 72 | |
| WO | B00BEHW800 | 70 | 78 | 76 | | 66 | |
| WJ | B00BEHW242 | 60 | 78 | 76 | | 70 | |
| LL | B00BEHW073 | 75 | 78 | 76 | | 70 | |
| WB | B00BEHW119 | 82 | 78 | 80 | | 73 | |
| KP | B00BEHW108 | 82 | 78 | 80 | | 68 | |
| PY | B00BEHW231 | 60 | 78 | 76 | | 72 | |
| DG | B00BEHW999 | 70 | 78 | 76 | | 69 | |
| HT | B00BEHW999 | 70 | 78 | 76 | | 70 | |
| CH | B00BEHW999 | 75 | 78 | 76 | | 68 | |
| WI | B00BEHW999 | 75 | 78 | 76 | | 72 | |
|  | B00BEHW999 | 74 | 78 | 76 | | 70 | |
| OT | B00BEHW999 | 74 | 78 | 76 | | 70 | |

# 8.0 Fire and Fuels Extension (FFE-FVS)

The Fire and Fuels Extension to the Forest Vegetation Simulator (FFE-FVS) (Reinhardt and Crookston 2003) integrates FVS with models of fire behavior, fire effects, and fuel and snag dynamics. This allows users to simulate various management scenarios and compare their effect on potential fire hazard, surface fuel loading, snag levels, and stored carbon over time. Users can also simulate prescribed burns and wildfires and get estimates of the associated fire effects such as tree mortality, fuel consumption, and smoke production, as well as see their effect on future stand characteristics. FFE-FVS, like FVS, is run on individual stands, but it can be used to provide estimates of stand characteristics such as canopy base height and canopy bulk density when needed for landscape-level fire models.

For more information on FFE-FVS and how it is calibrated for the WC variant, refer to the updated FFE-FVS model documentation (Rebain, comp. 2010) available on the FVS website.

# 9.0 Insect and Disease Extensions

FVS Insect and Pathogen models for dwarf mistletoe and western root disease have been developed for the WC variant through the participation and contribution of various organizations led by Forest Health Protection. These models are currently maintained by the Forest Management Service Center and regional Forest Health Protection specialists. Additional details regarding each model may be found in chapter 8 of the Essential FVS Users Guide (Dixon 2002).

# 10.0 Literature Cited

Alexander, R.R., Tackle, D., and Dahms, W.G. 1967. Site Indices for Engelmann Spruce. Res. Pap. RM-32. Forest Service, Rocky Mountain Research Station.

Arney, J. D. 1985. A modeling strategy for the growth projection of managed stands. Canadian Journal of Forest Research. 15(3):511-518.

Barrett, James W. 1978. Height growth and site index curves for managed, even-aged stands of ponderosa pine in the Pacific Northwest. Res. Pap. PNW-232. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 14 p.

Bechtold, William A. 2004. Largest-crown-diameter Prediction Models for 53 Species in the Western United States. WJAF. Forest Service. 19(4): pp 241-245.

Boe, Kenneth N. 1975. Natural seedlings and sprouts after regeneration cuttings in old-growth redwood. PSW-111. Berkeley, CA: U.S. Department of Agriculture, Forest Service, Pacific Southwest Forest and Range Experiment Station. 17 p.

Bjorkbom, John C. 1972. Stand changes in the first 10 years after seedbed preparation for paper birch. USDA Forest Service, Research Paper NE-238. Northeastern Forest Experiment Station, Upper Darby, PA. 10 p.

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

Curtis, Robert O, David Bruce, and Caryanne VanCoevering. 1968. Volume and Taper Tables for Red Alder. Pacifc Northwest Forest and Range Exp. Sta. Research Paper PNW-56.

Curtis, Robert O.; Herman, Francis R.; DeMars, Donald J. 1974. Height growth and site index for Douglas-fir in high-elevation forests of the Oregon-Washington Cascades. Forest Science 20(4):307-316.

Curtis, Robert O.; Diaz, Nancy M.; Clendenen, Gary W. 1990. Height growth and site index curves for western white pine in the Cascade Range of Washington and Oregon. Res. Pap. PNW-423. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 14 p.

Dahms, Walter. 1964. Gross and net yield tables for lodgepole pine. Res. Pap. PNW-8. Portland, OR: Pacific Northwest Forest and Range Experiment Station. 14 p.

Dixon, G. E. 1985. Crown ratio modeling using stand density index and the Weibull distribution. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 13p.

Dixon, Gary E. comp. 2002 (revised frequently). Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U.S. Department of Agriculture, Forest Service, Forest Management Service Center.

Dolph, K. Leroy. 1991. Polymorphic site index curves for red fir in California and southern Oregon. Res. Paper PSW-206. Berkeley, CA: Forest Service, Pacific Southwest Forest and Range Experiment Station. 18p.

Donnelly, Dennis M., Betters, David R., Turner, Matthew T., and Gaines, Robert E. 1992. Thinning even-aged forest stands: Behavior of singular path solutions in optimal control analyses. Res. Pap. RM-307. Fort Collins, CO: Forest Service. Rocky Mountain Forest and Range Experiment Station. 12 p.

Donnelly, Dennis. 1996. Internal document on file. Data provided from Region 6. Fort Collins, CO: Forest Service.

Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II.

Fryer, Janet L. 2008. Lithocarpus densiflorus. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Gom, L. A., & Rood, S. B. (2000). Fire induces clonal sprouting of riparian cottonwoods. Canadian Journal of Botany, 77(11), 1604-1616.

Gould, Peter and Harrington, Constance. 2009. Draft - Revising the Pacific Northwest Coast Variant of the Forest Vegetation Simulator (FVS-PN) for Oregon White Oak. USDA Forest Service, Pacific Northwest Research Station. 25 p.

Gould, Peter J.; Harrington, Constance A. 2013. Making the little things count: modeling the development of understory trees in complex stands. In: Anderson, Paul D.; Ronnenberg, Kathryn L., eds. Density management for the 21st century: west side story. Gen. Tech. Rep. PNW-GTR-880. Portland, OR: U.S. Department of Agriculture, Forest Service, Pacifi c Northwest Research Station: 59–70.Hall, Frederick C. 1983. Growth basal area: a field method for appraising forest site productivity for stockability. Can. J. For. Res. 13:70-77.

Griffith, Randy Scott. 1992. Sequoia sempervirens. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Gucker, Corey L. 2005. Cornus nuttallii. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Gucker, Corey L. 2007. Quercus garryana. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Hall, Frederick C. 1983. Growth basal area: a field method for appraising forest site productivity for stockability. Can. J. For. Res. 13:70-77.

Hamilton, D. A., Jr. 1986. A logistic model of mortality in thinned and unthinned mixed conifer stands of northern Idaho. Forest Science 32(4): 989-1000.

Harrington, Constance A. 1984. Factors influencing initial sprouting of red alder. Canadian Journal of Forest Research. 14: 357-361.

Harrington, Constance A.; Curtis, Robert O. 1986. Height growth and site index curves for red alder. Res. Pap. PNW-358. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 14 p.

Harrington, T. B., Tappeiner, I. I., John, C., & Warbington, R. 1992. Predicting crown sizes and diameter distributions of tanoak, Pacific madrone, and giant chinkapin sprout clumps. Western Journal of Applied Forestry, 7(4), 103-108.

Herman, Francis R.; Curtis, Robert O.; DeMars, Donald J. 1978. Height growth and site index estimates for noble fir in high-elevation forests of the Oregon-Washington Cascades. Res. Pap. PNW-243. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 15 p.

Hoyer, Gerald E.; Herman, Francis R. 1989. Height-age and site index curves for Pacific silver fir in the Pacific Northwest. Res. Pap. PNW-418. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 33 p.

Hutnik, Russell J., and Frank E. Cunningham. 1965. Paper birch (Betula papyrifera Marsh.). In Silvics of forest trees of the United States. p. 93-98. H. A. Fowells, comp. U.S. Department of Agriculture, Agriculture Handbook 271. Washington, DC.

Keyser, C.E. 2001. Quaking Aspen Sprouting in Western FVS Variants: A New Approach. Unpublished Manuscript.

Krajicek, J.; Brinkman, K.; Gingrich, S. 1961. Crown competition – a measure of density. Forest Science. 7(1):35-42

Krumland, B. and Eng, H., 2005. Site Index Systems for Major Young-Growth Forest and Woodland Species in Northern California. California Forestry Report 4.

Leedge, T. A., & Hickey, W. O. 1971. Sprouting of northern Idaho shrubs after prescribed burning. The Journal of Wildlife Management, 508-515.

Means, J.F., M.H. Campbell, and G.P. Johnson. 1986. Preliminary height growth and site index curves for mountain hemlock. FIR Report, Vol 10, No.1. Corvallis, OR: Oregon State University.

Minore, D., & Weatherly, H. G. (1996). Stump sprouting of Pacific yew. General Technical Report. PNW-GTR-378. Portland, Or.: U.S. Dept. of Agriculture, Pacific Northwest Research Station.

Morgan, P., & Neuenschwander, L. F. 1988. Shrub response to high and low severity burns following clearcutting in northern Idaho. Western Journal of Applied Forestry, 3(1), 5-9.

Mueggler, W. F. 1965. Ecology of seral shrub communities in the cedar-hemlock zone of northern Idaho. Ecological Monographs, 165-185.

Neal, Robert L., Jr. 1967. Sprouting of old-growth redwood stumps--first year after logging. USDA Forest Service, Research Note PSW-137. Pacific Southwest Forest and Range Experiment Station, Berkeley, CA. 8 p.

Paine, D.P., and Hann, D.W. 1982. Maximum Crown Width Equations for Southwestern Oregon Tree Species. Res. Pap. 46. Corvallis, OR: Oregon State University, Forest Research Laboratory. 20 p.

Pillsbury, Norman H.; Kirkley, Michael L. 1984. Equations for total, wood, and saw-log volume for thirteen California hardwoods. Res. Note PNW-414. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 52 p.

Rebain, Stephanie A. comp. 2010 (revised frequently). The Fire and Fuels Extension to the Forest Vegetation Simulator: Updated Model Documentation. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 379 p.

Reinhardt, Elizabeth; Crookston, Nicholas L. (Technical Editors). 2003. The Fire and Fuels Extension to the Forest Vegetation Simulator. Gen. Tech. Rep. RMRS-GTR-116. Ogden, UT: U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station. 209 p.

Roy, D. F. 1955. Hardwood sprout measurements in northwestern California. Forest Research Notes. California Forest and Range Experiment Station, (95).

Stage, A. R. 1973. Prognosis Model for stand development. Res. Paper INT-137. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 32p.

Steinberg, Peter D. 2001. Populus balsamifera subsp. trichocarpa. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Tappeiner, I. I., John, C., Zasada, J., Huffman, D., & Maxwell, B. D. 1996. Effects of cutting time, stump height, parent tree characteristics, and harvest variables on development of bigleaf maple sprout clumps. Western Journal of Applied Forestry, 11(4), 120-124.

Uchytil, Ronald J. 1989. Alnus rubra. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory.

USFS-R6 Sale Preparation and Valuation Section of Diameter and Volume Procedures - R6 Timber Cruise System. 1978.

-----. 2009(revised frequently). Volume Estimator Library Equations. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

Walters, David K., Hann, David W., Clyde, Merlise A. 1985. Equations and tables predicting gross total stem volumes in cubic feet for six major conifers of southwest Oregon. Res. Bull. No. 50. Corvallis, OR: Forest Research Laboratory, College of Forestry, Oregon State University. 36p.

Westfall, James A.; Coulston, John W.; Gray, Andrew N.; Shaw, John D.; Radtke, Philip J.; Walker, David M.; Weiskittel, Aaron R.; MacFarlane, David W.; Affleck, David L.R.; Zhao, Dehai; Temesgen, Hailemariam; Poudel, Krishna P.; Frank, Jereme M.; Prisley, Stephen P.; Wang, Yingfang; Sánchez Meador, Andrew J.; Auty, David; Domke, Grant M. 2024. A national-scale tree volume, biomass, and carbon modeling system for the United States. Gen. Tech. Rep. WO-104. Washington, DC: U.S. Department of Agriculture, Forest Service. 37 p.

Wiley, Kenneth N. 1978. Site index tables for western hemlock in the Pacific Northwest. For. Pap. No. 17. Centralia, WA: Weyerhaeuser Forestry Research Center. 28 p.

Wilkinson, W. H., McDonald, P. M., & Morgan, P. 1997. Tanoak sprout development after cutting and burning in a shade environment. Western Journal of Applied Forestry, 12(1), 21-26.

Wykoff, W. R. 1990. A basal area increment model for individual conifers in the northern Rocky Mountains. For. Science 36(4): 1077-1104.

Wykoff, William R., Crookston, Nicholas L., and Stage, Albert R. 1982. User’s guide to the Stand Prognosis Model. Gen. Tech. Rep. INT-133. Ogden, UT: Forest Service, Intermountain Forest and Range Experiment Station. 112p.

# 11.0 Appendices

## 11.1 Appendix A: Distribution of Data Samples

Data used to develop the WC variant come from the following sources, listed along with each principal reference governing their collection.

Gifford Pinchot National Forest

1981 Inventory (USDA Forest Service 1981)

Mt. Baker-Snoqualmie National Forest

1976 Inventory (USDA Forest Service 1976)

1987 Managed Stand Survey (USDA Forest Service 1987)

Mt. Hood National Forest

1970 Inventory (USDA Forest Service 1968)

1971 Inventory (USDA Forest Service 1971)

1986 Inventory (USDA Forest Service 1986)

1987 Managed Stand Survey (USDA Forest Service 1987)

Rogue River National Forest

1980 Inventory (USDA Forest Service 1980)

Umpqua National Forest

1968, 1969 Inventories (USDA Forest Service 1968)

1980 Inventory (USDA Forest Service 1980)

Willamette National Forest

1971 Inventory (USDA Forest Service 1971)

1981 Inventory (USDA Forest Service 1981)

1987 Managed Stand Survey (USDA Forest Service 1987)

The following tables contain distribution information of data used to fit species relationships in this variant’s geographic region (information from original variant overview).

**Table 11.1.1 Species codes and names used in the WC variant.**

| **Common Name** | **FIA Code** | **Scientific Name** | **Number of Observations** | **Comments**  **(see below)** |
| --- | --- | --- | --- | --- |
| Pacific silver fir | 011 | *Abies amabilis* | 3878 | \* |
| white fir | 015 | *Abies concolor* | 1044 |  |
| grand fir | 017 | *Abies grandis* | 504 | \* |
| subalpine fir | 019 | *Abies lasiocarpa* | 227 | \* |
| California red fir | 020 | *Abies magnifica* | 44 | \* A |
| Shasta red fir | 021 | *Abies xshastensis* | 515 | \* a |
| noble fir | 022 | *Abies procera* | 1555 | \* |
| Alaska cedar | 042 | *Callitropsis nootkatensis* | 112 | \* B |
| western larch | 073 | *Laryx Occidentalis* | 74 | \* b |
| incense cedar | 081 | *Libocedrus decurrens* | 296 |  |
| Engelmann spruce | 093 | *Picea engelmannii* | 209 | \* C |
| lodgepole pine | 108 | *Pinus contorta* | 2 | \* c |
| Sitka spruce | 108 | *Picea sitchensis* | 898 | \* |
| Jeffrey pine | 116 | *Pinus jeffreyi* | 0 |  |
| sugar pine | 117 | *Pinus lambertiana* | 240 |  |
| western white pine | 119 | *Pinus monticola* | 414 | \* |
| ponderosa pine | 122 | *Pinus ponderosa* | 432 | \* |
| Douglas‑fir | 202 | *Pseudotsuga menziesii* | 17250 | \* |
| redwood | 211 | *Sequoia sempervirens* | 0 |  |
| western redcedar | 242 | *Thuja plicata* | 1354 | \* |
| western hemlock | 263 | *Tsuga heterophylla* | 5008 | \* |
| mountain hemlock | 264 | *Tsuga mertensiana* | 3019 | \* |
| bigleaf maple | 312 | *Acer macrophyllum* | 89 | \* |
| red alder | 351 | *Alnus rubra* | 125 | \* |
| white alder | 352 | *Alnus rhombifolia* | 2 | D |
| Pacific madrone | 361 | *Arbutus menziesii* | 70 | d |
| paper birch | 375 | *Betula papyrifera var. commutata* | 0 |  |
| giant chinquapin | 431 | *Castanopsis chrysophylla* | 62 | E |
| Tanoak | 631 | *Lithocarpus densiflorus* | 1 | e |
| quaking aspen | 746 | *Populus tremuloides* | 0 |  |
| black cottonwood | 747 | *Populus trichocarpa* | 8 |  |
| Oregon white oak | 815 | *Quercus garryana* | 12 | F |
| California black oak | 818 | *Quercus kelloggi* | 4 | f |
| juniper | 064 | *Juniperus occidentalis* | 0 |  |
| subalpine larch | 072 | *Larix lyallii* | 0 |  |
| whitebark pine | 101 | *Pinus albicaulis* | 2 |  |
| knobcone pine | 103 | *Pinus attenuata* | 0 |  |
| Pacific yew | 231 | *Taxus brevifolia* | 5 |  |
| Pacific dogwood | 492 | *Cornus nuttallii* | 0 |  |
| hawthorn | 500 | *Crataegus spp.* | 0 |  |
| bitter cherry | 768 | *Prunus emarginata* | 0 |  |
| willow | 920 | *Salix spp.* | 0 |  |
| other | 999 |  |  |  |

A “\*” marks a species whose large tree growth relationships were fitted specifically for either the WC or PN variant.

Pairs of letters, for example “A” and “a” indicate two species of the same variety that are combined into one code in the variant. The capital letter marks which species of the two the variant assumes.

**Table 11.1.2 Distribution of samples by National Forest (expressed in percent of total observations for each species).**

| **Species** | **National Forest** | | | | | |
| --- | --- | --- | --- | --- | --- | --- |
| **Gifford Pinchot** | **Mt. Baker/**  **Snoqualmie** | **Mount Hood** | **Rogue River** | **Umpqua** | **Willamette** |
| Pacific silver fir | 12 | 24 | 33 | 0 | 4 | 28 |
| grand fir | 4 | 0 | 35 | 28 | 21 | 11 |
| subalpine fir | 28 | 12 | 18 | 1 | 23 | 19 |
| California red fir/  Shasta red fir | - | - | - | 75 | 25 | 0 |
| noble fir | 4 | 3 | 32 | 2 | 17 | 43 |
| Engelmann spruce | 4 | 1 | 13 | 17 | 36 | 29 |
| Alaska cedar | 7 | 46 | 19 | - | - | 28 |
| lodgepole pine | 5 | - | 30 | 8 | 44 | 13 |
| ponderosa pine | 2 | - | 67 | 14 | 15 | 2 |
| western white pine | 2 | 0 | 9 | 11 | 46 | 33 |
| Douglas-fir | 9 | 5 | 20 | 4 | 23 | 40 |
| western redcedar | 8 | 24 | 28 | - | 3 | 37 |
| western hemlock | 8 | 24 | 31 | 1 | 6 | 30 |
| mountain hemlock | 3 | 7 | 16 | 3 | 22 | 49 |
| Pacific madrone | 8 | 23 | 7 | - | 9 | 54 |
| red alder | 11 | 23 | 52 | - | 6 | 7 |
| miscellaneous hardwood | 3 | 4 | 35 | 3 | 48 | 7 |

**Table 11.1.3 Distribution of samples for DBH (expressed in percent of total observations for each species).**

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **DBH Range** | | | | | | | | | |
| **0-10** | **11-20** | **21-30** | **31-40** | **41-50** | **51-60** | **61-70** | **71-80** | **81-90** | **90+** |
| Pacific silver fir | 29 | 39 | 21 | 9 | 3 | 0 | - | - | - | - |
| grand fir | 25 | 39 | 22 | 12 | 2 | 0 | - | 0 | 0 | - |
| subalpine fir | 30 | 46 | 21 | 3 | 1 | - | - | - | - | - |
| California red fir/  Shasta red fir | 19 | 24 | 25 | 18 | 10 | 4 | 1 | - | - | - |
| noble fir | 15 | 33 | 27 | 17 | 7 | 1 | 0 | - | - | - |
| Engelmann spruce | 17 | 21 | 22 | 17 | 10 | 3 | 1 | 1 | - | - |
| Alaska cedar | 21 | 30 | 21 | 17 | 8 | 2 | 1 | - | - | - |
| lodgepole pine | 52 | 48 | 0 | 0 | - | - | - | - | - | - |
| ponderosa pine | 16 | 20 | 29 | 25 | 10 | 1 | 0 | - | - | - |
| western white pine | 11 | 24 | 31 | 18 | 10 | 6 | 1 | 1 | - | - |
| Douglas-fir | 11 | 26 | 24 | 18 | 12 | 7 | 2 | 1 | 0 | 0 |
| western redcedar | 15 | 25 | 21 | 15 | 9 | 6 | 5 | 3 | 1 | 1 |
| western hemlock | 20 | 33 | 25 | 14 | 6 | 2 | 0 | 0 | - | - |
| mountain hemlock | 20 | 41 | 29 | 8 | 1 | 0 | 0 | - | - | - |
| Pacific madrone | 48 | 44 | 7 | 1 | - | - | - | - | - | - |
| red alder | 28 | 63 | 9 | - | - | - | - | - | - | - |
| miscellaneous hardwood | 51 | 33 | 8 | 7 | - | - | - | - | 0 | - |

**Table 11.1.4 Distribution of samples by diameter growth (expressed in percent for each species).**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **Diameter Growth (inches/10 years)** | | | | | | | | |
| **<1.0** | **1.1-2.0** | **2.1-3.0** | **3.1-4.0** | **4.1-5.0** | **5.1-6.0** | **6.1-7.0** | **7.1-8.0** | **8.0+** |
| **Pacific silver fir** | **75** | **20** | **4** | **1** | **0** | **-** | **0** | **-** | **-** |
| **grand fir** | **51** | **34** | **11** | **3** | **1** | **0** | **-** | **-** | **0** |
| **subalpine fir** | **77** | **20** | **2** | **0** | **-** | **-** | **-** | **-** | **-** |
| **California red fir**/  Shasta red fir | **53** | **36** | **9** | **2** | **1** | **-** | **-** | **-** | **-** |
| **noble fir** | **51** | **34** | **10** | **3** | **2** | **1** | **0** | **-** | **0** |
| **Engelmann spruce** | **73** | **22** | **3** | **1** | **0** | **-** | **0** | **-** | **-** |
| **Alaska cedar** | **80** | **15** | **3** | **-** | **1** | **-** | **-** | **-** | **-** |
| **lodgepole pine** | **83** | **15** | **2** | **0** | **0** | **-** | **-** | **-** | **-** |
| **ponderosa pine** | **67** | **20** | **7** | **3** | **1** | **1** | **0** | **-** | **-** |
| **western white pine** | **68** | **25** | **5** | **2** | **0** | **-** | **-** | **-** | **-** |
| **Douglas-fir** | **66** | **25** | **5** | **2** | **1** | **1** | **0** | **0** | **0** |
| **western redcedar** | **60** | **31** | **7** | **2** | **1** | **0** | **-** | **-** | **-** |
| **western hemlock** | **71** | **23** | **4** | **1** | **0** | **0** | **0** | **-** | **0** |
| **mountain hemlock** | **89** | **10** | **1** | **0** | **0** | **-** | **-** | **-** | **-** |
| **Pacific madrone** | **55** | **25** | **13** | **6** | **1** | **-** | **-** | **-** | **-** |
| **red alder** | **23** | **49** | **22** | **6** | **-** | **1** | **-** | **-** | **-** |
| **miscellaneous hardwood** | **12** | **4** | **1** | **0** | **-** | **-** | **-** | **-** |  |

**Table 11.1.5 Distribution of samples by total stand basal area per acre, (expressed in percent for each species).**

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **Basal Area** | | | | | | | |
| **0-50** | **51-150** | **151-250** | **251-350** | **351-450** | **451-550** | **551-650** | **651+** |
| Pacific silver fir | 0 | 7 | 29 | 40 | 19 | 5 | 1 | 0 |
| grand fir | 1 | 15 | 32 | 31 | 17 | 5 | 1 | - |
| subalpine fir | - | 14 | 41 | 34 | 8 | 3 | - | - |
| California red fir/  Shasta red fir | 1 | 11 | 21 | 32 | 30 | 6 | - | - |
| noble fir | 0 | 7 | 29 | 35 | 24 | 4 | 1 | 0 |
| Engelmann spruce | 0 | 10 | 29 | 37 | 18 | 4 | 2 | - |
| Alaska cedar | - | 9 | 25 | 46 | 10 | 4 | 5 | - |
| lodgepole pine | 2 | 35 | 50 | 9 | 4 | 0 | - | - |
| ponderosa pine | 4 | 36 | 40 | 15 | 6 | - | - | - |
| western white pine | 1 | 14 | 42 | 27 | 13 | 4 | - | - |
| Douglas-fir | 0 | 8 | 29 | 34 | 20 | 6 | 2 | 0 |
| western redcedar | 0 | 4 | 25 | 36 | 23 | 9 | 2 | 2 |
| western hemlock | 0 | 5 | 26 | 39 | 21 | 8 | 1 | 0 |
| mountain hemlock | 0 | 8 | 35 | 40 | 15 | 3 | 0 | - |
| Pacific madrone | 1 | 24 | 40 | 25 | 8 | 2 | - | - |
| red alder | - | 21 | 39 | 28 | 10 | 2 | - | - |
| miscellaneous hardwood | 1 | 21 | 46 | 22 | 9 | 2 | - | - |

**Table 11.1.6 Distribution of samples by Crown Ratio group (expressed in percent of total observations for each species).**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **Crown Code (1=1-10,2=11-20,…,9=81-100)** | | | | | | | | |
| **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** |
| Pacific silver fir | 2 | 9 | 19 | 24 | 20 | 14 | 7 | 4 | 1 |
| grand fir | 1 | 8 | 23 | 22 | 19 | 13 | 8 | 5 | 2 |
| subalpine fir | 1 | 7 | 12 | 20 | 16 | 18 | 10 | 12 | 5 |
| California red fir/  Shasta red fir | 1 | 8 | 25 | 25 | 22 | 11 | 4 | 3 | 1 |
| noble fir | 1 | 12 | 33 | 27 | 11 | 6 | 4 | 4 | 2 |
| Engelmann spruce | 1 | 6 | 23 | 21 | 19 | 15 | 6 | 7 | 2 |
| Alaska cedar | 3 | 14 | 17 | 19 | 15 | 21 | 9 | 3 | - |
| lodgepole pine | 4 | 15 | 28 | 21 | 13 | 9 | 5 | 3 | 1 |
| ponderosa pine | 2 | 16 | 28 | 23 | 13 | 8 | 5 | 4 | 1 |
| western white pine | 1 | 11 | 27 | 27 | 17 | 9 | 5 | 2 | 1 |
| Douglas-fir | 1 | 10 | 29 | 30 | 16 | 7 | 3 | 3 | 1 |
| western redcedar | 4 | 7 | 16 | 16 | 19 | 17 | 14 | 6 | 2 |
| western hemlock | 2 | 7 | 14 | 21 | 20 | 17 | 12 | 6 | 2 |
| mountain hemlock | 1 | 5 | 16 | 22 | 21 | 16 | 11 | 7 | 2 |
| Pacific madrone | 2 | 16 | 38 | 20 | 12 | 6 | 3 | 2 | - |
| red alder | - | 13 | 38 | 30 | 12 | 2 | 3 | 2 | - |
| miscellaneous hardwood | 2 | 17 | 31 | 28 | 12 | 6 | 2 | 1 | 1 |

**Table 11.1.7 Distribution of samples by Aspect Code (expressed in percent of total observations for each species).**

| **Species** | **Aspect Code** | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **North** | **North-east** | **East** | **South-east** | **South** | **South-west** | **West** | **North-west** | **Level** |
| Pacific silver fir | 19 | 11 | 11 | 8 | 10 | 9 | 12 | 13 | 8 |
| grand fir | 8 | 8 | 8 | 9 | 13 | 15 | 12 | 12 | 15 |
| subalpine fir | 5 | 2 | 11 | 1 | 19 | 13 | 17 | 13 | 19 |
| California red fir/  Shasta red fir | 10 | 16 | 12 | 4 | 9 | 9 | 27 | 9 | 4 |
| noble fir | 12 | 7 | 13 | 8 | 10 | 13 | 19 | 11 | 8 |
| Engelmann spruce | 11 | 5 | 7 | 10 | 12 | 13 | 18 | 8 | 16 |
| Alaska cedar | 27 | 13 | 5 | 1 | 14 | 9 | 7 | 10 | 15 |
| lodgepole pine | 7 | 5 | 4 | 5 | 8 | 12 | 8 | 8 | 44 |
| ponderosa pine | 6 | 6 | 7 | 10 | 24 | 17 | 7 | 5 | 20 |
| western white pine | 12 | 8 | 15 | 7 | 9 | 15 | 13 | 7 | 15 |
| Douglas-fir | 13 | 8 | 9 | 9 | 16 | 12 | 17 | 9 | 8 |
| western redcedar | 16 | 9 | 7 | 6 | 10 | 7 | 17 | 13 | 15 |
| western hemlock | 18 | 11 | 11 | 6 | 11 | 11 | 13 | 11 | 9 |
| mountain hemlock | 18 | 12 | 8 | 2 | 6 | 6 | 15 | 16 | 18 |
| Pacific madrone | 19 | 6 | 1 | 3 | 18 | 8 | 16 | 8 | 21 |
| red alder | 8 | 6 | 10 | 9 | 19 | 10 | 5 | 4 | 30 |
| miscellaneous hardwood | 5 | 9 | 9 | 12 | 17 | 12 | 11 | 7 | 17 |

**Table 11.1.8 Distribution of samples by Slope Code (expressed in percent of total observations for each species).**

| **Species** | **Slope code** | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **< 5** | **6-15** | **16-25** | **26-35** | **36-45** | **46-55** | **56-65** | **66-75** | **76-85** | **> 86** |
| Pacific silver fir | 20 | 18 | 14 | 11 | 10 | 8 | 4 | 2 | 1 | 12 |
| grand fir | 24 | 18 | 15 | 10 | 6 | 6 | 2 | 2 | 0 | 17 |
| subalpine fir | 21 | 21 | 7 | 8 | 12 | 2 | 3 | - | - | 25 |
| California red fir/  Shasta red fir | 24 | 28 | 20 | 6 | 5 | 5 | - | - | - | 11 |
| noble fir | 18 | 18 | 16 | 13 | 8 | 11 | 3 | 2 | 0 | 11 |
| Engelmann spruce | 21 | 10 | 17 | 11 | 5 | 7 | 5 | 1 | 0 | 25 |
| Alaska cedar | 12 | 15 | 9 | 14 | 11 | 15 | 6 | 3 | 1 | 15 |
| lodgepole pine | 25 | 12 | 3 | 3 | 1 | 1 | - | - | - | 55 |
| ponderosa pine | 25 | 13 | 13 | 8 | 10 | 6 | 3 | 2 | - | 21 |
| western white pine | 18 | 19 | 9 | 15 | 6 | 7 | 6 | 3 | 1 | 17 |
| Douglas-fir | 12 | 14 | 12 | 12 | 10 | 13 | 10 | 5 | 2 | 9 |
| western redcedar | 13 | 13 | 11 | 11 | 11 | 8 | 8 | 6 | 3 | 16 |
| western hemlock | 14 | 11 | 14 | 12 | 11 | 10 | 8 | 5 | 4 | 11 |
| mountain hemlock | 24 | 21 | 9 | 9 | 4 | 5 | 3 | 1 | 0 | 25 |
| Pacific madrone | 10 | 10 | 7 | 5 | 19 | 9 | 9 | 5 | 8 | 19 |
| red alder | 8 | 10 | 18 | 11 | 11 | 2 | 5 | 4 | 2 | 30 |
| miscellaneous hardwood | 18 | 11 | 12 | 6 | 4 | 9 | 5 | - | 19 |  |

**Table 11.1.9 Distribution of samples by elevation (expressed in percent for each species).**

| **Species** | **Elevation** | | | | | |
| --- | --- | --- | --- | --- | --- | --- |
| **< 2000** | **2000-3000** | **3000-4000** | **4000-5000** | **5000-6000** | **> 6000** |
| Pacific silver fir | 1 | 6 | 31 | 44 | 17 | 1 |
| grand fir | 2 | 10 | 29 | 43 | 15 | - |
| subalpine fir | - | - | 6 | 43 | 39 | 12 |
| California red fir/  Shasta red fir | - | 0 | 3 | 17 | 65 | 15 |
| noble fir | 0 | 1 | 20 | 51 | 25 | 3 |
| Engelmann spruce | 4 | 21 | 32 | 29 | 14 | - |
| Alaska cedar | - | 9 | 41 | 47 | 3 | - |
| lodgepole pine | - | 1 | 15 | 40 | 29 | 14 |
| ponderosa pine | 2 | 22 | 52 | 24 | 0 | 1 |
| western white pine | 2 | 14 | 31 | 29 | 22 | 2 |
| Douglas-fir | 9 | 29 | 39 | 22 | 2 | 0 |
| western redcedar | 14 | 44 | 39 | 3 | 0 | - |
| western hemlock | 7 | 25 | 49 | 19 | 0 | - |
| mountain hemlock | - | 0 | 6 | 29 | 46 | 19 |
| Pacific madrone | 53 | 42 | 6 | - | - | - |
| red alder | 45 | 40 | 15 | - | - | - |
| miscellaneous hardwood | 6 | 34 | 40 | 16 | 4 | - |

## 11.2 Appendix B: Plant Association Codes

**Table 11.2.1 Plant association codes recognized in the WC variant.**

| **FVS Sequence Number = Plant Association**  **Species Type** | **Alpha Code** | **Site Species** | **Site Index\*** | **Max. SDI\*** | **Source\*** | **Reference** |
| --- | --- | --- | --- | --- | --- | --- |
| 1 = TSME-ABLA2/PONE4  Mountain hemlock-subalpine fir/Newberry's knotweed | CAF211 | MH | 14 | 698 | H | p. 31  R6 TP-08-95 |
| 2 = TSME-ABLA2/ASLE2  Mountain hemlock-subalpine fir/Cascades aster | CAF311 | MH | 15 | 541 | H | p. 19  R6 TP-08-95 |
| 3 = TSME-ABLA2/FEVI  Mountain hemlock-subalpine fir/green fescue | CAG211 | MH | 12 | 373 | H | p. 23  R6 TP-08-95 |
| 4 = TSME/LUHI  Mountain hemlock/Hitchcock's woodrush | CAG311 | MH | 17 | 820 | H | p. 35  R6 TP-08-95 |
| 5 = TSME-PIAL/LUHI  Mountain hemlock-whitebark pine/Hitchc woodrush | CAG312 | MH | 13 | 709 | H | p. 47  R6 TP-08-95 |
| 6 = TSME/PHEM-VADE  Mountain hemlock/red mtn heather-delicious huckleberry | CAS211 | MH | 16 | 742 | H | p. 43  R6 TP-08-95 |
| 7 = TSME-ABLA2/JUOC4  Mountain hemlock-subalpine fir/mtn juniper | CAS411 | MH | 12 | 1286 | H | p. 27  R6 TP-08-95 |
| 8 = PSME-TSHE/BENE  Douglas-fir-western hemlock/dwarf Oregon grape | CDC711 | DF | 145 | 810 | C | p. 78  R6 E 257-B-86 |
| 9 = PSME-TSHE/RHMA  Douglas-fir-western hemlock/rhododendron | CDC712 | DF | 133 | 785 | C | p. 82  R6 E 257-B-86 |
| 10 = PSME-TSHE/GASH  Douglas-fir-western hemlock/salal | CDC713 | DF | 138 | 685 | C | p. 86  R6 E 257-B-86 |
| 11 = PSME/HODI-BENE  Douglas-fir/oceanspray-dwarf Oregon grape | CDS211 | DF | 115 | 770 | C | p. 62  R6 E 257-B-86 |
| 12 = PSME/HODI/GRASS  Douglas-fir/oceanspray/grass | CDS212 | DF | 121 | 565 | C | p. 66  R6 E 257-B-86 |
| 13 = PSME/HODI-WHMO  Douglas-fir/oceanspray-whipple vine | CDS213 | DF | 106 | 670 | C | p. 70  R6 E 257-B-86 |
| 14 = PSME/SYMO-WIL  Douglas-fir/snowberry (Willamette) | CDS641 | DF | 123 | 740 | C | p. 74  R6 E 257-B-86 |
| 15 = ABAM-TSHE/RHMA-GASH  Pac silver fir-W. hemlock/rhododendron-salal | CFC251 | DF | 101 | 762 | H | p. 49  R6 E 100-82 |
| 16 = ABAM-ABGR/SMST  Pac silver fir-grand fir/false solomonseal | CFC311 | DF | 133 | 935 | C | p. 98  R6 E 257-B-86 |
| 17 = ABAM/TIUN  Pac silver fir/coolwort foamflower | CFF152 | SF | 120 | 1095 | C | p. 61  R6 E 130a-83 |
| 18 = ABAM/OXOR  Pac silver fir/oxalis | CFF153 | NF | 135 | 1050 | C | p. 33  R6 E 100-82 |
| 19 = ABAM/TIUN-STRO  Pac silver fir/foamflower-rosy twisted stalk | CFF154 | SF | 134 | 960 | C | p. 100  R6 E TP-028-91 |
| 20 = ABAM/ACTR-MBS  Pac silver fir/vanilla leaf (Mt Baker/Snoq) | CFF250 | DF | 155 | 900 | C | p. 84  R6 E TP-028-91 |
| 21 = ABAM/ACTR-CLUN  Pac silver fir/vanilla leaf-queencup beadlily | CFF253 | NF | 134 | 955 | C | p. 57  R6 E 130a-83 |
| 22 = ABAM/XETE-MBS  Pac silver fir/beargrass (Mt Baker/Snoq) | CFF312 | NF | 117 | 1399 | H | Devlin; p.132  R6 E TP-028-91 |
| 23 = ABAM/RUPE-BLSP  Pac silver fir/five-leaved bramble-deerfern | CFF450 | SF | 142 | 1110 | C | p. 98  R6 E TP-028-91 |
| 24 = ABAM/LYAM  Pac silver fir/skunkcabbage | CFM111 | SF | 134 | 715 | C | p. 90  R6 E TP-028-91 |
| 25 = ABAM/BENE-MBS  Pac silver fir/Oregon grape (Mt Baker/Snoqualamie) | CFS110 | NF | 109 | 820 | C | p. 86  R6 E TP-028-91 |
| 26 = ABAM/BENE  Pac silver fir/dwarf Oregon grape | CFS151 | WH | 64 | 1035 | C | p. 56  R6 E 130a-83 |
| 27 = ABAM/GASH-GP  Pac silver fir/Salal (Giff Pinchot) | CFS152 | SF | 108 | 1035 | C | p. 55  R6 E 130a-83 |
| 28 = ABAM/GASH-BENE  Pac silver fir/salal-Oregon grape | CFS154 | SF | 115 | 1040 | C | p. 88  R6 E TP-028-91 |
| 29 = ABAM/VAAL-BENE  Pac silver fir/Alaska huckleberry-Oregon grape | CFS216 | SF | 124 | 1015 | C | p. 104  R6 E TP-028-91 |
| 30 = ABAM/VAME-VASI  Pac silver fir/big huckleberry-Sitka valerian | CFS221 | SF | 99 | 900 | C | p. 128  R6 E TP-028-91 |
| 31 = ABAM/VAME-STRO  Pac silver fir/big huckleberry-rosy twisted stalk | CFS222 | SF | 118 | 975 | C | p. 124  R6 E TP-028-91 |
| 32 = ABAM/VAME-VAAL  Pac silver fir/big huckleberry-Alaska huckleberry | CFS223 | SF | 102 | 935 | C | p. 126  R6 E TP-028-91 |
| 33 = ABAM/VAME  Pac silver fir/big huckleberry | CFS224 | SF | 100 | 1100 | C | p. 120  R6 E TP-028-91 |
| 34 = ABAM/VAAL-MADI2  Pac silver fir/Ak huckleberry-false lily-of-the-val | CFS225 | SF | 126 | 945 | C | p. 110  R6 E TP-028-91 |
| 35 = ABAM/VAAL-TIUN-MBS  Pac silver fir/Alaska huckleberry-foamflower | CFS226 | SF | 136 | 1030 | C | p. 116  R6 E TP-028-91 |
| 36 = ABAM/VAME-PYSE  Pac silver fir/big huckleberry-sidebells pyrola | CFS229 | SF | 108 | 1110 | C | p. 122  R6 E TP-028-91 |
| 37 = ABAM/VAAL-GASH-MBS  Pac silver fir/Alaska huckleberry-salal (Mt B/Snoq) | CFS230 | SF | 101 | 830 | C | p. 108  R6 E TP-028-91 |
| 38 = ABAM/VAAL-POMU  Pac silver fir/Alaska huckleberry-swordfern | CFS231 | SF | 148 | 1035 | C | p. 112  R6 E TP-028-91 |
| 39 = ABAM/VAME/XETE  Pac silver fir/big huckleberry/beargrass | CFS251 | SF | 94 | 955 | C | p. 66  R6 E 130a-83 |
| 40 = ABAM/VAME-XETE-MBS  Pac silver fir/big huckleberry-beargrass (Mt B/Snoq) | CFS252 | SF | 94 | 1065 | H | Devlin; p. 130  R6 E TP-028-91 |
| 41 = ABAM/VAAL/COCA  Pac silver fir/Alaska huckleberry/dogwood bunchberry | CFS253 | NF | 110 | 975 | C | p. 45  R6 E 100-82 |
| 42 = ABAM/MEFE  Pac silver fir/fool's huckleberry | CFS254 | SF | 103 | 1035 | C | p. 64  R6 E 130a-83 |
| 43 = ABAM/VAAL-GASH  Pac silver fir/Alaska huckleberry-salal | CFS255 | SF | 113 | 880 | C | p. 60  R6 E 130a-83 |
| 44 = ABAM/VAME/CLUN  Pac silver fir/big huckleberry/queencup beadlily | CFS256 | SF | 113 | 980 | C | p. 65  R6 E 130a-83 |
| 45 = ABAM/VAAL  Pac silver fir/Alaska huckleberry | CFS257 | SF | 111 | 985 | C | p. 59  R6 E 130a-83 |
| 46 = ABAM/VAAL-MBS  Pac silver fir/Alaska huckleberry (Mt Baker/Snoq) | CFS258 | SF | 116 | 1010 | H | Devlin; p. 102  R6 E TP-028-91 |
| 47 = ABAM/VAAL-XETE-MBS  Pac silver fir/Alaska huckleberry-beargrass (MB/SQ) | CFS259 | SF | 94 | 626 | H | Devlin; p. 118  R6 E TP-028-91 |
| 48 = ABAM/VAAL-CLUN-MBS  Pac silver fir/AK huckleberry-queen's cup (MB/SQ) | CFS260 | SF | 128 | 1535 | H | Devlin; p. 106  R6 E TP-028-91 |
| 49 = ABAM/OPHO  Pac silver fir/devil's club | CFS351 | SF | 130 | 825 | C | p. 62  R6 E 130a-83 |
| 50 = ABAM/OPHO-VAAL  Pac silver fir/devil's club-Alaska huckleberry | CFS352 | SF | 133 | 1030 | C | p. 92  R6 E TP-028-91 |
| 51 = ABAM/RHAL-GP  Pac silver fir/Cascades azalea (Gifford Pinchot) | CFS550 | SF | 102 | 1120 | C | p. 63  R6 E 130a-83 |
| 52 = ABAM/RHAL/XETE  Pac silver fir/Cascades azalea/beargrass | CFS551 | DF | 73 | 815 | C | p. 37  R6 E 100-82 |
| 53 = ABAM/RHAL/CLUN  Pac silver fir/Cascades azalea/queencup beadlily | CFS552 | DF | 73 | 778 | H | p. 35  R6 E 100-82 |
| 54 = ABAM/RHAL-VAME  Pac silver fir/white rhododendron-big huckleberry | CFS554 | SF | 93 | 995 | C | p. 96  R6 E TP-028-91 |
| 55 = ABAM/RHAL-VAAL  Pac silver fir/white rhododendron-Alaska huckleberry | CFS555 | SF | 98 | 715 | H | p. 94  R6 E TP-028-91 |
| 56 = ABAM/ACCI/TIUN  Pac silver fir/vine maple/coolwort foamflower | CFS651 | NF | 140 | 1030 | C | p. 43  R6 E 100-82 |
| 57 = ABAM/RHMA-BENE  Pac silver fir/rhododendron-dwarf Oregon grape | CFS652 | DF | 104 | 1010 | C | p. 55  R6 E 100-82 |
| 58 = ABAM/RHMA/XETE  Pac silver fir/rhododendron/beargrass | CFS653 | NF | 96 | 910 | C | p. 57  R6 E 100-82 |
| 59 = ABAM/RHMA-VAAL/COCA  Pac silver fir/rhododendron-Ak huckleb/dogwood bnch | CFS654 | DF | 97 | 995 | C | p. 47  R6 E 100-82 |
| 60 = TSHE-PSME/HODI  Western hemlock-Douglas-fir/oceanspray | CHC212 | DF | 120 | 675 | C | p. 102  R6 E 230A-86 |
| 61 = TSHE-PSME-ARME  Western hemlock-Douglas-fir-madrone | CHC213 | DF | 105 | 1063 | H | p. 105  R6 E 230A-86 |
| 62 = TSHE/OXOR-WILL  Western hemlock/Oregon oxalis (Willamette) | CHF111 | DF | 158 | 800 | C | p. 202  R6 E 257-86 |
| 63 = TSHE/POMU-MTH  Western hemlock/swordfern (Mt Hood) | CHF123 | WH | 95 | 770 | C | p. 73  R6 E 232A-86 |
| 64 = TSHE/POMU-OXOR  Western hemlock/swordfern-oxalis | CHF124 | WH | 102 | 905 | C | p. 75  R6 E 232A-86 |
| 65 = TSHE/POMU-GP  Western hemlock/swordfern (Gifford Pinchot) | CHF125 | WH | 96 | 740 | C | p. 82  R6 E 230A-86 |
| 66 = TSHE/POMU-GASH  Western hemlock/swordfern-salal | CHF133 | DF | 151 | 1005 | C | p. 54  R6 E TP-028-91 |
| 67 = TSHE/POMU-BENE  Western hemlock/swordfern-Oregon grape | CHF134 | DF | 154 | 1090 | C | p. 52  R6 E TP-028-91 |
| 68 = TSHE/POMU-TITR-MBS  Western hemlock/swordfern-foamflower | CHF135 | WH | 123 | 1532 | H | Devlin; p. 56  R6 E TP-028-91 |
| 69 = TSHE/POMU-WILL  Western hemlock/swordfern (Willamette) | CHF151 | DF | 159 | 870 | C | p. 234  R6 E 257-86 |
| 70 = TSHE/ACTR  Western hemlock/vanilla leaf | CHF221 | DF | 147 | 960 | C | p. 90  R6 E 230A-86 |
| 71 = TSHE/TITR  Western hemlock/coolwort foamflower | CHF222 | DF | 170 | 975 | C | p. 80  R6 E 230A-86 |
| 72 = TSHE/TITR-GYDR  Western hemlock/foamflower-oak fern | CHF250 | DF | 164 | 965 | C | p. 58  R6 E TP-028-91 |
| 73 = TSHE/LIBO2  Western hemlock/twinflower | CHF321 | DF | 148 | 1020 | C | p. 238  R6 E 257-86 |
| 74 = TSHE/ATFI  Western hemlock/ladyfern | CHF421 | DF | 174 | 880 | C | p. 72  R6 E 230A-86 |
| 75 = TSHE/LYAM  Western hemlock/American yellow skunkcabbage | CHM121 | DF | 128 | 1126 | H | p. 68  R6 E 232A-86 |
| 76 = TSHE/GASH-WILL  Western hemlock/salal (Willamette) | CHS111 | DF | 137 | 740 | C | p. 230  R6 E 257-86 |
| 77 = TSHE/BENE/OXOR  Western hemlock/dwarf Oregon grape/Oregon oxalis | CHS113 | DF | 159 | 770 | C | p. 190  R6 E 257-86 |
| 78 = TSHE/BENE/ACTR  Western hemlock/dwarf Oregon grape/vanilla leaf | CHS114 | DF | 158 | 1010 | C | p. 198  R6 E 257-86 |
| 79 = TSHE/BENE-GASH  Western hemlock/dwarf Oregon grape-salal | CHS124 | WH | 93 | 845 | C | p. 62  R6 E 232A-86 |
| 80 = TSHE/BENE  Western hemlock/dwarf Oregon grape | CHS125 | WH | 82 | 1020 | C | p. 93  R6 E 230A-86 |
| 81 = TSHE/BENE/POMU  Western hemlock/dwarf Oregon grape/swordfern | CHS126 | WH | 89 | 835 | C | p. 64  R6 E 232A-86 |
| 82 = TSHE/BENE-GASH-GP  Western hemlock/dwarf Oregon grape-salal (Giff Pin) | CHS127 | DF | 134 | 925 | C | p. 95  R6 E 230A-86 |
| 83 = TSHE/GASH-GP  Western hemlock/salal (Gifford Pinchot) | CHS128 | DF | 123 | 820 | C | p. 97  R6 E 230A-86 |
| 84 = TSHE/GASH-MBS  Western hemlock/salal (Mt Baker/Snoqual) | CHS129 | DF | 100 | 789 | H | Devlin; p. 40  R6 E TP-028-91 |
| 85 = TSHE/BENE-MBS  Western hemlock/Oregon grape (Mt Baker/Snoq) | CHS130 | DF | 122 | 1101 | H | Devlin; p. 36  R6 E TP-028-91 |
| 86 = TSHE/GASH-BENE  Western hemlock/salal-Oregon grape | CHS135 | DF | 117 | 1225 | C | p. 42  R6 E TP-028-91 |
| 87 = TSHE/GASH-VAME  Western hemlock/salal-big huckleberry | CHS140 | DF | 89 | 890 | C | p. 44  R6 E TP-028-91 |
| 88 = TSHE/BENE-CHME  Western hemlock/Oregon grape-little prince's pine | CHS141 | DF | 103 | 1070 | C | p. 38  R6 E TP-028-91 |
| 89 = TSHE/ACCI/ACTR  Western hemlock/vine maple/vanilla leaf | CHS223 | DF | 141 | 880 | C | p. 56  R6 E 232A-86 |
| 90 = TSHE/CONU/ACTR  Western hemlock/dogwood/vanilla leaf | CHS224 | DF | 142 | 1159 | H | p. 100  R6 E 230A-86 |
| 91 = TSHE/ACCI-BENE  Western hemlock/vine maple-Oregon grape | CHS251 | DF | 136 | 955 | C | p. 34  R6 E TP-028-91 |
| 92 = TSHE/RHMA/XETE-MTH  Western hemlock/rhododendron/beargrass (Mt Hood) | CHS325 | DF | 97 | 845 | C | p. 83  R6 E 232A-86 |
| 93 = TSHE/RHMA-VAAL/COCA  W hemlock/rhododendron-AK huckleberry/dogw. bunchb. | CHS326 | DF | 130 | 885 | C | p. 81  R6 E 232A-86 |
| 94 = TSHE/RHMA-GASH-MTH  Western hemlock/rhododendron-salal (Mt Hood) | CHS327 | WH | 77 | 700 | C | p. 79  R6 E 232A-86 |
| 95 = TSHE/RHMA-BENE-MTH  W hemlock/rhododendron-dwarf Oregon grape (Mt Hood) | CHS328 | WH | 82 | 835 | C | p. 77  R6 E 232A-86 |
| 96 = TSHE/RHMA-GASH-WILL  Western hemlock/rhododendron-salal (Willamette) | CHS351 | DF | 128 | 890 | C | p. 222  R6 E 257-86 |
| 97 = TSHE/RHMA-BENE-WILL  W hemlock/rhododendron-dwarf OR grape (Willamette) | CHS352 | DF | 136 | 930 | C | p. 214  R6 E 257-86 |
| 98 = TSHE/RHMA/XETE-WILL  Western hemlock/rhododendron/beargrass (Willamette) | CHS353 | DF | 122 | 970 | C | p. 210  R6 E 257-86 |
| 99 = TSHE/RHMA/OXOR  Western hemlock/rhododendron/Oregon oxalis | CHS354 | DF | 135 | 670 | C | p. 218  R6 E 257-86 |
| 100 = TSHE/RHMA/LIBO2  Western hemlock/rhododendron/twinflower | CHS355 | DF | 130 | 1100 | C | p. 226  R6 E 257-86 |
| 101 = TSHE/OPHO-WILL  Western hemlock/devil's club (Willamette) | CHS511 | DF | 168 | 685 | C | p. 182  R6 E 257-86 |
| 102 = TSHE/OPHO-ATFI  Western hemlock/devil's club-ladyfern | CHS513 | WH | 101 | 980 | C | p. 50  R6 E TP-028-91 |
| 103 = TSHE/OPHO/OXOR  Western hemlock/devil's club/Oregon oxalis | CHS522 | WH | 93 | 815 | C | p. 69  R6 E 232A-86 |
| 104 = TSHE/OPHO/SMST  Western hemlock/devil's club/starry solomonseal | CHS523 | DF | 156 | 585 | H | p. 71  R6 E 232A-86 |
| 105 = TSHE/OPHO/POMU  Western hemlock/devil's club/swordfern | CHS524 | WH | 88 | 965 | C | p. 74  R6 E 230A-86 |
| 106 = TSHE/VAAL-OPHO  Western hemlock/Alaska huckleberry-devil's club | CHS611 | DF | 165 | 767 | H | p. 90  R6 E 232A-86 |
| 107 = TSHE/VAME/XETE  Western hemlock/big huckleberry/beargrass | CHS612 | DF | 90 | 795 | C | p. 93  R6 E 232A-86 |
| 108 = TSHE/VAAL/OXOR  Western hemlock/Alaska huckleberry/Oregon oxalis | CHS613 | WH | 84 | 985 | C | p. 78  R6 E 230A-86 |
| 109 = TSHE/VAAL-GASH  Western hemlock/Alaska huckleberry-salal | CHS614 | WH | 81 | 710 | C | p. 88  R6 E 230A-86 |
| 110 = TSHE/VAAL/COCA  W hemlock/Alaska huckleberry/dogwood bunchberry | CHS615 | WH | 87 | 770 | C | p. 86  R6 E 230A-86 |
| 111 = TSHE/VAAL-POMU  Western hemlock/Alaska huckleberry-swordfern | CHS625 | DF | 154 | 1050 | C | p. 64  R6 E TP-028-91 |
| 112 = TSHE/VAAL-BENE  Western hemlock/Alaska huckleberry-Oregon grape | CHS626 | DF | 110 | 940 | C | p. 62  R6 E TP-028-91 |
| 113 = TSME/TIUN-STRO  Mountain hemlock/foamflower-rosy twistedstalk | CMF250 | MH | 36 | 820 | C | p. 162  R6 E TP-028-91 |
| 114 = TSME/CABI  Mountain hemlock/marshmarigold | CMF251 | MH | 14 | 795 | C | p. 150  R6 E TP-028-91 |
| 115 = TSME/VASC  Mountain hemlock/grouse huckleberry | CMS114 | MH | 16 | 925 | C | p. 73  R6 E 08-95 |
| 116 = TSME/VAME-GP  Mountain hemlock/big huckleberry (Gifford Pinchot) | CMS210 | MH | 25 | 970 | C | p. 68  R6 E 130-83 |
| 117 = TSME/VAME/XETE  Mountain hemlock/big huckleberry/beargrass | CMS216 | MH | 19 | 880 | C | p. 67  R6 E 08-95 |
| 118 = TSME/VAME/CLUN  Mountain hemlock/big huckleberry/queen's cup | CMS218 | MH | 20 | 955 | C | p. 61  R6 E 08-95 |
| 119 = TSME/MEFE  Mountain hemlock/fool's huckleberry | CMS221 | MH | 22 | 1005 | C | p. 39  R6 E 08-95 |
| 120 = TSME/RHAL  Mountain hemlock/Cascades azalea | CMS223 | MH | 21 | 955 | C | p. 51  R6 E 08-95 |
| 121 = TSME/VAAL  Mountain hemlock/Alaska huckleberry | CMS241 | MH | 34 | 1015 | C | p. 164  R6 E TP-028-91 |
| 122 = TSME/VAME-VAAL  Mountain hemlock/big huckleberry-Alaska huckleberry | CMS244 | MH | 29 | 995 | C | p. 178  R6 E TP-028-91 |
| 123 = TSME/VAME/XETE-WASH  Mountain hemlock/big huckleberry/beargrass | CMS245 | MH | 25 | 935 | C | p. 182  R6 E TP-028-91 |
| 124 = TSME/VAME-MBS  Mountain hemlock/big huckleberry (Mt Baker/Snoqual) | CMS246 | MH | 25 | 1075 | C | p. 172  R6 E TP-028-91 |
| 125 = TSME/VAME-STRO  Mountain hemlock/big huckleberry-rosy twistedstalk | CMS250 | MH | 31 | 780 | C | p. 176  R6 E TP-028-91 |
| 126 = TSME/VAME-VASI  Mountain hemlock/big huckleberry-Sitka valerian | CMS251 | MH | 25 | 770 | C | p. 180  R6 E TP-028-91 |
| 127 = TSME/VAAL-STRO  Mountain hemlock/Alaska huckleberry-rosy twistedstalk | CMS252 | MH | 35 | 960 | C | p. 170  R6 E TP-028-91 |
| 128 = TSME/VAAL-CLUN  Mountain hemlock/Alaska huckleberry-queen's cup | CMS253 | MH | 29 | 1090 | C | p. 166  R6 E TP-028-91 |
| 129 = TSME/VAME-RULA  Mountain hemlock/big huckleberry-trailing bramble | CMS254 | MH | 28 | 1155 | C | p. 174  R6 E TP-028-91 |
| 130 = TSME/VAAL-MADI2  M hemlock/Alaska huckleberry-false lily-of-the-valley | CMS255 | MH | 29 | 710 | C | p. 168  R6 E TP-028-91 |
| 131 = TSME/PHEM-VADE  M hemlock/red heather-blueleaf huckleberry | CMS350 | MH | 20 | 750 | C | p. 156  R6 E TP-028-91 |
| 132 = TSME/RHAL-VAAL  M hemlock/white rhododendron-Alaska huckleberry | CMS351 | MH | 23 | 820 | C | p. 158  R6 E TP-028-91 |
| 133 = TSME/RHAL-VAME  Mountain hemlock/white rhododendron-big huckleberry | CMS352 | MH | 23 | 970 | C | p. 160  R6 E TP-028-91 |
| 134 = TSME/CLPY-RUPE  Mountain hemlock/copperbush-five leaved bramble | CMS353 | MH | 20 | 675 | C | p. 152  R6 E TP-028-91 |
| 135 = TSME/OPHO-VAAL  Mountain hemlock/devil's club-Alaska huckleberry | CMS450 | SF | 138 | 855 | C | p. 154  R6 E TP-028-91 |
| 136 = TSME/RHMA  Mountain hemlock/rhododendron | CMS612 | SF | 78 | 1010 | C | p. 57  R6 E TP-08-95 |
| 137 = ABGR/CHUM  Grand fir/prince's pine | CWF211 | DF | 132 | 730 | C | p. 96  R6 E 257-86 |
| 138 = ABGR/ARUV  Grand fir/bearberry | CWS521 | DF | 86 | 820 | C | p. 90  R6 E 257-86 |
| 139 = ABGR/BENE  Grand fir/dwarf Oregon grape | CWS522 | DF | 131 | 860 | C | p. 92  R6 E 257-86 |

\*Site index estimates are from GBA analysis. SDI maximums are set by GBA analysis (Source=H) or CVS plot analysis (Source=C).

The U.S. Department of Agriculture (USDA) prohibits discrimination in all its programs and activities on the basis of race, color, national origin, sex, religion, age, disability, political beliefs, sexual orientation, or marital or family status. (Not all prohibited bases apply to all programs.) Persons with disabilities who require alternative means for communication of program information (Braille, large print, audiotape, etc.) should contact USDA’s TARGET Center at (202) 720-2600 (voice and TDD).

To file a complaint of discrimination, write USDA, Director, Office of Civil Rights, Room 326-W, Whitten Building, 1400 Independence Avenue, SW, Washington, DC 20250-9410 or call (202) 720-5964 (voice or TDD). USDA is an equal opportunity provider and employer.