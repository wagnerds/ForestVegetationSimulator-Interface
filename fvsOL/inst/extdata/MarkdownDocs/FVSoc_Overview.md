ORGANON Southwest (OC) Variant Overview of the Forest Vegetation Simulator

March 2026

![](data:image/jpeg;base64...)

![Forest%20Service%20Color](data:image/jpeg;base64...)Onion Mountain Look Out, Rogue River-Siskiyou National Forest

(Erin Smith-Mateja, WO-FMSC)

ORGANON Southwest (OC) Variant Overview of the Forest Vegetation Simulator

# Compiled By:

Erin Smith-Mateja

USDA Forest Service

# Authors and Contributors:

The FVS staff has maintained model documentation for this variant in the form of a variant overview since its release in July 2015.

Smith-Mateja, Erin, comp. 2008 (revised March 9, 2026). ORGANON Southwest (OC) Variant Overview. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 75p.

Table of Contents

[Compiled By: ii](#_Toc223940925)

[Authors and Contributors: ii](#_Toc223940926)

[1.0 Introduction 1](#_Toc223940927)

[1.1 FVS-Organon 1](#_Toc223940928)

[2.0 Geographic Range 4](#_Toc223940929)

[3.0 Control Variables 5](#_Toc223940930)

[3.1 Location Codes 5](#_Toc223940931)

[3.2 Species Codes 6](#_Toc223940932)

[3.3 Habitat Type, Plant Association, and Ecological Unit Codes 8](#_Toc223940933)

[3.4 Site Index 8](#_Toc223940934)

[3.5 Maximum Density 10](#_Toc223940935)

[4.0 Growth Relationships 11](#_Toc223940936)

[4.1 Height-Diameter Relationships 11](#_Toc223940937)

[4.2 Bark Ratio Relationships 13](#_Toc223940938)

[4.3 Crown Ratio Relationships 15](#_Toc223940939)

[4.3.1 Crown Ratio Dubbing 15](#_Toc223940940)

[4.3.2 Crown Ratio Change 21](#_Toc223940941)

[4.3.3 Crown Ratio for Newly Established Trees 21](#_Toc223940942)

[4.4 Crown Width Relationships 21](#_Toc223940943)

[4.5 Crown Competition Factor 25](#_Toc223940944)

[4.6 Small Tree Growth Relationships 27](#_Toc223940945)

[4.6.1 Small Tree Height Growth 27](#_Toc223940946)

[4.6.2 Small Tree Diameter Growth 30](#_Toc223940947)

[4.7 Large Tree Growth Relationships 30](#_Toc223940948)

[4.7.1 Large Tree Diameter Growth 31](#_Toc223940949)

[4.7.2 Large Tree Height Growth 36](#_Toc223940950)

[5.0 Mortality Model 41](#_Toc223940951)

[6.0 Regeneration 47](#_Toc223940952)

[7.0 Volume 52](#_Toc223940953)

[8.0 Fire and Fuels Extension (FFE-FVS) 63](#_Toc223940954)

[9.0 Insect and Disease Extensions 64](#_Toc223940955)

[10.0 Literature Cited 65](#_Toc223940956)

[11.0 Appendices 71](#_Toc223940957)

[11.1 Appendix A: Plant Association Codes 71](#_Toc223940958)

Quick Guide to Default Settings

|  |  |  |
| --- | --- | --- |
| **Parameter or Attribute** | **Default Setting** | |
| Number of Projection Cycles | 1 (10 if using FVS GUI) | |
| Projection Cycle Length | 5 years | |
| Location Code (National Forest) | 711 – BLM Medford -Lakeview | |
| Plant Association Code (Region 5 /Region 6) | 0 (Unknown) / 46 (CWC221 ABCO-PSME) | |
| Slope | 5 percent | |
| Aspect | 0 (no meaningful aspect) | |
| Elevation | 35 (3500 feet) | |
| Latitude / Longitude | Latitude | Longitude |
| All location codes | 42 | 124 |
| Site Species (Region 5 / Region 6 and BLM) | DF / Plant Association Code Specific | |
| Site Index (Region 5 / Region 6 and BLM) | 80 feet / Plant Association Code Specific | |
| Maximum Stand Density Index (R5 /R6 and BLM) | Species specific / Plant Association Code specific | |
|  |  | |
| Volume Equations | National Volume Estimator Library | |
| Merchantable Cubic Foot Volume Specifications: | | |
| Minimum DBH / Top Diameter | KP | All Other Species |
| Region 6 and BLM | 6.0 / 4.5 inches | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| Merchantable Board Foot Volume Specifications: | | |
| Minimum DBH / Top Diameter | KP | All Other Species |
| Region 6 | 6.0 / 4.5 inches | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| Sampling Design: | | |
| Large Trees (variable radius plot) | 40 BAF | |
| Small Trees (fixed radius plot) | 1/300th Acre | |
| Breakpoint DBH | 5.0 inches | |

# 1.0 Introduction

The Forest Vegetation Simulator (FVS) is an individual tree, distance independent growth and yield model with linkable modules called extensions, which simulate various insect and pathogen impacts, fire effects, fuel loading, snag dynamics, and development of understory tree vegetation. FVS can simulate a wide variety of forest types, stand structures, and pure or mixed species stands.

New “variants” of the FVS model are created by imbedding new tree growth, mortality, and volume equations for a particular geographic area into the FVS framework. Geographic variants of FVS have been developed for most of the forested lands in the United States.

The OC variant uses the ORGANON Southwest Oregon growth equations embedded into the existing CA variant code framework. The ORGANON model was developed by David Hann PhD, his graduate students and cooperators at Oregon State University. Like FVS, ORGANON is also an individual tree distance independent model.

Using the CA variant framework allows for extensions which are part of the CA variant to be available in the OC variant. These include the Fire and Fuels, regeneration establishment, event monitor, climate, and dwarf mistletoe extensions.

The OC variant is limited to a maximum of 2000 individual tree records.

For background on the development of the ORGANON model users should consult the ORGANON web site:

* http://www.cof.orst.edu/cof/fr/research/organon/

To fully understand how to use this variant, users should also consult the following publication:

* Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002)

This publication may be downloaded from the Forest Management Service Center (FMSC), Forest Service website. Other FVS publications may be needed if one is using an extension that simulates the effects of fire, insects, or diseases.

## 1.1 FVS-Organon

ORGANON recognizes less species codes than FVS and has minimum size restrictions. FVS can accommodate trees of any size including seedlings. So an FVS simulation file representing a stand may contain tree records that cannot be directly handled within the ORGANON code.

The Southwest Oregon (SWO) version of ORGANON recognizes 19 species found in southwestern Oregon. Trees must be greater than 4.5feet tall and 0.09” in diameter-at-breast-height. Tree records with parameters meeting these species and size requirements will be referred to as valid ORGANON tree records in the remainder of this document; all others will be referred to as non-valid ORGANON tree records. Valid ORGANON tree records get their growth and mortality estimates using ORGANON equations; non-valid ORGANON tree records get their growth and mortality estimates using FVS CA variant equations.

Of the 19 species recognized in SWO, six species are designated as “the big 6”. These are white fir, grand fir, incense cedar, sugar pine, ponderosa pine, and Douglas-fir. At least one of these species must be in the stand for the ORGANON growth routines to run. In FVS, if one of these species is not present, then all tree records are designated as non-valid ORGANON tree records and will get their growth and mortality estimates from FVS CA variant equations.

The OC variant recognizes 50 individual species or species groups (see section 3.2 and table 3.2.1). When the ORGANON growth routines are being called, all tree records get passed into the ORGANON growth routines so stand density measures are correct in the ORGANON growth and mortality equations. This is done by making sure all non-valid ORGANON tree records have temporarily assigned to them a valid ORGANON species code and the tree diameter and height meet the minimum ORGANON requirements. This species mapping is shown in table 1.1.1. If tree height is less than or equal to 4.5’ it is temporarily set to 4.6’; if tree diameter is less than or equal to 0.09” it is temporarily set to 0.1”.

**Table 1.1.1 Species code mapping used in the OC variant when calling ORGANON growth routines.**

| **Valid SWO ORGANON Species Code** | **OC Variant**  **FVS Alpha Code\*** | **OC Variant FVS Alpha Codes\***  **mapped to the valid ORGANON Species Code** |
| --- | --- | --- |
| 015 | not in OC variant | FVS maps WF to GF in the OC variant |
| 017 | GF | GF, BR |
| 081 | IC | IC |
| 117 | SP | SP |
| 122 | PP | PP, WB, KP, LP, CP, LM, JP, WP, MP, GP, GS, RW |
| 202 | DF | DF, RF, SH |
| 231 | PY | PY, WJ, OS |
| 242 | RC | RC, PC |
| 263 | WH | WH, MH |
| 312 | BM | BM, BU, FL, WN, SY, AS, CW |
| 351 | RA | RA |
| 361 | MA | MA |
| 431 | GC | GC |
| 492 | DG | DG, CN, CL, OH |
| 631 | TO | TO |
| 805 | CY | CY, LO, BL, EO, VO, IO |
| 815 | WO | WO |
| 818 | BO | BO |
| 920 | WI | WI |

\*See table 3.2.1 for alpha code definitions

The intent of this variant is to give users access to the ORGANON growth model growth prediction equations and the functionality of FVS. ORGANON model code is called from two places within the FVS code and performs two different tasks just as it does when running ORGANON separately.

The first call is to edit the input data, estimate missing values such as tree height and crown ratio, and calibrate growth equations to the input data. This only happens at most one time when a tree input file is provided which contains valid ORGANON tree records (discussed in the next paragraph). In cases such as a bare ground plant management scenario, or when the tree input file does not contain valid ORGANON tree records, or when the provided tree input file has already been through the ORGANON edit process (i.e. an existing ORGANON .INP file), it won’t happen at all. Any errors in the input data will be noted in the main FVS output file so users can correct them and rerun the simulation at their discretion.

The second call is made to the ORGANON model code to estimate tree growth and mortality. This happens every growth projection cycle when there are valid ORGANON tree records in the run. Estimates include large tree diameter growth, height growth, and crown ratio change, and tree mortality.

# 2.0 Geographic Range

The ORGANON Southwest Oregon version was built with data from even and un-even aged stands collected from 529 stands as part of the southwestern Oregon Forestry Intensified Research (FIRS) Growth and Yield Project. The CA was built with data that was collected on the Klamath, Lassen, Mendocino, Plumas, and Shasta-Trinity National Forests in California, the Illinois Valley (east) Ranger District of the Siskiyou National Forest in Oregon, and the Applegate and Ashland (west) Ranger Districts of the Rogue River National Forest in Oregon. Since the OC variant is a combination of ORGANON and FVS-CA, the suggested use is limited to southwest Oregon.

**Figure 2.0.1 Suggested geographic range of use for the OC variant.**

![](data:image/png;base64...)![](data:image/png;base64...)![](data:image/png;base64...)![](data:image/png;base64...)

# 3.0 Control Variables

FVS users need to specify certain variables used by the OC variant to control a simulation. These are entered in parameter fields on various FVS keywords available in the FVS interface or they are read from an FVS input database using the Database Extension.

## 3.1 Location Codes

The location code is a 3- or 4-digit code where, in general, the first digit of the code represents the Forest Service Region Number, and the last two digits represent the Forest Number within that region. In some cases, a location code beginning with a “7” or “8” is used to indicate an administrative boundary that doesn’t use a Forest Service Region number (for example, other federal agencies, state agencies, or other lands).

If the location code is missing or incorrect in the OC variant, a default forest code of 711 (BLM Medford-Lakeview ADU) will be used. Location codes recognized in the OC variant are shown in tables 3.1.1 and 3.1.2.

**Table 3.1.1 Location codes used in the OC variant.**

|  |  |
| --- | --- |
| **Location Code** | **Location** |
| 505 | Klamath National Forest |
| 506 | Lassen National Forest |
| 508 | Mendocino National Forest |
| 511 | Plumas National Forest |
| 514 | Shasta-Trinity National Forest |
| 610 | Rogue River National Forest |
| 611 | Siskiyou National Forest |
| 518 | Trinity National Forest (mapped to 514) |
| 710 | BLM Roseburg ADU |
| 711 | BLM Medford ADU |
| 712 | BLM Coos Bay ADU |

**Table 3.1.2 Bureau of Indian Affairs reservation codes used in the OC variant.**

| **Location Code** | **Location** |
| --- | --- |
| 7801 | Berry Creek Off-Reservation Trust Land (mapped to 511) |
| 7803 | Cold Springs Rancheria (mapped to 511) |
| 7804 | Colusa Rancheria (mapped to 508) |
| 7805 | Cortina Indian Rancheria (mapped to 508) |
| 7809 | Grindstone Indian Rancheria (mapped to 508) |
| 7811 | Jackson Rancheria (mapped to 511) |
| 7812 | Chicken Ranch Off-Reservation Trust Land (mapped to 511) |
| 7818 | Picayune Off-Reservation Trust Land (mapped to 511) |
| 7822 | Rumsey Indian Rancheria (mapped to 508) |
| 7823 | Shingle Springs Rancheria (mapped to 511) |
| 7826 | Table Mountain Rancheria (mapped to 511) |
| 7827 | Tule River Reservation (mapped to 511) |
| 7829 | Mooretown Off-Reservation Trust Land (mapped to 511) |
| 7837 | Pit River Trust Land (mapped to 506) |
| 7842 | Quartz Valley Reservation (mapped to 505) |
| 7846 | Karuk Off-Reservation Trust Land (mapped to 505) |
| 7864 | Santa Rosa Rancheria (mapped to 511) |
| 8104 | Cow Creek Reservation (mapped to 611) |

## 3.2 Species Codes

The OC variant recognizes 48 species, plus two other composite species categories. You may use FVS species codes, Forest Inventory and Analysis (FIA) species codes, or USDA Natural Resources Conservation Service PLANTS symbols to represent these species in FVS input data. Any valid western species code identifying species not recognized by the variant will be mapped to a similar species in the variant. The species mapping crosswalk is available on the FVS website variant documentation webpage. Any non-valid species code will default to the “other hardwood” category.

Either the FVS sequence number or species code must be used to specify a species in FVS keywords and Event Monitor functions. FIA codes or PLANTS symbols are only recognized during data input and may not be used in FVS keywords. Table 3.2.1 shows the complete list of species codes recognized by the OC variant.

When entering tree data, users should substitute diameter at root collar (DRC) for diameter at breast height (DBH) for woodland species (western juniper).

**Table 3.2.1 Species codes used in the OC variant.**

| **Species Number** | **Species Code** | **FIA Code** | **PLANTS Symbol** | **Scientific Name1** | **Common Name1** |
| --- | --- | --- | --- | --- | --- |
| 1 | PC | 041 | CHLA | *Chamaecyparis lawsoniana* | Port Orford cedar |
| 2 | IC | 081 | CADE27 | *Calocedrus decurrens* | incense cedar |
| 3 | RC | 242 | THPL | *Thuja plicata* | western redcedar |
| 4 | GF | 017 | ABGR | *Abies grandis* | grand fir |
| 5 | RF | 020 | ABMA | *Abies magnifica* | California red fir |
| 6 | SH | 021 | ABSH | *Abies shastensis* | Shasta red fir |
| 7 | DF | 202 | PSME | *Pseudotsuga menziesii* | Douglas-fir |
| 8 | WH | 263 | TSHE | *Tsuga heterophylla* | western hemlock |
| 9 | MH | 264 | TSME | *Tsuga mertensiana* | mountain hemlock |
| 10 | WB | 101 | PIAL | *Pinus albicaulis* | whitebark pine |
| 11 | KP | 103 | PIAT | *Pinus attenuata* | knobcone pine |
| 12 | LP | 108 | PICO | *Pinus contorta* | lodgepole pine |
| 13 | CP | 109 | PICO3 | *Pinus coulteri* | Coulter pine |
| 14 | LM | 113 | PIFL2 | *Pinus flexilis* | limber pine |
| 15 | JP | 116 | PIJE | *Pinus jeffreyi* | Jeffrey pine |
| 16 | SP | 117 | PILA | *Pinus lambertiana* | sugar pine |
| 17 | WP | 119 | PIMO3 | *Pinus monticola* | western white pine |
| 18 | PP | 122 | PIPO | *Pinus ponderosa* | ponderosa pine |
| 19 | MP | 124 | PIRA2 | *Pinus radiata* | Monterey pine |
| 20 | GP | 127 | PISA2 | *Pinus sabiniana* | California foothill pine |
| 21 | WJ | 064 | JUOC | *Juniperus occidentalis* | western juniper |
| 22 | BR | 092 | PIBR | *Picea breweriana* | Brewer spruce |
| 23 | GS | 212 | SEGI2 | *Sequoiadendron giganteum* | giant sequoia |
| 24 | PY | 231 | TABR2 | *Taxus brevifolia* | Pacific yew |
| 25 | OS | 299 | 2TN |  | other softwood2 |
| 26 | LO | 801 | QUAG | *Quercus agrifolia* | California live oak |
| 27 | CY | 805 | QUCH2 | *Quercus chrysolepsis* | canyon live oak |
| 28 | BL | 807 | QUDO | *Quercus douglasii* | blue oak |
| 29 | EO | 811 | QUEN | *Quercus engelmanni* | Engelmann oak |
| 30 | WO | 815 | QUGA4 | *Quercus garryana* | Oregon white oak |
| 31 | BO | 818 | QUKE | *Quercus kelloggii* | California black oak |
| 32 | VO | 821 | QULO | *Quercus lobata* | valley oak |
| 33 | IO | 839 | QUWI2 | *Quercus wislizenii* | interior live oak |
| 34 | BM | 312 | ACMA3 | *Acer macrophyllum* | bigleaf maple |
| 35 | BU | 333 | AECA | *Aesculus californica* | California buckeye |
| 36 | RA | 351 | ALRU2 | *Alnus rubra* | red alder |
| 37 | MA | 361 | ARME | *Arbutus menziesii* | Pacific madrone |
| 38 | GC | 431 | CHCHC4 | *Chrysolepis chrysophylla* var. *chrysophylla* | giant chinquapin |
| 39 | DG | 492 | CONU4 | *Cornus nuttallii* | Pacific dogwood |
| 40 | FL | 542 | FRLA | *Fraxinus latifolia* | Oregon ash |
| 41 | WN | 600 | JUGLA | *Juglans spp.* | walnut |
| 42 | TO | 631 | LIDE3 | *Lithocarpus densiflorus* | tanoak |
| 43 | SY | 730 | PLRA | *Platanus racemosa* | California sycamore |
| 44 | AS | 746 | POTR5 | *Populus tremuloides* | quaking aspen |
| 45 | CW | 747 | POBAT | *Populus balsamifera* ssp. *trichocarpa* | black cottonwood |
| 46 | WI | 920 | SALIX | *Salix* | willow |
| 47 | CN | 251 | TOCA | *Torreya californica* | California nutmeg |
| 48 | CL | 981 | UMCA | *Umbellularia californica* | California laurel |
| 49 | OH | 998 | 2TB |  | other hardwood2 |
| 50 | RW | 211 | SESE3 | *Sequioa sempervirens* | redwood |

1Set based on the USDA Forest Service NRM TAXA lists and the USDA Plants database.

2Other categories use FIA codes and NRM TAXA codes that best match the other category.

## 3.3 Habitat Type, Plant Association, and Ecological Unit Codes

Plant association codes recognized in the OC variant are shown in Appendix A. If an incorrect plant association code is entered or no code is entered, FVS will use the default plant association code, which is 46 (CWC221 ABCO-PSME). The plant association codes are used in the Fire and Fuels Extension (FFE) to set fuel loading in cases where there are no live trees in the first cycle. Users may enter the plant association code or the plant association FVS sequence number on the STDINFO keyword, when entering stand information from a database, or when using the SETSITE keyword without the PARMS option. If using the PARMS option with the SETSITE keyword, users must use the FVS sequence number for the plant association.

## 3.4 Site Index

Site index is used in some of the growth equations in the OC variant. Users should always use the same site curves that FVS uses as shown in table 3.4.1.

**Table 3.4.1 Site index reference curves used for species in the OC variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Reference Number** | **Reference** | **BHA or TTA\*** | **Base Age** |
| 1 | Hann & Scrivani (1987) | BHA | 50 |
| 2 | Dolph (1987) | BHA | 50 |
| 3 | Dahms (1964) | TTA | 50 |
| 4 | Powers (1972) | BHA | 50 |
| 5 | Porter & Wiant (1965) | TTA | 50 |
| 6 | Krumland and Eng (2005)\*\*\* | BHA | 50 |

\* Equation is based on total tree age (TTA) or breast height age (BHA)

\*\* Height at BHA50 should be entered even though the original site curve was a TTA curve

\*\*\* Equation form is presented on page 34 and coefficients are provided on page 68

**Table 3.4.2 Reference numbers for site index reference curves in Region 6 by species.**

| **Species Code** | | **R6 Reference Number** | | **Species Code** | **R6 Reference Number** |
| --- | --- | --- | --- | --- | --- |
| PC | | 1 | | LO | 5 |
| IC | | 1 | | CY | 5 |
| RC | | 1 | | BL | 5 |
| GF | | 1 | | EO | 5 |
| RF | | 2 | | WO | 4 |
| SH | | 2 | | BO | 4 |
| DF | | 1 | | VO | 4 |
| WH | | 1 | | IO | 5 |
| MH | | 2 | | BM | 5 |
| WB | | 3 | | BU | 4 |
| KP | | 3 | | RA | 5 |
| LP | | 3 | | MA | 5 |
| CP | | 3 | | GC | 5 |
| LM | | 3 | | DG | 4 |
| JP | | 1 | | FL | 4 |
| SP | | 1 | | WN | 5 |
| WP | | 1 | | TO | 5 |
| PP | | 1 | | SY | 5 |
| MP | | 1 | | AS | 5 |
| GP | | 1 | | CW | 5 |
| WJ | | 3 | | WI | 5 |
| BR | | 1 | | CN | 5 |
| GS | | 6 | | CL | 5 |
| PY | | 4 | | OH | 5 |
| OS | | 1 | | RW | 6 |
|  | |

For Region 6 Forests and BLM, the default site species is set from Plant Association. In the OC variant, if site index is provided for Douglas-fir but not for ponderosa pine, then ponderosa pine site index is estimated from the Douglas-fir site index using equation {3.4.1}; if site index is provided for ponderosa pine but not for Douglas-fir, then Douglas-fir site index is estimated from ponderosa pine site index using equation {3.4.2}.

{3.4.1} PPSI = 0.940792 \* DFSI

{3.4.2} DFSI = 1.062934 \* PPSI

where:

*PPSI* is site index for ponderosa pine

*DFSI* is site index for Douglas-fir

For other species not assigned a site index, site index is determined by first converting the site species site index to a Hann-Scrivani DF site index equivalent. This is done by dividing the site species site index by the site species adjustment factor located in table 3.4.4. Next, the species site index is determined by multiplying the converted site species site index by the species adjustment factor located in table 3.4.4.

**Table 3.4.4 Region 6 adjustment factors for 50-year site index values in the OC variant.**

| **Species Code** | **R6 Adjustment Factor** | **Species Code** | **R6 Adjustment Factor** |
| --- | --- | --- | --- |
| PC | 0.90 | LO | 0.28 |
| IC | 0.70 | CY | 0.42 |
| RC | 0.80 | BL | 0.34 |
| GF | 1 | EO | 0.28 |
| RF | 1 | WO | 0.40 |
| SH | 1 | BO | 0.56 |
| DF | 1 | VO | 0.76 |
| WH | 0.95 | IO | 0.28 |
| MH | 0.90 | BM | 0.76 |
| WB | 0.90 | BU | 0.56 |
| KP | 0.90 | RA | 0.76 |
| LP | 0.90 | MA | 0.76 |
| CP | 0.90 | GC | 0.76 |
| LM | 0.90 | DG | 0.40 |
| JP | 0.94 | FL | 0.70 |
| SP | 1 | WN | 0.40 |
| WP | 0.94 | TO | 0.76 |
| PP | 0.94 | SY | 0.76 |
| MP | 0.90 | AS | 0.40 |
| GP | 0.90 | CW | 0.76 |
| WJ | 0.76 | WI | 0.25 |
| BR | 0.76 | CN | 0.25 |
| GS | 1 | CL | 0.25 |
| PY | 0.4 | OH | 0.56 |
| OS | 0.76 | RW | 1 |

## 3.5 Maximum Density

Maximum stand density index can be set for each species using the SDIMAX or SETSITE keywords. If not set by the user, a default value is assigned as discussed below.

The default maximum SDI is set based on a user-specified, or default, plant association code. The SDI maximum for all species is assigned from the SDI maximum associated with the site species for the plant association code shown in Appendix A. SDI maximums were set based on growth basal area (GBA) analysis developed by Hall (1983) or an analysis of Current Vegetation Survey (CVS) plots in USFS Region 6 by Crookston (2008). Some SDI maximums associated with plant associations are unreasonably large, so SDI maximums are capped at 850. Maximum stand density index at the stand level is a weighted average, by basal area, of the individual species SDI maximums.

# 4.0 Growth Relationships

This chapter describes the functional relationships used to fill in missing tree data and calculate incremental growth. In FVS, trees are grown in either the small tree sub-model or the large tree sub-model depending on the diameter.

## 4.1 Height-Diameter Relationships

Height-diameter relationships in FVS are primarily used to estimate tree heights missing in the input data, and occasionally to estimate diameter growth on trees smaller than a given threshold diameter. In the OC variant, FVS will dub in heights by one of two methods. By default, non-valid ORGANON records will use the Curtis-Arney functional form as shown in equation {4.1.1} (Curtis 1967, Arney 1985).

If the input data contains at least three measured heights for a species, then FVS can switch to a logistic height-diameter equation {4.1.2} (Wykoff, et.al 1982) that may be calibrated to the input data. FVS will not automatically use equation {4.1.2} even if you have enough height values in the input data. To override this default, the user must use the NOHTDREG keyword to turn calibration on. Coefficients for equations {4.1.1} and {4.1.2} are given in Table 4.1.1.

In the OC variant, the default Curtis-Arney equation used depends on the “spline DBH” (given as *Z*). Values for “spline DBH” are given as *Z* in table 4.1.1.

{4.1.1} Curtis-Arney functional form

*DBH* <u>></u> *Z*”: *HT* = 4.5 + P2 \* exp[-P3 \* *DBH* ^ P4]

*DBH* < *Z*”: *HT* = [(4.5 + P2 \* exp[-P3 \* *Z* ^ P4] – 4.51) \* (*DBH* – 0.3) / (*Z* – 0.3)] + 4.51

{4.1.2} Wykoff functional form

HT = 4.5 + exp(B1 + B2 / (DBH + 1.0))

All valid ORGANON tree records use equation {4.1.3}. If equation {4.1.2} is being used for non-valid ORGANON tree records then heights estimated for valid ORGANON tree records are used along with measure tree heights in calibrating equation {4.1.2} to better align equation {4.1.2} with the equation ORGANON is using.

{4.1.3} ORGANON

HT = 4.5+exp(X1+X2\*DBH\*\*X3)

where:

*HT* is tree height

*Z* is the “spline DBH” shown in table 4.1.1

*DBH* is tree diameter at breast height

B1 - B2 are species-specific coefficients shown in table 4.1.1

P2 - P4 are species-specific coefficients shown in table 4.1.1

X1 - X3 are species-specific coefficients shown in table 4.1.1

Data were available to fit Curtis-Arney and Wykoff height-diameter coefficients for incense cedar, white fir, California red fir, Shasta red fir, Douglas-fir, knobcone pine, lodgepole pine, Jeffrey pine, sugar pine, western white pine, ponderosa pine, California foothill pine, Oregon white oak, California black oak, and Pacific madrone, and redwood. Curtis-Arney coefficients for the other species were fit from inventory data from other forests in Region 6.

**Table 4.1.1 Coefficients and “spline DBH” for equations {4.1.1} – {4.1.3} in the OC variant.**

| **Species Code** | **Curtis-Arney Coefficients** | | | | **Wykoff Coefficients** | | **Organon Coefficients** | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|
| **P2** | **P3** | **P4** | **Z** | **Default**  **B1** | **B2** | **X1** | **X2** | **X3** |
| PC | 8532.903 | 8.0343 | -0.1831 | 3 | 4.7874 | -7.317 |  |  |  |
| IC | 695.4196 | 7.5021 | -0.3852 | 6 | 5.2052 | -20.1443 | 8.776627 | -7.43837 | -0.16906 |
| RC | 487.5415 | 5.4444 | -0.3801 | 3 | 4.7874 | -7.317 | 6.148174 | -5.40093 | -0.38922 |
| GF | 467.307 | 6.1195 | -0.4325 | 3 | 5.218 | -14.8682 | 6.638004 | -5.44399 | -0.33929 |
| RF | 606.3002 | 6.2936 | -0.386 | 3 | 5.2973 | -17.2042 |  |  |  |
| SH | 606.3002 | 6.2936 | -0.386 | 3 | 5.2973 | -17.2042 |  |  |  |
| DF | 408.7614 | 5.4044 | -0.4426 | 3 | 5.3076 | -14.474 | 7.153156 | -5.36901 | -0.25833 |
| WH | 263.1274 | 6.9356 | -0.6619 | 3 | 4.7874 | -7.317 | 6.58804 | -5.35325 | -0.31898 |
| MH | 233.6987 | 6.9059 | -0.6166 | 3 | 4.7874 | -7.317 |  |  |  |
| WB | 89.5535 | 4.2281 | -0.6438 | 3 | 4.7874 | -7.317 |  |  |  |
| KP | 101.517 | 4.7066 | -0.954 | 2 | 4.6843 | -6.5516 |  |  |  |
| LP | 99.1568 | 12.13 | -1.3272 | 5 | 4.8358 | -9.2077 |  |  |  |
| CP | 514.1013 | 5.5983 | -0.2734 | 3 | 4.7874 | -7.317 |  |  |  |
| LM | 514.1013 | 5.5983 | -0.2734 | 3 | 4.7874 | -7.317 |  |  |  |
| JP | 744.7718 | 7.6793 | -0.3779 | 5 | 5.1419 | -19.8143 |  |  |  |
| SP | 944.9299 | 6.2428 | -0.3087 | 5 | 5.3371 | -19.3151 | 6.345117 | -5.30026 | -0.35264 |
| WP | 422.0948 | 6.0404 | -0.4525 | 3 | 5.2649 | -15.5907 |  |  |  |
| PP | 1267.759 | 7.4995 | -0.3286 | 2 | 5.382 | -20.4097 | 7.181264 | -5.90709 | -0.27534 |
| MP | 113.7962 | 4.7726 | -0.7601 | 3 | 4.7874 | -7.317 |  |  |  |
| GP | 79986.63 | 9.9284 | -0.1013 | 2 | 4.6236 | -13.0049 |  |  |  |
| WJ | 60.6009 | 4.1543 | -0.6277 | 3 | 4.7874 | -7.317 |  |  |  |
| BR | 91.7438 | 17.1081 | -1.4429 | 3 | 4.7874 | -7.317 |  |  |  |
| GS | 595.1068 | 5.8103 | -0.3821 | 3 | 5.3401 | -15.9354 |  |  |  |
| PY | 127.1698 | 4.8977 | -0.4668 | 3 | 4.7874 | -7.317 | 6.402691 | -4.79802 | -0.16318 |
| OS | 79986.63 | 9.9284 | -0.1013 | 3 | 4.7874 | -7.317 |  |  |  |
| LO | 105.0771 | 5.6647 | -0.6822 | 3 | 4.6618 | -8.3312 |  |  |  |
| CY | 105.0771 | 5.6647 | -0.6822 | 3 | 4.6618 | -8.3312 | 7.762149 | -6.0476 | -0.16308 |
| BL | 59.0941 | 6.1195 | -1.0552 | 3 | 4.6618 | -8.3312 | 5.020026 | -2.51228 | -0.42256 |
| EO | 59.0941 | 6.1195 | -1.0552 | 3 | 4.6618 | -8.3312 |  |  |  |
| WO | 40.3812 | 3.7653 | -1.1224 | 3 | 3.8314 | -4.8221 | 4.697531 | -3.51587 | -0.57665 |
| BO | 120.2372 | 4.1713 | -0.6113 | 3 | 4.4907 | -7.703 | 4.90734 | -3.18018 | -0.46654 |
| VO | 126.7237 | 3.18 | -0.6324 | 3 | 4.6618 | -8.3312 |  |  |  |
| IO | 55 | 5.5 | -0.95 | 3 | 4.6618 | -8.3312 |  |  |  |
| BM | 143.9994 | 3.5124 | -0.5511 | 3 | 4.6618 | -8.3312 |  |  |  |
| BU | 55 | 5.5 | -0.95 | 3 | 4.6618 | -8.3312 |  |  |  |
| RA | 94.5048 | 4.0657 | -0.9592 | 3 | 4.6618 | -8.3312 | 5.597591 | -3.19943 | -0.38783 |
| MA | 117.741 | 4.0764 | -0.6151 | 3 | 4.4809 | -7.5989 | 5.424573 | -3.56317 | -0.36178 |
| GC | 1176.97 | 6.3245 | -0.2739 | 3 | 4.6618 | -8.3312 | 9.216003 | -7.63409 | -0.15346 |
| DG | 403.3221 | 4.3271 | -0.2422 | 3 | 4.6618 | -8.3312 | 5.597591 | -3.19943 | -0.38783 |
| FL | 97.7769 | 8.8202 | -1.0534 | 3 | 4.6618 | -8.3312 |  |  |  |
| WN | 105.0771 | 5.6647 | -0.6822 | 3 | 4.6618 | -8.3312 |  |  |  |
| TO | 679.1972 | 5.5698 | -0.3074 | 3 | 4.6618 | -8.3312 | 7.398142 | -5.50993 | -0.19081 |
| SY | 55 | 5.5 | -0.95 | 3 | 4.6618 | -8.3312 |  |  |  |
| AS | 47.3648 | 15.6276 | -1.9266 | 3 | 4.6618 | -8.3312 |  |  |  |
| CW | 179.0706 | 3.6238 | -0.573 | 3 | 4.6618 | -8.3312 |  |  |  |
| WI | 149.5861 | 2.4231 | -0.18 | 3 | 4.6618 | -8.3312 | 3.862132 | -1.52948 | -0.62476 |
| CN | 55 | 5.5 | -0.95 | 3 | 4.6618 | -8.3312 |  |  |  |
| CL | 114.1627 | 6.021 | -0.7838 | 3 | 4.6618 | -8.3312 |  |  |  |
| OH | 40.3812 | 3.7653 | -1.1224 | 3 | 4.6618 | -8.3312 |  |  |  |
| RW | 595.1068 | 5.8103 | -0.3821 | 3 | 5.3401 | -15.9354 |  |  |  |

## 4.2 Bark Ratio Relationships

Bark ratio estimates are used to convert between diameter outside bark and diameter inside bark in various parts of the model. In the OC variant, bark ratio values are determined using estimates from DIB equations or by setting to a constant value. Equations used in the OC variant are shown in equations {4.2.1} – {4.2.3}. Coefficients (b1 and b2) and equation reference for these equations by species are shown in table 4.2.1.

{4.2.1} *DIB* = b1 \* *DBH*^b2 where *BRATIO* = *DIB* / *DBH*

{4.2.2} *DIB* = b1 + (b2 \* *DBH*) where *BRATIO* = *DIB* / *DBH*

{4.2.3} *BRATIO* = b1

where:

*BRATIO* is species-specific bark ratio (bounded to 0.8 <u><</u> *BRATIO* <u><</u> 0.99)

*DBH* is tree diameter at breast height

*DIB* is tree diameter inside bark at breast height

b1 - b2 are species-specific coefficients shown in table 4.2.1

**Table 4.2.1 Coefficients and equation reference for bark ratio equations {4.2.1} – {4.2.3} in the OC variant.**

| **Species Code** | **b1** | **b2** | **Equation to use** | **Equation Source** |
| --- | --- | --- | --- | --- |
| PC | 0.94967 | 1.0 | {4.2.1} | Wykoff et al |
| IC | 0.837291 | 1.0 | {4.2.1} | ORGANON |
| RC | 0.94967 | 1.0 | {4.2.1} | Wykoff et al - ORGANON |
| GF | 0.904973 | 1.0 | {4.2.1} | ORGANON |
| RF | -0.1593 | 0.8911 | {4.2.2} | Dolph PSW-368 |
| SH | -0.1593 | 0.8911 | {4.2.2} | Dolph PSW-368 |
| DF | 0.903563 | 0.989388 | {4.2.1} | ORGANON |
| WH | 0.93371 | 1 | {4.2.1} | Wykoff et al - ORGANON |
| MH | 0.93371 | 1 | {4.2.1} | Wykoff et al |
| WB | 0.9 | 0 | {4.2.3} | Wykoff et al |
| KP | 0.9329 | 0 | {4.2.3} | Wykoff (avg. of AF, IC, ES, LP, WP) |
| LP | 0.9 | 0 | {4.2.3} | Wykoff et al |
| CP | -0.4448 | 0.8967 | {4.2.2} | Dolph PSW-368 |
| LM | 0.9 | 0 | {4.2.3} | Wykoff et al |
| JP | -0.4448 | 0.8967 | {4.2.2} | Dolph PSW-368 |
| SP | .859045 | 1 | {4.2.1} | ORGANON |
| WP | -0.1429 | 0.8863 | {4.2.2} | Dolph PSW-368 |
| PP | 0.809427 | 1.016866 | {4.2.1} | ORGANON |
| MP | -0.4448 | 0.8967 | {4.2.2} | Dolph PSW-368 |
| GP | 0.9329 | 0 | {4.2.3} | Wykoff (avg. of AF, IC, ES, LP, WP) |
| WJ | 0.94967 | 1.0 | {4.2.1} | Wykoff et al |
| BR | 0.9 | 0 | {4.2.3} | Wykoff et al |
| GS | 0.94967 | 1.0 | {4.2.1} | Wykoff et al |
| PY | 0.97 | 1 | {4.2.1} | ORGANON |
| OS | -0.4448 | 0.8967 | {4.2.2} | Dolph PSW-368 |
| LO | -0.75739 | 0.93475 | {4.2.2} | Pillsbury and Kirkley |
| CY | -0.19128 | 0.96147 | {4.2.2} | Pillsbury and Kirkley |
| BL | -0.17324 | 0.94403 | {4.2.2} | Pillsbury and Kirkley |
| EO | -0.78572 | 0.92472 | {4.2.2} | Pillsbury and Kirkley |
| WO | 0.878457 | 1.02393 | {4.2.1} | ORGANON |
| BO | 0.889703 | 1.017811 | {4.2.1} | ORGANON |
| VO | -0.38289 | 0.93545 | {4.2.2} | Pillsbury and Kirkley |
| IO | 0.04817 | 0.92953 | {4.2.2} | Pillsbury and Kirkley |
| BM | 0.97059 | 0.993585 | {4.2.1} | ORGANON |
| BU | -0.26824 | 0.95767 | {4.2.2} | Pillsbury and Kirkley |
| RA | .947 | 1 | {4.2.1} | ORGANON |
| MA | 0.96317 | 1.0 | {4.2.1} | ORGANON |
| GC | 0.94448 | 0.987517 | {4.2.1} | ORGANON |
| DG | 0.94448 | 0.987517 | {4.2.1} | ORGANON |
| FL | -0.26824 | 0.95767 | {4.2.2} | Pillsbury and Kirkley |
| WN | -0.26824 | 0.95767 | {4.2.2} | Pillsbury and Kirkley |
| TO | 0.859151 | 1.017811 | {4.2.1} | ORGANON |
| SY | -0.26824 | 0.95767 | {4.2.2} | Pillsbury and Kirkley |
| AS | 0.075256 | 0.94373 | {4.2.2} | Pil. & Kirk.; Harlow & Harrar |
| CW | -0.26824 | 0.95767 | {4.2.2} | Pillsbury and Kirkley |
| WI | 0.94448 | 0.987517 | {4.2.1} | ORGANON |
| CN | -0.26824 | 0.95767 | {4.2.2} | Pillsbury and Kirkley |
| CL | 0.910499 | 1.01475 | {4.2.1} | ORGANON |
| OH | -0.26824 | 0.95767 | {4.2.2} | Pillsbury and Kirkley |
| RW | 0.7012 | 1.04862 | {4.2.1} | Castle 2021 |

## 4.3 Crown Ratio Relationships

Crown ratio equations are used for three purposes in FVS: (1) to estimate tree crown ratios missing from the input data for both live and dead trees; (2) to estimate change in crown ratio from cycle to cycle for live trees; and (3) to estimate initial crown ratios for regenerating trees established during a simulation.

### 4.3.1 Crown Ratio Dubbing

In the OC variant, crown ratios missing in the input data are predicted using different equations depending on tree species and size. For all species except giant sequoia and redwood, tree records representing dead trees, and tree records representing non-valid ORGANON live trees less than 1.0” in diameter use equations {4.3.1.1} and {4.3.1.2} to compute crown ratio. Equation coefficients are found in table 4.3.1.1. For non-valid ORGANON live trees over 1.0” in diameter see equations 4.3.1.3 through 4.3.1.6.

{4.3.1.1} *X* = R1 + R2 \* *HT* + R3 \* *BA* + *N(0,SD)*

{4.3.1.2} *CR* = ((*X* – 1) \* 10.0 + 1.0) / 100

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.05 <u><</u> *CR* <u><</u> 0.95)

*HT* is tree height

*BA* is total stand basal area

*N(0,SD)* is a random increment from a normal distribution with a mean of 0 and a standard deviation of SD

R1 – R3 are species-specific coefficients shown in table 4.3.1.1

**Table 4.3.1.1 Coefficients for the crown ratio equation {4.3.1.1} in the OC variant.**

| **Species Code** | **R1** | **R2** | **R3** | **SD** |
| --- | --- | --- | --- | --- |
| PC | 7.55854 | -0.01564 | -0.00906 | 1.9658 |
| IC | 7.55854 | -0.01564 | -0.00906 | 1.9658 |
| RC | 7.55854 | -0.01564 | -0.00906 | 1.9658 |
| GF | 8.04277 | 0.0072 | -0.01616 | 1.3167 |
| RF | 8.04277 | 0.0072 | -0.01616 | 1.3167 |
| SH | 8.04277 | 0.0072 | -0.01616 | 1.3167 |
| DF | 8.47703 | -0.01803 | -0.018140 | 1.3756 |
| WH | 7.55854 | -0.01564 | -0.00906 | 1.9658 |
| MH | 7.55854 | -0.01564 | -0.00906 | 1.9658 |
| WB | 6.48981 | -0.02982 | -0.00928 | 2.0426 |
| KP | 6.48981 | -0.02982 | -0.00928 | 2.0426 |
| LP | 6.48981 | -0.02982 | -0.00928 | 2.0426 |
| CP | 6.48981 | -0.02982 | -0.00928 | 2.0426 |
| LM | 6.48981 | -0.02982 | -0.00928 | 2.0426 |
| JP | 6.48981 | -0.02982 | -0.00928 | 2.0426 |
| SP | 6.48981 | -0.02982 | -0.00928 | 2.0426 |
| WP | 6.48981 | -0.02982 | -0.00928 | 2.0426 |
| PP | 6.48981 | -0.02982 | -0.00928 | 2.0426 |
| MP | 6.48981 | -0.02982 | -0.00928 | 2.0426 |
| GP | 6.48981 | -0.02982 | -0.00928 | 2.0426 |
| WJ | 9.000000 | 0.000000 | 0.000000 | 0.5 |
| BR | 8.04277 | 0.0072 | -0.01616 | 1.3167 |
| PY | 6.48981 | -0.02982 | -0.00928 | 2.0426 |
| OS | 6.48981 | -0.02982 | -0.00928 | 2.0426 |
| LO | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| CY | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| BL | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| EO | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| WO | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| BO | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| VO | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| IO | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| BM | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| BU | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| RA | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| MA | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| GC | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| DG | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| FL | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| WN | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| TO | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| SY | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| AS | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| CW | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| WI | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| CN | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| CL | 5.000000 | 0.000000 | 0.000000 | 0.5 |
| OH | 5.000000 | 0.000000 | 0.000000 | 0.5 |

Non-valid ORGANON tree records with diameter 1.0” or greater use a Weibull-based crown model developed by Dixon (1985) as described in Dixon (2002) is used to predict crown ratio for all live trees 1.0” in diameter or larger. To estimate crown ratio using this methodology, the average stand crown ratio is estimated from stand density index using equation {4.3.1.3}. Weibull parameters are then estimated from the average stand crown ratio using equations in equation set {4.3.1.4}. Individual tree crown ratio is then set from the Weibull distribution, equation {4.3.1.5} based on a tree’s relative position in the diameter distribution and multiplied by a scale factor, shown in equation {4.3.1.6}, which accounts for stand density. Crowns estimated from the Weibull distribution are bounded to be between the 5 and 95 percentile points of the specified Weibull distribution. Coefficients for the Weibull distribution were fit to equations from the Klamath Mountains (NC) and West Cascades (WC) variants, with species being matched to the closest curve of another appropriate species. Species index mapping and equation coefficients for each species are shown in tables 4.3.1.2 and 4.3.1.3.

{4.3.1.3} *ACR* = d0 + d1 \* *RELSDI* \* 100.0

{4.3.1.4} Weibull parameters A, B, and C are estimated from average crown ratio

*A* = a0

*B* = b0 + b1 \* ACR (*B* <u>></u> 3)

*C* = c0 + c1 \* ACR (*C* <u>></u> 2)

{4.3.1.5} *Y* = 1-exp(-((*X*-A)/B)^C)

{4.3.1.6} *SCALE =* 1.5 – *RELSDI*

where:

*ACR* is predicted average stand crown ratio for the species

*RELSDI* is the relative site density index (Stand *SDI* / Maximum *SDI*)

*A*, *B*, *C* are parameters of the Weibull crown ratio distribution

*X* is a tree’s crown ratio expressed as a percent / 10

*Y* is a trees rank in the diameter distribution (1 = smallest; ITRN = largest) divided by the total number of trees (ITRN) multiplied by *SCALE*

*SCALE* is a density dependent scaling factor(bounded to 0.3 <u><</u> *SCALE* <u><</u> 1.0)

*CCF* is stand crown competition factor

a0, b0-1, c0-1, and d0-1 are species-specific coefficients shown in tables 4.3.1.2 and 4.3.1.3

**Table 4.3.1.2 Mapped species index for the Weibull parameter equations {4.3.1.3} and {4.3.1.4} in the OC variant.**

| **Species Code** | **Species Index** | **Species Code** | **Species Index** |
| --- | --- | --- | --- |
| PC | 6 | LO | 7 |
| IC | 6 | CY | 7 |
| RC | 6 | BL | 7 |
| GF | 4 | EO | 7 |
| RF | 9 | WO | 7 |
| SH | 9 | BO | 7 |
| DF | 3 | VO | 7 |
| WH | 12 | IO | 7 |
| MH | 12 | BM | 14 |
| WB | 13 | BU | 16 |
| KP | 13 | RA | 15 |
| LP | 17 | MA | 5 |
| CP | 13 | GC | 16 |
| LM | 13 | DG | 16 |
| JP | 10 | FL | 16 |
| SP | 2 | WN | 16 |
| WP | 2 | TO | 8 |
| PP | 10 | SY | 16 |
| MP | 10 | AS | 16 |
| GP | 10 | CW | 16 |
| WJ | 1 | WI | 16 |
| BR | 1 | CN | 16 |
| PY | 1 | CL | 16 |
| OS | 3 | OH | 16 |

**Table 4.3.1.3 Coefficients for the Weibull parameter equations {4.3.1.3} and {4.3.1.4} in the OC variant.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Coefficient** | **Species Index** | | | | | | | | |
| **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** |
| a0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b0 | 0.52909 | 0.25115 | 0.52909 | 0.48464 | 0.08402 | 0.29964 | 0.06607 | 0.25667 | 0.16601 |
| b1 | 1.00677 | 1.05987 | 1.00677 | 1.01272 | 1.10297 | 1.05398 | 1.10705 | 1.06474 | 1.0815 |
| c0 | -3.48211 | 0.33383 | -3.48211 | -2.78353 | 0.91078 | -1.0927 | 2.04714 | 0.11729 | 0.9142 |
| c1 | 1.3878 | 0.63833 | 1.3878 | 1.27283 | 0.45819 | 0.80687 | 0.1507 | 0.61681 | 0.45768 |
| d0 | 7.48846 | 6.92893 | 7.48846 | 7.44422 | 3.64292 | 5.12357 | 6.82187 | 5.95912 | 6.14578 |
| d1 | -0.02899 | -0.04053 | -0.02899 | -0.04779 | -0.00317 | -0.01042 | -0.02247 | -0.01812 | -0.02781 |
| **Coefficient** | **Species Index** | | | | | | | |
| **10** | **11** | **12** | **13** | **14** | **15** | **16** | **17** |
| a0 | 0 | 0 | 0 | 0 | 1 | 1 | 0 | 0 |
| b0 | 0.03685 | 0.25667 | 0.49085 | 0.16267 | -0.81881 | -1.11274 | -0.2383 | -0.13121 |
| b1 | 1.09499 | 1.06474 | 1.01414 | 1.0734 | 1.05418 | 1.12314 | 1.18016 | 1.15976 |
| c0 | 4.0134 | 0.11729 | 3.16456 | 3.2885 | -2.36611 | 2.53316 | 3.04413 | 2.59824 |
| c1 | 0.04946 | 0.61681 | 0 | 0 | 1.20241 | 0 | 0 | 0 |
| d0 | 6.04928 | 5.95912 | 5.48853 | 6.48494 | 4.42 | 4.12048 | 4.62512 | 4.89032 |
| d1 | -0.01091 | -0.01812 | -0.00717 | -0.02325 | -0.01066 | -0.00636 | -0.01604 | -0.01884 |

For giant sequioa and redwood, equation {4.3.1.7} and equation {4.3.1.8} are used to compute crown ratio for live trees less than 1” and dead trees of all sizes. For live trees greater than 1”, equation {4.3.1.7} and equation {4.3.1.9} are used to compute crown ratio.

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

*SITE* Douglas-for site Index, unless species is Ponderosa pine then use Ponderosa’s.

X0-6, are species-specific coefficients shown in tables 4.3.1.4

**Table 4.3.1.4 Coefficients for the crown ratio equation {4.3.1.10} in the OC variant.**

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species Code** | **X0** | **X1** | **X2** | **X3** | **X4** | **X5** | **X6** | **Reference\*** |
| DF | 1.990155 | -0.00818 | -0.0047 | -0.39203 | 1.945708 | 0.007854 | 0.295594 | 1 |
| GF | 4.80009 | 0 | -0.00327 | -0.85874 | 0 | 0 | 0.275679 | 1 |
| PP | 2.024724 | -0.00195 | -0.00184 | -0.56891 | 4.831887 | 0.001653 | 0 | 1 |
| SP | 3.582314 | -0.00326 | 0 | -0.76525 | 3.043846 | 0 | 0 | 1 |
| IC | 3.127731 | -0.00439 | -0.00356 | -0.63793 | 0.977816 | 0.00585 | 0.25707 | 1 |
| WH | 0 | 0 | 0 | 0 | 3.246353 | 0 | 0 | 1 |
| RC | 4.49102 | 0 | -0.00132 | -1.01461 | 0 | 0.013406 | 0 | 2 |
| PY | 0 | 0 | 0 | 0 | 1.225565 | 0 | 0 | 1 |
| MA | 3.271131 | 0 | 0 | -0.84133 | 1.7917 | 0 | 0.927163 | 1 |
| GC | 0.387913 | -0.015 | -0.0041 | 0 | 2.104871 | 0 | 0.352773 | 1 |
| TO | 0.448848 | -0.00938 | -0.00182 | 0 | 0 | 0 | 0.233233 | 1 |
| CL | 1.285466 | -0.02446 | -0.00399 | 0 | 0 | 0 | 0 | 1 |
| BM | 1.000364 | -0.01064 | -0.00595 | 0 | 0 | 0 | 0.310673 | 1 |
| WO | 1.057866 | 0 | -0.00183 | -0.28645 | 0 | 0 | 0 | 3 |
| BO | 2.672851 | 0 | -0.0014 | -0.60597 | 0 | 0 | 0.430989 | 1 |
| RA | 0.567138 | -0.01038 | -0.00207 | 0 | 1.397962 | 0 | 0 | 2 |
| DG | 0 | 0 | -0.00484 | -0.56799 | 0 | 0.028132 | 0 | 1 |
| WI | 0 | 0 | -0.00484 | -0.56799 | 0 | 0.028132 | 0 | 1 |

1: Hann et al 2000, 2: Hann and Hanus 2002, 3: Gould et al 2008

### 4.3.2 Crown Ratio Change

Crown ratio change is estimated after growth, mortality and regeneration are estimated during a projection cycle. Crown ratio change is the difference between the crown ratio at the beginning of the cycle and the predicted crown ratio at the end of the cycle. Crown ratio predicted at the end of the projection cycle is estimated for non-valid ORGANON live tree records using the Weibull distribution, equations {4.3.1.3}-{4.3.1.6}, for all species except giant sequoia and redwood. For giant sequoia and redwood, crown ratio predicted at the end of the projection cycle is estimated using equations {4.3.1.7) and {4.3.1.9}. Crown ratio at the end of the projection cycle for valid ORGANON tree records is predicted using equations {4.3.1.10} and {4.3.1.11}. Crown change is checked to make sure it doesn’t exceed the change possible if all height growth produces new crown. Crown change is further bounded to 1% per year for the length of the cycle to avoid drastic changes in crown ratio. Equations {4.3.1.1} and {4.3.1.2} are not used when estimating crown ratio change.

### 4.3.3 Crown Ratio for Newly Established Trees

Crown ratios for newly established trees during regeneration are estimated using equation {4.3.3.1}. A random component is added in equation {4.3.3.1} to ensure that not all newly established trees are assigned exactly the same crown ratio.

{4.3.3.1} *CR* = 0.89722 – 0.0000461 \* *PCCF* + *RAN*

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.2 <u><</u> *CR* <u><</u> 0.9)

*PCCF* is crown competition factor on the inventory point where the tree is established

*RAN* is a small random component

## 4.4 Crown Width Relationships

In the OC variant all species use the FVS logic {4.4.1 – 4.4.6} to calculate crown width for each individual tree, based on individual tree and stand attributes. Crown width for each tree is reported in the tree list output table and used for percent canopy cover (*PCC*) calculations in the model. Within the ORGANON model routines, crown widths for stand density measures are calculated using ORGANON equations. However, ORGANON crown widths are not reported in any FVS output files or used outside the ORGANON routines so the equations are not reported here.

{4.4.1} Bechtold (2004); Equation 01

*DBH* <u>></u> *MinD: CW* = a1 + (a2 \* *DBH*) + (a3 \* *DBH*^2)

*DBH* < *MinD: CW* = [a1 + (a2 \* *MinD*) \* (a3 \* *MinD*^2)] \* (*DBH* / *MinD*)

{4.4.2} Bechtold (2004); Equation 02

*DBH* <u>></u> *MinD*: CW = a1 + (a2 \* *DBH*) + (a3 \* *DBH*^2) + (a4 \* *CR%*) + (a5 \* *BA*) + (a6 \* *HI*)

*DBH* < *MinD*: CW = [a1 + (a2 \* *MinD*) + (a3 \* *MinD*^2) + (a4 \* *CR%*) + (a5 \* *BA*) + (a6 \* *HI*)] \* (*DBH* / *MinD*)

{4.4.3} Crookston (2003); Equation 03

*DBH* <u>></u> *MinD*: *CW* = a1 \* exp(a2 + (a3 \* ln(*CL*)) + (a4 \* ln(*DBH*)) + (a5 \* ln(*HT*)) + (a6 \* ln(*BA*)))

*DBH* < *MinD*: *CW* = (a1 \* exp (a2 + (a3 \* ln(*CL*)) + (a4 \* ln(*MinD*)) + (a5 \* ln(*HT*)) + (a6 \* ln(*BA*))))\* (*DBH* / *MinD*)

{4.4.4} Crookston (2005); Equation 04

*DBH* <u>></u> *MinD: CW* = a1 \* *DBH^*a2

*DBH* < *MinD: CW* = [a1 \* *MinD*^a2] \* (*DBH* / *MinD*)

{4.4.5} Crookston (2005); Equation 05

*DBH* <u>></u> *MinD: CW* = (a1 \* *BF*) \* *DBH*^a2 \* *HT*^a3 \* *CL^*a4 \* (*BA* + 1.0)^a5 \* exp(*EL*)^a6

*DBH* < *MinD: CW* = [CW = (a1 \* BF) \* *MinD*^a2 \* HT^a3 \* CL^a4 \* (BA + 1.0)^a5 \* exp(EL)^a6] \* (*DBH* / *MinD*)

{4.4.6} Donnelly (1996); Equation 06

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

**Table 4.4.1 Coefficients for crown width equations {4.4.1}-{4.4.6} in the OC variant.**

| **Species Code** | **Equation Number\*** | **a1** | **a2** | **a3** | **a4** | **a5** | **a6** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| PC | 04105 | 4.6387 | 0.50874 | -0.22111 | 0.17505 | 0.06447 | -0.00602 |
| IC | 08105 | 5.0446 | 0.47419 | -0.13917 | 0.1423 | 0.04838 | -0.00616 |
| RC | 24205 | 6.2382 | 0.29517 | -0.10673 | 0.23219 | 0.05341 | -0.00787 |
| GF | 01703 | 1.03030 | 1.14079 | 0.20904 | 0.38787 | 0 | 0 |
| RF | 02006 | 3.1146 | 0.578 | 0 | 0 | 0 | 0 |
| SH | 02105 | 2.317 | 0.4788 | -0.06093 | 0.15482 | 0.05182 | 0 |
| DF | 20205 | 6.0227 | 0.54361 | -0.20669 | 0.20395 | -0.00644 | -0.00378 |
| WH | 26305 | 6.0384 | 0.51581 | -0.21349 | 0.17468 | 0.06143 | -0.00571 |
| MH | 26403 | 6.90396 | 0.55645 | -0.28509 | 0.2043 | 0 | 0 |
| WB | 10105 | 2.2354 | 0.6668 | -0.11658 | 0.16927 | 0 | 0 |
| KP | 10305 | 4.0069 | 0.84628 | -0.29035 | 0.13143 | 0 | -0.00842 |
| LP | 10805 | 6.6941 | 0.8198 | -0.36992 | 0.17722 | -0.01202 | -0.00882 |
| CP | 10805 | 6.6941 | 0.8198 | -0.36992 | 0.17722 | -0.01202 | -0.00882 |
| LM | 11301 | 4.0181 | 0.8528 | 0 | 0 | 0 | 0 |
| JP | 11605 | 4.0217 | 0.66815 | -0.11346 | 0.09689 | -0.636 | 0 |
| SP | 11705 | 3.593 | 0.63503 | -0.22766 | 0.17827 | 0.04267 | -0.0029 |
| WP | 11905 | 5.3822 | 0.57896 | -0.19579 | 0.14875 | 0 | -0.00685 |
| PP | 12205 | 4.7762 | 0.74126 | -0.28734 | 0.17137 | -0.00602 | -0.00209 |
| MP | 12702 | -2.4909 | 1.0716 | 0 | 0.0648 | 0 | -0.1127 |
| GP | 12702 | -2.4909 | 1.0716 | 0 | 0.0648 | 0 | -0.1127 |
| WJ | 06405 | 5.1486 | 0.73636 | -0.46927 | 0.39114 | -0.05429 | 0 |
| BR | 09204 | 2.8232 | 0.66326 | 0 | 0 | 0 | 0 |
| GS | 21104 | 3.7023 | 0.52618 | 0 | 0 | 0 | 0 |
| PY | 23104 | 6.1297 | 0.45424 | 0 | 0 | 0 | 0 |
| OS | 11605 | 4.0217 | 0.66815 | -0.11346 | 0.09689 | -0.636 | 0 |
| LO | 80102 | -16.1696 | 1.7456 | 0 | 0.0925 | 0 | -0.1956 |
| CY | 80502 | 0.2738 | 1.0534 | 0 | 0.035 | 0 | -0.1385 |
| BL | 80702 | 2.711 | 1.5159 | 0 | 0.0415 | -0.0271 | 0 |
| EO | 80702 | 2.711 | 1.5159 | 0 | 0.0415 | -0.0271 | 0 |
| WO | 81505 | 2.4857 | 0.70862 | 0 | 0.10168 | 0 | 0 |
| BO | 81802 | 1.6306 | 0.9867 | 0 | 0.0556 | 0 | -0.1199 |
| VO | 82102 | -2.1068 | 1.9385 | 0 | 0.086 | 0 | 0 |
| IO | 83902 | 0.7146 | 1.546 | 0 | 0 | 0 | -0.1121 |
| BM | 31206 | 7.5183 | 0.4461 | 0 | 0 | 0 | 0 |
| BU | 31206 | 7.5183 | 0.4461 | 0 | 0 | 0 | 0 |
| RA | 35106 | 7.0806 | 0.4771 | 0 | 0 | 0 | 0 |
| MA | 36102 | 4.9133 | 0.9459 | 0 | 0.0611 | 0 | 0.0523 |
| GC | 63102 | 3.115 | 0.7966 | 0 | 0.0745 | -0.0053 | 0.0523 |
| DG | 35106 | 7.0806 | 0.4771 | 0 | 0 | 0 | 0 |
| FL | 31206 | 7.5183 | 0.4461 | 0 | 0 | 0 | 0 |
| WN | 31206 | 7.5183 | 0.4461 | 0 | 0 | 0 | 0 |
| TO | 63102 | 3.115 | 0.7966 | 0 | 0.0745 | -0.0053 | 0.0523 |
| SY | 63102 | 3.115 | 0.7966 | 0 | 0.0745 | -0.0053 | 0.0523 |
| AS | 74605 | 4.7961 | 0.64167 | -0.18695 | 0.18581 | 0 | 0 |
| CW | 74705 | 4.4327 | 0.41505 | -0.23264 | 0.41477 | 0 | 0 |
| WI | 31206 | 7.5183 | 0.4461 | 0 | 0 | 0 | 0 |
| CN | 98102 | 2.4247 | 1.3174 | 0 | 0.0786 | 0 | 0 |
| CL | 98102 | 2.4247 | 1.3174 | 0 | 0.0786 | 0 | 0 |
| OH | 31206 | 7.5183 | 0.4461 | 0 | 0 | 0 | 0 |
| RW | 21104 | 3.7023 | 0.52618 | 0 | 0 | 0 | 0 |

\*Equation number is a combination of the species FIA code (###) and equation source (##).

**Table 4.4.2.2 *MinD* values and data bounds for equations {4.4.1}-{4.4.6} in the OC variant.**

| **Species Code** | **Equation Number\*** | ***MinD*** | **ELmin** | ***EL* max** | ***HI* min** | ***HI* max** | ***CW* max** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| PC | 04105 | 1.0 | 2 | 52 | n/a | n/a | 49 |
| IC | 08105 | 1.0 | 5 | 62 | n/a | n/a | 78 |
| RC | 24205 | 1.0 | 1 | 72 | n/a | n/a | 45 |
| GF | 01703 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| RF | 02006 | 1.0 | n/a | n/a | n/a | n/a | 65 |
| SH | 02105 | 1.0 | n/a | n/a | n/a | n/a | 65 |
| DF | 20205 | 1.0 | 1 | 75 | n/a | n/a | 80 |
| WH | 26305 | 1.0 | 1 | 72 | n/a | n/a | 54 |
| MH | 26403 | n/a | n/a | n/a | n/a | n/a | 45 |
| WB | 10105 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| KP | 10305 | 1.0 | 12 | 49 | n/a | n/a | 46 |
| LP | 10805 | 1.0 | 1 | 79 | n/a | n/a | 40 |
| CP | 10805 | 1.0 | 1 | 79 | n/a | n/a | 40 |
| LM | 11301 | 5.0 | n/a | n/a | n/a | n/a | 25 |
| JP | 11605 | 1.0 | n/a | n/a | n/a | n/a | 39 |
| SP | 11705 | 1.0 | 5 | 75 | n/a | n/a | 56 |
| WP | 11905 | 1.0 | 10 | 75 | n/a | n/a | 35 |
| PP | 12205 | 1.0 | 13 | 75 | n/a | n/a | 50 |
| MP | 12702 | 5.0 | n/a | n/a | -69 | -4 | 54 |
| GP | 12702 | 5.0 | n/a | n/a | -69 | -4 | 54 |
| WJ | 06405 | 1.0 | n/a | n/a | n/a | n/a | 36 |
| BR | 09204 | 1.0 | n/a | n/a | n/a | n/a | 38 |
| GS | 21104 | 1.0 | n/a | n/a | n/a | n/a | 39 |
| PY | 23104 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| OS | 11605 | 1.0 | n/a | n/a | n/a | n/a | 39 |
| LO | 80102 | 5.0 | n/a | n/a | -73 | -54 | 53 |
| CY | 80502 | 5.0 | n/a | n/a | -60 | -5 | 49 |
| BL | 80702 | 5.0 | n/a | n/a | n/a | n/a | 61 |
| EO | 80702 | 5.0 | n/a | n/a | n/a | n/a | 61 |
| WO | 81505 | 1.0 | n/a | n/a | n/a | n/a | 39 |
| BO | 81802 | 5.0 | n/a | n/a | -47 | -8 | 52 |
| VO | 82102 | 5.0 | n/a | n/a | n/a | n/a | 47 |
| IO | 83902 | 5.0 | n/a | n/a | -60 | -5 | 37 |
| BM | 31206 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| BU | 31206 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| RA | 35106 | 1.0 | n/a | n/a | n/a | n/a | 35 |
| MA | 36102 | 5.0 | n/a | n/a | -55 | 15 | 43 |
| GC | 63102 | 5.0 | n/a | n/a | -55 | 15 | 41 |
| DG | 35106 | 1.0 | n/a | n/a | n/a | n/a | 35 |
| FL | 31206 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| WN | 31206 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| TO | 63102 | 5.0 | n/a | n/a | -55 | 15 | 41 |
| SY | 63102 | 5.0 | n/a | n/a | -55 | 15 | 41 |
| AS | 74605 | 1.0 | n/a | n/a | n/a | n/a | 45 |
| CW | 74705 | 1.0 | n/a | n/a | n/a | n/a | 56 |
| WI | 31206 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| CN | 98102 | 5.0 | n/a | n/a | n/a | n/a | 44 |
| CL | 98102 | 5.0 | n/a | n/a | n/a | n/a | 44 |
| OH | 31206 | 1.0 | n/a | n/a | n/a | n/a | 30 |
| RW | 21104 | 1.0 | n/a | n/a | n/a | n/a | 39 |

**Table 4.4.2.3 *BF* values for equation {4.4.5} in the OC variant.**

| **Species Code** | **Location Code** | |
| --- | --- | --- |
| **610, 710, 711** | **611, 712** |
| IC | 0.903 | 0.821 |
| DF | 1.000 | 0.961 |
| WH | 1.000 | 1.028 |
| MH | 0.900 | 0.900 |
| LP | 0.944 | 0.944 |
| SP | 1.048 | 1.000 |
| WP | 1.081 | 1.000 |
| PP | 0.918 | 0.951 |
| RA | 0.810 | 0.810 |

\*Any *BF* values not listed in Table 4.4.2.3 are assumed to be *BF* = 1.0

## 4.5 Crown Competition Factor

The OC variant uses crown competition factor (*CCF*) as a predictor variable in some growth relationships. Crown competition factor (Krajicek and others 1961) is a relative measurement of stand density that is based on tree diameters. Individual tree *CCFt* values estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open-grown. Stand *CCF* is the summation of individual tree (*CCFt*)values. A stand *CCF* value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand.

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

**Table 4.4.1.1 Coefficients and equation reference for equations {4.5.1} in the OC variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **R1** | **R2** | **R3** |
| DF | 4.6366 | 1.6078 | -0.00963 |
| GF | 6.188 | 1.0069 | 0 |
| PP | 3.4835 | 1.343 | -0.00825 |
| SP | 4.660055 | 1.070186 | 0 |
| IC | 3.2837 | 1.2031 | -0.00719 |
| WH | 4.5652 | 1.4147 | 0 |
| RC | 4 | 1.65 | 0 |
| PY | 4.5652 | 1.4147 | 0 |
| MA | 3.429863 | 1.35323 | 0 |
| GC | 2.97939 | 1.551244 | -0.01416 |
| TO | 4.4443 | 1.704 | 0 |
| CL | 4.4443 | 1.704 | 0 |
| BM | 4.0953 | 2.3849 | -0.01163 |
| WO | 3.078564 | 1.924221 | 0 |
| BO | 3.3625 | 2.0303 | -0.00733 |
| RA | 8 | 1.53 | 0 |
| DG | 2.97939 | 1.551244 | -0.01416 |
| WI | 2.97939 | 1.551244 | -0.01416 |

## 4.6 Small Tree Growth Relationships

Non-valid ORGANON tree records are considered “small trees” for FVS modeling purposes when they are smaller than some threshold diameter. This threshold diameter is set to 3.0” for all species in the OC variant. All valid ORGANON tree records are considered “large trees” for FVS modeling purposes (see section 4.7).

The small tree model is height-growth driven, meaning height growth is estimated first and diameter growth is estimated from height growth. These relationships are discussed in the following sections.

### 4.6.1 Small Tree Height Growth

The small-tree height increment model predicts 5-year height growth (*HTG*) for small trees. For all species except giant sequoia and redwood, height growth in the OC variant is estimated by using equations {4.6.1.1} – {4.6.1.4}, and then modified with equation {4.6.1.5} to account for differences in species, site index, and geographic area. Data was not available to fit small-tree height growth models for the OC variant. Equations {4.6.1.1}, {4.6.1.3}, and {4.6.1.4} were taken from the Western Sierras (WS) variant. Equation {4.6.1.2} was derived from equations in Hann and Scrivani (1987) and Ritchie and Hann (1986). Equation reference and adjustment factors are shown in table 4.6.1.1.

{4.6.1.1} Pines

*POTHTG* = 1.75 \* exp(0.7452 – (0.003271 \* *BAL*) – (0.1632 \* *CR*) + (0.0217 \* *CR*^2) + (0.00536\* *SI*))

{4.6.1.2} Firs

*POTHTG* = 1.016605 \* *DOHTG* \* (1 – exp(-0.426558 \* *CR)*) \* (exp(2.54119 \* (*RELHT^*0.250537 – 1)))

*DOHTG* = (11.35 + 2.157 \* SI) / (29 – 0.05 \* SI)

{4.6.1.3} California black oak

*POTHTG* = exp(3.817 – (0.7829 \* ln(*BAL*)))

{4.6.1.4} Tanoak

*POTHTG* = exp(3.385 – (0.5898 \* ln(*BAL*)))

where:

*POTHTG* is potential height growth

*BAL* is total basal area in trees larger than the subject tree

*CR* is crown ratio expressed as a percent divided by 10 for equations {4.6.1.1}, {4.6.1.3}, and {4.6.1.4}; is crown ratio expressed as a proportion for equation {4.6.1.2}

*SI* is species site index

For all species except firs, the potential height growth is adjusted based on a species-specific adjustment factor (*X*), and by the site index of the geographic area using equation {4.6.1.5}. A small random deviation (bounded between -0.2 and 0.05) is then added to the predicted height growth to assure a good distribution of estimated height growths.

{4.6.1.5} *HTG* = *POTHTG* \* [0.8 + (0.004 \* (*SI* – 50))] \* X

where:

*HTG* is estimated height growth for the cycle

*POTHTG* is potential height growth

*SI* is species site index

*X* is a species-specific adjustment factor shown in table 4.6.1.1

For redwood and giant sequoia, a potential height growth curve is used to estimate small tree height growth. Height growth is computed by subtracting the current predicted height from the predicted height 5 years in the future, as depicted in equation {4.6.1.6}.

{4.6.1.6} *POTHTG* = 2.242202 \* *SI* \* [1.0 – exp (-0.010742 \* *AGE1*)]^ 0.919076

where:

*POTHTG* is predicted tree height, used for current and future height growth

*SI* is species site index

*AGE1* is tree age

A*GE1* = 1/ -0.010742 \*(ln(1-(*HT*/2.242202/*SI*)^(1/ 0.919076))

**Table 4.6.1.1 Equation reference, adjustment factors and diameter range where weighting between small and large tree models occurs in the OC variant.**

| **Species Code** | ***POTHTG* Equation** | **Adjustment Factor (X)** | ***Xmin*** | ***Xmax*** |
| --- | --- | --- | --- | --- |
| PC | {4.6.1.2} | 1.0 | 2.0 | 4.0 |
| IC | {4.6.1.2} | 1.0 | 2.0 | 4.0 |
| RC | {4.6.1.2} | 0.9 | 2.0 | 4.0 |
| GF | {4.6.1.2} | 1.1 | 2.0 | 4.0 |
| RF | {4.6.1.2} | 1.1 | 2.0 | 4.0 |
| SH | {4.6.1.2} | 1.1 | 2.0 | 4.0 |
| DF | {4.6.1.2} | 1.1 | 2.0 | 4.0 |
| WH | {4.6.1.2} | 0.8 | 2.0 | 4.0 |
| MH | {4.6.1.2} | 0.9 | 2.0 | 4.0 |
| WB | {4.6.1.1} | 0.9 | 2.0 | 4.0 |
| KP | {4.6.1.1} | 1.0 | 2.0 | 4.0 |
| LP | {4.6.1.1} | 1.0 | 2.0 | 4.0 |
| CP | {4.6.1.1} | 1.0 | 2.0 | 4.0 |
| LM | {4.6.1.1} | 1.0 | 2.0 | 4.0 |
| JP | {4.6.1.1} | 1.0 | 2.0 | 4.0 |
| SP | {4.6.1.1} | 1.1 | 2.0 | 4.0 |
| WP | {4.6.1.1} | 1.1 | 2.0 | 4.0 |
| PP | {4.6.1.1} | 1.0 | 2.0 | 4.0 |
| MP | {4.6.1.1} | 1.1 | 2.0 | 4.0 |
| GP | {4.6.1.1} | 0.9 | 2.0 | 4.0 |
| WJ | {4.6.1.1} | 1.0 | 2.0 | 4.0 |
| BR | {4.6.1.2} | 0.9 | 2.0 | 4.0 |
| GS | {4.6.1.6} | 1.0 | 2.0 | 10.0 |
| PY | {4.6.1.2} | 0.8 | 2.0 | 4.0 |
| OS | {4.6.1.1} | 1.0 | 2.0 | 4.0 |
| LO | {4.6.1.3} | 1.1 | 2.0 | 4.0 |
| CY | {4.6.1.3} | 0.9 | 2.0 | 4.0 |
| BL | {4.6.1.3} | 1.1 | 2.0 | 4.0 |
| EO | {4.6.1.3} | 1.1 | 2.0 | 4.0 |
| WO | {4.6.1.3} | 1.0 | 2.0 | 4.0 |
| BO | {4.6.1.3} | 1.1 | 2.0 | 4.0 |
| VO | {4.6.1.3} | 1.0 | 2.0 | 4.0 |
| IO | {4.6.1.3} | 1.1 | 2.0 | 4.0 |
| BM | {4.6.1.4} | 1.0 | 2.0 | 4.0 |
| BU | {4.6.1.3} | 1.0 | 2.0 | 4.0 |
| RA | {4.6.1.3} | 1.0 | 2.0 | 4.0 |
| MA | {4.6.1.4} | 1.0 | 2.0 | 4.0 |
| GC | {4.6.1.3} | 1.0 | 2.0 | 4.0 |
| DG | {4.6.1.4} | 1.0 | 2.0 | 4.0 |
| FL | {4.6.1.3} | 1.0 | 2.0 | 4.0 |
| WN | {4.6.1.3} | 1.1 | 2.0 | 4.0 |
| TO | {4.6.1.4} | 1.0 | 2.0 | 4.0 |
| SY | {4.6.1.3} | 1.1 | 2.0 | 4.0 |
| AS | {4.6.1.3} | 1.2 | 2.0 | 4.0 |
| CW | {4.6.1.3} | 1.2 | 2.0 | 4.0 |
| WI | {4.6.1.3} | 1.1 | 2.0 | 4.0 |
| CN | {4.6.1.2} | 0.8 | 2.0 | 4.0 |
| CL | {4.6.1.4} | 1.0 | 2.0 | 4.0 |
| OH | {4.6.1.3} | 1.0 | 2.0 | 4.0 |
| RW | {4.6.1.6} | 1.0 | 2.0 | 10.0 |

For all species, a small random error is then added to the height growth estimate. The estimated height growth (*HTG*) is then adjusted to account for cycle length, user defined small-tree height growth adjustments, and adjustments due to small tree height model calibration from the input data.

Height growth estimates from the small-tree model are weighted with the height growth estimates from the large tree model over a range of diameters (*Xmin* and *Xmax*) in order to smooth the transition between the two models. For example, the closer a tree’s *DBH* value is to the minimum diameter (*Xmin*), the more the growth estimate will be weighted towards the small-tree growth model. The closer a tree’s *DBH* value is to the maximum diameter (*Xmax*), the more the growth estimate will be weighted towards the large-tree growth model. If a tree’s *DBH* value falls outside of the range given by *Xmin* and *Xmax*, then the model will use only the small-tree or large-tree growth model in the growth estimate. The weight applied to the growth estimate is calculated using equation {4.6.1.7}, and applied as shown in equation {4.6.1.8}. The range of diameters where this weighting occurs for each species is shown above in table 4.6.1.1.

{4.6.1.7}

DBH <u><</u> Xmin: XWT = 0

Xmin < DBH < Xmax: XWT = (DBH - Xmin) / (Xmax - Xmin)

DBH <u>></u> Xmax: XWT = 1

{4.6.1.8}

Estimated growth = [(1 - *XWT*) \* *STGE*] + [*XWT* \* *LTGE*]

Giant sequoia and redwood estimated growth = [(1 - *XWT*) \* ((*STGE+LTGE*)/*2.0)*] + [*XWT* \* *LTGE*]

where:

*XWT* is the weight applied to the growth estimates

*DBH* is tree diameter at breast height

*Xmax* is the maximum *DBH* where weighting between small and large tree models occurs

*Xmin* is the minimum *DBH* where weighting between small and large tree models occurs

*STGE* is the growth estimate obtained using the small-tree growth model

*LTGE* is the growth estimate obtained using the large-tree growth model

### ****4.6.2 Small Tree Diameter Growth****

As stated previously, for trees being projected with the small tree equations, height growth is predicted first, and then diameter growth. So both height at the beginning of the cycle and height at the end of the cycle are known when predicting diameter growth. Small tree diameter growth for trees over 4.5 feet tall is calculated as the difference of predicted diameter at the start of the projection period and the predicted diameter at the end of the projection period, adjusted for bark ratio. Diameter growth is predicted with the height-diameter equations shown in section 4.1 for non-valid ORGANON tree records inverted so diameter is a function of height. In the OC variant, diameter growth of all non-valid ORGANON small trees is a weighted average of the small and large tree predictions when the *DBH* is between 1.5” and 3.0”. Diameter growth estimates for giant sequoia and redwood are weighted with the diameter growth estimates from the large-tree model when DBH is between 2” and 7”, in a similar manner to the weighting explained in section 4.6.1. By definition, diameter growth is zero for trees less than 4.5 feet tall.

## 4.7 Large Tree Growth Relationships

For non-valid ORGANON tree records, trees are considered “large trees” for FVS modeling purposes when they are equal to, or larger than, some threshold diameter. This threshold diameter is set to 3.0” for all species in the OC variant. In addition, all valid ORGANON tree records are considered large trees for FVS modeling purposes.

The large-tree model is driven by diameter growth meaning diameter growth is estimated first, and then height growth is estimated from diameter growth and other variables. These relationships are discussed in the following sections.

### 4.7.1 Large Tree Diameter Growth

The large tree diameter growth model used in most FVS variants is described in section 7.2.1 in Dixon (2002). For most variants, instead of predicting diameter increment directly, the natural log of the periodic change in squared inside-bark diameter (ln(*DDS*)) is predicted (Dixon 2002; Wykoff 1990; Stage 1973; and Cole and Stage 1972). ORGANON based diameter growth equations are constructed similarly, they predict periodic change in diameter squared as well, however they include bark, where FVS does not.

In the OC variant, there are three primary equations that estimate large-tree diameter growth. The non-valid ORGANON tree records use equation {4.7.1.1} except for giant sequoia and redwood which use equation {4.7.1.2). Coefficients for these equations are shown in tables 4.7.1.2 and 4.7.1.4. These equations yield a 10-year estimate, except for tanoak which is a 5-year estimate. Equation {4.7.1.3} is used for all species except tanoak to convert the 10-year estimate to a 5-year estimate.

All valid ORGANON tree records use equation {4.7.1.4}, these were developed by Hann and Hanus 2002.

In the OC variant, all non-valid ORGANON tree records are mapped into a species index as shown in table 4.7.1.1. The coefficients for each species for equation 4.7.1.1 will depend on the species index of the subject species.

{4.7.1.1} Used for all species except giant sequoia and redwood

ln(*DDS* )= b1 + (b2 \* *EL*) + (b3 \* *EL*^2) + (b4 \* ln(*SI*)) + (b5 \* sin(*ASP*)) + (b6 \* cos(*ASP*)) + (b7 \* *SL*) + (b8 \* *SL*^2) + (b9 \* ln(*DBH*)) + (b10 \* *CR*) + (b11 \* *CR*^2) + (b12 \* *DBH*^2) + (b13 \* *BAL* / (ln(*DBH* + 1.0))) + (b14 \* *PCCF*) + (b15 \* *RELHT*) + (b16 \* ln(*BA*)) + (b17 \* *BAL*)

{4.7.1.2} Used for giant sequoia and redwood

*DI* = exp(-3.502444+ (0.185911 \* ln(*DBH*)) + (-0.000073 \* *DBH*^2) + (-0.001796 \* *PBAL*) + (- 0.42078 \* *PRD*) + (0.589318 \* ln(*CR*)) + (0.415435 \* ln(*SI*)) + (-0.000926 \* *SL*) + (- 0.002203 \* (*SL*) \* COS(*ASP*)))

{4.7.1.3} Used for all species except tanoak

ln(*DDS)* = ln(exp(*DDS)* / 2.0)

where:

*DDS* is the square of the 10-year diameter growth increment

*DI* is 10-year outside bark diameter growth increment

*EL* is stand elevation in hundreds of feet

*SI* is species site index (for mountain hemlock only, *SI* = *SI* \* 3.281)

*ASP* is stand aspect

*SL* is stand slope

*CR* is crown ratio expressed as a proportion

*DBH* is tree diameter at breast height

*BAL* is total basal area in trees larger than the subject tree

*PBAL* is point basal area in trees larger than the subject tree

*PCCF* is crown competition factor on the inventory point where the tree is established

*RELHT* is tree height divided by average height of the 40 largest diameter trees in the stand

*BA* is total stand basal area

*PRD* isrelative density of the inventory point (point Zeide SDI / point SDI max)

b1  is a location-specific coefficient shown in table 4.7.1.2

b2- b17 are species-specific coefficients shown in table 4.7.1.4

**Table 4.7.1.1 Mapped species index for each species for large-tree diameter growth on non-valid ORGANON tree records in the OC variant.**

| **Alpha Code** | **Species Index** | **Alpha Code** | **Species Index** |
| --- | --- | --- | --- |
| PC | 1 | LO | 10 |
| IC | 1 | CY | 10 |
| RC | 1 | BL | 10 |
| GF | 2 | EO | 10 |
| RF | 3 | WO | 10 |
| SH | 3 | BO | 10 |
| DF | 4 | VO | 10 |
| WH | 7 | IO | 10 |
| MH | 7 | BM | 10 |
| WB | 6 | BU | 10 |
| KP | 5 | RA | 10 |
| LP | 6 | MA | 11 |
| CP | 5 | GC | 11 |
| LM | 5 | DG | 11 |
| JP | 9 | FL | 10 |
| SP | 7 | WN | 10 |
| WP | 8 | TO | 13 |
| PP | 9 | SY | 10 |
| MP | 9 | AS | 10 |
| GP | 5 | CW | 10 |
| WJ | 5 | WI | 10 |
| BR | 2 | CN | 5 |
| GS | 12 | CL | 10 |
| PY | 5 | OH | 10 |
| OS | 9 | RW | 12 |

**Table 4.7.1.2 b1 values by location class for equation {4.7.1.1} in the OC variant.**

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Location Class** | **Species Index** | | | | | | |
| **1** | **2** | **3** | **4** | **5** | **6** | **7** |
| 1 | -3.428338 | -2.108357 | -2.073942 | -1.877695 | 0.564402 | -2.058828 | -2.397678 |
| 2 | -3.966547 | 0 | -1.943608 | -2.099646 | 0 | -1.596998 | 0 |
| 3 | 0 | 0 | 0 | -2.211587 | 0 | 0 | 0 |
| 4 | 0 | 0 | 0 | -1.955301 | 0 | 0 | 0 |
| 5 | 0 | 0 | 0 | -2.078432 | 0 | 0 | 0 |
| **Location Class** | **Species Index** | | | | | |  |
| **8** | **9** | **10** | **11** | **12** | **13** |  |
| 1 | -1.626879 | -2.922255 | -1.958189 | -3.3447 | 0 | -0.94563 |  |
| 2 | 0 | 0 | 0 | 0 | 0 | 0 |  |
| 3 | 0 | 0 | 0 | 0 | 0 | 0 |  |
| 4 | 0 | 0 | 0 | 0 | 0 | 0 |  |
| 5 | 0 | 0 | 0 | 0 | 0 | 0 |  |

**Table 4.7.1.3 Classification of location class by species index and location code in the OC variant.**

|  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Location Code** | **Species Index** | | | | | | | | | | | | |
| **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** | **10** | **11** | **12** | **13** |
| 610 – Rogue River  710 – BLM Roseburg,  711 – BLM Medford | 1 | 1 | 1 | 4 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 611 - Siskiyou,  712 – BLM Coos Bay | 1 | 1 | 1 | 5 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

**Table 4.7.1.4 Coefficients (b2- b17) for equation {4.7.1.1} in the OC variant.**

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Coefficient** | **Species Index** | | | | | | |
| **1** | **2** | **3** | **4** | **5** | **6** | **7** |
| b2 | 0 | 0.0301 | 0.0248 | -0.0141 | 0 | 0 | 0 |
| b3 | 0 | -0.00030732 | -0.00033429 | 0.00024083 | 0 | 0 | 0 |
| b4 | 0.820451 | 0.365679 | 0.492695 | 0.759305 | 0 | 0.566946 | 0.963375 |
| b5 | 0 | 0.09735 | 0.13918 | 0.018681 | 0.951834 | 0 | -0.014463 |
| b6 | 0 | -0.315227 | -0.444594 | -0.151727 | 0.64987 | 0 | -0.280294 |
| b7 | 0 | -0.206267 | 0 | -0.339369 | 0 | 0 | -0.581722 |
| b8 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b9 | 0.950418 | 1.182104 | 1.186676 | 0.716226 | 1.077154 | 1.218279 | 0.88615 |
| b10 | 1.815305 | 2.856578 | 2.763519 | 3.272451 | -0.276387 | 3.167164 | 1.47865 |
| b11 | 0 | -1.093354 | -0.871061 | -1.642904 | 1.063732 | -1.568333 | 0 |
| b12 | -0.0002385 | -0.0006362 | -0.0004572 | -0.0002723 | 0 | -0.0014178 | -0.0002528 |
| b13 | -0.005433 | -0.005992 | -0.003728 | -0.008787 | 0 | 0 | -0.006263 |
| b14 | -0.000779 | -0.001014 | 0 | -0.000224 | 0 | -0.000338 | 0 |
| b15 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| b16 | -0.000016 | -0.058039 | -0.122905 | -0.028564 | 0 | -0.267873 | -0.129146 |
| b17 | 0 | 0 | 0 | 0 | -0.000893 | 0 | 0 |
| **Coefficient** | **8** | **9** | **10** | **11** | **12** | **13** |  |
| b2 | 0 | -0.003784 | 0.0049 | 0 | 0 | 0 |  |
| b3 | 0 | 0.0000666 | -0.00008781 | 0 | 0 | 0 |  |
| b4 | 0.7243 | 1.011504 | 0.213526 | 1.334008 | 0 | 0.00659 |  |
| b5 | -0.562259 | 0 | 0 | 0 | 0 | -0.03587 |  |
| b6 | -0.17951 | 0 | 0 | 0 | 0 | -0.19935 |  |
| b7 | -0.544867 | 0 | 0 | 0 | 0 | 0.7353 |  |
| b8 | 0 | 0 | 0 | 0 | 0 | -0.99561 |  |
| b9 | 0.825682 | 0.73875 | 1.310111 | 0.955569 | 0 | 0.99531 |  |
| b10 | 1.675208 | 3.454857 | 0.271183 | 0 | 0 | 2.08524 |  |
| b11 | 0 | -1.773805 | 0 | 0 | 0 | -0.98396 |  |
| b12 | -0.0000731 | -0.0004708 | -0.0003048 | 0 | 0 | -0.000373 |  |
| b13 | -0.002133 | -0.013091 | 0 | -0.005893 | 0 | -0.00147 |  |
| b14 | 0 | -0.000593 | -0.000473 | 0 | 0 | -0.00018 |  |
| b15 | 0 | 0 | 0 | 0 | 0 | 0.50155 |  |
| b16 | -0.203636 | -0.131185 | 0 | -0.408462 | 0 | 0 |  |
| b17 | 0 | 0 | 0 | 0 | 0 | 0 |  |

Equation {4.7.1.4} predicts the change in square of the 5-year diameter outside bark. An adjustment factor is then applied to the final diameter growth value. All equations were developed by Hann and Hanus 2002, except white oak which was developed by Gould et al 2008.

{4.7.1.4} Used for all valid ORGANON tree records

ln*(DDS*)=X0 + X1\*LOG(DBH+K1) + X2\*DBH\*\*K2 + X3\*LOG((CR+0.2)/1.2) + X4\*LOG(SITE) + X5\*((BAL\*\*K3)/LOG(DBH+K4)) + X6\*SQRT(BA)

{4.7.1.5} Modifier to 5-year diameter growth

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

X0- X6 , K1- K4 are species-specific coefficients shown in table 4.7.1.5

**Table 4.7.1.5 Coefficients (X0- X6, K1- K4,) for equation {4.7.1.4} in the OC variant.**

| **Species** | **X0** | **X1** | **X2** | **X3** | **X4** | **X5** | **X6** | **K1** | **K2** | **K3** | **K4** | **ADJ** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| DF | -5.3556 | 0.84053 | -0.0427 | 1.1595 | 0.95471 | -0.0089 | 0 | 5 | 1 | 1 | 2.7 | 0.8938 |
| GF | -5.849 | 1.6682 | -0.0853 | 1.21222 | 0.67935 | -0.0081 | 0 | 5 | 1 | 1 | 2.7 | 0.8722 |
| PP | -4.5196 | 0.814 | -0.0494 | 1.1025 | 0.87944 | -0.0109 | -0.0334 | 5 | 1 | 1 | 2.7 | 0.8 |
| SP | -4.1234 | 0.73499 | -0.0425 | 1.05942 | 0.80866 | -0.0108 | 0 | 5 | 1 | 1 | 2.7 | 0.7903 |
| IC | -2.0855 | 0.59604 | -0.0215 | 1.02735 | 0.38345 | -0.0049 | -0.0609 | 5 | 1 | 1 | 2.7 | 0.8 |
| WH | -5.7005 | 0.86509 | -0.0433 | 1.1086 | 0.97733 | 0 | -0.0526 | 5 | 1 | 1 | 2.7 | 0.8 |
| RC | -11.455 | 0.78413 | -0.0261 | 0.70175 | 2.05724 | -0.0042 | 0 | 5 | 1 | 1 | 2.7 | 0.8 |
| PY | -9.1584 | 1 | -4E-07 | 1.16688 | 0 | 0 | -0.02 | 4000 | 4 | 1 | 2.7 | 0.8 |
| MD | -8.8453 | 1.5 | -0.0006 | 0.51226 | 0.41813 | -0.0036 | -0.0321 | 110 | 2 | 1 | 2.7 | 0.7923 |
| GC | -7.7845 | 1.2 | -0.07 | 0 | 1.01436 | -0.0083 | 0 | 10 | 1 | 1 | 2.7 | 0.7259 |
| TA | -3.3682 | 1.2 | -0.07 | 0 | 0 | 0 | -0.034 | 10 | 1 | 1 | 2.7 | 0.8 |
| CL | -3.5933 | 1.2 | -0.07 | 0.51637 | 0 | 0 | -0.02 | 10 | 1 | 1 | 2.7 | 0.8 |
| BL | -3.4145 | 1 | -0.05 | 0 | 0.32435 | 0 | -0.099 | 10 | 1 | 1 | 2.7 | 0.8 |
| WO | -7.8127 | 1.40562 | -0.0603 | 0.64286 | 1.03769 | 0 | -0.0787 | 5 | 1 | 1 | 2.7 | 1 |
| BO | -4.4344 | 0.93093 | -0.0466 | 0 | 0.51072 | 0 | -0.0689 | 5 | 1 | 1 | 2.7 | 0.7667 |
| RA | -4.3908 | 1 | -0.0945 | 1.06867 | 0.68591 | -0.0059 | 0 | 5 | 1 | 1 | 2.7 | 0.8 |
| PD | -8.0835 | 1 | -4E-07 | 0.31177 | 0 | 0 | -0.0731 | 4000 | 4 | 1 | 2.7 | 0.8 |
| WI | -8.0835 | 1 | -4E-07 | 0.31177 | 0 | 0 | -0.0731 | 4000 | 4 | 1 | 2.7 | 0.8 |

### 4.7.2 Large Tree Height Growth

For all species except giant sequoia and redwood, height growth estimates for non-valid ORGANON tree records in the OC variant are based on site index curves. Species differences in height growth are accounted for by entering the appropriate curve with the species-specific site index value.

In the OC variant, each non-valid ORGANON tree record is mapped into a species index as shown in table 4.7.2.1. The coefficients and equations used for each species will depend on the species index of the subject species.

**Table 4.7.2.1 Mapped species index for each species for height growth in the OC variant.**

| **Species Code** | **Species Index** | **Species Code** | **Species Index** |
| --- | --- | --- | --- |
| PC | 3 | LO | 9 |
| IC | 3 | CY | 9 |
| RC | 3 | BL | 9 |
| GF | 3 | EO | 9 |
| RF | 5 | WO | 7 |
| SH | 5 | BO | 7 |
| DF | 3 | VO | 7 |
| WH | 3 | IO | 9 |
| MH | 5 | BM | 10 |
| WB | 6 | BU | 7 |
| KP | 6 | RA | 10 |
| LP | 6 | MA | 9 |
| CP | 6 | GC | 9 |
| LM | 6 | DG | 7 |
| JP | 4 | FL | 7 |
| SP | 3 | WN | 10 |
| WP | 4 | TO | 8 |
| PP | 4 | SY | 10 |
| MP | 4 | AS | 10 |
| GP | 4 | CW | 10 |
| WJ | 6 | WI | 10 |
| BR | 3 | CN | 10 |
| PY | 7 | CL | 10 |
| OS | 3 | OH | 10 |

Using a species site index and tree height at the beginning of the projection cycle, an estimated tree age is computed using the site index curves. Estimated current height (ECH) and estimated future height (H10) are both obtained using the equations shown below. Estimated current height is obtained using estimated tree age at the start of the projection cycle and site index. Estimated future height is obtained using estimated tree age at the start of the projection cycle plus 10-years and site index. Height increment is obtained by subtracting estimated current height from estimated future height, then adjusting the difference according to tree’s crown ratio and height relative to other trees in the stand.

Region 6 Forests and BLM Administrative Units use equations 4.7.2.1 through 4.7.2.5 for all species.

{4.7.2.1} Used for species index 3 and 4

*H* = (((*SI* – 4.5) \* *TOPTRM* / *BOTTRM*) + 4.5) \* 1.05

*TOPTRM* = 1 – exp(-exp (b0 + (b1 \* ln(*SI* – 4.5)) + (b2 \* ln(*A*))))

*BOTTRM* = 1 – exp(-exp (b0 + (b1 \* ln(*SI* – 4.5)) + (b2 \* ln(50))))

{4.7.2.2} Used for species index 5

*H* = ((*SI* – 4.5) \* (1 – exp(-*X* \* *A*^b1))) / (1 – exp(-*Y* \* 50^b1)) + 4.5

X = (*SI* \* *TERM*) + (b4 \* *TERM*^2) + b5

*TERM* = A \* b2 \* exp(*A* \* b3)

Y = (*SI* \* *TERM2*) + (b4\* *TERM2*^2) + b5

*TERM2* = 50 \* b2 \* exp(50 \* b3)

{4.7.2.3} Used for species index 6

*H* = *SI* \* [b0 + (b1\* *A*) + (b2\* *A*^2)] \* 1.10

{4.7.2.4} Used for species index 7

*H* = [*SI* \* (1 + (b1 \* *TERM*)) – (b0 \* *TERM*)] \* 0.70

*TERM* = SQRT(*A*) – 7.0711

{4.7.2.5} Used for species index 8, 9, and 10

*H* = [*SI* / (b0 + (b1 / *A*))] \* 0.80

where:

*H* is estimated height of the tree

*SI* is species site index

*A* is estimated age of the tree

b0 – b5 are species-specific coefficients shown in table 4.7.2.2

**Table 4.7.2.2 Coefficients (b0 – b5) for height-growth equations in the OC variant.**

| **Coefficient** | **Species Index** | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **3** | **4** | **5** | **6** | **7** | **8** | **9** | **10** |
| b0 | -6.21693 | -6.54707 | 0 | -0.0968 | 6.413 | 0.204 | 0.375 | 0.649 |
| b1 | 0.281176 | 0.288169 | 1.51744 | 0.02679 | 0.322 | 39.787 | 31.233 | 17.556 |
| b2 | 1.14354 | 1.21297 | 1.41512E-06 | -9.309E-05 | 0 | 0 | 0 | 0 |
| b3 | 0 | 0 | -0.0440853 | 0 | 0 | 0 | 0 | 0 |
| b4 | 0 | 0 | -3049510. | 0 | 0 | 0 | 0 | 0 |
| b5 | 0 | 0 | 0.000572474 | 0 | 0 | 0 | 0 | 0 |

For non-valid ORGANON tree records potential 5-year height growth (*POTHTG*) is calculated by using equation {4.7.2.8}. Then, modifiers are applied to the height growth based upon a tree’s crown ratio (using equation {4.7.2.9}) and relative height (using equation {4.7.2.10}). Equation {4.7.2.11} calculates a height-growth modifier by combining the crown ratio and relative height modifiers. Final height growth is calculated using equation {4.7.2.12} as a product of the modifier and potential height growth. The final height growth is then adjusted to the length of the cycle.

{4.7.2.8} *POTHTG* = *H5* – *ECH*

{4.7.2.9} *HGMDCR* = 1 – exp(-4.26558 \* *CR*)

{4.7.2.10} *HGMDRH* = exp [2.54119 \* (*RELHT^*0.250537 – 1.0)]

{4.7.2.11} *HTGMOD* = 1.016605 \* *HGMDCR* \* *HGMDRH*

{4.7.2.12} *HTG* = *POTHTG* \* *HTGMOD*

where:

*POTHTG* is potential height growth

*H5* is estimated height of the tree in five years

*ECH* is estimated height of the tree at the beginning of the cycle

*HGMDCR* is a height growth modifier based on crown ratio

*HGMDRH* is a height growth modifier based on relative height and shade tolerance

*HTGMOD* is a weighted height growth modifier

*CR* is crown ratio expressed as a proportion

*RELHT* is tree height divided by average height of the 40 largest diameter trees in the stand (bounded *RELHT* <u><</u> 1; *RELHT* = 1 if crown competition factor on the inventory point where the tree is located is less than 100)

Equation {4.7.2.13} is used to predict 10-year height increment for giant sequoia and redwood and equation {4.7.2.14} is used to convert this estimate to 5-year height increment. The final height growth is then adjusted to the length of the cycle.

{4.7.2.13} *HTG* = exp(1.412947+ (-0.000204 \* *DBH*^2) + (0.31971 \* ln(*DBH*)) + (0.394005 \* ln(*SI*)) + (-(0.399888 \* (ln(*DG10*)) + (-0.451708 \* ln(*HT*))

{4.7.2.14} *HTG* = *HTG* \* 0.5

where:

*HTG* is 10-year height growth increment

*DBH* is diameter at breast height

*SI* is species site index

*DG10* is 10-year outside bark diameter growth increment

*HT* is total tree height

A height growth bounding function is used to ensure tree heights do not exceed the height maximum of giant sequoia and redwood. The bounding function is applied using the following concepts. For a tree with height less than the lower height-bounding limit, the height growth modifier is set to 1.0. For a tree with a height greater than or equal to the lower height-bounding limit and less than the upper height-bounding limit, a height growth modifier is computed using equation {4.7.2.15}. For a tree with a height greater than the upper height-bounding limit, the height growth modifier is set to 0.1. The lower bounding limit was determined from the height growth fitting data and the upper bounding limit was determined from literature. The final height increment estimate is multiplied by the bounding function, equation {4.7.2.16}.

{4.7.2.15} *HGBND* = 1.0 – ((*HT* - HTLO) / (*HTHI*- *HTLO*))

{4.7.2.16} *HTG* = *HTG* \* *HGBND*

where:

*HGBND* is height growth bounding modifier, limited to 0.1 <u><</u> *HGBND* <u><</u> 1.0

*HT* is total tree height (ft)

*HTLO* is the lower height-bounding limit (217 ft)

*HTHI* is the upper height-bounding limit (380 ft)

Valid ORGANON tree records use equations {4.7.2.17} or {4.7.2.18} to estimate height growth. Equation {4.7.2.17} is used for the major conifer species (DF, GF/WF, PP, SP, and IC). It predicts potential height growth based on dominant height from the Hann and Scrivani site index curves, tree’s growth effective age, and modified. Other ORGANON grown trees (PY, RC, WH, BM, RA, PM, GC, DG, TO, CL, WO, BO, WI) use equation {4.7.2.18}, based on ORGANON height –diamater equations.

{4.7.2.17} ORGANON 5-year height growth for major conifer species

HG=PHTGRO\*MODIFER\*CRADJ

where:

PHTGRO=(4.5+(HT-4.5)\*(XAI5/XAI))-HT ) if AIA is less than 0, PHTGRO=0.

XAI=1.0-EXP(-1.0\*EXP(B0+B1\*LOG(SI)+B2\*LOG(GEAGE)))

XAI5=1.0-EXP((-1.)\*EXP(B0+B1\*LOG(SI)+B2\*LOG(GEAGE+5.)))

GEAGE=((-1.0\*LOG(A1A))/(EXP(B0)\*SI\*\*B1))\*\*(1.0/B2) if AIA is less than 0, GEAGE=500

A1A=1.0-(HT-4.5)\*(( 1.0-EXP((-1.)\*EXP((B0+B1\*LOG(SI))+ B2\*3.912023)))/SI)

MODIFER=P8\*(( P1\*EXP(P2\*TCCH))+(( EXP(P3\*TCCH\*\*P4))-( EXP(P3\*TCCH\*\*P4))\*EXP((-P5\*(1.0-CR)\*\*P6)\*EXP(P7\*TCCH\*\*0.5)))

CRADJ=(1.0-EXP(-(25.0\*CR)\*\*2))

*HG* is predicted 5-year height growth

*HT* is height of the tree

SI is site index (Hann and Scrivani)

B0 – B2, P1 – P8 are coefficients in table 4.7.2.3

{4.7.2.18} ORGANON 5-year height growth for non-major species

HG= HT\*(( PRDHT2/ PRDHT1)-1)

where:

PRDHT1=4.5+EXP(X1+X2\*DBH\*\*X3)

PRDHT2=4.5+EXP(X1+X2\*(DBH+DG)\*\*X3)

*HG* is predicted 5-year height growth

*HT* is height of the tree

*DBH* is diameter of tree

*DG* is predicted 5-year diameter growth for the tree

X1 – X3 are coefficients shown in table 4.1.1

**Table 4.7.2.3 Coefficients (B0 – B2, P1 – P8) for the major conifers species height-growth equations in ORGANON, OC variant**

|  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **P1** | **P2** | **P3** | **P4** | **P5** | **P6** | **P7** | **P8** | **B0** | **B1** | **B2** |
| DF | 1 | -0.02458 | -0.00407 | 1 | 2.895563 | 2 | 0 | 1 | -6.21693 | 0.281176 | 1.14354 |
| GF | 1 | -0.01453 | -0.00407 | 1 | 7.690236 | 2 | 0 | 1 | -6.54707 | 0.288169 | 1.21297 |
| PP | 1 | -0.1489 | -0.00323 | 1 | 0.920718 | 2 | 0 | 1 | -6.54707 | 0.288169 | 1.21297 |
| SP | 1 | -0.1489 | -0.00679 | 1 | 0.920718 | 2 | 0 | 1 | -6.54707 | 0.288169 | 1.21297 |
| IC | 1 | -0.01453 | -0.00637 | 1 | 1.272286 | 2 | 0 | 1 | -6.54707 | 0.288169 | 1.21297 |

# 5.0 Mortality Model

If there are valid ORGANON tree records in the tree list for a cycle, then all trees get mortality estimates using equations developed for ORGANON (Hann et al 2003, Hann and Hanus 2001 or Gould and Harrington 2008) with surrogate assignments for non-valid ORGANON tree records as shown in section 1.1. If all tree records for the projection cycle are non-valid ORGANON tree records, then all trees get mortality estimates using equations developed for the FVS CA variant.

For ORGANON, the annual mortality rate estimate, *RA*, predicts individual tree mortality based on trees size, stand density and other tree and stand attributes. The equations used to calculate the mortality rate are shown in equations 5.0.1 and 5.0.2.

{5.0.1} Mortality Equations:

DBH <u>></u> 3.0”: RA=1-[((1-(1/(1+exp(-Z))))0.2)\*CRADJ]

For white oak:

Z= d0 + d1\*DBH + d2\*DBH2+ d3\*CR +\*(XSITE1+4.5) + d5\*ALOG(BAL+5.0)

For all other species:

Z= d0 + d1\*DBH + d2\*DBH2+ d3\*CR + d4\*(XSITE2+4.5) + d5\*BAL + d6\*BAL\*exp(d7\*OG)

where:

RA is the estimated annual mortality rate

DBH is tree diameter at breast height

BAL is total basal area in trees larger

CR is crown ratio

CRADJ crown adjustment =1.0-exp(-(25.0\*CR)2)

XSITE1 Douglas-fir site index

XSITE2 Ponderosa Pine site index

d0-7 are species-specific coefficients shown in table 5.0.1

The annual mortality rates are adjusted for the length of cycle using a compound interest formula (Hamilton 1976), and then applied to each tree record.

{5.0.2} *RT* = 1 – (1 – *RA*)*Y*

where:

*RT* is the mortality rate applied to an individual tree record for the growth period

*RA* is the annual mortality rate for the tree record

*Y* is length of the current projection cycle in years

**Table 5.0.1 Coefficients used in the individual tree mortality equation {5.0.1} in the OC variant.**

| **Species** | **d0** | **d1** | **d2** | **d3** | **d4** | **d5** | **d6** | **d7** | **d8** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **PC** | -0.76161 | -0.52937 | 0 | -4.74019 | 0.011959 | 0.007564 | 0 | 0 | -5.4 |
| **IC** | -1.92269 | -0.13608 | 0.00248 | -3.17812 | 0 | 0.004684 | 0 | 0 | -2.2 |
| **RC** | -0.76161 | -0.52937 | 0 | -4.74019 | 0.011959 | 0.007564 | 0 | 0 | -5.4 |
| **GF** | -2.21578 | -0.1629 | 0.003317 | -3.56144 | 0.014645 | 0 | 0 | 0 | 1 |
| **RF** | -4.64848 | -0.26656 | 0.003699 | -2.11803 | 0.025499 | 0.003361 | 0.013554 | -2.72347 | 1 |
| **SH** | -4.64848 | -0.26656 | 0.003699 | -2.11803 | 0.025499 | 0.003361 | 0.013554 | -2.72347 | 1 |
| **DF** | -4.64848 | -0.26656 | 0.003699 | -2.11803 | 0.025499 | 0.003361 | 0.013554 | -2.72347 | 1 |
| **WH** | -1.16621 | 0 | 0 | -4.60267 | 0 | 0 | 0 | 0 | -3.8 |
| **MH** | -1.16621 | 0 | 0 | -4.60267 | 0 | 0 | 0 | 0 | -3.8 |
| **WB** | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 0 | 0 | 1 |
| **KP** | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 0 | 0 | 1 |
| **LP** | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 0 | 0 | 1 |
| **CP** | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 0 | 0 | 1 |
| **LM** | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 0 | 0 | 1 |
| **JP** | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 0 | 0 | 1 |
| **SP** | -1.53105 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 |
| **WP** | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 0 | 0 | 1 |
| **PP** | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 0 | 0 | 1 |
| **MP** | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 0 | 0 | 1 |
| **GP** | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 0 | 0 | 1 |
| **WJ** | -4.07278 | -0.17643 | 0 | -1.72945 | 0 | 0.012526 | 0 | 0 | -7 |
| **BR** | -2.21578 | -0.1629 | 0.003317 | -3.56144 | 0.014645 | 0 | 0 | 0 | 1 |
| **GS** | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 0 | 0 | 1 |
| **PY** | -4.07278 | -0.17643 | 0 | -1.72945 | 0 | 0.012526 | 0 | 0 | -7 |
| **OS** | -4.07278 | -0.17643 | 0 | -1.72945 | 0 | 0.012526 | 0 | 0 | -7 |
| **LO** | -2.99045 | 0 | 0 | 0 | 0 | 0.002885 | 0 | 0 | -13.4 |
| **CY** | -2.99045 | 0 | 0 | 0 | 0 | 0.002885 | 0 | 0 | -13.4 |
| **BL** | -2.99045 | 0 | 0 | 0 | 0 | 0.002885 | 0 | 0 | -13.4 |
| **EO** | -2.99045 | 0 | 0 | 0 | 0 | 0.002885 | 0 | 0 | -13.4 |
| **WO** | -6.00031 | -0.10491 | 0 | -0.99542 | 0.009127 | 0.871157 | 0 | 0 | -16.6 |
| **BO** | -3.10862 | -0.57037 | 0.018205 | -4.58466 | 0.014926 | 0.012419 | 0 | 0 | -18.2 |
| **VO** | -2.99045 | 0 | 0 | 0 | 0 | 0.002885 | 0 | 0 | -13.4 |
| **IO** | -2.99045 | 0 | 0 | 0 | 0 | 0.002885 | 0 | 0 | -13.4 |
| **BM** | -2.97682 | 0 | 0 | -6.22325 | 0 | 0 | 0 | 0 | -15 |
| **BU** | -2.97682 | 0 | 0 | -6.22325 | 0 | 0 | 0 | 0 | -15 |
| **RA** | -2 | -0.5 | 0.015 | -3 | 0.015 | 0.01 | 0 | 0 | -19.8 |
| **MA** | -6.0896 | -0.24562 | 0 | -3.20827 | 0.033348 | 0.013571 | 0 | 0 | -8.6 |
| **GC** | -4.31755 | -0.0577 | 0 | 0 | 0.004861 | 0.009981 | 0 | 0 | -10.2 |
| **DG** | -3.02035 | 0 | 0 | -8.46788 | 0.013966 | 0.009462 | 0 | 0 | -21.4 |
| **FL** | -2.97682 | 0 | 0 | -6.22325 | 0 | 0 | 0 | 0 | -15 |
| **WN** | -2.97682 | 0 | 0 | -6.22325 | 0 | 0 | 0 | 0 | -15 |
| **TO** | -2.41076 | 0 | 0 | -1.04935 | 0.008846 | 0 | 0 | 0 | -11.8 |
| **SY** | -2.97682 | 0 | 0 | -6.22325 | 0 | 0 | 0 | 0 | -15 |
| **AS** | -2.97682 | 0 | 0 | -6.22325 | 0 | 0 | 0 | 0 | -15 |
| **CW** | -2.97682 | 0 | 0 | -6.22325 | 0 | 0 | 0 | 0 | -15 |
| **WI** | -1.38629 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | -23 |
| **CN** | -3.02035 | 0 | 0 | -8.46788 | 0.013966 | 0.009462 | 0 | 0 | -21.4 |
| **CL** | -3.02035 | 0 | 0 | -8.46788 | 0.013966 | 0.009462 | 0 | 0 | -21.4 |
| **OH** | -3.02035 | 0 | 0 | -8.46788 | 0.013966 | 0.009462 | 0 | 0 | -21.4 |
| **RW** | -1.05 | -0.19436 | 0.003803 | -3.5573 | 0.003972 | 0.005574 | 0 | 0 | 1 |

If all tree records for the projection cycle are non-valid ORGANON tree records, then the OC variant uses an SDI-based mortality model as described in Section 7.3.2 of Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002, referred to as EFVS). This SDI-based mortality model is comprised of two steps: 1) determining the amount of stand mortality (section 7.3.2.1 of EFVS) and 2) dispersing stand mortality to individual tree records (section7.3.2.2 of EFVS). In determining the amount of stand mortality, the summation of individual tree background mortality rates is used when stand density is below the minimum level for density dependent mortality (default is 55% of maximum SDI), while stand level density-related mortality rates are used when stands are above this minimum level.

The equation used to calculate individual tree background mortality rates for all species is shown in equation {5.0.3}, and this is then adjusted to the length of the cycle by using a compound interest formula as shown in equation {5.0.4}. Species mapping and coefficients for these equations are shown in tables 5.0.2 and 5.0.3. The overall amount of mortality calculated for the stand is the summation of the final mortality rate (*RIP*) across all live tree records.

{5.0.3} RI = [1 / (1 + exp(p0 + p1 \* DBH))] \* 0.5

{5.0.4} RIP = 1 – (1 – RI*)*^Y

where:

RI is the proportion of the tree record attributed to mortality

RIP is the final mortality rate adjusted to the length of the cycle

DBH is tree diameter at breast height

Y is length of the current projection cycle in years

p0 and p1 are species-specific coefficients shown in table 5.0.2

**Table 5.0.2 Mapped species index for each species for the mortality model in the OC variant.**

| **Species Code** | **Species Index** | **Species Code** | **Species Index** |
| --- | --- | --- | --- |
| PC | 3 | LO | 3 |
| IC | 3 | CY | 3 |
| RC | 3 | BL | 3 |
| GF | 3 | EO | 3 |
| RF | 3 | WO | 3 |
| SH | 3 | BO | 3 |
| DF | 2 | VO | 3 |
| WH | 4 | IO | 3 |
| MH | 4 | BM | 3 |
| WB | 1 | BU | 3 |
| KP | 1 | RA | 3 |
| LP | 5 | MA | 3 |
| CP | 1 | GC | 3 |
| LM | 1 | DG | 3 |
| JP | 6 | FL | 3 |
| SP | 1 | WN | 3 |
| WP | 1 | TO | 3 |
| PP | 6 | SY | 3 |
| MP | 6 | AS | 3 |
| GP | 6 | CW | 3 |
| WJ | 3 | WI | 3 |
| BR | 4 | CN | 3 |
| GS | 7 | CL | 3 |
| PY | 3 | OH | 3 |
| OS | 3 | RW | 7 |

**Table 5.0.3 Coefficients used in the background mortality equation {5.0.3} in the OC variant.**

|  |  |  |
| --- | --- | --- |
| **Species Index** | **p0** | **p1** |
| 1 | 6.5112 | -0.00525 |
| 2 | 7.2985 | -0.01291 |
| 3 | 5.1677 | -0.00777 |
| 4 | 9.6943 | -0.01273 |
| 5 | 5.9617 | -0.03401 |
| 6 | 5.5877 | -0.00535 |
| 7 | 2.5968 | 0.51261 |

When stand density-related mortality is in effect, the total amount of stand mortality is determined based on the trajectory developed from the relationship between stand SDI and the maximum SDI for the stand. This is explained in section 7.3.2.1 of EFVS.

Once the amount of stand mortality is determined based on either the summation of background mortality rates or density-related mortality rates, mortality is dispersed to individual tree records in relation to a tree’s percentile in the basal area distribution (*PCT*) using equation {5.0.5}. This value is then adjusted by a species-specific mortality modifier (representing the species’ tolerance) to obtain a final mortality rate as shown in equation {5.0.6}.

The mortality model makes multiple passes through the tree records multiplying a record’s trees-per-acre value times the final mortality rate (MORT), accumulating the results, and reducing the trees-per-acre representation until the desired mortality level has been reached. If the stand still exceeds the basal area maximum sustainable on the site the mortality rates are proportionally adjusted to reduce the stand to the specified basal area maximum.

{5.0.5} *MR* = 0.84525 – (0.01074 \* *PCT*) + (0.0000002 \* *PCT*^3)

{5.0.6} *MORT* = *MR* \* *MWT* \* 0.1

where:

*MR* is the proportion of the tree record attributed to mortality (bounded: 0.01 <u><</u> *MR* <u><</u> 1)

*PCT* is the subject tree’s percentile in the basal area distribution of the stand

*MORT* is the final mortality rate of the tree record

*MWT* is a mortality weight value based on a species’ tolerance shown in table 5.0.4

**Table 5.0.4 *MWT* values for the mortality equation {5.0.6} in the OC variant.**

| **Species Code** | ***MWT*** | **Species Code** | ***MWT*** |
| --- | --- | --- | --- |
| PC | 0.6 | LO | 1.0 |
| IC | 0.6 | CY | 1.0 |
| RC | 0.6 | BL | 1.0 |
| GF | 0.55 | EO | 1.0 |
| RF | 0.5 | WO | 1.0 |
| SH | 0.5 | BO | 1.0 |
| DF | 0.65 | VO | 1.0 |
| WH | 0.65 | IO | 1.0 |
| MH | 0.75 | BM | 0.8 |
| WB | 0.9 | BU | 0.8 |
| KP | 0.9 | RA | 1.0 |
| LP | 0.9 | MA | 0.8 |
| CP | 1.1 | GC | 0.8 |
| LM | 0.9 | DG | 0.8 |
| JP | 0.85 | FL | 0.8 |
| SP | 0.7 | WN | 0.8 |
| WP | 0.75 | TO | 0.55 |
| PP | 0.85 | SY | 0.8 |
| MP | 0.85 | AS | 0.8 |
| GP | 1.1 | CW | 0.8 |
| WJ | 1.1 | WI | 1.0 |
| BR | 0.65 | CN | 1.0 |
| GS | 0.8 | CL | 1.0 |
| PY | 0.55 | OH | 1.0 |
| OS | 0.65 | RW | 0.8 |

# 6.0 Regeneration

The OC variant contains a partial establishment model which may be used to input regeneration and ingrowth into simulations. A more detailed description of how the partial establishment model works can be found in section 5.4.5 of the Essential FVS Guide (Dixon 2002).

The regeneration model is used to simulate stand establishment from bare ground, or to bring seedlings and sprouts into a simulation with existing trees. Sprouts are automatically added to the simulation following harvest or burning of known sprouting species (see table 6.0.1 for sprouting species).

**Table 6.0.1 Regeneration parameters by species in the OC variant.**

| **Species Code** | **Sprouting Species** | **Minimum Bud Width (in)** | **Minimum Tree Height (ft)** | **Maximum Tree Height (ft)** |
| --- | --- | --- | --- | --- |
| PC | No | 0.2 | 0.5 | 20.0 |
| IC | No | 0.2 | 0.5 | 20.0 |
| RC | No | 0.2 | 0.3 | 20.0 |
| GF | No | 0.2 | 0.8 | 20.0 |
| RF | No | 0.2 | 0.8 | 20.0 |
| SH | No | 0.2 | 0.8 | 20.0 |
| DF | No | 0.2 | 0.8 | 20.0 |
| WH | No | 0.2 | 0.3 | 20.0 |
| MH | No | 0.2 | 0.5 | 20.0 |
| WB | No | 0.5 | 1.2 | 20.0 |
| KP | No | 0.5 | 1 | 20.0 |
| LP | No | 0.4 | 1 | 20.0 |
| CP | No | 0.5 | 1 | 20.0 |
| LM | No | 0.5 | 1 | 20.0 |
| JP | No | 0.5 | 1 | 20.0 |
| SP | No | 0.5 | 0.8 | 20.0 |
| WP | No | 0.3 | 0.8 | 20.0 |
| PP | No | 0.5 | 1 | 20.0 |
| MP | No | 0.5 | 0.8 | 20.0 |
| GP | No | 0.5 | 1.2 | 20.0 |
| WJ | No | 0.3 | 1 | 20.0 |
| BR | No | 0.3 | 0.5 | 20.0 |
| GS | No | 0.3 | 1 | 20.0 |
| PY | Yes | 0.3 | 0.3 | 20.0 |
| OS | No | 0.3 | 0.8 | 20.0 |
| LO | Yes | 0.2 | 1 | 20.0 |
| CY | Yes | 0.2 | 0.5 | 20.0 |
| BL | Yes | 0.2 | 1 | 20.0 |
| EO | Yes | 0.2 | 1 | 20.0 |
| WO | Yes | 0.2 | 0.8 | 20.0 |
| BO | Yes | 0.2 | 1 | 20.0 |
| VO | Yes | 0.2 | 0.8 | 20.0 |
| IO | Yes | 0.2 | 1 | 20.0 |
| BM | Yes | 0.2 | 0.5 | 20.0 |
| BU | Yes | 0.3 | 0.8 | 20.0 |
| RA | Yes | 0.1 | 0.8 | 20.0 |
| MA | Yes | 0.1 | 0.5 | 20.0 |
| GC | Yes | 0.2 | 0.8 | 20.0 |
| DG | Yes | 0.1 | 0.5 | 20.0 |
| FL | Yes | 0.3 | 0.8 | 20.0 |
| WN | Yes | 0.4 | 1 | 20.0 |
| TO | Yes | 0.2 | 0.5 | 20.0 |
| SY | Yes | 0.2 | 1 | 20.0 |
| AS | Yes | 0.1 | 1.2 | 20.0 |
| CW | Yes | 0.1 | 1.2 | 20.0 |
| WI | Yes | 0.1 | 1 | 20.0 |
| CN | Yes | 0.2 | 0.3 | 20.0 |
| CL | Yes | 0.2 | 0.5 | 20.0 |
| OH | No | 0.2 | 0.75 | 20.0 |
| RW | Yes | 0.3 | 1 | 20.0 |

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

{6.0.4} *PS =* ((70.7857 - 2.6071 \* *DSTMPi*) / 100)

{6.0.5} *PS =* ((99.9 - 3.8462 \* *DSTMPi*) / 100)

{6.0.6} *PS =* (*TPAi* / (*ASTPAR* \* 2)) \* ((*ASBAR* / 198) \* (40100.45 - 3574.02 \* *RSHAG*^2 + 554.02 \* *RSHAG*^3 - 3.5208 \* *RSHAG*^5 + 0.011797 \* *RSHAG*^7))

{6.0.7} *PS =* ((93.2669 - 0.4303 \* *DSTMPi*) / 100)

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

**Table 6.0.2 Sprouting algorithm parameters for sprouting species in the CA variant.**

| **Species Code** | **Sprouting Probability** | **Number of Sprout Records** | **Source** |
| --- | --- | --- | --- |
| PY | 0.4 | 1 | Minore 1996  Ag. Handbook 654 |
| LO | 0.5 | {6.0.1} | See canyon live oak (CY) |
| CY | 0.5 | {6.0.1} | Conard 1987  Thornburgh 1990  Paysen et al. 1991 |
| BL | {6.0.4} | {6.0.1} | McCreary et al. 2000  Standiford et al. 2011 |
| EO | 0.9 | {6.0.1} | Caprio and Zwolinski 1992  Howard 1992 |
| WO | 0.9 | {6.0.1} | Roy 1955  Gucker 2007 |
| BO | 0.9 | {6.0.1} | McDonald 1978  McDonald 1990 |
| VO | 0.9 | {6.0.1} | Howard 1992 |
| IO | 0.5 | {6.0.1} | See canyon live oak (CY) |
| BM | 0.9 | {6.0.2} | Roy 1955  Tappenier et al. 1996  Ag. Handbook 654 |
| BU | 0.8 | {6.0.1} | Howard 1992 |
| RA | {6.0.5} | 1 | Harrington 1984  Uchytil 1989 |
| MA | 0.9 | {6.0.2} | McDonald et al. 1983  McDonald and Tappenier 1990 |
| GC | 0.9 | {6.0.2} | Harrington et al. 1992  Meyer 2012 |
| DG | 0.9 | {6.0.1} | Gucker 2005 |
| FL | 0.8 | {6.0.1} | Sterrett 1915  Ag. Handbook 654 |
| WN | 0.8 for DBH < 8”,  0.5 for DBH > 8” | 1 | Schlesinger 1977  Schlesinger 1989 |
| TO | 0.9 | {6.0.2} | Harrington et al. 1992  Wilkinson et al. 1997  Fryer 2008 |
| SY | 0.7 | 1 | Davis et al. 1989  Esser 1993 |
| AS | {6.0.6} | 2 | Keyser 2001 |
| CW | 0.9 | {6.0.2} | Gom and Rood 2000  Steinberg 2001 |
| WI | 0.9 | 1 | Ag. Handbook 654 |
| CN | 0.8 | 1 | Burke 1975  Howard 1992 |
| CL | 0.9 | {6.0.2} | Paysen et al. 1991  Ag. Handbook 654 |
| RW | {6.0.7} | {6.0.2} | Neal 1967  Boe 1975  Griffith 1992 |

Regeneration of seedlings must be specified by the user with the partial establishment model by using the PLANT or NATURAL keywords. Height of the seedlings is estimated in two steps. First, the height is estimated when a tree is 5 years old (or the end of the cycle – whichever comes first) by using the small-tree height growth equations found in section 4.6.1. Users may override this value by entering a height in field 6 of the PLANT or NATURAL keyword; however the height entered in field 6 is not subject to minimum height restrictions and seedlings as small as 0.05 feet may be established. The second step also uses the equations in section 4.6.1, which grow the trees in height from the point five years after establishment to the end of the cycle.

Seedlings and sprouts are passed to the main FVS model at the end of the growth cycle in which regeneration is established. Unless noted above, seedlings being passed are subject to minimum and maximum height constraints and a minimum budwidth constraint shown in table 6.0.1. After seedling height is estimated, diameter growth is estimated using equations described in section 4.6.2. Crown ratios on newly established trees are estimated as described in section 4.3.1.

Regenerated trees and sprouts can be identified in the treelist output file with tree identification numbers beginning with the letters “ES”.

# 7.0 Volume

In the OC variant, volume is calculated for four merchantability standards: total stem cubic feet, merchantable stem cubic feet, sawlog stem cubic feet, and merchantable stem board feet (Scribner (R6 and BLM)). Sawlog cubic foot volume is only reported when the FIAVBC keyword is in use. Volume estimation is based on methods contained in the National Volume Estimator Library maintained by the Forest Products Measurements group in the Forest Management Service Center (Volume Estimator Library Equations 2009). The default volume merchantability standards and equation numbers for the OC variant are shown in tables 7.0.1-7.0.4.

Volume computation methods used by the Forest Inventory and Analysis (FIA) program can be requested with the FIAVBC keyword. This keyword encompasses the National Scale Volume and Biomass estimators (NSVB; Westfall et al. 2024) and regional equations used for woodland species (Burrill et al. 2024). More information about the FIAVBC keyword and required input variables can be found in the Essential FVS Guide (Dixon 2002).

**Table 7.0.1 Volume merchantability standards for the OC variant.**

|  |  |  |
| --- | --- | --- |
| **Merchantable Cubic Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | KP | All Other Species |
| Region 5 | 6.0 / 6.0 inches | 7.0 / 6.0 inches |
| Region 6 and BLM | 6.0 / 4.5 inches | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| **Merchantable Board Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | KP | All Other Species |
| Region 5 | 6.0 / 6.0 inches | 7.0 / 6.0 inches |
| Region 6 and BLM | 6.0 / 4.5 inches | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |

**Table 7.0.2 Volume equation defaults for each species, at specific location codes, with model name in the OC variant.**

| **Common Name** | **Location Code** | **Equation Number** | **Reference** |
| --- | --- | --- | --- |
| Port Orford cedar | 505, 506, 508, 511, 514 | 500WO2W081 | Wensel and Olsen Profile Model |
| Port Orford cedar | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| Port Orford cedar | 710, 711, 712 | B00BEHW081 | Behre's Hyperbola |
| incense cedar | 505, 506, 508, 511, 514 | 500WO2W081 | Wensel and Olsen Profile Model |
| incense cedar | 610, 611 | 616BEHW081 | Behre's Hyperbola |
| incense cedar | 710, 711, 712 | B00BEHW081 | Behre's Hyperbola |
| western redcedar | 505, 506, 508, 511, 514 | 500WO2W081 | Wensel and Olsen Profile Model |
| western redcedar | 610, 611 | 616BEHW242 | Behre's Hyperbola |
| western redcedar | 710, 711, 712 | B00BEHW242 | Behre's Hyperbola |
| white fir | 505, 506, 508, 511, 514 | 500WO2W015 | Wensel and Olsen Profile Model |
| white fir | 610, 611 | I00FW2W093 | Flewelling's 2-Point Profile Model |
| white fir | 710, 711, 712 | B00BEHW015 | Behre's Hyperbola |
| California red fir | 505, 506, 508, 511, 514 | 500WO2W020 | Wensel and Olsen Profile Model |
| California red fir | 610, 611 | 616BEHW020 | Behre's Hyperbola |
| California red fir | 710, 711, 712 | B00BEHW021 | Behre's Hyperbola |
| Shasta red fir | 505, 506, 508, 511, 514 | 500WO2W020 | Wensel and Olsen Profile Model |
| Shasta red fir | 610, 611 | 616BEHW021 | Behre's Hyperbola |
| Shasta red fir | 710, 711, 712 | B00BEHW021 | Behre's Hyperbola |
| Douglas-fir | 505, 506, 508, 511, 514 | 500WO2W202 | Wensel and Olsen Profile Model |
| Douglas-fir | 610, 611 | F06FW2W202 | Flewelling's 2-Point Profile Model |
| Douglas-fir | 710, 711 | B01BEHW202 | Behre's Hyperbola |
| Douglas-fir | 712 | B02BEHW202 | Behre's Hyperbola |
| western hemlock | 505, 506, 508, 511, 514 | 500WO2W015 | Wensel and Olsen Profile Model |
| western hemlock | 610, 611 | F06FW2W263 | Flewelling's 2-Point Profile Model |
| western hemlock | 710, 711, 712 | B00BEHW263 | Behre's Hyperbola |
| mountain hemlock | 505, 506, 508, 511, 514 | 500WO2W015 | Wensel and Olsen Profile Model |
| mountain hemlock | 610, 611 | 616BEHW264 | Behre's Hyperbola |
| mountain hemlock | 710, 711, 712 | B00BEHW260 | Behre's Hyperbola |
| whitebark pine | 505, 506, 508, 511, 514 | 500WO2W108 | Wensel and Olsen Profile Model |
| whitebark pine | 610, 611 | 616BEHW101 | Behre's Hyperbola |
| whitebark pine | 710, 711, 712 | B00BEHW119 | Behre's Hyperbola |
| knobcone pine | 505, 506, 508, 511, 514 | 500WO2W108 | Wensel and Olsen Profile Model |
| knobcone pine | 610, 611 | 616BEHW103 | Behre's Hyperbola |
| knobcone pine | 710, 711, 712 | B00BEHW108 | Behre's Hyperbola |
| lodgepole pine | 505, 506, 508, 511, 514 | 500WO2W108 | Wensel and Olsen Profile Model |
| lodgepole pine | 610, 611 | 616BEHW108 | Behre's Hyperbola |
| lodgepole pine | 710, 711, 712 | B00BEHW108 | Behre's Hyperbola |
| Coulter pine | 505, 506, 508, 511, 514 | 500WO2W108 | Wensel and Olsen Profile Model |
| Coulter pine | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| Coulter pine | 710, 711, 712 | B00BEHW108 | Behre's Hyperbola |
| limber pine | 505, 506, 508, 511, 514 | 500WO2W108 | Wensel and Olsen Profile Model |
| limber pine | 610, 611 | 616BEHW113 | Behre's Hyperbola |
| limber pine | 710, 711, 712 | B00BEHW108 | Behre's Hyperbola |
| Jeffrey pine | 505, 506, 508,511, 514 | 500WO2W116 | Wensel and Olsen Profile Model |
| Jeffrey pine | 610, 611 | 616BEHW116 | Behre's Hyperbola |
| Jeffrey pine | 710, 711, 712 | B00BEHW116 | Behre's Hyperbola |
| sugar pine | 505, 506, 508, 511, 514 | 500WO2W117 | Wensel and Olsen Profile Model |
| sugar pine | 610, 611 | 616BEHW117 | Behre's Hyperbola |
| sugar pine | 710, 711, 712 | B00BEHW117 | Behre's Hyperbola |
| western white pine | 505, 506, 508, 511, 514 | 500WO2W117 | Wensel and Olsen Profile Model |
| western white pine | 610, 611 | 616BEHW119 | Behre's Hyperbola |
| western white pine | 710, 711, 712 | B00BEHW119 | Behre's Hyperbola |
| ponderosa pine | 505, 506, 508, 511, 514 | 500WO2W122 | Wensel and Olsen Profile Model |
| ponderosa pine | 610, 611 | I00FW2W073 | Flewelling's 2-Point Profile Model |
| ponderosa pine | 710, 711, 712 | B00BEHW122 | Behre's Hyperbola |
| Monterey pine | 505, 506, 508, 511, 514 | 500WO2W108 | Wensel and Olsen Profile Model |
| Monterey pine | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| Monterey pine | 710, 711, 712 | B00BEHW108 | Behre's Hyperbola |
| California foothill pine | 505, 506, 508, 511, 514 | 500WO2W108 | Wensel and Olsen Profile Model |
| California foothill pine | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| California foothill pine | 710, 711, 712 | B00BEHW108 | Behre's Hyperbola |
| western juniper | 505, 506, 508, 511, 514 | 500DVEW060 | Pillsbury and Kirkley Equations |
| western juniper | 610, 611 | 616BEHW064 | Pillsbury and Kirkley Equations |
| western juniper | 710, 711, 712 | B00BEHW242 | Behre's Hyperbola |
| Brewer spruce | 505, 506, 508, 511, 514 | 500WO2W015 | Wensel and Olsen Profile Model |
| Brewer spruce | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| Brewer spruce | 710, 711, 712 | B00BEHW093 | Behre's Hyperbola |
| giant sequoia | 505, 506, 508, 511, 514 | 500DVEW212 | Pillsbury and Kirkley Equations |
| giant sequoia | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| giant sequoia | 710, 711, 712 | B00BEHW211 | Behre's Hyperbola |
| Pacific yew | 505, 506, 508, 511, 514 | 500WO2W108 | Wensel and Olsen Profile Model |
| Pacific yew | 610, 611 | 616BEHW231 | Behre's Hyperbola |
| Pacific yew | 710, 711, 712 | B00BEHW231 | Behre's Hyperbola |
| other softwood | 505, 506, 508, 511, 514 | 500WO2W108 | Wensel and Olsen Profile Model |
| other softwood | 610, 611 | 616BEHW299 | Behre's Hyperbola |
| other softwood | 710, 711, 712 | B00BEHW999 | Behre's Hyperbola |
| coast live oak | 505, 506, 508, 511, 514 | 500DVEW801 | Pillsbury and Kirkley Equations |
| coast live oak | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| coast live oak | 710, 711, 712 | B00BEHW800 | Behre's Hyperbola |
| canyon live oak | 505, 506, 508, 511, 514 | 500DVEW805 | Pillsbury and Kirkley Equations |
| canyon live oak | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| canyon live oak | 710, 711, 712 | B00BEHW800 | Behre's Hyperbola |
| blue oak | 505, 506, 508, 511, 514 | 500DVEW807 | Pillsbury and Kirkley Equations |
| blue oak | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| blue oak | 710, 711, 712 | B00BEHW800 | Behre's Hyperbola |
| Engelmann oak | 505, 506, 508, 511, 514 | 500DVEW811 | Pillsbury and Kirkley Equations |
| Engelmann oak | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| Engelmann oak | 710, 711, 712 | B00BEHW800 | Behre's Hyperbola |
| Oregon white oak | 505, 506, 508, 511, 514 | 500DVEW815 | Pillsbury and Kirkley Equations |
| Oregon white oak | 610, 611 | 616BEHW815 | Behre's Hyperbola |
| Oregon white oak | 710, 711, 712 | B00BEHW800 | Behre's Hyperbola |
| California black oak | 505, 506, 508, 511, 514 | 500DVEW818 | Pillsbury and Kirkley Equations |
| California black oak | 610, 611 | 616BEHW818 | Behre's Hyperbola |
| California black oak | 710, 711, 712 | B00BEHW800 | Behre's Hyperbola |
| valley oak | 505, 506, 508, 511, 514 | 500DVEW821 | Pillsbury and Kirkley Equations |
| valley oak | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| valley oak | 710, 711, 712 | B00BEHW800 | Behre's Hyperbola |
| interior live oak | 505, 506, 508, 511, 514 | 500DVEW839 | Pillsbury and Kirkley Equations |
| interior live oak | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| interior live oak | 710, 711, 712 | B00BEHW800 | Behre's Hyperbola |
| bigleaf maple | 505, 506, 508, 511, 514 | 500DVEW312 | Pillsbury and Kirkley Equations |
| bigleaf maple | 610, 611 | 616BEHW312 | Behre's Hyperbola |
| bigleaf maple | 710, 711, 712 | B00BEHW312 | Behre's Hyperbola |
| California buckeye | 505, 506, 508, 511, 514 | 500DVEW807 | Pillsbury and Kirkley Equations |
| California buckeye | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| California buckeye | 710, 711, 712 | B00BEHW800 | Behre's Hyperbola |
| red alder | 505, 506, 508, 511, 514 | 500DVEW351 | Pillsbury and Kirkley Equations |
| red alder | 610, 611 | 616BEHW351 | Behre's Hyperbola |
| red alder | 710, 711, 712 | B00BEHW351 | Behre's Hyperbola |
| Pacific madrone | 505, 506, 508, 511, 514 | 500DVEW361 | Pillsbury and Kirkley Equations |
| Pacific madrone | 610, 611 | 616BEHW361 | Behre's Hyperbola |
| Pacific madrone | 710, 711, 712 | B00BEHW361 | Behre's Hyperbola |
| giant chinquapin | 505, 506, 508, 511, 514 | 500DVEW431 | Pillsbury and Kirkley Equations |
| giant chinquapin | 610, 611 | 616BEHW431 | Behre's Hyperbola |
| giant chinquapin | 710, 711, 712 | B00BEHW431 | Behre's Hyperbola |
| Pacific dogwood | 505, 506, 508, 511, 514 | 500DVEW807 | Pillsbury and Kirkley Equations |
| Pacific dogwood | 610, 611 | 616BEHW492 | Behre's Hyperbola |
| Pacific dogwood | 710, 711, 712 | B00BEHW999 | Behre's Hyperbola |
| Oregon ash | 505, 506, 508, 511, 514 | 500DVEW807 | Pillsbury and Kirkley Equations |
| Oregon ash | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| Oregon ash | 710, 711, 712 | B00BEHW312 | Behre's Hyperbola |
| walnut | 505, 506, 508, 511, 514 | 500DVEW818 | Pillsbury and Kirkley Equations |
| walnut | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| walnut | 710, 711, 712 | B00BEHW999 | Behre's Hyperbola |
| tanoak | 505, 506, 508, 511, 514 | 500DVEW631 | Pillsbury and Kirkley Equations |
| tanoak | 610, 611 | 616BEHW631 | Behre's Hyperbola |
| tanoak | 710, 711, 712 | B00BEHW631 | Behre's Hyperbola |
| California sycamore | 505, 506, 508, 511, 514 | 500DVEW818 | Pillsbury and Kirkley Equations |
| California sycamore | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| California sycamore | 710, 711, 712 | B00BEHW800 | Behre's Hyperbola |
| quaking aspen | 505, 506, 508, 511, 514 | 500DVEW818 | Pillsbury and Kirkley Equations |
| quaking aspen | 610, 611 | 616BEHW746 | Behre's Hyperbola |
| quaking aspen | 710, 711, 712 | B00BEHW999 | Behre's Hyperbola |
| black cottonwood | 505, 506, 508, 511, 514 | 500DVEW818 | Pillsbury and Kirkley Equations |
| black cottonwood | 610, 611 | 616BEHW747 | Behre's Hyperbola |
| black cottonwood | 710, 711, 712 | B00BEHW747 | Behre's Hyperbola |
| willow | 505, 506, 508, 511, 514 | 500DVEW807 | Pillsbury and Kirkley Equations |
| willow | 610, 611 | 616BEHW920 | Behre's Hyperbola |
| willow | 710, 711, 712 | B00BEHW999 | Behre's Hyperbola |
| California nutmeg | 505, 506, 508, 511, 514 | 500DVEW807 | Pillsbury and Kirkley Equations |
| California nutmeg | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| California nutmeg | 710, 711, 712 | B00BEHW231 | Behre's Hyperbola |
| California laurel | 505, 506, 508, 511, 514 | 500DVEW981 | Pillsbury and Kirkley Equations |
| California laurel | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| California laurel | 710, 711, 712 | B00BEHW631 | Behre's Hyperbola |
| other hardwoods | 505, 506, 508, 511, 514 | 500DVEW801 | Pillsbury and Kirkley Equations |
| other hardwoods | 610, 611 | 616BEHW998 | Behre's Hyperbola |
| other hardwoods | 710, 711, 712 | B00BEHW999 | Behre's Hyperbola |
| redwood | 505, 506, 508, 511, 514 | 500WO2W211 | Wensel and Olsen Profile Model |
| redwood | 610, 611 | 616BEHW211 | Behre's Hyperbola |
| redwood | 710, 711, 712 | B00BEHW211 | Behre's Hyperbola |

**Table 7.0.3 Citations by Volume Model in the OC variant**

| **Model Name** | **Citation** |
| --- | --- |
| Behre’s Hyperbola | USFS-R6 Sale Preparation and Valuation Section of Diameter and Volume Procedures - R6 Timber Cruise System. 1978. |
| Flewelling 2-Point Profile Model | Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II. |
| Pillsbury and Kirkley Equations | Norman H Pillsbury and Michael L Kirkley 1984 Equations for Total, Wood, and saw-Log Volume for Thirteen California Hardwoods. Pacific Northwest Forest and Range Experiment Station Research Note PNW-414. |
| Wensel and Olsen Profile Model | Wensel, L. C. and C. M. Olson. 1993. Tree Taper Models for Major Commercial California Conifers. Research Note No. 33. Northern Calif. Forest Yield Cooperative. Dept. of Forstry and Mgmt., Univ. of Calif., Berkeley. 28 pp. |

**Table 7.0.4 Species-specific default form class values for the OC variant.**

| **Species Code** | **Behre’s Hyperbola Equation Number** | **Form Class** | | | | |
| --- | --- | --- | --- | --- | --- | --- |
| **0<DBH<11** | **11<=DBH<21** | **21<=DBH<31** | **31<=DBH<41** | **DBH>=41** |
| **Rogue River NF (610)** | | | | | | |
| PC | 616BEHW000 | 95 | 82 | 76 | 74 | 74 |
| IC | 616BEHW081 | 94 | 94 | 78 | 75 | 74 |
| RC | 616BEHW242 | 95 | 82 | 76 | 75 | 74 |
| GF\* | 616BEHW017 | 96 | 91 | 84 | 83 | 82 |
| RF | 616BEHW020 | 95 | 82 | 76 | 74 | 74 |
| SH | 616BEHW021 | 94 | 90 | 84 | 82 | 81 |
| DF\* | 616BEHW202 | 94 | 87 | 82 | 81 | 81 |
| WH | 616BEHW263 | 91 | 82 | 79 | 78 | 78 |
| MH | 616BEHW264 | 96 | 83 | 79 | 77 | 76 |
| WB | 616BEHW101 | 92 | 92 | 92 | 92 | 87 |
| KP | 616BEHW103 | 95 | 79 | 78 | 78 | 78 |
| LP | 616BEHW108 | 95 | 79 | 78 | 78 | 76 |
| CP | 616BEHW000 | 95 | 95 | 95 | 82 | 82 |
| LM | 616BEHW113 | 95 | 95 | 95 | 82 | 82 |
| JP | 616BEHW116 | 93 | 93 | 86 | 83 | 81 |
| SP | 616BEHW117 | 94 | 90 | 84 | 82 | 82 |
| WP | 616BEHW119 | 94 | 87 | 83 | 82 | 81 |
| PP\* | 616BEHW122 | 93 | 93 | 83 | 81 | 80 |
| MP | 616BEHW000 | 95 | 82 | 79 | 78 | 78 |
| GP | 616BEHW000 | 95 | 95 | 82 | 79 | 78 |
| WJ | 616BEHW064 | 95 | 95 | 95 | 95 | 95 |
| BR | 616BEHW000 | 93 | 89 | 86 | 84 | 84 |
| GS | 616BEHW000 | 95 | 82 | 76 | 74 | 74 |
| PY | 616BEHW231 | 98 | 98 | 98 | 98 | 88 |
| OS | 616BEHW298 | 95 | 95 | 82 | 79 | 78 |
| LO | 616BEHW000 | 95 | 95 | 86 | 82 | 82 |
| CY | 616BEHW000 | 94 | 94 | 85 | 80 | 80 |
| BL | 616BEHW000 | 95 | 95 | 95 | 86 | 86 |
| EO | 616BEHW000 | 95 | 95 | 95 | 86 | 86 |
| WO | 616BEHW815 | 89 | 89 | 89 | 89 | 89 |
| BO | 616BEHW818 | 98 | 88 | 84 | 81 | 81 |
| VO | 616BEHW000 | 95 | 79 | 78 | 76 | 76 |
| IO | 616BEHW000 | 95 | 95 | 95 | 95 | 95 |
| BM | 616BEHW312 | 98 | 84 | 81 | 80 | 79 |
| BU | 616BEHW000 | 95 | 95 | 95 | 95 | 95 |
| RA | 616BEHW351 | 98 | 84 | 81 | 80 | 80 |
| MA | 616BEHW361 | 95 | 86 | 82 | 79 | 79 |
| GC | 616BEHW431 | 95 | 86 | 78 | 76 | 75 |
| DG | 616BEHW492 | 94 | 94 | 85 | 80 | 80 |
| FL | 616BEHW000 | 98 | 88 | 81 | 81 | 80 |
| WN | 616BEHW000 | 95 | 95 | 86 | 82 | 82 |
| TO | 616BEHW631 | 98 | 88 | 80 | 78 | 77 |
| SY | 616BEHW000 | 95 | 95 | 95 | 95 | 95 |
| AS | 616BEHW746 | 98 | 98 | 98 | 98 | 98 |
| CW | 616BEHW747 | 98 | 80 | 78 | 77 | 77 |
| WI | 616BEHW920 | 98 | 98 | 98 | 98 | 98 |
| CN | 616BEHW000 | 95 | 95 | 95 | 95 | 95 |
| CL | 616BEHW000 | 95 | 86 | 82 | 79 | 78 |
| OH | 616BEHW998 | 95 | 95 | 95 | 95 | 95 |
| RW | 616BEHW211 | 82 | 82 | 79 | 78 | 78 |
| **Siskiyou NF (611)** | |  |  |  |  |  |
| PC | 616BEHW000 | 94 | 90 | 84 | 82 | 81 |
| IC | 616BEHW081 | 89 | 89 | 75 | 71 | 71 |
| RC | 616BEHW242 | 96 | 83 | 78 | 76 | 76 |
| GF\* | 616BEHW017 | 93 | 93 | 86 | 85 | 85 |
| RF | 616BEHW020 | 92 | 87 | 82 | 80 | 79 |
| SH | 616BEHW021 | 96 | 96 | 90 | 87 | 87 |
| DF\* | 616BEHW202 | 93 | 86 | 81 | 80 | 80 |
| WH | 616BEHW263 | 93 | 93 | 90 | 89 | 88 |
| MH | 616BEHW264 | 93 | 89 | 84 | 82 | 81 |
| WB | 616BEHW101 | 91 | 91 | 91 | 91 | 86 |
| KP | 616BEHW103 | 96 | 88 | 86 | 86 | 86 |
| LP | 616BEHW108 | 96 | 88 | 86 | 86 | 85 |
| CP | 616BEHW000 | 91 | 91 | 91 | 86 | 86 |
| LM | 616BEHW113 | 91 | 91 | 91 | 86 | 86 |
| JP | 616BEHW116 | 93 | 93 | 86 | 83 | 81 |
| SP | 616BEHW117 | 96 | 91 | 85 | 84 | 83 |
| WP | 616BEHW119 | 96 | 88 | 84 | 83 | 82 |
| PP\* | 616BEHW122 | 93 | 93 | 83 | 81 | 80 |
| MP | 616BEHW000 | 91 | 86 | 84 | 82 | 82 |
| GP | 616BEHW000 | 91 | 91 | 86 | 84 | 82 |
| WJ | 616BEHW064 | 91 | 91 | 91 | 91 | 91 |
| BR | 616BEHW000 | 93 | 89 | 86 | 84 | 84 |
| GS | 616BEHW000 | 91 | 86 | 81 | 79 | 78 |
| PY | 616BEHW231 | 88 | 88 | 88 | 88 | 80 |
| OS | 616BEHW298 | 91 | 91 | 86 | 84 | 82 |
| LO | 616BEHW000 | 95 | 95 | 86 | 82 | 82 |
| CY | 616BEHW000 | 95 | 95 | 86 | 82 | 82 |
| BL | 616BEHW000 | 95 | 95 | 95 | 86 | 86 |
| EO | 616BEHW000 | 95 | 95 | 95 | 86 | 86 |
| WO | 616BEHW815 | 95 | 95 | 95 | 95 | 95 |
| BO | 616BEHW818 | 98 | 88 | 84 | 81 | 81 |
| VO | 616BEHW000 | 95 | 79 | 78 | 76 | 76 |
| IO | 616BEHW000 | 95 | 95 | 95 | 95 | 95 |
| BM | 616BEHW312 | 98 | 84 | 81 | 80 | 79 |
| BU | 616BEHW000 | 95 | 95 | 95 | 95 | 95 |
| RA | 616BEHW351 | 91 | 86 | 84 | 82 | 82 |
| MA | 616BEHW361 | 98 | 88 | 84 | 81 | 81 |
| GC | 616BEHW431 | 95 | 86 | 78 | 76 | 75 |
| DG | 616BEHW492 | 98 | 98 | 88 | 84 | 84 |
| FL | 616BEHW000 | 98 | 88 | 81 | 81 | 80 |
| WN | 616BEHW000 | 95 | 95 | 86 | 82 | 82 |
| TO | 616BEHW631 | 91 | 91 | 82 | 80 | 79 |
| SY | 616BEHW000 | 95 | 95 | 95 | 95 | 95 |
| AS | 616BEHW746 | 95 | 95 | 95 | 95 | 95 |
| CW | 616BEHW747 | 92 | 83 | 81 | 80 | 80 |
| WI | 616BEHW920 | 92 | 92 | 92 | 92 | 92 |
| CN | 616BEHW000 | 95 | 95 | 95 | 95 | 95 |
| CL | 616BEHW000 | 95 | 86 | 82 | 79 | 78 |
| OH | 616BEHW998 | 95 | 95 | 95 | 95 | 95 |
| RW | 616BEHW211 | 82 | 82 | 79 | 78 | 78 |

\*Species whose default volume equation at this location code is not Behre’s Hyperbola (see Table 7.0.2).

| **Species Code** | **Behre’s Hyperbola Equation Number** | **710** | **711** | **712** |
| --- | --- | --- | --- | --- |
| PC | B00BEHW081 | 73 | 70 | 70 |
| IC | B00BEHW081 | 86 | 78 | 78 |
| RC | B00BEHW242 | 80 | 78 | 78 |
| GF | B00BEHW017 | 87 | 91 | 91 |
| RF | B00BEHW021 | 76 | 78 | 75 |
| SH | B00BEHW021 | 76 | 78 | 75 |
| DF | B02BEHW202 | 89 | 87 | 87 |
| WH | B00BEHW263 | 91 | 91 | 92 |
| MH | B00BEHW260 | 76 | 70 | 72 |
| WB | B00BEHW119 | 80 | 73 | 80 |
| KP | B00BEHW108 | 80 | 68 | 80 |
| LP | B00BEHW108 | 80 | 68 | 80 |
| CP | B00BEHW108 | 80 | 68 | 80 |
| LM | B00BEHW108 | 80 | 68 | 80 |
| JP | B00BEHW116 | 80 | 70 | 75 |
| SP | B00BEHW117 | 91 | 84 | 91 |
| WP | B00BEHW119 | 80 | 76 | 80 |
| PP | B00BEHW122 | 88 | 85 | 88 |
| MP | B00BEHW108 | 80 | 68 | 80 |
| GP | B00BEHW108 | 80 | 68 | 80 |
| WJ | B00BEHW242 | 76 | 70 | 60 |
| BR | B00BEHW093 | 76 | 74 | 76 |
| GS | B00BEHW211 | 76 | 70 | 75 |
| PY | B00BEHW231 | 76 | 76 | 70 |
| OS | B00BEHW999 | 76 | 70 | 74 |
| LO | B00BEHW800 | 80 | 80 | 80 |
| CY | B00BEHW800 | 80 | 80 | 80 |
| BL | B00BEHW800 | 80 | 80 | 80 |
| EO | B00BEHW800 | 80 | 80 | 80 |
| WO | B00BEHW800 | 80 | 80 | 80 |
| BO | B00BEHW800 | 80 | 80 | 80 |
| VO | B00BEHW800 | 80 | 80 | 80 |
| IO | B00BEHW800 | 80 | 80 | 80 |
| BM | B00BEHW312 | 84 | 84 | 84 |
| BU | B00BEHW800 | 80 | 80 | 80 |
| RA | B00BEHW351 | 88 | 88 | 91 |
| MA | B00BEHW361 | 81 | 81 | 86 |
| GC | B00BEHW431 | 83 | 83 | 86 |
| DG | B00BEHW999 | 83 | 83 | 83 |
| FL | B00BEHW312 | 84 | 84 | 84 |
| WN | B00BEHW999 | 83 | 83 | 83 |
| TO | B00BEHW631 | 84 | 84 | 86 |
| SY | B00BEHW800 | 80 | 80 | 80 |
| AS | B00BEHW999 | 76 | 72 | 75 |
| CW | B00BEHW747 | 76 | 72 | 74 |
| WI | B00BEHW999 | 75 | 75 | 75 |
| CN | B00BEHW231 | 76 | 76 | 70 |
| CL | B00BEHW631 | 84 | 84 | 86 |
| OH | B00BEHW999 | 76 | 70 | 74 |
| RW | B00BEHW211 | 75 | 75 | 75 |

# 8.0 Fire and Fuels Extension (FFE-FVS)

The Fire and Fuels Extension to the Forest Vegetation Simulator (FFE-FVS) (Reinhardt and Crookston 2003) integrates FVS with models of fire behavior, fire effects, and fuel and snag dynamics. This allows users to simulate various management scenarios and compare their effect on potential fire hazard, surface fuel loading, snag levels, and stored carbon over time. Users can also simulate prescribed burns and wildfires and get estimates of the associated fire effects such as tree mortality, fuel consumption, and smoke production, as well as see their effect on future stand characteristics. FFE-FVS, like FVS, is run on individual stands, but it can be used to provide estimates of stand characteristics such as canopy base height and canopy bulk density when needed for landscape-level fire models.

For more information on FFE-FVS and how it is calibrated for the OC variant, refer to the CA variant details in the updated FFE-FVS model documentation (Rebain, comp. 2010) available on the FVS website.

# 9.0 Insect and Disease Extensions

The FVS Insect and Pathogen model for dwarf mistletoe has been developed for the base variant of the OC variant through the participation and contribution of various organizations led by Forest Health Protection. This model is currently maintained by the Forest Management Service Center and regional Forest Health Protection specialists. Additional details regarding this model may be found in chapter 8 of the Essential FVS Users Guide (Dixon 2002).

# 10.0 Literature Cited

Arney, J. D. 1985. A modeling strategy for the growth projection of managed stands. Canadian Journal of Forest Research. 15(3):511-518.

Atzet, T. and Wheeler D. 1984. Preliminary plant associations of the Siskiyou Mountain Province. Portland, OR: Forest Service. pp 315.

Bechtold, William A. 2004. Largest-crown-diameter Prediction Models for 53 Species in the Western United States. WJAF. Forest Service. 19(4): pp 241-245.

Burke, J. G. 1975. Human use of the California nutmeg tree, Torreya calidornica, and other members of the genus. Economic Botany. 29:127-139.

Burns, R. M., & Honkala, B. H. 1990. Silvics of North America: 1. Conifers; 2. Hardwoods Agriculture Handbook 654. US Department of Agriculture, Forest Service, Washington, DC.

Burrill, Elizabeth A.; DiTommaso, Andrea M.; Turner, Jeffery A.; Pugh, Scott A.; Christensen, Glenn; Kralicek, Karin M.; Perry, Carol J.; Lepine, Lucie C.; Walker, David M.; Conkling, Barbara L. 2024. The Forest Inventory and Analysis Database, FIADB user guides, volume: database description (version 9.3), nationwide forest inventory (NFI). U.S. Department of Agriculture, Forest Service. 1026 p. [Online].

Caprio, Anthony C.; Zwolinski, Malcolm J. 1992. Fire effects on Emory and Mexican blue oaks in southeastern Arizona. In: Ffolliott, Peter F.; Gottfried, Gerald J.; Bennett, Duane A.; [and others], technical coordinators. Ecology and management of oak and associated woodlands: perspectives in the sw United States & n Mexico: Proceedings; 1992 April 27-30; Sierra Vista, AZ. Gen. Tech. Rep. RM-218. Fort Collins, CO: U.S. Department of Agriculture, Forest Service, Rocky Mountain Forest and Range Experiment Station: 150-154.

Cole, D. M.; Stage, A. R. 1972. Estimating future diameters of lodgepole pine. Res. Pap. INT-131. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 20p.

Conard, Susan G. 1987. First year growth of canyon live oak sprouts following thinning and clearcutting. In: Plumb, Timothy R.; Pillsbury, Norman H., technical coordinators. Proceedings of the symposium on multiple-use management of California's hardwood resources; 1986 November 12-14; San Luis Obispo, CA. Gen. Tech. Rep. PSW-100. Berkeley, CA: U.S. Department of Agriculture, Forest Service, Pacific Southwest Forest and Range Experiment Station: 439.

Crookston, Nicholas L. 2003. Internal document on file. Data provided from Region 1. Moscow, ID: Forest Service.

Crookston, Nicholas L. 2005. Draft: Allometric Crown Width Equations for 34 Northwest United States Tree Species Estimated Using Generalized Linear Mixed Effects Models.

Crookston, Nicholas L. 2008. Internal Report.

Curtis, Robert O. 1967. Height-diameter and height-diameter-age equations for second-growth Douglas-fir. Forest Science 13(4):365-375.

Dahms, Walter. 1964. Gross and net yield tables for lodgepole pine. Res. Pap. PNW-8. Portland, OR: Pacific Northwest Forest and Range Experiment Station. 14 p.

Davis, F. W., Keller, E. A., Parikh, A., & Florsheim, J. 1989. Recovery of the chaparral riparian zone after wildfire. In Proceedings of the Conference, Davis, Pacific Southwest Forest, Range Experiment Station, Berkeley, CA. US Forest Service General Technical Report PSW-110 (pp. 194-203).

Dixon, G. E. 1985. Crown ratio modeling using stand density index and the Weibull distribution. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 13p.

Dixon, Gary E. comp. 2002 (revised frequently). Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U.S. Department of Agriculture, Forest Service, Forest Management Service Center.

Dolph, Leroy K. 1987. Site index curves for young-growth California white fir on the western slopes of the Sierra Nevada. Res. Paper PSW-185. Berkeley, CA: Forest Service, Pacific Southwest Forest and Range Experiment Station.

Donnelly, Dennis. 1996. Internal document on file. Data provided from Region 6. Fort Collins, CO: Forest Service.

Dunning, Duncan, and L.H. Reineke. 1933. Preliminary yield tables for second-growth stands in the California pine region. Tech. Bull. 354. Forest Service. 24p.

Dunning, Duncan. 1942. A site classification for the mixed-conifer selection forests of the Sierra Nevada. Res. Note No. 28. Berkeley, CA: Forest Service, California Forest and Range Experiment Station. 21p.

Esser, Lora. 1993. Juglans californica. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II.

Fryer, Janet L. 2008. Lithocarpus densiflorus. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Gom, L. A., & Rood, S. B. (2000). Fire induces clonal sprouting of riparian cottonwoods. Canadian Journal of Botany, 77(11), 1604-1616.

Gucker, Corey L. 2005. Cornus nuttallii. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Gucker, Corey L. 2007. Quercus garryana. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Hall, Frederick C. 1983. Growth basal area: a field method for appraising forest site productivity for stockability. Can. J. For. Res. 13:70-77.

Hann, David W. and Scrivani, John A. 1987. Dominant-Height-Growth and Site-Index Equations for Douglas-Fir and Ponderosa Pine in Southwest Oregon. Res. Bull. 59. Oregon State University, College of Forestry, Forest Research Lab.

Harrington, Constance A. 1984. Factors influencing initial sprouting of red alder. Canadian Journal of Forest Research. 14: 357-361.

Harrington, T. B., Tappeiner, I. I., John, C., & Warbington, R. 1992. Predicting crown sizes and diameter distributions of tanoak, Pacific madrone, and giant chinkapin sprout clumps. Western Journal of Applied Forestry, 7(4), 103-108.

Howard, Janet L. 1992. Aesculus californica. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Howard, Janet L. 1992. Torreya californica. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Howard, Janet L. 1992. Quercus lobata. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Keyser, C.E. 2001. Quaking Aspen Sprouting in Western FVS Variants: A New Approach. Unpublished Manuscript.

Krajicek, J.; Brinkman, K.; Gingrich, S. 1961. Crown competition – a measure of density. Forest Science. 7(1):35-42

Krumland, B. and Eng, H., 2005. Site Index Systems for Major Young-Growth Forest and Woodland Species in Northern California. California Forestry Report 4.

McCreary, Douglas D.; Tietje, William D.; Schmidt, Robert H.; Gross, Rob; Weitkamp, William H.; Willoughby, Bob L.; Bell, Fremont L. 1991. Stump sprouting of blue oaks in California. In: Standiford, Richard B., technical coordinator. Proceedings of the symposium on oak woodlands and hardwood rangeland management; 1990 October 31 - November 2; Davis, CA. Gen. Tech. Rep. PSW-126. Berkeley, CA: Pacific Southwest Research Station: 64-69.

McDonald, Philip M. 1978. Silviculture-ecology of three native California hardwoods on high sites in north central California. Dissertation (Ph.D.), Oregon State University, Department of Forest Science, Corvallis. 309 p.

McDonald, Philip M.; Minore, Don; Atzet, Tom. 1983. Southwestern Oregon--northern California hardwoods. In: Burns, Russell M., compiler. Silvicultural systems for the major forest types of the United States. Agric. Handb. 445. Washington, DC: U.S. Department of Agriculture: 29-32.

McDonald, Philip M. 1990. Quercus kelloggii Newb. California Black Oak. In: Burns, Russell M.; Honkala, Barbara H., technical coordinators. Silvics of North America. Volume 2. Hardwoods. Agric. Handb. 654. Washington, DC: U.S. Department of Agriculture, Forest Service: 1281-1299.

McDonald, Philip M. and Tappenier II, John C. 1990. Arbutus menziesii Pursh. Pacific madrone. In: Burns, Russell M.; Honkala, Barbara H., technical coordinators. Silvics of North America. Volume 2. Hardwoods. Agric. Handb. 654. Washington, DC: U.S. Department of Agriculture, Forest Service: 275-289.

Meyer, Rachelle. 2012. Chrysolepis chrysophylla. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Minore, D., & Weatherly, H. G. (1996). Stump sprouting of Pacific yew. General Technical Report. PNW-GTR-378. Portland, Or.: U.S. Dept. of Agriculture, Pacific Northwest Research Station.

Norman H Pillsbury and Michael L Kirkley 1984 Equations for Total, Wood, and saw-Log Volume for Thirteen California Hardwoods. Pacific Northwest Forest and Range Experiment Station Research Note PNW-414.

Paysen, Timothy E.; Narog, Marcia G.; Tissell, Robert G.; Lardner, Melody A. 1991. Trunk and root sprouting on residual trees after thinning a Quercus chrysolepis stand. Forest Science. 37(1): 17-27.

Porter, Dennis R. and Harry V. Wiant, Jr. 1965. Site Index Equations for Tanoak, Pacific Madrone, and Red Alder in the Redwood Region of Humboldt County, California. Journal of Forestry. pp 286-287.

Powers, Robert F. 1972. Site index curves for unmanaged stands of California black oak. Res. Note PSW-262. Berkeley, CA: Forest Service, Pacific Southwest Forest and Range Experiment Station. 5p.

Rebain, Stephanie A. comp. 2010 (revised frequently). The Fire and Fuels Extension to the Forest Vegetation Simulator: Updated Model Documentation. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 379 p.

Reinhardt, Elizabeth; Crookston, Nicholas L. (Technical Editors). 2003. The Fire and Fuels Extension to the Forest Vegetation Simulator. Gen. Tech. Rep. RMRS-GTR-116. Ogden, UT: U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station. 209 p.

Ritchie, Martin W. and David W. Hann. 1986. Development of a tree height growth model for Douglas-fir. Forest Ecology and Management 15(2):135-145.

Roy, D. F. 1955. Hardwood sprout measurements in northwestern California. Forest Research Notes. California Forest and Range Experiment Station, (95).

Schlesinger, R. C., & Funk, D. T. 1977. Manager's handbook for black walnut. USDA Forest Service General Technical Report, North Central Forest Experiment Station, (NC-38).

Schlesinger, Richard C. 1989. Estimating Black Walnut Plantation Growth and Yield. In: Clark, F. Bryan, tech. ed.; Hutchinson, Jay G., ed. Central Hardwood Notes. St. Paul, MN: U.S. Department of Agriculture, Forest Service, North Central Forest Experiment Station.: Note 5.07.

Stage, A. R. 1973. Prognosis Model for stand development. Res. Paper INT-137. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 32p.

Standiford, R., McCreary, D., Barry, S., & Forero, L. (2011). Blue oak stump sprouting evaluated after firewood harvest in northern Sacramento Valley. California Agriculture, 65(3), 148-154.

Steinberg, Peter D. 2001. Populus balsamifera subsp. trichocarpa. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Sterrett, W. D. 1915. The ashes: their characteristics and management. U.S. Department of Agriculture, Bulletin 299. Washington, DC. 88 p.

Tappeiner, I. I., John, C., Zasada, J., Huffman, D., & Maxwell, B. D. 1996. Effects of cutting time, stump height, parent tree characteristics, and harvest variables on development of bigleaf maple sprout clumps. Western Journal of Applied Forestry, 11(4), 120-124.

Thornburgh, Dale A., 1990. Quercus chrysolepsis Liebm. Canyon live oak. In: Burns, Russell M.; Honkala, Barbara H., technical coordinators. Silvics of North America. Volume 2. Hardwoods. Agric. Handb. 654. Washington, DC: U.S. Department of Agriculture, Forest Service: 1206-1218.

Uchytil, Ronald J. 1989. Alnus rubra. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory.

USFS-R6 Sale Preparation and Valuation Section of Diameter and Volume Procedures - R6 Timber Cruise System. 1978.

Van Dyck, Michael G.; Smith-Mateja, Erin E., comps. 2000 (revised frequently). Keyword reference guide for the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

Wensel, L. C. and C. M. Olson. 1993. Tree Taper Models for Major Commercial California Conifers. Research Note No. 33. Northern Calif. Forest Yield Cooperative. Dept. of Forstry and Mgmt., Univ. of Calif., Berkeley. 28 pp.

Westfall, James A.; Coulston, John W.; Gray, Andrew N.; Shaw, John D.; Radtke, Philip J.; Walker, David M.; Weiskittel, Aaron R.; MacFarlane, David W.; Affleck, David L.R.; Zhao, Dehai; Temesgen, Hailemariam; Poudel, Krishna P.; Frank, Jereme M.; Prisley, Stephen P.; Wang, Yingfang; Sánchez Meador, Andrew J.; Auty, David; Domke, Grant M. 2024. A national-scale tree volume, biomass, and carbon modeling system for the United States. Gen. Tech. Rep. WO-104. Washington, DC: U.S. Department of Agriculture, Forest Service. 37 p.

Wilkinson, W. H., McDonald, P. M., & Morgan, P. 1997. Tanoak sprout development after cutting and burning in a shade environment. Western Journal of Applied Forestry, 12(1), 21-26.

Wykoff, W. R. 1990. A basal area increment model for individual conifers in the northern Rocky Mountains. For. Science 36(4): 1077-1104.

Wykoff, William R., Crookston, Nicholas L., and Stage, Albert R. 1982. User’s guide to the Stand Prognosis Model. Gen. Tech. Rep. INT-133. Ogden, UT: Forest Service, Intermountain Forest and Range Experiment Station. 112p.

# 11.0 Appendices

## 11.1 Appendix A: Plant Association Codes

**Table 11.1.2 Region 6 plant association codes recognized in the OC variant.**

| **FVS Sequence Number = Plant Association**  **Description** | **Alpha Code** | **Site Species** | **Site Index\*** | **Max. SDI\*** | **Source\*** | **Reference** |
| --- | --- | --- | --- | --- | --- | --- |
| 407 = PSME-ABCO-PIJE  Douglas-fir-white fir-Jeffrey pine | CDC411 | DF | 85 | 899 | H | Aztet and Wheeler (1984) |
| 408 = PSME-ABCO-PIPO  Douglas-fir-white fir-ponderosa pine | CDC412 | DF | 87 | 1155 | H | Aztet and Wheeler (1984) |
| 409 = PSME-ABCO  Douglas-fir-white fir | CDC421 | DF | 72 | 720 | C | Aztet and Wheeler (1984) |
| 410 = PSME-ABCO/HODI  Douglas-fir-white fir/creambush oceanspray | CDC431 | DF | 96 | 765 | C | Aztet and Wheeler (1984) |
| 411 = PSME-ABCO/BENE  Douglas-fir-white fir/dwarf Oregongrape | CDC432 | DF | 93 | 1193 | H | Aztet and Wheeler (1984) |
| 412 = PSME-PIPO  Douglas-fir-ponderosa pine | CDC511 | DF | 101 | 735 | C | Aztet and Wheeler (1984) |
| 413 = PSME-PIJE  Douglas-fir-Jeffrey pin | CDC521 | DF | 71 | 595 | C | Aztet and Wheeler (1984) |
| 414 = PSME/DEPAUPERATE  Douglas-fir/depauperate | CDF911 | DF | 70 | 670 | C | Aztet and Wheeler (1984) |
| 415 = PSME-LIDE3/GASH  Douglas-fir-tanoak/salal | CDH111 | DF | 86 | 845 | H | Aztet and Wheeler (1984) |
| 416 = PSME/RHMA  Douglas-fir/Pacific rhododendron | CDH112 | DF | 92 | 800 | C | Aztet and Wheeler (1984) |
| 417 = PSME-LIDE3-PILA  Douglas-fir-tanoak-sugar pine | CDH121 | DF | 97 | 720 | C | Aztet and Wheeler (1984) |
| 418 = PSME-LIDE3  Douglas-fir-tanoak | CDH131 | DF | 81 | 1098 | H | Aztet and Wheeler (1984) |
| 419 = PSME-LIDE3-QUCH  Douglas-fir-tanoak-canyon live oak | CDH141 | DF | 86 | 780 | C | Aztet and Wheeler (1984) |
| 420 = PSME-LIDE3/RHDI  Douglas-fir-tanoak/poison oak | CDH142 | DF | 82 | 1050 | C | Aztet and Wheeler (1984) |
| 421 = PSME-QUSA  Douglas-fir-Sadler oak | CDH511 | DF | 95 | 1087 | H | Aztet and Wheeler (1984) |
| 422 = PSME/RHDI-BEPI  Douglas-fir/poison oak-Piper's Oregongrape | CDS111 | DF | 77 | 655 | C | Aztet and Wheeler (1984) |
| 423 = PSME/RHDI  Douglas-fir/poison oak | CDS112 | DF | 67 | 630 | C | Aztet and Wheeler (1984) |
| 424 = PSME/BENE  Douglas-fir/dwarf Oregongrape | CDS511 | DF | 93 | 635 | C | Aztet and Wheeler (1984) |
| 425 = PSME/BERE  Douglas-fir/creeping Oregongrape | CDS521 | DF | 85 | 670 | C | Aztet and Wheeler (1984) |
| 426 = TSHE-CHLA  Western hemlock-Port Orford cedar | CHC111 | DF | 117 | 1215 | C | Aztet and Wheeler (1984) |
| 427 = TSHE-THPL/HIGH ELEV  Western hemlock-western redcedar/high elevation | CHC412 | DF | 108 | 945 | C | Aztet and Wheeler (1984) |
| 428 = TSHE-THPL  Western hemlock-western redcedar | CHC461 | DF | 146 | 1105 | C | Aztet and Wheeler (1984) |
| 429 = TSHE-ABCO  Western hemlock-white fir | CHC611 | DF | 119 | 890 | C | Aztet and Wheeler (1984) |
| 430 = TSHE-UMCA  Western hemlock-California laurel | CHH111 | DF | 106 | 650 | C | Aztet and Wheeler (1984) |
| 431 = TSHE-QUSA  Western hemlock-Sadler oak | CHH511 | DF | 108 | 1152 | H | Aztet and Wheeler (1984) |
| 432 = TSHE/GASH  Western hemlock/salal | CHS131 | DF | 61 | 1050 | C | Aztet and Wheeler (1984) |
| 433 = TSHE/RHMA  Western hemlock/Pacific rhododendron | CHS331 | DF | 102 | 1145 | C | Aztet and Wheeler (1984) |
| 434 = TSME/POPU  Mountain hemlock/skunkleaf polemonium | CMF211 | SH | 74 | 555 | C | Aztet and Wheeler (1984) |
| 435 = PIPO-PSME  Ponderosa pine-Douglas-fir | CPC411 | DF | 76 | 720 | H | Aztet and Wheeler (1984) |
| 436 = PIJE-PIMO  Jeffrey pine-western white pine | CPC511 | JP | 52 | 420 | C | Aztet and Wheeler (1984) |
| 437 = PIJE/FEID  Jeffrey pine/Idaho fescue | CPG141 | JP | 57 | 200 | C | Aztet and Wheeler (1984) |
| 438 = PIJE-QUVA  Jeffrey pine-huckleberry oak | CPH411 | JP | 60 | 470 | C | Aztet and Wheeler (1984) |
| 439 = PIJE/CEPU  Jeffrey pine/dwarf ceanothus | CPS321 | JP | 58 | 364 | H | Aztet and Wheeler (1984) |
| 440 = PIJE/GRASS  Jeffrey pine/grass | CPS611 | JP | 57 | 340 | H | Aztet and Wheeler (1984) |
| 441 = PIMO/XETE  Western white pine/beargrass | CQF111 | WF | 33 | 436 | H | Aztet and Wheeler (1984) |
| 442 = ABMAS/POPU  Shasta red fir/skunkleaf polemonium | CRF211 | SH | 57 | 675 | C | Aztet and Wheeler (1984) |
| 443 = ABMAS/SHEEP  Shasta red fir/sheep(grazing destroyed understory plants) | CRF311 | SH | 50 | 319 | H | Aztet and Wheeler (1984) |
| 444 = ABMAS-QUSA  Shasta red fir-Sadler oak | CRH111 | SH | 81 | 470 | C | Aztet and Wheeler (1984) |
| 445 = ABMAS/SYMO  Shasta red fir/creeping snowberry | CRS211 | SH | 91 | 755 | C | Aztet and Wheeler (1984) |
| 446 = CHLA-QUVA  Port Orford cedar-huckleberry oak | CTH111 | DF | 87 | 1309 | H | Aztet and Wheeler (1984) |
| 447 = CHLA-ACMA  Port Orford cedar-bigleaf maple | CTH211 | DF | 87 | 760 | C | Aztet and Wheeler (1984) |
| 448 = CHLA/BENE/ACTR  Port Orford cedar/dwarf Oregongrape/vanillaleaf | CTS111 | DF | 85 | 1348 | H | Aztet and Wheeler (1984) |
| 449 = CHLA/BENE/LIBOL  Port Orford cedar/dwarf Oregongrape/western twinflower | CTS112 | DF | 92 | 370 | C | Aztet and Wheeler (1984) |
| 450 = CHLA/GASH  Port Orford cedar/salal | CTS211 | DF | 83 | 990 | C | Aztet and Wheeler (1984) |
| 451 = CHLA/GABU  Port Orford cedar/box-leaved silktassle | CTS311 | DF | 87 | 660 | C | Aztet and Wheeler (1984) |
| 452 = ABCO-PSME  White fir-Douglas-fir | CWC221 | DF | 92 | 815 | C | Aztet and Wheeler (1984) |
| 453 = ABCO-PSME/BENE  White fir-Douglas-fir/dwarf Oregongrape | CWC231 | DF | 95 | 785 | C | Aztet and Wheeler (1984) |
| 454 = ABCO-PSME/HODI  White fir-Douglas-fir/creambush oceanspray | CWC232 | DF | 89 | 675 | C | Aztet and Wheeler (1984) |
| 455 = ABCO-PSME/DEPAUPERATE  White fir-Douglas-fir/depauperate | CWC233 | DF | 78 | 988 | H | Aztet and Wheeler (1984) |
| 456 = ABCO-PIPO  White fir-ponderosa pine | CWC241 | DF | 84 | 930 | C | Aztet and Wheeler (1984) |
| 457 = ABCO-PIBR/VAME  White fir-Brewer spruce/thin-leaved huckleberry | CWC521 | DF | 57 | 899 | H | Aztet and Wheeler (1984) |
| 458 = ABCO-PIBR/GAOV  White fir-Brewer spruce/slender salal | CWC522 | DF | 95 | 874 | H | Aztet and Wheeler (1984) |
| 459 = ABCO-PIBR/CHUM  White fir-Brewer spruce/western prince's-pine | CWC523 | DF | 69 | 335 | C | Aztet and Wheeler (1984) |
| 460 = ABCO-CHLA  White fir-Port Orford cedar | CWC611 | DF | 99 | 1399 | H | Aztet and Wheeler (1984) |
| 461 = ABCO-CHLA/DEPAUPERATE  White fir-Port Orford cedar/depauperate | CWC612 | DF | 99 | 1399 | H | Aztet and Wheeler (1984) |
| 462 = ABCO-ABMAS/RIBES  White fir-Shasta red fir/currant | CWC721 | WF | 77 | 665 | C | Aztet and Wheeler (1984) |
| 463 = ABCO-ABMAS/ROGY  White fir-Shasta red fir/baldhip rose | CWC722 | DF | 89 | 1349 | H | Aztet and Wheeler (1984) |
| 464 = ABCO-ABMAS/SYMO  White fir-Shasta red fir/creeping snowberry | CWC723 | DF | 81 | 945 | C | Aztet and Wheeler (1984) |
| 465 = ABCO-TABR  White fir-Pacific yew | CWC811 | DF | 96 | 695 | C | Aztet and Wheeler (1984) |
| 466 = ABCO-CHNO  White fir-Alaska cedar | CWC911 | WF | 65 | 1641 | H | Aztet and Wheeler (1984) |
| 467 = ABCO/HERB  White fir/herb | CWF911 | DF | 89 | 670 | C | Aztet and Wheeler (1984) |
| 468 = ABCO-LIDE3  White fir-tanoak | CWH312 | DF | 93 | 815 | C | Aztet and Wheeler (1984) |
| 469 = ABCO-ACGL  White fir-Rocky Mountain maple | CWH413 | DF | 108 | 654 | H | Aztet and Wheeler (1984) |
| 470 = ABCO-QUSA/CHUM  White fir-Sadler oak/western prince's-pine | CWH511 | DF | 93 | 1337 | H | Aztet and Wheeler (1984) |
| 471 = ABCO-QUSA/BENE-PAMY  White-fir Sadler oak/dwarf Oregongrape-Oregon boxwood | CWH521 | DF | 96 | 470 | C | Aztet and Wheeler (1984) |
| 472 = ABCO-QUSA/BENE  White fir-Sadler oak/dwarf Oregongrape | CWH522 | DF | 105 | 560 | C | Aztet and Wheeler (1984) |
| 473 = ABCO-QUSA-CACH  White fir-Sadler oak-golden chinquapin | CWH531 | DF | 94 | 810 | C | Aztet and Wheeler (1984) |
| 474 = ABCO/SYMO  White fir/creeping snowberry | CWS331 | DF | 92 | 695 | C | Aztet and Wheeler (1984) |
| 475 = ABCO/BENE  White fir/dwarf Oregongrape | CWS523 | DF | 101 | 900 | C | Aztet and Wheeler (1984) |
| 476 = LIDE3-SESE2  Tanoak-coast redwood | HTC111 | DF | 125 | 820 | C | Aztet and Wheeler (1984) |
| 477 = LIDE3-TSHE  Tanoak-western hemlock | HTC211 | DF | 103 | 870 | C | Aztet and Wheeler (1984) |
| 478 = LIDE3-CHLA  Tanoak-Port Orford cedar | HTC311 | DF | 98 | 890 | C | Aztet and Wheeler (1984) |
| 479 = LIDE3-ABCO-ACCI  Tanoak-white fir-vine maple | HTC411 | DF | 90 | 865 | C | Aztet and Wheeler (1984) |
| 480 = LIDE3-ABCO  Tanoak-white fir | HTC412 | DF | 99 | 970 | C | Aztet and Wheeler (1984) |
| 481 = LIDE3-QUCH  Tanoak-canyon live oak | HTH111 | DF | 96 | 735 | C | Aztet and Wheeler (1984) |
| 482 = LIDE3-QUCH/BENE  Tanoak-canyon live oak/dwarf Oregongrape | HTH112 | DF | 83 | 650 | C | Aztet and Wheeler (1984) |
| 483 = LIDE3-UMCA  Tanoak-California laurel | HTH211 | DF | 110 | 810 | C | Aztet and Wheeler (1984) |
| 484 = LIDE3-ACCI  Tanoak-vine maple | HTH311 | DF | 104 | 595 | C | Aztet and Wheeler (1984) |
| 485 = LIDE3/VAOV2-GASH  Tanoak/evergreen huckleberry-salal | HTS111 | DF | 107 | 910 | C | Aztet and Wheeler (1984) |
| 486 = LIDE3/VAOV2  Tanoak/evergreen huckleberry | HTS112 | DF | 116 | 915 | C | Aztet and Wheeler (1984) |
| 487 = LIDE3/RHMA  Tanoak/Pacific rhododendron | HTS221 | DF | 111 | 830 | C | Aztet and Wheeler (1984) |
| 488 = LIDE3/RHMA-VAOV2  Tanoak/Pacific rhododendron-evergreen huckleberry | HTS222 | DF | 93 | 815 | C | Aztet and Wheeler (1984) |
| 489 = LIDE3/RHMA-GASH  Tanoak/Pacific rhododendron-salal | HTS223 | DF | 68 | 840 | C | Aztet and Wheeler (1984) |
| 490 = LIDE3/BENE  Tanoak/dwarf Oregongrape | HTS311 | DF | 95 | 805 | C | Aztet and Wheeler (1984) |
| 491 = LIDE3/BENE-RHDI  Tanoak/dwarf Oregongrape-poison oak | HTS312 | DF | 96 | 785 | C | Aztet and Wheeler (1984) |
| 492 = LIDE3/GASH  Tanoak/salal | HTS321 | DF | 102 | 970 | C | Aztet and Wheeler (1984) |
| 493 = LIDE3/GASH-RHMA  Tanoak/salal-Pacific rhododendron | HTS331 | DF | 90 | 610 | C | Aztet and Wheeler (1984) |
| 494 = LIDE3/GASH-BENE  Tanoak/salal-dwarf Oregongrape | HTS341 | DF | 109 | 935 | C | Aztet and Wheeler (1984) |
| 495 = LIDE3/RHDI-LOHI  Tanoak/poison oak-hairy honeysuckle | HTS411 | DF | 79 | 730 | C | Aztet and Wheeler (1984) |
| 496 = LIDE3/RHCA  Tanoak/California coffeeberry | HTS511 | DF | 50 | 450 | C | Aztet and Wheeler (1984) |

\*Site index estimates are from GBA analysis. SDI maximums are set by GBA analysis (Source=H) or CVS plot analysis (Source=C).

The U.S. Department of Agriculture (USDA) prohibits discrimination in all its programs and activities on the basis of race, color, national origin, sex, religion, age, disability, political beliefs, sexual orientation, or marital or family status. (Not all prohibited bases apply to all programs.) Persons with disabilities who require alternative means for communication of program information (Braille, large print, audiotape, etc.) should contact USDA’s TARGET Center at (202) 720-2600 (voice and TDD).

To file a complaint of discrimination, write USDA, Director, Office of Civil Rights, Room 326-W, Whitten Building, 1400 Independence Avenue, SW, Washington, DC 20250-9410 or call (202) 720-5964 (voice or TDD). USDA is an equal opportunity provider and employer.