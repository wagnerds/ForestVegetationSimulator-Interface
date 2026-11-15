South Central Oregon and Northeast California (SO) Variant Overview of the Forest Vegetation Simulator

March 2026

![](data:image/jpeg;base64...)

![Forest%20Service%20Color](data:image/jpeg;base64...)Ponderosa pine stand in Northern California

(Amy Jo Krommes, FS-R6)

South Central Oregon and Northeast California (SO) Variant Overview of the Forest Vegetation Simulator

# Authors and Contributors:

The FVS staff has maintained model documentation for this variant in the form of a variant overview since its release in 1984. The original author was Gary Dixon. In 2008, the previous document was replaced with this updated variant overview. Gary Dixon, Christopher Dixon, Robert Havis, Chad Keyser, Stephanie Rebain, Erin Smith-Mateja, and Don Vandendriesche were involved with this update. Stephanie Rebain cross-checked information contained in this variant overview with the FVS source code.

FVS Staff. 2008 (revised March 9, 2026). South Central Oregon and Northeast California (SO) Variant Overview – Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 103p.

Table of Contents

[Authors and Contributors: ii](#_Toc223524930)

[1.0 Introduction 1](#_Toc223524931)

[2.0 Geographic Range 2](#_Toc223524932)

[3.0 Control Variables 3](#_Toc223524933)

[3.1 Location Codes 3](#_Toc223524934)

[3.2 Species Codes 4](#_Toc223524935)

[3.3 Habitat Type, Plant Association, and Ecological Unit Codes 5](#_Toc223524936)

[3.4 Site Index 5](#_Toc223524937)

[3.4.1 Region 5 Site Class 8](#_Toc223524938)

[3.5 Maximum Density 9](#_Toc223524939)

[4.0 Growth Relationships 12](#_Toc223524940)

[4.1 Height-Diameter Relationships 12](#_Toc223524941)

[4.2 Bark Ratio Relationships 19](#_Toc223524942)

[4.3 Crown Ratio Relationships 20](#_Toc223524943)

[4.3.1 Crown Ratio Dubbing 20](#_Toc223524944)

[4.3.2 Crown Ratio Change 23](#_Toc223524945)

[4.3.3 Crown Ratio for Newly Established Trees 24](#_Toc223524946)

[4.4 Crown Width Relationships 24](#_Toc223524947)

[4.4.1 Region 5 Crown Width 24](#_Toc223524948)

[4.4.2 Region 6 and Warm Springs Reservation Crown Width 25](#_Toc223524949)

[4.5 Crown Competition Factor 29](#_Toc223524950)

[4.6 Small Tree Growth Relationships 31](#_Toc223524951)

[4.6.1 Small Tree Height Growth 31](#_Toc223524952)

[4.6.2 Small Tree Diameter Growth 36](#_Toc223524953)

[4.7 Large Tree Growth Relationships 38](#_Toc223524954)

[4.7.1 Large Tree Diameter Growth 38](#_Toc223524955)

[4.7.2 Large Tree Height Growth 47](#_Toc223524956)

[5.0 Mortality Model 58](#_Toc223524957)

[6.0 Regeneration 61](#_Toc223524958)

[7.0 Volume 64](#_Toc223524959)

[8.0 Fire and Fuels Extension (FFE-FVS) 68](#_Toc223524960)

[9.0 Insect and Disease Extensions 69](#_Toc223524961)

[10.0 Literature Cited 70](#_Toc223524962)

[11.0 Appendices 74](#_Toc223524963)

[11.1 Appendix A. Distribution of Data Samples 74](#_Toc223524964)

[11.2 Appendix B: Plant Association Codes 75](#_Toc223524965)

Quick Guide to Default Settings

|  |  |  |
| --- | --- | --- |
| **Parameter or Attribute** | **Default Setting** | |
| Number of Projection Cycles | 1 (10 if using FVS GUI) | |
| Projection Cycle Length | 10 years | |
| Location Code (National Forest) | 601 – Deschutes | |
| Plant Association Code (Region 6 & Warm Springs Reservation) | 49 (CPS111 PIPO/PUTR-ARTR/FEID) | |
| Slope | 5 percent | |
| Aspect | 0 (no meaningful aspect) | |
| Elevation | 45 (4500 feet) | |
| Latitude / Longitude | Latitude | Longitude |
| All location codes | 42 | 121 |
| Site Species (Region 5 / Region 6 & Warm Springs Reservation) | WF / Plant Association Code Specific | |
| Site Index (Region 5 / Region 6 and Warm Springs Reservation) | 50 feet / Plant Association Code Specific | |
| Maximum Stand Density Index | Species or Plant Association Code specific | |
| Maximum Basal Area | Based on maximum stand density index | |
| Volume Equations | National Volume Estimator Library | |
| Merchantable Cubic Foot Volume Specifications: | | |
| Minimum DBH / Top Diameter | Hardwoods | Softwoods |
| Region 5 | 9.0 / 6.0 inches | 9.0 / 6.0 inches |
| Region 6 and Warm Springs Reservation | 9.0 / 4.5 inches | 9.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| Merchantable Board Foot Volume Specifications: | | |
| Minimum DBH / Top Diameter | Hardwoods | Softwoods |
| Region 5 | 9.0 / 6.0 inches | 9.0 / 6.0 inches |
| Region 6 and Warm Springs Reservation | 9.0 / 4.5 inches | 9.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| Sampling Design: | | |
| Large Trees (variable radius plot) | 40 BAF | |
| Small Trees (fixed radius plot) | 1/300th Acre | |
| Breakpoint DBH | 5.0 inches | |

#

# 1.0 Introduction

The Forest Vegetation Simulator (FVS) is an individual tree, distance independent growth and yield model with linkable modules called extensions, which simulate various insect and pathogen impacts, fire effects, fuel loading, snag dynamics, and development of understory tree vegetation. FVS can simulate a wide variety of forest types, stand structures, and pure or mixed species stands.

New “variants” of the FVS model are created by imbedding new tree growth, mortality, and volume equations for a particular geographic area into the FVS framework. Geographic variants of FVS have been developed for most of the forested lands in the United States.

The Southern Oregon / Northeastern California (SO) variant was developed in 1984. This variant includes all or part of the Deschutes, Fremont, Winema, Klamath, Lassen, Modoc, Plumas, Shasta, and Trinity National Forests, corresponding BLM and Industry lands, and lands managed by the Confederated Tribes of Warm Springs. Data used in building the original SO variant came from forest inventories, silviculture stand examinations, research plots, and tree plantation studies.

The SO variant was expanded from its original 11 species to 33 species in 2004. Growth relationships for the additional 22 species were drawn from other FVS variants including West Cascades (WC – noble fir, western hemlock, Pacific yew, white alder, red alder, bigleaf maple, black cottonwood, bitter cherry, willow, giant chinquapin, curl-leaf mountain mahogany, birchleaf mountain mahogany, and other hardwood), East Cascades (EC – Pacific silver fir, western larch, western redcedar), Inland California/Southern Cascades (CA – Shasta red fir and Oregon white oak), Utah (UT – western juniper and quaking aspen) and Tetons (TT – whitebark pine).

The SO variant is one of three variants used by the Confederated Tribes of Warm Springs. In 2015, after completion of an analysis by the FMSC regarding which variant performed the best for which species on the Reservation, the tribes decided to use the SO variant as the designated variant for their lands, requested their own unique location code be added, and when that location code is specified, large tree diameter growth would be predicted with a designated equation from one of the three variants they previously used (SO, EC, or WC).

To fully understand how to use this variant, users should also consult the following publication:

* Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002)

This publication may be downloaded from the Forest Management Service Center (FMSC), Forest Service website. Other FVS publications may be needed if one is using an extension that simulates the effects of fire, insects, or diseases.

# 2.0 Geographic Range

The SO variant was fit to data representing forest types in southern Oregon and northeastern California. Data used in building the original SO variant came from forest inventories, silviculture stand examinations, research plots, and tree plantation studies from national forest, BLM, and industry lands. Distribution of data samples for species fit from this data are shown in Appendix A.

The SO variant covers forest areas in south-central Oregon and northeastern California. The suggested geographic range of use for the SO variant is shown in figure 2.0.1.

![Picture of suggested geographic range of the SO variant.](data:image/jpeg;base64...)

**Figure 2.0.1 Suggested geographic range of use for the SO variant.**

Within USFS Region 5, the following forests and districts should use the SO variant: Goosenest district of the Klamath NF, Eagle Lake district of the Lassen NF, all districts on the Modoc NF, and the McCloud district of the Shasta-Trinity NF (Warbington 2004, based on Spreadsheet provided by Ralph Warbington, R5 Ecosystem Planning Staff, Remote Sensing Lab, http://www.fs.fed.us/r5/rsl/).

# 3.0 Control Variables

FVS users need to specify certain variables used by the SO variant to control a simulation. These are entered in parameter fields on various FVS keywords available in the FVS interface or they are read from an FVS input database using the Database Extension.

## 3.1 Location Codes

The location code is a 3- or 4-digit code where, in general, the first digit of the code represents the Forest Service Region Number, and the last two digits represent the Forest Number within that region. In some cases, a location code beginning with a “7” or “8” is used to indicate an administrative boundary that doesn’t use a Forest Service Region number (for example, other federal agencies, state agencies, or other lands).

If the location code is missing or incorrect in the SO variant, a default forest code of 601 (Deschutes National Forest) will be used. Location codes recognized in the SO variant are shown in tables 3.1.1 and 3.1.2.

**Table 3.1.1 Location codes used in the SO variant.**

|  |  |
| --- | --- |
| **Location Code** | **Location** |
| 505 | Klamath National Forest |
| 506 | Lassen National Forest |
| 509 | Modoc National Forest |
| 511 | Plumas National Forest |
| 601 | Deschutes National Forest |
| 602 | Fremont National Forest |
| 620 | Winema National Forest |
| 701, 702 | Industry Lands (702 mapped to 701) |
| 799 | Confederated Tribes of Warm Springs |
| 514 | Shasta-Trinity (mapped to 505) |

**Table 3.1.2 Bureau of Indian Affairs reservation codes used in the SO variant.**

| **Location Code** | **Location** |
| --- | --- |
| 7711 | Fort Mcdermitt Reservation (mapped to 602) |
| 7836 | Fort Bidwell Reservation (mapped to 509) |
| 7838 | Susanville Indian Rancheria (mapped to 506) |
| 7844 | Cedarville Rancheria (mapped to 509) |

## 3.2 Species Codes

The SO variant recognizes 31 species, plus two other composite species categories. You may use FVS species codes, Forest Inventory and Analysis (FIA) species codes, or USDA Natural Resources Conservation Service PLANTS symbols to represent these species in FVS input data. Any valid western species code identifying species not recognized by the variant will be mapped to a similar species in the variant. The species mapping crosswalk is available on the FVS website variant documentation webpage. Any non-valid species code will default to the “other hardwood” category.

Either the FVS sequence number or species code must be used to specify a species in FVS keywords and Event Monitor functions. FIA codes or PLANTS symbols are only recognized during data input and may not be used in FVS keywords. Table 3.2.1 shows the complete list of species codes recognized by the SO variant.

When entering tree data, users should substitute diameter at root collar (DRC) for diameter at breast height (DBH) for woodland species (western juniper).

**Table 3.2.1 Species codes used in the SO variant.**

| **Species Number** | **Species Code** | **FIA Code** | **PLANTS Symbol** | **Scientific Name1** | **Common Name1** |
| --- | --- | --- | --- | --- | --- |
| 1 | WP | 119 | PIMO3 | *Pinus monticola* | western white pine |
| 2 | SP | 117 | PILA | *Pinus lambertiana* | sugar pine |
| 3 | DF | 202 | PSME | *Pseudotsuga menziesii* | Douglas-fir |
| 4 | WF | 015 | ABCO | *Abies concolor* | white fir |
| 5 | MH | 264 | TSME | *Tsuga mertensiana* | mountain hemlock |
| 6 | IC | 081 | CADE27 | *Calocedrus decurrens* | incense cedar |
| 7 | LP | 108 | PICO | *Pinus contorta* | lodgepole pine |
| 8 | ES | 093 | PIEN | *Picea engelmannii* | Engelmann spruce |
| 9 | SH | 021 | ABSH | *Abiesshastensis* | Shasta red fir |
| 10 | PP | 122 | PIPO | *Pinus ponderosa* | ponderosa pine |
| 11 | WJ | 064 | JUOC | *Juniperus occidentalis* | western juniper |
| 12 | GF | 017 | ABGR | *Abies grandis* | grand fir |
| 13 | AF | 019 | ABLA | *Abies lasiocarpa* | subalpine fir |
| 14 | SF | 011 | ABAM | *Abies amabilis* | Pacific silver fir |
| 15 | NF | 022 | ABPR | *Abies procera* | noble fir |
| 16 | WB | 101 | PIAL | *Pinus albicaulis* | whitebark pine |
| 17 | WL | 073 | LAOC | *Larix occidentalis* | western larch |
| 18 | RC | 242 | THPL | *Thuja plicata* | western redcedar |
| 19 | WH | 263 | TSHE | *Tsuga heterophylla* | western hemlock |
| 20 | PY | 231 | TABR2 | *Taxus brevifolia* | Pacific yew |
| 21 | WA | 352 | ALRH2 | *Alnus rhombifolia* | white alder |
| 22 | RA | 351 | ALRU2 | *Alnus rubra* | red alder |
| 23 | BM | 312 | ACMA3 | *Acer macrophyllum* | bigleaf maple |
| 24 | AS | 746 | POTR5 | *Populus tremuloides* | quaking aspen |
| 25 | CW | 747 | POBAT | *Populus balsamifera* ssp. *trichocarpa* | black cottonwood |
| 26 | CH | 768 | PREM | *Prunus emarginata* | bitter cherry |
| 27 | WO | 815 | QUGA4 | *Quercus garryana* | Oregon white oak |
| 28 | WI | 920 | SALIX | *Salix* | willow |
| 29 | GC | 431 | CHCHC4 | *Chrysolepis chrysophylla* var. *chrysophylla* | giant chinquapin |
| 30 | MC | 475 | CELE3 | *Cercocarpus ledifolius* | curl-leaf mountain mahogany |
| 31 | MB | 478 | CEMOG | *Cercocarpus montanus* var *glaber* | birchleaf mountain mahogany |
| 32 | OS | 299 | 2TN |  | other softwood2 |
| 33 | OH | 998 | 2TB |  | other hardwood2 |

1Set based on the USDA Forest Service NRM TAXA lists and the USDA Plants database.

2Other categories use FIA codes and NRM TAXA codes that best match the other category.

## 3.3 Habitat Type, Plant Association, and Ecological Unit Codes

Plant association codes recognized in the SO variant are shown in Appendix B. If an incorrect plant association code is entered or no code is entered FVS will use the default plant association code, which is 49 (CPS111 PIPO/PUTR-ARTR/FEID) for Region 6 forests and the Warm Springs Reservation, and 0 (unknown) in Region 5 forests. For Region 6 forests and the Warm Springs Reservation, plant association codes are used to set default site information such as site species, site indices, and maximum stand density indices as well as in predicting snag dynamics in FFE-FVS. The site species, site index and maximum stand density indices can be reset via FVS keywords. In Region 5, plant association is only used to estimate surface fuels when no live trees are present in the first cycle. Users may enter the plant association code or the plant association FVS sequence number on the STDINFO keyword, when entering stand information from a database, or when using the SETSITE keyword without the PARMS option. If using the PARMS option with the SETSITE keyword, users must use the FVS sequence number for the plant association.

## 3.4 Site Index

Site index is used in some of the growth equations in the SO variant. Users should always use the same site curves that FVS uses as shown in table 3.4.1. If site index is available, a single site index for the whole stand can be entered, a site index for each individual species in the stand can be entered, or a combination of these can be entered. A site index value must be greater than or equal to 8, otherwise the value is considered a R5 site class code, see section 3.4.1.

**Table 3.4.1 Site index reference curves used for species in the SO variant.**

| **Species Code** | **Reference** | **BHA or TTA1** | **Base Age** |
| --- | --- | --- | --- |
| WP | Brickell, J.E. (1970), USDA-FS Res. Pap. INT-75 | TTA | 50 |
| SP, PP | Barrett, J.W. (1978), USDA-FS Res. Pap. PNW-232 | BHA | 100 |
| DF, OS | Cochran, P.H. (1979), USDA-FS Res. Pap. PNW-251 | BHA | 50 |
| WF, IC, GF, SF | Cochran, P.H. (1979), USDA-FS Res. Pap. PNW-252 | BHA | 50 |
| MH | Means, et. al. (1986)2, unpublished FIR Report. Vol. 10, No. 1, OSU | BHA | 100 |
| LP | Dahms, W.G. (1964), USDA-FS Res. Pap. PNW-8 | TTA | 50 |
| ES | Alexander, R.R. (1967), USDA-FS Res. Pap. RM-32 | BHA | 100 |
| SH, WO (R5) | Dunning (1942); Dunning & Reineke (1933) | BHA | 50 |
| SH (R6) | Dolph (1991), Res. Pap. PSW206 | BHA | 50 |
| WO (R6) | Powers (1972), Res. Note PSW-262 | BHA | 50 |
| WJ, WB | Alexander, Tackle, and Dahms. (1967), Res. Pap. RM-29 | TTA | 100 |
| AF | Demars, Herman, and Bell (1970), PNW-119 | BHA | 100 |
| NF | Herman, F.R., et. al. (1978), USDA-FS Res. Pap. PNW-243, P.4 | BHA | 100 |
| WL | Cochran, P.H. (1985), USDA-FS Res. Note PNW-424, p.23 | BHA | 50 |
| RC | Hegyi, R.P.F., et. al. (1979), Province of B.C., Forest Inv. Rep. No. 1. p. 6. | TTA | 100 |
| WH | Wiley, K.N. (1978), Weyerhaeuser Forestry Paper, No. 17, p.4. | BHA | 50 |
| PY, WA, BM, CW, CH, WI, GC, MC, MB, OH | Curtis, R.O., et. al. (1974), Forest Science, vol. 20, no. 4, p.310 | BHA | 100 |
| RA | Harrington C.A. & Curtis, R.O. (1986m), USDA-FS Res. Pap. PNW-358, p.5 | TTA | 20 |
| AS | Edminster, Mowrer, and Shepperd (1985), Res. Note RM-453 | BHA | 80 |

1 Equation is based on total tree age (TTA) or breast height age (BHA)

2 The source equation is in metric units; site index values for MH are assumed to be in meters.

In Region 5 forests, site index values can either be entered directly or based on the Region 5 Site Class Code. See section 3.4.1 for Region 5 Site Class information. If site index is missing or incorrect, the site species is set to white fir with a default site index set to 50. For Region 6 forests and the Warm Springs Reservation, if site index is missing or incorrect, the default site species and site index are determined by plant association codes found in Appendix B. If the plant association code is missing or incorrect, the site species is set to ponderosa pine with a default site index set to 70.

Site indices for species not assigned a site index are determined based on the site index of the site species. If the site species is western juniper, whitebark pine, or quaking aspen, the relative site indices of the other species are computed using equations {3.4.1} and {3.4.2} with the low and high site values in table 3.4.2. If the site species is any other species, site index is assigned based on the site species site index (height at base age) with an adjustment for reference age and base age differences between the site species and the target species.

{3.4.1} *RELSI* = (*SIsite* – *SITELOsite*) / (*SITEHIsite* – *SITELOsite*)

{3.4.2} *SIi* = *SITELOi* +*RELSI*\*(*SITEHIi* – *SITELOi*)

where:

*RELSI* is the relative site index of the site species

*SI* is species site index

*SITELO* is the lower bound of the *SI* range for a species

*SITEHI* is the upper bound of the *SI* range for a species

*site*is the site species

*i* is the species for which site index is to be calculated

**Table 3.4.2 *SITELO* and *SITEHI* values for equation {3.4.1} in the SO variant.**

| **Species Code** | ***SITELO*** | ***SITEHI*** |
| --- | --- | --- |
| WP | 13 | 137 |
| SP | 27 | 178 |
| DF | 21 | 148 |
| WF | 5 | 195 |
| MH | 5 | 133 |
| IC | 5 | 169 |
| LP | 5 | 140 |
| ES | 12 | 227 |
| SH | 10 | 134 |
| PP | 7 | 176 |
| WJ | 5 | 40 |
| GF | 9 | 173 |
| AF | 6 | 127 |
| SF | 4 | 221 |
| NF | 7 | 210 |
| WB | 20 | 65 |
| WL | 60 | 147 |
| RC | 29 | 152 |
| WH | 6 | 203 |
| PY | 5 | 75 |
| WA | 5 | 100 |
| RA | 56 | 192 |
| BM | 108 | 142 |
| AS | 30 | 66 |
| CW | 10 | 191 |
| CH | 10 | 104 |
| WO | 21 | 85 |
| WI | 20 | 93 |
| GC | 5 | 100 |
| MC | 5 | 75 |
| MB | 5 | 75 |
| OS | 5 | 175 |
| OH | 5 | 125 |

### 3.4.1 Region 5 Site Class

In Region 5 forests, the site index values can either be entered directly or based on the Region 5 site class (0-7) as shown in table 3.4.1.1. Site class codes of 0-5 were adapted for Region 5 by Jack Levitan from Duncan Dunning's site index curves (Dunning 1942, Dunning & Reineke 1933).

If a Region 5 site class is entered, it is converted to a site index for each species within the model using a two-step process. First, the Region 5 site class is converted to a 50-year or 100-year site index based on the reference age of the species. For quaking aspen, site index is interpolated between the 50 and 100 year site classes to get an estimated 80 year base age site index. Site index conversions are shown in table 3.4.1.1 (personal communication with Ralph Warbington in March 2008).

**Table 3.4.1.1 Region 5 site class values converted into site index in the SO variant.**

| **REGION 5 SITE CLASS** | **(BREAST HT AGE)50-YEAR SITE INDEX** | **(BREAST HT AGE)100-YEAR SITE INDEX** |
| --- | --- | --- |
| 0 | 106 | 140 |
| 1 | 90 | 121 |
| 2 | 75 | 102 |
| 3 | 56 | 81 |
| 4 | 49 | 67 |
| 5 | 39 | 54 |
| 6 | 31 | 44 |
| 7 | 23 | 36 |

Second, site index for an individual species is determined by multiplying the site index by a species-specific adjustment factor which is shown in table 3.4.1.2

**Table 3.4.1.2 Region 5 adjustment factors for site index values in the SO variant.**

| **Species Code** | **R5 Adjustment Factor** |
| --- | --- |
| WP | 0.9 |
| SP | 0.9 |
| DF | 1 |
| WF | 1 |
| MH | 0.9 |
| IC | 0.76 |
| LP | 0.82 |
| ES | 1 |
| SH | 1 |
| PP | 1 |
| WJ | 0.57 |
| GF | 1 |
| AF | 1 |
| SF | 1 |
| NF | 1 |
| WB | 0.9 |
| WL | 1 |
| RC | 1 |
| WH | 0.9 |
| PY | 0.76 |
| WA | 1 |
| RA | 0.57 |
| BM | 0.57 |
| AS | 0.57 |
| CW | 0.57 |
| CH | 1 |
| WO | 0.76 |
| WI | 0.57 |
| GC | 1 |
| MC | 1 |
| MB | 1 |
| OS | 1 |
| OH | 0.57 |

## 3.5 Maximum Density

Maximum stand density index (SDI) and maximum basal area (BA) are important variables in determining density related mortality and crown ratio change. Maximum basal area is a stand level metric that can be set using the BAMAX or SETSITE keywords. If not set by the user, a default value is calculated from maximum stand SDI each projection cycle. Maximum stand density index can be set for each species using the SDIMAX or SETSITE keywords. If not set by the user, a default value is assigned as discussed below. Maximum stand density index at the stand level is a weighted average, by basal area, of the individual species SDI maximums.

In Region 5, the default maximum SDI is set by species or a user specified basal area maximum. If a user specified basal area maximum is present, the maximum SDI for all species is computed using equation {3.5.1}; otherwise, species maximums are assigned from the SDI maximums shown in table 3.5.1.

For Region 5 forests, SDI is calculated using the Zeide calculation method (Dixon 2002).

{3.5.1} *SDIMAXi* = *BAMAX* / (0.5454154 \* *SDIU)*

where:

*SDIMAXi* is species-specific SDI maximum

*BAMAX* is the user-specified stand basal area maximum

*SDIU* is theproportion of theoretical maximum density at which the stand reaches actual maximum density (default 0.85, changed with the SDIMAX keyword)

For Region 6 forests and the Warm Springs Reservation, the default maximum SDI is set based on a user-specified, or default, plant association code or a user specified basal area maximum. If a user specified basal area maximum is present, the maximum SDI for all species is computed using equation {3.5.1}; otherwise, the SDI maximum for the site species is assigned from the SDI maximum associated with the site species for the plant association code shown in Appendix B. SDI maximums were set based on growth basal area (GBA) analysis developed by Hall (1983) or an analysis of Current Vegetation Survey (CVS) plots in USFS Region 6 by Crookston (2008). Once maximum SDI is determined for the site species, maximum SDI for all other species not assigned a value is estimated using a relative adjustment as seen in equation {3.5.2}. Some SDI maximums associated with plant associations are unreasonably large, so SDI maximums are capped at 850.

{3.5.2} *SDIMAXi* = *SDIMAX*(*SSEC*) \* (*SDIMAX*(*S*) / *SDIMAX*(*SS*))

where:

*SDIMAXi* is species-specific SDI maximum

*SDIMAX(SSEC)* is maximum SDI for the plant association from Appendix B

*SDIMAX(SS)* is R6 maximum SDI for the site species shown in table 3.5.1

*SDIMAX(S)* is R6 maximum SDI for the target species shown in table 3.5.1

**Table 3.5.1 Stand density index maximums by species in the SO variant.**

| **Species Code** | **R5 SDI Maximum** | **R5 Source\*** | **R5 Mapped to** | **R6 &**  **Warm Springs**  **SDI Maximum** |
| --- | --- | --- | --- | --- |
| WP | 272 | Shaw |  | 447 |
| SP | 561 | Shaw |  | 447 |
| DF | 570 | Shaw |  | 767 |
| WF | 800 | PSW |  | 659 |
| MH | 687 | Shaw |  | 758 |
| IC | 576 | Shaw |  | 447 |
| LP | 679 | Shaw |  | 541 |
| ES | 620 | Shaw |  | 659 |
| SH | 1000 | PSW |  | 750 |
| PP | 365 | PSW |  | 429 |
| WJ | 272 | Shaw |  | 500 |
| GF | 800 | PSW |  | 659 |
| AF | 602 | Shaw |  | 659 |
| SF | 790 | Shaw |  | 659 |
| NF | 1000 | PSW |  | 659 |
| WB | 621 | Shaw |  | 250 |
| WL | 423 | Shaw |  | 250 |
| RC | 762 | Shaw |  | 650 |
| WH | 682 | Shaw |  | 650 |
| PY | 576 | Shaw | incense cedar | 650 |
| WA | 441 | Shaw | red alder | 200 |
| RA | 441 | Shaw |  | 300 |
| BM | 629 | Shaw |  | 300 |
| AS | 562 | Shaw |  | 250 |
| CW | 452 | Shaw |  | 250 |
| CH | 441 | Shaw | red alder | 200 |
| WO | 440 | Shaw |  | 200 |
| WI | 447 | Shaw | black willow | 150 |
| GC | 785 | Shaw | tanoak | 250 |
| MC | 501 | Shaw |  | 100 |
| MB | 501 | Shaw | curlleaf mountain-mahogany | 100 |
| OS | 365 | PSW | ponderosa pine | 447 |
| OH | 441 | Shaw | red alder | 250 |

\*Sources include an unpublished analysis of FIA data by John Shaw (Shaw) and a review of current data/literature by Pacific Southwest Research Station (PSW).

# 4.0 Growth Relationships

This chapter describes the functional relationships used to fill in missing tree data and calculate incremental growth. In FVS, trees are grown in either the small tree sub-model or the large tree sub-model depending on the diameter.

## 4.1 Height-Diameter Relationships

Height-diameter relationships in FVS are primarily used to estimate tree heights missing in the input data, and occasionally to estimate diameter growth on trees smaller than a given threshold diameter. In the SO variant, FVS will dub in missing heights by one of two methods. By default, the SO variant will use the Curtis-Arney functional form as shown in equation {4.1.1} or equation {4.1.2} (Curtis 1967, Arney 1985). If the input data contains at least three measured heights for a species, then FVS can switch to a logistic height-diameter equation {4.1.3} (Wykoff, et.al 1982) that may be calibrated to the input data. In the SO variant, this doesn’t happen by default, but can be turned on with the NOHTDREG keyword by entering “1” in field 2.

Coefficients for equation {4.1.1} are shown in table 4.1.1 by location code. Coefficients (B1 -B2) for equation {4.1.2} are shown in table 4.1.2 by crown class ratio. For the species western juniper, whitebark pine, and quaking aspen, equation {4.1.2} is always used when dubbing heights because these species don’t have Curtis-Arney coefficients.

When height-diameter calibration occurs, noble fir, western hemlock, Pacific yew, white alder, red alder, bigleaf maple, black cottonwood, bitter cherry, willow, giant chinquapin, curl-leaf mountain mahogany, birchleaf mountain mahogany and other hardwood use equation {4.1.4} instead of equation {4.1.2} when dubbing missing heights for trees with DBH < 5.0”. Likewise, western hemlock and Pacific yew use equation {4.1.4} instead of {4.1.2} for trees with DBH < 5.0”. Coefficients for equations {4.1.3} and {4.1.4}, and the WC species using these equations are given in table 4.1.3. Small ponderosa pine (10) uses equation {4.1.5} to dub in missing heights when DBH < 3.0”.

{4.1.1} Curtis-Arney functional form

*DBH* <u>></u> 3.0”: *HT* = 4.5 + P2 \* exp[-P3 \* *DBH* ^ P4]

*DBH* < 3.0”: *HT* = [(4.5 + P2 \* exp[-P3 \*3.0 ^ P4] – 4.51) \* (*DBH* – 0.3) / 2.7] + 4.51

{4.1.2} Wykoff functional form

HT = 4.5 + exp(B1 + B2 / (DBH + 1.0))

{4.1.3} *DBH* < 5.0”: *HT* = H1 + (H2 \* *DBH*) + (H3 \* *CR*) + (H4 \* *DBH*^2) + H5

{4.1.4} *DBH* < 5.0”: *HT* = exp[H1 + (H2 \* *DBH*) + (H3 \* *CR*) + (H4 \* *DBH* ^ 2) + H5]

{4.1.5} *HT* = 8.31485 + (3.03659 \* *DBH)* – (0.592 \* *JCR)*

where:

*HT* is tree height

*DBH* is tree diameter at breast height

B1 - B2 are species-specific coefficients shown in table 4.1.2

P2 - P4 are species and location specific coefficients shown in table 4.1.1

H1 - H5 are species-specific coefficients shown in table 4.1.3

*CR* is tree crown ratio expressed as a percent

*JCR* is tree crown class (bounded to 1 <u><</u> *JCR* <u><</u> 9)

**Table 4.1.1 Coefficients for Curtis-Arney equation {4.1.1} in the SO variant.**

| **Species Code** | **Location Code** | **P2** | **P3** | **P4** |
| --- | --- | --- | --- | --- |
| WP | 601 – Deschutes  799 – Warm Springs | 582.9947 | 5.4612 | -0.3435 |
| WP | 602 – Freemont | 391.7346 | 5.1102 | -0.3602 |
| WP | 620 – Winema | 133.7789 | 6.9968 | -0.9072 |
| SP | 601 – Deschutes  799 – Warm Springs | 128.8697 | 6.8868 | -0.8701 |
| SP | 602 – Freemont | 948.8488 | 6.1388 | -0.2877 |
| SP | 620 – Winema | 222.7080 | 6.1735 | -0.6122 |
| DF | 601 – Deschutes  602 – Freemont  799 – Warm Springs | 253.2541 | 4.7331 | -0.4843 |
| DF | 620 – Winema | 231.7163 | 6.7143 | -0.6647 |
| WF | 601 – Deschutes  799 – Warm Springs | 235.3340 | 5.7931 | -0.5972 |
| WF | 602 – Freemont | 705.1903 | 6.0971 | -0.3273 |
| WF | 620 – Winema | 471.6016 | 5.7106 | -0.4035 |
| MH | 601 – Deschutes  799 – Warm Springs | 197.4948 | 6.7218 | -0.6528 |
| MH | 602 – Freemont | 103.7798 | 10.6932 | -1.0711 |
| MH | 620 – Winema | 130.7104 | 7.7823 | -0.8830 |
| IC | 601 – Deschutes  799 – Warm Springs | 4902.9732 | 7.5484 | -0.1783 |
| IC | 602 – Freemont | 76621.919 | 10.2682 | -0.1178 |
| IC | 620 – Winema | 4518.2601 | 8.0469 | -0.2090 |
| LP | 601 – Deschutes  799 – Warm Springs | 777.9043 | 5.2036 | -0.2843 |
| LP | 602 – Freemont | 113.7962 | 4.7726 | -0.7601 |
| LP | 620 – Winema | 128.7972 | 4.9833 | -0.7463 |
| ES | 601 – Deschutes  799 – Warm Springs | 290.2790 | 6.5834 | -0.5753 |
| ES | 602 – Freemont | 290.2790 | 6.5834 | -0.5753 |
| ES | 620 – Winema | 168.9700 | 13.6848 | -1.0635 |
| SH | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 606.3002 | 6.2936 | -0.3860 |
| PP | 601 – Deschutes  799 – Warm Springs | 2700.1370 | 7.1184 | -0.2312 |
| PP | 602 – Freemont | 1154.2447 | 6.6836 | -0.2876 |
| PP | 620 – Winema | 812.2630 | 6.4422 | -0.3348 |
| WJ | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 0 | 0 | 0 |
| GF | 601 – Deschutes  799 – Warm Springs | 235.3340 | 5.7931 | -0.5972 |
| GF | 602 – Freemont | 705.1903 | 6.0971 | -0.3273 |
| GF | 620 – Winema | 471.6016 | 5.7106 | -0.4035 |
| AF | 601 – Deschutes  799 – Warm Springs | 291.4070 | 5.7543 | -0.5013 |
| AF | 602 – Freemont | 1056.5434 | 6.6974 | -0.2950 |
| AF | 620 – Winema | 299.3002 | 6.3401 | -0.5275 |
| SF | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 171.2219 | 9.9497 | -0.9727 |
| NF | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 247.7348 | 6.1830 | -0.6335 |
| WB | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 0 | 0 | 0 |
| WL | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 255.4638 | 5.5577 | -0.6054 |
| RC | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 616.3503 | 5.7620 | -0.3633 |
| WH | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 317.8257 | 6.8287 | -0.6034 |
| PY | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 77.2207 | 3.5181 | -0.5894 |
| WA | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 133.7965 | 6.4050 | -0.8329 |
| RA | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 484.4591 | 4.5713 | -0.3643 |
| BM | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 76.5170 | 2.2107 | -0.6365 |
| AS | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 0 | 0 | 0 |
| CW | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 178.6441 | 4.5852 | -0.6746 |
| CH | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 73.3348 | 2.6548 | -1.2460 |
| WO | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 40.3812 | 3.7653 | -1.1224 |
| WI | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 149.5861 | 2.4231 | -0.1800 |
| GC | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 10707.390 | 8.4670 | -0.1863 |
| MC | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 1709.7229 | 5.8887 | -0.2286 |
| MB | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 1709.7229 | 5.8887 | -0.2286 |
| OS | 601 – Deschutes  602 – Freemont  799 – Warm Springs | 253.2541 | 4.7331 | -0.4843 |
| OS | 620 – Winema | 231.7163 | 6.7143 | -0.6647 |
| OH | 601 – Deschutes  602 – Freemont  620 – Winema  799 – Warm Springs | 1709.7229 | 5.8887 | -0.2286 |

**Table 4.1.2 Coefficients by Crown Ratio Class (1 – 9) for the logistic Wykoff equation {4.1.2} in the SO variant. The default B1 coefficient is listed.**

| **Species Code** | **Coefficient** | **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| WP | B1 | 4.8898 | 4.8898 | 4.8898 | 4.8898 | 4.8898 | 4.8898 | 4.7886 | 4.7886 | 4.7886 |
| B2 | -9.1437 | -9.1437 | -9.1437 | -9.1437 | -9.1437 | -9.1437 | -10.2263 | -10.2263 | -10.2263 |
| SP | B1 | 5.0176 | 5.0176 | 5.0176 | 5.0176 | 5.0176 | 5.0176 | 5.0176 | 5.0176 | 5.0176 |
| B2 | -13.3096 | -13.3096 | -13.3096 | -13.3096 | -13.3096 | -13.3096 | -13.3096 | -13.3096 | -13.3096 |
| DF | B1 | 5.0796 | 5.0796 | 5.0796 | 5.1560 | 5.1560 | 5.1560 | 5.0594 | 5.0594 | 5.0594 |
| B2 | -9.9304 | -9.9304 | -9.9304 | -12.7011 | -12.7011 | -12.7011 | -12.0763 | -12.0763 | -12.0763 |
| WF | B1 | 4.7835 | 4.7835 | 4.7835 | 4.9516 | 4.9516 | 4.9516 | 4.9516 | 4.7776 | 4.7776 |
| B2 | -9.6402 | -9.6402 | -9.6402 | -11.4936 | -11.4936 | -11.4936 | -11.4936 | -10.8669 | -10.8669 |
| MH | B1 | 4.8901 | 4.8901 | 4.8901 | 4.8901 | 4.8901 | 4.8901 | 4.8901 | 4.8901 | 4.8901 |
| B2 | -11.7015 | -11.7015 | -11.7015 | -11.7015 | -11.7015 | -11.7015 | -11.7015 | -11.7015 | -11.7015 |
| IC | B1 | 4.5214 | 4.5214 | 4.5214 | 4.7459 | 4.7459 | 4.7459 | 4.7459 | 4.7459 | 4.7459 |
| B2 | -10.4749 | -10.4749 | -10.4749 | -13.1891 | -13.1891 | -13.1891 | -13.1891 | -13.1891 | -13.1891 |
| LP | B1 | 4.6409 | 4.6409 | 4.6900 | 4.6900 | 4.6900 | 4.6900 | 4.6312 | 4.6312 | 4.6312 |
| B2 | -6.9563 | -6.9563 | -7.6241 | -7.6241 | -7.6241 | -7.6241 | -8.7243 | -8.7243 | -8.7243 |
| ES | B1 | 5.2149 | 5.2149 | 5.2149 | 5.2149 | 5.2149 | 5.2149 | 5.2149 | 5.2149 | 5.2149 |
| B2 | -14.2828 | -14.2828 | -14.2828 | -14.2828 | -14.2828 | -14.2828 | -14.2828 | -14.2828 | -14.2828 |
| SH | B1 | 5.2973 | 5.2973 | 5.2973 | 5.2973 | 5.2973 | 5.2973 | 5.2973 | 5.2973 | 5.2973 |
| B2 | -17.204 | -17.204 | -17.204 | -17.204 | -17.204 | -17.204 | -17.204 | -17.204 | -17.204 |
| PP | B1 | 4.6267 | 4.6267 | 4.7790 | 4.7790 | 4.7790 | 4.7790 | 4.5112 | 4.5112 | 4.5112 |
| B2 | -8.4404 | -8.4404 | -9.9191 | -9.9191 | -9.9191 | -9.9191 | -9.9229 | -9.9229 | -9.9229 |
| WJ | B1 | 3.2000 | 3.2000 | 3.2000 | 3.2000 | 3.2000 | 3.2000 | 3.2000 | 3.2000 | 3.2000 |
| B2 | -5.000 | -5.000 | -5.000 | -5.000 | -5.000 | -5.000 | -5.000 | -5.000 | -5.000 |
| GF | B1 | 4.7835 | 4.7835 | 4.7835 | 4.9516 | 4.9516 | 4.9516 | 4.9516 | 4.7776 | 4.7776 |
| B2 | -9.6402 | -9.6402 | -9.6402 | -11.4936 | -11.4936 | -11.4936 | -11.4936 | -10.8669 | -10.8669 |
| AF | B1 | 5.1088 | 5.1088 | 5.1088 | 5.0964 | 5.0964 | 5.0964 | 5.0146 | 5.0146 | 5.0146 |
| B2 | -12.1890 | -12.1890 | -12.1890 | -13.2189 | -13.2189 | -13.2189 | -13.6008 | -13.6008 | -13.6008 |
| SF | B1 | 5.0320 | 5.0320 | 5.0320 | 5.0320 | 5.0320 | 5.0320 | 5.0320 | 5.0320 | 5.0320 |
| B2 | -10.482 | -10.482 | -10.482 | -10.482 | -10.482 | -10.482 | -10.482 | -10.482 | -10.482 |
| NF | B1 | 5.3270 | 5.3270 | 5.3270 | 5.3270 | 5.3270 | 5.3270 | 5.3270 | 5.3270 | 5.3270 |
| B2 | -15.450 | -15.450 | -15.450 | -15.450 | -15.450 | -15.450 | -15.450 | -15.450 | -15.450 |
| WB | B1 | 4.1920 | 4.1920 | 4.1920 | 4.1920 | 4.1920 | 4.1920 | 4.1920 | 4.1920 | 4.1920 |
| B2 | -5.165 | -5.165 | -5.165 | -5.165 | -5.165 | -5.165 | -5.165 | -5.165 | -5.165 |
| WL | B1 | 4.9610 | 4.9610 | 4.9610 | 4.9610 | 4.9610 | 4.9610 | 4.9610 | 4.9610 | 4.9610 |
| B2 | -8.247 | -8.247 | -8.247 | -8.247 | -8.247 | -8.247 | -8.247 | -8.247 | -8.247 |
| RC | B1 | 4.8960 | 4.8960 | 4.8960 | 4.8960 | 4.8960 | 4.8960 | 4.8960 | 4.8960 | 4.8960 |
| B2 | -8.391 | -8.391 | -8.391 | -8.391 | -8.391 | -8.391 | -8.391 | -8.391 | -8.391 |
| WH | B1 | 5.2980 | 5.2980 | 5.2980 | 5.2980 | 5.2980 | 5.2980 | 5.2980 | 5.2980 | 5.2980 |
| B2 | -13.240 | -13.240 | -13.240 | -13.240 | -13.240 | -13.240 | -13.240 | -13.240 | -13.240 |
| PY | B1 | 5.1880 | 5.1880 | 5.1880 | 5.1880 | 5.1880 | 5.1880 | 5.1880 | 5.1880 | 5.1880 |
| B2 | -13.801 | -13.801 | -13.801 | -13.801 | -13.801 | -13.801 | -13.801 | -13.801 | -13.801 |
| WA | B1 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 |
| B2 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 |
| RA | B1 | 4.8860 | 4.8860 | 4.8860 | 4.8860 | 4.8860 | 4.8860 | 4.8860 | 4.8860 | 4.8860 |
| B2 | -8.792 | -8.792 | -8.792 | -8.792 | -8.792 | -8.792 | -8.792 | -8.792 | -8.792 |
| BM | B1 | 4.7000 | 4.7000 | 4.7000 | 4.7000 | 4.7000 | 4.7000 | 4.7000 | 4.7000 | 4.7000 |
| B2 | -6.326 | -6.326 | -6.326 | -6.326 | -6.326 | -6.326 | -6.326 | -6.326 | -6.326 |
| AS | B1 | 4.4421 | 4.4421 | 4.4421 | 4.4421 | 4.4421 | 4.4421 | 4.4421 | 4.4421 | 4.4421 |
| B2 | -6.540 | -6.540 | -6.540 | -6.540 | -6.540 | -6.540 | -6.540 | -6.540 | -6.540 |
| CW | B1 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 |
| B2 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 |
| CH | B1 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 |
| B2 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 |
| WO | B1 | 3.8314 | 3.8314 | 3.8314 | 3.8314 | 3.8314 | 3.8314 | 3.8314 | 3.8314 | 3.8314 |
| B2 | -4.822 | -4.822 | -4.822 | -4.822 | -4.822 | -4.822 | -4.822 | -4.822 | -4.822 |
| WI | B1 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 |
| B2 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 |
| GC | B1 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 |
| B2 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 |
| MC | B1 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 |
| B2 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 |
| MB | B1 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 |
| B2 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 |
| OS | B1 | 5.0796 | 5.0796 | 5.0796 | 5.1560 | 5.1560 | 5.1560 | 5.0594 | 5.0594 | 5.0594 |
| B2 | -9.9304 | -9.9304 | -9.9304 | -12.7011 | -12.7011 | -12.7011 | -12.0763 | -12.0763 | -12.0763 |
| OH | B1 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 | 5.1520 |
| B2 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 | -13.576 |

**Table 4.1.3 Coefficients for height-diameter equations {4.1.3} and {4.1.4} in the SO variant.**

| **Species Code** | **H1** | **H2** | **H3** | **H4** | **H5** |
| --- | --- | --- | --- | --- | --- |
| NF | 1.7100 | 0.2943 | 0 | 0 | 0.1054 |
| WH | 1.3608 | 0.6151 | 0 | 0.0442 | 0.0829 |
| PY | 1.5907 | 0.3040 | 0 | 0 | 0 |
| WA | 0.0994 | 4.9767 | 0 | 0 | 0 |
| RA | 0.0994 | 4.9767 | 0 | 0 | 0 |
| BM | 0.0994 | 4.9767 | 0 | 0 | 0 |
| CW | 0.0994 | 4.9767 | 0 | 0 | 0 |
| CH | 0.0994 | 4.9767 | 0 | 0 | 0 |
| WI | 0.0994 | 4.9767 | 0 | 0 | 0 |
| GC | 0.0994 | 4.9767 | 0 | 0 | 0 |
| MC | 0.0994 | 4.9767 | 0 | 0 | 0 |
| MB | 0.0994 | 4.9767 | 0 | 0 | 0 |
| OH | 0.0994 | 4.9767 | 0 | 0 | 0 |

## 4.2 Bark Ratio Relationships

Bark ratio estimates are used to convert between diameter outside bark and diameter inside bark in various parts of the model. In the SO variant, bark ratio values are determined using estimates from DIB equations or by setting a constant value. Equations used in the SO variant are shown in equations {4.2.1} – {4.2.4}. Coefficients (b1 and b2) and equation reference for these equations by species are shown in table 4.2.1.

{4.2.1} *DIB* = b1 \* *DBH*^b2; *BRATIO* = *DIB* / *DBH*

{4.2.2} *DIB* = b1 + (b2 \* *DBH*); *BRATIO* = *DIB* / *DBH*

{4.2.3} *BRATIO* = b1

{4.2.4} *BRATIO* = b1 – b2 \* (1/*DBH*)

where:

*BRATIO* is species-specific bark ratio (bounded to 0.80 <u><</u> *BRATIO* <u><</u> 0.99)

*DBH* is tree diameter at breast height

*DIB* is tree diameter inside bark at breast height

b1, b2 are species-specific coefficients shown in table 4.2.1

**Table 4.2.1 Coefficients and equation reference for bark ratio equations {4.2.1} – {4.2.4} in the SO variant.**

| **Species Code** | **b1** | **b2** | **Equation Used** |
| --- | --- | --- | --- |
| WP | 0.964 | 0 | {4.2.3} |
| SP | 0.851 | 0 | {4.2.3} |
| DF | 0.867 | 0 | {4.2.3} |
| WF | 0.915 | 0 | {4.2.3} |
| MH | 0.934 | 0 | {4.2.3} |
| IC | 0.950 | 0 | {4.2.3} |
| LP | 0.969 | 0 | {4.2.3} |
| ES | 0.956 | 0 | {4.2.3} |
| SH | -0.1593 | 0.8911 | {4.2.2} |
| PP | 0.890 | 0 | {4.2.3} |
| WJ | 0.9002 | 0.3089 | {4.2.4} |
| GF | 0.915 | 0 | {4.2.3} |
| AF | 0.937 | 0 | {4.2.3} |
| SF | 0.903 | 0 | {4.2.3} |
| NF | 0.904973 | 1.0 | {4.2.1} |
| WB | 0.969 | 0 | {4.2.3} |
| WL | 0.851 | 0 | {4.2.3} |
| RC | 0.950 | 0 | {4.2.3} |
| WH | 0.933710 | 1.0 | {4.2.1} |
| PY | 0.933290 | 1.0 | {4.2.1} |
| WA | 0.075256 | 0.949670 | {4.2.2} |
| RA | 0.075256 | 0.949670 | {4.2.2} |
| BM | 0.083600 | 0.949670 | {4.2.2} |
| AS | 0.950 | 0 | {4.2.3} |
| CW | 0.075256 | 0.949670 | {4.2.2} |
| CH | 0.075256 | 0.949670 | {4.2.2} |
| WO | -0.30722 | 0.95956 | {4.2.2} |
| WI | 0.075256 | 0.949670 | {4.2.2} |
| GC | 0.075256 | 0.949670 | {4.2.2} |
| MC | 0.90 | 1.0 | {4.2.1} |
| MB | 0.90 | 1.0 | {4.2.1} |
| OS | 0.867 | 0 | {4.2.3} |
| OH | 0.90 | 1.0 | {4.2.1} |

\* *DBH* is bounded between 1.0 and 19.0

## 4.3 Crown Ratio Relationships

Crown ratio equations are used for three purposes in FVS: (1) to estimate tree crown ratios missing from the input data for both live and dead trees; (2) to estimate change in crown ratio from cycle to cycle for live trees; and (3) to estimate initial crown ratios for regenerating trees established during a simulation.

### 4.3.1 Crown Ratio Dubbing

In the SO variant, crown ratios missing in the input data are predicted using different equations depending on tree species and size. All live trees less than 1.0” in diameter and dead trees of all sizes use equation {4.3.1.1} and one of the equations listed below, {4.3.1.2} or {4.3.1.3}, to compute crown ratio. Equation number used by species is found in table 4.3.1.1. Equation coefficients are found in table 4.3.1.2.

{4.3.1.1} *X* = R1 + R2 \* *DBH* + R3 \* *HT* + R4 \* *BA* + R5 \* *PCCF* + R6 \* *HTAvg /HT* + R7 \* *HTAvg* + R8 \* *BA* \* *PCCF* + R9 \* *MAI*

{4.3.1.2} *CR =* 1 / (1 + exp*(X + N(0,SD)*)where absolute value of *(X + N(0,SD)*)< 86

{4.3.1.3} *CR* = ((*X* – 1) \* 10.0 + 1.0) / 100

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.05 <u><</u> *CR* <u><</u> 0.95)

*DBH* is tree diameter at breast height

*HT* is tree height

*BA* is total stand basal area

*PCCF* is crown competition factor on the inventory point where the tree is established

*HTAvg* is average height of the 40 largest diameter trees in the stand

*MAI* is stand mean annual increment

*N(0,SD)* is a random increment from a normal distribution with a mean of 0 and a standard deviation of SD

R1 – R9 are species-specific coefficients shown in tables 4.3.1.1 and 4.3.1.2

**Table 4.3.1.1 *CR* equation used in the SO variant.**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Species Code** | **Equation Number** | **Species Code** | **Equation Number** | **Species Code** | **Equation Number** |
| WP | {4.3.1.2} | GF | {4.3.1.2} | BM | {4.3.1.3} |
| SP | {4.3.1.2} | AF | {4.3.1.2} | AS | {4.3.1.2} |
| DF | {4.3.1.2} | SF | {4.3.1.2} | CW | {4.3.1.3} |
| WF | {4.3.1.2} | NF | {4.3.1.3} | CH | {4.3.1.3} |
| MH | {4.3.1.2} | WB | {4.3.1.2} | WO | {4.3.1.3} |
| IC | {4.3.1.2} | WL | {4.3.1.2} | WI | {4.3.1.3} |
| LP | {4.3.1.2} | RC | {4.3.1.2} | GC | {4.3.1.3} |
| ES | {4.3.1.2} | WH | {4.3.1.3} | MC | {4.3.1.3} |
| SH | {4.3.1.3} | PY | {4.3.1.3} | MB | {4.3.1.3} |
| PP | {4.3.1.2} | WA | {4.3.1.3} | OS | {4.3.1.2} |
| WJ | {4.3.1.2} | RA | {4.3.1.3} | OH | {4.3.1.3} |

**Table 4.3.1.2 Coefficients for the crown ratio equation {4.3.1.1} in the SO variant.**

| **Species Code** | **Model Coefficients** | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **R1** | **R2** | **R3** | **R4** | **R5** | **R6** | **R7** | **R8** | **R9** | **SD** |
| WP | -1.66949 | -0.209765 | 0 | 0.003359 | 0.011032 | 0 | 0.017727 | -0.000053 | 0.014098 | 0.5 |
| SP | -1.66949 | -0.209765 | 0 | 0.003359 | 0.011032 | 0 | 0.017727 | -0.000053 | 0.014098 | 0.5 |
| DF | -0.426688 | -0.093105 | 0.022409 | 0.002633 | 0 | -0.045532 | 0 | 0.000022 | -0.013115 | 0.6957 |
| WF | -0.426688 | -0.093105 | 0.022409 | 0.002633 | 0 | -0.045532 | 0 | 0.000022 | -0.013115 | 0.6957 |
| MH | -0.426688 | -0.093105 | 0.022409 | 0.002633 | 0 | -0.045532 | 0 | 0.000022 | -0.013115 | 0.6957 |
| IC | -0.426688 | -0.093105 | 0.022409 | 0.002633 | 0 | -0.045532 | 0 | 0.000022 | -0.013115 | 0.931 |
| LP | -1.66949 | -0.209765 | 0 | 0.003359 | 0.011032 | 0 | 0.017727 | -0.000053 | 0.014098 | 0.6124 |
| ES | -0.426688 | -0.093105 | 0.022409 | 0.002633 | 0 | -0.045532 | 0 | 0.000022 | -0.013115 | 0.6957 |
| SH | 8.042774 | 0 | 0.007198 | -0.016163 | 0 | 0 | 0 | 0 | 0 | 1.3167 |
| PP | -1.66949 | -0.209765 | 0 | 0.003359 | 0.011032 | 0 | 0.017727 | -0.000053 | 0.014098 | 0.4942 |
| WJ | -2.19723 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0.2 |
| GF | -0.426688 | -0.093105 | 0.022409 | 0.002633 | 0 | -0.045532 | 0 | 0.000022 | -0.013115 | 0.6957 |
| AF | -0.426688 | -0.093105 | 0.022409 | 0.002633 | 0 | -0.045532 | 0 | 0.000022 | -0.013115 | 0.6957 |
| SF | -0.426688 | -0.093105 | 0.022409 | 0.002633 | 0 | -0.045532 | 0 | 0.000022 | -0.013115 | 0.6957 |
| NF | 8.042774 | 0 | 0.007198 | -0.016163 | 0 | 0 | 0 | 0 | 0 | 1.3167 |
| WB | -1.66949 | -0.209765 | 0 | 0.003359 | 0.011032 | 0 | 0.017727 | -0.000053 | 0.014098 | 0.5 |
| WL | -1.66949 | -0.209765 | 0 | 0.003359 | 0.011032 | 0 | 0.017727 | -0.000053 | 0.014098 | 0.5 |
| RC | -0.426688 | -0.093105 | 0.022409 | 0.002633 | 0 | -0.045532 | 0 | 0.000022 | -0.013115 | 0.6957 |
| WH | 7.558538 | 0 | -0.015637 | -0.009064 | 0 | 0 | 0 | 0 | 0 | 1.9658 |
| PY | 6.489813 | 0 | -0.029815 | -0.009276 | 0 | 0 | 0 | 0 | 0 | 2.0426 |
| WA | 5.0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0.5 |
| RA | 5.0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0.5 |
| BM | 5.0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0.5 |
| AS | -0.426688 | -0.093105 | 0.022409 | 0.002633 | 0 | -0.045532 | 0 | 0.000022 | -0.013115 | 0.931 |
| CW | 5.0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0.5 |
| CH | 5.0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0.5 |
| WO | 6.489813 | 0 | -0.029815 | -0.009276 | 0 | 0 | 0 | 0 | 0 | 2.0426 |
| WI | 5.0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0.5 |
| GC | 5.0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0.5 |
| MC | 5.0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0.5 |
| MB | 5.0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0.5 |
| OS | -0.426688 | -0.093105 | 0.022409 | 0.002633 | 0 | -0.045532 | 0 | 0.000022 | -0.013115 | 0.6957 |
| OH | 5 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0.5 |

A Weibull-based crown model developed by Dixon (1985) as described in Dixon (2002) is used to predict crown ratio for all live trees 1.0 inch in diameter or larger. To estimate crown ratio using this methodology, the average stand crown ratio is estimated from stand density index using equation {4.3.1.4}. Weibull parameters are then estimated from the average stand crown ratio using equations in equation set {4.3.1.5}. Individual tree crown ratio is then set from the Weibull distribution, equation {4.3.1.6} based on a tree’s relative position in the diameter distribution and multiplied by a scale factor, shown in equation {4.3.1.7}, which accounts for stand density. Crowns estimated from the Weibull distribution are bounded to be between the 5 and 95 percentile points of the specified Weibull distribution. Equation coefficients for each species are shown in table 4.3.1.3.

{4.3.1.4} *ACR* = d0 + d1 \* *RELSDI* \* 100.0

where: RELSDI = SDIstand / SDImax

{4.3.1.5} Weibull parameters A, B, and C are estimated from average crown ratio

*A* = a0

*B* = b0 + b1 \* ACR (*B* <u>></u> 1)

*C* = c0 + c1 \* ACR (*C* <u>></u> 2)

{4.3.1.6} *Y* = 1-exp(-((*X*-A)/B)^C)

{4.3.1.7} *SCALE =* 1 – (0.00167 \* (*CCF* – 100))

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

**Table 4.3.1.3 Coefficients for the Weibull parameter equations {4.3.1.4} and {4.3.1.5} in the SO variant.**

| **Species Code** | **a0** | **b0** | **b1** | **c0** | **c1** | **d0** | **d1** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| WP | 2 | -2.12713 | 1.10526 | 2.77 | 0 | 7.16846 | -0.02375 |
| SP | 2 | -2.27296 | 1.12434 | 3.34 | 0 | 6.597 | -0.01954 |
| DF | 1 | -1.19297 | 1.12928 | 3.42 | 0 | 5.52653 | 0 |
| WF | 0 | 0.06593 | 1.09624 | 3.71 | 0 | 6.61291 | -0.02182 |
| MH | 1 | -0.94138 | 1.08256 | 3.47 | 0 | 7.45097 | -0.02406 |
| IC | 1 | -1.38636 | 1.16801 | 3.02 | 0 | 6.17373 | -0.01795 |
| LP | 0 | 0.07609 | 1.10184 | 3.01 | 0 | 5.50719 | -0.01833 |
| ES | 1 | -0.91567 | 1.06469 | 3.5 | 0 | 6.774 | 0 |
| SH | 0 | 0.16601 | 1.0815 | 0.9142 | 0.45768 | 6.14578 | -0.02781 |
| PP | 0 | 0.24916 | 1.04831 | 4.36 | 0 | 6.41166 | -0.02041 |
| WJ | 0 | 0.07609 | 1.10184 | 3.01 | 0 | 7.238 | 0 |
| GF | 0 | 0.06593 | 1.09624 | 3.71 | 0 | 6.61291 | -0.02182 |
| AF | 1 | -0.91567 | 1.06469 | 3.5 | 0 | 6.12779 | -0.01269 |
| SF | 0 | -0.09734 | 1.14675 | 2.716 | 0 | 4.79981 | -0.00653 |
| NF | 0 | -0.13581 | 1.14771 | 3.02 | 0 | 5.56886 | -0.02129 |
| WB | 1 | -0.82631 | 1.06217 | 3.31429 | 0 | 6.19911 | -0.02216 |
| WL | 0 | 0.00603 | 1.12276 | 2.734 | 0 | 4.98675 | -0.02466 |
| RC | 0 | -0.01129 | 1.11665 | 3.355 | 0 | 5.74915 | -0.0109 |
| WH | 0 | 0.49085 | 1.01414 | 3.16 | 0 | 5.48853 | -0.00717 |
| PY | 0 | 0.19605 | 1.07391 | 0.35 | 0.62015 | 5.41743 | -0.01161 |
| WA | 0 | -0.2383 | 1.18016 | 3.04 | 0 | 4.62512 | -0.01604 |
| RA | 1 | -1.11274 | 1.12314 | 2.53 | 0 | 4.12048 | -0.00636 |
| BM | 0 | -0.2383 | 1.18016 | 3.04 | 0 | 4.62512 | -0.01604 |
| AS | 0 | -0.08414 | 1.14765 | 2.775 | 0 | 4.01678 | -0.01516 |
| CW | 0 | -0.2383 | 1.18016 | 3.04 | 0 | 4.62512 | -0.01604 |
| CH | 0 | -0.2383 | 1.18016 | 3.04 | 0 | 4.62512 | -0.01604 |
| WO | 0 | 0.06607 | 1.10705 | 2.04714 | 0.1507 | 6.82187 | -0.02247 |
| WI | 0 | -0.2383 | 1.18016 | 3.04 | 0 | 4.62512 | -0.01604 |
| GC | 0 | -0.2383 | 1.18016 | 3.04 | 0 | 4.62512 | -0.01604 |
| MC | 0 | -0.2383 | 1.18016 | 3.04 | 0 | 4.62512 | -0.01604 |
| MB | 0 | -0.2383 | 1.18016 | 3.04 | 0 | 4.62512 | -0.01604 |
| OS | 1 | -1.19297 | 1.12928 | 3.42 | 0 | 5.52653 | 0 |
| OH | 0 | -0.2383 | 1.18016 | 3.04 | 0 | 4.62512 | -0.01604 |

### 4.3.2 Crown Ratio Change

Crown ratio change is estimated after growth, mortality and regeneration are estimated during a projection cycle. Crown ratio change is the difference between the crown ratio at the beginning of the cycle and the predicted crown ratio at the end of the cycle. Crown ratio predicted at the end of the projection cycle is estimated for live tree records using the Weibull distribution, equations {4.3.1.4}-{4.3.1.7}, for all species. Crown change is checked to make sure it doesn’t exceed the change possible if all height growth produces new crown. Crown change is further bounded to 1% per year for the length of the cycle to avoid drastic changes in crown ratio. Equations {4.3.1.1} – {4.3.1.3} are not used when estimating crown ratio change.

### 4.3.3 Crown Ratio for Newly Established Trees

Crown ratios for newly established trees during regeneration are estimated using equation {4.3.3.1}. A random component is added in equation {4.3.3.1} to ensure that not all newly established trees are assigned exactly the same crown ratio.

{4.3.3.1} *CR* = 0.89722 – 0.0000461 \* *PCCF* + *RAN*

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.2 <u><</u> *CR* <u><</u> 0.9)

*PCCF* is crown competition factor on the inventory point where the tree is established

*RAN* is a small random component

## 4.4 Crown Width Relationships

The SO variant calculates the maximum crown width for each individual tree, based on individual tree and stand attributes. Crown width for each tree is reported in the tree list output table and used for percent canopy cover (*PCC*) and crown competition factor (*CCF*) calculations in the model.

### 4.4.1 Region 5 Crown Width

Crown width in region 5 forests is calculated by using equations {4.4.1.1} – {4.4.1.5}. If a tree has a *DBH* greater than or equal to its threshold diameter (given as *DBHT*), then it uses equation {4.4.1.1}, {4.4.1.2}, or {4.4.1.3} depending on the species. If a tree has a *DBH* less than its threshold diameter, then it uses equation {4.4.1.4} or {4.4.1.5} depending on the height of the tree. Coefficients, equation reference, and threshold diameter values for these equations are shown in table 4.4.1.1 by species.

{4.4.1.2} *DBH* <u>></u> *DBHT*: *CW* = a1 \* *DBH*^a2

{4.4.1.3} *DBH* <u>></u> *DBHT*: *CW* = a1 + a2 \* *DBH* + a3 \* *DBH*^2

{4.4.1.4} *HT* < 4.5’ and *DBH* < *DBHT*: *CW* = *HT* \* s1

{4.4.1.5} *HT* <u>></u> 4.5’ and *DBH* < *DBHT*: *CW* = d1 + d2 \* *DBH*

where:

<u>CW</u>  is maximum tree crown width

<u>DBH</u> is tree diameter at breast height

<u>DBHT</u>  is threshold diameter shown in table 4.4.1.1

<u>HT</u>  is tree height

s1, d1-2, and a1-3 are species-specific coefficients shown in table 4.4.1.1

**Table 4.4.1.1 Coefficients and equation reference for equations {4.4.1.1} – {4.4.1.5} in the SO variant.**

| **Species Code** | **Equation Used\*** | ***DBHT*** | **d1** | **d2** | **a1** | **a2** | **a3** | **s1** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| WP | {4.4.1.1} | 7.6 | 3.5 | 0.329 | -0.997 | 0.92 | 0 | 0.7778 |
| SP | {4.4.1.1} | 7.4 | 3.5 | 0.338 | -1.476 | 1.01 | 0 | 0.7778 |
| DF | {4.4.1.1} | 5 | 3.62 | 1.37 | 6.81 | 0.732 | 0 | 0.7778 |
| WF | {4.4.1.1} | 5 | 3.26 | 1.103 | 5.82 | 0.591 | 0 | 0.7778 |
| MH | {4.4.1.1} | 5 | 3.5 | 0.852 | 4.72 | 0.608 | 0 | 0.7778 |
| IC | {4.4.1.1} | 5 | 3.5 | 1.192 | 7.11 | 0.47 | 0 | 0.7778 |
| LP | {4.4.1.2} | 5 | 3.5 | 0.6492 | 1.91 | 0.784 | 0 | 0.7778 |
| ES | {4.4.1.1} | 5 | 3.5 | 2.4 | 6.5 | 1.8 | 0 | 0.7778 |
| SH | {4.4.1.1} | 5 | 3.5 | 1.063 | 6.71 | 0.421 | 0 | 0.7778 |
| PP | {4.4.1.2} | 5 | 3.77 | 0.7756 | 2.24 | 0.763 | 0 | 0.7778 |
| WJ | {4.4.1.1} | 5 | 3.5 | 1.1 | 6 | 0.6 | 0 | 0.7778 |
| GF | {4.4.1.1} | 5 | 3.5 | 1.548 | 6.19 | 1.01 | 0 | 0.7778 |
| AF | {4.4.1.1} | 5 | 3.5 | 1.063 | 6.71 | 0.421 | 0 | 0.7778 |
| SF | {4.4.1.1} | 5 | 3.26 | 1.103 | 5.82 | 0.591 | 0 | 0.7778 |
| NF | {4.4.1.1} | 5 | 3.26 | 1.103 | 5.82 | 0.591 | 0 | 0.7778 |
| WB | {4.4.1.2} | 5 | 3.5 | 0.8496 | 2.37 | 0.736 | 0 | 0.7778 |
| WL | {4.4.1.1} | 5 | 3.5 | 0.852 | 4.72 | 0.608 | 0 | 0.7778 |
| RC | {4.4.1.1} | 5 | 3.5 | 1.7 | 4 | 1.6 | 0 | 0.7778 |
| WH | {4.4.1.1} | 5 | 3.5 | 1.624 | 4.57 | 1.41 | 0 | 0.7778 |
| PY | {4.4.1.1} | 5 | 3.5 | 1.56 | 4.2 | 1.42 | 0 | 0.7778 |
| WA | {4.4.1.1} | 5 | 2.5 | 2.63 | 8 | 1.53 | 0 | 0.5556 |
| RA | {4.4.1.1} | 5 | 2.5 | 2.63 | 8 | 1.53 | 0 | 0.5556 |
| BM | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| AS | {4.4.1.1} | 5 | 2.5 | 1.22 | 0.5 | 1.62 | 0 | 0.5556 |
| CW | {4.4.1.1} | 5 | 2.5 | 1.22 | 0.5 | 1.62 | 0 | 0.5556 |
| CH | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| WO | {4.4.1.1} | 5 | 2.5 | 2.036 | 3.08 | 1.92 | 0 | 0.5556 |
| WI | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| GC | {4.4.1.3} | 5 | 2.15 | 1.646 | 2.98 | 1.55 | -0.014 | 0.5556 |
| MC | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| MB | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| OS | {4.4.1.1} | 5 | 3.5 | 1.1 | 6 | 0.6 | 0 | 0.7778 |
| OH | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |

\*Equation refers to the species-specific equation used when *DBH* <u>></u> *DBHT*

### 4.4.2 Region 6 and Warm Springs Reservation Crown Width

Crown width for Region 6 forests and the Warm Springs Reservation is calculated using equations {4.4.2.1} – {4.4.2.6}, and coefficients for these equations are shown in table 4.4.2.1. The minimum diameter and bounds for certain data values are given in table 4.4.2.2. Equation numbers in table 4.4.2.1 are given with the first three digits representing the FIA species code, and the last two digits representing the equation source.

{4.4.2.1} Bechtold (2004); Equation 02

*DBH* <u>></u> *MinD*: CW = a1 + (a2 \* *DBH*) + (a3 \* *DBH*^2) + (a4 \* *CR%*) + (a5 \* *BA*) + (a6 \* *HI*)

*DBH* < *MinD*: CW = [a1 + (a2 \* *MinD*) + (a3 \* *MinD*^2) + (a4 \* *CR%*) + (a5 \* *BA*) + (a6 \* *HI*)] \* (*DBH* / *MinD*)

{4.4.2.2} Crookston (2003); Equation 03 (used only for Mountain Hemlock)

*HT* < 5.0: *CW* = [0.8 \* *HT* \* MAX(0.5, *CR* \* 0.01)] \* [1 - (*HT* - 5) \* 0.1] \* a1 \* *DBH^*a2 \* *HT^*a3 \* *CL^*a4 \* (*HT*-5) \* 0.1

5.0 <u><</u> *HT* < 15.0: *CW* = 0.8 \* *HT* \* MAX(0.5, *CR* \* 0.01)

*HT* <u>></u> 15.0: *CW* = a1 \* (*DBH*^a2) \* (*HT*^a3) \* (*CL*^a4)

{4.4.2.3} Crookston (2003); Equation 03

*DBH* <u>></u> *MinD*: *CW* = a1 \* exp(a2 + (a3 \* ln(*CL*)) + (a4 \* ln(*DBH*)) + (a5 \* ln(*HT*)) + (a6 \* ln(*BA*)))

*DBH* < *MinD*: *CW* = (a1 \* exp (a2 + (a3 \* ln(*CL*)) + (a4 \* ln(*MinD*)) + (a5 \* ln(*HT*)) + (a6 \* ln(*BA*))))\* (*DBH* / *MinD*)

{4.4.2.4} Crookston (2005); Equation 04

*DBH* <u>></u> *MinD: CW* = a1 \* *DBH^*a2

*DBH* < *MinD: CW* = [a1 \* *MinD*^a2] \* (*DBH* / *MinD*)

{4.4.2.5} Crookston (2005); Equation 05

*DBH* <u>></u> *MinD: CW* = (a1 \* *BF*) \* *DBH*^a2 \* *HT*^a3 \* *CL^*a4 \* (*BA* + 1.0)^a5 \* exp(*EL*)^a6

*DBH* < *MinD: CW* = [CW = (a1 \* BF) \* *MinD*^a2 \* HT^a3 \* CL^a4 \* (BA + 1.0)^a5 \* exp(EL)^a6] \* (*DBH* / *MinD*)

{4.4.2.6} Donnelly (1996); Equation 06

*DBH* <u>></u> *MinD CW* = a1 \* *DBH^*a2

*DBH* < *MinD CW* = [a1 \* *MinD*^a2] \* (*DBH* / *MinD*)

where:

*BF* is a species-specific coefficient based on forest code shown in table 4.4.2.3

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

a1 – a6 are species-specific coefficients shown in table 4.4.2.1

**Table 4.4.2.1 Coefficients for crown width equations {4.4.2.1}-{4.4.2.6} in the SO variant.**

| **Species Code** | **Equation Number\*** | **a1** | **a2** | **a3** | **a4** | **a5** | **a6** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| WP | 11905 | 5.3822 | 0.57896 | -0.19579 | 0.14875 | 0 | -0.00685 |
| SP | 11705 | 3.593 | 0.63503 | -0.22766 | 0.17827 | 0.04267 | -0.0029 |
| DF | 20205 | 6.0227 | 0.54361 | -0.20669 | 0.20395 | -0.00644 | -0.00378 |
| WF | 01505 | 5.0312 | 0.5368 | -0.18957 | 0.16199 | 0.04385 | -0.00651 |
| MH | 26403 | 6.90396 | 0.55645 | -0.28509 | 0.2043 | 0 | 0 |
| IC | 08105 | 5.0446 | 0.47419 | -0.13917 | 0.1423 | 0.04838 | -0.00616 |
| LP | 10805 | 6.6941 | 0.8198 | -0.36992 | 0.17722 | -0.01202 | -0.00882 |
| ES | 09305 | 6.7575 | 0.55048 | -0.25204 | 0.19002 | 0 | -0.00313 |
| SH | 02105 | 2.317 | 0.4788 | -0.06093 | 0.15482 | 0.05182 | 0 |
| PP | 12205 | 4.7762 | 0.74126 | -0.28734 | 0.17137 | -0.00602 | -0.00209 |
| WJ | 06405 | 5.1486 | 0.73636 | -0.46927 | 0.39114 | -0.05429 | 0 |
| GF | 01703 | 1.0303 | 1.14079 | 0.20904 | 0.38787 | 0 | 0 |
| AF | 01905 | 5.8827 | 0.51479 | -0.21501 | 0.17916 | 0.03277 | -0.00828 |
| SF | 01105 | 4.4799 | 0.45976 | -0.10425 | 0.11866 | 0.06762 | -0.00715 |
| NF | 02206 | 3.0614 | 0.6276 | 0 | 0 | 0 | 0 |
| WB | 10105 | 2.2354 | 0.6668 | -0.11658 | 0.16927 | 0 | 0 |
| WL | 07303 | 1.02478 | 0.99889 | 0.19422 | 0.59423 | -0.09078 | -0.02341 |
| RC | 24205 | 6.2382 | 0.29517 | -0.10673 | 0.23219 | 0.05341 | -0.00787 |
| WH | 26305 | 6.0384 | 0.51581 | -0.21349 | 0.17468 | 0.06143 | -0.00571 |
| PY | 23104 | 6.1297 | 0.45424 | 0 | 0 | 0 | 0 |
| WA | 31206 | 7.5183 | 0.4461 | 0 | 0 | 0 | 0 |
| RA | 35106 | 7.0806 | 0.4771 | 0 | 0 | 0 | 0 |
| BM | 31206 | 7.5183 | 0.4461 | 0 | 0 | 0 | 0 |
| AS | 74605 | 4.7961 | 0.64167 | -0.18695 | 0.18581 | 0 | 0 |
| CW | 74705 | 4.4327 | 0.41505 | -0.23264 | 0.41477 | 0 | 0 |
| CH | 35106 | 7.0806 | 0.4771 | 0 | 0 | 0 | 0 |
| WO | 81505 | 2.4857 | 0.70862 | 0 | 0.10168 | 0 | 0 |
| WI | 31206 | 7.5183 | 0.4461 | 0 | 0 | 0 | 0 |
| GC | 63102 | 3.115 | 0.7966 | 0 | 0.0745 | -0.0053 | 0.0523 |
| MC | 47502 | 4.0105 | 0.8611 | 0 | 0 | 0 | -0.0431 |
| MB | 47502 | 4.0105 | 0.8611 | 0 | 0 | 0 | -0.0431 |
| OS | 12205 | 4.7762 | 0.74126 | -0.28734 | 0.17137 | -0.00602 | -0.00209 |
| OH | 31206 | 7.5183 | 0.4461 | 0 | 0 | 0 | 0 |

\*Equation number is a combination of the species FIA code (###) and equation source (##).

**Table 4.4.2.2 *MinD* values and data bounds for equations {4.4.2.1} – {4.4.2.6} in the SO variant.**

| **Species Code** | **Equation Number\*** | **MinD** | **EL min** | ***EL* max** | ***HI* min** | ***HI* max** | ***CW* max** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| WP | 11905 | 1.0 | 10 | 75 | n/a | n/a | 35 |
| SP | 11705 | 1.0 | 5 | 75 | n/a | n/a | 56 |
| DF | 20205 | 1.0 | 1 | 75 | n/a | n/a | 80 |
| WF | 01505 | 1.0 | 2 | 75 | n/a | n/a | 35 |
| MH | 26403 | n/a | n/a | n/a | n/a | n/a | 45 |
| IC | 08105 | 1.0 | 5 | 62 | n/a | n/a | 78 |
| LP | 10805 | 1.0 | 1 | 79 | n/a | n/a | 40 |
| ES | 09305 | 1.0 | 1 | 85 | n/a | n/a | 40 |
| SH | 02105 | 1.0 | n/a | n/a | n/a | n/a | 65 |
| PP | 12205 | 1.0 | 13 | 75 | n/a | n/a | 50 |
| WJ | 06405 | 1.0 | n/a | n/a | n/a | n/a | 36 |
| GF | 01703 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| AF | 01905 | 1.0 | 10 | 85 | n/a | n/a | 30 |
| SF | 01105 | 1.0 | 4 | 72 | n/a | n/a | 33 |
| NF | 02206 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| WB | 10105 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| WL | 07303 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| RC | 24205 | 1.0 | 1 | 72 | n/a | n/a | 45 |
| WH | 26305 | 1.0 | 1 | 72 | n/a | n/a | 54 |
| PY | 23104 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| WA | 31206 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| RA | 35106 | 1.0 | n/a | n/a | n/a | n/a | 35 |
| BM | 31206 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| AS | 74605 | 1.0 | n/a | n/a | n/a | n/a | 45 |
| CW | 74705 | 1.0 | n/a | n/a | n/a | n/a | 56 |
| CH | 35106 | 1.0 | n/a | n/a | n/a | n/a | 35 |
| WO | 81505 | 1.0 | n/a | n/a | n/a | n/a | 39 |
| WI | 31206 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| GC | 63102 | 5.0 | n/a | n/a | -55 | 15 | 41 |
| MC | 47502 | 5.0 | n/a | n/a | -37 | 27 | 29 |
| MB | 47502 | 5.0 | n/a | n/a | -37 | 27 | 29 |
| OS | 12205 | 1.0 | 13 | 75 | n/a | n/a | 50 |
| OH | 31206 | 1.0 | n/a | n/a | n/a | n/a | 30 |

**Table 4.4.2.3 *BF* values for equation {4.4.2.5} in the SO variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **Location Code** | | |
| **601**  **799** | **602** | **620** |
| WP | 1.000 | 1.090 | 1.090 |
| SP | 1.048 | 1.000 | 1.048 |
| DF | 1.055 | 1.000 | 1.184 |
| WF | 1.044 | 1.044 | 1.095 |
| IC | 0.837 | 1.000 | 1.000 |
| LP | 1.000 | 1.114 | 1.050 |
| PP | 0.918 | 0.946 | 0.951 |
| AF | 0.936 | 1.000 | 1.000 |
| SF | 1.000 | 1.000 | 1.000 |
| RC | 1.000 | 1.000 | 1.000 |
| WH | 1.097 | 1.000 | 1.000 |
| OS | 1.000 | 1.000 | 1.000 |

\*Any *BF* values not listed in Table 4.4.2.3 are assumed to be *BF* = 1.0

## 4.5 Crown Competition Factor

The SO variant uses crown competition factor (*CCF*) as a predictor variable in some growth relationships. Crown competition factor (Krajicek and others 1961) is a relative measurement of stand density that is based on tree diameters. Individual tree *CCFt* values estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open-grown. Stand *CCF* is the summation of individual tree (*CCFt*)values. A stand *CCF* value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand.

Crown competition factor is calculated using equations {4.5.1} – {4.5.5}. All species coefficients are shown in table 4.5.1.Crown competition factor for Shasta red fir (9) and Oregon white oak (27) is calculated using equation {4.5.5} where crown width used in Region 5 forests is the stated equation in Section 4.4.1 and crown width used in Region 6 forests and the Warm Springs Reservation is found in equations {4.5.6} and {4.5.7}.

Equation {4.5.4} is used to calculate *CCFt* for trees with *DBH* < 1.0 inch for species taken from the West Cascades (WC) variant. These species include noble fir, western hemlock, Pacific yew, white alder, red alder, bigleaf maple, black cottonwood, bitter cherry, willow, giant chinquapin, curl-leaf mountain mahogany, birchleaf mountain mahogany, other hardwood. . Any other species except Shasta red fir and Oregon white oak use equations {4.5.2} and {4.5.3}.

All species except Shasta red fir and Oregon white oak use equation {4.5.1} to calculate crown competition factor when *DBH* <u>></u> 1.0 inches.

{4.5.1} *DBH* <u>></u> 1.0”: *CCFt* = R1 + (R2 \* *DBH*) + (R3 \* *DBH*^2)

{4.5.2} 0.1” < *DBH* < 1.0”: *CCFt* = R4 \* *DBH*^R5

{4.5.3} *DBH* <u><</u> 0.1”: *CCFt* = 0.001

{4.5.4} *DBH* < 1.0”: *CCFt* = (R1 + R2 + R3) \* *DBH*

{4.5.5} *CCFt* = 0.001803 \* *CW^*2

{4.5.6} *HT* <u>></u> 4.5: *CWt* = B1 \* *DBH* ^B2

{4.5.7} *HT* < 4.5: *CWt* = S1\**HT*

where:

*CCFt* is crown competition factor for an individual tree

*CW* is maximum tree crown width

*DBH* is tree diameter at breast height

R1 – R5 are species-specific coefficients shown in table 4.5.1

B1,B2,S1 are species-specific coeffecients shown in table 4.5.2

**Table 4.5.1 Coefficients for *CCF* equations {4.5.1} – {4.5.5} in the SO variant.**

| **Species Code** | **Equations Used** | **R1** | **R2** | **R3** | **R4** | **R5** |
| --- | --- | --- | --- | --- | --- | --- |
| WP | {4.5.1} – {4.5.3} | 0.0186 | 0.0146 | 0.00288 | 0.009884 | 1.6667 |
| SP | {4.5.1} – {4.5.3} | 0.0392 | 0.018 | 0.00207 | 0.007244 | 1.8182 |
| DF | {4.5.1} – {4.5.3} | 0.0388 | 0.0269 | 0.00466 | 0.017299 | 1.5571 |
| WF | {4.5.1} – {4.5.3} | 0.069 | 0.0225 | 0.00183 | 0.015248 | 1.7333 |
| MH | {4.5.1} – {4.5.3} | 0.03 | 0.018 | 0.00281 | 0.011109 | 1.725 |
| IC | {4.5.1} – {4.5.3} | 0.0194 | 0.0142 | 0.00261 | 0.008915 | 1.78 |
| LP | {4.5.1} – {4.5.3} | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.76 |
| ES | {4.5.1} – {4.5.3} | 0.03 | 0.0173 | 0.00259 | 0.007875 | 1.736 |
| PP | {4.5.1} – {4.5.3} | 0.0219 | 0.0169 | 0.00325 | 0.007813 | 1.778 |
| WJ | {4.5.1} – {4.5.3} | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.76 |
| GF | {4.5.1} – {4.5.3} | 0.069 | 0.0225 | 0.00183 | 0.015248 | 1.7333 |
| AF | {4.5.1} – {4.5.3} | 0.0172 | 0.00877 | 0.00112 | 0.011402 | 1.756 |
| SF | {4.5.1} – {4.5.3} | 0.04 | 0.027 | 0.00405 | 0.015248 | 1.7333 |
| NF | {4.5.1} & {4.5.4} | 0.02453 | 0.01147 | 0.00134 | 0 | 0 |
| WB | {4.5.1} – {4.5.3} | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.76 |
| WL | {4.5.1} – {4.5.3} | 0.02 | 0.0148 | 0.00338 | 0.007244 | 1.8182 |
| RC | {4.5.1} – {4.5.3} | 0.03 | 0.0238 | 0.0049 | 0.008915 | 1.78 |
| WH | {4.5.1} & {4.5.4} | 0.03758 | 0.02329 | 0.00361 | 0 | 0 |
| PY | {4.5.1} & {4.5.4} | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| WA | {4.5.1} & {4.5.4} | 0.03561 | 0.0273 | 0.00524 | 0 | 0 |
| RA | {4.5.1} & {4.5.4} | 0.03561 | 0.0273 | 0.00524 | 0 | 0 |
| BM | {4.5.1} & {4.5.4} | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| AS | {4.5.1} – {4.5.3} | 0.03 | 0.0238 | 0.0049 | 0.008915 | 1.78 |
| CW | {4.5.1} & {4.5.4} | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| CH | {4.5.1} & {4.5.4} | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| WI | {4.5.1} & {4.5.4} | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| GC | {4.5.1} & {4.5.4} | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| MC | {4.5.1} & {4.5.4} | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| MB | {4.5.1} & {4.5.4} | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |
| OS | {4.5.1} – {4.5.3} | 0.0388 | 0.0269 | 0.00466 | 0.017299 | 1.5571 |
| OH | {4.5.1} & {4.5.4} | 0.0204 | 0.0246 | 0.0074 | 0 | 0 |

**Table 4.5.2 Coefficients for CW equations used in calculating CCF in the SO variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **B1** | **B2** | **H1** |
| SH | 3.1146 | 0.5780 | 0.345 |
| WO | 2.4922 | 0.8544 | 0.140 |

## 4.6 Small Tree Growth Relationships

Trees are considered “small trees” for FVS modeling purposes when they are smaller than some threshold diameter. The threshold diameter is set to 90.0” for western juniper and 3.0” for all other species in the SO variant. As a result, western juniper trees of all sizes use diameter and height growth equations given in this section.

The small tree model is height-growth driven, meaning height growth is estimated first and diameter growth is estimated from height growth. These relationships are discussed in the following sections.

### 4.6.1 Small Tree Height Growth

The small-tree height increment model predicts 5-year or 10-year height growth (*HTG*) for small trees, depending on species. Height growth is predicted directly for Shasta red fir, quaking aspen, and Oregon white oak, and is a product of potential height growth and one, or more, modifier functions for all other species.

For western white pine, sugar pine, Douglas-fir, white fir, mountain hemlock, incense cedar, lodgepole pine, Engelmann spruce, ponderosa pine, western juniper, grand fir, subalpine fir, Pacific silver fir, noble fir, whitebark pine, western larch, western redcedar, western hemlock, Pacific yew, white alder, red alder, bigleaf maple, black cottonwood, bitter cherry, willow, giant chinquapin, curl-leaf mountain mahogany, birchleaf mountain mahogany, other softwood, and other hardwood, height growth is estimated using equation {4.6.1.1}. The *PCTRED* modifier, which is an adjustment for stand density, is estimated using equation {4.6.1.2}. The *VIGOR* modifier, which is an adjustment based on a trees’ crown ratio, is estimated using equation {4.6.1.3} for all species except western juniper, and equation {4.6.1.4} for western juniper.

{4.6.1.1} *HTG* = *POTHTG* \* *PCTRED* \* *VIGOR* \* *CON*

{4.6.1.2} *PCTRED* = 1.11436 – 0.011493\**Z* + 0.43012E-04 \* *Z^*2 – 0.72221E-07 \* *Z^*3 + 0.5607E-10 \* *Z^*4 – 0.1641E-13 \* *Z^*5

*Z* = *HTAvg* \* (*CCF* / 100)

{4.6.1.3} *VIGOR* = (150 \* *CR*3 \* exp(-6 \* *CR*) ) + 0.3

{4.6.1.4} *VIGOR* = 1 – [(1 – (150 \* *CR*^3 \* exp(-6 \* *CR*) )) / 3] (for western juniper)

where:

*HTG* is estimated 10-year height growth

*POTHTG* is estimated 10-year potential height growth

*PCTRED* is reduction in height growth due to stand density (bounded to 0.01 <u><</u> *PCTRED* <u><</u> 1)

*HTAvg* is average height of the 40 largest diameter trees in the stand

*CCF* is stand crown competition factor

*VIGOR* is reduction in height growth due to tree vigor (bounded to *VIGOR* <u><</u> 1.0)

*CR* is a tree’s live crown ratio (compacted) expressed as a proportion

*CON* is a scalar multiplier

It is expected, in a site index-based height growth model, that the dominant and co-dominant trees in an open-grown stand reach site height at the base age used to develop the equations. After all the parts of the SO variant growth model were assembled, height growth projections for each species were adjusted (if necessary) by applying adjustment factors (*CON*; shown in table 4.6.1.1) to the small-tree height growth increments. These adjustment factors force the dominant and co-dominant trees to reach site height at the base age for a range of site index values.

Potential height growth for western white pine and western redcedar is estimated using equation {4.6.1.5} and coefficients shown in table 4.6.1.1.

{4.6.1.5} *POTHTG* = (SI / c1) \* (1.0 - c2 \* exp(c3 \* X2))^c4 - (SI / c1) \* (SI / c1) \* (1.0 - c2 \* exp(c3 \* X1))^c4

*X1* = exp[(1.0 - (c1 / SI \* H) ^ (1 / c4)) / c2] / c3

*X2* = *X1* + 10

where:

*POTHTG* is potential 10-year height growth

*SI* is species site index

*X1* is estimated tree age at the beginning of the projection cycle

*X2* is estimated tree age at the beginning of the projection cycle plus 10 years

c1 – c4 are species-specific coefficients shown in table 4.6.1.1

Potential height growth for sugar pine, Douglas-fir, white fir, mountain hemlock, incense cedar, lodgepole pine, Engelmann spruce, ponderosa pine, grand fir, subalpine fir, Pacific silver fir, noble fir, whitebark pine, western larch, western hemlock, Pacific yew, white alder, red alder, bigleaf maple, black cottonwood, bitter cherry, willow, giant chinquapin, curl-leaf mountain mahogany, birchleaf mountain mahogany, other softwood, and other hardwood is estimated using equation {4.6.1.6}.

{4.6.1.6} *POTHTG* = [(c1 + c2 \* SI) / (c3 – c4 \* SI)] \* *A*

where:

*POTHTG* is potential 10-year height growth

*SI* is species site index

*A* is the number of years in the growth estimation period (10 in this case)

c1 – c4 are species-specific coefficients shown in table 4.6.1.1

Potential height growth for western juniper is estimated using equation {4.6.1.7}

{4.6.1.7} *POTHTG* = (*SI* / 5.0) \* (*SI* \* 1.5 – *HT*) / (*SI* \* 1.5) where 5.5 <u><</u> *SI* <u><</u> 75

where:

*POTHTG* is potential 10-year height growth

*SI* is species site index

*HT* is tree height

Potential height growth for mountain hemlock is estimated using equation {4.6.1.8}.

{4.6.1.8} *POTHTG* = [(c1 + c2 \* SI) / (c3 – c4 \* SI)] \* *A* \* 3.280833

where:

*POTHTG* is potential 10-year height growth

*SI* is species site index bounded by *SITELO* and *SITEHI* (shown in table 4.6.1.2)

*A* is the number of years in the growth estimation period (10 in this case)

c1 – c4 are species-specific coefficients shown in table 4.6.1.1

**Table 4.6.1.1 Coefficients (c1 – c4) and equation reference for small-tree height increment equations {4.6.1.1} – {4.6.1.6} in the SO variant.**

| **Species Code** | ***POTHTG* Equation** | **c1** | **c2** | **c3** | **c4** | **Adjustment Fact. (CON)** |
| --- | --- | --- | --- | --- | --- | --- |
| WP | {4.6.1.5} | 0.375045 | 0.92503 | -0.020796 | 2.48811 | 1.0 |
| SP | {4.6.1.6} | -1.0 | 0.32857 | 28.0 | 0.042857 | 1.0 |
| DF | {4.6.1.6} | 2.0 | 0.420 | 28.5 | 0.05 | 1.1 |
| WF | {4.6.1.6} | 4.2435 | 0.1510 | 19.0184 | 0.0570 | 1.2 |
| MH | {4.6.1.8} | 0.965758 | 0.082969 | 55.249612 | 1.288852 | 1.6 |
| IC | {4.6.1.6} | 4.2435 | 0.1510 | 19.0184 | 0.0570 | 1.3 |
| LP | {4.6.1.6} | 0 | 0.0200880 | 1.0 | 0 | 1.0 |
| ES | {4.6.1.6} | 0.09211 | 0.208517 | 43.358 | 0.168166 | 1.35 |
| SH | {4.6.1.10} |  |  |  |  |  |
| PP | {4.6.1.6} | -1.0 | 0.32857 | 28.0 | 0.042857 | 1.0 |
| WJ | {4.6.1.7} | 0 | 0 | 0 | 0 | 1.0 |
| GF | {4.6.1.6} | 4.2435 | 0.1510 | 19.0184 | 0.0570 | 1.2 |
| AF | {4.6.1.6} | 6.0 | 0.14 | 33.882 | 0.06588 | 1.0 |
| SF | {4.6.1.6} | -0.6667 | 0.4333 | 28.5 | 0.05 | 1.0 |
| NF | {4.6.1.6} | 11.26677 | 0.12027 | 27.93806 | 0.02873 | 1.0 |
| WB | {4.6.1.6} | 0 | 0.0200880 | 1.0 | 0 | 1.6 |
| WL | {4.6.1.6} | -3.9725 | 0.50995 | 28.1168 | 0.05661 | 1.0 |
| RC | {4.6.1.5} | 0.752842 | 1.0 | -0.0174 | 1.4711 | 1.0 |
| WH | {4.6.1.6} | -5.74874 | 0.54576 | 26.15767 | -0.03596 | 1.0 |
| PY | {4.6.1.6} | 1.47043 | 0.23317 | 31.56252 | 0.05586 | 1.0 |
| WA | {4.6.1.6} | 1.47043 | 0.23317 | 31.56252 | 0.05586 | 1.0 |
| RA | {4.6.1.6} | -0.007205 | 0.056794 | 1.0 | 0 | 1.2 |
| BM | {4.6.1.6} | 1.47043 | 0.23317 | 31.56252 | 0.05586 | 1.0 |
| AS | {4.6.1.9} |  |  |  |  |  |
| CW | {4.6.1.6} | 1.47043 | 0.23317 | 31.56252 | 0.05586 | 1.0 |
| CH | {4.6.1.6} | 1.47043 | 0.23317 | 31.56252 | 0.05586 | 1.0 |
| WO | {4.6.1.11} |  |  |  |  |  |
| WI | {4.6.1.6} | 1.47043 | 0.23317 | 31.56252 | 0.05586 | 1.0 |
| GC | {4.6.1.6} | 1.47043 | 0.23317 | 31.56252 | 0.05586 | 1.0 |
| MC | {4.6.1.6} | 1.47043 | 0.23317 | 31.56252 | 0.05586 | 1.0 |
| MB | {4.6.1.6} | 1.47043 | 0.23317 | 31.56252 | 0.05586 | 1.0 |
| OS | {4.6.1.6} | 2.0 | 0.420 | 28.5 | 0.05 | 1.1 |
| OH | {4.6.1.6} | 1.47043 | 0.23317 | 31.56252 | 0.05586 | 1.0 |

Height growth for quaking aspen is estimated using equation {4.6.1.9}.

{4.6.1.9} *HTG* = (1.8 \* [26.9825 \* ((*AG* + 10) ^ 1.1752)) – (26.9825 \* (*AG* ^ 1.1752))] / (2.54 \* 12))

\* *RSIMOD*

and *RSIMOD* = 0.5 \* (1.0 + (*SI* - *SITELO*) / (*SITEHI* - *SITELO*))

where:

*HTG* is potential 10-year height growth

*AG* is estimated tree age at the beginning of the projection cycle

*SI* is species site index bounded so (*SITELO* + 0.5) <u><</u> SI <u><</u> *SITEHI*

*SITELO* is the lower limit in the range of site index for this species in this geographic area (shown in table 3.4.2)

*SITEHI* is the upper limit in the range of site index for this species in this geographic area (shown in table 3.4.2)

c1 – c4 are species-specific coefficients shown in table 4.6.1.1

Height growth for Shasta red fir is estimated using equation {4.6.1.10}

{4.6.1.10} *HTG* = ((5 \* (2.2227 + 0.4314 \* SI)) / (29 – 0.05 \* SI)) \* 1.016605 \* [1 - exp(-4.26558 \*

(*CR* / 100))] \* [exp(2.54119 \* (*RELH*T ^ 0.250537 - 1))]

where:

*HTG* is estimated 5-year height growth

*SI* is species site index

*CR* is a tree’s live crown ratio (compacted) expressed as a percent

*RELHT* is tree height divided by average height of the 40 largest diameter trees in the stand

Height growth for Oregon white oak is estimated using equation {4.5.1.11}

{4.6.1.11} *HTG* = exp(3.817 – 0.7829 \* ln(*BAL*)) \* (0.8+ 0.004\* (*SI* - 50))

where:

*HTG* is 5-year height growth

*SI* is species site index

*BAL* is total basal area in trees larger than the subject tree where 5 <u><</u> BAL

c1 – c4 are species-specific coefficients shown in table 4.6.1.1

For all species, a small random error is then added to the height growth estimate. The estimated height growth (*HTG*) is then adjusted to account for cycle length, user defined small-tree height growth adjustments, and adjustments due to small tree height model calibration from the input data.

Height growth estimates from the small-tree model are weighted with the height growth estimates from the large tree model over a range of diameters (*Xmin* and *Xmax*) in order to smooth the transition between the two models. For example, the closer a tree’s *DBH* value is to the minimum diameter (*Xmin*), the more the growth estimate will be weighted towards the small-tree growth model. The closer a tree’s *DBH* value is to the maximum diameter (*Xmax*), the more the growth estimate will be weighted towards the large-tree growth model. If a tree’s *DBH* value falls outside of the range given by *Xmin* and *Xmax*, then the model will use only the small-tree or large-tree growth model in the growth estimate. The weight applied to the growth estimate is calculated using equation {4.6.1.12}, and applied as shown in equation {4.6.1.13}. The range of diameters for each species is shown in table 4.6.1.3.

{4.6.1.12}

DBH <u><</u> Xmin: XWT = 0

Xmin < DBH < Xmax: XWT = (DBH - Xmin) / (Xmax - Xmin)

DBH <u>></u> Xmax: XWT = 1

{4.6.1.13} Estimated growth = [(1 - *XWT*) \* *STGE*] + [*XWT* \* *LTGE*]

where:

*XWT* is the weight applied to the growth estimates

*DBH* is tree diameter at breast height

*Xmax* is the maximum *DBH* where weighting between small and large tree models occurs

*Xmin* is the minimum *DBH* where weighting between small and large tree models occurs

*STGE* is the growth estimate obtained using the small-tree growth model

*LTGE* is the growth estimate obtained using the large-tree growth model

**Table 4.6.1.3 Diameter bounds by species in the SO variant.**

| **Species Code** | ***Xmin*** | ***Xmax*** |
| --- | --- | --- |
| WP | 2.0 | 3.0 |
| SP | 1.0 | 5.0 |
| DF | 2.0 | 4.0 |
| WF | 2.0 | 4.0 |
| MH | 1.0 | 2.0 |
| IC | 2.0 | 4.0 |
| LP | 2.0 | 4.0 |
| ES | 2.0 | 4.0 |
| SH | 2.0 | 4.0 |
| PP | 1.0 | 5.0 |
| WJ | 90.0\* | 99.0\* |
| GF | 2.0 | 4.0 |
| AF | 2.0 | 4.0 |
| SF | 2.0 | 4.0 |
| NF | 2.0 | 4.0 |
| WB | 1.5 | 3.0 |
| WL | 2.0 | 4.0 |
| RC | 2.0 | 10.0 |
| WH | 2.0 | 4.0 |
| PY | 2.0 | 4.0 |
| WA | 2.0 | 4.0 |
| RA | 2.0 | 4.0 |
| BM | 2.0 | 4.0 |
| AS | 2.0 | 4.0 |
| CW | 2.0 | 4.0 |
| CH | 2.0 | 4.0 |
| WO | 2.0 | 4.0 |
| WI | 2.0 | 4.0 |
| GC | 2.0 | 4.0 |
| MC | 2.0 | 4.0 |
| MB | 2.0 | 4.0 |
| OS | 2.0 | 4.0 |
| OH | 2.0 | 4.0 |

\*There is only one growth relationship that applies to trees of all sizes for this species. These relationships are contained in the “small” tree portion of FVS.

### ****4.6.2 Small Tree Diameter Growth****

As stated previously, for trees being projected with the small tree equations, height growth is predicted first, and then diameter growth. So both height at the beginning of the cycle and height at the end of the cycle are known when predicting diameter growth. Small tree diameter growth for trees over 4.5 feet tall is calculated as the difference of predicted diameter at the start of the projection period and the predicted diameter at the end of the projection period, adjusted for bark ratio. In most cases, these two predicted diameters are estimated using the species-specific height-diameter relationships discussed in section 4.1 inverted to predict diameter as a function of height. By definition, diameter growth is zero for trees less than 4.5 feet tall.

In the SO variant, several curve forms are used to predict diameter as a function of height. The equation choice is based on species and whether calibration of the Wykoff form of the height-diameter curve was specified using the NOHTDREG keyword and did occur.

When calibration of the Wykoff form of the height-diameter curve was not specified (the default condition in the SO variant) or does not occur for a species, the Curtis-Arney height-diameter curve, shown in equations {4.6.2.1} and {4.6.2.2}, is used to predict diameter at the beginning and end of the projection cycle for all species except western juniper, whitebark pine, and quaking aspen.

{4.6.2.1} *HT* <u>></u> *HAT3*: *DBH* = exp(ln((ln(*HT –* 4.5) – ln(a))/-b) / c)

{4.6.2.2} *HT* < *HAT3*: *DBH* = (((*HT* – 4.51) \* 2.7) / (4.5 + a \* exp(-b \* (3.0 ^ c)) – 4.51)) + 0.3

where:

*HAT3*  = 4.5 + a \* exp(-b \* (3.0 ^ c))

*DBH* is tree diameter at breast height

*HT* is tree height

a, b, c are species-specific coefficients shown in table 4.6.2.1

Western juniper uses equation {4.6.2.4}, whitebark pine uses equation {4.6.2.5}, and quaking aspen uses equation {4.6.2.6} with default coefficients.

{4.6.2.3} *DBH* = (*HT –* 4.17085) / 3.03659

{4.6.2.4} *DBH* = 10 \* (*HT* – 4.5) / (*SI* – 4.5)

{4.6.2.5} *DBH* = *CR* \* (0.001711 + 0.000231 \* (*HT* – 4.5)) - 0.00005 \* (*HT* – 4.5) \* *TPCCF*

+ 0.17023 \* (*HT* – 4.5) + 0.3

{4.6.2.6} *DBH* = (B2 / (ln(*HT* – 4.5) – B1)) – 1.0

{4.6.2.7} *DBH* = 0.1 \* *HTG*

where:

*DBH* is tree diameter at breast height (JU uses diameter at root collar)

*HT* is tree height

*HTG* is estimated tree height growth

*SI* is species site index

*CR* is crown ratio expressed as a percent

*TPCCF* is crown competition factor based on sample point statistics (bounded to 25 <u><</u> *TPCCF* <u><</u> 300)

B1, B2 are coefficients from height-diameter relationships (shown in table 4.1.1)

When calibration of the Wykoff form of the height-diameter curve is specified, and occurs for a species, then a different equation selection occurs. Western white pine, sugar pine, Douglas-fir, white fir, mountain hemlock, incense cedar, lodgepole pine, Engelmann spruce, Shasta red fir, grand fir, subalpine fir, Pacific silver fir, western larch, western redcedar, quaking aspen, Oregon white oak, and other softwood use equation {4.6.2.6} with the calibrated coefficients. Ponderosa pine uses equation {4.6.2.3}, western juniper uses equation {4.6.2.4}, and whitebark pine uses equation {4.6.2.5}, none of which are calibrated. Nobel fir, western hemlock, Pacific yew, white alder, red alder, bigleaf maple, black cottonwood, bitter cherry, willow, giant chinquapin, curl-leaf mountain mahogany, birchleaf mountain mahogany, and other hardwood use equation {4.6.2.7} which is not calibrated.

## 4.7 Large Tree Growth Relationships

Trees are considered “large trees” for FVS modeling purposes when they are equal to, or larger than, some threshold diameter. This threshold diameter is set to 90.0” for western juniper and 3.0” for all other species in the SO variant. As a result, western juniper trees of all sizes use diameter and height growth equations given in section 4.6.

The large-tree model is driven by diameter growth meaning diameter growth is estimated first, and then height growth is estimated from diameter growth and other variables. These relationships are discussed in the following sections.

### 4.7.1 Large Tree Diameter Growth

The large tree diameter growth model used in most FVS variants is described in section 7.2.1 in Dixon (2002). For most variants, instead of predicting diameter increment directly, the natural log of the periodic change in squared inside-bark diameter (ln(*DDS*)) is predicted (Dixon 2002; Wykoff 1990; Stage 1973; and Cole and Stage 1972). For variants predicting diameter increment directly, diameter increment is converted to the *DDS* scale to keep the FVS system consistent across all variants.

For locations other than Warm Springs (799), the SO variant predicts diameter growth using equation {4.7.1.1} for all species except western juniper, quaking aspen, and red alder. Coefficients for this equation are shown in tables 4.7.1.1 – 4.7.1.4. Diameter growth for quaking aspen and red alder are shown later in this section; western juniper uses equations given in section 4.6 for all sized trees.

For Warm Springs (799), the SO variant predicts diameter growth using equation {4.7.1.1} and coefficients shown in tables 4.7.1.1 – 4.7.1.4 for all species except western white pine, sugar pine, incense cedar, lodgepole pine, western redcedar, other softwood, western juniper, quaking aspen, and red alder. Diameter growth for western white pine, sugar pine, incense cedar, lodgepole pine, western redcedar, other softwood, quaking aspen and red alder are shown later in this section; western juniper uses equations given in section 4.6 for all sized trees.

{4.7.1.1}ln(*DDS)* = b1 + (b2 \* *EL*) + (b3 \* *EL*^2) + (b4 \* *MAI*) + (b5 \* ln(*SI*)) + (b6 \* *SSI*) + *SASP* + (b11\* ln(*DBH*)) + (b12 \* *BAL*) + (b13 \* *CR*) + (b14 \* *CR*^2) + (b15 \* *DBH*^2) + (b16 \* *BAL* / (ln(*DBH* + 1.0))) + (b17\* *PCCF*) + (b18 \* ln(*CCF*)) + (b19 \* *PCCF*^2) + (b20 \* *RELHT*) + (b21 \* ln(*BA*)) + (b22 \* *BA*) + (b23\* (*CCF* / 100)) + ((b24 \* *MAI* \* *CCF* / 100) + *DUMMY*

*SASP* = (b7 \* sin(*ASP*) \* *SL*) + (b8 \* cos(*ASP*) \* *SL*) + (b9 \* *SL*) + (b10 \* *SL*^2)

*SASP* = -0.174404 for Pacific silver fir, and -0.290174 for western larch when stand slope is equal to 0

where:

*DDS* is the square of the diameter growth increment

*EL* is stand elevation in hundreds of feet (bounded to be <u><</u> 30 for white alder, black cottonwood, bitter cherry, willow, giant chinquapin, curl-leaf mountain mahogany, birchleaf mountain mahogany, and other hardwood)

*MAI* is stand mean annual increment

*SSI* is site index of the site species

*SI* is species site index

*ASP* is stand aspect in radians ((ASP – 0.7854) is used for whitebark pine

*SL* is stand slope

*DBH* is tree diameter at breast height

*BAL* is total basal area in trees larger than the subject tree ((BAL / 100) is used for whitebark pine)

*CR* is crown ratio expressed as a proportion

*PCCF* is crown competition factor on the inventory point where the tree is established

*RELHT* is tree height divided by average height of the 40 largest diameter trees in the stand (bounded to *RELHT* <u><</u> 1.5)

*CCF* is stand crown competition factor

*BA* is total stand basal area

*DUMMY* is a dummy coefficient where:

*DUMMY* = -0.799079 for Pacific silver fir

*DUMMY* = 0 for all other species

b1 is a location-specific coefficient shown in table 4.7.1.2

b2- b24 are species-specific coefficients shown in table 4.7.1.1

**Table 4.7.1.1 Coefficients (b2 – b24) for equations {4.7.1.1} & {4.7.1.2} in the SO variant.**

| **Coefficient** | **Species Code** | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP**+ | **SP**+ | **DF, OS**+ | **WF, GF** | **MH** | **IC**+ | **LP**+ | **ES** | **SH** | **PP** |
| b2 | 0.00279 | 0.00466 | 0.01544 | 0.00362 | -0.03036 | -0.00637 | 0.01012 | 0 | 0.0248 | -0.00331 |
| b3 | -0.00001 | 0.00001 | -0.0001 | -0.00006 | 0.00037 | 0.00014 | -0.0002 | 0 | -0.00033429 | 0.00006 |
| b4 | 0 | 0.00375 | 0.00044 | 0.00114 | 0 | 0.00246 | 0.00778 | 0 | 0 | 0.0036 |
| b5 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0.86756 | 0.492695 | 0 |
| b6 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b7 | -0.19278 | 0.56358 | -0.40153 | -0.1713 | 0.33069 | -0.43281 | -0.25658 | -0.17911 | 0.13918 | -0.14076 |
| b8 | 0.12915 | 0.08831 | -0.17389 | -0.14234 | -0.29385 | -0.04156 | -0.39893 | 0.38002 | -0.444594 | -0.05217 |
| b9 | 0.77922 | -1.50252 | -0.18923 | 0.02912 | -0.59628 | -0.90318 | 0.19253 | -0.8178 | 0 | -0.29407 |
| b10 | -0.93813 | 1.21439 | -0.49057 | -0.29671 | 1.07549 | 1.36603 | 0 | 0.84368 | 0 | 0.16735 |
| b11 | 0.77889 | 1.05245 | 0.3316 | 0.89887 | 0.99324 | 0.72947 | 0.63249 | 1.3261 | 1.186676 | 0.53028 |
| b12 | 0.00121 | 0.0002 | 0.00479 | 0.00106 | -0.00087 | 0.00483 | 0.00169 | 0 | 0 | 0.00325 |
| b13 | 3.36606 | 2.89738 | 4.43317 | 3.11044 | 1.73837 | 1.57139 | 2.35065 | 1.2973 | 2.763519 | 3.43377 |
| b14 | -1.80146 | -0.9543 | -2.82894 | -1.13806 | -0.12161 | 0 | -0.63173 | 0 | -0.871061 | -1.843 |
| b15\* |  |  |  |  |  |  |  |  |  |  |
| b16 | -0.00897 | -0.00437 | -0.01918 | -0.00707 | -0.00105 | -0.01497 | -0.00647 | -0.00239 | -0.003728 | -0.01362 |
| b17 | 0 | -0.0006 | -0.00041 | -0.00027 | 0 | -0.00053 | 0 | -0.00044 | 0 | 0 |
| b18 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | -0.20488 |
| b19\*\* | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0.000001 |
| b20 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0.49649 | 0 | 0 |
| b21 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | -0.122905 | 0 |
| b22 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b23 | -0.00016 | 0.00157 | -0.00138 | -0.00024 | -0.00027 | 0 | 0.00109 | 0 | 0 | 0 |
| b24 | 0.00001 | -0.00001 | 0.00001 | 0.00001 | 0.00001 | 0 | -0.00003 | 0 | 0 | 0 |

\*see table 4.7.1.4 for b15 values

\*\*set to zero for ponderosa pine when *PCCF* > 400

+for the Warm Springs Reservation, see equations below for these species

**Table 4.7.1.1 Coefficients (b2 - b24) for equations {4.7.1.1} & {4.7.1.2} in the SO variant.**

| **Coefficient** | **Species Code** | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **AF** | **SF** | **NF** | **WB** | **WL** | **RC**+ | **WH** | **PY** | **WA, CW, CH, WI, GC, MC, MB, OH** |
| b2 | 0.02956 | -0.015087 | -0.069045 | 0 | 0.004379 | -0.00175 | -0.040067 | 0 | -0.075986 |
| b3 | -0.00033 | 0 | 0.000608 | 0 | 0 | -0.000067 | 0.000395 | 0 | 0.001193 |
| b4 | 0.00753 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b5 | 0 | 0.323625 | 0.684939 | 0 | 0.351929 | 0 | 0.380416 | 0.252853 | 0.227307 |
| b6 | 0 | 0 | 0 | 0.001766 | 0 | 0 | 0 | 0 | 0 |
| b7 | -0.28887 | -0.128126 | -0.207659 | -0.01752 | 0.258712 | 0.05534 | 0 | 0 | -0.86398 |
| b8 | -0.65502 | -0.059062 | -0.374512 | -0.609774 | -0.156235 | -0.06625 | 0 | 0 | 0.085958 |
| b9 | 0.64936 | 0.240178 | 0.400223 | -2.05706 | -0.635704 | 0.11931 | 0.421486 | 0 | 0 |
| b10 | -0.37153 | 0.131356 | 0 | 2.11326 | 0 | 0 | -0.69361 | 0 | 0 |
| b11 | 0.91259 | 0.980383 | 0.904253 | 0.213947 | 0.609098 | 0.58705 | 0.722462 | 0.879338 | 0.889596 |
| b12 | 0.0038 | 0 | 0 | -0.358634 | 0 | 0 | 0 | 0 | 0 |
| b13 | 2.44945 | 1.709846 | 4.1231012 | 1.523464 | 1.158355 | 1.2936 | 2.1603479 | 1.970052 | 1.732535 |
| b14 | -0.72173 | 0 | -2.6893401 | 0 | 0 | 0 | -0.834196 | 0 | 0 |
| b15\* |  |  |  |  |  |  |  |  |  |
| b16 | -0.0162 | -0.000261 | -0.006368 | 0 | -0.004253 | -0.02284 | -0.004065 | -0.004215 | -0.001265 |
| b17 | -0.00064 | -0.000643 | -0.000471 | 0 | -0.000568 | -0.00094 | 0 | 0 | 0 |
| b18 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b19 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b20 | 0 | 0 | 0 | 0 | 0 | 0 | -0.000358 | 0 | 0 |
| b21 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b22 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | -0.000173 | -0.000981 |
| b23 | 0.00201 | 0 | 0 | -0.199592 | 0 | 0 | 0 | 0 | 0 |
| b24 | -0.00002 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |

\*see table 4.7.1.4 for b15 values

+for the Warm Springs Reservation, see equations below for these species

**Table 4.7.1.1 Coefficients (b2 – b24) for equations {4.7.1.1} & {4.7.1.2} in the SO variant.**

| **Coefficient** | **Species Code** | |
| --- | --- | --- |
| **BM** | **WO** |
| b2 | -0.012111 | 0.0049 |
| b3 | 0 | -8.781E-05 |
| b4 | 0 | 0 |
| b5 | 1.965888 | 0.213526 |
| b6 | 0 | 0 |
| b7 | 0 | 0 |
| b8 | 0 | 0 |
| b9 | 0 | 0 |
| b10 | 0 | 0 |
| b11 | 1.024186 | 1.310111 |
| b12 | 0 | 0 |
| b13 | 0.459387 | 0.271183 |
| b14 | 0 | 0 |
| b15\* |  |  |
| b16 | -0.010222 | 0 |
| b17 | -0.000757 | -0.000473 |
| b18 | 0 | 0 |
| b19 | 0 | 0 |
| b20 | 0 | 0 |
| b21 | 0 | 0 |
| b22 | 0 | 0 |
| b23 | 0 | 0 |
| b24 | 0 | 0 |

\*see table 4.7.1.4 for b15 values

**Table 4.7.1.2 b1 values by location class for equations {4.7.1.1} and {4.7.1.2} in the SO variant.**

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Location**  **Class** | **Species Code** | | | | | | | | | |
| **WP**+ | **SP**+ | **DF, OS**+ | **WF, GF** | **MH** | **IC**+ | **LP**+ | **ES** | **SH** | **PP** |
| 1 | -0.23185 | -1.09124 | 0.83941 | -0.16674 | -0.25368 | 0.23477 | -0.03997 | -4.64535 | -2.073942 | 1.48355 |
| 2 | 0 | -1.0463 | 0.97742 | -0.04804 | 0 | 0 | -0.17367 | 0 | 0 | 1.34282 |
| 3 | 0 | -0.048564 | 0.67207 | 0.02336 | 0 | 0 | 0.80024 | 0 | 0 | 1.46037 |
| 4 | 0 | -0.4713 | 1.17949 | 0.47563 | 0 | 0 | 0.40611 | 0 | 0 | 1.54377 |
| 5 | 0 | 0 | 0.83941 | 0 | 0 | 0 | 0.17307 | 0 | 0 | 0 |
| 6 | 0 | 0 | 0 | 0 | 0 | 0 | 0.35268 | 0 | 0 | 0 |

+for the Warm Springs Reservation, see equations below for these species

**Table 4.7.1.2 (continued) b1 values by location class for equations {4.7.1.1} and {4.7.1.2} in the SO variant.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Location**  **Class** | **Species Code** | | | | | | | | |
| **AF** | **SF** | **NF** | **WB** | **WL** | **RC**+ | **WH** | **PY** | **WA, CW, CH, WI, GC, MC, MB, OH** |
| 1 | -1.68772 | -0.441408 | -1.127977 | 1.911884 | -0.605649 | 1.49419 | -0.147675 | -1.3100671 | -0.107648 |
| 2 | -0.9624 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 3 | -1.38122 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 4 | -1.0344 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 5 | -0.76742 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 6 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |

+for the Warm Springs Reservation, see equations below for these species

**Table 4.7.1.2 (continued) b1 values by location class for equations {4.7.1.1} and {4.7.1.2} in the SO variant.**

| **Location**  **Class** | **Species Code** | |
| --- | --- | --- |
| **BM** | **WO** |
| 1 | -7.753469 | -1.958189 |
| 2 | 0 | 0 |
| 3 | 0 | 0 |
| 4 | 0 | 0 |
| 5 | 0 | 0 |
| 6 | 0 | 0 |

**Table 4.7.1.3 Location class by species and location code for equations {4.7.1.1} and {4.7.1.2} in the SO variant.**

| **Location Code** | **Species Code** | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **WP**+ | **SP**+ | **DF, OS**+ | **WF, GF** | **MH** | **IC**+ | **LP**+ | **ES** | **SH** | **PP** |
| 601 – Deschutes  799 – Warm Springs Reservation | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 602 – Fremont | 1 | 2 | 1 | 1 | 1 | 1 | 2 | 1 | 1 | 2 |
| 620 – Winema | 1 | 3 | 2 | 2 | 1 | 1 | 2 | 1 | 1 | 2 |
| 505 – Klamath & Shasta-Trinity | 1 | 4 | 3 | 2 | 1 | 1 | 3 | 1 | 1 | 3 |
| 506 – Lassen | 1 | 4 | 4 | 3 | 1 | 1 | 4 | 1 | 1 | 3 |
| 509 – Modoc | 1 | 4 | 5 | 3 | 1 | 1 | 5 | 1 | 1 | 4 |
| 511 – Plumas | 1 | 4 | 4 | 3 | 1 | 1 | 4 | 1 | 1 | 3 |
| 701 – Industry Lands | 1 | 1 | 5 | 4 | 1 | 1 | 6 | 1 | 1 | 2 |

+for the Warm Springs Reservation, see equations below for these species

**Table 4.7.1.3 (continued) Location class by species and location code for equations {4.7.1.1} and {4.7.1.2} in the SO variant.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Location Code** | **Species Code** | | | | | | | | |
| **AF** | **SF** | **NF** | **WB** | **WL** | **RC**+ | **WH** | **PY** | **WA, CW, CH, WI, GC, MC, MB, OH** |
| 601 – Deschutes  799 – Warm Springs Reservation | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 602 – Fremont | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 620 – Winema | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 505 – Klamath & Shasta-Trinity | 3 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 506 – Lassen | 4 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 509 – Modoc | 5 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 511 – Plumas | 4 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 701 – Industry Lands | 5 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

+for the Warm Springs Reservation, see equations below for these species

**Table 4.7.1.3 (continued) Location class by species and location code for equations {4.7.1.1} and {4.7.1.2} in the SO variant.**

| **Location Code** | **Species Code** | |
| --- | --- | --- |
| **BM** | **WO** |
| 601 – Deschutes  799 – Warm Springs Reservation | 1 | 1 |
| 602 – Fremont | 1 | 1 |
| 620 – Winema | 1 | 1 |
| 505 – Klamath | 1 | 1 |
| 506 – Lassen | 1 | 1 |
| 509 – Modoc | 1 | 1 |
| 511 – Plumas | 1 | 1 |
| 701 – Industry Lands | 1 | 1 |

**Table 4.7.1.4 b15 values by location code for equation {4.7.1.1} in the SO variant.**

| **Species Code** | **Location Code** | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **601**  **799** | **602** | **620** | **505**  **514** | **506** | **509** | **511** | **701** |
| WP+ | -0.000091 | -0.000091 | -0.000091 | -0.000091 | -0.000091 | -0.000091 | -0.000091 | -0.000091 |
| SP+ | -0.000295 | -0.000295 | -0.000295 | -0.000295 | -0.000295 | -0.000295 | -0.000295 | -0.000295 |
| DF, OS+ | -0.000066 | -0.000066 | -0.000066 | -0.000066 | -0.000066 | -0.000066 | -0.000066 | -0.000066 |
| WF, GF | -0.000414 | -0.000414 | -0.000414 | -0.000239 | -0.000325 | -0.000239 | -0.000325 | -0.000414 |
| MH | -0.000252 | -0.000252 | -0.000252 | -0.000252 | -0.000252 | -0.000252 | -0.000252 | -0.000252 |
| IC+ | -0.000251 | -0.000251 | -0.000251 | -0.000251 | -0.000133 | -0.000251 | -0.000133 | -0.000251 |
| LP+ | -0.000099 | -0.000099 | -0.000099 | -0.000099 | -0.000099 | -0.000099 | -0.000099 | -0.000099 |
| ES | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| SH | -0.0004572 | -0.0004572 | -0.0004572 | -0.0004572 | -0.0004572 | -0.0004572 | -0.0004572 | -0.0004572 |
| PP | -0.000324 | -0.000356 | -0.00012 | -0.00012 | -0.00012 | -0.00012 | -0.00012 | -0.000324 |
| AF | -0.000468 | -0.000468 | -0.000468 | -0.000468 | -0.000468 | -0.000468 | -0.000468 | -0.000468 |
| SF | -0.0002189 | -0.0002189 | -0.0002189 | -0.0002189 | -0.0002189 | -0.0002189 | -0.0002189 | -0.0002189 |
| NF | -0.0003996 | -0.0003996 | -0.0003996 | -0.0003996 | -0.0003996 | -0.0003996 | -0.0003996 | -0.0003996 |
| WB | -0.0006538 | -0.0006538 | -0.0006538 | -0.0006538 | -0.0006538 | -0.0006538 | -0.0006538 | -0.0006538 |
| WL | -0.0001683 | -0.0001683 | -0.0001683 | -0.0001683 | -0.0001683 | -0.0001683 | -0.0001683 | -0.0001683 |
| RC+ | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| WH | -0.0001546 | -0.0001546 | -0.0001546 | -0.0001546 | -0.0001546 | -0.0001546 | -0.0001546 | -0.0001546 |
| PY | -0.0001323 | -0.0001323 | -0.0001323 | -0.0001323 | -0.0001323 | -0.0001323 | -0.0001323 | -0.0001323 |
| WA, CW, CH, WI, GC, MC, MB, OH | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| BM | -0.0001737 | -0.0001737 | -0.0001737 | -0.0001737 | -0.0001737 | -0.0001737 | -0.0001737 | -0.0001737 |
| WO | -0.0003048 | -0.0003048 | -0.0003048 | -0.0003048 | -0.0003048 | -0.0003048 | -0.0003048 | -0.0003048 |

+for the Warm Springs Reservation, see equations below for these species

Large-tree diameter growth for quaking aspen is predicted using equation set {4.7.1.2}. Diameter growth is predicted from a potential diameter growth equation that is modified by stand density, average tree size and site. While not shown here, this diameter growth estimate is eventually converted to the *DDS* scale.

{4.7.1.2}Used for quaking aspen

*POTGR* = (0.4755 – 0.0000038336 \* *DBH*^4.1488) + (0.0451 \* *CR* \* *DBH*^ .67266)

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

Large-tree diameter growth for red alder is predicted using equation set {4.7.1.3}. Diameter growth is predicted based on tree diameter and stand basal area. While not shown here, this diameter growth estimate is eventually converted to the *DDS* scale.

{4.7.1.3} Used for red alder

*DBH* <u><</u> 18.0”: *DG* = *CON* – (0.166496 \* *DBH*) + (0.004618 \* *DBH*^2)

*DBH* > 18.0”: *DG* = *CON* – (*CON* / 10) \* (*DBH* – 18)

where:

*CON* = (3.2505 – 0.00303 \* *BA*)

where:

*DG* is potential diameter growth

*DBH* is tree diameter at breast height

*BA* is stand basal area

For the Warm Springs Reservation, large-tree diameter growth for western white pine, sugar pine, incense cedar, lodgepole pine, western redcedar, and other softwood is predicted using equation sets {4.7.1.4} - {4.7.1.8}.

{4.7.1.4} Used for western white pine and sugar pine for the Warm Springs Reservation

*ln(DDS)* = – 0.58957 – (0.023376 \* *EL*) + (0.40401 \* *ln(XSITE)*) + (0.84469 \* *ln(DBH)*)+ (1.59725 \* *CR*) – (0.0000596 \* *DBH^2*) – (0.003726 \* *BAL* / (ln(*DBH* + 1.0)))– (0.000257 \* *PCCF*)

for western white pine, *XSITE = 1.96 \* SI*

for sugar pine, *XSITE = SI*

{4.7.1.5} Used for incense cedar for the Warm Springs Reservation

*ln(DDS)* = –1.310067 + (0.252853 \* *ln(XSITE)*) + (0.879338 \* *ln(DBH)*)+ (1.970052 \* *CR*) – (0.0001323 \* *DBH^2*) – (0.004215 \* *BAL* / (ln(*DBH* + 1.0)))– (0.000173 \* *BA*)

*XSITE = 25.0 + 1.2 \* SI*

{4.7.1.6} Used for lodgepole pine for the Warm Springs Reservation

*ln(DDS)* = – 1.084679 – (0.001124 \* *EL*) + (0.458662 \* *ln(XSITE)*) – (0.142328 \* sin(*ASP*) \* *SL*) – (0.064328 \* cos(*ASP*) \* *SL*) – (0.097297 \* *SL*) + (0.094464 \* *SL*^2) + (0.554261 \* *ln(DBH)*)+ (1.423849 \* *CR*) – (0.004803 \* *BAL* / (ln(*DBH* + 1.0))) – (0.000627 \* *PCCF*)

*XSITE = 12.25 + 1.325 \* SI*

{4.7.1.7} Used for western redcedar for the Warm Springs Reservation

*ln(DDS)* = 0.645645 – (0.050081 \* *EL*) + (0.00066 \* *EL^2*) + (0.139734 \* *ln(XSITE)*) + (0.843013 \* *ln(DBH)*) + (2.878032 \* *CR*) – (1.631418 \* *CR^2*)– (0.0000644 \* *DBH^2*) – (0.003923 \* *BAL* / (ln(*DBH* + 1.0))) – (0.000552 \* *PCCF*)

*XSITE = SI*

{4.7.1.8} Used for other softwood species group, which represents yellow cedar, for the Warm Springs Reservation

*ln(DDS)* = – 1.277664 + (0.244694 \* *ln(XSITE)*) + (0.679903 \* sin(*ASP*) \* *SL*) – (0.023186 \* cos(*ASP*) \* *SL*) + (0.81688 \* *ln(DBH)*) + (2.471226 \* *CR*)– (0.0002536 \* *DBH^2*) – (0.00595 \* *BAL* / (ln(*DBH* + 1.0))) – (0.000147 \* *BA*)

*XSITE = 3.5 + 1.45 \* SI*

where:

*DDS* is the square of the diameter growth increment

*EL* is stand elevation in hundreds of feet

*SI* is species site index using the SO variant site index reference curves

*XSITE* is species site index transformed to the reference curve for which the equation was fit

*ASP* is stand aspect in radians

*SL* is stand slope

*DBH* is tree diameter at breast height

*BAL* is total basal area in trees larger than the subject tree

*CR* is crown ratio expressed as a proportion

*PCCF* is crown competition factor on the inventory point where the tree is established

*BA* is total stand basal area

### 4.7.2 Large Tree Height Growth

Large tree height growth equations in the SO variant are based on site index curves. Species differences in height growth are accounted for by entering the appropriate curve with the species specific site index value (see section 3.4). Height growth for western juniper trees of all sizes is calculated using the small tree height growth equations shown in section 4.6.1.

Using a species site index and tree height at the beginning of the projection cycle, an estimated tree age is computed using the site index curves. Also, maximum species heights and ages for the species site index curve are assigned using values shown in table 4.7.2.1.

**Table 4.7.2.1 Maximum tree height and age for the species site index curve in the SO variant.**

| **Species Code** | **Maximum Height** | **Maximum Age** |
| --- | --- | --- |
| WP | 165 | 500 |
| SP | 160 | 400 |
| DF | 180 | 900 |
| WF | 180 | 450 |
| MH | 150 | 650 |
| IC | 150 | 650 |
| LP | 130 | 350 |
| ES | 165 | 400 |
| SH | 180 | 500 |
| PP | 175 | 900 |
| WJ | n/a | n/a |
| GF | 165 | 350 |
| AF | 120 | 350 |
| SF | 165 | 400 |
| NF | 165 | 400 |
| WB | 85 | 400 |
| WL | 175 | 400 |
| RC | 165 | 550 |
| WH | 165 | 550 |
| PY | 50 | 350 |
| WA | 50 | 350 |
| RA | 100 | 100 |
| BM | 100 | 100 |
| AS | 75 | 100 |
| CW | 125 | 100 |
| CH | 30 | 50 |
| WO | 75 | 250 |
| WI | 30 | 50 |
| GC | 30 | 75 |
| MC | 20 | 50 |
| MB | 25 | 50 |
| OS | 165 | 400 |
| OH | 100 | 100 |

For western white pine, sugar pine, Douglas-fir, white fir, mountain hemlock, incense cedar, lodgepole pine, Engelmann spruce, grand fir, subalpine fir, Pacific silver fir, noble fir, whitebark pine, western larch, western redcedar, western hemlock, Pacific yew, white alder, red alder, bigleaf maple, quaking aspen, black cottonwood, bitter cherry, willow, giant chinquapin, curl-leaf mountain mahogany, birchleaf mountain mahogany, other softwood, and other hardwood, if tree height at the beginning of the projection cycle is greater than or equal to the maximum species height, then height growth is computed using equation {4.7.2.1} and adjusted for cycle length and user supplied growth multipliers.

{4.7.2.1} *HTG* = 0.1

where:

*HTG* is estimated 10-year tree height growth

For western white pine, sugar pine, Douglas-fir, white fir, mountain hemlock, incense cedar, lodgepole pine, Engelmann spruce, grand fir, subalpine fir, Pacific silver fir, noble fir, whitebark pine, western larch, western redcedar, western hemlock, Pacific yew, white alder, red alder, bigleaf maple, quaking aspen, black cottonwood, bitter cherry, willow, giant chinquapin, curl-leaf mountain mahogany, birchleaf mountain mahogany, other softwood, and other hardwood, when tree height at the beginning of the projection cycle is less than the maximum species height, and for Shasta red fir and Oregon white oak, if estimated tree age at the beginning of the projection cycle is greater than the species maximum age, height growth is calculated using equation {4.7.2.2} and adjusted for cycle length and user supplied growth multipliers.

{4.7.2.2} *HTG* = 0.1 \* *HTGMOD*

where:

*HTG* is estimated 10-year tree height growth

*HTGMOD* is the weighted height growth multiplier shown in section 4.7.2.3

For ponderosa pine, if estimated tree age at the beginning of the projection cycle is greater than the species maximum age, height growth is calculated using equation {4.7.2.3} and adjusted for cycle length and user supplied growth multipliers.

{4.7.2.3} *HTG* = POTHTG \* *HTGMOD*

where:

*HTG* is estimated 10-year tree height growth

*POTHTG* is estimated potential height growth calculated as

*POTHTG* = -1.31 + 0.05 \* *SINDX* and bounded (*POTHTG* <u>></u> 0.1)

*SINDX* is ponderosa pine site index

*HTGMOD* is the weighted height growth multiplier shown in section 4.7.2.3

For western white pine, sugar pine, Douglas-fir, white fir, mountain hemlock, incense cedar, lodgepole pine, Engelmann spruce, Shasta red fir, grand fir, subalpine fir, Pacific silver fir, noble fir, western larch, western redcedar, western hemlock, Pacific yew, white alder, red alder, bigleaf maple, black cottonwood, bitter cherry, Oregon white oak, willow, giant chinquapin, curl-leaf mountain mahogany, birchleaf mountain mahogany, other softwood, and other hardwood, when estimated tree age at the beginning of the projection cycle is less than or equal to the species maximum age and tree height at the beginning of the projection cycle is less than the species maximum height, then potential height growth is obtained by subtracting estimated current height from an estimated future height. For ponderosa pine, when estimated tree age at the beginning of the projection cycle is less than or equal to the species maximum age, then potential height growth is obtained by subtracting estimated current height from an estimated future height. For all these species, potential height growth is then adjusted according to the tree’s crown ratio and height relative to other trees in the stand.

Estimated current height (ECH) and estimated future height (H10) are both obtained using the equations shown below with the following exception. Shasta red fir and Oregon white oak located in Region 5 forests use the Dunning/Levitan curves shown in section 4.7.2.1. Estimated current height is obtained using estimated tree age at the start of the projection cycle and site index. Estimated future height is obtained using estimated tree age at the start of the projection cycle plus 10-years and site index.

{4.7.2.4} western white pine

*H* = *SI* / (b0 \* (1.0 – b1 \* exp(b2\* *A*))^b3)

{4.7.2.5} Douglas-fir and other softwood

*H* = 4.5 + exp(b1 + b2 \* ln(*A*) + b3\* (ln(*A*)) ^ 4) + (b4 + (*SI* – 4.5)) \* (b5 + b6 \* (1 – exp(b7\**A*))^b8)

{4.7.2.6} white fir, incense cedar, grand fir, and Pacific silver fir

*H* = exp[b0 + b1 \* ln(*A*) + b2 \* (ln(*A*))^4 + b3 \* (ln(*A*))^9 + b4 \* (ln(*A*))^11 + b5 \* (ln(*A*))^18] + b12 \* exp[b6 + b7 \* ln(*A*) + b8 \* (ln(*A*))^2 + b9 \* (ln(*A*))^7 + b10 \* (ln(*A*))^16 + b11 \* (ln(*A*))^24] + (*SI* – 4.5) \* exp[b6 + b7 \* ln(*A*) + b8 \* (ln(*A*))^2 + b9 \* (ln(*A*))^7 + b10 \* (ln(*A*))^16 + b11 \* (ln(*A*))^24] + 4.5

{4.7.2.7} mountain hemlock

*H* = [(b0 + b1 \* *SI*) \* (1 – exp(b2 \* *SI ^*0.5 \* *A*))^(b4 + b5/*SI*) + 1.37] \* 3.281

{4.7.2.8} lodgepole pine

*H* = *SI* \* [b0 + (b1 \* *A*) + (b2 \* *A^*2)]

{4.7.2.9} Engelmann spruce

*H* = 4.5 + [(b0 \* *SI*^b1) \* (1 – exp(-b2 \* *A*)) ^ (b3 \* *SI*^b4)]

{4.7.2.10} Shasta red fir

*H* = [(*SI* – 4.5) \* (1 – exp(-X \* *A*^b1))] / [1 – exp(-Y \* 50^b1)] + 4.5

X = (*SI* \* *TERM*) + (b4\* *TERM^*2) + b5

*TERM* = *A* \* b2\* exp(*A* \* b3)

Y = (*SI* \* *TERM2*) + (b4 \* *TERM2^*2) + b5

*TERM2* = 50 \* b2 \* exp(50 \* b3)

{4.7.2.11} ponderosa pine and sugar pine

*H* = [b0\* (1 – exp(b1 \* *A*))^b2] – [(b3 + b4 \* (1 – exp(b5 \* *A*))^b6) \* b7] + [(b3 + b4 \* (1 – exp(b5 \* *A*))^b6) \* (*SI* – 4.5)] + 4.5

{4.7.2.12} subalpine fir

*H* = *SI* \* [b0 + (b1 \* *A*) + (b2 \* *A^*2)]

{4.7.2.13} noble fir

*H* = 4.5 + [(*SI* – 4.5) / (X1 \* (1 / *A*)^2 + X2 \* (1 / *A*) + 1 – (X1 \* 0.0001) – (X2 \* 0.01))]

X1 = b0 + (b1 \* (*SI* – 4.5)) – (b2 \* (*SI* – 4.5)^2)

X2 = b3 + (b4 / (*SI* – 4.5)) + (b5 / (*SI* – 4.5)^2)

{4.7.2.14} western larch

*H* = 4.5 + (b1 \* *A*) + (b2 \* *A^*2) + (b3 \* *A^*3) + (b4 \* *A^*4) + (*SI* – 4.5) \* [b5 + (b6 \* *A*) + (b7 \* *A^*2) + (b8 \* *A^*3)] – b9 \* [b10 + (b11 \* *A*) + (b12 \* *A^*2) + (b13 \* *A^*3)]

{4.7.2.15} red cedar

*H* = b1 \* *SI* \* [(1 – exp(b2 \* *A*))^b3]

{4.7.2.16} western hemlock

*H* = [*A^*2 / (b0 + (b1 \* Z) + ((b2+ (b3 \* Z)) \* *A*) + ((b4 + (b5 \* Z)) \* *A^*2))] + 4.5

Z = 2500 / (*SI* – 4.5)

{4.7.2.17} Pacific yew, white alder, bigleaf maple, black cottonwood, bitter cherry, willow, giant chinquapin, curl-leaf mountain mahogany, birch-leaf mtn. mahogany, and other hardwood

*H* = [(*SI* – 4.5) / [b0 + (b1 / (*SI* – 4.5))] + [*A^*-1.4 \* (b2 + (b3 / (*SI* – 4.5)))]] + 4.5

{4.7.2.18} red alder

*H* = *SI* + [(b0 + b1 \* *SI*) \* (1 – exp((b2 + b3 \* *SI*) \* *A*))^b4] – [(b0 + b1 \* *SI*) \* (1 – exp((b2 + b3 \* *SI*) \* 20))^b4]

{4.7.2.19} Oregon white oak

*H* = *SI* \* [1 + b1 \* (A^0.5 – 7.07107)] – [b0 \* (A^0.5 – 7.07107)]

where:

*H* is estimated height of the tree

*SI* is species site index

*A* is estimated age of the tree

b0 – b13 are species-specific coefficients shown in Table 4.7.2.2

**Table 4.7.2.2 Coefficients (b0 – b13) for height-growth equations in the SO variant.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Coefficient** | **Species Index** | | | | | | | | |
| **WP** | **DF, OS** | **WF, IC, GF, SF** | **MH** | **LP** | **ES** | **SH** | **SP, PP** | **AF** |
| b0 | 0.375045 | 0 | -0.30935 | 22.8741 | -0.0968 | 2.7578 | 0 | 128.8952 | -0.07831 |
| b1 | 0.92503 | -0.37496 | 1.2383 | 0.950234 | 0.02679 | 0.83312 | 1.51744 | -0.01696 | 0.0149 |
| b2 | -0.0208 | 1.36164 | 0.001762 | -0.00206 | -9.3E-05 | 0.015701 | 1.42E-06 | 1.23114 | -4.08E-05 |
| b3 | -2.48811 | -0.00243 | -5.40E-06 | 0 | 0 | 22.71944 | -0.04409 | -0.7864 | 0 |
| b4 | 0 | -79.97 | 2.05E-07 | 1.365566 | 0 | -0.63557 | -3.05E06 | 2.49717 | 0 |
| b5 | 0 | -0.2828 | -4.04E-13 | 2.045963 | 0 | 0 | 5.72E-04 | -0.0045 | 0 |
| b6 | 0 | 1.87947 | -6.2056 | 0 | 0 | 0 | 0 | 0.33022 | 0 |
| b7 | 0 | -0.0224 | 2.097 | 0 | 0 | 0 | 0 | 100.43 | 0 |
| b8 | 0 | 0.966998 | -0.09411 | 0 | 0 | 0 | 0 | 0 | 0 |
| b9 | 0 | 0 | -4.4E-05 | 0 | 0 | 0 | 0 | 0 | 0 |
| b10 | 0 | 0 | 2.01E-11 | 0 | 0 | 0 | 0 | 0 | 0 |
| b11 | 0 | 0 | -2.05E-17 | 0 | 0 | 0 | 0 | 0 | 0 |
| b12 | 0 | 0 | -84.93 | 0 | 0 | 0 | 0 | 0 | 0 |
| b13 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |

**Table 4.7.2.2 (continued) Coefficients (b0 – b13) for height-growth equations in the SO variant.**

| **Coefficient** | **Species Index** | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **NF** | **WL** | **RC** | **WH** | **PY, WA, BM, CW, CH, WI, GC, MC, MB, OH** | **RA** | **WO** |
| b0 | -564.38 | 0 | 0 | -1.7307 | 0.6192 | 59.5864 | 6.413 |
| b1 | 22.25 | 1.46897 | 1.3283 | 0.1394 | -5.3394 | 0.7953 | 0.322 |
| b2 | 0.04995 | 0.009247 | -0.0174 | -0.0616 | 240.29 | 0.00194 | 0 |
| b3 | 6.8 | -0.00024 | 1.4711 | 0.0137 | 3368.9 | -0.00074 | 0 |
| b4 | 2843.21 | 1.11E-06 | 0 | 0.00192 | 0 | 0.9198 | 0 |
| b5 | 34735.54 | -0.12528 | 0 | 0.00007 | 0 | 0 | 0 |
| b6 | 0 | 0.039636 | 0 | 0 | 0 | 0 | 0 |
| b7 | 0 | -0.00043 | 0 | 0 | 0 | 0 | 0 |
| b8 | 0 | 1.70E-06 | 0 | 0 | 0 | 0 | 0 |
| b9 | 0 | 73.57 | 0 | 0 | 0 | 0 | 0 |
| b10 | 0 | -0.12528 | 0 | 0 | 0 | 0 | 0 |
| b11 | 0 | 0.039636 | 0 | 0 | 0 | 0 | 0 |
| b12 | 0 | -0.00043 | 0 | 0 | 0 | 0 | 0 |
| b13 | 0 | 1.70E-06 | 0 | 0 | 0 | 0 | 0 |

Potential height growth is estimated using equation {4.7.2.20}. Height increment is computed using equation {4.7.2.21} and adjusted for cycle length and user supplied growth multipliers.

{4.7.2.20} POTHTG = H10 – ECH

{4.7.2.21} *HTG* = *POTHTG* \* *HTGMOD*

where:

*POTHTG* is potential height growth

*H10* is estimated height of the tree in ten years

*ECH* is estimated height of the tree at the beginning of the cycle

*HTG* is estimated 10-year tree height growth (bounded 0.1 <u><</u> HTG)

*HTGMOD* is the weighted height growth multiplier shown in section 4.7.2.3

#### 4.7.2.1 Dunning/Levitan Site Curves

For Shasta red fir and Oregon white oak in Region 5 forests, estimated current height (ECH) and estimated future height (H10) are both obtained using the use the Dunning/Levitan site curve equations {4.7.2.1.1 – 4.7.2.2.2}. Estimated current height is obtained using estimated tree age at the start of the projection cycle and site index. Estimated future height is obtained using estimated tree age at the start of the projection cycle plus 10-years and site index. Potential height growth is estimated using equation {4.7.2.20}. Height increment is computed using equation {4.7.2.21} and adjusted for cycle length and user supplied growth multipliers.

{4.7.2.1.1} *H* = d1 + d2 \* ln(*A*) for *A* > 40

{4.7.2.1.2} *H* = d3 \* *A* for *A* <u><</u> 40:

where:

*H* is estimated height of the tree

*A* is estimated age of the tree

d1, d2, d3 are coefficients based on Region 5 site class shown in table 4.7.2.2.1

**Table 4.7.2.2.1 Coefficients for the Dunning/Levitan site curves, nominal site index by site class in the SO variant.**

| **Region 5**  **Site Class** | **Nominal**  **Site Index** | **Site Index Range** | **d1** | **d2** | **d3** |
| --- | --- | --- | --- | --- | --- |
| 0 | 106 | 99+ | -88.9 | 49.7067 | 2.375 |
| 1 | 90 | 83 - 98 | -82.2 | 44.1147 | 2.025 |
| 2 | 75 | 66 - 82 | -78.3 | 39.1441 | 1.65 |
| 3 | 56 | 53 - 65 | -82.1 | 35.416 | 1.225 |
| 4 | 49 | 45 - 52 | -56 | 26.7173 | 1.075 |
| 5-7 | 39 | 0 - 44 | -33.8 | 18.64 | 0.875 |

#### 4.7.2.2 Whitebark Pine and Quaking Aspen

Whitebark pine and quaking aspen use Johnson’s SBB (1949) method (Schreuder and Hafley, 1977). Height increment, using this method, is obtained by subtracting current height from the estimated future height. If tree diameter is greater than (C1 + 0.1), or tree height is greater than (C2 + 4.5), where C1 and C2 are shown in table 4.7.2.2.1, parameters of the SBB distribution cannot be calculated and height growth is set to 0.1. Otherwise, the SBB distribution “*Z*” parameter is estimated using equation {4.7.2.2.1}.

{4.7.2.2.1} Species Index 18 (whitebark pine and quaking aspen)

*Z* = {[C4 + C6 \* *FBY2* – C7 \* (C3 + C5 \* *FBY1*)] \* (1 – C7^2)^-0.5} + *ZBIAS*

*FBY1* = ln[*Y1*/(1 - *Y1*)]

*FBY2* = ln[*Y2*/(1 - *Y2*)]

*Y1* = (*DBH* – 0.1) / C1

*Y2* = (*HT* – 4.5) / C2

where:

*HT* is tree height

*DBH* is tree diameter at breast height

C1 – C9 are coefficients based on species and crown ratio class shown in table 4.7.2.2.1

*ZBIAS* is known bias (see equation 4.7.2.2.2)

Known bias is calculated using equation {4.7.2.2.2}.

{4.7.2.2.2} Known bias:

For quaking aspen: ZBIAS = (0.1 – 0.10273 \* *Z* + 0.00273 \* *Z*^2) bounded ZBIAS <u>></u> 0

For whitebark pine: ZBIAS = 0

If the *Z* value is 2.0 or less, it is adjusted for all younger aged trees using equation {4.7.2.2.3}. This adjustment is done for trees with an estimated age between 11 and 39 years and a diameter less than 9.0 inches. After this calculation, the value of *Z* is bounded to be 2.0 or less for trees meeting these criteria.

{4.7.2.2.3} *Z* = *Z* \* (0.3564 \* *DG*) \* CLOSUR \* *K*

if *CCF* <u>></u> 100: *CLOSUR* = *PCT* / 100

if *CCF* < 100: *CLOSUR* = 1

if *CR* <u>></u> 75%: *K* = 1.1

if *CR* < 75%: *K* = 1.0

where:

*DG* is diameter growth for the cycle

*PCT* is the subject tree’s percentile in the basal area distribution of the stand

*CCF* is stand crown competition factor

Estimated height 10 years later is calculated using equation {4.7.2.2.4}, and finally, 10-year height growth is calculated by subtraction using equation {4.7.2.2.5} and adjusted for cycle length and user supplied growth multipliers.

{4.7.2.2.4}

*H10* = [(*PSI* / (1 + *PSI*)) \* C2] + 4.5

*PSI* = C8 \* [(*D10* – 0.095) / (0.095 + C1– *D10*)]^C9 \* [exp(*K*)]

*K* = *Z* \* [(1 - C7^2)^(0.5 / C6)]

{4.7.2.2.5}

*POTHTG* = *H10* – *HT* for *H10* > *HT*

*POTHTG* = 0.1 for *H10* <u><</u> *HT*

where:

*H10* is estimated height of the tree in ten years

*HT* is height of the tree at the beginning of the cycle

*D10* is estimated diameter at breast height of the tree in ten years

*POTHTG* is potential height growth

C1 – C9 are regression coefficients based on species and crown ratio class

**Table 4.7.2.2.1 Coefficients in the large tree height growth model, by crown ratio, for species using the Johnson’s SBB height distribution in the SO variant.**

| **Coefficient\*** | **WB** | **AS** |
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

**4.7.2.3 Large Tree Height Growth Modifiers**

For western white pine, sugar pine, Douglas-fir, white fir, mountain hemlock, incense cedar, lodgepole pine, Engelmann spruce, ponderosa pine, grand fir, subalpine fir, Pacific silver fir, noble fir, western larch, western redcedar, western hemlock, Pacific yew, white alder, red alder, bigleaf maple, black cottonwood, bitter cherry, willow, giant chinquapin, curl-leaf mountain mahogany, birchleaf mountain mahogany, other softwood, and other hardwood, modifiers are applied to the height growth based upon a tree’s crown ratio (using equation {4.7.2.3.1}), and relative height and shade tolerance (using equation {4.7.2.3.2}). Equation {4.7.2.3.3} uses the Generalized Chapman – Richard’s function (Donnelly et. al, 1992) to calculate a height-growth modifier. Height growth is calculated using equations {4.7.2.2}, {4.7.2.3}, or {4.7.2.21} and adjusted for cycle length and user supplied growth multipliers.

{4.7.2.3.1} *HGMDCR* = (100 \* (*CR* / 100)^3) \* exp(-5 \* (*CR* / 100)) bounded *HGMDCR* ≤ 1.0

{4.7.2.3.2} *HGMDRH* = [1 + ((1 / b1)^(b2 - 1) – 1) \* exp((-1 \* (b3 / (1 – b4)) \* *RELHT^*(1 – b4)]^(-1 / (b2 - 1))

{4.7.2.3.3} HTGMOD = (0.25 \* HGMDCR) + (0.75 \* HGMDRH) bounded 0.0 ≤ *HTGMOD* ≤ 2.0

\*if HTGMOD ≤ 0.0, then HTGMOD = 0.1

{4.7.2.3.4} *HTG* = *POTHTG* \* *HTGMOD*

where:

*POTHTG* is potential height growth

*HGMDCR*  is a height growth modifier based on crown ratio

*HGMDRH* is a height growth modifier based on relative height and shade tolerance

*HTGMOD* is a weighted height growth modifier

*CR* is crown ratio expressed as a percent

*RELHT* is tree height divided by average height of the 40 largest diameter trees in the stand

b1 – b4 are species-specific coefficients shown in table 4.7.2.3

**Table 4.7.2.3.1 Coefficients for the modifiers for the height growth equations by species for the SO variant.**

| **Species Code** | **b1** | **b2** | **b3** | **b4** |
| --- | --- | --- | --- | --- |
| WP | 0.10 | 1.10 | 15 | -1.45 |
| SP | 0.10 | 1.10 | 15 | -1.45 |
| DF | 0.10 | 1.10 | 15 | -1.45 |
| WF | 0.20 | 1.10 | 20 | -1.10 |
| MH | 0.20 | 1.10 | 20 | -1.10 |
| IC | 0.20 | 1.10 | 20 | -1.10 |
| LP | 0.01 | 1.10 | 12 | -1.60 |
| ES | 0.15 | 1.10 | 16 | -1.20 |
| SH | 0.15 | 1.10 | 16 | -1.20 |
| PP | 0.05 | 1.10 | 13 | -1.60 |
| WJ | n/a | n/a | n/a | n/a |
| GF | 0.20 | 1.10 | 13 | -1.10 |
| AF | 0.05 | 1.10 | 20 | -1.20 |
| SF | 0.10 | 1.10 | 20 | -1.10 |
| NF | 0.10 | 1.10 | 15 | -1.45 |
| WB | 0.10 | 1.10 | 15 | -1.60 |
| WL | 0.10 | 1.10 | 12 | -1.60 |
| RC | 0.10 | 1.10 | 20 | -1.10 |
| WH | 0.20 | 1.10 | 20 | -1.10 |
| PY | 0.20 | 1.10 | 20 | -1.10 |
| WA | 0.05 | 1.10 | 13 | -1.60 |
| RA | 0.05 | 1.10 | 13 | -1.60 |
| BM | 0.20 | 1.10 | 20 | -1.10 |
| AS | 0.10 | 1.10 | 15 | -1.45 |
| CW | 0.01 | 1.10 | 12 | -1.60 |
| CH | 0.05 | 1.10 | 13 | -1.60 |
| WO | 0.10 | 1.10 | 15 | -1.45 |
| WI | 0.01 | 1.10 | 12 | -1.60 |
| GC | 0.10 | 1.10 | 15 | -1.45 |
| MC | 0.10 | 1.10 | 15 | -1.45 |
| MB | 0.10 | 1.10 | 15 | -1.45 |
| OS | 0.10 | 1.10 | 15 | -1.45 |
| OH | 0.10 | 1.10 | 15 | -1.45 |

For Shasta red fir and Oregon white oak, the height growth modifier is calculated as shown above when the estimated tree age at the start of the projection cycle is greater than the maximum age for the site index curve. When estimated tree age at the start of the projection cycle is less than the maximum age for the site index curve, the height growth modifier is calculated using equation {4.7.2.3.5}. Height growth is calculated using equations {4.7.2.2} or {4.7.2.21} and adjusted for cycle length and user supplied growth multipliers.

{4.7.2.3.5} *HTGMOD* = 1.016605 \* [1 – exp(-4.26558 \* CR)] \* [exp (2.54119 \*

((RELHT ^ 0.250537) – 1))]

where:

*HTGMOD* is the height growth modifier

*CR* is crown ratio expressed as a proportion

*RELHT* is tree height divided by average height of the 40 largest diameter trees in the stand (bounded *RELHT* <u><</u> 1, and set equal to 1 when *PCCF* < 100)

*PCCF* is the crown competition factor for the inventory point on which the tree is located

These height growth modifiers are not applied to quaking aspen or whitebark pine, and are not applicable to western juniper.

# 5.0 Mortality Model

The SO variant uses an SDI-based mortality model as described in Section 7.3.2 of Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002, referred to as EFVS). This SDI-based mortality model is comprised of two steps: 1) determining the amount of stand mortality (section 7.3.2.1 of EFVS) and 2) dispersing stand mortality to individual tree records (section7.3.2.2 of EFVS). In determining the amount of stand mortality, the summation of individual tree background mortality rates is used when stand density is below the minimum level for density dependent mortality (default is 55% of maximum SDI), while stand level density-related mortality rates are used when stands are above this minimum level.

The equation used to calculate individual tree background mortality rates for all species is shown in equation {5.0.1}, and this is then adjusted to the length of the cycle by using a compound interest formula as shown in equation {5.0.2}. Coefficients for these equations are shown in table 5.0.1. The overall amount of mortality calculated for the stand is the summation of the final mortality rate (*RIP*) across all live tree records.

{5.0.1} RI = [1 / (1 + exp(p0 + p1 \* DBH))] \* 0.5

{5.0.2} RIP = 1 – (1 – RI*)*^Y

where:

RI is the proportion of the tree record attributed to mortality

RIP is the final mortality rate adjusted to the length of the cycle

DBH is tree diameter at breast height

Y is length of the current projection cycle in years

p0 and p1 are species-specific coefficients shown in table 5.0.1

**Table 5.0.1 Coefficients used in the background mortality equation {5.0.1} in the SO variant.**

| **Species Code** | **p0** | **p1** |
| --- | --- | --- |
| WP | 6.5112 | -0.0052485 |
| SP | 6.5112 | -0.0052485 |
| DF | 7.2985 | -0.0129121 |
| WF | 5.1677 | -0.0077681 |
| MH | 9.6943 | -0.0127328 |
| IC | 5.1677 | -0.0077681 |
| LP | 5.9617 | -0.03401328 |
| ES | 9.6943 | -0.01273328 |
| SH | 5.1677 | -0.0077681 |
| PP | 5.5877 | -0.005348 |
| WJ | 5.1677 | -0.0077681 |
| GF | 5.1677 | -0.0077681 |
| AF | 5.1677 | -0.0077681 |
| SF | 5.1677 | -0.0077681 |
| NF | 5.1677 | -0.0077681 |
| WB | 6.5112 | -0.0052485 |
| WL | 5.9617 | -0.0340128 |
| RC | 5.1677 | -0.0077681 |
| WH | 7.2985 | -0.0129121 |
| PY | 5.5877 | -0.005348 |
| WA | 5.9617 | -0.03401328 |
| RA | 5.9617 | -0.03401328 |
| BM | 5.5877 | -0.005348 |
| AS | 5.1677 | -0.0077681 |
| CW | 5.5877 | -0.005348 |
| CH | 5.9617 | -0.03401328 |
| WO | 5.9617 | -0.03401328 |
| WI | 5.9617 | -0.03401328 |
| GC | 5.5877 | -0.005348 |
| MC | 5.9617 | -0.03401328 |
| MB | 5.9617 | -0.03401328 |
| OS | 7.2985 | -0.0129121 |
| OH | 5.9617 | -0.03401328 |

When stand density-related mortality is in effect, the total amount of stand mortality is determined based on the trajectory developed from the relationship between stand SDI and the maximum SDI for the stand. This is explained in section 7.3.2.1 of EFVS.

Once the amount of stand mortality is determined based on either the summation of background mortality rates or density-related mortality rates, mortality is dispersed to individual tree records in relation to a tree’s percentile in the basal area distribution (*PCT*) using equation {5.0.3}. This value is then adjusted by a species-specific mortality modifier (representing the species’ tolerance) to obtain a final mortality rate as shown in equation {5.0.4}.

The mortality model makes multiple passes through the tree records multiplying a record’s trees-per-acre value times the final mortality rate (MORT), accumulating the results, and reducing the trees-per-acre representation until the desired mortality level has been reached. If the stand still exceeds the basal area maximum sustainable on the site the mortality rates are proportionally adjusted to reduce the stand to the specified basal area maximum.

{5.0.3} *MR* = 0.84525 – (0.01074 \* *PCT*) + (0.0000002 \* *PCT*^3)

{5.0.4} *MORT* = *MR* \* *MWT* \* 0.1

where:

*MR* is the proportion of the tree record attributed to mortality (bounded: 0.01 <u><</u> *MR* <u><</u> 1)

*PCT* is the subject tree’s percentile in the basal area distribution of the stand

*MORT* is the final mortality rate of the tree record

*MWT* is a mortality weight value based on a species’ tolerance shown in table 5.0.2

**Table 5.0.2 *MWT* values for the mortality equation {5.0.4} in the SO variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | ***MWT*** | **Species Code** | ***MWT*** |
| WP | 0.7 | RC | 0.5 |
| SP | 0.75 | WH | 0.5 |
| DF | 1 | PY | 0.5 |
| WF | 0.55 | WA | 1 |
| MH | 0.5 | RA | 0.9 |
| IC | 0.65 | BM | 0.7 |
| LP | 0.9 | AS | 1.3 |
| ES | 0.6 | CW | 0.85 |
| SH | 0.6 | CH | 1.1 |
| PP | 0.85 | WO | 1 |
| WJ | 1.1 | WI | 1.3 |
| GF | 0.55 | GC | 0.8 |
| AF | 0.55 | MC | 1.1 |
| SF | 0.5 | MB | 1.1 |
| NF | 0.7 | OS | 0.7 |
| WB | 0.8 | OH | 1 |
| WL | 1 |  |  |

# 6.0 Regeneration

The SO variant contains a partial establishment model which may be used to input regeneration and ingrowth into simulations. A more detailed description of how the partial establishment model works can be found in section 5.4.5 of the Essential FVS Guide (Dixon 2002).

The regeneration model is used to simulate stand establishment from bare ground, or to bring seedlings and sprouts into a simulation with existing trees. Sprouts are automatically added to the simulation following harvest or burning of known sprouting species (see table 6.0.1 for sprouting species).

**Table 6.0.1 Regeneration parameters by species in the SO variant.**

| **Species Code** | **Sprouting Species** | **Minimum Bud Width (in)** | **Minimum Tree Height (ft)** | **Maximum Tree Height (ft)** |
| --- | --- | --- | --- | --- |
| WP | No | 0.4 | 1 | 23 |
| SP | No | 0.4 | 1 | 27 |
| DF | No | 0.3 | 1.5 | 21 |
| WF | No | 0.3 | 1.5 | 21 |
| MH | No | 0.2 | 0.5 | 22 |
| IC | No | 0.2 | 0.5 | 20 |
| LP | No | 0.4 | 1.5 | 20 |
| ES | No | 0.3 | 0.5 | 18 |
| SH | No | 0.2 | 0.8 | 20 |
| PP | No | 0.5 | 1.3 | 17 |
| WJ | No | 0.3 | 0.5 | 6 |
| GF | No | 0.3 | 1.5 | 21 |
| AF | No | 0.3 | 0.8 | 20 |
| SF | No | 0.3 | 0.5 | 21 |
| NF | No | 0.3 | 1 | 20 |
| WB | No | 0.4 | 1 | 23 |
| WL | No | 0.3 | 1 | 27 |
| RC | No | 0.2 | 0.5 | 22 |
| WH | No | 0.2 | 1 | 20 |
| PY | Yes | 0.2 | 1 | 20 |
| WA | Yes | 0.2 | 1 | 20 |
| RA | Yes | 0.3 | 1 | 50 |
| BM | Yes | 0.2 | 1 | 20 |
| AS | Yes | 0.2 | 6 | 16 |
| CW | Yes | 0.2 | 1 | 20 |
| CH | Yes | 0.2 | 1 | 20 |
| WO | Yes | 0.2 | 1.5 | 20 |
| WI | Yes | 0.2 | 1 | 20 |
| GC | Yes | 0.2 | 1 | 20 |
| MC | No | 0.2 | 1 | 20 |
| MB | Yes | 0.2 | 1 | 20 |
| OS | No | 0.3 | 1.5 | 21 |
| OH | No | 0.2 | 1 | 20 |

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

**Table 6.0.2 Sprouting algorithm parameters for sprouting species in the SO variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **Sprouting Probability** | **Number of Sprout Records** | **Source** |
| PY | 0.4 | 1 | Minore 1996  Ag. Handbook 654 |
| WA | {6.0.5} | 1 | See red alder (RA) |
| RA | {6.0.5} | 1 | Harrington 1984  Uchytil 1989 |
| BM | 0.9 | {6.0.2} | Roy 1955  Tappenier et al. 1996  Ag. Handbook 654 |
| AS | {6.0.4} | 2 | Keyser 2001 |
| CW | 0.9 | {6.0.2} | Gom and Rood 2000  Steinberg 2001 |
| CH | 0.9 | {6.0.2} | Mueggler 1965  Leedge and Hickey 1971  Morgan and Neuenschwander 1988 |
| WO | 0.9 | {6.0.1} | Roy 1955  Gucker 2007 |
| WI | 0.9 | 1 | Ag. Handbook 654 |
| GC | 0.9 | {6.0.2} | Harrington et al. 1992  Meyer 2012 |
| MB | 0.7 | 1 | Gucker 2006 |

Regeneration of seedlings must be specified by the user with the partial establishment model by using the PLANT or NATURAL keywords. Height of the seedlings is estimated in two steps. First, the height is estimated when a tree is 5 years old (or the end of the cycle – whichever comes first) by using the small-tree height growth equations found in section 4.6.1. Users may override this value by entering a height in field 6 of the PLANT or NATURAL keyword; however the height entered in field 6 is not subject to minimum height restrictions and seedlings as small as 0.05 feet may be established. The second step also uses the equations in section 4.6.1, which grow the trees in height from the point five years after establishment to the end of the cycle.

Seedlings and sprouts are passed to the main FVS model at the end of the growth cycle in which regeneration is established. Unless noted above, seedlings being passed are subject to minimum and maximum height constraints and a minimum budwidth constraint shown in table 6.0.1. After seedling height is estimated, diameter growth is estimated using equations described in section 4.6.2. Crown ratios on newly established trees are estimated as described in section 4.3.1.

Regenerated trees and sprouts can be identified in the treelist output file with tree identification numbers beginning with the letters “ES”.

# 7.0 Volume

In the SO variant, volume is calculated for four merchantability standards: total stem cubic feet, merchantable stem cubic feet, sawlog stem cubic feet, and merchantable stem board feet (Scribner Decimal C (R5) and Scribner (R6)). Sawlog cubic foot volume is only reported when the FIAVBC keyword is in use. Volume estimation is based on methods contained in the National Volume Estimator Library maintained by the Forest Products Measurements group in the Forest Management Service Center (Volume Estimator Library Equations 2009). The default volume merchantability standards and equation numbers for the SO variant are shown in tables 7.0.1-7.0.3.

Volume computation methods used by the Forest Inventory and Analysis (FIA) program can be requested with the FIAVBC keyword. This keyword encompasses the National Scale Volume and Biomass estimators (NSVB; Westfall et al. 2024) and regional equations used for woodland species (Burrill et al. 2024). More information about the FIAVBC keyword and required input variables can be found in the Essential FVS Guide (Dixon 2002).

**Table 7.0.1 Volume merchantability standards for the SO variant.**

|  |  |  |
| --- | --- | --- |
| **Merchantable Cubic Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | Hardwoods | Softwoods |
| Region 5 | 9.0 / 6.0 inches | 9.0 / 6.0 inches |
| Region 6 and Warm Springs Reservation | 9.0 / 4.5 inches | 9.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| **Merchantable Board Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | Hardwoods | Softwoods |
| Region 5 | 9.0 / 6.0 inches | 9.0 / 6.0 inches |
| Region 6 and Warm Springs Reservation | 9.0 / 4.5 inches | 9.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |

**Table 7.0.2 Volume equation defaults for each species, at specific location codes, with model name.**

| **Common Name** | **Location Code** | **Equation Number** | **Reference** |
| --- | --- | --- | --- |
| western white pine | 505, 506, 509, 511, 701 | 500WO2W117 | Wensel and Olsen Profile Model |
| western white pine | 601, 602, 620, 799 | 616BEHW119 | Behre's Hyperbola |
| sugar pine | 505, 506, 509, 511, 701 | 500WO2W117 | Wensel and Olsen Profile Model |
| sugar pine | 601 | I13FW2W122 | Flewelling's INGY 2-Point Profile Model |
| sugar pine | 602, 620, 799 | 616BEHW117 | Behre's Hyperbola |
| Douglas-fir | 505, 506, 509, 511, 701 | 500WO2W202 | Wensel and Olsen Profile Model |
| Douglas-fir | 601, 799 | I11FW2W202 | Flewelling's INGY 2-Point Profile Model |
| Douglas-fir | 602, 620 | I00FW2W017 | Flewelling's INGY 2-Point Profile Model |
| white fir | 505, 506, 509, 511, 701 | 500WO2W015 | Wensel and Olsen Profile Model |
| white fir | 601, 799 | I00FW2W017 | Flewelling's INGY 2-Point Profile Model |
| white fir | 602, 620 | I11FW2W017 | Flewelling's INGY 2-Point Profile Model |
| mountain hemlock | 505, 506, 509, 511, 701 | 500WO2W015 | Wensel and Olsen Profile Model |
| mountain hemlock | 601, 602, 620, 799 | 616BEHW264 | Behre's Hyperbola |
| incense cedar | 505, 506, 509, 511, 701 | 500WO2W081 | Wensel and Olsen Profile Model |
| incense cedar | 601, 799 | I11FW2W242 | Flewelling's INGY 2-Point Profile Model |
| incense cedar | 602, 620 | I00FW2W202 | Flewelling's INGY 2-Point Profile Model |
| lodgepole pine | 505, 506, 509, 511, 701 | 500WO2W108 | Wensel and Olsen Profile Model |
| lodgepole pine | 601, 799 | I11FW2W108 | Flewelling's INGY 2-Point Profile Model |
| lodgepole pine | 602, 620 | I00FW2W108 | Flewelling's INGY 2-Point Profile Model |
| Engelmann spruce | 505, 506, 509, 511, 701 | 500WO2W015 | Wensel and Olsen Profile Model |
| Engelmann spruce | 601, 602, 620, 799 | 616BEHW093 | Behre's Hyperbola |
| Shasta red fir | 505, 506, 509, 511, 701 | 500WO2W020 | Wensel and Olsen Profile Model |
| Shasta red fir | 601, 799 | I00FW2W017 | Flewelling's INGY 2-Point Profile Model |
| Shasta red fir | 602, 620 | 616BEHW021 | Behre's Hyperbola |
| ponderosa pine | 505, 506, 509, 511, 701 | 500WO2W122 | Wensel and Olsen Profile Model |
| ponderosa pine | 601, 799 | I11FW2W122 | Flewelling's INGY 2-Point Profile Model |
| ponderosa pine | 602, 620 | I00FW2W122 | Flewelling's INGY 2-Point Profile Model |
| western juniper | 505, 506, 509, 511, 701 | 500DVEW060 | Wensel and Olsen Profile Model |
| western juniper | 601, 602, 620, 799 | 616BEHW064 | Behre's Hyperbola |
| grand fir | 505, 506, 509, 511, 701 | 500WO2W015 | Wensel and Olsen Profile Model |
| grand fir | 601, 799 | I00FW2W017 | Flewelling's INGY 2-Point Profile Model |
| grand fir | 602, 620 | I11FW2W017 | Flewelling's INGY 2-Point Profile Model |
| subalpine fir | 505, 506, 509, 511, 701 | 500WO2W020 | Wensel and Olsen Profile Model |
| subalpine fir | 601, 602, 620, 799 | 616BEHW019 | Behre's Hyperbola |
| Pacific silver fir | 505, 506, 509, 511, 701 | 500WO2W015 | Wensel and Olsen Profile Model |
| Pacific silver fir | 601, 799 | I00FW2W017 | Flewelling's INGY 2-Point Profile Model |
| Pacific silver fir | 602, 620 | 616BEHW011 | Flewelling's INGY 2-Point Profile Model |
| noble fir | 505, 506, 509, 511, 701 | 500WO2W020 | Wensel and Olsen Profile Model |
| noble fir | 601, 602, 620, 799 | 616BEHW022 | Behre's Hyperbola |
| whitebark pine | 505, 506, 509, 511, 701 | 500WO2W108 | Wensel and Olsen Profile Model |
| whitebark pine | 601, 602, 620, 799 | 616BEHW101 | Behre's Hyperbola |
| western larch | 505, 506, 509, 511, 701 | 500WO2W202 | Wensel and Olsen Profile Model |
| western larch | 601, 799 | I11FW2W073 | Flewelling's INGY 2-Point Profile Model |
| western larch | 602, 620 | 616BEHW073 | Flewelling's INGY 2-Point Profile Model |
| western redcedar | 505, 506, 509, 511, 701 | 500WO2W081 | Wensel and Olsen Profile Model |
| western redcedar | 601, 602, 620, 799 | 616BEHW242 | Behre's Hyperbola |
| western hemlock | 505, 506, 509, 511, 701 | 500WO2W015 | Wensel and Olsen Profile Model |
| western hemlock | 601, 602, 620, 799 | 616BEHW263 | Behre's Hyperbola |
| Pacific yew | 505, 506, 509, 511, 701 | 500WO2W108 | Wensel and Olsen Profile Model |
| Pacific yew | 601, 602, 620, 799 | 616BEHW231 | Behre's Hyperbola |
| white alder | 505, 506, 509, 511, 701 | 500DVEW351 | Pillsbury and Kirkley Equations |
| white alder | 601, 602, 620, 799 | 616BEHW352 | Behre's Hyperbola |
| red alder | 505, 506, 509, 511, 701 | 500DVEW351 | Pillsbury and Kirkley Equations |
| red alder | 601, 602, 620, 799 | 616BEHW351 | Behre's Hyperbola |
| bigleaf maple | 505, 506, 509, 511, 701 | 500DVEW312 | Pillsbury and Kirkley Equations |
| bigleaf maple | 601, 602, 620, 799 | 616BEHW312 | Behre's Hyperbola |
| quaking aspen | 505, 506, 509, 511, 701 | 500DVEW818 | Pillsbury and Kirkley Equations |
| quaking aspen | 601, 602, 620, 799 | 616BEHW746 | Behre's Hyperbola |
| black cottonwood | 505, 506, 509, 511, 701 | 500DVEW818 | Pillsbury and Kirkley Equations |
| black cottonwood | 601, 602, 620, 799 | 616BEHW747 | Behre's Hyperbola |
| bitter cherry | 505, 506, 509, 511, 701 | 500DVEW801 | Pillsbury and Kirkley Equations |
| bitter cherry | 601, 602, 620, 799 | 616BEHW768 | Behre's Hyperbola |
| Oregon white oak | 505, 506, 509, 511, 701 | 500DVEW815 | Pillsbury and Kirkley Equations |
| Oregon white oak | 601, 602, 620, 799 | 616BEHW815 | Behre's Hyperbola |
| willow | 505, 506, 509, 511, 701 | 500DVEW807 | Pillsbury and Kirkley Equations |
| willow | 601, 602, 620, 799 | 616BEHW920 | Behre's Hyperbola |
| giant chiquapin | 505, 506, 509, 511, 701 | 500DVEW431 | Pillsbury and Kirkley Equations |
| giant chiquapin | 601, 602, 620, 799 | 616BEHW431 | Behre's Hyperbola |
| curl-leaf mountain mahogany | 505, 506, 509, 511, 701 | 500DVEW801 | Pillsbury and Kirkley Equations |
| curl-leaf mountain mahogany | 601, 602, 620, 799 | 616BEHW475 | Behre's Hyperbola |
| birchleaf mountain mahogany | 505, 506, 509, 511, 701 | 500DVEW801 | Pillsbury and Kirkley Equations |
| birchleaf mountain mahogany | 601, 602, 620, 799 | 616BEHW478 | Behre's Hyperbola |
| other softwood | 505, 506, 509, 511, 701 | 500WO2W108 | Wensel and Olsen Profile Model |
| other softwood | 601, 602, 620, 799 | 616BEHW299 | Behre's Hyperbola |
| other hardwood | 505, 506, 509, 511, 701 | 500DVEW981 | Pillsbury and Kirkley Equations |
| other hardwood | 601, 602, 620, 799 | 616BEHW998 | Behre's Hyperbola |

**Table 7.0.3 Citations by Volume Model**

|  |  |
| --- | --- |
| **Model Name** | **Citation** |
| Behre's Hyperbola | USFS-R6 Sale Preparation and Valuation Section of Diameter and Volume Procedures - R6 Timber Cruise System. 1978. |
| Flewelling's INGY 2-Point Profile Model | Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II. |
| Pillsbury and Kirkley Equations | Norman H Pillsbury and Michael L Kirkley 1984 Equations for Total, Wood, and saw-Log Volume for Thirteen California Hardwoods. Pacific Northwest Forest and Range Experiment Station Research Note PNW-414. |
| Wensel and Olsen Profile Model | Wensel, L. C. and C. M. Olson. 1993. Tree Taper Models for Major Commercial California Conifers. Research Note No. 33. Northern Calif. Forest Yield Cooperative. Dept. of Forstry and Mgmt., Univ. of Calif., Berkeley. 28 pp. |

# 8.0 Fire and Fuels Extension (FFE-FVS)

The Fire and Fuels Extension to the Forest Vegetation Simulator (FFE-FVS) (Reinhardt and Crookston 2003) integrates FVS with models of fire behavior, fire effects, and fuel and snag dynamics. This allows users to simulate various management scenarios and compare their effect on potential fire hazard, surface fuel loading, snag levels, and stored carbon over time. Users can also simulate prescribed burns and wildfires and get estimates of the associated fire effects such as tree mortality, fuel consumption, and smoke production, as well as see their effect on future stand characteristics. FFE-FVS, like FVS, is run on individual stands, but it can be used to provide estimates of stand characteristics such as canopy base height and canopy bulk density when needed for landscape-level fire models.

For more information on FFE-FVS and how it is calibrated for the SO variant, refer to the updated FFE-FVS model documentation (Rebain, comp. 2010) available on the FVS website. The Warm Springs Reservation uses FFE-FVS model settings for the Deschutes National Forest.

|  |
| --- |
|  |

# 9.0 Insect and Disease Extensions

FVS Insect and Pathogen models for dwarf mistletoe and western root disease have been developed for the SO variant through the participation and contribution of various organizations led by Forest Health Protection. These models are currently maintained by the Forest Management Service Center and regional Forest Health Protection specialists. Additional details regarding each model may be found in chapter 8 of the Essential FVS Users Guide (Dixon 2002).

# 10.0 Literature Cited

Alexander, R.R., Tackle, D., and Dahms, W.G. 1967. Site Indices for Engelmann Spruce. Res. Pap. RM-32. Forest Service, Rocky Mountain Research Station.

Alexander, R.R., Tackle, D., and Dahms, W.G. 1967. Site Indices for Lodgepole Pine with Corrections for Stand Density Methodology. Res. Pap. RM-29. Forest Service, Rocky Mountain Research Station. 18 p.

Arney, J. D. 1985. A modeling strategy for the growth projection of managed stands. Canadian Journal of Forest Research. 15(3):511-518.

Barrett, James W. 1978. Height growth and site index curves for managed, even-aged stands of ponderosa pine in the Pacific Northwest. Res. Pap. PNW-232. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 14 p.

Bechtold, William A. 2004. Largest-crown-diameter Prediction Models for 53 Species in the Western United States. WJAF. Forest Service. 19(4): pp 241-245.

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

Dahms, Walter. 1964. Gross and net yield tables for lodgepole pine. Res. Pap. PNW-8. Portland, OR: Pacific Northwest Forest and Range Experiment Station. 14 p.

DeMars, Donald J., Francis R. Herman, and John F. Bell. 1970. Preliminary site index curves for noble fir From stem analysis data. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station, Res. Note PNW-119. 9p.

Dixon, G. E. 1985. Crown ratio modeling using stand density index and the Weibull distribution. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 13p.

Dixon, Gary E. comp. 2002 (revised frequently). Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U.S. Department of Agriculture, Forest Service, Forest Management Service Center.

Dolph, K. Leroy. 1991. Polymorphic site index curves for red fir in California and southern Oregon. Res. Paper PSW-206. Berkeley, CA: Forest Service, Pacific Southwest Forest and Range Experiment Station. 18p.

Donnelly, Dennis M., Betters, David R., Turner, Matthew T., and Gaines, Robert E. 1992. Thinning even-aged forest stands: Behavior of singular path solutions in optimal control analyses. Res. Pap. RM-307. Fort Collins, CO: Forest Service. Rocky Mountain Forest and Range Experiment Station. 12 p.

Donnelly, Dennis. 1996. Internal document on file. Data provided from Region 6. Fort Collins, CO: Forest Service.

Dunning, Duncan, and L.H. Reineke. 1933. Preliminary yield tables for second-growth stands in the California pine region. Tech. Bull. 354. Forest Service. 24p.

Dunning, Duncan. 1942. A site classification for the mixed-conifer selection forests of the Sierra Nevada. Res. Note No. 28. Berkeley, CA: Forest Service, California Forest and Range Experiment Station. 21p.

Edminster, Carleton B., Mowrer, Todd H., and Shepperd, Wayne D. 1985. Site index curves for aspen in the central Rocky Mountains. Res. Note RM-453. Fort Collins, CO: Forest Service, Rocky Mountain Forest and Range Experiment Station. 4p.

Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II.

Gom, L. A., & Rood, S. B. (2000). Fire induces clonal sprouting of riparian cottonwoods. Canadian Journal of Botany, 77(11), 1604-1616.

Gucker, Corey L. 2006. Cercocarpus montanus. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Gucker, Corey L. 2007. Quercus garryana. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Hall, Frederick C. 1983. Growth basal area: a field method for appraising forest site productivity for stockability. Can. J. For. Res. 13:70-77.

Harrington, Constance A. 1984. Factors influencing initial sprouting of red alder. Canadian Journal of Forest Research. 14: 357-361.

Harrington, Constance A.; Curtis, Robert O. 1986. Height growth and site index curves for red alder. Res. Pap. PNW-358. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 14 p.

Harrington, T. B., Tappeiner, I. I., John, C., & Warbington, R. 1992. Predicting crown sizes and diameter distributions of tanoak, Pacific madrone, and giant chinkapin sprout clumps. Western Journal of Applied Forestry, 7(4), 103-108.

Hegyi, R.P.F., J.J. Jelinek, J. Viszlai and D.B. Carpenter. 1979. Site index equations and curves for the major species in British Columbia. For. Inv. Rep. No. 1. Ministry of Forests, Inventory Branch, 1450 Government Street, Victoria, B.C. V8W 3E7

Herman, Francis R.; Curtis, Robert O.; DeMars, Donald J. 1978. Height growth and site index estimates for noble fir in high-elevation forests of the Oregon-Washington Cascades. Res. Pap. PNW-243. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 15 p.

Johnson, N.L. 1949. Bivariate distributions based on simple translation systems. Biometrika 36: 297–304.

Keyser, C.E. 2001. Quaking Aspen Sprouting in Western FVS Variants: A New Approach. Unpublished Manuscript.

Krajicek, J.; Brinkman, K.; Gingrich, S. 1961. Crown competition – a measure of density. Forest Science. 7(1):35-42

Leedge, T. A., & Hickey, W. O. 1971. Sprouting of northern Idaho shrubs after prescribed burning. The Journal of Wildlife Management, 508-515.

Means, J.F., M.H. Campbell, and G.P. Johnson. 1986. Preliminary height growth and site index curves for mountain hemlock. FIR Report, Vol 10, No.1. Corvallis, OR: Oregon State University.

Meyer, Rachelle. 2012. Chrysolepis chrysophylla. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Minore, D., & Weatherly, H. G. (1996). Stump sprouting of Pacific yew. General Technical Report. PNW-GTR-378. Portland, Or.: U.S. Dept. of Agriculture, Pacific Northwest Research Station.

Morgan, P., & Neuenschwander, L. F. 1988. Shrub response to high and low severity burns following clearcutting in northern Idaho. Western Journal of Applied Forestry, 3(1), 5-9.

Mueggler, W. F. 1965. Ecology of seral shrub communities in the cedar-hemlock zone of northern Idaho. Ecological Monographs, 165-185.

Pillsbury, Norman K. and Kirkley, Michael L. 1984 Equations for Total, Wood, and saw-Log Volume for Thirteen California Hardwoods. Pacific Northwest Forest and Range Experiment Station Research Note PNW-414.

Powers, Robert F. 1972. Site index curves for unmanaged stands of California black oak. Res. Note PSW-262. Berkeley, CA: Forest Service, Pacific Southwest Forest and Range Experiment Station. 5p.

Rebain, Stephanie A. comp. 2010 (revised frequently). The Fire and Fuels Extension to the Forest Vegetation Simulator: Updated Model Documentation. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 379 p.

Reinhardt, Elizabeth; Crookston, Nicholas L. (Technical Editors). 2003. The Fire and Fuels Extension to the Forest Vegetation Simulator. Gen. Tech. Rep. RMRS-GTR-116. Ogden, UT: U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station. 209 p.

Roy, D. F. 1955. Hardwood sprout measurements in northwestern California. Forest Research Notes. California Forest and Range Experiment Station, (95).

Schreuder, H.T. and W.L. Hafley. 1977. A Useful Distribution for Describing Stand Structure of Tree Heights and Diameters. Biometrics 33, 471-478.

Stage, A. R. 1973. Prognosis Model for stand development. Res. Paper INT-137. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 32p.

Steinberg, Peter D. 2001. Populus balsamifera subsp. trichocarpa. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Tappeiner, I. I., John, C., Zasada, J., Huffman, D., & Maxwell, B. D. 1996. Effects of cutting time, stump height, parent tree characteristics, and harvest variables on development of bigleaf maple sprout clumps. Western Journal of Applied Forestry, 11(4), 120-124.

USFS-R6 Sale Preparation and Valuation Section of Diameter and Volume Procedures - R6 Timber Cruise System. 1978.

Uchytil, Ronald J. 1989. Alnus rubra. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory.

Van Dyck, Michael G.; Smith-Mateja, Erin E., comps. 2000 (revised frequently). Keyword reference guide for the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

Wensel, L. C. and C. M. Olson. 1993. Tree Taper Models for Major Commercial California Conifers. Research Note No. 33. Northern Calif. Forest Yield Cooperative. Dept. of Forstry and Mgmt., Univ. of Calif., Berkeley. 28 pp.

Westfall, James A.; Coulston, John W.; Gray, Andrew N.; Shaw, John D.; Radtke, Philip J.; Walker, David M.; Weiskittel, Aaron R.; MacFarlane, David W.; Affleck, David L.R.; Zhao, Dehai; Temesgen, Hailemariam; Poudel, Krishna P.; Frank, Jereme M.; Prisley, Stephen P.; Wang, Yingfang; Sánchez Meador, Andrew J.; Auty, David; Domke, Grant M. 2024. A national-scale tree volume, biomass, and carbon modeling system for the United States. Gen. Tech. Rep. WO-104. Washington, DC: U.S. Department of Agriculture, Forest Service. 37 p.

Wiley, Kenneth N. 1978. Site index tables for western hemlock in the Pacific Northwest. For. Pap. No. 17. Centralia, WA: Weyerhaeuser Forestry Research Center. 28 p.

Wykoff, W. R. 1990. A basal area increment model for individual conifers in the northern Rocky Mountains. For. Science 36(4): 1077-1104.

Wykoff, William R., Crookston, Nicholas L., and Stage, Albert R. 1982. User’s guide to the Stand Prognosis Model. Gen. Tech. Rep. INT-133. Ogden, UT: Forest Service, Intermountain Forest and Range Experiment Station. 112p.

# 11.0 Appendices

## 11.1 Appendix A. Distribution of Data Samples

Data used to develop equations for the original 11 species in the SO variant came from the following sources:

- Deschutes forest inventory

- Fremont forest inventory

- Winema forest inventory

- Klamath forest inventory

- Lassen forest inventory

- Modoc forest inventory

- Hat Creek Rim thinning (Lassen NF)

- Forest Inventory and Analysis samples from state and private lands

- True fir release study (Ken Seidel, Deschutes NF)

- PSW Goosenest RD. thinning (Klamath NF)

- Washington Mountain thinning (PSW, Modoc NF)

- Sugar Hill thinning (PSW, Modoc NF)

- Jelly Pass thinning (PSW)

- Weyerhauser Spaulding Butte thinning (Modoc NF)

- Diamond International Bend thinning (Bob Wheeler)

- Center Peak thinning (Fremont NF)

- Fremont-Winema evaluation plantations

- Deschutes benchmark plantations

- Island thinning (Lassen NF)

- Adin Pass thinning (PSW, Modoc NF)

- Lookout Mountain fir study (PNW, Ken Seidel)

- Sheridan Mountain thinning (PSW, Deschutes NF)

- D25/D56 ponderosa pine study (PNW, Barrett)

- D66 red fir spacing study (PNW)

- D72 mixed conifer spacing study (PNW, Deschutes NF)

Table 11.1.1 contains distribution information of data used to fit species relationships in this variant’s geographic region (information from original variant overview).

**Table 11.1.1 The distribution of growth sample trees by species and type of study (landowner).**

| Species | Deschutes Forest | Winema Forest | Fremont Forest | Klamath Forest | Modoc Forest | Lassen Forest | Special Studies | Private Land | Total  Number of Observations |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Western White Pine | 20 | 27 | 15 | 0 | 28 | 9 | 0 | 0 | 260 |
| Sugar Pine | 1 | 42 | 16 | 0 | 1 | 37 | 2 | 0 | 326 |
| Douglas-fir | 29 | 55 | 0 | 1 | 0 | 12 | 1 | 1 | 717 |
| White Fir | 6 | 29 | 28 | 1 | 16 | 18 | 1 | 1 | 5797 |
| Mountain Hemlock | 86 | 11 | 1 | 0 | 3 | 0 | 0 | 0 | 783 |
| Incense Cedar | 4 | 13 | 35 | 0 | 12 | 34 | 0 | 1 | 511 |
| Lodgepole Pine | 46 | 23 | 24 | 0 | 4 | 3 | 0 | 0 | 3416 |
| Engelmann Spruce | 81 | 19 | 0 | 0 | 0 | 0 | 0 | 0 | 31 |
| Shasta Red Fir | 10 | 61 | 1 | 1 | 21 | 5 | 0 | 0 | 1216 |
| Ponderosa Pine | 15 | 14 | 22 | 1 | 11 | 10 | 26 | 1 | 10038 |
| Other | 0 | 2 | 48 | 0 | 35 | 0 | 0 | 15 | 48 |

## 11.2 Appendix B: Plant Association Codes

**Table 11.2.1 Region 5 Plant association codes recognized in the SO variant.**

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
| 24 = SAEX  Narrowleaf willow (bench) | 43267 | 501 – Manning & Padget |
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
| 201 = LIDE3/2SHRUB  Tanoak/shrub (moist0 | HT0SM000 | 513 – Jimerson et al, 1996 |
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

**Table 11.2.2 Region 6 plant association codes recognized in the SO variant. Also used for the Warm Springs Reservation.**

| **FVS Sequence Number = Plant Association**  **Species Type** | **Alpha Code** | **Site Species** | **Site Index\*** | **Max. SDI\*** | **Source\*** | **Reference** |
| --- | --- | --- | --- | --- | --- | --- |
| 407 = PSME ABCO/SYAL/FORB  Mixed conifer/snowberry/twinflower | CDS612 | DF | 85 | 755 | C | p. 78  R6 E 104-85 |
| 408 = PSME-ABCO/SYAL/FORB  Mixed conifer/snowberry/forb | CDS613 | WF | 90 | 810 | C | p. 77  R6 E 104-85 |
| 409 = PSME-ABCO/SYAL/CARU  Mixed conifer/snowberry/pinegrass | CDS614 | DF | 78 | 615 | C | p. 76  R6 E 104-85 |
| 410 = PIEN/CAEU  Mixed conifer/snowberry/pinegrass | CEM111 | ES | 80 | 635 | H | p. 55  R6 E TP-279-87 |
| 411 = PIEN/EQAR-STRO  Engelmann spruce/common horsetail-twistedstalk | CEM221 | ES | 90 | 712 | H | p. 57  R6 E TP-279-87 |
| 412 = PIEN/CLUN  Engelmann spruce/queencup beadlily | CEM222 | ES | 105 | 842 | H | p. 49  R6 E TP-279-87 |
| 413 = PIEN/VAOC2-FORB  Engelmann spruce/bog blueberry/forb | CEM331 | ES | 85 | 643 | H | p. 51  R6 E TP-279-87 |
| 414 = PIEN/VAOC2/CAEU  Engelmann spruce/bog blueberry/widefruit sedge | CEM312 | ES | 76 | 444 | H | p. 53  R6 E TP-279-87 |
| 415 = PICO-PIAL/PELA  Lodgepole pine-Whitebark pine/Gay penstemon | CLC111 | LP | 30 | 625 | C | p. 19  R6 E 79-004 |
| 416 = PICO-PIAL/ARCO2  Lodgepole pine-Whitebark pine-W white pine/sandwort | CLC112 | LP | 25 | 690 | C | p. 20  R6 E 79-004 |
| 417 = PICO/FORB  Lodgepole pine/forb | CLF111 | LP | 43 | 365 | C | p. 11  R6 E 79-005 |
| 418 = PICO/STOC-BASIN  Lodgepole pine/needlegrass basins | CLG311 | LP | 38 | 480 | C | p. 42  R6 E 104-85 |
| 419 = PICO/STOC-LUCA-LINU  Lodgepole pine/needlegrass-lupine-linanthastrum | CLG313 | LP | 45 | 395 | C | p. 49  R6 E 104-85 |
| 420 = PICO/STOC-LUCA  Lodgepole pine/needlegrass-lupine | CLG314 | LP | 52 | 660 | C | p. 48  R6 E 104-85 |
| 421 = PICO/FRVI-FEID  Lodgepole pine/strawberry-fescue | CLG315 | LP | 44 | 510 | C | p. 21  R6 E 79-004 |
| 422 = PICO/CAPE-LUCA  Lodgepole pine/sedge-lupine | CLG411 | LP | 49 | 680 | C | p. 46  R6 E 104-85 |
| 423 = PICO/CAPE-LUCA-PEEU  Lodgepole pine/sedge-lupine-penstemon | CLG412 | LP | 50 | 635 | C | p. 47  R6 E 104-85 |
| 424 = PICO/CAPE-STOC-BASIN  Lodgepole pine/sedge-needlegrass basins | CLG413 | LP | 37 | 590 | C | p. 43  R6 E 104-85 |
| 425 = PICO/SIHY-CAPE  Lodgepole pine/squirreltail-long-stolon sedge | CLG415 | LP | 40 | 540 | C | p. 22  R6 E 79-004 |
| 426 = PICO/POTR/FRVI  Lodgepole pine/quaking aspen/strawberry | CLH111 | LP | 48 | 345 | C | p. 23  R6 E 79-004 |
| 427 = PICO/CANE-ELGL-WET  Lodgepole pine/sedge-grass wetland | CLM111 | LP | 51 | 540 | C | p. 32  R6 E 104-85 |
| 428 = PICO/POPR  Lodgepole pine/Kentucky bluegrass | CLM112 | LP | 55 | 538 | H | p. 29  R6 E TP-279-87 |
| 429 = PICO/CAEU  Lodgepole pine/widefruit sedge | CLM113 | LP | 57 | 491 | H | p. 41  R6 E TP-279-87 |
| 430 = PICO/CAAQ  Lodgepole pine/aquatic sedge | CLM114 | LP | 45 | 549 | H | p. 43  R6 E TP-279-87 |
| 431 = PICO/ARUV  Lodgepole pine/bearberry | CLM211 | LP | 48 | 585 | C | p. 31  R6 E TP-279-87 |
| 432 = PICO/VAOC2/FORB  Lodgepole pine/blueberry/forb | CLM311 | LP | 47 | 570 | C | p.37R6 E TP-279-87  p.33R6 E 104-85 |
| 433 = PICO/VAOC2/CAEU  Lodgepole pine/bog blueberry/widefruit sedge | CLM312 | LP | 54 | 466 | H | p. 39  R6 E TP-279-87 |
| 434 = PICO/SPDO/FORB  Lodgepole pine/Douglas spiraea/forb | CLM313 | LP | 51 | 558 | H | p. 33  R6 E TP-279-87 |
| 435 = PICO/SPDO/CAEU  Lodgepole pine/Douglas spiraea/widefruit sedge | CLM314 | LP | 59 | 519 | H | p. 35  R6 E TP-279-87 |
| 436 = PICO/XETE  Lodgepole pine/beargrass | CLM411 | LP | 56 | 535 | H | p. 52  R6 E 104-85 |
| 437 = PICO/PIEN/ELPA2  Lodgepole pine-Engel spruce/few-flowered spikerush | CLM911 | LP | 35 | 495 | C | p. 45  R6 E TP-279-87 |
| 438 = PICO/ARTR-RHYO  Lodgepole pine/sagebrush (rhyolite) | CLS112 | LP | 41 | 180 | C | p. 36  R6 E 104-85 |
| 439 = PICO/PUTR/STOC  Lodgepole pine/bitterbrush/needlegrass | CLS211 | LP | 46 | 405 | C | p. 40  R6 E 104-85 |
| 440 = PICO/PUTR/CAPE  Lodgepole pine/bitterbrush/sedge | CLS212 | LP | 52 | 405 | C | p. 44  R6 E 104-85 |
| 441 = PICO/PUTR/FORB  Lodgepole pine/bitterbrush/forb | CLS213 | LP | 43 | 400 | C | p. 35  R6 E 104-85 |
| 442 = PICO/PUTR/FEID  Lodgepole pine/bitterbrush/fescue | CLS214 | LP | 45 | 400 | C | p. 39  R6 E 104-85 |
| 443 = PICO/RICE-PUTR/STOC  Lodgepole pine/current-bitterbrush/needlegrass | CLS215 | LP | 41 | 370 | C | p. 41  R6 E 104-85 |
| 444 = PICO/PUTR-RHYO  Lodgepole pine/bitterbrush (rhyolite pumice) | CLS216 | LP | 36 | 345 | C | p. 38  R6 E 104-85 |
| 445 = PICO/ARNE  Lodgepole pine/pinemat manzanita | CLS311 | LP | 31 | 575 | C | p. 50  R6 E 104-85 |
| 446 = PICO/VASC  Lodgepole pine/grouse huckleberry | CLS412 | LP | 45 | 865 | C | p. 51  R6 E 104-85 |
| 447 = PICO/VASC-FORB  Lodgepole pine/grouse huckleberry/forb | CLS413 | LP | 55 | 444 | H | p. 12  R6 E 79-005 |
| 448 = PICO/VASC/CAPE  Lodgepole pine/grouse huckleberry/long-stolon sedge | CLS414 | LP | 43 | 290 | H | p. 13  R6 E 79-005 |
| 449 = PICO/CEVE-ARPA  Lodgepole pine/snowbrush-manzanita | CLS911 | LP | 44 | 575 | C | p. 45  R6 E 104-85 |
| 450 = TSME/VASC-DES  Mountain hemlock/grouse huckleberry, Deschutes | CMS111 | MH | 30 | 895 | C | p. 24 R6 E 79-005  p. 80 R6 E 104-85 |
| 451 = PIPO-JUOC/CELE/FEID  Ponderosa-juniper/mahogany-bitterb-big sage/fescue | CPC211 | PP | 82 | 345 | C | p. 24  R6 E 79-004 |
| 452 = PIPO/WYMO  Ponderosa pine/wooly wyethia | CPF111 | PP | 84 | 510 | C | p. 27  R6 E 79-004 |
| 453 = PIPO/CAPE-FEID-LALA2  Ponderosa pine/sedge-fescue-peavine | CPG212 | PP | 97 | 575 | C | p. 66  R6 E 104-85 |
| 454 = PIPO-POTR/PONE  Ponderosa pine/quaking aspen/bluegrass | CPH311 | PP | 84 | 485 | C | p. 28  R6 E 79-004 |
| 455 = PIPO/PUTR-ARTR/FEID  Ponderosa pine/bitterbrush sagebrush/fescue | CPS111 | PP | 70 | 285 | C | p. 56  R6 E 104-85 |
| 456 = PIPO/PUTR-ARTR/SIHY  Ponderosa pine/bitterbrush-sage/squirreltail (Rhyo) | CPS112 | PP | 75 | 335 | C | p. 55  R6 E 104-85 |
| 457 = PIPO/ARTR/PONE  Ponderosa pine/mtn big sagebrush/bluegrass | CPS121 | PP | 82 | 450 | C | p. 29  R6 E 79-004 |
| 458 = PIPO/PUTR/FEID  Ponderosa pine/bitterbrush/fescue | CPS211 | PP | 81 | 460 | C | p. 57  R6 E 104-85 |
| 459 = PIPO/PUTR/STOC  Ponderosa pine/bitterbrush/needlegrass | CPS212 | PP | 85 | 440 | C | p. 60b  R6 E 104-85 |
| 460 = PIPO/PUTR-ARPA/STOC  Ponderosa pine/bitterbrush-manzanita/needlegrass | CPS213 | PP | 81 | 345 | C | p. 61  R6 E 104-85 |
| 461 = PIPO/PUTR-ARPA/CAPE  Ponderosa pine/bitterbrush-manzanita/sedge | CPS214 | PP | 88 | 450 | C | p. 64  R6 E 104-85 |
| 462 = PIPO/PUTR/CAPE  Ponderosa pine/bitterbrush/sedge | CPS215 | PP | 89 | 425 | C | p. 63  R6 E 104-85 |
| 463 = PIPO/PUTR/FEID-AGSP  Ponderosa pine/bitterbrush/bunchgrass | CPS216 | PP | 77 | 225 | C | p. 53  R6 E 104-85 |
| 464 = PIPO/PUTR-ARPA/FEID  Ponderosa pine/bitterbrush-manzanita/fescue | CPS217 | PP | 76 | 425 | C | p. 58  R6 E 104-85 |
| 465 = PIPO/PUTR/SIHY-RHYO  Ponderosa pine/bitterbrush/squirreltail (rhyolite) | CPS218 | PP | 80 | 385 | C | p. 54  R6 E 104-85 |
| 466 = PIPO/PUTR-CEVE/STOC  Ponderosa pine/bitterbrush-snowbrush/needlegrass | CPS311 | PP | 85 | 550 | C | p. 62  R6 E 104-85 |
| 467 = PIPO/PUTR-CEVE/CAPE  Ponderosa pine/bitterbrush-snowbrush/sedge | CPS312 | PP | 89 | 345 | C | p. 65  R6 E 104-85 |
| 468 = PIPO/PUTR-CEVE/FEID  Ponderosa pine/bitterbrush-snowbrush/fescue | CPS314 | PP | 90 | 365 | C | p. 59  R6 E 104-85 |
| 469 = PIPO/SYAL-FLOOD  Ponderosa pine/common snowberry-floodplain | CPS511 | PP | 101 | 516 | H | p. 27  R6 E TP-279-87 |
| 470 = ABMAS/CAPE  Shasta red fir/long-stolon sedge | CRG111 | RF | 120 | 745 | C | p. 22  R6 E 79-005 |
| 471 = ABMAS/ARNE  Mixed conifer/manzanita | CRS111 | RF | 79 | 725 | C | p. 72  R6 E 104-85 |
| 472 = ABMAS-TSME/ARNE/CAPE  Shasta red fir-Mtn hemlock/pinemat manzanita/sedge | CRS112 | RF | 99 | 910 | C | p. 23  R6 E 79-005 |
| 473 = ABMAS-ABCO/CACH-CHUM/CAPE  Shasta red fir-white fir/chink-prince's pine/sedge | CRS311 | RF | 114 | 775 | C | p. 21  R6 E 79-005 |
| 474 = ABCO-PIPO-CADE/AMAL  White fir-ponderosa pine-incense cedar/serviceberry | CWC111 | WF | 58 | 665 | C | p. 34  R6 E 79-004 |
| 475 = ABCO/CEVE-CACH/PTAQ  Mixed conifer/snowbrush-chinkquapin/brackenfern | CWC211 | PP | 96 | 675 | C | p. 75  R6 E 104-85 |
| 476 = ABCO/CEVE-CACH/CARU  Mixed conifer/snowbrush-chinkquapin/pinegrass | CWC212 | PP | 95 | 630 | C | p. 74  R6 E 104-85 |
| 477 = ABCO/CEVE/CAPE-PTAQ  Mixed conifer/snowbrush/sedge-bracken | CWC213 | PP | 87 | 645 | C | p. 69  R6 E 104-85 |
| 478 = ABCO-PSME/CEVE-ARUV  Mixed conifer/snowbrush-bearberry | CWC215 | WF | 78 | 671 | H | p. 17  R6 E 79-005 |
| 479 = ABCO-PICO/CAPE5-STOC  White fir-lodgepole pine/long-stolon sedge-needlegr | CWC311 | WF | 54 | 770 | C | p. 30  R6 E 79-004 |
| 480 = ABCO-PIPO-PILA/RIVI  White fir-ponderosa pine-white pine/sticky currant | CWC411 | WF | 56 | 910 | C | p. 35  R6 E 79-004 |
| 481 = ABCO-PIPO-PILA/ARPA  White fir-ponderosa pine-sugar pine/manzanita | CWC412 | WF | 68 | 510 | C | p. 33  R6 E 79-004 |
| 482 = PIEN-BOTTOMS  Engelmann spruce bottomlands | CWC911 | ES | 86 | 682 | H | p. 79  R6 E 104-85 |
| 483 = ABCO/CLUN  White fir/queencup beadlily | CWF431 | WF | 81 | 872 | H | p. 47  R6 E TP-279-87 |
| 484 = ABCO/CEVE-CACH  Mixed conifer/snowbrush-chinquapin | CWH111 | PP | 91 | 675 | C | p. 73  R6 E 104-85 |
| 485 = ABCO/CACH-PAMY-CHUM  White fir/chinquapin-boxwood-prince's pine | CWH112 | WF | 84 | 750 | C | p. 20  R6 E 79-005 |
| 486 = ABCO-PIPO-POTR/CAPE  White fir-ponderosa pine-aspen/long-stolon sedge | CWH211 | PP | 84 | 270 | C | p. 36  R6 E 79-004 |
| 487 = ABCO/ALTE  White fir-alder/shrub meadow | CWM111 | WF | 81 | 607 | H | p. 16  R6 E 79-005 |
| 488 = ABCO/CEVE-ARPA  Mixed conifer/snowbrush-manzanita | CWS112 | PP | 85 | 660 | C | p. 70  R6 E 104-85 |
| 489 = ABCO/CEVE-ARPA/CAPE-PEEU  M conifer/manzanita-snowbrush/sedge-penstemon | CWS113 | PP | 88 | 660 | C | p. 71  R6 E 104-85 |
| 490 = ABCO/CEVE  Mixed conifer/snowbrush | CWS114 | PP | 86 | 725 | C | p. 67  R6 E 104-85 |
| 491 = ABCO/CEVE/CAPE  Mixed conifer/snowbrush/sedge | CWS115 | PP | 88 | 790 | C | p. 68  R6 E 104-85 |
| 492 = ABCO/CEVE-CEPR/FRVI  Mixed conifer/snowbrush-squawcarpet/strawberry | CWS116 | WF | 65 | 560 | C | p. 18  R6 E 79-005 |
| 493 = ABCO-PIPO/ARPA-BERE  White fir-ponderosa pine/manzanita-Oregon grape | CWS117 | PP | 86 | 570 | C | p. 32  R6 E 79-004 |
| 494 = ABCO/SYAL/FRVI  White fir/snowberry/strawberry | CWS312 | WF | 69 | 485 | C | p. 19  R6 E 79-005 |
| 495 = ABCO-PIPO/SYAL/STJA  White fir-ponderosa pine/snowberry/starwort | CWS313 | WF | 63 | 810 | C | p. 31  R6 E 79-004 |
| 496 = POTR/ELGL  Quaking aspen/blue wildrye | HQM121 | LP | 55 | 464 | H | p. 61  R6 E TP-279-87 |
| 497 = POTR-PICO/SPDO/CAEU  Quak. aspen-lodgepole pine/Doug spiraea/widefruit sedge | HQM411 | LP | 59 | 640 | H | p. 63  R6 E TP-279-87 |
| 498 = POTR/SYAL/ELGL  Quaking aspen/common snowberry/blue wildrye | HQS221 | PP | 101 | 596 | H | p. 59  R6 E TP-279-87 |

\*Site index estimates are from GBA analysis. SDI maximums are set by GBA analysis (Source=H) or CVS plot analysis (Source=C).

The U.S. Department of Agriculture (USDA) prohibits discrimination in all its programs and activities on the basis of race, color, national origin, sex, religion, age, disability, political beliefs, sexual orientation, or marital or family status. (Not all prohibited bases apply to all programs.) Persons with disabilities who require alternative means for communication of program information (Braille, large print, audiotape, etc.) should contact USDA’s TARGET Center at (202) 720-2600 (voice and TDD).

To file a complaint of discrimination, write USDA, Director, Office of Civil Rights, Room 326-W, Whitten Building, 1400 Independence Avenue, SW, Washington, DC 20250-9410 or call (202) 720-5964 (voice or TDD). USDA is an equal opportunity provider and employer.