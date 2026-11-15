Inland California and Southern Cascades (CA) Variant Overview of the Forest Vegetation Simulator

March 2026

![](data:image/jpeg;base64...)

![Forest%20Service%20Color](data:image/jpeg;base64...)Limber pine stand in California

(Hazel Gorden, FS-R5)

Inland California and Southern Cascades (CA) Variant Overview of the Forest Vegetation Simulator

# Authors and Contributors:

The FVS staff has maintained model documentation for this variant in the form of a variant overview since its release in 1998. The original author was Gary Dixon. In 2008, the previous document was replaced with this updated variant overview. Gary Dixon, Christopher Dixon, Robert Havis, Chad Keyser, Stephanie Rebain, Erin Smith-Mateja, and Don Vandendriesche were involved with this major update. Stephanie Rebain cross-checked information contained in this variant overview with the FVS source code. Relationships for redwood were incorporated in 2021.

FVS Staff. 2008 (revised March 9, 2026). Inland California and Southern Cascades (CA) Variant Overview – Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 84p.

Table of Contents

[Authors and Contributors: ii](#_Toc223519268)

[1.0 Introduction 1](#_Toc223519269)

[2.0 Geographic Range 2](#_Toc223519270)

[3.0 Control Variables 3](#_Toc223519271)

[3.1 Location Codes 3](#_Toc223519272)

[3.2 Species Codes 4](#_Toc223519273)

[3.3 Habitat Type, Plant Association, and Ecological Unit Codes 6](#_Toc223519274)

[3.4 Site Index 6](#_Toc223519275)

[3.4.1 Region 5 Site Class 9](#_Toc223519276)

[3.5 Maximum Density 9](#_Toc223519277)

[4.0 Growth Relationships 12](#_Toc223519278)

[4.1 Height-Diameter Relationships 12](#_Toc223519279)

[4.2 Bark Ratio Relationships 14](#_Toc223519280)

[4.3 Crown Ratio Relationships 15](#_Toc223519281)

[4.3.1 Crown Ratio Dubbing 16](#_Toc223519282)

[4.3.2 Crown Ratio Change 20](#_Toc223519283)

[4.3.3 Crown Ratio for Newly Established Trees 20](#_Toc223519284)

[4.4 Crown Width Relationships 20](#_Toc223519285)

[4.4.1 Region 5 Crown Width 20](#_Toc223519286)

[4.4.2 Region 6 Crown Width 22](#_Toc223519287)

[4.5 Crown Competition Factor 26](#_Toc223519288)

[4.6 Small Tree Growth Relationships 27](#_Toc223519289)

[4.6.1 Small Tree Height Growth 27](#_Toc223519290)

[4.6.2 Small Tree Diameter Growth 30](#_Toc223519291)

[4.7 Large Tree Growth Relationships 31](#_Toc223519292)

[4.7.1 Large Tree Diameter Growth 31](#_Toc223519293)

[4.7.2 Large Tree Height Growth 34](#_Toc223519294)

[5.0 Mortality Model 39](#_Toc223519295)

[6.0 Regeneration 42](#_Toc223519296)

[7.0 Volume 47](#_Toc223519297)

[8.0 Fire and Fuels Extension (FFE-FVS) 58](#_Toc223519298)

[9.0 Insect and Disease Extensions 59](#_Toc223519299)

[10.0 Literature Cited 60](#_Toc223519300)

[11.0 Appendices 66](#_Toc223519301)

[11.1 Appendix A: Plant Association Codes 66](#_Toc223519302)

Quick Guide to Default Settings

|  |  |  |
| --- | --- | --- |
| **Parameter or Attribute** | **Default Setting** | |
| Number of Projection Cycles | 1 (10 if using FVS GUI) | |
| Projection Cycle Length | 10 years | |
| Location Code (National Forest) | 610 – Rogue River | |
| Plant Association Code (Region 5 /Region 6) | 0 (Unknown) / 46 (CWC221 ABCO-PSME) | |
| Slope | 5 percent | |
| Aspect | 0 (no meaningful aspect) | |
| Elevation | 35 (3500 feet) | |
| Latitude / Longitude | Latitude | Longitude |
| All location codes | 42 | 124 |
| Site Species (Region 5 / Region 6) | DF / Plant Association Code Specific | |
| Site Index (Region 5 / Region 6) | 80 feet / Plant Association Code Specific | |
| Maximum Stand Density Index (R5 /R6) | Species specific / Plant Association Code specific | |
| Maximum Basal Area | Based on maximum stand density index | |
| Volume Equations | National Volume Estimator Library | |
| Merchantable Cubic Foot Volume Specifications: | | |
| Minimum DBH / Top Diameter | KP | All Other Species |
| Region 5 | 6.0 / 6.0 inches | 7.0 / 6.0 inches |
| Region 6 | 6.0 / 4.5 inches | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| Merchantable Board Foot Volume Specifications: | | |
| Minimum DBH / Top Diameter | KP | All Other Species |
| Region 5 | 6.0 / 6.0 inches | 7.0 / 6.0 inches |
| Region 6 | 6.0 / 4.5 inches | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| Sampling Design: | | |
| Large Trees (variable radius plot) | 40 BAF | |
| Small Trees (fixed radius plot) | 1/300th Acre | |
| Breakpoint DBH | 5.0 inches | |

# 1.0 Introduction

The Forest Vegetation Simulator (FVS) is an individual tree, distance independent growth and yield model with linkable modules called extensions, which simulate various insect and pathogen impacts, fire effects, fuel loading, snag dynamics, and development of understory tree vegetation. FVS can simulate a wide variety of forest types, stand structures, and pure or mixed species stands.

New “variants” of the FVS model are created by imbedding new tree growth, mortality, and volume equations for a particular geographic area into the FVS framework. Geographic variants of FVS have been developed for most of the forested lands in the United States.

The ICASCA, or CA, variant was completed in 1998 for the forest types of the northern **I**nland **CA**lifornia and **S**outhern **CA**scades regions of California and Oregon. The CA variant overlaps some of the geographic range of the Klamath Mountains (NC) variant. The model includes forty-eight individual species, and additional species are accommodated through "other softwood" and "other hardwood" categories within the model.

Since the variant’s completion in 1998, some of the functions have been adjusted and improved as more data has become available, and as model technology has advanced.

To fully understand how to use this variant, users should also consult the following publication:

* Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002)

This publication may be downloaded from the Forest Management Service Center (FMSC), Forest Service website. Other FVS publications may be needed if one is using an extension that simulates the effects of fire, insects, or diseases.

# 2.0 Geographic Range

The CA variant covers forest areas in parts of California and Oregon. This includes all or part of the Klamath, Lassen, Mendocino, Plumas, and Shasta-Trinity National Forests in California, the Illinois Valley (east) Ranger District of the Siskiyou National Forest in Oregon, and the Applegate and Ashland (west) Ranger Districts of the Rogue River National Forest in Oregon. The suggested geographic range of use for the CA variant is shown in figure 2.0.1.

**![Picture of the suggested geographic range for the ICASCA variant.](data:image/jpeg;base64...)Figure 2.0.1 Suggested geographic range of use for the CA variant.**

Within USFS Region 5, the following forests and districts should use the CA variant: Oak Knoll, Salmon River and Scott River districts of the Klamath NF; Almanor and Hat Creek districts of the Lassen NF; Coming and Stonyford districts of the Mendocino NF; and Big Bar, Hayfork, Mt. Shasta, Shasta Lake, Yolla Bolla, and Weaverville districts of the Shasta-Trinity NF (Warbington 2004, based on Spreadsheet provided by Ralph Warbington, R5 Ecosystem Planning Staff, Remote Sensing Lab, http://www.fs.fed.us/r5/rsl/).

# 3.0 Control Variables

FVS users need to specify certain variables used by the CA variant to control a simulation. These are entered in parameter fields on various FVS keywords available in the FVS interface or they are read from an FVS input database using the Database Extension.

## 3.1 Location Codes

The location code is a 3- or 4-digit code where, in general, the first digit of the code represents the Forest Service Region Number, and the last two digits represent the Forest Number within that region. In some cases, a location code beginning with a “7” or “8” is used to indicate an administrative boundary that doesn’t use a Forest Service Region number (for example, other federal agencies, state agencies, or other lands).

If the location code is missing or incorrect in the CA variant, a default forest code of 610 (Rogue River National Forest) will be used. Location codes recognized in the CA variant are shown in tables 3.1.1 and 3.1.2.

**Table 3.1.1 Location codes used in the CA variant.**

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

**Table 3.1.2 Bureau of Indian Affairs reservation codes used in the CA variant.**

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

The CA variant recognizes 48 species, plus two other composite species categories. You may use FVS species codes, Forest Inventory and Analysis (FIA) species codes, or USDA Natural Resources Conservation Service PLANTS symbols to represent these species in FVS input data. Any valid western species code identifying species not recognized by the variant will be mapped to a similar species in the variant. The species mapping crosswalk is available on the FVS website variant documentation webpage. Any non-valid species code will default to the “other hardwood” category.

Either the FVS sequence number or species code must be used to specify a species in FVS keywords and Event Monitor functions. FIA codes or PLANTS symbols are only recognized during data input and may not be used in FVS keywords. Table 3.2.1 shows the complete list of species codes recognized by the CA variant.

When entering tree data, users should substitute diameter at root collar (DRC) for diameter at breast height (DBH) for woodland species (western juniper).

**Table 3.2.1 Species codes used in the CA variant.**

| **Species Number** | **Species Code** | **FIA Code** | **PLANTS Symbol** | **Scientific Name1** | **Common Name1** |
| --- | --- | --- | --- | --- | --- |
| 1 | PC | 041 | CHLA | *Chamaecyparis lawsoniana* | Port Orford cedar |
| 2 | IC | 081 | CADE27 | *Calocedrus decurrens* | incense cedar |
| 3 | RC | 242 | THPL | *Thuja plicata* | western redcedar |
| 4 | WF | 015 | ABCO | *Abies concolor* | white fir |
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
| 25 | OS | 299 | 2TD |  | other softwood2 |
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
| 41 | WN | 600 | JUGLA | *Juglans* | walnut |
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

Plant association codes recognized in the CA variant are shown in Appendix A. If an incorrect plant association code is entered or no code is entered, FVS will use the default plant association code, which is 46 (CWC221 ABCO-PSME) for Region 6 forests, and 0 (unknown) in Region 5 forests. In Region 6 forests, plant association codes are used to set default site information such as site species, site indices, and maximum stand density indices. The site species, site index and maximum stand density indices can be reset via FVS keywords. In Region 5 and 6 forests, the plant association codes are used in the Fire and Fuels Extension (FFE) to set fuel loading in cases where there are no live trees in the first cycle. Users may enter the plant association code or the plant association FVS sequence number on the STDINFO keyword, when entering stand information from a database, or when using the SETSITE keyword without the PARMS option. If using the PARMS option with the SETSITE keyword, users must use the FVS sequence number for the plant association.

## 3.4 Site Index

Site index is used in some of the growth equations in the CA variant. Users should always use the same site curves that FVS uses as shown in table 3.4.1. Table 3.4.2 shows the reference number to be used in selecting site curves from table 3.4.1 for all species in Region 6. If site index is available, a single site index for the whole stand can be entered, a site index for each individual species in the stand can be entered, or a combination of these can be entered. A site index value must be greater than or equal to 8, otherwise the value is considered a R5 site class code, see section 3.4.1.

**Table 3.4.1 Site index reference curves used for species in the CA variant.**

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Reference Number** | **Reference** | **BHA or TTA\*** | **Base Age** | **USFS Region** |
| All Species | Dunning (1942); Dunning & Reineke (1933) or R5 Site class | BHA\*\* | 50 | 5 |
| 1 | Hann & Scrivani (1987) | BHA | 50 | 6 |
| 2 | Dolph (1987) | BHA | 50 | 6 |
| 3 | Dahms (1964) | TTA | 50 | 6 |
| 4 | Powers (1972) | BHA | 50 | 6 |
| 5 | Porter & Wiant (1965) | TTA | 50 | 6 |
| 6 | Krumland and Eng (2005)\*\*\* | BHA | 50 | 5 |

\* Equation is based on total tree age (TTA) or breast height age (BHA)

\*\* Height at BHA50 should be entered even though the original site curve was a TTA curve

\*\*\* Equation form is presented on page 34 and coefficients are provided on page 68

**Table 3.4.2 Reference numbers for site index reference curves in Region 6 by species.**

| **Species Code** | **R6 Reference Number** | **Species Code** | **R6 Reference Number** |
| --- | --- | --- | --- |
| PC | 1 | LO | 5 |
| IC | 1 | CY | 5 |
| RC | 1 | BL | 5 |
| WF | 1 | EO | 5 |
| RF | 2 | WO | 4 |
| SH | 2 | BO | 4 |
| DF | 1 | VO | 4 |
| WH | 1 | IO | 5 |
| MH | 2 | BM | 5 |
| WB | 3 | BU | 4 |
| KP | 3 | RA | 5 |
| LP | 3 | MA | 5 |
| CP | 3 | GC | 5 |
| LM | 3 | DG | 4 |
| JP | 1 | FL | 4 |
| SP | 1 | WN | 5 |
| WP | 1 | TO | 5 |
| PP | 1 | SY | 5 |
| MP | 1 | AS | 5 |
| GP | 1 | CW | 5 |
| WJ | 3 | WI | 5 |
| BR | 1 | CN | 5 |
| GS | 6 | CL | 5 |
| PY | 4 | OH | 5 |
| OS | 1 | RW | 6 |

In Region 5 forests, site index values can either be entered directly or based on the Region 5 Site Class Code. See section 3.4.1 for Region 5 Site Class information. If site index is missing or incorrect, the site species is set to Douglas-fir with a default site index set to 80. For species not assigned a site index, site index is determined by multiplying the site species site index by the target species adjustment factor located in table 3.4.3.

**Table 3.4.3 Region 5 adjustment factors for 50-year site index values in the CA variant.**

| **Species Code** | **R5 Adjustment Factor** | **Species Code** | **R5 Adjustment Factor** |
| --- | --- | --- | --- |
| PC | 0.90 | LO | 0.57 |
| IC | 0.76 | CY | 0.57 |
| RC | 0.90 | BL | 0.57 |
| WF | 1 | EO | 0.57 |
| RF | 1 | WO | 0.57 |
| SH | 1 | BO | 0.57 |
| DF | 1 | VO | 0.57 |
| WH | 0.90 | IO | 0.57 |
| MH | 0.90 | BM | 0.57 |
| WB | 0.90 | BU | 0.57 |
| KP | 0.90 | RA | 0.57 |
| LP | 0.90 | MA | 0.57 |
| CP | 0.90 | GC | 0.57 |
| LM | 0.90 | DG | 0.57 |
| JP | 1 | FL | 0.57 |
| SP | 1 | WN | 0.57 |
| WP | 0.90 | TO | 0.57 |
| PP | 1 | SY | 0.57 |
| MP | 0.90 | AS | 0.57 |
| GP | 0.90 | CW | 0.57 |
| WJ | 0.76 | WI | 0.57 |
| BR | 0.76 | CN | 0.57 |
| GS | 1 | CL | 0.57 |
| PY | 0.76 | OH | 0.57 |
| OS | 0.9 | RW | 1 |

In Region 6 forests, the default site species and site index are determined by plant association codes and shown in Appendix A. If the plant association code is missing or incorrect, the site species is set to Douglas-fir with a default site index set to 92. For species not assigned a site index, site index is determined by first converting the site species site index to a Hann-Scrivani DF site index equivalent. This is done by dividing the site species site index by the site species adjustment factor located in table 3.4.4. Next, the species site index is determined by multiplying the converted site species site index by the species adjustment factor located in table 3.4.4.

**Table 3.4.4 Region 6 adjustment factors for 50-year site index values in the CA variant.**

| **Species Code** | **R6 Adjustment Factor** | **Species Code** | **R6 Adjustment Factor** |
| --- | --- | --- | --- |
| PC | 0.90 | LO | 0.28 |
| IC | 0.70 | CY | 0.42 |
| RC | 0.80 | BL | 0.34 |
| WF | 1 | EO | 0.28 |
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

### 3.4.1 Region 5 Site Class

In Region 5 forests, the site index values can either be entered directly or based on the Region 5 site class (0-7) as shown in table 3.4.1.1. Site class codes of 0-5 were adapted for Region 5 by Jack Levitan from Duncan Dunning's site index curves (Dunning 1942, Dunning & Reineke 1933).

If a Region 5 site class is entered, it is converted to a site index for each species within the model using a two-step process. First, the Region 5 site class is converted to a 50-year site index as shown in table 3.4.1.1 (personal communication with Ralph Warbington in March 2008).

**Table 3.4.1.1 Region 5 site class values converted into 50-year site index in the CA variant.**

|  |  |
| --- | --- |
| **Region 5 Site class** | **(Breast HT Age) 50-year site index** |
| 0 | 106 |
| 1 | 90 |
| 2 | 75 |
| 3 | 56 |
| 4 | 49 |
| 5 | 39 |
| 6 | 31 |
| 7 | 23 |

Second, site index for an individual species is determined by multiplying the 50-year site index by a species-specific adjustment factor which is shown in table 3.4.3.

## 3.5 Maximum Density

Maximum stand density index (SDI) and maximum basal area (BA) are important variables in determining density related mortality and crown ratio change. Maximum basal area is a stand level metric that can be set using the BAMAX or SETSITE keywords. If not set by the user, a default value is calculated from maximum stand SDI each projection cycle. Maximum stand density index can be set for each species using the SDIMAX or SETSITE keywords. If not set by the user, a default value is assigned as discussed below. Maximum stand density index at the stand level is a weighted average, by basal area, of the individual species SDI maximums.

In Region 5, the default maximum SDI is set by species or a user specified basal area maximum. If a user specified basal area maximum is present, the maximum SDI for all species is computed using equation {3.5.1}; otherwise, species maximums are assigned from the SDI maximums shown in table 3.5.1.

For Region 5 forests, stand SDI is calculated using the Zeide calculation method (Dixon 2002).

{3.5.1} *SDIMAXi* = *BAMAX*/ (0.5454154 \* *SDIU)*

where:

*SDIMAXi* is the species-specific SDI maximum

*BAMAX* is the user-specified stand basal area maximum

*SDIU* is theproportion of theoretical maximum density at which the stand reaches actual maximum density (default 0.85, changed with the SDIMAX keyword)

In Region 6, the default maximum SDI is set based on a user-specified, or default, plant association code or a user specified basal area maximum. If a user specified basal area maximum is present, the maximum SDI for species is computed using equation {3.5.1}; otherwise, the SDI maximum for all species is assigned from the SDI maximum associated with the site species for the plant association code shown in Appendix A. SDI maximums were set based on growth basal area (GBA) analysis developed by Hall (1983) or an analysis of Current Vegetation Survey (CVS) plots in USFS Region 6 by Crookston (2008). Some SDI maximums associated with plant associations are unreasonably large, so SDI maximums are capped at 850.

**Table 3.5.1 Region 5 Stand density index maximums by species in the CA variant.**

| **Species Code** | **R5 SDI Maximum** | **Mapped to** | **Source\*** |
| --- | --- | --- | --- |
| PC | 592 | Alaska yellow-cedar | Shaw |
| IC | 576 |  | Shaw |
| RC | 762 |  | Shaw |
| WF | 800 |  | PSW |
| RF | 1000 |  | PSW |
| SH | 1000 |  | PSW |
| DF | 570 |  | Shaw |
| WH | 682 |  | Shaw |
| MH | 687 |  | Shaw |
| WB | 621 |  | Shaw |
| KP | 679 | lodgepole pine | Shaw |
| LP | 679 |  | Shaw |
| CP | 365 | Jeffrey pine | PSW |
| LM | 409 |  | Shaw |
| JP | 365 |  | PSW |
| SP | 561 |  | Shaw |
| WP | 272 |  | Shaw |
| PP | 365 |  | PSW |
| MP | 365 | ponderosa pine | PSW |
| GP | 214 | blue oak | Shaw |
| WJ | 272 |  | Shaw |
| BR | 412 | white spruce | Shaw |
| GS | 1052 |  | Shaw |
| PY | 576 | incense cedar | Shaw |
| OS | 365 | Jeffrey pine | PSW |
| LO | 667 | canyon live oak | Shaw |
| CY | 667 |  | Shaw |
| BL | 214 |  | Shaw |
| EO | 214 | blue oak | Shaw |
| WO | 440 |  | Shaw |
| BO | 406 |  | Shaw |
| VO | 440 | Oregon white oak | Shaw |
| IO | 667 | canyon live oak | Shaw |
| BM | 629 |  | Shaw |
| BU | 440 | Oregon white oak | Shaw |
| RA | 441 |  | Shaw |
| MA | 515 |  | Shaw |
| GC | 785 | tanoak | Shaw |
| DG | 406 | California black oak | Shaw |
| FL | 441 | red alder | Shaw |
| WN | 283 | black walnut | Shaw |
| TO | 785 |  | Shaw |
| SY | 499 | sycamore | Shaw |
| AS | 562 |  | Shaw |
| CW | 452 |  | Shaw |
| WI | 447 | black willow | Shaw |
| CN | 576 | incense cedar | Shaw |
| CL | 406 | California black oak | Shaw |
| OH | 452 | black cottonwood | Shaw |
| RW | 1052 |  | Shaw |

\*Sources include an unpublished analysis of FIA data by John Shaw (Shaw) and a review of current data/literature by Pacific Southwest Research Station (PSW).

# 4.0 Growth Relationships

This chapter describes the functional relationships used to fill in missing tree data and calculate incremental growth. In FVS, trees are grown in either the small tree sub-model or the large tree sub-model depending on the diameter.

## 4.1 Height-Diameter Relationships

Height-diameter relationships in FVS are primarily used to estimate tree heights missing in the input data, and occasionally to estimate diameter growth on trees smaller than a given threshold diameter. In the CA variant, FVS will dub in heights by one of two methods. By default, the CA variant will use the Curtis-Arney functional form as shown in equation {4.1.1} (Curtis 1967, Arney 1985).

If the input data contains at least three measured heights for a species, then FVS can switch to a logistic height-diameter equation {4.1.2} (Wykoff, et.al 1982) that may be calibrated to the input data. FVS will not automatically use equation {4.1.2} even if you have enough height values in the input data. To override this default, the user must use the NOHTDREG keyword to turn calibration on. Coefficients for equations {4.1.1} and {4.1.2} are given in Table 4.1.1.

In the CA variant, the default Curtis-Arney equation used depends on the “spline DBH” (given as *Z*). Values for “spline DBH” are given as *Z* in table 4.1.1.

{4.1.1} Curtis-Arney functional form

*DBH* <u>></u> *Z*”: *HT* = 4.5 + P2 \* exp[-P3 \* *DBH* ^ P4]

*DBH* < *Z*”: *HT* = [(4.5 + P2 \* exp[-P3 \* *Z* ^ P4] – 4.51) \* (*DBH* – 0.3) / (*Z* – 0.3)] + 4.51

{4.1.2} Wykoff functional form

HT = 4.5 + exp(B1 + B2 / (DBH + 1.0))

where:

*HT* is tree height

*Z* is the “spline DBH” shown in table 4.1.1

*DBH* is tree diameter at breast height

B1 - B2 are species-specific coefficients shown in table 4.1.1

P2 - P4 are species-specific coefficients shown in table 4.1.1

Data were available to fit Curtis-Arney and Wykoff height-diameter coefficients for incense cedar, white fir, California red fir, Shasta red fir, Douglas-fir, knobcone pine, lodgepole pine, Jeffrey pine, sugar pine, western white pine, ponderosa pine, California foothill pine, Oregon white oak, California black oak, Pacific madrone, and redwood. Curtis-Arney coefficients for the other species were fit from inventory data from other forests in Region 6. Wykoff coefficients for other species are from the Klamath Mountains (NC) FVS variant.

**Table 4.1.1 Coefficients and “spline DBH” for equations {4.1.1} – {4.1.2} in the CA variant.**

| **Species Code** | **P2** | **P3** | **P4** | **Z** | **Default**  **B1** | **B2** |
| --- | --- | --- | --- | --- | --- | --- |
| PC | 8532.9026 | 8.0343 | -0.1831 | 3.0 | 4.7874 | -7.317 |
| IC | 695.4196 | 7.5021 | -0.3852 | 6.0 | 5.2052 | -20.1443 |
| RC | 487.5415 | 5.4444 | -0.3801 | 3.0 | 4.7874 | -7.317 |
| WF | 467.307 | 6.1195 | -0.4325 | 3.0 | 5.218 | -14.8682 |
| RF | 606.3002 | 6.2936 | -0.386 | 3.0 | 5.2973 | -17.2042 |
| SH | 606.3002 | 6.2936 | -0.386 | 3.0 | 5.2973 | -17.2042 |
| DF | 408.7614 | 5.4044 | -0.4426 | 3.0 | 5.3076 | -14.474 |
| WH | 263.1274 | 6.9356 | -0.6619 | 3.0 | 4.7874 | -7.317 |
| MH | 233.6987 | 6.9059 | -0.6166 | 3.0 | 4.7874 | -7.317 |
| WB | 89.5535 | 4.2281 | -0.6438 | 3.0 | 4.7874 | -7.317 |
| KP | 101.517 | 4.7066 | -0.954 | 2.0 | 4.6843 | -6.5516 |
| LP | 99.1568 | 12.13 | -1.3272 | 5.0 | 4.8358 | -9.2077 |
| CP | 514.1013 | 5.5983 | -0.2734 | 3.0 | 4.7874 | -7.317 |
| LM | 514.1013 | 5.5983 | -0.2734 | 3.0 | 4.7874 | -7.317 |
| JP | 744.7718 | 7.6793 | -0.3779 | 5.0 | 5.1419 | -19.8143 |
| SP | 944.9299 | 6.2428 | -0.3087 | 5.0 | 5.3371 | -19.3151 |
| WP | 422.0948 | 6.0404 | -0.4525 | 3.0 | 5.2649 | -15.5907 |
| PP | 1267.7589 | 7.4995 | -0.3286 | 2.0 | 5.382 | -20.4097 |
| MP | 113.7962 | 4.7726 | -0.7601 | 3.0 | 4.7874 | -7.317 |
| GP | 79986.6348 | 9.9284 | -0.1013 | 2.0 | 4.6236 | -13.0049 |
| WJ | 60.6009 | 4.1543 | -0.6277 | 3.0 | 4.7874 | -7.317 |
| BR | 91.7438 | 17.1081 | -1.4429 | 3.0 | 4.7874 | -7.317 |
| GS | 595.1068 | 5.8103 | -0.3821 | 3.0 | 5.3401 | -15.9354 |
| PY | 127.1698 | 4.8977 | -0.4668 | 3.0 | 4.7874 | -7.317 |
| OS | 79986.6348 | 9.9284 | -0.1013 | 3.0 | 4.7874 | -7.317 |
| LO | 105.0771 | 5.6647 | -0.6822 | 3.0 | 4.6618 | -8.3312 |
| CY | 105.0771 | 5.6647 | -0.6822 | 3.0 | 4.6618 | -8.3312 |
| BL | 59.0941 | 6.1195 | -1.0552 | 3.0 | 4.6618 | -8.3312 |
| EO | 59.0941 | 6.1195 | -1.0552 | 3.0 | 4.6618 | -8.3312 |
| WO | 40.3812 | 3.7653 | -1.1224 | 3.0 | 3.8314 | -4.8221 |
| BO | 120.2372 | 4.1713 | -0.6113 | 3.0 | 4.4907 | -7.703 |
| VO | 126.7237 | 3.18 | -0.6324 | 3.0 | 4.6618 | -8.3312 |
| IO | 55 | 5.5 | -0.95 | 3.0 | 4.6618 | -8.3312 |
| BM | 143.9994 | 3.5124 | -0.5511 | 3.0 | 4.6618 | -8.3312 |
| BU | 55 | 5.5 | -0.95 | 3.0 | 4.6618 | -8.3312 |
| RA | 94.5048 | 4.0657 | -0.9592 | 3.0 | 4.6618 | -8.3312 |
| MA | 117.741 | 4.0764 | -0.6151 | 3.0 | 4.4809 | -7.5989 |
| GC | 1176.9704 | 6.3245 | -0.2739 | 3.0 | 4.6618 | -8.3312 |
| DG | 403.3221 | 4.3271 | -0.2422 | 3.0 | 4.6618 | -8.3312 |
| FL | 97.7769 | 8.8202 | -1.0534 | 3.0 | 4.6618 | -8.3312 |
| WN | 105.0771 | 5.6647 | -0.6822 | 3.0 | 4.6618 | -8.3312 |
| TO | 679.1972 | 5.5698 | -0.3074 | 3.0 | 4.6618 | -8.3312 |
| SY | 55 | 5.5 | -0.95 | 3.0 | 4.6618 | -8.3312 |
| AS | 47.3648 | 15.6276 | -1.9266 | 3.0 | 4.6618 | -8.3312 |
| CW | 179.0706 | 3.6238 | -0.573 | 3.0 | 4.6618 | -8.3312 |
| WI | 149.5861 | 2.4231 | -0.18 | 3.0 | 4.6618 | -8.3312 |
| CN | 55 | 5.5 | -0.95 | 3.0 | 4.6618 | -8.3312 |
| CL | 114.1627 | 6.021 | -0.7838 | 3.0 | 4.6618 | -8.3312 |
| OH | 40.3812 | 3.7653 | -1.1224 | 3.0 | 4.6618 | -8.3312 |
| RW | 595.1068 | 5.8103 | -0.3821 | 3.0 | 5.3401 | -15.9354 |

## 4.2 Bark Ratio Relationships

Bark ratio estimates are used to convert between diameter outside bark and diameter inside bark in various parts of the model. In the CA variant, bark ratio values are determined using estimates from DIB equations or by setting to a constant value. Equations used in the CA variant are shown in equations {4.2.1} – {4.2.3}. Coefficients (b1 and b2) and equation reference for these equations by species are shown in table 4.2.1.

{4.2.1} *DIB* = b1 \* *DBH*^b2 where *BRATIO* = *DIB* / *DBH*

{4.2.2} *DIB* = b1 + (b2 \* *DBH*) where *BRATIO* = *DIB* / *DBH*

{4.2.3} *BRATIO* = b1

where:

*BRATIO* is species-specific bark ratio (bounded to 0.8 <u><</u> *BRATIO* <u><</u> 0.99)

*DBH* is tree diameter at breast height

*DIB* is tree diameter inside bark at breast height

b1 - b2 are species-specific coefficients shown in table 4.2.1

**Table 4.2.1 Coefficients and equation reference for bark ratio equations {4.2.1} – {4.2.3} in the CA variant.**

| **Species Code** | **b1** | **b2** | **Equation to use** | **Equation Source** |
| --- | --- | --- | --- | --- |
| PC | 0.94967 | 1.0 | {4.2.1} | Wykoff et al |
| IC | -0.0549 | 0.8374 | {4.2.2} | Dolph PSW-368 |
| RC | 0.94967 | 1.0 | {4.2.1} | Wykoff et al |
| WF | -0.1593 | 0.8911 | {4.2.2} | Dolph PSW-368 |
| RF | -0.1593 | 0.8911 | {4.2.2} | Dolph PSW-368 |
| SH | -0.1593 | 0.8911 | {4.2.2} | Dolph PSW-368 |
| DF | 0.903563 | 0.989388 | {4.2.1} | Walters et al |
| WH | 0.93371 | 1 | {4.2.1} | Wykoff et al |
| MH | 0.93371 | 1 | {4.2.1} | Wykoff et al |
| WB | 0.9 | 0 | {4.2.3} | Wykoff et al |
| KP | 0.9329 | 0 | {4.2.3} | Wykoff (avg. of AF, IC, ES, LP, WP) |
| LP | 0.9 | 0 | {4.2.3} | Wykoff et al |
| CP | -0.4448 | 0.8967 | {4.2.2} | Dolph PSW-368 |
| LM | 0.9 | 0 | {4.2.3} | Wykoff et al |
| JP | -0.4448 | 0.8967 | {4.2.2} | Dolph PSW-368 |
| SP | -0.1429 | 0.8863 | {4.2.2} | Dolph PSW-368 |
| WP | -0.1429 | 0.8863 | {4.2.2} | Dolph PSW-368 |
| PP | -0.4448 | 0.8967 | {4.2.2} | Dolph PSW-368 |
| MP | -0.4448 | 0.8967 | {4.2.2} | Dolph PSW-368 |
| GP | 0.9329 | 0 | {4.2.3} | Wykoff (avg. of AF, IC, ES, LP, WP) |
| WJ | 0.94967 | 1.0 | {4.2.1} | Wykoff et al |
| BR | 0.9 | 0 | {4.2.3} | Wykoff et al |
| GS | 0.94967 | 1.0 | {4.2.1} | Wykoff et al |
| PY | 0.9 | 0 | {4.2.3} | Wykoff et al |
| OS | -0.4448 | 0.8967 | {4.2.2} | Dolph PSW-368 |
| LO | -0.75739 | 0.93475 | {4.2.2} | Pillsbury and Kirkley |
| CY | -0.19128 | 0.96147 | {4.2.2} | Pillsbury and Kirkley |
| BL | -0.17324 | 0.94403 | {4.2.2} | Pillsbury and Kirkley |
| EO | -0.78572 | 0.92472 | {4.2.2} | Pillsbury and Kirkley |
| WO | -0.30722 | 0.95956 | {4.2.2} | Pillsbury and Kirkley |
| BO | -0.26824 | 0.95767 | {4.2.2} | Pillsbury and Kirkley |
| VO | -0.38289 | 0.93545 | {4.2.2} | Pillsbury and Kirkley |
| IO | 0.04817 | 0.92953 | {4.2.2} | Pillsbury and Kirkley |
| BM | 0.0836 | 0.94782 | {4.2.2} | Pillsbury and Kirkley |
| BU | -0.26824 | 0.95767 | {4.2.2} | Pillsbury and Kirkley |
| RA | 0.075256 | 0.94373 | {4.2.2} | Pil. & Kirk.; Harlow & Harrar |
| MA | -0.01348 | 0.98155 | {4.2.2} | Pillsbury and Kirkley |
| GC | 0.15565 | 0.90182 | {4.2.2} | Pillsbury and Kirkley |
| DG | -0.26824 | 0.95767 | {4.2.2} | Pillsbury and Kirkley |
| FL | -0.26824 | 0.95767 | {4.2.2} | Pillsbury and Kirkley |
| WN | -0.26824 | 0.95767 | {4.2.2} | Pillsbury and Kirkley |
| TO | -0.26824 | 0.95354 | {4.2.2} | Pillsbury and Kirkley |
| SY | -0.26824 | 0.95767 | {4.2.2} | Pillsbury and Kirkley |
| AS | 0.075256 | 0.94373 | {4.2.2} | Pil. & Kirk.; Harlow & Harrar |
| CW | -0.26824 | 0.95767 | {4.2.2} | Pillsbury and Kirkley |
| WI | -0.26824 | 0.95767 | {4.2.2} | Pillsbury and Kirkley |
| CN | -0.26824 | 0.95767 | {4.2.2} | Pillsbury and Kirkley |
| CL | -0.12791 | 0.96579 | {4.2.2} | Pillsbury and Kirkley |
| OH | -0.26824 | 0.95767 | {4.2.2} | Pillsbury and Kirkley |
| RW | 0.7012 | 1.04862 | {4.2.1} | Castle 2021 |

## 4.3 Crown Ratio Relationships

Crown ratio equations are used for three purposes in FVS: (1) to estimate tree crown ratios missing from the input data for both live and dead trees; (2) to estimate change in crown ratio from cycle to cycle for live trees; and (3) to estimate initial crown ratios for regenerating trees established during a simulation.

### 4.3.1 Crown Ratio Dubbing

In the CA variant, crown ratios missing in the input data are predicted using different equations depending on tree species and size. For all species except giant sequoia and redwood, trees less than 1.0” in diameter and dead trees of all sizes use equations {4.3.1.1} and {4.3.1.2} to compute crown ratio. Equation coefficients are found in table 4.3.1.1.

{4.3.1.1} *X* = R1 + R2 \* *HT* + R3 \* *BA* + *N(0,SD)*

{4.3.1.2} *CR* = ((*X* – 1) \* 10.0 + 1.0) / 100

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.05 <u><</u> *CR* <u><</u> 0.95)

*HT* is tree height

*BA* is total stand basal area

*N(0,SD)* is a random increment from a normal distribution with a mean of 0 and a standard deviation of SD

R1 – R3 are species-specific coefficients shown in table 4.3.1.1

**Table 4.3.1.1 Coefficients for the crown ratio equation {4.3.1.1} in the CA variant.**

| **Species Code** | **R1** | **R2** | **R3** | **SD** |
| --- | --- | --- | --- | --- |
| PC | 7.55854 | -0.01564 | -0.00906 | 1.9658 |
| IC | 7.55854 | -0.01564 | -0.00906 | 1.9658 |
| RC | 7.55854 | -0.01564 | -0.00906 | 1.9658 |
| WF | 8.04277 | 0.0072 | -0.01616 | 1.3167 |
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

For all species except giant sequoia and redwood, a Weibull-based crown model developed by Dixon (1985) as described in Dixon (2002) is used to predict crown ratio for all live trees 1.0” in diameter or larger. To estimate crown ratio using this methodology, the average stand crown ratio is estimated from stand density index using equation {4.3.1.3}. Weibull parameters are then estimated from the average stand crown ratio using equations in equation set {4.3.1.4}. Individual tree crown ratio is then set from the Weibull distribution, equation {4.3.1.5} based on a tree’s relative position in the diameter distribution and multiplied by a scale factor, shown in equation {4.3.1.6}, which accounts for stand density. Crowns estimated from the Weibull distribution are bounded to be between the 5 and 95 percentile points of the specified Weibull distribution. Coefficients for the Weibull distribution were fit to equations from the Klamath Mountains (NC) and West Cascades (WC) variants, with species being matched to the closest curve of another appropriate species. Species index mapping and equation coefficients for each species are shown in tables 4.3.1.2 and 4.3.1.3.

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

**Table 4.3.1.2 Mapped species index for the Weibull parameter equations {4.3.1.3} and {4.3.1.4} in the CA variant.**

| **Species Code** | **Species Index** | **Species Code** | **Species Index** |
| --- | --- | --- | --- |
| PC | 6 | LO | 7 |
| IC | 6 | CY | 7 |
| RC | 6 | BL | 7 |
| WF | 4 | EO | 7 |
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

**Table 4.3.1.3 Coefficients for the Weibull parameter equations {4.3.1.3} and {4.3.1.4} in the CA variant.**

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

### 4.3.2 Crown Ratio Change

Crown ratio change is estimated after growth, mortality and regeneration are estimated during a projection cycle. Crown ratio change is the difference between the crown ratio at the beginning of the cycle and the predicted crown ratio at the end of the cycle. Crown ratio predicted at the end of the projection cycle is estimated for live tree records using the Weibull distribution, equations {4.3.1.3}-{4.3.1.6}, for all species except giant sequoia and redwood. For giant sequoia and redwood, crown ratio predicted at the end of the projection cycle is estimated using equations {4.3.1.7) and {4.3.1.9}. Crown change is checked to make sure it doesn’t exceed the change possible if all height growth produces new crown. Crown change is further bounded to 1% per year for the length of the cycle to avoid drastic changes in crown ratio. Equations {4.3.1.1} and {4.3.1.2} are not used when estimating crown ratio change.

### 4.3.3 Crown Ratio for Newly Established Trees

Crown ratios for newly established trees during regeneration are estimated using equation {4.3.3.1}. A random component is added in equation {4.3.3.1} to ensure that not all newly established trees are assigned exactly the same crown ratio.

{4.3.3.1} *CR* = 0.89722 – 0.0000461 \* *PCCF* + *RAN*

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.2 <u><</u> *CR* <u><</u> 0.9)

*PCCF* is crown competition factor on the inventory point where the tree is established

*RAN* is a small random component

## 4.4 Crown Width Relationships

### 4.4.1 Region 5 Crown Width

Crown width in Region 5 forests is calculated by using equations {4.4.1.1} – {4.4.1.5}. If a tree has a *DBH* greater than or equal to its threshold diameter (given as *DBHT*), then it uses equation {4.4.1.1}, {4.4.1.2}, or {4.4.1.3} depending on the species. If a tree has a *DBH* less than its threshold diameter, then it uses equation {4.4.1.4} or {4.4.1.5} depending on the height of the tree. Coefficients, equation reference, and threshold diameter values for these equations are shown in table 4.4.1.1 by species.

{4.4.1.1} *DBH* <u>></u> *DBHT*: *CW* = a1 + a2 \* *DBH*

{4.4.1.2} *DBH* <u>></u> *DBHT: CW* = a1 \* DBH^a2

{4.4.1.3} *DBH* <u>></u> *DBHT: CW* = a1 + a2 \* *DBH* + a3 \* *DBH^*2

{4.4.1.4} *HT* < 4.5’ and *DBH* < *DBHT: CW* = *HT* \* s1

{4.4.1.5} *HT* <u>></u> 4.5’ and *DBH* < *DBHT: CW* = d1 + d2 \* *DBH*

where:

*CW* is maximum tree crown width

*DBH* is tree diameter at breast height

*DBHT* is threshold diameter shown in table 4.4.1.1

*HT* is tree height

s1, d1-2, and a1-3 are species-specific coefficients shown in table 4.4.1.1

**Table 4.4.1.1 Coefficients and equation reference for equations {4.4.1.1} – {4.4.1.5} in the CA variant.**

| **Species Code** | **Equation Used\*** | ***DBHT*** | **d1** | **d2** | **a1** | **a2** | **a3** | **s1** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| PC | {4.4.1.1} | 5 | 3.5 | 1.1 | 6 | 0.6 | 0 | 0.7778 |
| IC | {4.4.1.1} | 5 | 3.5 | 1.192 | 7.11 | 0.47 | 0 | 0.7778 |
| RC | {4.4.1.1} | 5 | 3.5 | 1.7 | 4 | 1.6 | 0 | 0.7778 |
| WF | {4.4.1.1} | 5 | 3.26 | 1.103 | 5.82 | 0.591 | 0 | 0.7778 |
| RF | {4.4.1.1} | 5 | 3.5 | 1.063 | 6.71 | 0.421 | 0 | 0.7778 |
| SH | {4.4.1.1} | 5 | 3.5 | 1.063 | 6.71 | 0.421 | 0 | 0.7778 |
| DF | {4.4.1.1} | 5 | 3.62 | 1.37 | 6.81 | 0.732 | 0 | 0.7778 |
| WH | {4.4.1.1} | 5 | 3.5 | 1.624 | 4.57 | 1.41 | 0 | 0.7778 |
| MH | {4.4.1.1} | 5 | 3.5 | 0.852 | 4.72 | 0.608 | 0 | 0.7778 |
| WB | {4.4.1.2} | 5 | 3.5 | 0.8496 | 2.37 | 0.736 | 0 | 0.7778 |
| KP | {4.4.1.1} | 5 | 3.5 | 1.1 | 6 | 0.6 | 0 | 0.7778 |
| LP | {4.4.1.2} | 5 | 3.5 | 0.6492 | 1.91 | 0.784 | 0 | 0.7778 |
| CP | {4.4.2.2} | 5 | 3.5 | 1.7618 | 3.9347 | 0.7086 | 0 | 0.7778 |
| LM | {4.4.1.1} | 5 | 3.5 | 1.1 | 6 | 0.6 | 0 | 0.7778 |
| JP | {4.4.1.2} | 5 | 3.5 | 0.5754 | 1.52 | 0.891 | 0 | 0.7778 |
| SP | {4.4.1.1} | 7.4 | 3.5 | 0.338 | -1.476 | 1.01 | 0 | 0.7778 |
| WP | {4.4.1.1} | 7.6 | 3.5 | 0.329 | -0.997 | 0.92 | 0 | 0.7778 |
| PP | {4.4.1.2} | 5 | 3.77 | 0.7756 | 2.24 | 0.763 | 0 | 0.7778 |
| MP | {4.4.1.1} | 5 | 3.5 | 1.1 | 6 | 0.6 | 0 | 0.7778 |
| GP | {4.4.2.2} | 5 | 3.5 | 1.9108 | 3.8273 | 0.7624 | 0 | 0.7778 |
| WJ | {4.4.1.2} | 5 | 3.5 | 1.6684 | 4.31 | 0.628 | 0 | 0.7778 |
| BR | {4.4.1.1} | 5 | 3.5 | 2.4 | 6.5 | 1.8 | 0 | 0.7778 |
| GS | {4.4.1.1} | 5 | 3.5 | 1.1 | 6 | 0.6 | 0 | 0.7778 |
| PY | {4.4.1.1} | 5 | 3.5 | 1.56 | 4.2 | 1.42 | 0 | 0.7778 |
| OS | {4.4.1.1} | 5 | 3.5 | 1.1 | 6 | 0.6 | 0 | 0.7778 |
| LO | {4.4.2.2} | 5 | 2.5 | 3.2150 | 5.3732 | 0.7707 | 0 | 0.5556 |
| CY | {4.4.1.1} | 5 | 2.5 | 2.19 | 5 | 1.69 | 0 | 0.5556 |
| BL | {4.4.1.2} | 5 | 2.5 | 2.2175 | 4.49 | 0.688 | 0 | 0.5556 |
| EO | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| WO | {4.4.1.1} | 5 | 2.5 | 2.036 | 3.08 | 1.92 | 0 | 0.5556 |
| BO | {4.4.1.1} | 5 | 2.5 | 2.7 | 10 | 1.2 | 0 | 0.5556 |
| VO | {4.4.2.2} | 5 | 2.5 | 2.2816 | 4.5628 | 0.6925 | 0 | 0.5556 |
| IO | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| BM | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| BU | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| RA | {4.4.1.1} | 5 | 2.5 | 2.63 | 8 | 1.53 | 0 | 0.5556 |
| MA | {4.4.1.1} | 5 | 3.11 | 1.008 | 1 | 1.43 | 0 | 0.5556 |
| GC | {4.4.1.3} | 5 | 2.15 | 1.646 | 2.98 | 1.55 | -0.014 | 0.5556 |
| DG | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| FL | {4.4.1.1} | 5 | 2.5 | 1.22 | 0.5 | 1.62 | 0 | 0.5556 |
| WN | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| TO | {4.4.1.1} | 13.4 | 2.23 | 1.63 | 10 | 1.05 | 0 | 0.5556 |
| SY | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| AS | {4.4.1.1} | 5 | 2.5 | 1.22 | 0.5 | 1.62 | 0 | 0.5556 |
| CW | {4.4.1.1} | 5 | 2.5 | 1.22 | 0.5 | 1.62 | 0 | 0.5556 |
| WI | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| CN | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| CL | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| OH | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| RW | {4.4.1.1} | 5 | 3.62 | 1.37 | 6.81 | 0.732 | 0 | 0.7778 |

\*Equation refers to the species-specific equation used when *DBH* <u>></u> *DBHT*

### 4.4.2 Region 6 Crown Width

Crown width for Region 6 forests is calculated using equations {4.4.2.1} – {4.4.2.6}, and coefficients for these equations are shown in table 4.4.2.1. The minimum diameter and bounds for certain data values are given in table 4.4.2.2. Equation numbers in table 4.4.2.1 are given with the first three digits representing the FIA species code, and the last two digits representing the equation source.

{4.4.2.1} Bechtold (2004); Equation 01

*DBH* <u>></u> *MinD: CW* = a1 + (a2 \* *DBH*) + (a3 \* *DBH*^2)

*DBH* < *MinD: CW* = [a1 + (a2 \* *MinD*) \* (a3 \* *MinD*^2)] \* (*DBH* / *MinD*)

{4.4.2.2} Bechtold (2004); Equation 02

*DBH* <u>></u> *MinD*: CW = a1 + (a2 \* *DBH*) + (a3 \* *DBH*^2) + (a4 \* *CR%*) + (a5 \* *BA*) + (a6 \* *HI*)

*DBH* < *MinD*: CW = [a1 + (a2 \* *MinD*) + (a3 \* *MinD*^2) + (a4 \* *CR%*) + (a5 \* *BA*) + (a6 \* *HI*)] \* (*DBH* / *MinD*)

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

**Table 4.4.2.1 Coefficients for crown width equations {4.4.2.1}-{4.4.2.6} in the CA variant.**

| **Species Code** | **Equation Number\*** | **a1** | **a2** | **a3** | **a4** | **a5** | **a6** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| PC | 04105 | 4.6387 | 0.50874 | -0.22111 | 0.17505 | 0.06447 | -0.00602 |
| IC | 08105 | 5.0446 | 0.47419 | -0.13917 | 0.1423 | 0.04838 | -0.00616 |
| RC | 24205 | 6.2382 | 0.29517 | -0.10673 | 0.23219 | 0.05341 | -0.00787 |
| WF | 01505 | 5.0312 | 0.5368 | -0.18957 | 0.16199 | 0.04385 | -0.00651 |
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

**Table 4.4.2.2 *MinD* values and data bounds for equations {4.4.2.1}-{4.4.2.6} in the CA variant.**

| **Species Code** | **Equation Number\*** | ***MinD*** | **ELmin** | ***EL* max** | ***HI* min** | ***HI* max** | ***CW* max** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| PC | 04105 | 1.0 | 2 | 52 | n/a | n/a | 49 |
| IC | 08105 | 1.0 | 5 | 62 | n/a | n/a | 78 |
| RC | 24205 | 1.0 | 1 | 72 | n/a | n/a | 45 |
| WF | 01505 | 1.0 | 2 | 75 | n/a | n/a | 35 |
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

**Table 4.4.2.3 *BF* values by location code (610, 710, 711, 611, and 712) for equation {4.4.2.5} in the CA variant.**

| **Species Code** | **610, 710, 711** | **611, 712** |
| --- | --- | --- |
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

The CA variant uses crown competition factor (*CCF*) as a predictor variable in some growth relationships. Crown competition factor (Krajicek and others 1961) is a relative measurement of stand density that is based on tree diameters. Individual tree *CCFt* values estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open-grown. Stand *CCF* is the summation of individual tree (*CCFt*)values. A stand *CCF* value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand. Crown competition factor for an individual tree is calculated using equation {4.5.1} and is based off of crown width calculated using the Region 5 crown width equations in section 4.4.1.

{4.5.1} *CCFt* = 0.001803 \* *CW^*2

where:

*CCFt* is crown competition factor for an individual tree

*CW* is maximum tree crown width

*DBH* is tree diameter at breast height

## 4.6 Small Tree Growth Relationships

Trees are considered “small trees” for FVS modeling purposes when they are smaller than some threshold diameter. The threshold diameter is set to 3.0” for all species in the CA variant.

The small tree model is height-growth driven, meaning height growth is estimated first and diameter growth is estimated from height growth. These relationships are discussed in the following sections.

### 4.6.1 Small Tree Height Growth

The small-tree height increment model predicts 5-year height growth (*HTG*) for small trees. For all species except giant sequoia and redwood, height growth in the CA variant is estimated by using equations {4.6.1.1} – {4.6.1.4}, and then modified with equation {4.6.1.5} to account for differences in species, site index, and geographic area. Data was not available to fit small-tree height growth models for the CA variant. Equations {4.6.1.1}, {4.6.1.3}, and {4.6.1.4} were taken from the Western Sierras (WS) variant. Equation {4.6.1.2} was derived from equations in Hann and Scrivani (1987) and Ritchie and Hann (1986). Equation reference and adjustment factors are shown in table 4.6.1.1.

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

For giant sequoia and redwood, a potential height growth curve is used to estimate small tree height growth. Height growth is computed by subtracting the current predicted height from the predicted height 5 years in the future, as depicted in equation {4.6.1.6}.

{4.6.1.6} *POTHTG* = 2.242202 \* *SI* \* [1.0 – exp (-0.010742 \* *AGE1*)]^ 0.919076

where:

*POTHTG* is predicted tree height, used for current and future height growth

*SI* is species site index

*AGE1* is tree age

A*GE1* = 1/ -0.010742 \* (ln(1-(*HT*/2.242202/*SI*)^(1/ 0.919076))

**Table 4.6.1.1 Equation reference, adjustment factors and diameter range where weighting between small and large tree models occurs in the CA variant.**

| **Species Code** | ***POTHTG* Equation** | **Adjustment Factor (X)** | ***Xmin*** | ***Xmax*** |
| --- | --- | --- | --- | --- |
| PC | {4.6.1.2} | 1.0 | 2.0 | 4.0 |
| IC | {4.6.1.2} | 1.0 | 2.0 | 4.0 |
| RC | {4.6.1.2} | 0.9 | 2.0 | 4.0 |
| WF | {4.6.1.2} | 1.1 | 2.0 | 4.0 |
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

As stated previously, for trees being projected with the small tree equations, height growth is predicted first, and then diameter growth. So both height at the beginning of the cycle and height at the end of the cycle are known when predicting diameter growth. Small tree diameter growth for trees over 4.5 feet tall is calculated as the difference of predicted diameter at the start of the projection period and the predicted diameter at the end of the projection period, adjusted for bark ratio. Diameter growth is predicted with the height-diameter equations shown in section 4.1 inverted so diameter is a function of height. For all species except giant sequoia and redwood, diameter growth of all small trees is a weighted average of the small and large tree predictions when the *DBH* is between 1.5” and 3.0”. Diameter growth estimates for giant sequoia and redwood are weighted with the diameter growth estimates from the large-tree model when DBH is between 2” and 7”, in a similar manner to the weighting explained in section 4.6.1. By definition, diameter growth is zero for trees less than 4.5 feet tall.

## 4.7 Large Tree Growth Relationships

Trees are considered “large trees” for FVS modeling purposes when they are equal to, or larger than, some threshold diameter. This threshold diameter is set to 3.0” for all species in the CA variant.

The large-tree model is driven by diameter growth meaning diameter growth is estimated first, and then height growth is estimated from diameter growth and other variables. These relationships are discussed in the following sections.

### 4.7.1 Large Tree Diameter Growth

The large tree diameter growth model used in most FVS variants is described in section 7.2.1 in Dixon (2002). For most variants, instead of predicting diameter increment directly, the natural log of the periodic change in squared inside-bark diameter (ln(*DDS*)) is predicted (Dixon 2002; Wykoff 1990; Stage 1973; and Cole and Stage 1972). For variants predicting diameter increment directly, diameter increment is converted to the *DDS* scale to keep the FVS system consistent across all variants.

In the CA variant, a single equation form is used to estimate large-tree diameter growth in every species except giant sequoia and redwood. The equation form for giant sequoia and redwood is shown in equation {4.7.1.2), and the equation for all other species is shown in equation {4.7.1.1}. Coefficients for these equations are shown in tables 4.7.1.2 and 4.7.1.4. The tanoak estimate is modified by equation {4.7.1.3} to convert the 5-year estimate into a 10-year estimate.

In the CA variant, each species is mapped into a species index as shown in table 4.7.1.1. The coefficients for each species for equation 4.7.1.1 will depend on the species index of the subject species.

{4.7.1.1} Used for all species except giant sequoia and redwood

ln(*DDS* )= b1 + (b2 \* *EL*) + (b3 \* *EL*^2) + (b4 \* ln(*SI*)) + (b5 \* sin(*ASP*)) + (b6 \* cos(*ASP*)) + (b7 \* *SL*) + (b8 \* *SL*^2) + (b9 \* ln(*DBH*)) + (b10 \* *CR*) + (b11 \* *CR*^2) + (b12 \* *DBH*^2) + (b13 \* *BAL* / (ln(*DBH* + 1.0))) + (b14 \* *PCCF*) + (b15 \* *RELHT*) + (b16 \* ln(*BA*)) + (b17 \* *BAL*)

{4.7.1.2} Used for giant sequoia and redwood

*DI* = exp(-3.502444+ (0.185911 \* ln(*DBH*)) + (-0.000073 \* *DBH*^2) + (-0.001796 \* *PBAL*) + (- 0.42078 \* *PRD*) + (0.589318 \* ln(*CR*)) + (0.415435 \* ln(*SI*)) + (-0.000926 \* *SL*) + (- 0.002203 \* (*SL*) \* COS(*ASP*)))

{4.7.1.3} Modifying equation for tanoak

ln(*DDS)* = ln(exp(*DDS)*\* 2.0)

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

*PRD* isrelative density of the inventory point (point Zeide SDI / point SDI max)b1  is a location-specific coefficient shown in table 4.7.1.2

b2- b17 are species-specific coefficients shown in table 4.7.1.4

**Table 4.7.1.1 Mapped species index for each species for large-tree diameter growth in the CA variant.**

| **Alpha Code** | **Species Index** | **Alpha Code** | **Species Index** |
| --- | --- | --- | --- |
| PC | 1 | LO | 10 |
| IC | 1 | CY | 10 |
| RC | 1 | BL | 10 |
| WF | 2 | EO | 10 |
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

**Table 4.7.1.2 b1 values by location class for equation {4.7.1.1} in the CA variant.**

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

**Table 4.7.1.3 Classification of location class by species index (1 – 13) and location code in the CA variant.**

|  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Location Code** | **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** | **10** | **11** | **12** | **13** |
| 505 – Klammath | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 506 – Lassen | 1 | 1 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 508 – Mendocino | 1 | 1 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 511 – Plumas | 1 | 1 | 2 | 1 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 514 – Shasta-Trinity | 2 | 1 | 1 | 3 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 610 – Rogue River | 1 | 1 | 1 | 4 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 611 - Siskiyou | 1 | 1 | 1 | 5 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 710 – Roseburg | 1 | 1 | 1 | 4 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 711 – Medford | 1 | 1 | 1 | 4 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 712 – Coos Bay | 1 | 1 | 1 | 5 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

**Table 4.7.1.4 Coefficients (b2- b17) for equation {4.7.1.1} in the CA variant.**

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

### 4.7.2 Large Tree Height Growth

For all species except giant sequoia and redwood, large tree height growth equations in the CA variant are based on site index curves. Species differences in height growth are accounted for by entering the appropriate curve with the species specific site index value. Region 6 forests use site curves as shown in section 3.4. Region 5 forests use Dunning/Levitan site curves shown in equation {4.7.2.6}.

In the CA variant, each species is mapped into a species index as shown in table 4.7.2.1. The coefficients and equations used for each species will depend on the species index of the subject species.

**Table 4.7.2.1 Mapped species index for each species for height growth in the CA variant.**

| **Species Code** | **Species Index** | **Species Code** | **Species Index** |
| --- | --- | --- | --- |
| PC | 3 | LO | 9 |
| IC | 3 | CY | 9 |
| RC | 3 | BL | 9 |
| WF | 3 | EO | 9 |
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

Region 6 Forests use equations 4.7.2.1 through 4.7.2.5 for all species.

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

**Table 4.7.2.2 Coefficients (b0 – b5) for height-growth equations in the CA variant.**

| **Coefficient** | **Species Index** | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **3** | **4** | **5** | **6** | **7** | **8** | **9** | **10** |
| b0 | -6.21693 | -6.54707 | 0 | -0.0968 | 6.413 | 0.204 | 0.375 | 0.649 |
| b1 | 0.281176 | 0.288169 | 1.51744 | 0.02679 | 0.322 | 39.787 | 31.233 | 17.556 |
| b2 | 1.14354 | 1.21297 | 1.41512E-06 | -9.309E-05 | 0 | 0 | 0 | 0 |
| b3 | 0 | 0 | -0.0440853 | 0 | 0 | 0 | 0 | 0 |
| b4 | 0 | 0 | -3049510. | 0 | 0 | 0 | 0 | 0 |
| b5 | 0 | 0 | 0.000572474 | 0 | 0 | 0 | 0 | 0 |

Region 5 forests use the Dunning/Levitan site curve { 4.7.2.6} for all species.

{4.7.2.6} Dunning/Levitan site curves

*A* > 40: *H* = D1 + D2 \* ln(*A*)

*A* <u><</u> 40: *H* = D3 \* *A*

where:

*H* is estimated height of the tree

*A* is estimated age of the tree

D1 – D3 are coefficients based on Region 5 site codes shown in table 4.7.2.3

**Table 4.7.2.3 Coefficients for the Dunning/Levitan site curves, nominal site index by site class, and range of Region 6 site values for which the coefficients are used in the CA variant.**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Region 5**  **Site Class** | **Nominal**  **Site Index** | **Site Index**  **Range Used** | **D1** | **D2** | **D3** |
| 0 | 106 | 99+ | -88.9 | 49.7067 | 2.375 |
| 1 | 90 | 83 - 98 | -82.2 | 44.1147 | 2.025 |
| 2 | 75 | 66 - 82 | -78.3 | 39.1441 | 1.65 |
| 3 | 56 | 53 - 65 | -82.1 | 35.416 | 1.225 |
| 4 | 49 | 45 - 52 | -56 | 26.7173 | 1.075 |
| 5-7 | 39 | 0 - 44 | -33.8 | 18.64 | 0.875 |

For both Region 5 and Region 6 forests, potential 10-year height growth (*POTHTG*) is calculated by using equation {4.7.2.8}. Then, modifiers are applied to the height growth based upon a tree’s crown ratio (using equation {4.7.2.9}) and relative height (using equation {4.7.2.10}). Equation {4.7.2.11} calculates a height-growth modifier by combining the crown ratio and relative height modifiers. Final height growth is calculated using equation {4.7.2.12} as a product of the modifier and potential height growth. The final height growth is then adjusted to the length of the cycle.

{4.7.2.8} *POTHTG* = *H10* – *ECH*

{4.7.2.9} *HGMDCR* = 1 – exp(-4.26558 \* *CR*)

{4.7.2.10} *HGMDRH* = exp [2.54119 \* (*RELHT^*0.250537 – 1.0)]

{4.7.2.11} *HTGMOD* = 1.016605 \* *HGMDCR* \* *HGMDRH*

{4.7.2.12} *HTG* = *POTHTG* \* *HTGMOD*

where:

*POTHTG* is potential height growth

*H10* is estimated height of the tree in ten years

*ECH* is estimated height of the tree at the beginning of the cycle

*HGMDCR* is a height growth modifier based on crown ratio

*HGMDRH* is a height growth modifier based on relative height and shade tolerance

*HTGMOD* is a weighted height growth modifier

*CR* is crown ratio expressed as a proportion

*RELHT* is tree height divided by average height of the 40 largest diameter trees in the stand (bounded *RELHT* <u><</u> 1; *RELHT* = 1 if crown competition factor on the inventory point where the tree is located is less than 100)

Equation {4.7.2.13} is used to predict 10-year height increment for giant sequoia and redwood. The final height growth is then adjusted to the length of the cycle.

{4.7.2.13} *HTG* = exp(1.412947+ (-0.000204 \* *DBH*^2) + (0.31971 \* ln(*DBH*)) + (0.394005 \* ln(*SI*)) + (-(0.399888 \* (ln(*DG10*)) + (-0.451708 \* ln(*HT*))

where:

*HTG* is 10-year height growth increment

*DBH* is diameter at breast height

*SI* is species site index

*DG10* is 10-year outside bark diameter growth increment

*HT* is total tree height

A height growth bounding function is used to ensure tree heights do not exceed the height maximum of giant sequoia and redwood. The bounding function is applied using the following concepts. For a tree with height less than the lower height-bounding limit, the height growth modifier is set to 1.0. For a tree with a height greater than or equal to the lower height-bounding limit and less than the upper height-bounding limit, a height growth modifier is computed using equation {4.7.2.14}. For a tree with a height greater than the upper height-bounding limit, the height growth modifier is set to 0.1. The lower bounding limit was determined from the height growth fitting data and the upper bounding limit was determined from literature. The final height increment estimate is multiplied by the bounding function, equation {4.7.2.15}.

{4.7.2.14} *HGBND* = 1.0 – ((*HT* - HTLO) / (*HTHI*- *HTLO*))

{4.7.2.15} *HTG* = *HTG* \* *HGBND*

where:

*HGBND* is height growth bounding modifier, limited to 0.1 <u><</u> *HGBND* <u><</u> 1.0

*HT* is total tree height (ft)

*HTLO* is the lower height-bounding limit (217 ft)

*HTHI* is the upper height-bounding limit (380 ft)

# 5.0 Mortality Model

The CA variant uses an SDI-based mortality model as described in Section 7.3.2 of Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002, referred to as EFVS). This SDI-based mortality model is comprised of two steps: 1) determining the amount of stand mortality (section 7.3.2.1 of EFVS) and 2) dispersing stand mortality to individual tree records (section7.3.2.2 of EFVS). In determining the amount of stand mortality, the summation of individual tree background mortality rates is used when stand density is below the minimum level for density dependent mortality (default is 55% of maximum SDI), while stand level density-related mortality rates are used when stands are above this minimum level.

The equation used to calculate individual tree background mortality rates for all species is shown in equation {5.0.1}, and this is then adjusted to the length of the cycle by using a compound interest formula as shown in equation {5.0.2}. Species mapping and coefficients for these equations are shown in tables 5.0.1 and 5.0.2. The overall amount of mortality calculated for the stand is the summation of the final mortality rate (*RIP*) across all live tree records.

{5.0.1} RI = [1 / (1 + exp(p0 + p1 \* DBH))] \* 0.5

{5.0.2} RIP = 1 – (1 – RI*)*^Y

where:

RI is the proportion of the tree record attributed to mortality

RIP is the final mortality rate adjusted to the length of the cycle

DBH is tree diameter at breast height

Y is length of the current projection cycle in years

p0 and p1 are species-specific coefficients shown in table 5.0.1

**Table 5.0.1 Mapped species index for each species for the mortality model in the CA variant.**

| **Species Code** | **Species Index** | **Species Code** | **Species Index** |
| --- | --- | --- | --- |
| PC | 3 | LO | 3 |
| IC | 3 | CY | 3 |
| RC | 3 | BL | 3 |
| WF | 3 | EO | 3 |
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

**Table 5.0.2 Coefficients used in the background mortality equation {5.0.1} in the CA variant.**

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

Once the amount of stand mortality is determined based on either the summation of background mortality rates or density-related mortality rates, mortality is dispersed to individual tree records in relation to a tree’s percentile in the basal area distribution (*PCT*) using equation {5.0.3}. This value is then adjusted by a species-specific mortality modifier (representing the species’ tolerance) to obtain a final mortality rate as shown in equation {5.0.4}.

The mortality model makes multiple passes through the tree records multiplying a record’s trees-per-acre value times the final mortality rate (MORT), accumulating the results, and reducing the trees-per-acre representation until the desired mortality level has been reached. If the stand still exceeds the basal area maximum sustainable on the site the mortality rates are proportionally adjusted to reduce the stand to the specified basal area maximum.

{5.0.3} *MR* = 0.84525 – (0.01074 \* *PCT*) + (0.0000002 \* *PCT*^3)

{5.0.4} *MORT* = *MR* \* *MWT* \* 0.1

where:

*MR* is the proportion of the tree record attributed to mortality (bounded: 0.01 <u><</u> *MR* <u><</u> 1)

*PCT* is the subject tree’s percentile in the basal area distribution of the stand

*MORT* is the final mortality rate of the tree record

*MWT* is a mortality weight value based on a species’ tolerance shown in table 5.0.3

**Table 5.0.3 *MWT* values for the mortality equation {5.0.4} in the CA variant.**

| **Species Code** | **MWT** | **Species Code** | **MWT** |
| --- | --- | --- | --- |
| PC | 0.6 | LO | 1.0 |
| IC | 0.6 | CY | 1.0 |
| RC | 0.6 | BL | 1.0 |
| WF | 0.55 | EO | 1.0 |
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

The CA variant contains a partial establishment model which may be used to input regeneration and ingrowth into simulations. A more detailed description of how the partial establishment model works can be found in section 5.4.5 of the Essential FVS Guide (Dixon 2002).

The regeneration model is used to simulate stand establishment from bare ground, or to bring seedlings and sprouts into a simulation with existing trees. Sprouts are automatically added to the simulation following harvest or burning of known sprouting species (see table 6.0.1 for sprouting species).

**Table 6.0.1 Regeneration parameters by species in the CA variant.**

| **Species Code** | **Sprouting Species** | **Minimum Bud Width (in)** | **Minimum Tree Height (ft)** | **Maximum Tree Height (ft)** |
| --- | --- | --- | --- | --- |
| PC | No | 0.2 | 0.5 | 20.0 |
| IC | No | 0.2 | 0.5 | 20.0 |
| RC | No | 0.2 | 0.3 | 20.0 |
| WF | No | 0.2 | 0.8 | 20.0 |
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

In the CA variant, volume is calculated for four merchantability standards: total stem cubic feet, merchantable stem cubic feet, sawlog stem cubic feet, and merchantable stem board feet (Scribner Decimal C (R5) and Scribner (R6)). Sawlog cubic foot volume is only reported when the FIAVBC keyword is in use. Volume estimation is based on methods contained in the National Volume Estimator Library maintained by the Forest Products Measurements group in the Forest Management Service Center (Volume Estimator Library Equations 2009). The default volume merchantability standards and equation numbers for the CA variant are shown in tables 7.0.1-7.0.4.

Volume computation methods used by the Forest Inventory and Analysis (FIA) program can be requested with the FIAVBC keyword. This keyword encompasses the National Scale Volume and Biomass estimators (NSVB; Westfall et al. 2024) and regional equations used for woodland species (Burrill et al. 2024). More information about the FIAVBC keyword and required input variables can be found in the Essential FVS Guide (Dixon 2002).

**Table 7.0.1 Volume merchantability standards for the CA variant.**

|  |  |  |
| --- | --- | --- |
| **Merchantable Cubic Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | KP | All Other Species |
| Region 5 | 6.0 / 6.0 inches | 7.0 / 6.0 inches |
| Region 6 | 6.0 / 4.5 inches | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| **Merchantable Board Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | KP | All Other Species |
| Region 5 | 6.0 / 6.0 inches | 7.0 / 6.0 inches |
| Region 6 | 6.0 / 4.5 inches | 7.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |

**Table 7.0.2 Volume equation defaults for each species, at specific location codes, with model name.**

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
| California live oak | 505, 506, 508, 511, 514 | 500DVEW801 | Pillsbury and Kirkley Equations |
| California live oak | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| California live oak | 710, 711, 712 | B00BEHW800 | Behre's Hyperbola |
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
| Willow | 505, 506, 508, 511, 514 | 500DVEW807 | Pillsbury and Kirkley Equations |
| Willow | 610, 611 | 616BEHW920 | Behre's Hyperbola |
| Willow | 710, 711, 712 | B00BEHW999 | Behre's Hyperbola |
| California nutmeg | 505, 506, 508, 511, 514 | 500DVEW807 | Pillsbury and Kirkley Equations |
| California nutmeg | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| California nutmeg | 710, 711, 712 | B00BEHW231 | Behre's Hyperbola |
| California laurel | 505, 506, 508, 511, 514 | 500DVEW981 | Pillsbury and Kirkley Equations |
| California laurel | 610, 611 | 616BEHW000 | Behre's Hyperbola |
| California laurel | 710, 711, 712 | B00BEHW631 | Behre's Hyperbola |
| other hardwood | 505, 506, 508, 511, 514 | 500DVEW801 | Pillsbury and Kirkley Equations |
| other hardwood | 610, 611 | 616BEHW998 | Behre's Hyperbola |
| other hardwood | 710, 711, 712 | B00BEHW999 | Behre's Hyperbola |
| redwood | 505, 506, 508, 511, 514 | 500WO2W211 | Wensel and Olsen Profile Model |
| redwood | 610, 611 | 616BEHW211 | Behre's Hyperbola |
| redwood | 710, 711, 712 | B00BEHW211 | Behre's Hyperbola |

**Table 7.0.3 Citations by Volume Model**

| **Model Name** | **Citation** |
| --- | --- |
| Behre’s Hyperbola | USFS-R6 Sale Preparation and Valuation Section of Diameter and Volume Procedures - R6 Timber Cruise System. 1978. |
| Flewelling 2-Point Profile Model | Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II. |
| Pillsbury and Kirkley Equations | Norman H Pillsbury and Michael L Kirkley 1984 Equations for Total, Wood, and saw-Log Volume for Thirteen California Hardwoods. Pacific Northwest Forest and Range Experiment Station Research Note PNW-414. |
| Wensel and Olsen Profile Model | Wensel, L. C. and C. M. Olson. 1993. Tree Taper Models for Major Commercial California Conifers. Research Note No. 33. Northern Calif. Forest Yield Cooperative. Dept. of Forstry and Mgmt., Univ. of Calif., Berkeley. 28 pp. |

**Table 7.0.4 Species-specific default form class values for the CA variant.**

| **Species Code** | **Behre’s Hyperbola Equation Number** | **Form Class** | | | | |
| --- | --- | --- | --- | --- | --- | --- |
| **0<DBH<11** | **11<=DBH<21** | **21<=DBH<31** | **31<=DBH<41** | **DBH>=41** |
| **Rogue River NF (610)** | | | | | | |
| PC | 616BEHW000 | 95 | 82 | 76 | 74 | 74 |
| IC | 616BEHW081 | 94 | 94 | 78 | 75 | 74 |
| RC | 616BEHW242 | 95 | 82 | 76 | 75 | 74 |
| WF\* | 616BEHW015 | 96 | 91 | 84 | 83 | 82 |
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
| WF\* | 616BEHW015 | 93 | 93 | 86 | 85 | 85 |
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

| **BLM Locations:** | | **710** | **711** | **712** |
| --- | --- | --- | --- | --- |
| PC | B00BEHW081 | 73 | 70 | 70 | |
| IC | B00BEHW081 | 86 | 78 | 78 | |
| RC | B00BEHW242 | 80 | 78 | 78 | |
| WF | B00BEHW015 | 87 | 91 | 91 | |
| RF | B00BEHW021 | 76 | 78 | 75 | |
| SH | B00BEHW021 | 76 | 78 | 75 | |
| DF | B02BEHW202 | 89 | 87 | 87 | |
| WH | B00BEHW263 | 91 | 91 | 92 | |
| MH | B00BEHW260 | 76 | 70 | 72 | |
| WB | B00BEHW119 | 80 | 73 | 80 | |
| KP | B00BEHW108 | 80 | 68 | 80 | |
| LP | B00BEHW108 | 80 | 68 | 80 | |
| CP | B00BEHW108 | 80 | 68 | 80 | |
| LM | B00BEHW108 | 80 | 68 | 80 | |
| JP | B00BEHW116 | 80 | 70 | 75 | |
| SP | B00BEHW117 | 91 | 84 | 91 | |
| WP | B00BEHW119 | 80 | 76 | 80 | |
| PP | B00BEHW122 | 88 | 85 | 88 | |
| MP | B00BEHW108 | 80 | 68 | 80 | |
| GP | B00BEHW108 | 80 | 68 | 80 | |
| WJ | B00BEHW242 | 76 | 70 | 60 | |
| BR | B00BEHW093 | 76 | 74 | 76 | |
| GS | B00BEHW211 | 76 | 70 | 75 | |
| PY | B00BEHW231 | 76 | 76 | 70 | |
| OS | B00BEHW999 | 76 | 70 | 74 | |
| LO | B00BEHW800 | 80 | 80 | 80 | |
| CY | B00BEHW800 | 80 | 80 | 80 | |
| BL | B00BEHW800 | 80 | 80 | 80 | |
| EO | B00BEHW800 | 80 | 80 | 80 | |
| WO | B00BEHW800 | 80 | 80 | 80 | |
| BO | B00BEHW800 | 80 | 80 | 80 | |
| VO | B00BEHW800 | 80 | 80 | 80 | |
| IO | B00BEHW800 | 80 | 80 | 80 | |
| BM | B00BEHW312 | 84 | 84 | 84 | |
| BU | B00BEHW800 | 80 | 80 | 80 | |
| RA | B00BEHW351 | 88 | 88 | 91 | |
| MA | B00BEHW361 | 81 | 81 | 86 | |
| GC | B00BEHW431 | 83 | 83 | 86 | |
| DG | B00BEHW999 | 83 | 83 | 83 | |
| FL | B00BEHW312 | 84 | 84 | 84 | |
| WN | B00BEHW999 | 83 | 83 | 83 | |
| TO | B00BEHW631 | 84 | 84 | 86 | |
| SY | B00BEHW800 | 80 | 80 | 80 | |
| AS | B00BEHW999 | 76 | 72 | 75 | |
| CW | B00BEHW747 | 76 | 72 | 74 | |
| WI | B00BEHW999 | 75 | 75 | 75 | |
| CN | B00BEHW231 | 76 | 76 | 70 | |
| CL | B00BEHW631 | 84 | 84 | 86 | |
| OH | B00BEHW999 | 76 | 70 | 74 | |
| RW | B00BEHW211 | 75 | 75 | 75 | |

# 8.0 Fire and Fuels Extension (FFE-FVS)

The Fire and Fuels Extension to the Forest Vegetation Simulator (FFE-FVS) (Reinhardt and Crookston 2003) integrates FVS with models of fire behavior, fire effects, and fuel and snag dynamics. This allows users to simulate various management scenarios and compare their effect on potential fire hazard, surface fuel loading, snag levels, and stored carbon over time. Users can also simulate prescribed burns and wildfires and get estimates of the associated fire effects such as tree mortality, fuel consumption, and smoke production, as well as see their effect on future stand characteristics. FFE-FVS, like FVS, is run on individual stands, but it can be used to provide estimates of stand characteristics such as canopy base height and canopy bulk density when needed for landscape-level fire models.

For more information on FFE-FVS and how it is calibrated for the CA variant, refer to the updated FFE-FVS model documentation (Rebain, comp. 2010) available on the FVS website.

# 9.0 Insect and Disease Extensions

The FVS Insect and Pathogen model for dwarf mistletoe has been developed for the CA variant through the participation and contribution of various organizations led by Forest Health Protection. This model is currently maintained by the Forest Management Service Center and regional Forest Health Protection specialists. Additional details regarding this model may be found in chapter 8 of the Essential FVS Users Guide (Dixon 2002).

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

Paysen, Timothy E.; Narog, Marcia G.; Tissell, Robert G.; Lardner, Melody A. 1991. Trunk and root sprouting on residual trees after thinning a Quercus chrysolepis stand. Forest Science. 37(1): 17-27.

Pillsbury, Norman H and Kirkley, Michael L., 1984. Equations for Total, Wood, and saw-Log Volume for Thirteen California Hardwoods. Pacific Northwest Forest and Range Experiment Station Research Note PNW-414.

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

**Table 11.1.1 Region 5 plant association codes recognized in the CA variant.**

| **FVS Sequence Number = Plant Association**  **Description** | **Alpha Code** | **Reference** |
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

**Table 11.1.2 Region 6 plant association codes recognized in the CA variant.**

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