ORGANON Pacific Northwest (OP) Variant Overview of the Forest Vegetation Simulator

March 2026

**![](data:image/jpeg;base64...)**

ORGANON Pacific Northwest (OP) Variant Overview of the Forest Vegetation Simulator

# Compiled By:

Erin Smith-Mateja

USDA Forest Service

# Authors and Contributors:

The FVS staff has maintained model documentation for this variant in the form of a variant overview since its release in July 2015.

Smith-Mateja, Erin, comp. 2015 (revised March 9, 2026). ORGANON Pacific Northwest (OP) Variant Overview – Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 82p.

Table of Contents

[Compiled By: ii](#_Toc223521405)

[Authors and Contributors: ii](#_Toc223521406)

[1.0 Introduction 1](#_Toc223521407)

[1.1 FVS-Organon 1](#_Toc223521408)

[2.0 Geographic Range 4](#_Toc223521409)

[3.0 Control Variables 5](#_Toc223521410)

[3.1 Location Codes 5](#_Toc223521411)

[3.2 Species Codes 6](#_Toc223521412)

[3.3 Habitat Type, Plant Association, and Ecological Unit Codes 7](#_Toc223521413)

[3.4 Site Index 8](#_Toc223521414)

[3.5 Maximum Density 9](#_Toc223521415)

[4.0 Growth Relationships 11](#_Toc223521416)

[4.1 Height-Diameter Relationships 11](#_Toc223521417)

[4.2 Bark Ratio Relationships 16](#_Toc223521418)

[4.3 Crown Ratio Relationships 18](#_Toc223521419)

[4.3.1 Crown Ratio Dubbing 18](#_Toc223521420)

[4.3.2 Crown Ratio Change 23](#_Toc223521421)

[4.3.3.1 Crown Ratio for Newly Established Trees 23](#_Toc223521422)

[4.4 Crown Width Relationships 23](#_Toc223521423)

[4.5 Crown Competition Factor 28](#_Toc223521424)

[4.6 Small Tree Growth Relationships 30](#_Toc223521425)

[4.6.1 Small Tree Height Growth 30](#_Toc223521426)

[4.6.2 Small Tree Diameter Growth 33](#_Toc223521427)

[4.7 Large Tree Growth Relationships 35](#_Toc223521428)

[4.7.1 Large Tree Diameter Growth 35](#_Toc223521429)

[4.7.2 Large Tree Height Growth 42](#_Toc223521430)

[5.0 Mortality Model 53](#_Toc223521431)

[6.0 Regeneration 59](#_Toc223521432)

[7.0 Volume 63](#_Toc223521433)

[8.0 Fire and Fuels Extension (FFE-FVS) 70](#_Toc223521434)

[9.0 Insect and Disease Extensions 71](#_Toc223521435)

[10.0 Literature Cited 72](#_Toc223521436)

[11.0 Appendices 78](#_Toc223521437)

[11.1 Appendix B: Plant Association Codes 78](#_Toc223521438)

Quick Guide to Default Settings

| **Parameter or Attribute** | **Default Setting** | | |
| --- | --- | --- | --- |
| Number of Projection Cycles | 1 (10 if using FVS GUI) | | |
| Projection Cycle Length | 5 years | | |
| Location Code (National Forest) | 708 – BLM Salem ADU | | |
| Plant Association Code | 40 (CHS133 TSHE/GASH VAOV2) | | |
| Slope | 5 percent | | |
| Aspect | 0 (no meaningful aspect) | | |
| Elevation | 7 (700 feet) | | |
| Latitude / Longitude | Latitude | | Longitude |
| All location codes | 46 | | 123 |
| Site Species | Plant Association Code specific | | |
| Site Index | Plant Association Code specific | | |
| Maximum Stand Density Index | Plant Association Code specific | | |
| Maximum Basal Area | Based on maximum stand density index for site species | | |
| Volume Equations | National Volume Estimator Library | | |
| Merchantable Cubic Foot Volume Specifications: | | | |
| Minimum DBH / Top Diameter | LP | | All Other |
| 708 – BLM Salem;  709 – BLM Eugene;  712 – BLM Coos Bay | 7.0 / 5.0 inches | | 7.0 / 5.0 inches |
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

New “variants” of the FVS model are created by embedding new tree growth, mortality, and volume equations for a particular geographic area into the FVS framework. Geographic variants of FVS have been developed for most of the forested lands in the United States.

The OP variant uses the ORGANON Northwest Oregon or Stand Management Cooperative growth equations embedded into the existing PN variant code framework. The ORGANON model was developed by David Hann PhD, his graduate students, and cooperators at Oregon State University. Like FVS, ORGANON is also an individual tree distance independent model.

Using the PN variant framework allows for extensions which are part of the PN variant to be available in the OP variant. These include the Fire and Fuels, regeneration establishment, event monitor, climate, and dwarf mistletoe extensions.

The OP variant is limited to a maximum of 2000 individual tree records.

For background on the development of the ORGANON model users should consult the ORGANON web site:

* http://www.cof.orst.edu/cof/fr/research/organon/

To fully understand how to use this variant, users should also consult the following publication:

* Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002)

This publication may be downloaded from the Forest Management Service Center (FMSC), Forest Service website. Other FVS publications may be needed if one is using an extension that simulates the effects of fire, insects, or diseases.

## 1.1 FVS-Organon

ORGANON recognizes less species codes than FVS and has minimum size restrictions. FVS can accommodate trees of any size including seedlings. So an FVS simulation file representing a stand may contain tree records that cannot be directly handled within the ORGANON code.

The Northwest Oregon (NWO) and Stand Management Cooperative (SMC) versions of ORGANON recognizes 11 species found in western Oregon or Washington, or southwestern British Columbia. Trees must be greater than 4.5 feet tall and 0.09” in diameter-at-breast-height. Tree records with parameters meeting these species and size requirements will be referred to as valid ORGANON tree records in the remainder of this document; all others will be referred to as non-valid ORGANON tree records. Valid ORGANON tree records get their growth and mortality estimates using ORGANON equations; non-valid ORGANON tree records get their growth and mortality estimates using FVS PN variant equations.

Of the 11 species recognized in NWO and SMC, two species are designated as “the big 6”. These are grand fir and Douglas-fir. At least one of these species must be in the stand for the ORGANON growth routines to run. In FVS, if one of these species is not present, then all tree records are designated as non-valid ORGANON tree records and will get their growth and mortality estimates from FVS PN variant equations.

The OP variant recognizes 38 individual species or species groups (see section 3.2 and table 3.2.1). When the ORGANON growth routines are being called, all tree records get passed into the ORGANON growth routines so stand density measures are correct in the ORGANON growth and mortality equations. This is done by making sure all non-valid ORGANON tree records have temporarily assigned to them a valid ORGANON species code and the tree diameter and height meet the minimum ORGANON requirements. This species mapping is shown in table 1.1.1. If tree height is less than or equal to 4.5’ it is temporarily set to 4.6’; if tree diameter is less than or equal to 0.09” it is temporarily set to 0.1”.

**Table 1.1.1 Species code mapping used in the OP variant when calling ORGANON growth routines.**

|  |  |  |
| --- | --- | --- |
| **Valid NWO/SMC ORGANON Species Code** | **OP Variant**  **FVS Alpha Code\*** | **OP Variant FVS Alpha Codes\***  **mapped to the valid ORGANON Species Code** |
| 017 | GF | GF, WF, SF, AF, NF, LL |
| 202 | DF | DF, RF, SS, ES, LP, JP, SP, WP, PP, WB, KP |
| 231 | PY | PY, WJ |
| 242 | RC | RC, YC, IC |
| 263 | WH | WH, RW, MH |
| 312 | BM | BM, TO, AS, CW |
| 351 | RA | RA |
| 361 | MA | MA, GC |
| 492 | DG | DG, HT, CH, OT |
| 815 | WO | WO |
| 920 | WI | WI |

\*See table 3.2.1 for alpha code definitions

The intent of this variant is to give users access to the ORGANON growth model growth prediction equations and the functionality of FVS. ORGANON model code is called from two places within the FVS code and performs two different tasks just as it does when running ORGANON separately.

The first call is to edit the input data, estimate missing values such as tree height and crown ratio, and calibrate growth equations to the input data. This only happens at most one time when a tree input file is provided which contains valid ORGANON tree records (discussed in the next paragraph). In cases such as a bare ground plant management scenario, or when the tree input file does not contain valid ORGANON tree records, or when the provided tree input file has already been through the ORGANON edit process (i.e. an existing ORGANON .INP file), it won’t happen at all. Any errors in the input data will be noted in the main FVS output file so users can correct them and rerun the simulation at their discretion.

The second call is made to the ORGANON model code to estimate tree growth and mortality. This happens every growth projection cycle when there are valid ORGANON tree records in the run. Estimates include large tree diameter growth, height growth, and crown ratio change, and tree mortality.

# 2.0 Geographic Range

The ORGANON Northwest Oregon version was built with data from Douglas-fir and Western Hemlock dominated stands collected from 179 stands in Northwestern Oregon. The Stand Management Cooperative version data came from 3,359 plots, which range from southwest British Columbia, western Washington and western Oregon stands dominated with Douglas-fir and Western Hemlock. The PN variant was fit to data representing forest types in the Coast Range and Olympic Peninsula physiographic provinces. Data used in initial model development came from forest inventories, managed stand surveys. Forest inventories came from US. Forest Service Siuslaw and Olympic National Forests, BLM – Oregon, and BIA – Quinault Indian Reservation.

The OP variant covers forest types on the coast of the Pacific Northwest states of Washington and Oregon. The suggested geographic range of use for the OP variant is shown in figure 2.0.1. The light green covering the Stand Management Cooperative version and dark green the Northwest Oregon version.

![](data:image/jpeg;base64...)

**Figure 2.0.1 Suggested geographic range of use for the OP variant.**

# 3.0 Control Variables

FVS users need to specify certain variables used by the OP variant to control a simulation. These are entered in parameter fields on various FVS keywords available in the FVS interface or they are read from an FVS input database using the Database Extension.

## 3.1 Location Codes

The location code is a 3- or 4-digit code where, in general, the first digit of the code represents the USDA Forest Service Region Number, and the last two digits represent the Forest Number within that region. In some cases, a location code beginning with a “7” or “8” is used to indicate an administrative boundary that doesn’t use a Forest Service Region number (for example, other federal agencies, state agencies, or other lands).

If the location code is missing or incorrect in the OP variant, a default forest code of 708 (BLM Salem ADU) will be used. Location codes recognized in the OP variant are shown in tables 3.1.1 and 3.1.2.

**Table 3.1.1 Location codes used in the OP variant.**

|  |  |
| --- | --- |
| **Location Code** | **Location** |
| 609 | Olympic National Forest |
| 612 | Siuslaw National Forest |
| 708 | BLM Salem Admin Unit |
| 709 | BLM Eugene Admin Unit |
| 712 | BLM Coos Bay Admin Unit |
| 800 | Quinault Indian Reservation |

**Table 3.1.2 Bureau of Indian Affairs reservation codes used in the OP variant.**

| **Location Code** | **Location** |
| --- | --- |
| 8101 | Grand Ronde Community (mapped to 612) |
| 8102 | Siletz Reservation (mapped to 612) |
| 8103 | Coos, Lower Umpqua, Siuslaw Off-Res. Trust Land (mapped to 612) |
| 8104 | Cow Creek Reservation (mapped to 712) |
| 8105 | Coquille Reservation (mapped to 712) |
| 8110 | Chehalis Reservation (mapped to 609) |
| 8111 | Hoh Indian Reservation (mapped to 609) |
| 8113 | Shoalwater Bay Indian Reservation (mapped to 609) |
| 8114 | Skokomish Reservation (mapped to 609) |
| 8115 | Squaxin Island Reservation (mapped to 609) |
| 8116 | Lower Elwha Off-Res. Trust Land (mapped to 609) |
| 8119 | Lummi Reservation (mapped to 609) |
| 8120 | Muckleshoot Reservation (mapped to 609) |
| 8121 | Nisqually Reservation (mapped to 609) |
| 8122 | Port Gamble Reservation (mapped to 609) |
| 8123 | Port Madison Reservation (mapped to 609) |
| 8125 | Swinomish Reservation (mapped to 609) |
| 8126 | Tulalip Reservation (mapped to 609) |
| 8127 | Upper Skagit Reservation (mapped to 609) |
| 8128 | Samish Tdsa (mapped to 609) |
| 8129 | Snoqualmie Reservation (mapped to 609) |

## 3.2 Species Codes

The OP variant recognizes 37 species, plus one other composite species category. You may use FVS species codes, Forest Inventory and Analysis (FIA) species codes, or USDA Natural Resources Conservation Service PLANTS symbols to represent these species in FVS input data. Any valid western species code identifying species not recognized by the variant will be mapped to a similar species in the variant. The species mapping crosswalk is available on the FVS website variant documentation webpage. Any non-valid species code will default to the “other hardwood” category.

Either the FVS sequence number or species code must be used to specify a species in FVS keywords and Event Monitor functions. FIA codes or PLANTS symbols are only recognized during data input and may not be used in FVS keywords. Table 3.2.1 shows the complete list of species codes recognized by the OP variant.

When entering tree data, users should substitute diameter at root collar (DRC) for diameter at breast height (DBH) for woodland species (western juniper).

**Table 3.2.1 Species codes used in the OP variant.**

| **Species Number** | **Species Code** | **FIA Code** | **PLANTS Symbol** | **Scientific Name1** | **Common Name1** |
| --- | --- | --- | --- | --- | --- |
| 1 | SF | 011 | ABAM | *Abies amabilis* | Pacific silver fir |
| 2 | WF | 015 | ABCO | *Abies concolor* | white fir |
| 3 | GF | 017 | ABGR | *Abies grandis* | grand fir |
| 4 | AF | 019 | ABLA | *Abies lasiocarpa* | subalpine fir |
| 5 | RF | 020 | ABMA | *Abies magnifica* | California red fir |
| 6 | SS | 098 | PISI | *Picea sitchensis* | Sitka spruce |
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
| 23 | MA | 361 | ARME | *Arbutus menziesii* | Pacific madrone |
| 24 | TO | 631 | LIDE3 | *Lithocarpus densiflorus* | tanoak |
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

Plant association codes recognized in the OP variant are shown in Appendix B. If an incorrect plant association code is entered or no code is entered FVS will use the default plant association code, which is 40 (CHS133 TSHE/GASH-VAOV2). Plant association codes are used to set default site information such as site species, site indices, and maximum stand density indices. The site species, site index and maximum stand density indices can be reset via FVS keywords. Users may enter the plant association code or the plant association FVS sequence number on the STDINFO keyword, when entering stand information from a database, or when using the SETSITE keyword without the PARMS option. If using the PARMS option with the SETSITE keyword, users must use the FVS sequence number for the plant association.

## 3.4 Site Index

Site index is used in some of the growth equations in the OP variant. Users should always use the same site curves that FVS uses as shown in table 3.4.1.

**Table 3.4.1 Site index reference curves for species in the OP variant.**

| **Species Code** | **Reference** | **BHA or TTA1** | **Base Age** |
| --- | --- | --- | --- |
| SF | Hoyer and Herman (1989) | BHA | 100 |
| GF, WF | Cochran (1979) | BHA | 50 |
| AF, ES | Alexander (1967) | BHA | 100 |
| RF | Dolph (1991) | BHA | 50 |
| SS, RC | Farr (1984) | BHA | 50 |
| NF | Herman et al. (1978) | BHA | 100 |
| LP | Dahms (1964) | TTA | 50 |
| WP, SP | Curtis et al. (1990) | BHA | 100 |
| PP, IC, JP | Barrett (1978) | BHA | 100 |
| DF | King (1966) | BHA | 50 |
| WH | Flewelling (unpublished) | BHA | 50 |
| MH | Means et al. (1986)2 | BHA | 100 |
| RA | Harrington and Curtis (1986) | TTA | 20 |
| LL | Cochran (1985) | BHA | 50 |
| Other3 | Curtis et al. (1974) | BHA | 100 |
| RW4 | Krumland and Eng (2005) | BHA | 50 |

1 Equation is based on total tree age (TTA) or breast height age (BHA)

2 The source equation is in metric units; site index values for mountain hemlock are assumed to be in meters.

3 Other includes all the following species: Alaska cedar, redwood, bigleaf maple, Pacific madrone, tanoak, giant chinquapin, quaking aspen, black cottonwood, western juniper, whitebark pine, knobcone pine, Pacific yew, Pacific dogwood, hawthorn, bitter cherry, and willow.

4 Equation form is presented on page 34 and coefficients are provided on page 68

If site index is missing or incorrect, the default site species and site index are determined by plant association codes found in Appendix B. If the plant association code is missing or incorrect, the site species is set to Douglas-fir with a default site index set to 100.

In the OP variant, if site index is provided for Douglas-fir but not for western hemlock, then western hemlock site index is estimated from the Douglas-fir site index using equation {3.4.1}; if site index is provided for western hemlock but not for Douglas-fir, then Douglas-fir site index is estimated from ponderosa pine site index using equation {3.4.2}.

{3.4.1} WHSI = -0.432 + (0.899 \* DFSI)

{3.4.2} DFSI = 0.480 + (1.110 \* WHSI)

where:

*WHSI* is site index for western hemlock

*DFSI* is site index for Douglas-fir

Site indices for species not assigned a site index are determined based on the site index of the site species (height at base age) with an adjustment for the reference age differences between the site species and the target species. For species that use the Curtis et al. (1974) equation, the site index estimate is adjusted by multiplying the site index estimate by an adjustment factor in table 3.4.2, if the species is not listed as the site species. Similarly, for Oregon white oak, which does not have a site curve, an adjustment is made from the site species entered to a King (1966) site index which is then adjusted for Oregon white oak using equation {3.4.3} from Gould and Harrington (2009).

**Table 3.4.2 Site index adjustment factors for hardwood species using Curtis et al equations in the PN variant.**

| **Species** | **Base Age** |
| --- | --- |
| BM | 0.75 |
| MA | 0.65 |
| TO | 0.70 |
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

{3.4.3} MaxHT= 114.24569[1-exp(-.02659\*SIKing)]^2.25993

where:

MaxHT maximum height obtained by Oregon white oak (Gould and Harrington, 2009)

SIKing Site Index based on King (1966)

## 3.5 Maximum Density

Maximum stand density index can be set for each species using the SDIMAX or SETSITE keywords. If not set by the user, a default value is assigned as discussed below.

The default maximum SDI is set based on a user-specified, or default, plant association code. The SDI maximum for all species is assigned from the SDI maximum associated with the site species for the plant association code shown in Appendix A. SDI maximums were set based on growth basal area (GBA) analysis developed by Hall (1983) or an analysis of Current Vegetation Survey (CVS) plots in USFS Region 6 by Crookston (2008). Some SDI maximums associated with plant associations are unreasonably large, so SDI maximums are capped at 950. Maximum stand density index at the stand level is a weighted average, by basal area, of the individual species SDI maximums.

# 4.0 Growth Relationships

This chapter describes the functional relationships used to fill in missing tree data and calculate incremental growth. In FVS, trees are grown in either the small tree sub-model or the large tree sub-model depending on the diameter.

## 4.1 Height-Diameter Relationships

Height-diameter relationships in FVS are primarily used to estimate tree heights missing in the input data, and occasionally to estimate diameter growth on trees smaller than a given threshold diameter. In the OP variant, FVS will dub in heights by one of three methods. By default non-valid ORGANON tree records will use the Curtis-Arney functional form as shown in equation {4.1.1} (Curtis 1967, Arney 1985). If the input data contains at least three measured heights for a species, then FVS can use a logistic height-diameter equation {4.1.2} (Wykoff, et.al 1982) that may be calibrated to the input data. In the OP variant, this doesn’t happen by default, but can be turned on with the NOHTREG keyword by entering “1” in field 2. Coefficients for all height-diameter equations are given in tables 4.1.1 and 4.1.2.

{4.1.1} Curtis-Arney functional form

DBH <u>></u> 3.0”: HT = 4.5 + P2 \* exp[-P3 \* DBH^P4]

DBH < 3.0”: HT = [(4.5 + P2 \* exp[-P3 \* 3.0^P4] – 4.51) \* (DBH – 0.3) / 2.7] + 4.51

For Douglas-fir at locations 612, 708, and 712 where DBH < 0.09”: HT = [(4.5 + P2 \* exp[-P3 \* 5.0^P4] – 4.51) \* (DBH – 0.3) / 4.7] + 4.51

{4.1.2} Wykoff functional form

DBH <u>></u> 5.0”: HT = 4.5 + exp(B1 + B2 / (DBH + 1.0))

All valid ORGANON tree records use equation {4.1.3}. If equation {4.1.2} is being used for non-valid ORGANON tree records then heights estimated for valid ORGANON tree records are used along with measured tree heights in calibrating equation {4.1.2} to better align equation {4.1.2} with the equation ORGANON is using.

{4.1.3} ORGANON

HT = 4.5+exp(X1+X2\*DBH\*\*X3)

{4.1.4} Other functional form

Species: 1-14, 17, 20, 30 or 33

DBH < 5.0”: HT = exp(H1 + (H2 \* DBH) + (H3\* CR )+ (H4 \* DBH^2) + H5)

Species: 16, 18, 19, 21-29, 31, 32, 34-39

DBH < 5.0”: HT = H1 + (H2 \* DBH) + (H3\* CR )+ (H4 \* DBH^2) + H5

Species: 15

DBH < 4.0”: HT = 8.31485 + 3.03659 \* DBH - 0.59200 \* CRC

Species: 6

*DBH* <u>></u> 100.0”: *HT* = 248 + (0.25 \* *DBH*)

where:

HT is tree height

DBH is tree diameter at breast height

CR is crown ratio expressed in percent

CRC is crown ratio code (CRC=6)

B1 - B2 are species-specific coefficients shown in table 4.1.3

P2 - P4 are species and location specific coefficients shown in table 4.1.1

X1 - X3 are species-specific coefficients shown in table 4.1.2

H1 - H5 are species-specific coefficients shown in table 4.1.3

**Table 4.1.1 Coefficients for equation {4.1.1} in the PN variant.**

| **Species Code** | **Coefficient** | **609 - Olympic, 800 - Quinalt** | **612 – Siuslaw, 712 – BLM Coos** | **708 – BLM Salem** | **709 – BLM Eugene** |
| --- | --- | --- | --- | --- | --- |
| SF | P2 | 697.6316 | 697.6316 | 223.3492 | 237.9189 |
| P3 | 6.6807 | 6.6807 | 6.3964 | 7.7948 |
| P4 | -0.4161 | -0.4161 | -0.6566 | -0.7261 |
| WF | P2 | 604.845 | 604.845 | 475.1698 | 475.1698 |
| P3 | 5.9835 | 5.9835 | 6.2472 | 6.2472 |
| P4 | -0.3789 | -0.3789 | -0.4812 | -0.4812 |
| GF | P2 | 356.1148 | 432.2186 | 432.2186 | 432.2186 |
| P3 | 6.41 | 6.2941 | 6.2941 | 6.2941 |
| P4 | -0.5572 | -0.5028 | -0.5028 | -0.5028 |
| AF | P2 | 89.0298 | 133.8689 | 290.5142 | 133.8689 |
| P3 | 6.9507 | 6.7798 | 6.4143 | 6.7798 |
| P4 | -0.9871 | -0.7375 | -0.4724 | -0.7375 |
| RF | P2 | 202.886 | 202.886 | 375.382 | 375.382 |
| P3 | 8.7469 | 8.7469 | 6.088 | 6.088 |
| P4 | -0.8317 | -0.8317 | -0.472 | -0.472 |
| SS | P2 | 3844.388 | 708.7788 | 375.382 | 375.382 |
| P3 | 7.068 | 5.7677 | 6.088 | 6.088 |
| P4 | -0.2122 | -0.3629 | -0.472 | -0.472 |
| NF | P2 | 483.3751 | 483.3751 | 247.7348 | 483.3751 |
| P3 | 7.2443 | 7.2443 | 6.183 | 7.2443 |
| P4 | -0.5111 | -0.5111 | -0.6335 | -0.5111 |
| YC | P2 | 1220.096 | 1220.096 | 255.4638 | 97.7769 |
| P3 | 7.2995 | 7.2995 | 5.5577 | 8.8202 |
| P4 | -0.3211 | -0.3211 | -0.6054 | -1.0534 |
| IC | P2 | 4691.634 | 4691.634 | 4691.634 | 4691.634 |
| P3 | 7.4671 | 7.4671 | 7.4671 | 7.4671 |
| P4 | -0.1989 | -0.1989 | -0.1989 | -0.1989 |
| ES | P2 | 206.3211 | 206.3211 | 206.3211 | 206.3211 |
| P3 | 9.1227 | 9.1227 | 9.1227 | 9.1277 |
| P4 | -0.8281 | -0.8281 | -0.8281 | -0.8281 |
| LP | P2 | 100 | 100 | 139.7159 | 105.4453 |
| P3 | 6 | 6 | 4.0091 | 7.9694 |
| P4 | -0.86 | -0.86 | -0.708 | -1.0916 |
| JP | P2 | 1031.52 | 1031.52 | 1031.52 | 1031.52 |
| P3 | 7.6616 | 7.6616 | 7.6616 | 7.6616 |
| P4 | -0.3599 | -0.3599 | -0.3599 | -0.3599 |
| SP | P2 | 702.1856 | 702.1856 | 702.1856 | 702.1856 |
| P3 | 5.7025 | 5.7025 | 5.7025 | 5.7025 |
| P4 | -0.3798 | -0.3798 | -0.3798 | -0.3798 |
| WP | P2 | 433.7807 | 514.1575 | 1333.818 | 514.1575 |
| P3 | 6.3318 | 6.3004 | 6.6219 | 6.3004 |
| P4 | -0.4988 | -0.4651 | -0.312 | -0.4651 |
| PP | P2 | 1181.724 | 1181.724 | 1181.724 | 1181.724 |
| P3 | 6.6981 | 6.6981 | 6.6981 | 6.6981 |
| P4 | -0.3151 | -0.3151 | -0.3151 | -0.3151 |
| DF | P2 | 1091.853 | 407.1595 | 949.1046 | 439.1195 |
| P3 | 5.2936 | 7.2885 | 5.8482 | 5.8176 |
| P4 | -0.2648 | -0.5908 | -0.3251 | -0.4854 |
| RW | P2 | 595.1068 | 595.1068 | 595.1068 | 595.1068 |
| P3 | 5.8103 | 5.8103 | 5.8103 | 5.8103 |
| P4 | -0.3821 | -0.3821 | -0.3821 | -0.3821 |
| RC | P2 | 665.0944 | 227.14 | 1560.685 | 1012.127 |
| P3 | 5.5002 | 6.1092 | 6.2328 | 6.0957 |
| P4 | -0.3246 | -0.6009 | -0.2541 | -0.3083 |
| WH | P2 | 609.4235 | 1196.619 | 317.8257 | 395.4976 |
| P3 | 5.5919 | 5.7904 | 6.8287 | 6.4222 |
| P4 | -0.3841 | -0.2906 | -0.6034 | -0.532 |
| MH | P2 | 170.2653 | 170.2653 | 2478.099 | 192.9609 |
| P3 | 10.0684 | 10.0684 | 7.0762 | 7.3876 |
| P4 | -0.8791 | -0.8791 | -0.2456 | -0.7231 |
| BM | P2 | 600.0957 | 92.2964 | 76.517 | 160.2171 |
| P3 | 3.8297 | 4.189 | 2.2107 | 3.3044 |
| P4 | -0.238 | -0.983 | -0.6365 | -0.5299 |
| RA | P2 | 139.4551 | 254.9634 | 484.4591 | 10099.72 |
| P3 | 4.6989 | 3.8495 | 4.5713 | 7.6375 |
| P4 | -0.7682 | -0.4149 | -0.3643 | -0.1621 |
| MA | P2 | 139.4551 | 254.8634 | 133.7965 | 133.7965 |
| P3 | 4.6989 | 3.8495 | 6.405 | 6.405 |
| P4 | -0.7682 | -0.4149 | -0.8329 | -0.8329 |
| TO | P2 | 1709.723 | 1709.723 | 1709.723 | 1709.723 |
| P3 | 5.8887 | 5.8887 | 5.8887 | 5.8887 |
| P4 | -0.2286 | -0.2286 | -0.2286 | -0.2286 |
| GC | P2 | 10707.39 | 10707.39 | 10707.39 | 10707.39 |
| P3 | 8.467 | 8.467 | 8.467 | 8.467 |
| P4 | -0.1863 | -0.1863 | -0.1863 | -0.1863 |
| AS | P2 | 1709.723 | 1709.723 | 1709.723 | 1709.723 |
| P3 | 5.8887 | 5.8887 | 5.8887 | 5.8887 |
| P4 | -0.2286 | -0.2286 | -0.2286 | -0.2286 |
| CW | P2 | 178.6441 | 178.6441 | 178.6441 | 178.6441 |
| P3 | 4.5852 | 4.5852 | 4.5852 | 4.5852 |
| P4 | -0.6746 | -0.6746 | -0.6746 | -0.6746 |
| WO | P2 | 89.4301 | 89.4301 | 59.4214 | 55 |
| P3 | 6.6321 | 6.6321 | 5.3178 | 5.5 |
| P4 | -0.8876 | -0.8876 | -1.367 | -0.95 |
| WJ | P2 | 503.6619 | 503.6619 | 503.6619 | 503.6619 |
| P3 | 4.9544 | 4.9544 | 4.9544 | 4.9544 |
| P4 | -0.2085 | -0.2085 | -0.2085 | -0.2085 |
| LL | P2 | 503.6619 | 503.6619 | 503.6619 | 503.6619 |
| P3 | 4.9544 | 4.9544 | 4.9544 | 4.9544 |
| P4 | -0.2085 | -0.2085 | -0.2085 | -0.2085 |
| WB | P2 | 89.5535 | 89.5535 | 73.9147 | 73.9147 |
| P3 | 4.2281 | 4.2281 | 3.963 | 3.963 |
| P4 | -0.6438 | -0.6438 | -0.8277 | -0.8277 |
| KP | P2 | 34749.47 | 34749.47 | 34749.47 | 34749.47 |
| P3 | 9.1287 | 9.1287 | 9.1287 | 9.1287 |
| P4 | -0.1417 | -0.1417 | -0.1417 | -0.1417 |
| PY | P2 | 127.1698 | 139.0727 | 77.2207 | 139.0727 |
| P3 | 4.8977 | 5.2062 | 3.5181 | 5.2062 |
| P4 | -0.4668 | -0.5409 | -0.5894 | -0.5409 |
| DG | P2 | 403.3221 | 403.3221 | 403.3221 | 444.5618 |
| P3 | 4.3271 | 4.3271 | 4.3271 | 3.9205 |
| P4 | -0.2422 | -0.2422 | -0.2422 | -0.2397 |
| HT | P2 | 55 | 55 | 55 | 55 |
| P3 | 5.5 | 5.5 | 5.5 | 5.5 |
| P4 | -0.95 | -0.95 | -0.95 | -0.95 |
| CH | P2 | 73.3348 | 73.3348 | 73.3348 | 73.3348 |
| P3 | 2.6548 | 2.6548 | 2.6548 | 2.6548 |
| P4 | -1.246 | -1.246 | -1.246 | -1.246 |
| WI | P2 | 149.5861 | 149.5861 | 149.5861 | 149.5861 |
| P3 | 2.4231 | 2.4231 | 2.4231 | 2.4231 |
| P4 | -0.18 | -0.18 | -0.18 | -0.18 |
| OT | P2 | 1709.723 | 1709.723 | 1709.723 | 1709.723 |
| P3 | 5.8887 | 5.8887 | 5.8887 | 5.8887 |
| P4 | -0.2286 | -0.2286 | -0.2286 | -0.2286 |

**Table 4.1.2 Coefficients for equations {4.1.2} in the OP variant.**

| **Species**  **Code** | **NWO**  **X1** | **NWO**  **X2** | **NWO**  **X3** | **SMC**  **X1** | **SMC**  **X2** | **SMC**  **X3** |
| --- | --- | --- | --- | --- | --- | --- |
| DF | 7.04524 | -5.16836 | -0.25387 | 7.262195 | -5.89976 | -0.28721 |
| GF | 7.42808 | -5.80832 | -0.24032 | 7.42808 | -5.80832 | -0.24032 |
| WH | 5.93792 | -4.43822 | -0.41137 | 6.555345 | -5.13717 | -0.36455 |
| RC | 6.148174 | -5.40093 | -0.38922 | 6.148174 | -5.40093 | -0.38922 |
| PY | 9.30172 | -7.50951 | -0.1 | 9.30172 | -7.50951 | -0.1 |
| MA | 5.84487 | -3.84795 | -0.28921 | 5.84487 | -3.84795 | -0.28921 |
| BM | 5.21462 | -2.70252 | -0.35476 | 5.21462 | -2.70252 | -0.35476 |
| WO | 4.697531 | -3.51587 | -0.57665 | 4.697531 | -3.51587 | -0.57665 |
| RA | 5.597591 | -3.19943 | -0.38783 | 5.597591 | -3.19943 | -0.38783 |
| PD | 4.49727 | -2.07667 | -0.38865 | 4.49727 | -2.07667 | -0.38865 |
| WI | 4.88361 | -2.47605 | -0.30905 | 4.88361 | -2.47605 | -0.30905 |

**Table 4.1.2 Coefficients for equations {4.1.3} – {4.1.4} in the OP variant.**

| **Species Code** | **Default B1** | **B2** | **H1** | **H2** | **H3** | **H4** | **H5** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| SF | 5.487 | -16.701 | 1.3134 | 0.3432 | 0.0366 | 0 | 0 |
| WF | 5.308 | -13.624 | 1.4769 | 0.3579 | 0 | 0 | 0 |
| GF | 5.308 | -13.624 | 1.4769 | 0.3579 | 0 | 0 | 0 |
| AF | 5.313 | -15.321 | 1.4261 | 0.3334 | 0 | 0 | 0 |
| RF | 5.313 | -15.321 | 1.3526 | 0.3335 | 0.0367 | 0 | 0 |
| SS | 5.517 | -17.944 | 1.3526 | 0.3335 | 0.0367 | 0 | 0 |
| NF | 5.327 | -15.450 | 1.7100 | 0.2943 | 0 | 0 | 0.1054 |
| YC | 5.143 | -13.497 | 1.5907 | 0.3040 | 0 | 0 | 0 |
| IC | 5.188 | -13.801 | 1.5907 | 0.3040 | 0 | 0 | 0 |
| ES | 5.188 | -13.801 | 1.5907 | 0.3040 | 0 | 0 | 0 |
| LP | 4.865 | -9.305 | 0.9717 | 0.3934 | 0.0339 | 0 | 0.3044 |
| JP | 5.333 | -17.762 | 1.0756 | 0.4369 | 0 | 0 | 0 |
| SP | 5.382 | -15.866 | 0.9717 | 0.3934 | 0.0339 | 0 | 0.3044 |
| WP | 5.382 | -15.866 | 0.9717 | 0.3934 | 0.0339 | 0 | 0.3044 |
| PP | 5.333 | -17.762 | 1.0756 | 0.4369 | 0 | 0 | 0 |
| DF | 5.563 | -16.475 | 7.1391 | 4.2891 | -0.7150 | 0.2750 | 2.0393 |
| RW | 5.3401 | -15.9354 | 1.5907 | 0.3040 | 0 | 0 | 0 |
| RC | 5.233 | -14.737 | 2.3115 | 0.2370 | -0.0556 | 0 | 0.3218 |
| WH | 5.355 | -13.878 | 1.3608 | 0.6151 | 0 | -0.0442 | 0.0829 |
| MH | 5.081 | -13.430 | 1.2278 | 0.4000 | 0 | 0 | 0 |
| BM | 4.700 | -6.326 | 0.0994 | 4.9767 | 0 | 0 | 0 |
| RA | 4.875 | -8.639 | 0.0994 | 4.9767 | 0 | 0 | 0 |
| MA | 5.152 | -13.576 | 0.0994 | 4.9767 | 0 | 0 | 0 |
| TO | 5.152 | -13.576 | 0.0994 | 4.9767 | 0 | 0 | 0 |
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

Bark ratio estimates are used to convert between diameter outside bark and diameter inside bark in various parts of the model. In the OP variant, bark ratio values are determined using estimates from DIB equations. Equations used in the OP variant are shown in {4.2.1} -{4.2.3}. Coefficients (b1 and b2) and equation reference for each species are shown in table 4.2.1.

{4.2.1} DIB = b1 \* (DBH ^ b2); BRATIO = DIB / DBH

{4.2.2} DIB = b1 + (b2 \* DBH); BRATIO = DIB / DBH

{4.2.3} *DIB* = b1 \* *DBH*; *BRATIO* = b1

where:

BRATIO is species-specific bark ratio (bounded to 0.80 <u><</u> BRATIO <u><</u> 0.99)

DBH is tree diameter at breast height

DIB is tree diameter inside bark at breast height

b1, b2 are species-specific coefficients shown in table 4.2.1

**Table 4.2.1 Coefficients and equation reference for bark ratio equations in the OP variant.**

| **Species Code** | **b1** | **b2** | **Equation Used** | **Equation Source** |
| --- | --- | --- | --- | --- |
| SF | 0.904973 | 1.0 | {4.2.1} | Larsen and Hann, 1985 |
| WF | 0.904973 | 1.0 | {4.2.1} | Larsen and Hann, 1985 |
| GF | 0.904973 | 1.0 | {4.2.1} | ORGANON Larsen and Hann, 1985 |
| AF | 0.904973 | 1.0 | {4.2.1} | Larsen and Hann, 1985 |
| RF | 0.904973 | 1.0 | {4.2.1} | Larsen and Hann, 1985 |
| SS | 0.958330 | 1.0 | {4.2.1} | Harlow and Harrar, p. 129 |
| NF | 0.904973 | 1.0 | {4.2.1} | Larsen and Hann, 1985 |
| YC | 0.837291 | 1.0 | {4.2.1} | Larsen and Hann, 1985 |
| IC | 0.837291 | 1.0 | {4.2.1} | Larsen and Hann, 1985 |
| ES | 0.90 | 0 | {4.2.3} | Wykoff et al, 1982 |
| LP | 0.90 | 0 | {4.2.3} | Wykoff et al, 1982 |
| JP | 0.859045 | 1.0 | {4.2.1} | Larsen and Hann, 1985 |
| SP | 0.859045 | 1.0 | {4.2.1} | Larsen and Hann, 1985 |
| WP | 0.859045 | 1.0 | {4.2.1} | Larsen and Hann, 1985 |
| PP | 0.809427 | 1.016866 | {4.2.1} | Larsen and Hann, 1985 |
| DF | 0.97133 | 0.966365 | {4.2.1} | ORGANON |
| RW | 0.7012 | 1.04862 | {4.2.1} | Castle 2021 |
| RC | 0.949670 | 1.0 | {4.2.1} | Wykoff et al, 1982 |
| WH | 0.933710 | 1.0 | {4.2.1} | Wykoff et al, 1982 |
| MH | 0.949670 | 1.0 | {4.2.1} | Wykoff et al, 1982 |
| BM | 0.97059 | 0.993585 | {4.2.1} | ORGANON |
| RA | 0.947 | 1.0 | {4.2.1} | ORGANON |
| MA | 0.96317 | 1.0 | {4.2.1} | ORGANON |
| TO | 0.08360 | 0.94782 | {4.2.2} | Pillsbury and Kirkley, 1984 |
| GC | 0.15565 | 0.90182 | {4.2.2} | Pillsbury and Kirkley, 1984 |
| AS | 0.075256 | 0.94373 | {4.2.2} | Pil. & Kirk.; Harlow & Harrar |
| CW | 0.075256 | 0.94373 | {4.2.2} | Pil. & Kirk.; Harlow & Harrar |
| WO | 0.878457 | 1.02393 | {4.2.1} | ORGANON |
| WJ | 0.949670 | 1.0 | {4.2.1} | Wykoff et al, 1982 |
| LL | 0.90 | 0 | {4.2.3} | Wykoff et al, 1982 |
| WB | 0.933290 | 1.0 | {4.2.1} | Walters et al; Wykoff et al |
| KP | 0.933290 | 1.0 | {4.2.1} | Walters et al; Wykoff et al |
| PY | 0.97 | 1.0 | {4.2.1} | ORGANON |
| DG | 0.94448 | 0.987517 | {4.2.1} | ORGANON |
| HT | 0.075256 | 0.94373 | {4.2.2} | Pil. & Kirk.; Harlow & Harrar |
| CH | 0.075256 | 0.94373 | {4.2.2} | Pil. & Kirk.; Harlow & Harrar |
| WI | 0.94448 | 0.987517 | {4.2.1} | ORGANON |
| OT | 0.90 | 0 | {4.2.3} | Wykoff et al, 1982 |

## 4.3 Crown Ratio Relationships

Crown ratio equations are used for three purposes in FVS: (1) to estimate tree crown ratios missing from the input data for both live and dead trees; (2) to estimate change in crown ratio from cycle to cycle for live trees; and (3) to estimate initial crown ratios for regenerating trees established during a simulation.

### 4.3.1 Crown Ratio Dubbing

In the OP variant, crown ratios missing in the input data for live and dead trees are predicted using different equations depending on tree size. For all species except redwood, tree records representing dead trees, and tree records representing non-valid ORGANON live trees less than 1.0” in diameter use equations {4.3.1.1} and {4.3.1.2} to compute crown ratio. Equation coefficients are found in table 4.3.1.1.

{4.3.1.1} X = R1 + R2 \* HT + R3 \* BA + *N(0,SD)*

{4.3.1.2} *CR* = ((*X* - 1) \* 10 + 1) / 100

where:

CR is crown ratio expressed as a proportion (bounded to 0.05 <u><</u> *CR* <u><</u> 0.95)

HT is tree height

BA is total stand basal area

*N(0,SD)* is a random increment from a normal distribution with a mean of 0 and a standard deviation of SD

R1 – R3 are species-specific coefficients shown in table 4.3.1.1

**Table 4.3.1.1 Coefficients for the crown ratio equation {4.3.1.1} in the OP variant.**

| **Species Code** | **R1** | **R2** | **R3** | **SD** |
| --- | --- | --- | --- | --- |
| SF | 8.042774 | 0.007198 | -0.016163 | 1.3167 |
| WF | 8.042774 | 0.007198 | -0.016163 | 1.3167 |
| GF | 8.042774 | 0.007198 | -0.016163 | 1.3167 |
| AF | 8.042774 | 0.007198 | -0.016163 | 1.3167 |
| RF | 8.042774 | 0.007198 | -0.016163 | 1.3167 |
| SS | 8.042774 | 0.007198 | -0.016163 | 1.3167 |
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
| MA | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| TO | 5.000000 | 0.000000 | 0.000000 | 0.5 |
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

For all species except redwood, non-valid ORGANON tree records with diameter 1.0” or greater use a Weibull-based crown model developed by Dixon (1985) as described in Dixon (2002) is used to predict crown ratio for all live trees 1.0” in diameter or larger. To estimate crown ratio using this methodology, the average stand crown ratio is estimated from stand density index using equation {4.3.1.3}. Weibull parameters are then estimated from the average stand crown ratio using equations in equation set {4.3.1.4}. Individual tree crown ratio is then set from the Weibull distribution, equation {4.3.1.5} based on a tree’s relative position in the diameter distribution and multiplied by a scale factor, shown in equation {4.3.1.6}, which accounts for stand density. Crowns estimated from the Weibull distribution are bounded to be between the 5 and 95 percentile points of the specified Weibull distribution. Species equation index number is shown in table 4.3.1.2 with equation coefficients for each index shown in table 4.3.1.2.

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

a0, b0-1, c0-1, and d0-1 are species-specific coefficients shown in table 4.3.1.2

**Table 4.3.1.2 Species index number used in assigning Weibull parameters in the OP variant.**

| **Species Code** | **Species Index Number** | **Species Code** | **Species Index Number** | |
| --- | --- | --- | --- | --- |
| SF | 1 | BM | 12 | |
| WF | 2 | RA | 13 | |
| GF | 2 | MA | 14 | |
| AF | 3 | TO | 14 | |
| RF | 3 | GC | 14 | |
| SS | 17 | AS | 14 | |
| NF | 4 | CW | 14 | |
| YC | 15 | WO | 14 | |
| IC | 11 | WJ | 14 | |
| ES | 11 | LL | 11 | |
| LP | 16 | WB | 11 | |
| JP | 6 | KP | 11 | |
| SP | 5 | PY | 11 | |
| WP | 5 | DG | 14 | |
| PP | 6 | HT | 14 | |
| DF | 7 | CH | 14 | |
| RC | 8 | WI | 14 | |
| WH | 9 | OT | 14 | |
| MH | 10 |  | |

**Table 4.3.1.3 Coefficients for the Weibull parameter equations {4.3.1.3} and {4.3.1.4} in the OP variant.**

| **Species Index** | **a0** | **b0** | **b1** | **c0** | **c1** | **d0** | **d1** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 0.0 | -0.171680 | 1.161549 | 2.8263 | 0.0 | 5.073342 | -0.011430 |
| 2 | 0.0 | 0.130939 | 1.093406 | 1.355139 | 0.350472 | 5.212394 | -0.011623 |
| 3 | 1.0 | -0.981113 | 1.092273 | 1.326047 | 0.318386 | 4.860467 | -0.006173 |
| 4 | 0.0 | -0.135807 | 1.147712 | 3.017494 | 0.0 | 5.568864 | -0.021293 |
| 5 | 0.0 | 0.019948 | 1.108738 | 2.621230 | 0.186734 | 4.279655 | -0.002484 |
| 6 | 0.0 | -0.036696 | 1.132792 | 2.876094 | 0.0 | 5.073273 | -0.020988 |
| 7 | 0.0 | -0.012061 | 1.119712 | 3.2126 | 0.0 | 5.666442 | -0.025199 |
| 8 | 0.0 | -0.062693 | 1.139657 | 1.7664 | 0.0 | 4.481330 | -0.018092 |
| 9 | 0.0 | 0.073435 | 1.107183 | 2.6237 | 0.0 | 5.671345 | -0.023463 |
| 10 | 0.0 | 0.162672 | 1.073404 | 3.288501 | 0.0 | 6.484942 | -0.023248 |
| 11 | 0.0 | 0.196054 | 1.073909 | 0.345647 | 0.620145 | 5.417431 | -0.011608 |
| 12 | 1.0 | -0.818809 | 1.054176 | -2.366108 | 1.202413 | 4.420000 | -0.010660 |
| 13 | 1.0 | 0.035786 | 1.121389 | 2.0408 | 0.0 | 4.656659 | -0.022612 |
| 14 | 0.0 | -0.238295 | 1.180163 | 3.044134 | 0.0 | 4.625125 | -0.016042 |
| 15 | 1.0 | -0.811424 | 1.056190 | -3.831124 | 1.401938 | 5.200550 | -0.014890 |
| 16 | 0.0 | -0.131210 | 1.159760 | .598238 | 0.0 | 4.890318 | -0.018837 |
| 17 | 0.0 | -0.107413 | 1.140775 | 3.0712 | 0.0 | 5.812879 | -0.028504 |

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

All valid ORGANON tree records use equations {4.3.1.10} and {4.3.1.11}. Coefficients and references can be found in table 4.3.1.4

{4.3.1.10} HCB=HT/(1.0+EXP(X0+X1\*HT+X2\*CCFL+X3\*ALOG(BA)+X4\*(DBH/HT)+X5\*SITE+X6\*OG\*\*2))

{4.3.1.11} CR=1.0-HCB/HT

where:

*CR* is predicted average stand crown ratio for the species

*HCB* is the height to crown base

*HT* tree height

*CCFL* is stand crown competition factor for trees with DBH larger than subject tree’s DBH

*BA* Stand basal area

*SITE* Douglas-for site Index, unless species is western hemlock then use western hemlock’s.

X0-6, are species-specific coefficients shown in tables 4.3.1.4

**Table 4.3.1.4 Coefficients for the Weibull parameter equations {4.3.1.3} and {4.3.1.4} in the OP variant.**

| **Species Index** | **X0** | **X1** | **X2** | **X3** | **X4** | **X5** | **Ref** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| DF-NWO | 1.94093 | -0.0065 | -0.00487 | -0.26157 | 1.08785 | 0 | 1 |
| DF-SMC | 6.184647 | -0.00329 | -0.00137 | -1.19702 | 3.170283 | 0 | 2 |
| GF | 1.04746 | -0.00666 | -0.00671 | 0 | 0 | 0 | 1 |
| DF | 1.92682 | -0.0028 | -0.00119 | -0.51313 | 3.68901 | 0.007422 | 3 |
| WH | 4.49102 | 0 | -0.00132 | -1.01461 | 0 | 0.013406 | 4 |
| RC | 0 | 0 | 0 | 0 | 2.03094 | 0 | 5 |
| PY | 2.955339 | 0 | 0 | -0.79861 | 3.095269 | 0 | 5 |
| MA | 0.94114 | -0.00768 | -0.00548 | 0 | 0 | 0 | 5 |
| BM | 1.057866 | 0 | -0.00183 | -0.28645 | 0 | 0 | 6 |
| WO | 0.567138 | -0.01038 | -0.00207 | 0 | 1.397962 | 0 | 4 |
| RA | 0 | 0 | -0.00567 | -0.74554 | 0 | 0.038477 | 5 |
| DG | 0 | 0 | -0.00567 | -0.74554 | 0 | 0.038477 | 5 |
| WI | 1.94093 | -0.0065 | -0.00487 | -0.26157 | 1.08785 | 0 | 1 |

1: Zumrawi and Hann (1989) FRL Research Paper 52

2: Hann and Hanus (2004) FS 34: 1193-2003

3: Johnson (2002) Willamette Industries Report

4: Hann and Hanus (2002) OSU Department of Forest Management Internal Report #1&#2

5: Hanus, Hann, and Marshall (2000) FRL Research Contribution 29

6: Gould, Marshall, and Harrington (2008) West. J. Appl. For. 23: 26-33

### 4.3.2 Crown Ratio Change

Crown ratio change is estimated after growth, mortality and regeneration are estimated during a projection cycle. Crown ratio change is the difference between the crown ratio at the beginning of the cycle and the predicted crown ratio at the end of the cycle. Crown ratio predicted at the end of the projection cycle is estimated for non-valid ORGANON live tree records using the Weibull distribution, equations {4.3.1.3}-{4.3.1.6}, for all species except redwood. For redwood, crown ratio predicted at the end of the projection cycle is estimated using equations {4.3.1.7) and {4.3.1.9}. Crown ratio at the end of the projection cycle for valid ORGANON tree records is predicted using equations {4.3.1.10} and {4.3.1.11}. Crown change is checked to make sure it doesn’t exceed the change possible if all height growth produces new crown. Crown change is further bounded to 1% per year for the length of the cycle to avoid drastic changes in crown ratio. Equations {4.3.1.1} – {4.3.1.2} are not used when estimating crown ratio change.

### 4.3.3.1 Crown Ratio for Newly Established Trees

Crown ratios for newly established trees during regeneration are estimated using equation {4.3.3.1}. A random component is added in equation {4.3.3.1} to ensure that not all newly established trees are assigned exactly the same crown ratio.

{4.3.3.1} CR = 0.89722 – 0.0000461 \* PCCF + RAN

where:

CR is crown ratio expressed as a proportion (bounded to 0.2 <u><</u> CR <u><</u> 0.9)

PCCF is crown competition factor on the inventory point where the tree is established

RAN is a small random component

## 4.4 Crown Width Relationships

In the OP variant all species use the FVS logic {4.4.1 – 4.4.6} to calculate crown width for each individual tree, based on individual tree and stand attributes. Crown width for each tree is reported in the tree list output table and used for percent canopy cover (*PCC*) calculations in the model. Within the ORGANON model routines, crown widths for stand density measures are calculated using ORGANON equations. However, ORGANON crown widths are not reported in any FVS output files or used outside the ORGANON routines so the equations are not reported here.

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

**Table 4.4.1 Coefficients for crown width equations {4.4.1}-{4.4.6} in the OP variant.**

| **Species Code** | **Equation Number\*** | **a1** | **a2** | **a3** | **a4** | **a5** | **a6** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| SF | 01105 | 4.47990 | 0.45976 | -0.10425 | 0.11866 | 0.06762 | -0.00715 |
| WF | 01505 | 5.03120 | 0.53680 | -0.18957 | 0.16199 | 0.04385 | -0.00651 |
| GF | 01703 | 1.03030 | 1.14079 | 0.20904 | 0.38787 | 0 | 0 |
| AF | 01905 | 5.88270 | 0.51479 | -0.21501 | 0.17916 | 0.03277 | -0.00828 |
| RF | 02006 | 3.11460 | 0.57800 | 0 | 0 | 0 | 0 |
| SS | 09805 | 8.48000 | 0.70692 | -0.38812 | 0.17127 | 0 | 0 |
| NF | 02206 | 3.06140 | 0.62760 | 0 | 0 | 0 | 0 |
| YC | 04205 | 3.37560 | 0.45445 | -0.11523 | 0.22547 | 0.08756 | -0.00894 |
| IC | 08105 | 5.04460 | 0.47419 | -0.13917 | 0.14230 | 0.04838 | -0.00616 |
| ES | 09305 | 6.75750 | 0.55048 | -0.25204 | 0.19002 | 0 | -0.00313 |
| LP | 10805 | 6.69410 | 0.81980 | -0.36992 | 0.17722 | -0.01202 | -0.00882 |
| JP | 11605 | 4.02170 | 0.66815 | -0.11346 | 0.09689 | -0.63600 | 0 |
| SP | 11705 | 3.59300 | 0.63503 | -0.22766 | 0.17827 | 0.04267 | -0.00290 |
| WP | 11905 | 5.38220 | 0.57896 | -0.19579 | 0.14875 | 0 | -0.00685 |
| PP | 12205 | 4.77620 | 0.74126 | -0.28734 | 0.17137 | -0.00602 | -0.00209 |
| DF | 20205 | 6.02270 | 0.54361 | -0.20669 | 0.20395 | -0.00644 | -0.00378 |
| RW | 21104 | 3.70230 | 0.52618 | 0 | 0 | 0 | 0 |
| RC | 24205 | 6.23820 | 0.29517 | -0.10673 | 0.23219 | 0.05341 | -0.00787 |
| WH | 26305 | 6.03840 | 0.51581 | -0.21349 | 0.17468 | 0.06143 | -0.00571 |
| MH | 26403 | 6.90396 | 0.55645 | -0.28509 | 0.20430 | 0 | 0 |
| BM | 31206 | 7.51830 | 0.44610 | 0 | 0 | 0 | 0 |
| RA | 35106 | 7.08060 | 0.47710 | 0 | 0 | 0 | 0 |
| MA | 36102 | 4.9133 | 0.9459 | 0 | 0.0611 | 0 | 0.0523 |
| TO | 63102 | 3.11500 | 0.79660 | 0 | 0.07450 | -0.0053 | 0.05230 |
| GC | 63102 | 3.11500 | 0.79660 | 0 | 0.07450 | -0.0053 | 0.05230 |
| AS | 74605 | 4.79600 | 0.64167 | -0.18695 | 0.18581 | 0 | 0 |
| CW | 74705 | 4.4327 | 0.41505 | -0.23264 | 0.41477 | 0 | 0 |
| WO | 81505 | 2.48570 | 0.70862 | 0 | 0.10168 | 0 | 0 |
| WJ | 06405 | 5.14860 | 0.73636 | -0.46927 | 0.39114 | -0.05429 | 0 |
| LL | 07204 | 2.25860 | 0.68532 | 0 | 0 | 0 | 0 |
| WB | 10105 | 2.23540 | 0.66680 | -0.11658 | 0.16927 | 0 | 0 |
| KP | 10305 | 4.00690 | 0.84628 | -0.29035 | 0.13143 | 0 | -0.00842 |
| PY | 23104 | 6.12970 | 0.45424 | 0 | 0 | 0 | 0 |
| DG | 35106 | 7.08060 | 0.47710 | 0 | 0 | 0 | 0 |
| HT | 35106 | 7.08060 | 0.47710 | 0 | 0 | 0 | 0 |
| CH | 35106 | 7.08060 | 0.47710 | 0 | 0 | 0 | 0 |
| WI | 31206 | 7.51830 | 0.44610 | 0 | 0 | 0 | 0 |
| OT | 12205 | 4.77620 | 0.74126 | -0.28734 | 0.17137 | -0.00602 | -0.00209 |

\*Equation number is a combination of the species FIA code (###) and source (##).

**Table 4.4.2 *MinD* values and data bounds for equations {4.4.1}-{4.4.6} in the OP variant.**

| **Species Code** | **Equation Number\*** | **MinD** | **EL min** | ***EL* max** | ***HI* min** | ***HI* max** | ***CW* max** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| SF | 01105 | 1.0 | 4 | 72 | n/a | n/a | 33 |
| WF | 01505 | 1.0 | 2 | 75 | n/a | n/a | 35 |
| GF | 01703 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| AF | 01905 | 1.0 | 10 | 85 | n/a | n/a | 30 |
| RF | 02006 | 1.0 | n/a | n/a | n/a | n/a | 65 |
| SS | 09805 | 1.0 | n/a | n/a | n/a | n/a | 50 |
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
| MA | 36102 | 5.0 | n/a | n/a | -55 | 15 | 43 |
| TO | 63102 | 5.0 | n/a | n/a | -55 | 15 | 41 |
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

**Table 4.4.3 *BF* values for equation {4.4.5} in the OP variant.**

| **Species Code** | **Location Code** | | | | |
| --- | --- | --- | --- | --- | --- |
| **609 800** | **612** | **708** | **709** | **712** |
| SF | 1.032 |  | 1.296 |  |  |
| SS | 1.146 |  |  |  |  |
| LP | 1.114 |  | 0.944 | 0.903 | 0.944 |
| DF |  | 0.977 |  |  | 0.961 |
| RC | 0.941 | 0.905 | 1.115 |  | 0.973 |
| WH |  | 0.924 | 1.260 | 1.087 | 1.028 |
| WF |  |  | 1.130 |  |  |
| GF |  |  | 1.086 | 0.972 |  |
| AF |  |  | 1.038 | 0.936 |  |
| NF |  |  | 1.301 |  |  |
| YC |  |  | 1.493 | 1.127 |  |
| WP |  |  | 1.081 | 1.081 |  |
| MH |  |  | 1.106 |  | 0.900 |
| RA |  |  |  |  | 0.810 |
| IC |  |  |  |  | 0.821 |
| PP |  |  |  | 1.070 | 0.951 |
| ES |  |  |  | 0.857 |  |
| SP |  |  |  | 1.097 |  |

\*Any *BF* values not listed in Table 4.4.3 are assumed to be *BF* = 1.0

## 4.5 Crown Competition Factor

The OP variant uses crown competition factor (*CCF*) as a predictor variable in some growth relationships. Crown competition factor (Krajicek and others 1961) is a relative measurement of stand density that is based on tree diameters. Individual tree *CCFt* values estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open-grown. Stand *CCF* is the summation of individual tree (*CCFt*)values. A stand *CCF* value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand.

Crown competition factor for use in ORGANON equations is computed using ORGANON crown width equations previously discussed. For FVS equations, crown competition factor for an individual tree is calculated using equation set {4.5.1}. All species coefficients are shown in table 4.5.1.

{4.5.1} CCF Equations

CCFt = 0.001803 \* (MCWt)*2*

HT <u><</u> 4.501: MCWt = HT/4.5\* R1

HT< 4.501”: MCWt = R1 + (R2 \* DBH) + (R3 \* DBH*2*)

where:

MCWt is maximum crown width for an individual tree

CCFt is crown competition factor for an individual tree

DBH is tree diameter at breast height (if DBH is greater than MaxDBH, DBH=MaxDBH)

HT is tree height

R1 – R3 are species-specific coefficients shown in table 4.5.1

**Table 4.5.1 Coefficients for the CCF equation set {4.5.1} in the OP variant.**

| **Species Code** | **R1** | **R2** | **R3** | **MaxDBH** |
| --- | --- | --- | --- | --- |
| SF | 6.188 | 1.0069 | 0 | 999.99 |
| WF | 6.188 | 1.0069 | 0 | 999.99 |
| GF | 6.188 | 1.0069 | 0 | 999.99 |
| AF | 6.188 | 1.0069 | 0 | 999.99 |
| RF | 4.6198 | 1.8426 | -0.01131 | 81.45 |
| SS | 4.6198 | 1.8426 | -0.01131 | 81.45 |
| NF | 6.188 | 1.0069 | 0 | 999.99 |
| YC | 4 | 1.65 | 0 | 999.99 |
| IC | 4 | 1.65 | 0 | 999.99 |
| ES | 4.6198 | 1.8426 | -0.01131 | 81.45 |
| LP | 4.6198 | 1.8426 | -0.01131 | 81.45 |
| JP | 4.6198 | 1.8426 | -0.01131 | 81.45 |
| SP | 4.6198 | 1.8426 | -0.01131 | 81.45 |
| WP | 4.6198 | 1.8426 | -0.01131 | 81.45 |
| PP | 4.6198 | 1.8426 | -0.01131 | 81.45 |
| DF | 4.6198 | 1.8426 | -0.01131 | 81.45 |
| RW-NWO | 4.3586 | 1.57458 | 0 | 76.7 |
| RW-SMC | 4.5652 | 1.4147 | 0 | 999.99 |
| RC | 4 | 1.65 | 0 | 999.99 |
| WH-NWO | 4.3586 | 1.57458 | 0 | 76.7 |
| WH-SMC | 4.5652 | 1.4147 | 0 | 999.99 |
| MH-NWO | 4.3586 | 1.57458 | 0 | 76.7 |
| MH-SMC | 4.5652 | 1.4147 | 0 | 999.99 |
| BM-NWO | 4.0953 | 2.3849 | -0.01027 | 102.53 |
| BM-SMC | 4.0953 | 2.3849 | -0.01163 | 102.53 |
| RA | 8 | 1.53 | 0 | 999.99 |
| MA | 3.429863 | 1.35323 | 0 | 999.99 |
| TO-NWO | 4.0953 | 2.3849 | -0.01027 | 102.53 |
| TO-SMC | 4.0953 | 2.3849 | -0.01163 | 102.53 |
| GC | 3.429863 | 1.35323 | 0 | 999.99 |
| AS-NWO | 4.0953 | 2.3849 | -0.01027 | 102.53 |
| AS-SMC | 4.0953 | 2.3849 | -0.01163 | 102.53 |
| CW-NWO | 4.0953 | 2.3849 | -0.01027 | 102.53 |
| CW-SMC | 4.0953 | 2.3849 | -0.01163 | 102.53 |
| WO | 3.078564 | 1.924221 | 0 | 999.99 |
| WJ | 4.5652 | 1.4147 | 0 | 999.99 |
| LL | 6.188 | 1.0069 | 0 | 999.99 |
| WB | 4.6198 | 1.8426 | -0.01131 | 81.45 |
| KP | 4.6198 | 1.8426 | -0.01131 | 81.45 |
| PY | 4.5652 | 1.4147 | 0 | 999.99 |
| DG | 2.97939 | 1.551244 | -0.01416 | 54.77 |
| HT | 2.97939 | 1.551244 | -0.01416 | 54.77 |
| CH | 2.97939 | 1.551244 | -0.01416 | 54.77 |
| WI | 2.97939 | 1.551244 | -0.01416 | 54.77 |
| OT | 2.97939 | 1.551244 | -0.01416 | 54.77 |

## 4.6 Small Tree Growth Relationships

Non-valid ORGANON tree records are considered “small trees” for FVS modeling purposes when they are smaller than some threshold diameter. This threshold diameter is set to 3.0” for all species in the OC variant. All valid ORGANON tree records are considered “large trees” for FVS modeling purposes (see section 4.7).

The small tree model is diameter-growth driven, meaning diameter growth is estimated first, and then height growth is estimated from diameter growth. These relationships are discussed in the following sections and were developed by Gould and Harrington (2012).

### 4.6.1 Small Tree Height Growth

With the exception of redwood, for trees being projected with the small tree equations, diameter growth is predicted first, and then height growth. Five year height increment is calculated using a height-diameter ratio equation {4.6.1.1}.

{4.6.1.1} Small Tree Height Growth

*H5*= *D5*/a1

Where:

*D5*  is 5-yr diameter increment (in)

*H5*  is 5-yr height increment (ft)

a1 is a species-specific coefficient from table 4.6.1.1

For trees that have not yet reached breast height, the *D5* value (equation 4.6.2.1) is temporarily calculated to calculate *H5* using equation {4.6.2.2}. If the new height is less than 4.5 feet, than *D5* value remains 0. If the new height is greater than 4.5 feet then the trees diameter is calculated using equation 4.6.2.2

**Table 4.6.1.1 Coefficient (a1) and equation reference for small-tree height increment equations {4.6.1.1} and equation {4.6.2.2} in the OP variant.**

| **Species Code** | **a1** |
| --- | --- |
|
| SF | 0.2474 |
| WF | 0.2175 |
| GF | 0.1797 |
| AF | 0.2056 |
| RF | 0.2168 |
| SS | 0.2168 |
| NF | 0.2822 |
| YC | 0.2168 |
| IC | 0.2815 |
| ES | 0.1704 |
| LP | 0.1682 |
| JP | 0.2168 |
| SP | 0.2168 |
| WP | 0.2168 |
| PP | 0.2369 |
| DF | 0.1635 |
| RC | 0.1829 |
| WH | 0.1727 |
| MH | 0.3029 |
| BM | 0.2168 |
| RA | 0.2168 |
| MA | 0.2168 |
| TO | 0.2168 |
| GC | 0.2168 |
| AS | 0.2168 |
| CW | 0.2168 |
| WO | 0.2168 |
| WJ | 0.2168 |
| LL | 0.2168 |
| WB | 0.2168 |
| KP | 0.1682 |
| PY | 0.2168 |
| DG | 0.2168 |
| HT | 0.2168 |
| CH | 0.2168 |
| WI | 0.2168 |
| OT | 0.1635 |

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

*DBH* <u>></u> *X*max: *XWT* = 1

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

**Table 4.6.1.2 Diameter bounds by species in the OP variant.**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Species Code** | ***Xmin*** | ***Xmax*** | **Species Code** | ***Xmin*** | ***Xmax*** |
| SF | 2.0 | 4.0 | MH | 2.0 | 4.0 |
| WF | 2.0 | 4.0 | BM | 2.0 | 4.0 |
| GF | 2.0 | 4.0 | RA | 2.0 | 4.0 |
| AF | 2.0 | 4.0 | MA | 2.0 | 4.0 |
| RF | 2.0 | 4.0 | TO | 2.0 | 4.0 |
| SS | 2.0 | 4.0 | GC | 2.0 | 4.0 |
| NF | 2.0 | 4.0 | AS | 2.0 | 4.0 |
| YC | 2.0 | 4.0 | CW | 2.0 | 4.0 |
| IC | 2.0 | 4.0 | WO | 2.0 | 4.0 |
| ES | 2.0 | 4.0 | WJ | 2.0 | 4.0 |
| LP | 1.0 | 3.0 | LL | 2.0 | 4.0 |
| JP | 2.0 | 4.0 | WB | 2.0 | 4.0 |
| SP | 2.0 | 4.0 | KP | 2.0 | 4.0 |
| WP | 2.0 | 4.0 | PY | 2.0 | 4.0 |
| PP | 2.0 | 4.0 | DG | 2.0 | 4.0 |
| DF | 2.0 | 4.0 | HT | 2.0 | 4.0 |
| RW | 2.0 | 10.0 | CH | 2.0 | 4.0 |
| RC | 2.0 | 4.0 | WI | 2.0 | 4.0 |
| WH | 2.0 | 4.0 | OT | 2.0 | 4.0 |

### 4.6.2 Small Tree Diameter Growth

The small-tree diameter model for non-valid ORGANON tree records predicts 5-year diameter increment for small trees. For all species except redwood, diameter growth is estimated using equations {4.6.2.1} and coefficients for these equations are shown in table 4.6.2.1. In the case that height is initially less than 4.5 feet, but after height growth is calculated a tree grows to be greater than 4.5 feet, a height-diameter equation {4.6.2.2} is used to calculate an initial diameter for the tree.

{4.6.2.1} Small Tree Diameter Growth

HT < 4.5: *D5* = *0*

HT > 4.5: *D5* = *DMAX* / (1 + exp(c0 + c1\**PTBA*+ c2\**PTBA2* + c3\**PTBAL* + c4\**PTBAL2* + c5\**OPEN* + c6\**CR* + c7\**RELHT* + c8\**RELHT2* + c9\* *SI*))

where:

*OPEN* = 1/(1 + exp(-3.1 + 0.18\**PTBA*))

{4.6.2.2} Small tree Height – Diameter Equation

*DBH* = (*HT* – 4.5) ·a1

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

SI is species site index

c0-c9 are species-specific coefficients in table 4.6.2.1

a1 are species-specific coefficients in table 4.6.1.1

**Table 4.6.1.1 Coefficients (c0 – c9) and equation reference for small-tree diameter increment equations {4.6.1.1} in the OP variant.**

| **Species Code** | ***DMAX*** | **Model Coefficients** | | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **c0** | **c1** | **c2** | **c3** | **c4** | **c5** | **c6** | **c7** | **c8** | **c9** |
| SF | 1.7035 | 2.9445 | 0 | 0 | 0.0068 | 0 | 0 | -0.1895 | 0 | -1.4049 | -0.0168 |
| WF | 1.4964 | 1.7536 | 0 | 0.2928 | 0.0009 | 0 | -0.0446 | -2.0349 | 0 | -1.3839 | -0.0033 |
| GF | 1.6389 | 2.3571 | 0.0052 | 0 | 0.0006 | 0 | -0.4269 | -1.2219 | 0 | 0 | -0.0170 |
| AF | 1.1961 | 2.5839 | 0 | 0.0410 | 0.0020 | 0 | -0.0152 | -2.2060 | 0 | -0.5915 | -0.0009 |
| RF | 1.5146 | 2.4743 | 0 | 0 | 0.0032 | 0 | -0.8934 | -2.2709 | 0 | -1.0690 | 0 |
| SS | 3.3957 | 3.8205 | 0 | 0.0523 | 0.0051 | 0 | -0.4102 | -1.6968 | 0 | -1.4001 | -0.0109 |
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
| MA | 2.0110 | -1.1900 | 0.0158 | 0 | 0 | 0.6600 | 0 | 0 | 0 | 0 | 0 |
| TO | 2.1657 | -1.2421 | 0.0124 | 0 | 0 | 0.7813 | 0 | 0 | 0 | 0 | 0 |
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

For non-valid ORGANON tree records, trees are considered “large trees” for FVS modeling purposes when they are equal to, or larger than, some threshold diameter. This threshold diameter is set to 3.0” for all species in the OP variant. In addition, all valid ORGANON tree records are considered large trees for FVS modeling purposes.

The large-tree model is driven by diameter growth meaning diameter growth is estimated first, and then height growth is estimated from diameter growth and other variables. These relationships are discussed in the following sections.

### 4.7.1 Large Tree Diameter Growth

The large tree diameter growth model used in most FVS variants is described in section 7.2.1 in Dixon (2002). For most variants, instead of predicting diameter increment directly, the natural log of the periodic change in squared inside-bark diameter (ln(*DDS*)) is predicted (Dixon 2002; Wykoff 1990; Stage 1973; and Cole and Stage 1972). Organon based diameter growth equations are constructed similarly, they predict periodic change in diameter squared as well, however they include bark, where FVS does not.

In the OP variant, there are three primary equations that estimate large-tree diameter growth. The non-valid ORGANON tree records use equation {4.7.1.1} for all species except red alder {4.7.1.2} and redwood {4.7.1.3}. Coefficients for these equations are shown in tables 4.7.1.2 and 4.7.1.4. These equations yield a 10-year diameter growth estimate. Equation {4.7.1.3} is used to convert the 10-year estimate to a 5-year estimate.

All valid ORGANON tree records use equation {4.7.1.5}, these were developed by Zumrawi and Hann 1993, Hann and Hanus 2002, Johnson 2002 and Gould, Marshall, and Harrington 2008.

In the OP variant, all non-valid ORGANON tree records are mapped into a species index as shown in table 4.7.1.1. The coefficients for each species for equation 4.7.1.1 will depend on the species index of the subject species.

{4.7.1.1} All species except red alder:

ln(DDS )= b1 + (b2 \* EL) + (b3 \* EL^2) + (b4 \* ln(SI)) + (b5 \* sin(ASP) \* *SL*) + (b6 \* cos(ASP) \* *SL*) + (b7 \* SL) + (b8 \* SL^2) + (b9 \* ln(DBH)) + (b10 \* CR) + (b11 \* CR^2) + (b12 \* DBH^2) + (b13 \* BAL / (ln(DBH + 1.0))) + (b14 \* PCCF) + (b15 \* RELHT) + (b16 \* ln(BA)) + (b17 \* BAL) + (b18 \* BA)

where:

DDS is the square of the diameter growth increment

EL is stand elevation in hundreds of feet (if species index 14, *EL* <u><</u> 30)

SI is species site index in feet (if species index =19, *SI = SIKing*; if species index =10 do a metric to feet conversion when using a Means site index curve)

ASPis stand aspect

SL is stand slope

DBH is tree diameter at breast height

BAL is total basal area in trees larger than the subject tree

CR is crown ratio expressed as a proportion

PCCF is crown competition factor on the inventory point where the tree is established

RELHT is tree height divided by average height of the 40 largest diameter trees in the stand bounded to *RELHT* <u><</u> 1.5)

BA is total stand basal area

b1  is a location-specific coefficient shown in table 4.7.1.3

b2-b18 are species-specific coefficients shown in tables 4.7.1.2 and 4.7.1.5

**Table 4.7.1.1 Mapped species index for each species for large-tree diameter growth on non-valid ORGANON tree records in the OP variant.**

| **Species Code** | **Species Index** | **Species Code** | **Species Index** |
| --- | --- | --- | --- |
| SF | 1 | BM | 12 |
| WF | 2 | RA |  |
| GF | 2 | MA | 14 |
| AF | 3 | TO | 14 |
| RF | 4 | GC | 14 |
| SS | 18 | AS | 14 |
| NF | 4 | CW | 14 |
| YC | 15 | WO | 19 |
| IC | 11 | WJ | 14 |
| ES | 11 | LL | 11 |
| LP | 16 | WB | 11 |
| JP | 6 | KP | 11 |
| SP | 5 | PY | 11 |
| WP | 5 | DG | 14 |
| PP | 6 | HT | 14 |
| DF | 7 | CH | 14 |
| RC | 8 | WI | 14 |
| WH | 9 | OT | 14 |
| MH | 10 |  |  |

**Table 4.7.1.2 Coefficients (b**2**-b**18**) for species with a species index 1-9 for equation {4.7.1.1} in the OP variant.**

| **Coefficient** | **Species Index** | | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** |
| b2 | -0.023858 | -0.003051 | -0.003773 | -0.069045 | -0.023376 | -0.003784 | -0.009845 | -0.009564 | -0.018444 |
| b3 | 0 | 0 | 0 | 0.000608 | 0 | 0.0000666 | 0 | 0 | 0 |
| b4 | 0.541881 | 0.318254 | 0.349888 | 0.684939 | 0.40401 | 1.011504 | 0.495162 | 0.708166 | 0.634098 |
| b5 | 0.096326 | 0 | 0.02216 | -0.207659 | 0 | 0 | 0.003263 | -0.10602 | 0.061254 |
| b6 | -0.217205 | 0 | -0.782418 | -0.374512 | 0 | 0 | 0.014165 | -0.106936 | -0.056608 |
| b7 | -0.265612 | 0 | 0.319956 | 0.400223 | 0 | 0 | -0.340401 | -0.30349 | 0.736143 |
| b8 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | -1.082191 |
| b9 | 0.919402 | 0.905119 | 0.993986 | 0.904253 | 0.84469 | 0.73875 | 0.802905 | 0.744005 | 0.641956 |
| b10 | 1.290568 | 1.754811 | 1.522401 | 4.123101 | 1.59725 | 3.454857 | 1.936912 | 0.771395 | 1.471926 |
| b11 | 0.125823 | 0 | 0 | -2.68934 | 0 | -1.773805 | 0 | 0 | 0 |
| b12\* |  |  |  |  |  |  |  |  |  |
| b13 | -0.002133 | -0.005355 | -0.002979 | -0.006368 | -0.003726 | -0.013091 | -0.001827 | -0.01624 | -0.012589 |
| b14 | 0 | 0 | 0 | -0.000471 | -0.000257 | -0.000593 | 0 | 0 | 0 |
| b15 | 0 | -0.000661 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b16 | -0.136818 | 0 | 0 | 0 | 0 | -0.131185 | -0.129474 | -0.130036 | -0.085525 |
| b17 | 0 | 0 | 0 | 0 | 0 | 0 | -0.001689 | 0.003883 | 0.002385 |
| b18 | 0 | 0 | -0.000137 | 0 | 0 | 0 | 0 | 0 | 0 |

\*See table 4.7.1.4 for b values

**Table 4.7.1.2 (continued) Coefficients (b**2**- b**18**) for species with a species index 10-19 for equation {4.7.1.1} in the OP variant.**

| **Coefficient** | **Species Index** | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **10** | **11** | **12** | **14** | **15** | **16** | **18** | **19** |
| b2 | -0.003809 | 0 | -0.012111 | -0.075986 | 0 | -0.005414 | 0.007009 | 0 |
| b3 | 0 | 0 | 0 | 0.001193 | 0 | 0 | 0 | 0 |
| b4 | 0.20804 | 0.252853 | 1.965888 | 0.227307 | 0.244694 | 0.391327 | 0 | 0.14995 |
| b5 | -0.12613 | 0 | 0 | -0.86398 | 0.679903 | 0.37886 | 0.100081 | 0 |
| b6 | -0.104495 | 0 | 0 | 0.085958 | -0.023186 | 0.207853 | -0.221095 | 0 |
| b7 | 0.411602 | 0 | 0 | 0 | 0 | -0.06644 | -0.169141 | 0 |
| b8 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b9 | 0.857131 | 0.879338 | 1.024186 | 0.889596 | 0.81688 | 0.478504 | 1.049845 | 1.66609 |
| b10 | 1.505513 | 1.970052 | 0.459387 | 1.732535 | 2.471226 | 1.905011 | 1.632468 | 0 |
| b11 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b12\* |  |  |  |  |  |  |  |  |
| b13 | -0.004101 | -0.004215 | -0.010222 | -0.001265 | -0.00595 | -0.004706 | -0.000086 | 0 |
| b14 | -0.000201 | 0 | -0.000757 | 0 | 0 | 0 | 0 | 0 |
| b15 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b16 | 0 | 0 | 0 | 0 | 0 | 0 | -0.198636 | 0 |
| b17 | 0 | 0 | 0 | 0 | 0 | 0 | -0.002319 | -0.00326 |
| b18 | 0 | -0.000173 | 0 | -0.000981 | -0.000147 | -0.000114 | 0 | -0.00204 |

\*See table 4.7.1.4 for b values

**Table 4.7.1.3 b1 values by location class for species that have a species index 1 – 9 for equation {4.7.1.1} in the OP variant.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Location**  **Class** | **Species Index** | | | | | | | | |
| **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** |
| 1 | -0.627531 | -0.64392 | -1.888949 | -1.401865 | -0.58957 | -2.922255 | -0.739354 | -0.68825 | -0.59446 |
| 2 | 0 | 0 | 0 | -1.127977 | -0.909553 | 0 | -0.1992 | -0.40559 | -0.522658 |
| 3 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |

**Table 4.7.1.3 (continued) b1 values by location class for species that have a species index 10 – 19 for equation {4.7.1.1} in the PN variant.**

| **Location**  **Class** | **Species Index** | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **10** | **11** | **12** | **14** | **15** | **16** | **18** | **19** |
| 1 | -1.052161 | -1.310067 | -7.753469 | -0.107648 | -1.277664 | -0.524624 | 2.075598 | -1.33299 |
| 2 | 0 | -1.432659 | -8.279266 | -0.098335 | -1.178041 | -0.803095 | 2.100904 | 0 |
| 3 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |

**Table 4.7.1.4 Location class by species index and location code in the OP variant.**

|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Location Code** | **Species Index** | | | | | | | | | | | | | | | | |
| **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** | **10** | **11** | **12** | **14** | **15** | **16** | **18** | **19** |
| 609 – Olympic | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 612 – Siuslaw | 1 | 1 | 1 | 2 | 2 | 1 | 2 | 2 | 2 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 1 |
| 800 – Quinault Indian Res. | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 708 – BLM Salem | 1 | 1 | 1 | 2 | 2 | 1 | 2 | 2 | 2 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 1 |
| 709 – BLM Eugene | 1 | 1 | 1 | 2 | 2 | 1 | 2 | 2 | 2 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 1 |
| 712 – BLM Coos Bay | 1 | 1 | 1 | 2 | 2 | 1 | 2 | 2 | 2 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 1 |

**Table 4.7.1.5 b12 values by location class for species that have a species index 1 – 9 for equation {4.7.1.1} in the OP variant.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Location**  **Class** | **Species Index** | | | | | | | | |
| **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** |
| 1 | -0.0002641 | -0.0003137 | -0.0002621 | -0.0003996 | -0.0000596 | -0.0004708 | -0.0000896 | -0.0000572 | -0.0001736 |
| 2 | 0 | 0 | 0 | 0 | 0 | 0 | -0.0000641 | -0.0000862 | -0.000104 |

**Table 4.7.1.5 (continued) b12 values by location class for species that have a species index 10 – 19 for equation {4.7.1.1} in the OP variant.**

| **Location**  **Class** | **Species Index** | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **10** | **11** | **12** | **14** | **15** | **16** | **18** | **19** |
| 1 | -0.0002214 | -0.0001323 | -0.0001737 | 0 | -0.0002536 | 0 | -0.0002123 | -0.00154 |
| 2 | 0 | 0 | 0 | 0 | 0 | 0 | -0.0001361 | 0 |

**Table 4.7.1.6 Location class by species index and location code in the OP variant.**

|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Location Code** | **Species Index** | | | | | | | | | | | | | | | | |
| **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** | **10** | **11** | **12** | **14** | **15** | **16** | **18** | **19** |
| 609 – Olympic | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 612 – Siuslaw | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 1 |
| 800 – Quinault Indian Res. | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 708 – BLM Salem | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 1 |
| 709 – BLM Eugene | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 1 |
| 712 – BLM Coos Bay | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 1 |

Large-tree diameter growth for red alder is predicted using equation set {4.7.1.2}. Diameter growth is predicted based on tree diameter and stand basal area. While not shown here, this diameter growth estimate is eventually converted to the *DDS* scale.

{4.7.1.2} Used for red alder

DBH <u><</u> 18.0”: DG = CON – (0.166496 \* DBH) + (0.004618 \* DBH*^*2)

DBH > 18.0”: DG = CON – (CON / 10) \* (DBH – 18)

CON = (3.2505 – 0.00303 \* BA)

where:

DGis potential diameter growth

DBH is tree diameter at breast height

BAis stand basal area

{4.7.1.3} Used for redwood

*DI* = exp(-3.502444 + (0.185911 \* ln(*DBH*)) + (-0.000073 \* *DBH*^2) + (-0.001796 \* *PBAL*) + (- 0.42078 \* *PRD*) + (0.589318 \* ln(*CR*)) + (0.415435 \* ln(*SI*)) + (-0.000926 \* *SL*) + (- 0.002203 \* (*SL*) \* COS(*ASP*)))

where:

*DI* is 10-year outside bark diameter growth increment

*SI* is species site index

*ASP* is stand aspect

*SL* is stand slope

*CR* is crown ratio expressed as a proportion

*DBH* is tree diameter at breast height

*PBAL* is point basal area in trees larger than the subject tree

*PRD* isrelative density of the inventory point (point Zeide SDI / point SDI max)

For all species, equation {4.7.1.4} is used to convert the 10-year diameter growth estimate to a 5-year diameter growth estimate.

{4.7.1.4} ln(*DDS)* = ln(exp(*DDS)* / 2.0)

For all valid ORGANON tree records, equation {4.7.1.5} predicts the change in square of the 5-year diameter outside bark. An adjustment factor {4.7.1.6} is then applied to the final diameter growth value.

{4.7.1.5} Used for all valid ORGANON tree records:

ln*(DDS*)=X0 + X1\*LOG(DBH+K1) + X2\*DBH\*\*K2 + X3\*LOG((CR+0.2)/1.2) + X4\*LOG(SITE) + X5\*((BAL\*\*K3)/LOG(DBH+K4)) + X6\*SQRT(BA)

{4.7.1.6} Modifier to 5-year diameter growth

MOD=(1.0-EXP(-(25.0\*CR)\*\*2))\*ADJ

DG=EXP(ln(DDS))\*MOD

where:

*DDS* is the square of the 5-year diameter outside bark growth increment

*DG* is 5-year diameter growth outside bark

*SI* is site index

*CR* is crown ratio expressed as a proportion

*DBH* is tree diameter at breast height

*BA* is total stand basal area

*BAL* is total basal area in trees larger than the subject tree

X0- X6, K1- K4,

ADJ are species-specific coefficients shown in table 4.7.1.5

**Table 4.7.1.5 Coefficients (X0- X6, K1- K4,) for equation {4.7.1.5-4.7.1.6} in the OP variant.**

| **Species** | **X0** | **X1** | **X2** | **X3** | **X4** | **X5** | **X6** | **K1** | **K2** | **K3** | **K4** | **ADJ** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| DF | -4.69624 | 0.339513 | -0.00042826 | 1.19952 | 1.15612 | -0.0000446 | -0.0237 | 1 | 2 | 2 | 5 | 0.701101 |
| GF | -2.34619 | 0.59464 | -0.00097609 | 1.12712 | 0.555333 | -0.0000291 | -0.04708 | 1 | 2 | 2 | 5 | 0.8722 |
| WH | -4.49867 | 0.362369 | -0.00153907 | 1.1557 | 1.12154 | -0.0000201 | -0.04174 | 1 | 2 | 2 | 5 | 0.7163 |
| RC | -11.4546 | 0.784134 | -0.02613779 | 0.701748 | 2.057236 | -0.004154 | 0 | 5 | 1 | 1 | 2.7 | 0.8 |
| PY | -9.15836 | 1 | -0.02613779 | 1.166885 | 0 | 0 | -0.02 | 4000 | 4 | 1 | 2.7 | 0.8 |
| MD | -8.84532 | 1.5 | -0.00000035 | 0.512256 | 0.418129 | -0.003553 | -0.03213 | 110 | 2 | 1 | 2.7 | 0.7928 |
| BL | -3.4145 | 1 | -0.050 | 0 | 0.324349 | 0 | -0.09895 | 10 | 1 | 1 | 2.7 | 0.8 |
| WO | -7.81268 | 1.405617 | -0.06031059 | 0.64286 | 1.037687 | 0 | -0.0787 | 5 | 1 | 1 | 2.7 | 1 |
| RA | -4.39082 | 1 | -0.09450571 | 1.06867 | 0.685908 | -0.005863 | 0 | 5 | 1 | 1 | 2.7 | 0.8 |
| PD | -8.08353 | 1 | -0.00000035 | 0.311766 | 0 | 0 | -0.07308 | 4000 | 4 | 1 | 2.7 | 0.8 |
| WI | -8.08353 | 1 | -0.00000035 | 0.311766 | 0 | 0 | -0.07308 | 4000 | 4 | 1 | 2.7 | 0.8 |

### 4.7.2 Large Tree Height Growth

For all species except redwood, height growth estimates for non-valid ORGANON tree records in the OP variant are based on site index curves. Species differences in height growth are accounted for by entering the appropriate curve with the species specific site index value.

In the OP variant, each non-valid ORGANON tree record is mapped into a species index as shown in table 4.7.2.1. The coefficients and equations used for each species will depend on the species index of the subject species.

**Table 4.7.2.1 Mapped species index for each species for height growth in the OP variant.**

| **Species Code** | **Species Index** | **Species Code** | **Species Index** |
| --- | --- | --- | --- |
| SF | 1 | BM | 6 |
| WF | 2 | RA | 12 |
| GF | 2 | MA | 6 |
| AF | 3 | TO | 6 |
| RF | 4 | GC | 6 |
| SS | 15 | AS | 6 |
| NF | 5 | CW | 6 |
| YC | 6 | WO |  |
| IC | 7 | WJ | 6 |
| ES | 3 | LL | 13 |
| LP | 8 | WB | 6 |
| JP | 7 | KP | 6 |
| SP | 9 | PY | 6 |
| WP | 9 | DG | 6 |
| PP | 7 | HT | 6 |
| DF | 14 | CH | 6 |
| RW |  | WI | 6 |
| RC | 15 | OT | 6 |
| WH | 10 |  |  |
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

**Table 4.7.2.2 Coefficients for equations {4.7.2.1} and {4.7.2.2} and maximum age in the OP variant.**

| **Species Code** | **a0** | **a1** | **Maximum**  **Age** |
| --- | --- | --- | --- |
| SF | 43.9957174 | 4.3396271 | 200 |
| WF | 43.9957174 | 4.3396271 | 200 |
| GF | 43.9957174 | 4.3396271 | 200 |
| AF | 39.6317079 | 4.3149844 | 200 |
| RF | 39.6317079 | 4.3149844 | 200 |
| SS | 16.2223589 | 6.3657425 | 200 |
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
| MA | 59.3370816 | 3.9033821 | 200 |
| TO | 59.3370816 | 3.9033821 | 200 |
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

{4.7.2.12} Used for species index 6: Alaska cedar, bigleaf maple, Pacific madrone, tanoak, giant chinquapin, quaking aspen, black cottonwood, western juniper, whitebark pine, knobcone pine, Pacific yew, Pacific dogwood, hawthorn, bitter cherry, willow, other

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

{4.7.2.20} Used for species index 14: Douglas-fir

*H* = [*A*2 / (b0 + (b1 \* *Z*) + ((b2 + (b3 \* *Z*)) \* *A*) + ((b4 + (b5 \* *Z*)) \* *A^2*))] + 4.5

*Z* = 2500 / (*SI* – 4.5)

{4.7.2.21} Used for species index 15: Sitka spruce, western redcedar

*H* = 4.5 + exp [b0 + b1\* ln(*A*) + b2\* (ln(*A*))^3 + b3\* (ln(*A*))^5 + b4\* (ln(*A*))^30] + ((*SI* – 4.5) + b11) \* [exp [b5 + b6\* ln(*A*) + b7\* (ln(*A*))^2 + b8\* (ln(*A*))^5 + b9\* (ln(*A*))^16 + b10\* (ln(*A*))^36]

where:

H is estimated height of the tree

SI is species site index

A is estimated tree age

b0 – b13 are species-specific coefficients shown in table 4.7.2.3

**Table 4.7.2.3 Coefficients (b0-b13) for height-growth equations in the OP variant.**

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

**Table 4.7.2.3 (continued) Coefficients (b0- b13) for height-growth equations in the OP variant.**

| **Coefficient** | **Species Index** | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **9** | **10** | **11** | **12** | **13** | **14** | **15** |
| b0 | -4.62536 | -1.7307 | 22.8741 | 59.5864 | 0 | -0.954038 | -0.2050542 |
| b1 | 1.346399 | 0.1394 | 0.950234 | 0.7953 | 1.46897 | 0.109757 | 1.449615 |
| b2 | -135.3545 | -0.0616 | -0.002065 | 0.00194 | 0.0092466 | 0.0558178 | -0.01780992 |
| b3 | 0 | 0.0137 | 0 | -0.00074 | -2.40E-04 | 0.00792236 | 6.51975E-05 |
| b4 | 0 | 0.00192 | 1.365566 | 0.9198 | 1.11E-06 | -0.000733819 | -1.09559E-23 |
| b5 | 0 | 0.00007 | 2.045963 | 0 | -0.12528 | 0.000197693 | -5.611879 |
| b6 | 0 | 0 | 0 | 0 | 0.039636 | 0 | 2.418604 |
| b7 | 0 | 0 | 0 | 0 | -4.28E-04 | 0 | -0.259311 |
| b8 | 0 | 0 | 0 | 0 | 1.70E-06 | 0 | 0.000135145 |
| b9 | 0 | 0 | 0 | 0 | 73.57 | 0 | -1.70114E-12 |
| b10 | 0 | 0 | 0 | 0 | -0.12528 | 0 | 7.9642E-27 |
| b11 | 0 | 0 | 0 | 0 | 0.039636 | 0 | -86.43 |
| b12 | 0 | 0 | 0 | 0 | -4.28E-04 | 0 | 0 |
| b13 | 0 | 0 | 0 | 0 | 1.70E-06 | 0 | 0 |

For all species, modifiers are applied to the height growth based upon a tree’s crown ratio (equation {4.7.2.24}), and relative height and shade tolerance (equation {4.7.2.25}). Equation {4.7.2.26} uses the Generalized Chapman – Richard’s function (Donnelly et. al, 1992) to calculate a height-growth modifier. Final height growth is calculated using equation {4.7.2.5} as a product of the modifier and potential height growth. The final height growth is then adjusted to the length of the cycle.

{4.7.2.24} HGMDCR = (100 \* (CR / 100)^3) \* exp(-5 \* (CR / 100 )) bounded *HGMDCR* ≤ 1.0

{4.7.2.25} HGMDRH = [1 + ((1 / b1)^(b2 - 1) – 1) \* exp(-1 \* (b3 / (1 – b4)) \* RELHT*^*(1 – b4))]^(-1 / (b2 - 1))

{4.7.2.26} HTGMOD = (0.25 \* HGMDCR) + (0.75 \* HGMDRH) bounded 0.0 ≤ *HTGMOD* ≤ 2.0

\*if HTGMOD ≤ 0.0, then HTGMOD = 0.1

where:

POTHTG is potential height growth

H10 is estimated height of the tree in ten years

HT is height of the tree at the beginning of the cycle

BAis stand basal area

DBH1is diameter of the tree at the beginning of the cycle

DBH2is estimated diameter of the tree at the end of the cycle

HGMDCR is a height growth modifier based on crown ratio

HGMDRH is a height growth modifier based on relative height and shade tolerance

HTGMOD is a weighted height growth modifier

CR is crown ratio expressed as a percent

RELHT is tree height divided by average height of the 40 largest diameter trees in the stand

b1 – b4 are species-specific coefficients shown in table 4.7.2.4

**Table 4.7.2.4 Coefficients (b**1 **– b**4**) for equation 4.7.2.25 in the OP variant.**

| **Species Code** | **b1** | **b2** | **b3** | **b4** |
| --- | --- | --- | --- | --- |
| SF | 0.15 | 1.1 | 16 | -1.2 |
| WF | 0.15 | 1.1 | 16 | -1.2 |
| GF | 0.15 | 1.1 | 16 | -1.2 |
| AF | 0.2 | 1.1 | 20 | -1.1 |
| RF | 0.15 | 1.1 | 16 | -1.2 |
| SS | 0.15 | 1.1 | 16 | -1.2 |
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
| MA | 0.05 | 1.1 | 13 | -1.6 |
| TO | 0.1 | 1.1 | 15 | -1.45 |
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

One check is done after computing height growth to limit the maximum height for a given diameter. This check is to make sure that current height plus height growth does not exceed the maximum height for the given diameter. The maximum height for a given diameter is calculated using equation {4.7.2.27}. Species-specific coefficients for this equation are shown in Table 4.7.2.2.

{4.7.2.27} HTmax = a0 + a1 \* DBH

where:

HTmaxis the maximum height for a given diameter

DBH is tree diameter at breast height

a0, a1 are species-specific coefficients shown in table 4.7.2.2

Equation {4.7.2.28} is used to predict 10-year height increment for redwood and equation {4.7.2.29} is used to convert this estimate to 5-year height increment. The final height growth is then adjusted to the length of the cycle.

{4.7.2.28} *HTG* = exp(1.412947+ (-0.000204 \* *DBH*^2) + (0.31971 \* ln(*DBH*)) + (0.394005 \* ln(*SI*)) + (-(0.399888 \* (ln(*DG10*)) + (-0.451708 \* ln(*HT*))

{4.7.2.29} *HTG* = *HTG* \* 0.5

where:

*HTG* is 10-year height growth increment

*DBH* is diameter at breast height

*SI* is species site index

*DG10* is 10-year outside bark diameter growth increment

*HT* is total tree height

A height growth bounding function is used to ensure tree heights do not exceed the height maximum of redwood. The bounding function is applied using the following concepts. For a tree with height less than the lower height-bounding limit, the height growth modifier is set to 1.0. For a tree with a height greater than or equal to the lower height-bounding limit and less than the upper height-bounding limit, a height growth modifier is computed using equation {4.7.2.30}. For a tree with a height greater than the upper height-bounding limit, the height growth modifier is set to 0.1. The lower bounding limit was determined from the height growth fitting data and the upper bounding limit was determined from literature. The final height increment estimate is multiplied by the bounding function, equation {4.7.2.31}.

{4.7.2.30} *HGBND* = 1.0 – ((*HT* - HTLO) / (*HTHI*- *HTLO*))

{4.7.2.31} *HTG* = *HTG* \* *HGBND*

where:

*HGBND* is height growth bounding modifier, limited to 0.1 <u><</u> *HGBND* <u><</u> 1.0

*HT* is total tree height (ft)

*HTLO* is the lower height-bounding limit (217 ft)

*HTHI* is the upper height-bounding limit (380 ft)

Valid ORGANON tree records use ORGANON based height growth equations {4.7.2.32} – {4.7.2.34} which all yield a 5-year height growth estimate. Equations {4.7.2.32} and {4.7.2.33} are used for the major conifer species (DF, GF/WF, and WH). These equations predict potential height growth based on dominant height from the Flewelling western hemlock and Bruce’s (1981) Douglas-fir and grand fir site index curves, based on the tree’s growth effective age. The estimate is then modified. Other valid ORGANON tree records (RC, PY, MA, BM, WO, RA, DG, WI) use equation {4.7.2.34} which is based on ORGANON height-diamater equations.

{4.7.2.32} Used for DF and GF/WF

HG=PHTGRO\*MODIFER\*CRADJ

where:

PHTGRO= SI\*EXP(B1\*((GEAGE+GP+X1)\*\*B2-X2\*\*B2)) - HT

X1=13.25-SI/20.0

X2=63.25-SI/20.0

B1=ALOG(4.5/SI)/(X1\*\*B2-X2\*\*B2)

B2=-0.447762-0.894427\*SI/100.0+0.793548\*(SI/100.0)\*\*2 -0.171666\*(SI/100.0)\*\*3

GEAGE=XX1\*\*(1.0/B2)-X1 if XX1 is less than 0, GEAGE=500

XX1=ALOG(HT/SI)/B1+X2\*\*B2

MODIFER=P8\*(( P1\*EXP(P2\*TCCH))+(( EXP(P3\*TCCH\*\*P4))-( EXP(P3\*TCCH\*\*P4))\*EXP((-P5\*(1.0-CR)\*\*P6)\*EXP(P7\*TCCH\*\*0.5)))

CRADJ=(1.0-EXP(-(25.0\*CR)\*\*2))

*HG* is predicted 5-year height growth

*HT* is height of the tree

SI is site index (Bruce)

B0 – B2, P1 – P8 are coefficients in table 4.7.2.3

{4.7.2.33} Used for WH

HG=PHTGRO\*MODIFER\*CRADJ

where:

PHTGRO= HTOP\*3.2808 - HT

X=AGE-1

if X less than XK,

HTOP = H1 + SI\_2\*X +(1-B1)\*SI\_2\*XK/(C+1) \* (((XK-X)/XK)\*\*(C+1)-1)

if X not less than XK,

HTOP = YK+ALPHA\*(1-EXP(-BETA\*Z)), with Z=X-XK

XK = 128.326\*EXP(-2.54871)\*PSI)

B1 = 0.2+0.8/(1.0+EXP(5.33208+-9.00622\*PSI))

C =1.0+1.2\*PSI

ALPHA = 52.7948\*PSI

H1 = 1.3+(B1\*PSI)/2.0

YK = H1+PSI\*XK\*(1.0-(1.0-B1)/(C+1.0))

BETA = PSI/ALPHA

X = (SI-32.25953)/10.0

If SI is less than or equal to 32.25

PSI =0.75+X\*(0.299720+X\*(0.116875+X\*(0.074866)+X\*(0.032348+X\*(0.006984+X\*0.000339)))))

If SI is greater than 32.25

PSI=0.75+X\*(0.290737+X\*(0.129665+X\*(-0.058777)+X\*(-0.000669+X\*(0.006003+

X\*-0.001060)))))

MODIFER=P8\*(( P1\*EXP(P2\*TCCH))+(( EXP(P3\*TCCH\*\*P4))-( EXP(P3\*TCCH\*\*P4))\*EXP((-P5\*(1.0-CR)\*\*P6)\*EXP(P7\*TCCH\*\*0.5)))

CRADJ=(1.0-EXP(-(25.0\*CR)\*\*2))

*HG* is predicted 5-year height growth

*HT* is height of the tree

SI is site index (Flewelling)

B0 – B2, P1 – P8 are coefficients in table 4.7.2.3

{4.7.2.34} Used for non-major species

HG= HT\*(( PRDHT2/ PRDHT1)-1)

where:

PRDHT1=4.5+EXP(X1+X2\*DBH\*\*X3)

PRDHT2=4.5+EXP(X1+X2\*(DBH+DG)\*\*X3)

*HG* is predicted 5-year height growth

*HT* is height of the tree

*DBH* is diameter of tree

*DG* is predicted 5-year diameter growth for the tree

X1 – X3 are coefficients shown in table 4.1.2

**Table 4.7.2.3 Coefficients (P1 – P8) for the DF, WH and GF/WF height-growth equations {4.7.2.32-4.7.2.34} in** **OP variant**

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **P1** | **P2** | **P3** | **P4** | **P5** | **P6** | **P7** | **P8** |
| DF | 0.65525888 | -0.006322913 | -0.039409636 | 0.5 | 0.597617316 | 2.0 | 0.631643636 | 1.010018427 |
| GF/WF | 1.0 | -0.0328142 | -0.0127851 | 1.0 | 6.1978 | 2.0 | 0 | 1.01 |
| WH | 1.0 | -0.0384415 | -0.0144139 | 0.5 | 1.04409 | 2.0 | 0 | 1.03 |

# 5.0 Mortality Model

If there are valid ORGANON tree records in the tree list for a cycle, then all trees get mortality estimates using equations developed for ORGANON (Hann et al 2003, Hann and Hanus 2001 or Gould and Harrington 2008) with surrogate assignments for non-valid ORGANON tree records as shown in section 1.1. If all tree records for the projection cycle are non-valid ORGANON tree records, then all trees get mortality estimates using equations developed for the FVS PN variant.

For ORGANON, the annual mortality rate estimates, *RA*, predict individual tree mortality based on trees size, stand density and other tree and stand attributes. The equations used to calculate the mortality rate are shown in equations 5.0.1 and 5.0.2.

{5.0.1} Mortality Equations:

RA=1-[((1-(1/(1+exp(-Z))))0.2)\*CRADJ]

In SMC and NWO for GF, WF, SF, AF, NF, LL:

Z= d0 + d1\*DBH+ d4\*( XSITE1+4.5)+ d5\*(BAL/DBH)

In SMC and NWO for WH, RC, YC, IC, MH:

Z= d0 + d1\*DBH+ d2\*DBH\*\*2+ d3\*CR+ d4\*(SI\_2+4.5)+ d5\*BAL

In SMC and NWO for WO:

Z= d0 + d1\*DBH + d2\*DBH2+ d3\*CR + d4\*(XSITE1+4.5) + d5\*ALOG(BAL+5.0)

In SMC for DF, RF, SS, ES, LP, JP, SP, WP, PP, WB, KP:

Z= d0 + d1\*DBH2+ d3\*CR.25+ d4\*( XSITE1+4.5)+ d5\*BAL

In NWO for DF and all other and SMC any species not specified above:

Z= d0 + d1\*DBH+ d2\* DBH2+ d3\*CR+ d4\*(XSITE1\_1+4.5)+B5\*BAL

where:

RA is the estimated annual mortality rate

DBH is tree diameter at breast height

BAL is total basal area in trees larger

CR is crown ratio

CRADJ crown adjustment =1.0-exp(-(25.0\*CR)2)

XSITE1 Douglas-fir site index

XSITE2 Ponderosa Pine site index

d0-7 are species-specific coefficients shown in table 5.0.1 for NWO

d0-7 are species-specific coefficients shown in table 5.0.2 for SMC

The annual mortality rates are adjusted for the length of cycle using a compound interest formula (Hamilton 1976), and then applied to each tree record.

{5.0.2} *RT* = 1 – (1 – *RA*)*Y*

where:

*RT* is the mortality rate applied to an individual tree record for the growth period

*RA* is the annual mortality rate for the tree record

*Y* is length of the current projection cycle in years

**Table 5.0.1 Coefficients used in the individual tree mortality equation {5.0.1} in the OP variant (NWO .version)**

| **Species** | **d0** | **d1** | **d2** | **d3** | **d4** | **d5** | **d6** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| SF | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1 |
| WF | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1 |
| GF | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1 |
| AF | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1 |
| RF | -4.13142 | -1.13736 | 0 | -0.82331 | 0.030775 | 0.00991 | 1 |
| SS | -4.13142 | -1.13736 | 0 | -0.82331 | 0.030775 | 0.00991 | 1 |
| NF | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1 |
| YC | -0.76161 | -0.52937 | 0 | -4.74019 | 0.011959 | 0.007564 | 1 |
| IC | -0.76161 | -0.52937 | 0 | -4.74019 | 0.011959 | 0.007564 | 1 |
| ES | -4.13142 | -1.13736 | 0 | -0.82331 | 0.030775 | 0.00991 | 1 |
| LP | -4.13142 | -1.13736 | 0 | -0.82331 | 0.030775 | 0.00991 | 1 |
| JP | -4.13142 | -1.13736 | 0 | -0.82331 | 0.030775 | 0.00991 | 1 |
| SP | -4.13142 | -1.13736 | 0 | -0.82331 | 0.030775 | 0.00991 | 1 |
| WP | -4.13142 | -1.13736 | 0 | -0.82331 | 0.030775 | 0.00991 | 1 |
| PP | -4.13142 | -1.13736 | 0 | -0.82331 | 0.030775 | 0.00991 | 1 |
| DF | -4.13142 | -1.13736 | 0 | -0.82331 | 0.030775 | 0.00991 | 1 |
| RW | -0.76161 | -0.52937 | 0 | -4.74019 | 0.011959 | 0.007564 | 1 |
| RC | -0.76161 | -0.52937 | 0 | -4.74019 | 0.011959 | 0.007564 | 1 |
| WH | -0.76161 | -0.52937 | 0 | -4.74019 | 0.011959 | 0.007564 | 1 |
| MH | -0.76161 | -0.52937 | 0 | -4.74019 | 0.011959 | 0.007564 | 1 |
| BM | -2.97682 | 0 | 0 | -6.22325 | 0 | 0 | 1 |
| RA | -2 | -0.5 | 0.015 | -3 | 0.015 | 0.01 | 1 |
| MA | -6.0896 | -0.24562 | 0 | -3.20827 | 0.033348 | 0.013571 | 1 |
| TO | -2.97682 | 0 | 0 | -6.22325 | 0 | 0 | 1 |
| GC | -6.0896 | -0.24562 | 0 | -3.20827 | 0.033348 | 0.013571 | 1 |
| AS | -2.97682 | 0 | 0 | -6.22325 | 0 | 0 | 1 |
| CW | -2.97682 | 0 | 0 | -6.22325 | 0 | 0 | 1 |
| WO | -6.00031 | -0.10491 | 0 | -0.99542 | 0.009127 | 0.871157 | 1 |
| WJ | -4.07278 | -0.17643 | 0 | -1.72945 | 0 | 0.012526 | 1 |
| LL | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1 |
| WB | -4.13142 | -1.13736 | 0 | -0.82331 | 0.030775 | 0.00991 | 1 |
| KP | -4.13142 | -1.13736 | 0 | -0.82331 | 0.030775 | 0.00991 | 1 |
| PY | -4.07278 | -0.17643 | 0 | -1.72945 | 0 | 0.012526 | 1 |
| DG | -3.02035 | 0 | 0 | -8.46788 | 0.013966 | 0.009462 | 1 |
| HT | -3.02035 | 0 | 0 | -8.46788 | 0.013966 | 0.009462 | 1 |
| CH | -3.02035 | 0 | 0 | -8.46788 | 0.013966 | 0.009462 | 1 |
| WI | -1.38629 | 0 | 0 | 0 | 0 | 0 | 1 |
| OT | -3.02035 | 0 | 0 | -8.46788 | 0.013966 | 0.009462 | 1 |

**Table 5.0.2 Coefficients used in the individual tree mortality equation {5.0.1} in the OP variant (SMC .version)**

| **Species** | **d0** | **d1** | **d2** | **d3** | **d4** | **d5** | **d6** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| SF | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1 |
| WF | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1 |
| GF | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1 |
| AF | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1 |
| RF | -3.12162 | -0.44724 | 0 | -2.48387 | 0.018431 | 0.013539 | 1 |
| SS | -3.12162 | -0.44724 | 0 | -2.48387 | 0.018431 | 0.013539 | 1 |
| NF | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1 |
| YC | -0.76161 | -0.52937 | 0 | -4.74019 | 0.011959 | 0.007564 | 1 |
| IC | -0.76161 | -0.52937 | 0 | -4.74019 | 0.011959 | 0.007564 | 1 |
| ES | -3.12162 | -0.44724 | 0 | -2.48387 | 0.018431 | 0.013539 | 1 |
| LP | -3.12162 | -0.44724 | 0 | -2.48387 | 0.018431 | 0.013539 | 1 |
| JP | -3.12162 | -0.44724 | 0 | -2.48387 | 0.018431 | 0.013539 | 1 |
| SP | -3.12162 | -0.44724 | 0 | -2.48387 | 0.018431 | 0.013539 | 1 |
| WP | -3.12162 | -0.44724 | 0 | -2.48387 | 0.018431 | 0.013539 | 1 |
| PP | -3.12162 | -0.44724 | 0 | -2.48387 | 0.018431 | 0.013539 | 1 |
| DF | -3.12162 | -0.44724 | 0 | -2.48387 | 0.018431 | 0.013539 | 1 |
| RW | -0.76161 | -0.52937 | 0 | -4.74019 | 0.011959 | 0.007564 | 1 |
| RC | -0.76161 | -0.52937 | 0 | -4.74019 | 0.011959 | 0.007564 | 1 |
| WH | -0.76161 | -0.52937 | 0 | -4.74019 | 0.011959 | 0.007564 | 1 |
| MH | -0.76161 | -0.52937 | 0 | -4.74019 | 0.011959 | 0.007564 | 1 |
| BM | -2.97682 | 0 | 0 | -6.22325 | 0 | 0 | 1 |
| RA | -2 | -0.5 | 0.015 | -3 | 0.015 | 0.01 | 1 |
| MA | -6.0896 | -0.24562 | 0 | -3.20827 | 0.033348 | 0.013571 | 1 |
| TO | -2.97682 | 0 | 0 | -6.22325 | 0 | 0 | 1 |
| GC | -6.0896 | -0.24562 | 0 | -3.20827 | 0.033348 | 0.013571 | 1 |
| AS | -2.97682 | 0 | 0 | -6.22325 | 0 | 0 | 1 |
| CW | -2.97682 | 0 | 0 | -6.22325 | 0 | 0 | 1 |
| WO | -6.00031 | -0.10491 | 0 | -0.99542 | 0.009127 | 0.871157 | 1 |
| WJ | -4.07278 | -0.17643 | 0 | -1.72945 | 0 | 0.012526 | 1 |
| LL | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1 |
| WB | -3.12162 | -0.44724 | 0 | -2.48387 | 0.018431 | 0.013539 | 1 |
| KP | -3.12162 | -0.44724 | 0 | -2.48387 | 0.018431 | 0.013539 | 1 |
| PY | -4.07278 | -0.17643 | 0 | -1.72945 | 0 | 0.012526 | 1 |
| DG | -3.02035 | 0 | 0 | -8.46788 | 0.013966 | 0.009462 | 1 |
| HT | -3.02035 | 0 | 0 | -8.46788 | 0.013966 | 0.009462 | 1 |
| CH | -3.02035 | 0 | 0 | -8.46788 | 0.013966 | 0.009462 | 1 |
| WI | -1.38629 | 0 | 0 | 0 | 0 | 0 | 1 |
| OT | -3.02035 | 0 | 0 | -8.46788 | 0.013966 | 0.009462 | 1 |

If all tree records for the projection cycle are non-valid ORGANON tree records, then the OP variant uses logic from the PN variant. The large tree equations except for Oregon white oak, were developed by Hann et al 2003 and Hann and Hanus 2001. The small tree equations were developed by Gould and Harrington 2013. The equation for redwood was developed by Castle 2021.

The annual mortality rate estimates, *RA*, predicts individual tree mortality based on trees size, stand density and other tree and stand attributes. The equations used to calculate the annual mortality rate are shown in equations {5.0.3} – {5.0.6}.

{5.0.3} Hann Mortality Equations:

*DBH* <u>></u> 3.0”: RA=1-[((1-(1/(1+exp(-Z))))0.2)\*CRADJ]

group 1 species: Z=d0 + d1\*DBH.5 + d3\*CR0.25 + d4\*(XSITE1+4.5) + d5\*BAL

group 2 species: Z= d0 + d1\*DBH + d4\*(XSITE1+4.5)+ d5\*(BAL/DBH)

group 3 species: Z= d0 + d1\*DBH + d2\*DBH2+ d3\*CR + d4\*(XSITE2+4.5) + d5\*BAL

group 4 species: Z= d0 + d1\*DBH + d2\*DBH2+ d3\*CR +\*(XSITE1+4.5) + d5\*BAL

{5.0.4} Gould and Harrington (2009) Mortality Equation for Oregon white oak

*DBH* <u>></u> 3.0”: *RA* = 1 – [1/(1+exp(-6.6707 + 0.5105\*ln(5+*BA*) - 1.3183\**RELHT*)))]\*RADJ

{5.0.5} Gould and Harrington (2013) Mortality for small trees

*DBH* < 3”: *RA* = 1- [1/(1 + exp(-4.4384 + 0.0053\* PBAL\* MCLASS / (DBHA + 1)0.5+ -0.6001 \* RELHT0.5]

*HT* < 4.5: DBHA = DBH+HT\* a1

*HT* <u>></u> 4.5: DBHA = DBH+4.5\* a1

{5.0.6} Redwood mortality equation

RA = [1/(1+exp(2.901447+ 0.578694\*DBH - 0.001793\*PBAL)))]

where:

*RA* is the estimated annual mortality rate (bound to minimum value of 0.001)

*DBH* is tree diameter at breast height

*BA* is total stand basal area

*BAL* is total basal area in trees larger

*RELHT*  is tree height divided by average height of the 40 largest diameter trees in the stand

*CR* is crown ratio

*CRADJ crown adjustment =1.0-exp(-(25.0\*CR)2)*

*XSITE1 Douglas-fir site index*

*XSITE2 Western hemlock site index*

*PBAL* is basal area of trees larger than the subject tree on the inventory point

*MCLASS* Mortality class based on shade tolerance table 5.0.1

HT is tree height

d0-5 are species-specific coefficients shown in table 5.0.1

ai is a species-specific coefficient from table 4.6.1.1

**Table 5.0.3 values used in the individual tree mortality equation {5.0.3 - 5.0.5} in the OP variant.**

| **Species Code** | **group** | **d0** | **d1** | **d2** | **d3** | **d4** | **d5** | **MCLASS** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| SF | 2 | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1 |
| WF | 2 | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1.5 |
| GF | 2 | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1.5 |
| AF | 2 | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1.5 |
| RF | 2 | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1.5 |
| SS | 2 | -7.60159 | -0.20052 | 0 | 0 | 0.044133 | 0.000638 | 1.5 |
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

*RC* is the combined estimate of the annual mortality rate for the tree record

*Y* is length of the current projection cycle in years

# 6.0 Regeneration

The OP variant contains a partial establishment model which may be used to input regeneration and ingrowth into simulations. A more detailed description of how the partial establishment model works can be found in section 5.4.5 of the Essential FVS Guide (Dixon 2002).

The regeneration model is used to simulate stand establishment from bare ground, or to bring seedlings and sprouts into a simulation with existing trees. Sprouts are automatically added to the simulation following harvest or burning of known sprouting species (see table 6.0.1 for sprouting species).

**Table 6.0.1 Regeneration parameters by species in the OP variant.**

| **Species Code** | **Sprouting Species** | **Minimum Bud Width (in)** | **Minimum Tree Height (ft)** | **Maximum Tree Height (ft)** |
| --- | --- | --- | --- | --- |
| SF | No | 0.3 | 1.0 | 20.0 |
| WF | No | 0.3 | 1.5 | 20.0 |
| GF | No | 0.3 | 1.5 | 20.0 |
| AF | No | 0.3 | 1.0 | 20.0 |
| RF | No | 0.3 | 1.0 | 20.0 |
| SS | No | 0.3 | 1.0 | 20.0 |
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
| RW | Yes | 0.2 | 1.0 | 20.0 |
| RC | No | 0.2 | 1.0 | 20.0 |
| WH | No | 0.2 | 1.0 | 20.0 |
| MH | No | 0.2 | 1.0 | 20.0 |
| BM | Yes | 0.2 | 1.0 | 20.0 |
| RA | Yes | 0.2 | 1.0 | 50.0 |
| MA | Yes | 0.2 | 1.0 | 20.0 |
| TO | Yes | 0.2 | 1.0 | 20.0 |
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

{6.0.4} *PS =* ((93.2669 - 0.4303 \* *DSTMPi*) / 100)

{6.0.5} *PS =* ((99.9 - 3.8462 \* *DSTMPi*) / 100)

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

**Table 6.0.2 Sprouting algorithm parameters for sprouting species in the OP variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **Sprouting Probability** | **Number of Sprout Records** | **Source** |
| RW | {6.0.4} | {6.0.2} | Neal 1967  Boe 1975  Griffith 1992 |
| BM | 0.9 | {6.0.2} | Roy 1955  Tappenier et al. 1996  Ag. Handbook 654 |
| RA | {6.0.5} | {6.0.2} | Harrington 1984  Uchytil 1989 |
| MA | 0.9 | {6.0.2} | McDonald et al. 1983  McDonald and Tappenier 1990 |
| TO | 0.9 | {6.0.2} | Harrington et al. 1992  Wilkinson et al. 1997  Fryer 2008 |
| GC | 0.9 | {6.0.2} | Harrington et al. 1992  Wilkinson et al. 1997  Fryer 2008 |
| AS | {6.0.6} | 1 | Keyser 2001 |
| CW | 0.9 | {6.0.2} | Gom and Rood 2000  Steinberg 2001 |
| WO | 0.9 | {6.0.1} | Roy 1955  Gucker 2007 |
| PY | 0.4 | 1 | Minore 1996  Ag. Handbook 654 |
| DG | 0.9 | {6.0.1} | Gucker 2005 |
| HT | No info available--default to 0.7 | 1 | n/a |
| CH | 0.9 | {6.0.2} | Mueggler 1965  Leedge and Hickey 1971  Morgan and Neuenschwander 1988 |
| WI | 0.9 | 1 | Ag. Handbook 654 |

Regeneration of seedlings must be specified by the user with the partial establishment model by using the PLANT or NATURAL keywords. Height of the seedlings is estimated in two steps. First, the height is estimated when a tree is 5 years old (or the end of the cycle – whichever comes first) by using the small-tree height growth equations found in section 4.6.1. Users may override this value by entering a height in field 6 of the PLANT or NATURAL keyword; however the height entered in field 6 is not subject to minimum height restrictions and seedlings as small as 0.05 feet may be established. The second step also uses the equations in section 4.6.1, which grow the trees in height from the point five years after establishment to the end of the cycle.

Seedlings and sprouts are passed to the main FVS model at the end of the growth cycle in which regeneration is established. Unless noted above, seedlings being passed are subject to minimum and maximum height constraints and a minimum budwidth constraint shown in table 6.0.1. After seedling height is estimated, diameter growth is estimated using equations described in section 4.6.2. Crown ratios on newly established trees are estimated as described in section 4.3.1.

Regenerated trees and sprouts can be identified in the treelist output file with tree identification numbers beginning with the letters “ES”.

# 7.0 Volume

Volume is calculated for four merchantability standards: total stem cubic feet, merchantable stem cubic feet, sawlog stem cubic feet, and merchantable stem board feet (Scribner). Sawlog cubic foot volume is only reported when the FIAVBC keyword is in use. Volume estimation is based on methods contained in the National Volume Estimator Library maintained by the Forest Products Measurements group in the Forest Management Service Center (Volume Estimator Library Equations 2009). The default volume merchantability standards and equation numbers for the OP variant are shown in tables 7.0.1-7.0.4.

Volume computation methods used by the Forest Inventory and Analysis (FIA) program can be requested with the FIAVBC keyword. This keyword encompasses the National Scale Volume and Biomass estimators (NSVB; Westfall et al. 2024) and regional equations used for woodland species (Burrill et al. 2024). More information about the FIAVBC keyword and required input variables can be found in the Essential FVS Guide (Dixon 2002).

**Table 7.0.1 Volume merchantability standards for the OP variant.**

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

**Table 7.0.2 Volume equation defaults for each species, at specific location codes, with model name in the OP variant.**

| **Common Name** | **Location Code** | **Equation Number** | **Model Name** |
| --- | --- | --- | --- |
| Pacific silver fir | 609, 612, 800 | 616BEHW011 | Behre's Hyperbola |
| Pacific silver fir | 708, 709, 712 | B00BEHW011 | Behre's Hyperbola |
| white fir | 609, 612, 800 | 616BEHW015 | Behre's Hyperbola |
| white fir | 708, 709, 712 | B00BEHW015 | Behre's Hyperbola |
| grand fir | 609, 612, 800 | 616BEHW017 | Behre's Hyperbola |
| grand fir | 708, 709, 712 | B00BEHW017 | Behre's Hyperbola |
| subalpine fir | 609, 612, 800 | 616BEHW019 | Behre's Hyperbola |
| subalpine fir | 708, 709, 712 | B00BEHW015 | Behre's Hyperbola |
| California red fir | 609, 612, 800 | 616BEHW020 | Behre's Hyperbola |
| California red fir | 708, 709, 712 | B00BEHW021 | Behre's Hyperbola |
| Sitka spruce | 609, 800 | F03FW2W263 | Flewelling's 2-Point Profile Model |
| Sitka spruce | 612 | 616BEHW098 | Behre's Hyperbola |
| Sitka spruce | 708, 709, 712 | B00BEHW098 | Behre's Hyperbola |
| noble fir | 609, 612, 800 | 616BEHW022 | Behre's Hyperbola |
| noble fir | 708, 709, 712 | B00BEHW022 | Behre's Hyperbola |
| Alaska cedar | 609, 612, 800 | 616BEHW042 | Behre's Hyperbola |
| Alaska cedar | 708, 709, 712 | B00BEHW042 | Behre's Hyperbola |
| incense cedar | 609, 612, 800 | 616BEHW081 | Behre's Hyperbola |
| incense cedar | 708, 709, 712 | B00BEHW081 | Behre's Hyperbola |
| Engelmann spruce | 609, 612, 800 | 616BEHW093 | Behre's Hyperbola |
| Engelmann spruce | 708, 709, 712 | B00BEHW093 | Behre's Hyperbola |
| lodgepole pine | 609, 612, 800 | 616BEHW108 | Behre's Hyperbola |
| lodgepole pine | 708, 709, 712 | B00BEHW108 | Behre's Hyperbola |
| Jeffrey pine | 609, 612, 800 | 616BEHW116 | Behre's Hyperbola |
| Jeffrey pine | 708, 709, 712 | B00BEHW116 | Behre's Hyperbola |
| sugar pine | 609, 612, 800 | 616BEHW117 | Behre's Hyperbola |
| sugar pine | 708, 709, 712 | B00BEHW117 | Behre's Hyperbola |
| western white pine | 609, 612, 800 | 616BEHW119 | Behre's Hyperbola |
| western white pine | 708, 709, 712 | B00BEHW119 | Behre's Hyperbola |
| ponderosa pine | 609, 612, 800 | 616BEHW122 | Behre's Hyperbola |
| ponderosa pine | 708, 709, 712 | B00BEHW122 | Behre's Hyperbola |
| Douglas‑fir | 609, 800 | F03FW2W202 | Flewelling's 2-Point Profile Model |
| Douglas‑fir | 612 | F00FW2W202 | Flewelling's 2-Point Profile Model |
| Douglas‑fir | 708, 709 | B01BEHW202 | Behre's Hyperbola |
| Douglas‑fir | 712 | B02BEHW202 | Behre's Hyperbola |
| redwood | 609, 612, 800 | 616BEHW211 | Behre's Hyperbola |
| redwood | 708, 709, 712 | B00BEHW211 | Behre's Hyperbola |
| western redcedar | 609, 612, 800 | 616BEHW242 | Behre's Hyperbola |
| western redcedar | 708, 709, 712 | B00BEHW242 | Behre's Hyperbola |
| western hemlock | 612 | F03FW2W263 | Flewelling's 2-Point Profile Model |
| western hemlock | 609, 800 | F00FW2W263 | Flewelling's 2-Point Profile Model |
| western hemlock | 708, 709, 712 | B00BEHW263 | Behre's Hyperbola |
| mountain hemlock | 609, 612, 800 | 616BEHW264 | Behre's Hyperbola |
| mountain hemlock | 708, 709, 712 | B00BEHW260 | Behre's Hyperbola |
| bigleaf maple | 609, 612, 800 | 616BEHW312 | Behre's Hyperbola |
| bigleaf maple | 708, 709, 712 | B00BEHW312 | Behre's Hyperbola |
| red alder | 612 | NVBM240351 | National Scale Volume and Biomass Estimators |
| red alder | 609, 800 | 616BEHW351 | Behre's Hyperbola |
| red alder | 708, 709, 712 | B00BEHW351 | Behre's Hyperbola |
| Pacific madrone | 609, 612, 800 | 616BEHW361 | Behre's Hyperbola |
| Pacific madrone | 708, 709, 712 | B00BEHW361 | Behre's Hyperbola |
| tanoak | 609, 612, 800 | 616BEHW631 | Behre's Hyperbola |
| tanoak | 708, 709, 712 | B00BEHW631 | Behre's Hyperbola |
| giant chinquapin | 609, 612, 800 | 616BEHW431 | Behre's Hyperbola |
| giant chinquapin | 708, 709, 712 | B00BEHW431 | Behre's Hyperbola |
| quaking aspen | 609, 612, 800 | 616BEHW746 | Behre's Hyperbola |
| quaking aspen | 708, 709, 712 | B00BEHW999 | Behre's Hyperbola |
| black cottonwood | 609, 612, 800 | 616BEHW747 | Behre's Hyperbola |
| black cottonwood | 708, 709, 712 | B00BEHW747 | Behre's Hyperbola |
| Oregon white oak | 609, 612, 800 | 616BEHW815 | Behre's Hyperbola |
| Oregon white oak | 708, 709, 712 | B00BEHW800 | Behre's Hyperbola |
| western juniper | 609, 612, 800 | 616BEHW064 | Behre's Hyperbola |
| western juniper | 708, 709, 712 | B00BEHW242 | Behre's Hyperbola |
| subalpine larch | 609, 612, 800 | 616BEHW072 | Behre's Hyperbola |
| subalpine larch | 708, 709, 712 | B00BEHW073 | Behre's Hyperbola |
| whitebark pine | 609, 612, 800 | 616BEHW101 | Behre's Hyperbola |
| whitebark pine | 708, 709, 712 | B00BEHW119 | Behre's Hyperbola |
| knobcone pine | 609, 612, 800 | 616BEHW103 | Behre's Hyperbola |
| knobcone pine | 708, 709, 712 | B00BEHW108 | Behre's Hyperbola |
| Pacific yew | 609, 612, 800 | 616BEHW231 | Behre's Hyperbola |
| Pacific yew | 708, 709, 712 | B00BEHW231 | Behre's Hyperbola |
| Pacific dogwood | 609, 612, 800 | 616BEHW492 | Behre's Hyperbola |
| Pacific dogwood | 708, 709, 712 | B00BEHW999 | Behre's Hyperbola |
| hawthorn | 609, 612, 800 | 616BEHW500 | Behre's Hyperbola |
| hawthorn | 708, 709, 712 | B00BEHW999 | Behre's Hyperbola |
| bitter cherry | 609, 612, 800 | 616BEHW768 | Behre's Hyperbola |
| bitter cherry | 708, 709, 712 | B00BEHW999 | Behre's Hyperbola |
| willow | 609, 612, 800 | 616BEHW920 | Behre's Hyperbola |
| willow | 708, 709, 712 | B00BEHW999 | Behre's Hyperbola |
| other | 609, 612, 800 | 616BEHW999 | Behre's Hyperbola |
| other | 708, 709, 712 | B00BEHW999 | Behre's Hyperbola |

**Table 7.0.3 Citations by Volume Model in the OP variant**

|  |  |
| --- | --- |
| **Model Name** | **Citation** |
| Behre's Hyperbola | USFS-R6 Sale Preparation and Valuation Section of Diameter and Volume Procedures - R6 Timber Cruise System. 1978. |
| Flewelling 2-Point Profile Model | Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II. |
| National Scale Volume and Biomass Estimators | Westfall, James A.; Coulston, John W.; Gray, Andrew N.; Shaw, John D.; Radtke, Philip J.; Walker, David M.; Weiskittel, Aaron R.; MacFarlane, David W.; Affleck, David L.R.; Zhao, Dehai; Temesgen, Hailemariam; Poudel, Krishna P.; Frank, Jereme M.; Prisley, Stephen P.; Wang, Yingfang; Sánchez Meador, Andrew J.; Auty, David; Domke, Grant M. 2024. A national-scale tree volume, biomass, and carbon modeling system for the United States. Gen. Tech. Rep. WO-104. Washington, DC: U.S. Department of Agriculture, Forest Service. 37 p. |

**Table 7.0.4 Species-specific default form class values for the OP variant.**

| **Species Code** | **Behr’s Hyperbola Equation Number** | **Form Class** | | | | |
| --- | --- | --- | --- | --- | --- | --- |
| **0<DBH<11** | **11<=DBH<21** | **21<=DBH<31** | **31<=DBH<41** | **DBH>=41** |
| **Olympic NF (609)** | | | | | | |
| SF | 616BEHW011 | 97 | 97 | 91 | 90 | 90 |
| WF | 616BEHW015 | 97 | 97 | 93 | 91 | 91 |
| GF | 616BEHW017 | 86 | 86 | 83 | 82 | 82 |
| AF | 616BEHW019 | 97 | 97 | 97 | 95 | 95 |
| RF | 616BEHW020 | 83 | 83 | 80 | 80 | 79 |
| SS\* | 616BEHW098 | 89 | 89 | 86 | 84 | 84 |
| NF | 616BEHW022 | 88 | 88 | 84 | 82 | 82 |
| YC | 616BEHW042 | 99 | 99 | 88 | 87 | 86 |
| IC | 616BEHW081 | 81 | 81 | 72 | 71 | 70 |
| ES | 616BEHW093 | 90 | 90 | 86 | 85 | 85 |
| LP | 616BEHW108 | 96 | 96 | 96 | 93 | 93 |
| JP | 616BEHW116 | 92 | 92 | 82 | 80 | 79 |
| SP | 616BEHW117 | 79 | 79 | 76 | 76 | 75 |
| WP | 616BEHW119 | 95 | 95 | 91 | 90 | 90 |
| PP | 616BEHW122 | 89 | 89 | 82 | 80 | 80 |
| DF\* | 616BEHW202 | 82 | 82 | 79 | 78 | 78 |
| RW | 616BEHW211 | 82 | 82 | 79 | 78 | 78 |
| RC | 616BEHW242 | 93 | 93 | 87 | 86 | 86 |
| WH\* | 616BEHW263 | 96 | 96 | 93 | 91 | 91 |
| MH | 616BEHW264 | 98 | 98 | 95 | 94 | 93 |
| BM | 616BEHW312 | 86 | 86 | 84 | 82 | 82 |
| RA | 616BEHW351 | 84 | 84 | 81 | 80 | 79 |
| MA | 616BEHW361 | 79 | 79 | 76 | 76 | 75 |
| TO | 616BEHW631 | 79 | 79 | 76 | 74 | 74 |
| GC | 616BEHW431 | 87 | 87 | 81 | 79 | 79 |
| AS | 616BEHW746 | 85 | 85 | 81 | 80 | 79 |
| CW | 616BEHW747 | 82 | 82 | 80 | 79 | 79 |
| WO | 616BEHW815 | 95 | 95 | 82 | 82 | 82 |
| WJ | 616BEHW064 | 81 | 81 | 81 | 81 | 74 |
| LL | 616BEHW072 | 92 | 92 | 92 | 92 | 92 |
| WB | 616BEHW101 | 96 | 96 | 96 | 96 | 96 |
| KP | 616BEHW103 | 96 | 96 | 89 | 87 | 86 |
| PY | 616BEHW231 | 76 | 76 | 69 | 65 | 65 |
| DG | 616BEHW492 | 95 | 95 | 86 | 82 | 82 |
| HT | 616BEHW500 | 95 | 95 | 95 | 95 | 95 |
| CH | 616BEHW768 | 86 | 86 | 86 | 84 | 84 |
| WI | 616BEHW920 | 92 | 92 | 92 | 92 | 92 |
| OT | 616BEHW999 | 84 | 84 | 80 | 79 | 78 |
| **Siuslaw NF (612)** | | | | | | |
| SF | 616BEHW011 | 95 | 95 | 89 | 88 | 88 |
| WF | 616BEHW015 | 97 | 97 | 93 | 91 | 91 |
| GF | 616BEHW017 | 86 | 86 | 83 | 82 | 82 |
| AF | 616BEHW019 | 96 | 96 | 93 | 91 | 91 |
| RF | 616BEHW020 | 83 | 83 | 80 | 80 | 79 |
| SS | 616BEHW098 | 89 | 89 | 86 | 84 | 84 |
| NF | 616BEHW022 | 88 | 88 | 84 | 82 | 82 |
| YC | 616BEHW042 | 88 | 88 | 79 | 77 | 76 |
| IC | 616BEHW081 | 81 | 81 | 72 | 71 | 70 |
| ES | 616BEHW093 | 90 | 90 | 86 | 85 | 85 |
| LP | 616BEHW108 | 98 | 98 | 93 | 90 | 90 |
| JP | 616BEHW116 | 92 | 92 | 82 | 80 | 79 |
| SP | 616BEHW117 | 79 | 79 | 76 | 76 | 75 |
| WP | 616BEHW119 | 93 | 93 | 89 | 88 | 88 |
| PP | 616BEHW122 | 89 | 89 | 82 | 80 | 80 |
| DF | 616BEHW202 | 73 | 73 | 71 | 70 | 70 |
| RW | 616BEHW211 | 82 | 82 | 79 | 78 | 78 |
| RC | 616BEHW242 | 68 | 68 | 63 | 63 | 62 |
| WH | 616BEHW263 | 75 | 75 | 72 | 71 | 71 |
| MH | 616BEHW264 | 89 | 89 | 83 | 82 | 81 |
| BM | 616BEHW312 | 86 | 86 | 84 | 82 | 82 |
| RA | 616BEHW351 | 84 | 84 | 81 | 80 | 79 |
| MA | 616BEHW361 | 79 | 79 | 76 | 76 | 75 |
| TO | 616BEHW631 | 79 | 79 | 76 | 74 | 74 |
| GC | 616BEHW431 | 87 | 87 | 81 | 79 | 79 |
| AS | 616BEHW746 | 85 | 85 | 81 | 80 | 79 |
| CW | 616BEHW747 | 82 | 82 | 80 | 79 | 79 |
| WO | 616BEHW815 | 95 | 95 | 82 | 82 | 82 |
| WJ | 616BEHW064 | 81 | 81 | 81 | 81 | 74 |
| LL | 616BEHW072 | 92 | 92 | 92 | 92 | 92 |
| WB | 616BEHW101 | 96 | 96 | 96 | 96 | 96 |
| KP | 616BEHW103 | 96 | 96 | 89 | 87 | 86 |
| PY | 616BEHW231 | 76 | 76 | 69 | 65 | 65 |
| DG | 616BEHW492 | 95 | 95 | 86 | 82 | 82 |
| HT | 616BEHW500 | 95 | 95 | 95 | 95 | 95 |
| CH | 616BEHW768 | 86 | 86 | 86 | 84 | 84 |
| WI | 616BEHW920 | 92 | 92 | 92 | 92 | 92 |
| OT | 616BEHW999 | 84 | 84 | 80 | 79 | 78 |

**\*Species whose default volume equation at this location code is not Behre’s Hyperbola (see Table 7.0.2).**

| **Species Code** | **Behr’s Hyperbola Equation Number** | **708** | **709** | **712** |
| --- | --- | --- | --- | --- |
| SF | B00BEHW011 | 84 | 82 | 80 |
| WF | B00BEHW015 | 86 | 78 | 84 |
| GF | B00BEHW017 | 84 | 82 | 86 |
| AF | B00BEHW015 | 82 | 78 | 80 |
| RF | B00BEHW021 | 75 | 78 | 75 |
| SS | B00BEHW098 | 80 | 78 | 80 |
| NF | B00BEHW022 | 84 | 78 | 78 |
| YC | B00BEHW042 | 73 | 78 | 70 |
| IC | B00BEHW081 | 73 | 70 | 70 |
| ES | B00BEHW093 | 77 | 78 | 72 |
| LP | B00BEHW108 | 68 | 78 | 80 |
| JP | B00BEHW116 | 75 | 78 | 75 |
| SP | B00BEHW117 | 75 | 72 | 76 |
| WP | B00BEHW119 | 76 | 78 | 80 |
| PP | B00BEHW122 | 82 | 70 | 80 |
| DF | B01BEHW202 | 80 | 78 | 74 |
| RW | B00BEHW211 | 75 | 78 | 75 |
| RC | B00BEHW242 | 76 | 72 | 70 |
| WH | B00BEHW260 | 88 | 80 | 84 |
| MH | B00BEHW260 | 72 | 78 | 72 |
| BM | B00BEHW312 | 84 | 78 | 82 |
| RA | B00BEHW351 | 88 | 80 | 82 |
| MA | B00BEHW361 | 70 | 78 | 82 |
| TO | B00BEHW631 | 70 | 78 | 70 |
| GC | B00BEHW431 | 75 | 80 | 82 |
| AS | B00BEHW999 | 75 | 78 | 75 |
| CW | B00BEHW747 | 74 | 82 | 74 |
| WO | B00BEHW800 | 70 | 78 | 70 |
| WJ | B00BEHW242 | 60 | 78 | 60 |
| LL | B00BEHW073 | 75 | 78 | 75 |
| WB | B00BEHW119 | 82 | 78 | 82 |
| KP | B00BEHW108 | 82 | 78 | 82 |
| PY | B00BEHW231 | 60 | 78 | 82 |
| DG | B00BEHW999 | 70 | 78 | 70 |
| HT | B00BEHW999 | 70 | 78 | 70 |
| CH | B00BEHW999 | 75 | 78 | 86 |
| WI | B00BEHW999 | 75 | 78 | 75 |
| OT | B00BEHW999 | 74 | 78 | 74 |

# 8.0 Fire and Fuels Extension (FFE-FVS)

The Fire and Fuels Extension to the Forest Vegetation Simulator (FFE-FVS) (Reinhardt and Crookston 2003) integrates FVS with models of fire behavior, fire effects, and fuel and snag dynamics. This allows users to simulate various management scenarios and compare their effect on potential fire hazard, surface fuel loading, snag levels, and stored carbon over time. Users can also simulate prescribed burns and wildfires and get estimates of the associated fire effects such as tree mortality, fuel consumption, and smoke production, as well as see their effect on future stand characteristics. FFE-FVS, like FVS, is run on individual stands, but it can be used to provide estimates of stand characteristics such as canopy base height and canopy bulk density when needed for landscape-level fire models.

For more information on FFE-FVS and how it is calibrated for the OP variant, refer to the updated FFE-FVS model documentation (Rebain, comp. 2010) available on the FVS website.

# 9.0 Insect and Disease Extensions

The FVS Insect and Pathogen model for dwarf mistletoe has been developed for the base variant of the OP variant through the participation and contribution of various organizations led by Forest Health Protection. This model is currently maintained by the Forest Management Service Center and regional Forest Health Protection specialists. Additional details regarding this model may be found in chapter 8 of the Essential FVS Users Guide (Dixon 2002).

# 10.0 Literature Cited

Alexander, R.R., Tackle, D., and Dahms, W.G. 1967. Site Indices for Engelmann Spruce. Res. Pap. RM-32. Forest Service, Rocky Mountain Research Station.

Arney, J. D. 1985. A modeling strategy for the growth projection of managed stands. Canadian Journal of Forest Research. 15(3):511-518.

Barrett, James W. 1978. Height growth and site index curves for managed, even-aged stands of ponderosa pine in the Pacific Northwest. Res. Pap. PNW-232. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 14 p.

Bechtold, William A. 2004. Largest-crown-diameter Prediction Models for 53 Species in the Western United States. WJAF. Forest Service. 19(4): pp 241-245.

Boe, Kenneth N. 1975. Natural seedlings and sprouts after regeneration cuttings in old-growth redwood. PSW-111. Berkeley, CA: U.S. Department of Agriculture, Forest Service, Pacific Southwest Forest and Range Experiment Station. 17 p.

Bruce, D. 1981. Consistent height-growth and growth-rate estimates for remeasured plots. Forest Science 27: 711-725.

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

Curtis, Robert O.; Diaz, Nancy M.; Clendenen, Gary W. 1990. Height growth and site index curves for western white pine in the Cascade Range of Washington and Oregon. Res. Pap. PNW-423. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 14 p.

Dahms, Walter. 1964. Gross and net yield tables for lodgepole pine. Res. Pap. PNW-8. Portland, OR: Pacific Northwest Forest and Range Experiment Station. 14 p.

Dixon, G. E. 1985. Crown ratio modeling using stand density index and the Weibull distribution. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 13p.

Dixon, Gary E. comp. 2002 (revised frequently). Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U.S. Department of Agriculture, Forest Service, Forest Management Service Center.

Dolph, K. Leroy. 1991. Polymorphic site index curves for red fir in California and southern Oregon. Res. Paper PSW-206. Berkeley, CA: Forest Service, Pacific Southwest Forest and Range Experiment Station. 18p.

Donnelly, Dennis M., Betters, David R., Turner, Matthew T., and Gaines, Robert E. 1992. Thinning even-aged forest stands: Behavior of singular path solutions in optimal control analyses. Res. Pap. RM-307. Fort Collins, CO: Forest Service. Rocky Mountain Forest and Range Experiment Station. 12 p.

Donnelly, Dennis. 1996. Internal document on file. Data provided from Region 6. Fort Collins, CO: Forest Service.

Farr, Wilbur A. 1984. Site index and height growth curves for unmanaged even-aged stands of western hemlock and Sitka spruce in southeast Alaska. Res. Pap. PNW-326. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 26 p.

Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II.

Fryer, Janet L. 2008. Lithocarpus densiflorus. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Gom, L. A., & Rood, S. B. (2000). Fire induces clonal sprouting of riparian cottonwoods. Canadian Journal of Botany, 77(11), 1604-1616.

Gould, Peter and Harrington, Constance. 2009. Draft - Revising the Pacific Northwest Coast Variant of the Forest Vegetation Simulator (FVS-PN) for Oregon White Oak. USDA Forest Service, Pacific Northwest Research Station. 25 p.

Gould, Peter J.; Harrington, Constance A. 2013. Making the little things count: modeling the development of understory trees in complex stands. In: Anderson, Paul D.; Ronnenberg, Kathryn L., eds. Density management for the 21st century: west side story. Gen. Tech. Rep. PNW-GTR-880. Portland, OR: U.S. Department of Agriculture, Forest Service, Pacifi c Northwest Research Station: 59–70.

Griffith, Randy Scott. 1992. Sequoia sempervirens. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Gucker, Corey L. 2005. Cornus nuttallii. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Gucker, Corey L. 2007. Quercus garryana. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Hall, Frederick C. 1983. Growth basal area: a field method for appraising forest site productivity for stockability. Can. J. For. Res. 13:70-77.

Hamilton, D. A., Jr. 1986. A logistic model of mortality in thinned and unthinned mixed conifer stands of northern Idaho. Forest Science 32(4): 989-1000.

Hann, David W., 2011. ORGANON User’s Manual Edition 9.1. Internal Rep. Corvallis, OR: Oregon State University, Department of Forest Resources.

Harlow, William M.; Harrar, Ellwood S. 1968. Textbook of Dendrology. McGraw-Hill Book Co. New York. 512 p.

Harrington, Constance A. 1984. Factors influencing initial sprouting of red alder. Canadian Journal of Forest Research. 14: 357-361.

Harrington, Constance A.; Curtis, Robert O. 1986. Height growth and site index curves for red alder. Res. Pap. PNW-358. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 14 p.

Harrington, T. B., Tappeiner, I. I., John, C., & Warbington, R. 1992. Predicting crown sizes and diameter distributions of tanoak, Pacific madrone, and giant chinkapin sprout clumps. Western Journal of Applied Forestry, 7(4), 103-108.

Herman, Francis R.; Curtis, Robert O.; DeMars, Donald J. 1978. Height growth and site index estimates for noble fir in high-elevation forests of the Oregon-Washington Cascades. Res. Pap. PNW-243. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 15 p.

Hoyer, Gerald E.; Herman, Francis R. 1989. Height-age and site index curves for Pacific silver fir in the Pacific Northwest. Res. Pap. PNW-418. Portland, OR: Forest Service, Pacific Northwest Forest and Range Experiment Station. 33 p.

King, James E. 1966. Site index curves for Douglas-fir in the pacific northwest. Weyerhaeuser Forestry Paper No. 8. Centralia, WA. Weyerhaeuser Forestry Research Center. 49p.

Krajicek, J.; Brinkman, K.; Gingrich, S. 1961. Crown competition – a measure of density. Forest Science. 7(1):35-42

Krumland, B. and Eng, H., 2005. Site Index Systems for Major Young-Growth Forest and Woodland Species in Northern California. California Forestry Report 4.

Larsen, D.R. and D.W. Hann. 1985. Equations for predicting diameter and squared diameter inside bark at breast height for six major conifers of southwest Oregon. Res. Note 77. Corvallis, OR: Oregon State University, Forest Research Laboratory. 4p.

Leedge, T. A., & Hickey, W. O. 1971. Sprouting of northern Idaho shrubs after prescribed burning. The Journal of Wildlife Management, 508-515.

McDonald, Philip M.; Minore, Don; Atzet, Tom. 1983. Southwestern Oregon--northern California hardwoods. In: Burns, Russell M., compiler. Silvicultural systems for the major forest types of the United States. Agric. Handb. 445. Washington, DC: U.S. Department of Agriculture: 29-32.

McDonald, Philip M. and Tappenier II, John C. 1990. Arbutus menziesii Pursh. Pacific madrone. In: Burns, Russell M.; Honkala, Barbara H., technical coordinators. Silvics of North America. Volume 2. Hardwoods. Agric. Handb. 654. Washington, DC: U.S. Department of Agriculture, Forest Service: 275-289.

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

## 11.1 Appendix B: Plant Association Codes

**Table 11.2.1 Plant association codes recognized in the PN variant.**

| **FVS Sequence Number = Plant Association**  **Species Type** | **Alpha Code** | **Site Species** | **Site Index\*** | **Max. SDI\*** | **Source\*** | **Reference** |
| --- | --- | --- | --- | --- | --- | --- |
| 1 = PSME/HODI‑ROGY  Douglas‑fir/oceanspray‑baldhip rose | CDS221 | DF | 54 | 750 | C | R6 E TP-001-88 p. 100 |
| 2 = PSME/GASH  Douglas‑fir/salal | CDS255 | DF | 62 | 955 | C | R6 E TP-001-88 p. 104 |
| 3 = PSME/ARUV  Douglas‑fir/kinnikinnick | CDS651 | DF | 33 | 600 | C | R6 E TP-001-88 p. 96 |
| 4 = ABLA2/LULA  Subalpine fir/subalpine lupine | CEF321 | AF | 50 | 367 | H | R6 E TP-001-88 p. 268 |
| 5 = ABLA2/RHAL‑OLY  Subalpine fir/white rhododendron (Olympic) | CES212 | AF | 65 | 535 | H | R6 E TP-001-88 p. 272 |
| 6 = ABLA2/VAME‑OLY  Subalpine fir/big huckleberry (Olympic) | CES321 | AF | 91 | 955 | H | R6 E TP-001-88 p. 260 |
| 7 = ABLA2/JUCO4  Subalpine fir/common juniper | CES621 | AF | 31 | 560 | C | R6 E TP-001-88 p. 264 |
| 8 = ABAM/OXOR‑OLY  Silver fir/oxalis (Olympic) | CFF111 | SF | 150 | 1050 | C | R6 E TP-001-88 p. 202 |
| 9 = ABAM/ACTR‑TIUN  Silver fir/vanillaleaf‑foamflower | CFF211 | DF | 84 | 950 | C | R6 E TP-001-88 p. 238 |
| 10 = ABAM/XETE  Silver fir/beargrass | CFF311 | SF | 83 | 1093 | H | R6 E TP-001-88 p. 186 |
| 11 = ABAM/POMU  Silver fir/swordfern | CFF611 | SF | 145 | 995 | C | R6 E TP-001-88 p. 230 |
| 12 = ABAM/POMU‑OXOR  Silver fir/swordfern‑oxalis | CFF612 | SF | 154 | 845 | C | R6 E TP-001-88 p. 234 |
| 13 = ABAM/Dep.  Silver fir/depauperate | CFF911 | DF | 84 | 861 | H | R6 E TP-001-88 p. 194 |
| 14 = ABAM/GASH/OXOR  Silver fir/salal/oxalis | CFS156 | SF | 149 | 1015 | C | R6 E TP-001-88 p. 222 |
| 15 = ABAM/VAME/XETE‑OLY Silver fir/big huckleberry/beargrass (Olympic) | CFS211 | SF | 83 | 1050 | C | R6 E TP-001-88 p. 190 |
| 16 = ABAM/VAAL‑OLY  Silver fir/Alaska huckleberry (Olympic) | CFS212 | SF | 127 | 1090 | C | R6 E TP-001-88 p. 152 |
| 17 = ABAM/VAAL/ERMO  Silver fir/Alaska huckleberry/avalanche lily | CFS213 | SF | 108 | 835 | C | R6 E TP-001-88 p. 156 |
| 18 = ABAM/VAAL/XETE  Silver fir/Alaska huckleberry/beargrass | CFS214 | DF | 84 | 1090 | C | R6 E TP-001-88 p. 160 |
| 19 = ABAM/VAAL/TIUN  Silver fir/Alaska huckleberry/foamflower | CFS215 | SF | 101 | 1101 | H | R6 E TP-001-88 p. 164 |
| 20 = ABAM/VAAL/OXOR  Silver fir/Alaska huckleberry/oxalis | CFS217 | SF | 136 | 1055 | C | R6 E TP-001-88 p. 172 |
| 21 = ABAM/VAAL/CLUN  Silver fir/Alaska huckleberry/queen's cup | CFS218 | SF | 111 | 1080 | C | R6 E TP-001-88 p. 176 |
| 22 = ABAM/VAAL/LIBO2  Silver fir/Alaska huckleberry/twinflower | CFS219 | SF | 115 | 955 | C | R6 E TP-001-88 p. 180 |
| 23 = ABAM/OPHO‑OLY  Silver fir/devil's club (Olympic) | CFS311 | SF | 118 | 920 | C | R6 E TP-001-88 p. 198 |
| 24 = ABAM/RHMA‑OLY  Silver fir/rhododendron (Olympic) | CFS611 | SF | 107 | 996 | H | R6 E TP-001-88 p. 206 |
| 25 = ABAM/RHMA‑VAAL  Silver fir/rhododendron‑Alaska huckleberry | CFS612 | SF | 96 | 470 | C | R6 E TP-001-88 p. 210 |
| 26 = TSHE/OXOR‑OLY  Western hemlock/oxalis (Olympic) | CHF112 | WH | 104 | 780 | C | R6 E TP-001-88 p. 326 |
| 27 = TSHE/OXOR‑COAST  Western hemlock/Oregon oxalis (Coast) | CHF121 | WH | 110 | 960 | C | R6 E 220-86a p. 83 |
| 28 = TSHE/POMU‑COAST  Western hemlock/swordfern (Coast) | CHF122 | WH | 114 | 925 | C | R6 E 220-86a p. 101 |
| 29 = TSHE/POMU‑OXOR‑OLY  Western hemlock/swordfern‑oxalis (Olympic) | CHF131 | WH | 94 | 950 | C | R6 E TP-001-88 p. 386 |
| 30 = TSHE/POMU‑TITR Western hemlock/swordfern‑foamflower | CHF132 | DF | 116 | 1010 | C | R6 E TP-001-88 p. 382 |
| 31 = TSHE/ACTR‑OLY  Western hemlock/vanillaleaf (Olympic) | CHF211 | DF | 108 | 1040 | C | R6 E TP-001-88 p. 390 |
| 32 = TSHE/XETE‑OLY  Western hemlock/beargrass (Olympic) | CHF511 | WH | 50 | 696 | H | R6 E TP-001-88 p. 306 |
| 33 = TSHE/Dep.  Western hemlock/depauperate | CHF911 | WH | 105 | 1165 | H | R6 E TP-001-88 p. 310 |
| 34 = TSHE/LYAM‑OLY  Western hemlock/skunkcabbage (Olympic) | CHM111 | RA | 52 | 760 | C | R6 E TP-001-88 p. 378 |
| 35 = TSHE/BENE‑COAST  Western hemlock/dwarf Oregon grape (Coast) | CHS121 | DF | 118 | 985 | C | R6 E 220-86a p. 77 |
| 36 = TSHE/BENE‑GASH‑COAST  Western hemlock/dwarf Oregon grape‑salal (Coast) | CHS122 | WH | 114 | 820 | C | R6 E 220-86a p. 79 |
| 37 = TSHE/GASH‑COAST  Western hemlock/salal (Coast) | CHS123 | WH | 112 | 1210 | C | R6 E 220-86a p. 93 |
| 38 = TSHE/GASH‑OLY  Western hemlock/salal (Olympic) | CHS131 | WH | 78 | 1050 | C | R6 E TP-001-88 p. 350 |
| 39 = TSHE/GASH/XETE  Western hemlock/salal/beargrass | CHS132 | DF | 67 | 880 | C | R6 E TP-001-88 p. 354 |
| 40 = TSHE/GASH‑VAOV2 Western hemlock/salal‑evergreen huckleberry | CHS133 | DF | 98 | 1606 | H | R6 E TP-001-88 p. 358 |
| 41 = TSHE/GASH‑HODI  Western hemlock/salal‑oceanspray | CHS134 | DF | 78 | 810 | C | R6 E TP-001-88 p. 362 |
| 42 = TSHE/GASH/OXOR  Western hemlock/salal/oxalis | CHS136 | WH | 84 | 895 | C | R6 E TP-001-88 p. 370 |
| 43 = TSHE/GASH/POMU  Western hemlock/salal/swordfern | CHS137 | DF | 108 | 975 | C | R6 E TP-001-88 p. 374 |
| 44 = TSHE/BENE‑OLY  Western hemlock/Oregongrape(Olympic) | CHS138 | DF | 71 | 1095 | C | R6 E TP-001-88 p. 318 |
| 45 = TSHE/BENE/POMU‑OLY  Western hemlock/Oregongrape/swordfern (Olympic) | CHS139 | DF | 119 | 955 | C | R6 E TP-001-99 p. 322 |
| 46 = TSHE/ACCI‑GASH‑COAST  Western hemlock/vine maple‑salal (Coast) | CHS221 | DF | 122 | 825 | C | R6 E 220-86a p. 103 |
| 47 = TSHE/ACCI/POMU‑COAST  Western hemlock/vine maple/swordfern (Coast) | CHS222 | DF | 128 | 875 | C | R6 E 220-86a p. 105 |
| 48 = TSHE/RHMA‑BENE‑COAST  Western hemlock/rhododendron‑dwarf OR grape (Coast) | CHS321 | WH | 98 | 1107 | H | R6 E 220-86a p. 85 |
| 49 = TSHE/RHMA‑GASH‑COAST  Western hemlock/rhododendron‑salal | CHS322 | DF | 114 | 840 | C | R6 E 220-86a p. 89 |
| 50 = TSHE/RHMA/POMU‑COAST  Western hemlock/rhododendron/swordfern (Coast) | CHS323 | WH | 84 | 945 | C | R6 E 220-86a p. 91 |
| 51 = TSHE/RHMA/VAOV2‑COAST W.hemlock/rhododendron‑evergreen huckleberry(Coast) | CHS324 | WH | 80 | 865 | C | R6 E 220-86a p. 87 |
| 52 = TSHE/RHMA‑OLY  Western hemlock/rhododendron (Olympic) | CHS331 | WH | 56 | 1145 | C | R6 E TP-001-88 p. 330 |
| 53 = TSHE/RHMA/XETE‑OLY  Western hemlock/rhododendron/beargrass (Olympic) | CHS332 | DF | 56 | 610 | C | R6 E TP-001-88 p. 334 |
| 54 = TSHE/RHMA‑BENE‑OLY  Western hemlock/rhododendron‑Oregongrape (Olympic) | CHS333 | DF | 80 | 1065 | C | R6 E TP-001-88 p. 338 |
| 55 = TSHE/RHMA‑GASH‑OLY  Western hemlock/rhododendron‑salal (Olympic) | CHS334 | DF | 66 | 810 | C | R6 E TP-001-88 p. 342 |
| 56 = TSHE/RHMA/POMU‑OLY  Western hemlock/rhododendron/swordfern (Olympic) | CHS335 | DF | 88 | 845 | C | R6 E TP-001-88 p. 346 |
| 57 = TSHE/RUSP‑COAST  Western hemlock/salmonberry (Coast) | CHS421 | WH | 110 | 675 | C | R6 E 220-86a p. 95 |
| 58 = TSHE/RUSP‑ACCI‑COAST  Western hemlock/salmonberry‑vine maple (Coast) | CHS422 | WH | 94 | 660 | C | R6 E 220-86a p. 99 |
| 59 = TSHE/RUSP‑GASH‑COAST  Western hemlock/salmonberry‑salal (Coast) | CHS423 | DF | 119 | 600 | C | R6 E 220-86a p. 97 |
| 60 = TSHE/OPHO‑OLY  Western hemlock/devil's club (Olympic) | CHS512 | DF | 134 | 485 | C | R6 E TP-001-88 p. 314 |
| 61 = TSHE/OPHO‑COAST  Western hemlock/devil's club (Coast) | CHS521 | WH | 114 | 375 | C | R6 E 220-86a p. 75 |
| 62 = TSHE/VAOV2‑COAST  Western hemlock/evergreen huckleberry (Coast) | CHS610 | WH | 118 | 935 | C | R6 E 220-86a p. 81 |
| 63 = TSHE/VAAL  Western hemlock/Alaska huckleberry | CHS621 | WH | 98 | 1025 | C | R6 E TP-001-88 p. 290 |
| 64 = TSHE/VAAL/XETE  Western hemlock/Alaska huckleberry/beargrass | CHS622 | DF | 70 | 610 | C | R6 E TP-001-88 p. 294 |
| 65 = TSHE/VAAL/OXOR‑OLY  Western hemlock/Alaska huckleberry/oxalis (Olympic) | CHS623 | WH | 94 | 570 | C | R6 E TP-001-88 p. 298 |
| 66 = TSHE/VAAL‑GASH‑OLY Western hemlock/Alaska huckleberry‑salal (Olympic) | CHS624 | WH | 92 | 915 | C | R6 E TP-001-88 p. 302 |
| 67 = TSME/VAAL/ERMO  Mountain hemlock/Alaska huckleberry/avalanche lily | CMS242 | MH | 14 | 1021 | H | R6 E TP-001-88 p. 120 |
| 68 = PISI/POMU‑OXOR  Sitka spruce/swordfern‑oxalis | CSF111 | SS | 120 | 930 | C | R6 E TP-001-88 p. 248 |
| 69 = PISI/POMU‑COAST  Sitka spruce/swordfern (Coast) | CSF121 | SS | 115 | 930 | C | R6 E 220-86a p. 73 |
| 70 = PISI/OXOR‑COAST  Sitka spruce/Oregon oxalis | CSF321 | SS | 120 | 930 | C | R6 E 220-86a p. 65 |
| 71 = PISI/MEFE‑VAPA‑COAST  Sitka spruce/fool's huckleberry‑red huckleb (Coast) | CSS221 | SS | 125 | 1000 | C | R6 E 220-86a p. 63 |
| 72 = PISI/GASH‑COAST  Sitka spruce/salal (Coast) | CSS321 | SS | 117 | 615 | C | R6 E 220-86a p. 67 |
| 73 = PISI/RUSP‑COAST  Sitka spruce/salmonberry (Coast) | CSS521 | SS | 123 | 545 | C | R6 E 220-86a p. 69 |
| 74 = PISI/RUSP‑GASH‑COAST  Sitka spruce/salmonberry‑salal (Coast) | CSS522 | SS | 111 | 535 | C | R6 E 220-86a p. 71 |
| 75 = PISI/OPHO‑COAST  Sitka spruce/devil's club (Coast) | CSS621 | SS | 121 | 1000 | C | R6 E 220-86a p. 61 |

\*Site index estimates are from GBA analysis. SDI maximums are set by GBA analysis (Source=H) or CVS plot analysis (Source=C).

The U.S. Department of Agriculture (USDA) prohibits discrimination in all its programs and activities on the basis of race, color, national origin, sex, religion, age, disability, political beliefs, sexual orientation, or marital or family status. (Not all prohibited bases apply to all programs.) Persons with disabilities who require alternative means for communication of program information (Braille, large print, audiotape, etc.) should contact USDA’s TARGET Center at (202) 720-2600 (voice and TDD).

To file a complaint of discrimination, write USDA, Director, Office of Civil Rights, Room 326-W, Whitten Building, 1400 Independence Avenue, SW, Washington, DC 20250-9410 or call (202) 720-5964 (voice or TDD). USDA is an equal opportunity provider and employer.