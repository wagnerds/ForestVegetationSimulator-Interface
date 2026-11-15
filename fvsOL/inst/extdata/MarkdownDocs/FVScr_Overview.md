Central Rockies (CR) Variant Overview of the Forest Vegetation Simulator

March 2026

![](data:image/jpeg;base64...)

![Forest%20Service%20Color](data:image/jpeg;base64...)Harney Peak, Black Hills National Forest

(Blaine Cook, FS-R2)

Central Rockies (CR) Variant Overview of the Forest Vegetation Simulator

# Authors and Contributors:

The FVS staff has maintained model documentation for this variant in the form of a variant overview since its release in 1990. The original author was Gary Dixon. In 2008, the previous document was replaced with this updated variant overview. Gary Dixon, Christopher Dixon, Robert Havis, Chad Keyser, Stephanie Rebain, Erin Smith-Mateja, and Don Vandendriesche were involved with this major update. Don Vandendriesche cross-checked information contained in this variant overview with the FVS source code. In 2009, Gary Dixon, expanded the species list and made significant updates to this variant overview.

FVS Staff. 2008 (revised March 24, 2026). Central Rockies (CR) Variant Overview – Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 81p.

Table of Contents

[Authors and Contributors: ii](#_Toc225231553)

[1.0 Introduction 1](#_Toc225231554)

[2.0 Geographic Range 3](#_Toc225231555)

[3.0 Control Variables 4](#_Toc225231556)

[3.1 Location Codes 4](#_Toc225231557)

[3.2 Species Codes 7](#_Toc225231558)

[3.3 Habitat Type, Plant Association, and Ecological Unit Codes 9](#_Toc225231559)

[3.4 Site Index 9](#_Toc225231560)

[3.5 Maximum Density 11](#_Toc225231561)

[4.0 Growth Relationships 13](#_Toc225231562)

[4.1 Height-Diameter Relationships 13](#_Toc225231563)

[4.2 Bark Ratio Relationships 15](#_Toc225231564)

[4.3 Crown Ratio Relationships 16](#_Toc225231565)

[4.3.1 Crown Ratio Dubbing 16](#_Toc225231566)

[4.3.2 Crown Ratio Change 19](#_Toc225231567)

[4.3.3 Crown Ratio for Newly Established Trees 19](#_Toc225231568)

[4.4 Crown Width Relationships 19](#_Toc225231569)

[4.5 Crown Competition Factor 23](#_Toc225231570)

[4.6 Small Tree Growth Relationships 25](#_Toc225231571)

[4.6.1 Small Tree Height Growth 25](#_Toc225231572)

[4.6.2 Small Tree Diameter Growth 28](#_Toc225231573)

[4.7 Large Tree Growth Relationships 28](#_Toc225231574)

[4.7.1 Large Tree Diameter Growth 29](#_Toc225231575)

[4.7.2 Large Tree Height Growth 34](#_Toc225231576)

[5.0 Mortality Model 47](#_Toc225231577)

[6.0 Regeneration 50](#_Toc225231578)

[7.0 Volume 53](#_Toc225231579)

[8.0 Fire and Fuels Extension (FFE-FVS) 57](#_Toc225231580)

[9.0 Insect and Disease Extensions 58](#_Toc225231581)

[10.0 Literature Cited 59](#_Toc225231582)

[11.0 Appendices 63](#_Toc225231583)

[11.1 Appendix A: Plant Association Codes for Region 2 Forests 63](#_Toc225231584)

[11.2 Appendix B: Plant Association Codes for Region 3 Forests 73](#_Toc225231585)

Quick Guide to Default Settings

| **Parameter or Attribute** | **Default Setting** | | |
| --- | --- | --- | --- |
| Number of Projection Cycles | 1 (10 if using FVS GUI) | | |
| Projection Cycle Length | 10 years | | |
| Location Code (National Forest) | | | |
| SM – Southwestern Mixed Conifers  (Region 2/Region 3) | | 213 – San Juan / 303 – Cibola | |
| SP – Southwestern Ponderosa Pine  (Region 2/Region 3) | | 213 – San Juan / 303 – Cibola | |
| BP – Black Hills Ponderosa Pine | | 203 – Black Hills | |
| SF – Spruce-fir | | 206 – Medicine Bow – Routt | |
| LP – Lodgepole Pine | | 206 – Medicine Bow – Routt | |
| If model type is not set | | 303 – Cibola, model type set to SP | |
| Model Type | | location code specific | |
| Slope | | 5 percent | |
| Aspect | | 0 (no meaningful aspect) | |
| Elevation | | | |
| SM – Southwestern Mixed Conifers | 88 (8800 feet) | | |
| SP – Southwestern Ponderosa Pine | 88 (8800 feet) | | |
| BP – Black Hills Ponderosa Pine | 55 (5500 feet) | | |
| SF – Spruce-fir | 90 (9000 feet) | | |
| LP – Lodgepole Pine | 90 (9000 feet) | | |
| Latitude / Longitude | Latitude | | Longitude |
| SM – Southwestern Mixed Conifers | 38 | | 107 |
| SP – Southwestern Ponderosa Pine | 38 | | 107 |
| BP – Black Hills Ponderosa Pine | 44 | | 107 |
| SF – Spruce-fir; LP – Lodgepole Pine | 40 | | 107 |
| Site Species |  | | |
| SM – Southwestern Mixed Conifers | DF | | |
| SP – Southwestern Ponderosa Pine | PP | | |
| BP – Black Hills Ponderosa Pine | PP | | |
| SF – Spruce-fir | ES | | |
| LP – Lodgepole Pine | LP | | |
| Site Index |  | | |
| SM – Southwestern Mixed Conifers | 70 feet (breast height age; 100 years) | | |
| SP – Southwestern Ponderosa Pine | 70 feet (breast height age; 100 years) | | |
| BP – Black Hills Ponderosa Pine | 57 feet (total age; 100 years) | | |
| SF – Spruce-fir | 75 feet (breast height age; 100 years) | | |
| LP – Lodgepole Pine | 65 feet (total age; 100 years) | | |
| Maximum Stand Density Index | Species specific | | |
| Maximum Basal Area | Based on maximum stand density index | | |
| Volume Equations | National Volume Estimator Library | | |
| Merchantable Cubic Foot Volume Specifications: | | | |
| Minimum DBH / Top Diameter | Hardwoods | | Softwoods |
| SM – Southwestern Mixed Conifers  SP – Southwestern Ponderosa Pine  SF – Spruce-fir  LP – Lodgepole Pine | 5.0 / 4.0 inches | | 5.0 / 4.0 inches |
| BP – Black Hills Ponderosa Pine | 9.0 / 6.0 inches | | 9.0 / 6.0 inches |
| Stump Height | 1.0 foot | | 1.0 foot |
| Merchantable Board Foot Volume Specifications: | | | |
| Minimum DBH / Top Diameter | Hardwoods | | Softwoods |
| Region 2 Forests using these model types:  SM – Southwestern Mixed Conifers  SP – Southwestern Ponderosa Pine  SF – Spruce-fir  LP – Lodgepole Pine | 7.0 / 6.0 inches | | 7.0 / 6.0 inches |
| Region 3 Forests using these model types:  SM – Southwestern Mixed Conifers  SP – Southwestern Ponderosa Pine  SF – Spruce-fir  LP – Lodgepole Pine | 9.0 / 6.0 inches | | 9.0 / 6.0 inches |
| BP – Black Hills Ponderosa Pine | 9.0 / 6.0 inches | | 9.0 / 6.0 inches |
| Stump Height | 1.0 foot | | 1.0 foot |
| Sampling Design: | | | |
| Large Trees (variable radius plot) | 40 BAF | | |
| Small Trees (fixed radius plot) | 1/300th acre | | |
| Breakpoint DBH | 5.0 inches | | |

# 1.0 Introduction

The Forest Vegetation Simulator (FVS) is an individual tree, distance independent growth and yield model with linkable modules called extensions, which simulate various insect and pathogen impacts, fire effects, fuel loading, snag dynamics, and development of understory tree vegetation. FVS can simulate a wide variety of forest types, stand structures, and pure or mixed species stands.

New “variants” of the FVS model are created by imbedding new tree growth, mortality, and volume equations for a particular geographic area into the FVS framework. Geographic variants of FVS have been developed for most of the forested lands in the United States.

The Central Rockies (CR) variant of FVS was developed in 1990. It was based on growth equations and relationships from the GENGYM model (Edminster, Mowrer, Mathiasen, et. al. 1991). Although GENGYM is a diameter class model, and FVS is an individual tree model, results produced with FVS were consistent with those produced by GENGYM. While general model upgrades, enhancements, and error fixes, were made to the code since 1990, the variant essentially remained the same as when it was developed.

In late 1998, staff at the Forest Management Service Center began a major overhaul of the variant to correct known deficiencies and quirks, take advantage of advances in FVS technology, incorporate additional data into certain model relationships, and improve default values and surrogate species assignments. In addition, the model was expanded to include 24 species and allow all National Forests within the geographic range of the model to access all the imbedded model types.

In 2009 the variant was expanded from 24 species to 38 species. The juniper species group was dropped and in its place was added the individual juniper species: Utah juniper, alligator juniper, Rocky Mountain juniper, oneseed juniper, and eastern redcedar. These five individual species all use the growth equations that were originally used for the juniper species group in the 24 species version of the model. Similarly, the cottonwood species group was dropped and in its place was added the individual cottonwood species: narrowleaf cottonwood and plains cottonwood. Both of these individual species use the growth equations that were originally used for the cottonwood species group. The oak species group was also dropped and in its place was added the individual oak species: Gambel oak, Arizona white oak, Emory oak, bur oak, and silverleaf oak. All five oak species uses the growth equations that were originally used for the oak species group. Paper birch was added and uses growth equations for quaking aspen. Chihuahuan pine was added and uses growth equations for ponderosa pine. Singleleaf pinyon, border pinyon, and Arizona twoneedle pinyon were added and use growth equations for common twoneedle pinyon.

To fully understand how to use this variant, users should also consult the following publication:

* Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002)

This publication may be downloaded from the Forest Management Service Center (FMSC), Forest Service website. Other FVS publications may be needed if one is using an extension that simulates the effects of fire, insects, or diseases.

# 2.0 Geographic Range

The CR variant was fit to data representing forest types in represented in the Wyoming, South Dakota, Colorado, New Mexico, and Arizona. Data used in initial model development came from growth samples from National Forests in these states.

The CR variant’s original range covered all forested land in Forest Service Regions 2 and 3. This range extended from the northern border of Wyoming and Black Hills of South Dakota, down through Colorado and western Nebraska, and into Arizona and New Mexico. The suggested geographic range of use for the CR variant is shown in figure 2.0.1.

![Picture of the suggested geographic range of the Central Rockies variant.](data:image/jpeg;base64...)

**Figure 2.0.1 Suggested geographic range of use for the CR variant.**

# 3.0 Control Variables

FVS users need to specify certain variables used by the CR variant to control a simulation. These are entered in parameter fields on various FVS keywords available in the FVS interface or they are read from an FVS input database using the Database Extension.

The CR variant contains five different model types as shown in table 3.0.1.1. Model type may be entered directly or if missing or an incorrect value is entered, then the default model type is determined from the forest location code. The default model type by forest location code is shown in table 3.1.1.

Some equations, for some species, are different depending on which model type is selected. For example, ponderosa pine growth relationships are different if “Black Hills Ponderosa Pine” is selected as the model type, as opposed to Southwestern Ponderosa Pine. For other species, such as Douglas-fir, the growth equations are the same in all model types. The abbreviation shown in the second column of table 3.0.1.1 is used to identify the model type and in labeling some FVS output files.

**Table 3.0.1.1 Model types used in the CR variant.**

|  |  |  |
| --- | --- | --- |
| **Model Type** | **Output Abbreviation** | **Description** |
| 1 | SM | Southwestern Mixed Conifers |
| 2 | SP | Southwestern Ponderosa Pine |
| 3 | BP | Black Hills Ponderosa Pine |
| 4 | SF | Spruce-fir |
| 5 | LP | Lodgepole Pine |

## 3.1 Location Codes

The location code is a 3- or 4-digit code where, in general, the first digit of the code represents the Forest Service Region Number, and the last two digits represent the Forest Number within that region. In some cases, a location code beginning with a “7” or “8” is used to indicate an administrative boundary that doesn’t use a Forest Service Region number (for example, other federal agencies, state agencies, or other lands).

If the location code is missing or incorrect, the CR variant uses a default code depending on the model type. If the model type is also missing or incorrect, or if the model type is 1 or 2, the default forest is 303 (Cibola National Forest); if model type 3 is specified, the default forest code is 203 (Black Hills National Forest); and if model types 4 or 5 is specified, the default forest code is 206 (Medicine Bow – Routt National Forest). Location codes recognized in the CR variant are shown in tables 3.1.1 and 3.1.2.

**Table 3.1.1 Location codes and default model types used by the CR variant.**

| **Location Code** | **National Forest** | **Default Model Type** |
| --- | --- | --- |
| 202 | Bighorn | Lodgepole Pine |
| 203 | Black Hills | Black Hills Ponderosa Pine |
| 204 | Grand Mesa, Uncompahgre, Gunnison | Spruce-fir |
| 206 | Medicine Bow - Routt | Lodgepole Pine |
| 207 | Nebraska | Black Hills Ponderosa Pine |
| 209 | Rio Grande | Spruce-fir |
| 210 | Arapaho, Roosevelt | Lodgepole Pine |
| 212 | Pike, San Isabel | Spruce-fir |
| 213 | San Juan | Spruce-fir |
| 214 | Shoshone | Lodgepole Pine |
| 215 | White River | Spruce-fir |
| 301 | Apache-Sitgreaves | Southwestern Ponderosa Pine |
| 302 | Carson | Southwestern Ponderosa Pine |
| 303 | Cibola | Southwestern Ponderosa Pine |
| 304 | Coconino | Southwestern Ponderosa Pine |
| 305 | Coronado | Southwestern Ponderosa Pine |
| 306 | Gila | Southwestern Ponderosa Pine |
| 307 | Kaibab | Southwestern Ponderosa Pine |
| 308 | Lincoln | Southwestern Ponderosa Pine |
| 309 | Prescott | Southwestern Ponderosa Pine |
| 310 | Sante Fe | Southwestern Ponderosa Pine |
| 312 | Tonto | Southwestern Ponderosa Pine |
| 201 | Arapahoe (mapped to 210) | Lodgepole Pine |
| 205 | Gunnison (mapped to 204) | Spruce-fir |
| 208 | Pike (mapped to 212) | Spruce-fir |
| 211 | Routt (mapped to 206) | Lodgepole Pine |
| 216 | Samuel R. McKelvie (mapped to 207) | Black Hills Ponderosa Pine |
| 224 | Grand Mesa (mapped to 204) | Spruce-fir |
| 311 | Sitgreaves (mapped to 301) | Southwestern Ponderosa Pina |

**Table 3.1.2 Bureau of Indian Affairs reservation codes used in the CR variant.**

| **Location Code** | **Location** |
| --- | --- |
| 7101 | Cheyenne River Reservation (mapped to 203) |
| 7104 | Pine Ridge Reservation (mapped to 203) |
| 7105 | Rosebud Indian Reservation (mapped to 203) |
| 7106 | Yankton Reservation (mapped to 203) |
| 7108 | Standing Rock Reservation (mapped to 203) |
| 7111 | Santee Reservation (mapped to 207) |
| 7113 | Crow Creek Reservation (mapped to 203) |
| 7114 | Lower Brule Reservation (mapped to 203) |
| 7206 | Cheyenne-Arapaho Otsa (mapped to 310) |
| 7207 | Kiowa-Comanche-Apache-Fort Sill Apache Otsa (mapped to 310) |
| 7208 | Kiowa-Comanche-Apache-Ft Sill-Apache/Caddo-Wichita-Delawarejoint-Use Otsa (mapped to 310) |
| 7209 | Caddo-Wichita-Delaware Otsa (mapped to 310) |
| 7210 | Kaw Otsa (mapped to 310) |
| 7211 | Otoe-Missouria Otsa (mapped to 310) |
| 7213 | Ponca Otsa (mapped to 310) |
| 7214 | Tonkawa Otsa (mapped to 310) |
| 7217 | Kickapoo (Tx/Mx) (mapped to 308) |
| 7302 | Crow Reservation (mapped to 202) |
| 7305 | Northern Cheyenne Off-Reservationtrust Land (mapped to 203) |
| 7306 | Wind River Reservation (mapped to 214) |
| 7601 | Chickasaw Otsa (mapped to 310) |
| 7609 | Osage Reservation (mapped to 310) |
| 7701 | Colorado River Indian Reservation (mapped to 312) |
| 7702 | Fort Mojave Reservation (mapped to 312) |
| 7703 | Chemehuevi Reservation (mapped to 312) |
| 7704 | Fort Apache Reservation (mapped to 301) |
| 7705 | Tohono O'Odham Nation Reservation (mapped to 312) |
| 7706 | Fort Mcdowell Yavapai Nation Reservation (mapped to 312) |
| 7707 | Salt River Reservation (mapped to 312) |
| 7708 | Maricopa, (Ak Chin Indian Res (mapped to 312) |
| 7709 | Gila River Indian Reservation (mapped to 312) |
| 7710 | San Carlos Reservation (mapped to 305) |
| 7718 | Uintah And Ouray Reservation (mapped to 215) |
| 7719 | Cocopah Reservation (mapped to 312) |
| 7720 | Fort Yuma Indian Reservation (mapped to 312) |
| 7724 | Hopi Reservation (mapped to 301) |
| 7725 | Havasupai Reservation (mapped to 307) |
| 7726 | Hualapai Indian Reservation (mapped to 307) |
| 7727 | Yavapai-Prescott Reservation (mapped to 309) |
| 7728 | Kaibab Indian Reservation (mapped to 307) |
| 7835 | Timbi-Sha Shoshone Reservation (mapped to 312) |
| 7847 | Agua Caliente Indian Reservation (mapped to 312) |
| 7848 | Augustine Reservation (mapped to 312) |
| 7859 | Morongo Reservation (mapped to 312) |
| 7901 | Acoma Pueblo (mapped to 303) |
| 7902 | Pueblo De Cochiti (mapped to 310) |
| 7903 | Isleta Pueblo (mapped to 303) |
| 7904 | Jemez Pueblo (mapped to 310) |
| 7905 | Sandia Pueblo (mapped to 303) |
| 7906 | San Felipe Pueblo (mapped to 310) |
| 7907 | Santa Ana Pueblo (mapped to 310) |
| 7908 | Santo Domingo Pueblo (mapped to 310) |
| 7909 | Zia Pueblo (mapped to 310) |
| 7910 | Laguna Pueblo (mapped to 303) |
| 7911 | Nambe Pueblo (mapped to 310) |
| 7912 | Picuris Pueblo (mapped to 302) |
| 7913 | Pueblo Of Pojoaque (mapped to 310) |
| 7914 | San Ildefonso Pueblo (mapped to 310) |
| 7915 | Ohkay Owingeh (mapped to 302) |
| 7916 | Santa Clara Pueblo (mapped to 310) |
| 7917 | Taos Pueblo (mapped to 302) |
| 7918 | Tesuque Pueblo (mapped to 310) |
| 7919 | Southern Ute Reservation (mapped to 213) |
| 7920 | Ute Mountain Reservation (mapped to 213) |
| 7921 | Jicarilla Apache Nation Reservation (mapped to 302) |
| 7922 | Mescalero Reservation (mapped to 308) |
| 7923 | Fort Sill Apache Indian Reservation (mapped to 306) |
| 7924 | Zuni Reservation (mapped to 303) |
| 7925 | Ramah-Navajo (mapped to 303) |
| 8001 | Navajo Nation Reservation (mapped to 301) |

## 3.2 Species Codes

The CR variant recognizes 36 species, plus two other composite species categories. You may use FVS species codes, Forest Inventory and Analysis (FIA) species codes, or USDA Natural Resources Conservation Service PLANTS symbols to represent these species in FVS input data. Any valid western species code identifying species not recognized by the variant will be mapped to a similar species in the variant. The species mapping crosswalk is available on the FVS website variant documentation webpage. Any non-valid species code will default to the “other hardwood” category.

Either the FVS sequence number or species code must be used to specify a species in FVS keywords and Event Monitor functions. FIA codes or PLANTS symbols are only recognized during data input and may not be used in FVS keywords. Table 3.2.1 shows the complete list of species codes recognized by the EM variant.

When entering tree data, users should substitute diameter at root collar (DRC) for diameter at breast height (DBH) for woodland species (pinyons, junipers, and oaks other than bur oak).

**Table 3.2.1 Species codes used in the CR variant.**

| **Species Number** | **Species Code** | **FIA Code** | **PLANTS Symbol** | **Scientific Name1** | **Common Name1** |
| --- | --- | --- | --- | --- | --- |
| 1 | AF | 019 | ABLA | *Abies lasiocarpa* | subalpine fir |
| 2 | CB | 018 | ABLAA | *Abies lasiocarpa var. arizonica* | corkbark fir |
| 3 | DF | 202 | PSME | *Pseudotsuga menziesii* | Douglas-fir |
| 4 | GF | 017 | ABGR | *Abies grandis* | grand fir |
| 5 | WF | 015 | ABCO | *Abies concolor* | white fir |
| 6 | MH | 264 | TSME | *Tsuga mertensiana* | mountain hemlock |
| 7 | RC | 242 | THPL | *Thuja plicata* | western redcedar |
| 8 | WL | 073 | LAOC | *Larix occidentalis* | western larch |
| 9 | BC | 102 | PIAR | *Pinus aristata* | bristlecone pine |
| 10 | LM | 113 | PIFL2 | *Pinus flexilis* | limber pine |
| 11 | LP | 108 | PICO | *Pinus contorta* | lodgepole pine |
| 12 | PI | 106 | PIED | *Pinus edulis* | twoneedle pinyon |
| 13 | PP | 122 | PIPO | *Pinus ponderosa* | ponderosa pine |
| 14 | WB | 101 | PIAL | *Pinus albicaulis* | whitebark pine |
| 15 | SW | 114 | PIST3 | *Pinus strobiformis* | southwestern white pine |
| 16 | UJ | 065 | JUOS | *Juniperus osteosperma* | Utah juniper |
| 17 | BS | 096 | PIPU | *Picea pungens* | blue spruce |
| 18 | ES | 093 | PIEN | *Picea engelmannii* | Engelmann spruce |
| 19 | WS | 094 | PIGL | *Picea glauca* | white spruce |
| 20 | AS | 746 | POTR5 | *Populus tremuloides* | quaking aspen |
| 21 | NC | 749 | POAN3 | *Populus angustifolia* | narrowleaf cottonwood |
| 22 | PW | 745 | PODEM | *Populus deltoides* ssp. *monilifera* | plains cottonwood |
| 23 | GO | 814 | QUGA | *Quercus gambelii* | Gambel oak |
| 24 | AW | 803 | QUAR | *Quercus arizonica* | Arizona white oak |
| 25 | EM | 810 | QUEM | *Quercus emoryi* | Emory oak |
| 26 | BK | 823 | QUMA2 | *Quercus macrocarpa* | bur oak |
| 27 | SO | 843 | QUHY | *Quercus hypoleucoides* | silverleaf oak |
| 28 | PB | 375 | BEPA | *Betula papyrifera* | paper birch |
| 29 | AJ | 063 | JUDE2 | *Juniperus deppeana* | alligator juniper |
| 30 | RM | 066 | JUSC2 | *Juniperus scopulorum* | Rocky Mountain juniper |
| 31 | OJ | 069 | JUMO | *Juniperus monosperma* | oneseed juniper |
| 32 | ER | 068 | JUVI | *Juniperus virginiana* | eastern redcedar |
| 33 | PM | 133 | PIMO | *Pinus monophylla* | singleleaf pinyon |
| 34 | PD | 134 | PIDI3 | *Pinus discolor* | border pinyon |
| 35 | AZ | 143 | PIMOF | *Pinus monophylla* var. *fallax* | Arizona twoneedle pinyon3 |
| 36 | CI | 118 | PILE | *Pinus leiophylla* | Chihuahuan pine |
| 37 | OS | 299 | 2TN |  | other softwood2 |
| 38 | OH | 998 | 2TB |  | other hardwood2 |

1Set based on the USDA Forest Service NRM TAXA lists and the USDA Plants database.

2Other categories use FIA codes and NRM TAXA codes that best match the other category.

3Common name is from FIA master species list, January, 1 2021.

## 3.3 Habitat Type, Plant Association, and Ecological Unit Codes

In the CR variant, plant association codes are used in the Fire and Fuels Extension (FFE) to set fuel loading in cases where there are no trees in the first cycle. Codes recognized in the CR variant are the NRIS Common Stand Exam codes (US Forest Service 2000). Valid codes are shown in Appendices A and B. Region 2 codes originate from Johnson (1987), and Region 3 codes from US Forest Service (1997). Users may enter the plant association code or the plant association FVS sequence number on the STDINFO keyword, when entering stand information from a database, or when using the SETSITE keyword without the PARMS option. If using the PARMS option with the SETSITE keyword, users must use the FVS sequence number for the plant association.

## 3.4 Site Index

Site index is used in the growth equations for the CR variant. When possible, users should enter their own values instead of relying on the default values assigned by FVS. If site index information is available, a single site index can be specified for the whole stand, a site index for each individual species can be specified, or a combination of these can be entered. If the user does not supply site index values, then default values will be used. When entering site index in the CR variant, the sources shown in table 3.4.1 should be used if possible. Default values for site species and site index, by model type, are shown in table 3.4.2.

When site index is not specified for a species, a relative site index value is calculated from the site index of the site species using equations {3.4.1} and {3.4.2}. Minimum and Maximum site indices used in equation {3.4.1} may be found in table 3.4.3. If the site index for the stand is less than or equal to the lower site limit, it is set to the lower limit + 0.5 for the calculation of *RELSI*. Similarly, if the site index for the stand is greater than the upper site limit, it is set to the upper site limit for the calculation of *RELSI*.

{3.4.1} *RELSI* = (*SIsite* – *SITELOsite*) / (*SITEHIsite* – *SITELOsite*)

{3.4.2} *SIi* = *SITELOi* + *RELSI* \* (*SITEHIi* – *SITELOi*)

where:

*RELSI* is the relative site index of the site species

*SI* is species site index

*SITELO* is the lower bound of the *SI* range for a species

*SITEHI* is the upper bound of the *SI* range for a species

*site* is the site species

*i* is the species for which site index is to be calculated

**Table 3.4.1 Recommended site index references for use with the CR variant.**

| **Model Type** | **Reference Species** | **Ref Age** | **Age Type** | **Reference** |
| --- | --- | --- | --- | --- |
| SW Mixed Conifers | DF | 100 | Breast Height | Edminster, Mathiasen, Olsen 1991 |
| SW Ponderosa Pine | PP | 100 | Breast Height | Minor 1964 |
| BHills Ponderosa Pine | PP | 100 | Total | Meyer 1961 |
| Spruce-fir | ES / AF | 100 | Breast Height | Alexander 1967 |
| Lodgepole Pine | LP | 100 | Total | Alexander, Tackle, Dahms 1967 |

**Table 3.4.2 Default values for site species and site index, by model type, for the CR variant.**

|  |  |  |
| --- | --- | --- |
| **Model Type** | **Site Species** | **Site Index** |
| SW Mixed Conifers | DF | 70 |
| SW Ponderosa Pine | PP | 70 |
| Black Hills Ponderosa Pine | PP | 57 |
| Spruce-fir | ES | 75 |
| Lodgepole Pine | LP | 65 |

**Table 3.4.3 Default *SITELO* and *SITEHI* values for equation {3.4.1} in the CR variant.**

| **Species Code** | ***SITELO*** | ***SITEHI*** |
| --- | --- | --- |
| AF | 40 | 105 |
| CB | 30 | 100 |
| DF | 40 | 120 |
| GF | 30 | 130 |
| WF | 40 | 105 |
| MH | 40 | 70 |
| RC | 20 | 125 |
| WL | 40 | 120 |
| BC | 20 | 60 |
| LM | 10 | 60 |
| LP | 30 | 95 |
| PI | 6 | 40 |
| PP | 30 | 100 |
| WB | 20 | 60 |
| SW | 30 | 130 |
| UJ | 6 | 30 |
| BS | 30 | 110 |
| ES | 40 | 120 |
| WS | 30 | 85 |
| AS | 20 | 100 |
| NC | 30 | 120 |
| PW | 30 | 120 |
| GO | 6 | 40 |
| AW | 6 | 40 |
| EM | 6 | 40 |
| BK | 6 | 40 |
| SO | 6 | 40 |
| PB | 20 | 100 |
| AJ | 6 | 30 |
| RM | 6 | 30 |
| OJ | 6 | 30 |
| ER | 6 | 30 |
| PM | 6 | 40 |
| PD | 6 | 40 |
| AZ | 6 | 40 |
| CI | 30 | 100 |
| OS | 30 | 95 |
| OH | 20 | 100 |

## 3.5 Maximum Density

Maximum stand density index (SDI) and maximum basal area (BA) are important variables in determining density related mortality and crown ratio change. Maximum basal area is a stand level metric that can be set using the BAMAX or SETSITE keywords. If not set by the user, a default value is calculated from maximum stand SDI each projection cycle. Maximum stand density index can be set for each species using the SDIMAX or SETSITE keywords. If not set by the user, a default value is assigned as discussed below.

The default maximum SDI is set based on species or a user specified basal area maximum. If a user specified basal area maximum is present, the maximum SDI for all species is computed using equation {3.5.1}; otherwise, species SDI maximums are assigned from the SDI maximums shown in table 3.5.1. Maximum stand density index at the stand level is a weighted average, by basal area, of the individual species SDI maximums.

Stand SDI is calculated using the Zeide calculation method (Dixon 2002).

{3.5.1} *SDIMAXi* = *BAMAX* / (0.5454154 \* *SDIU)*

where:

*SDIMAXi* is the species-specific SDI maximum

*BAMAX* is the user-specified stand basal area maximum

*SDIU* is theproportion of theoretical maximum density at which the stand reaches actual maximum density (default 0.85, changed with the SDIMAX keyword)

**Table 3.5.1 Default stand density index maximums by species in the CR variant.**

| **Species Code** | **SDI Maximum\*** | **Mapped to** |
| --- | --- | --- |
| AF | 602 |  |
| CB | 423 |  |
| DF | 570 |  |
| GF | 562 |  |
| WF | 634 |  |
| MH | 687 |  |
| RC | 762 |  |
| WL | 423 |  |
| BC | 621 | whitebark pine |
| LM | 409 |  |
| LP | 679 |  |
| PI | 348 |  |
| PP | 446 |  |
| WB | 621 |  |
| SW | 529 | eastern white pine |
| UJ | 497 |  |
| BS | 620 | Engelmann spruce |
| ES | 620 |  |
| WS | 412 |  |
| AS | 562 |  |
| NC | 452 | black cottonwood |
| PW | 452 | black cottonwood |
| GO | 652 |  |
| AW | 403 |  |
| EM | 284 |  |
| BK | 423 |  |
| SO | 284 | Emory oak |
| PB | 466 |  |
| AJ | 395 |  |
| RM | 411 |  |
| OJ | 408 |  |
| ER | 354 |  |
| PM | 358 |  |
| PD | 348 | twoneedle pinyon |
| AZ | 358 | singleleaf pinyon |
| CI | 446 | ponderosa pine |
| OS | 348 | twoneedle pinyon |
| OH | 452 | black cottonwood |

\*Source of SDI maximums is an unpublished analysis of FIA data by John Shaw.

# 4.0 Growth Relationships

This chapter describes the functional relationships used to fill in missing tree data and calculate incremental growth. In FVS, trees are grown in either the small tree sub-model or the large tree sub-model depending on the diameter.

## 4.1 Height-Diameter Relationships

Height-diameter relationships in FVS are primarily used to estimate tree heights missing in the input data and occasionally to estimate diameter growth on trees smaller than a given threshold diameter. In the CR variant, height-diameter relationships are a logistic functional form, as shown in equation {4.1.1} (Wykoff, et.al 1982). The equation was fit to data of the same species used to develop other FVS variants. Default coefficients for equation {4.1.1} are shown are shown in table 4.1.1.

When heights are given in the input data for 3 or more trees of a given species, the value of B1 in equation {4.1.1} for that species is recalculated from the input data and replaces the default value shown in table 4.1.1. In the event that the calculated value is less than zero, the default is used.

**{4.1.1} Wykoff functional form**

*HT* = 4.5 + exp(B1 + B2 / (*DBH* + 1.0))

where:

*HT* is tree height

*DBH* is tree diameter at breast height

B1 - B2 are species-specific coefficients shown in table 4.1.1

**Table 4.1.1 Default coefficients for the height-diameter relationship equation in the CR variant.**

| **Species Code** | **B1** | **B2** |
| --- | --- | --- |
| AF | 4.4717 | -6.7387 |
| CB | 4.4717 | -6.7387 |
| DF | 4.5879 | -8.9277 |
| GF | 5.0271 | -11.2168 |
| WF | 4.3008 | -6.8139 |
| MH | 4.8740 | -10.4050 |
| RC | 5.1631 | -9.2566 |
| WL | 5.1631 | -9.2566 |
| BC | 4.1920 | -5.1651 |
| LM | 4.1920 | -5.1651 |
| LP | 4.3767 | -6.1281 |
| PI | 4.1920 | -5.1651 |
| PP | 4.6024 | -11.4693 |
| WB | 4.1920 | -5.1651 |
| SW | 5.1999 | -9.2672 |
| UJ | 4.1920 | -5.1651 |
| BS | 4.5293 | -7.7725 |
| ES | 4.5293 | -7.7725 |
| WS | 4.5293 | -7.7725 |
| AS | 4.4421 | -6.5405 |
| NC | 4.4421 | -6.5405 |
| PW | 4.4421 | -6.5405 |
| GO | 4.1920 | -5.1651 |
| AW | 4.1920 | -5.1651 |
| EM | 4.1920 | -5.1651 |
| BK | 4.1920 | -5.1651 |
| SO | 4.1920 | -5.1651 |
| PB | 4.4421 | -6.5405 |
| AJ | 4.1920 | -5.1651 |
| RM | 4.1920 | -5.1651 |
| OJ | 4.1920 | -5.1651 |
| ER | 4.1920 | -5.1651 |
| PM | 4.1920 | -5.1651 |
| PD | 4.1920 | -5.1651 |
| AZ | 4.1920 | -5.1651 |
| CI | 4.6024 | -11.4693 |
| OS | 4.2597 | -9.3949 |
| OH | 4.4421 | -6.5405 |

For the Black Hills Ponderosa Pine model type, the default height-diameter relationships for all species are shown in the equations {4.1.2} and {4.1.3}. Trees with a DBH greater than 0.5 inches use equation {4.1.2} and trees with a DBH less than or equal to 0.5 inches use equation {4.1.3}.

{4.1.2} *HT* = 32.108633 \* (*SI^*0.276926) \* [(1 – exp(-0.057766\**DBH*))^ 1.0026686] + 4.5

{4.1.3} *HT* = *DBH* \* [12.41173 + 0.04633 \* *SI* – 0.000158 \* *SI^*2]

where:

*HT* is tree height

*DBH* is tree diameter at breast height

*SI* is species site index

However, the calibrated logistic function is used for a given species when there are enough observations to get a satisfactory estimate of the “a” parameter for that species.

## 4.2 Bark Ratio Relationships

Bark ratio estimates are used to convert between diameter outside bark and diameter inside bark in various parts of the model. The equation is shown in equation {4.2.1} and coefficients (b1 and b2) for this equation by species are shown in table 4.2.1.

{4.2.1} *BRATIO* = b1 + b2 \* (1 / *DBH*)

Note: if a species has a b2value equal to 0, then *BRATIO* = b1

where:

*BRATIO* is species-specific bark ratio (bounded to 0.80 <u><</u> *BRATIO* <u><</u> 0.99)

*DBH* is tree diameter at breast height (bounded to *DBH* <u>></u> 1.0)

b1 - b2 are species-specific coefficients shown in table 4.2.1

**Table 4.2.1 Default coefficients for the bark ratio equation {4.2.1} in the CR variant.**

| **Species Code** | **Model Type** | **b1** | **b2** | **Equation Source** |
| --- | --- | --- | --- | --- |
| AF | all | 0.890 | 0 | PP from Wykoff, et. al. 1982 |
| CB | all | 0.890 | 0 | PP from Wykoff, et. al. 1982 |
| DF | all | 0.867 | 0 | Wykoff, et. al. 1982 |
| GF | all | 0.890 | 0 | PP from Wykoff, et. al. 1982 |
| WF | all | 0.890 | 0 | PP from Wykoff, et. al. 1982 |
| MH | all | 0.9497 | 0 | Wykoff, et. al. 1982 |
| RC | all | 0.9497 | 0 | Wykoff, et. al. 1982 |
| WL | all | 0.87407 | -0.185 | Schmidt, et. al. 1976 |
| BC | all | 0.9625 | -0.1141 | Uses LP equation |
| LM | all | 0.9625 | -0.1141 | Uses LP equation |
| LP | all | 0.9625 | -0.1141 | Myers 1964 |
| PI | SM, SP | 0.8967 | -0.4448 | PP from Dolph PSW-368 |
| PI | BP, SF, LP | 0.9002 | -0.3089 | Uses PP equation |
| PP | SM, SP | 0.8967 | -0.4448 | PP from Dolph PSW-368 |
| PP | BP, SF, LP | 0.9002 | -0.3089 | Myers & Van Deusen 1958 |
| WB | all | 0.9625 | -0.1141 | Uses LP equation |
| SW | all | 0.9643 | 0 | Wykoff, et. al. 1982 |
| UJ | SM, SP | 0.8967 | -0.4448 | PP from Dolph PSW-368 |
| UJ | BP, SF, LP | 0.9002 | -0.3089 | Uses PP equation |
| BS | all | 0.9502 | -0.2528 | Uses ES equation |
| ES | all | 0.9502 | -0.2528 | Myers & Alexander 1972 |
| WS | all | 0.9502 | -0.2528 | Uses ES equation |
| AS | all | 0.950 | 0 | Utah FVS variant |
| NC | all | 0.892 | -0.086 | Edminster, et. al. 1977 |
| PW | all | 0.892 | -0.086 | Edminster, et. al. 1977 |
| GO |  | 0.93789 | -0.24096 | Clark, et. al. 1991 |
| AW |  | 0.93789 | -0.24096 | Clark, et. al. 1991 |
| EM |  | 0.93789 | -0.24096 | Clark, et. al. 1991 |
| BK |  | 0.93789 | -0.24096 | Clark, et. al. 1991 |
| SO |  | 0.93789 | -0.24096 | Clark, et. al. 1991 |
| PB |  | 0.950 | 0 | Uses AS equation |
| AJ | SM, SP | 0.8967 | -0.4448 | PP from Dolph PSW-368 |
| AJ | BP, SF, LP | 0.9002 | -0.3089 | Uses PP equation |
| RM | SM, SP | 0.8967 | -0.4448 | PP from Dolph PSW-368 |
| RM | BP, SF, LP | 0.9002 | -0.3089 | Uses PP equation |
| OJ | SM, SP | 0.8967 | -0.4448 | PP from Dolph PSW-368 |
| OJ | BP, SF, LP | 0.9002 | -0.3089 | Uses PP equation |
| ER | SM, SP | 0.8967 | -0.4448 | PP from Dolph PSW-368 |
| ER | BP, SF, LP | 0.9002 | -0.3089 | Uses PP equation |
| PM | SM, SP | 0.8967 | -0.4448 | PP from Dolph PSW-368 |
| PM | BP, SF, LP | 0.9002 | -0.3089 | Uses PP equation |
| PD | SM, SP | 0.8967 | -0.4448 | PP from Dolph PSW-368 |
| PD | BP, SF, LP | 0.9002 | -0.3089 | Uses PP equation |
| AZ | SM, SP | 0.8967 | -0.4448 | PP from Dolph PSW-368 |
| AZ | BP, SF, LP | 0.9002 | -0.3089 | Uses PP equation |
| CI | SM, SP | 0.8967 | -0.4448 | PP from Dolph PSW-368 |
| CI | BP, SF, LP | 0.9002 | -0.3089 | Uses PP equation |
| OS | SM, SP | 0.8967 | -0.4448 | PP from Dolph PSW-368 |
| OS | BP, SF, LP | 0.9002 | -0.3089 | Uses PP equation |
| OH | all | 0.892 | -0.086 | Uses CO equation |

\* *DBH* is bounded between 1.0 and 19.0 for species using the PP equation (coefficients 0.9002 and -0.3089).

## 4.3 Crown Ratio Relationships

Crown ratio equations are used for three purposes in FVS: (1) to estimate tree crown ratios missing from the input data for both live and dead trees; (2) to estimate change in crown ratio from cycle to cycle for live trees; and (3) to estimate initial crown ratios for regenerating trees established during a simulation.

### 4.3.1 Crown Ratio Dubbing

In the CR variant, all species except mountain hemlock, western redcedar, and western larch use equations from GENGYM which predict crown length as a function of tree and stand attributes using equation {4.3.1.1}. Coefficients for this equation are shown in table 4.3.1.1. Crown length is then converted to crown ratio by dividing crown length by total tree height as shown in equation {4.3.1.2}.

{4.3.1.1} *CL* = a0 + (a1 \* *HT*) + (a2 \* *DBH*) + (a3 \* *BA*) + (a4 \* *BAU*)

{4.3.1.2} *CR* = *CL* / *HT*

where:

*CL* is tree crown length

*HT* is tree height

*DBH* is tree diameter at breast height

*BA* is total stand basal area

*BAU* is total basal area in trees above the diameter class of the subject tree

*CR* is predicted crown ratio expressed as a proportion at the end of the cycle

a0 – a4 are species-specific coefficients shown in table 4.3.1.1

**Table 4.3.1.1 Default coefficients to predict crown length for equation {4.3.1.1} in the CR variant.**

| **Species Code** | **Model Type** | **a0** | **a1** | **a2** | **a3** | **a4** |
| --- | --- | --- | --- | --- | --- | --- |
| AF | SM, SP | 0.50706 | 0.73070 | 0 | 0 | 0 |
| AF | BP, SF, LP | 0.36135 | 0.57085 | 0 | 0 | 0 |
| CB | SM, SP | 0.50706 | 0.73070 | 0 | 0 | 0 |
| CB | BP, SF, LP | 0.36135 | 0.57085 | 0 | 0 | 0 |
| DF | ALL | 6.47479 | 0.50703 | 0.54482 | -0.03326 | 0 |
| GF | ALL | 6.22959 | 0.67587 | 0 | -0.03098 | 0 |
| WF | ALL | 6.22959 | 0.67587 | 0 | -0.03098 | 0 |
| MH | \* |  |  |  |  |  |
| RC | \* |  |  |  |  |  |
| WL | \* |  |  |  |  |  |
| BC | ALL | -0.59373 | 0.67703 | 0 | 0 | 0 |
| LM | ALL | -0.59373 | 0.67703 | 0 | 0 | 0 |
| LP | ALL | 5.00215 | 0.06334 | 0.88236 | 0 | -0.03821 |
| PI | ALL | -0.59373 | 0.67703 | 0 | 0 | 0 |
| PP | SM | 5.63367 | 0.56252 | 0 | -0.06411 | 0 |
| PP | SP | 4.35671 | 0.32549 | 0.84714 | -0.03802 | 0 |
| PP | BP, SF, LP | 3.49178 | 0.17421 | 0.80767 | -0.03272 | 0 |
| WB | ALL | -0.59373 | 0.67703 | 0 | 0 | 0 |
| SW | ALL | 3.03832 | 0.65587 | 0 | -0.01792 | 0 |
| UJ | ALL | -0.59373 | 0.67703 | 0 | 0 | 0 |
| BS | ALL | 3.61635 | 0.61547 | 0.93639 | -0.02360 | 0 |
| ES | SM, SP | 1.05857 | 0.68442 | 0 | 0 | 0 |
| ES | BP, SF, LP | 3.22244 | 0.44315 | 0.44755 | 0 | 0 |
| WS | ALL | 0.15768 | 0.74697 | 0 | 0 | 0 |
| AS | ALL | 5.17281 | 0.32552 | 0 | -0.01675 | 0 |
| NC | ALL | 5.17281 | 0.32552 | 0 | -0.01675 | 0 |
| PW | ALL | 5.17281 | 0.32552 | 0 | -0.01675 | 0 |
| GO | ALL | -0.59373 | 0.67703 | 0 | 0 | 0 |
| AW | ALL | -0.59373 | 0.67703 | 0 | 0 | 0 |
| EM | ALL | -0.59373 | 0.67703 | 0 | 0 | 0 |
| BK | ALL | -0.59373 | 0.67703 | 0 | 0 | 0 |
| SO | ALL | -0.59373 | 0.67703 | 0 | 0 | 0 |
| PB | ALL | 5.17281 | 0.32552 | 0 | -0.01675 | 0 |
| AJ | ALL | -0.59373 | 0.67703 | 0 | 0 | 0 |
| RM | ALL | -0.59373 | 0.67703 | 0 | 0 | 0 |
| OJ | ALL | -0.59373 | 0.67703 | 0 | 0 | 0 |
| ER | ALL | -0.59373 | 0.67703 | 0 | 0 | 0 |
| PM | ALL | -0.59373 | 0.67703 | 0 | 0 | 0 |
| PD | ALL | -0.59373 | 0.67703 | 0 | 0 | 0 |
| AZ | ALL | -0.59373 | 0.67703 | 0 | 0 | 0 |
| CI | SM | 5.63367 | 0.56252 | 0 | -0.06411 | 0 |
| CI | SP | 4.35671 | 0.32549 | 0.84714 | -0.03802 | 0 |
| CI | BP, SF, LP | 3.49178 | 0.17421 | 0.80767 | -0.03272 | 0 |
| OS | ALL | -0.59373 | 0.67703 | 0 | 0 | 0 |
| OH | ALL | 5.17281 | 0.32552 | 0 | -0.01675 | 0 |

\*Crown ratio equations for MH, RC, and WL are described below

The remaining three species use equations from other variants that predict crown ratio directly. The equation for mountain hemlock is given in equation {4.3.1.3}. This equation is from the North Idaho (NI) variant for Bitterroot National Forest and habitat type set to 710. The equation for western red cedar is shown in equation {4.3.1.4}. This equation is from the NI variant with habitat type set to 550. The equation for western larch is shown in equation {4.3.1.5}. This equation is also from the NI variant for Bitterroot National Forest and habitat type set to 260.

{4.3.1.3} *CR* = 0.3450 – (0.00264 \* *BA*) + (0.00000512 \* *CCF^*2) – (0.25138 \* ln(*HT*)) + (0.05140 \* ln(*PCT*))

{4.3.1.4} *CR* = -1.6053 + (0.17479 \* ln(*BA*)) – (0.00183 \* *CCF*) – (0.00560 \* *DBH*) + (0.11050 \* ln(*PCT*))

{4.3.1.5} *CR* = 0.03441 – (0.00204 \* *BAT*) + (0.30066 \* ln(*DBH*)) – (0.59302 \* ln(*HT*))

where:

*CR* is predicted crown ratio expressed as a proportion at the end of the cycle

*BA* is total stand basal area

*CCF* is stand crown competition factor

*HT* is tree height at the beginning of the cycle

*PCT* is the subject tree’s percentile in the basal area distribution of the stand

*DBH* is tree diameter at breast height

*BAT* is total stand basal area (subject to restrictions)

*BAT* is subject to the following restrictions:

Southwestern Mixed Conifers model type:

*BAT* <u>></u> 1.0

If *BAT* is less than 65, then *BAL* is set to 0.

Southwestern Ponderosa Pine model type:

*BAT* <u>></u> 21

Black Hills Ponderosa Pine and Spruce-Fir model types:

*BAT* <u>></u> 5

Lodgepole pine model type:

*BAT* <u>></u> 14

### 4.3.2 Crown Ratio Change

Crown ratio change is estimated after growth, mortality and regeneration are estimated during a projection cycle. Crown ratio change is the difference between the crown ratio at the beginning of the cycle and the predicted crown ratio at the end of the cycle. Crown ratio predicted at the end of the projection cycle is estimated for live tree records using the equations outlined above. Once crown ratio is predicted, it is bounded to a change of no more than 1% per year, and to no more than the potential change in crown ratio if all the height growth contributed to the crown change during the cycle.

### 4.3.3 Crown Ratio for Newly Established Trees

Crown ratios for newly established trees during regeneration are estimated using equation {4.3.3.1}. A random component is added in equation {4.3.3.1} to ensure that not all newly established trees are assigned exactly the same crown ratio.

{4.3.3.1} *CR* = 0.89722 – 0.0000461 \* *PCCF* + *RAN*

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.2 <u><</u> *CR* <u><</u> 0.9)

*PCCF* is crown competition factor on the inventory point where the tree is established

*RAN* is a small random component

## 4.4 Crown Width Relationships

The CR variant calculates the maximum crown width for each individual tree based on individual tree and stand attributes. Crown width for each tree is reported in the tree list output table and used for percent canopy cover (*PCC*) calculations in the model. Crown width is calculated using equations {4.4.1} – {4.4.5}, and coefficients for these equations are shown in table 4.4.1. The minimum diameter and bounds for certain data values are given in table 4.4.2. Equation numbers in table 4.4.1 are given with the first three digits representing the FIA species code and the last two digits representing the equation source.

{4.4.1} Bechtold (2004); Equation 01

*DBH* <u>></u> *MinD: CW* = a1 + (a2 \* *DBH*) + (a3 \* *DBH*^2)

*DBH* < *MinD: CW* = [a1 + (a2 \* *MinD*) \* (a3 \* *MinD*^2)] \* (*DBH* / *MinD*)

{4.4.2} Bechtold (2004); Equation 02

*DBH* <u>></u> *MinD: CW* = a1 + (a2 \* *DBH*) + (a3 \* *DBH*^2) + (a4 \* *CR*) + (a5 \* *BA*) + (a6 \* *HI*)

*DBH* < *MinD: CW* = [a1 + (a2 \* *MinD*) + (a3 \* *MinD*^2) + (a4 \* *CR*) + (a5 \* *BA*) + (a6 \* *HI*)] \* (*DBH* / *MinD*)

{4.4.3} Crookston (2003); Equation 03 (used only for Mountain Hemlock)

*HT* < 5.0: *CW* = [0.8 \* *HT* \* MAX(0.5, *CR* \* 0.01)] \* [1 - (*HT* - 5) \* 0.1] \* a1 \* *DBH*^a2 \* *HT*^a3 \* *CL*^a4 \* (*HT*-5) \* 0.1

5.0 <u><</u> *HT* < 15.0: *CW* = 0.8 \* *HT* \* MAX(0.5, *CR* \* 0.01)

*HT* <u>></u> 15.0: *CW* = a1 \* (*DBH*^a2) \* (*HT*^a3) \* (*CL*^a4)

{4.4.4} Crookston (2003); Equation 03

*DBH* <u>></u> *MinD: CW* = [a1 \* exp[a2 + (a3 \* ln(*CL*)) + (a4 \* ln(*DBH*)) + (a5 \* ln(*HT*)) + (a6 \* ln(*BA*))]]

*DBH* < *MinD: CW* = [a1 \* exp[a2 + (a3 \* ln(*CL*)) + (a4 \* ln(*MinD*)) + (a5 \* ln(*HT*)) + (a6 \* ln(*BA*))]] \* (*DBH* / *MinD*)

{4.4.5} Crookston (2005); Equation 05

*DBH* <u>></u> *MinD: CW* = (a1 \* *BF*) \* *DBH*^a2 \* *HT*^a3 \* *CL*^a4 \* (*BA* + 1.0)^a5 \* (exp(*EL*))^a6

*DBH* < *MinD: CW* = [(a1 \* *BF*) \* *MinD*^a2 \* *HT*^a3 \* *CL^*a4 \* (*BA* + 1.0)^a5 \* (exp(*EL*))^a6] \* (*DBH* / *MinD*)

where:

*BF* is a species-specific coefficient based on forest code (*BF* = 1.0 in the CR variant)

*CW* is tree maximum crown width

*CL* is tree crown length

*DBH* is tree diameter at breast height

*HT* is tree height

*BA* is total stand basal area

*EL* is stand elevation in hundreds of feet

*MinD* is the minimum diameter

*HI* is the Hopkins Index

*HI* = (ELEVATION - 5449) / 100) \* 1.0 + (LATITUDE - 42.16) \* 4.0 + (-116.39 -LONGITUDE) \* 1.25

a1 – a6 are species-specific coefficients shown in table 4.4.1

**Table 4.4.1 Default coefficients for crown width equations {4.4.1} – {4.4.5} in the CR variant.**

| **Species Code** | **Equation Number\*** | **a1** | **a2** | **a3** | **a4** | **a5** | **a6** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| AF | 01905 | 5.8827 | 0.51479 | -0.21501 | 0.17916 | 0.03277 | -0.00828 |
| CB | 01801 | 6.073 | 0.3756 | 0 | 0 | 0 | 0 |
| DF | 20205 | 6.0227 | 0.54361 | -0.20669 | 0.20395 | -0.00644 | -0.00378 |
| GF | 01703 | 1.0303 | 1.14079 | 0.20904 | 0.38787 | 0 | 0 |
| WF | 01505 | 5.0312 | 0.53680 | -0.18957 | 0.16199 | 0.04385 | -0.00651 |
| MH | 26403 | 6.90396 | 0.55645 | -0.28509 | 0.20430 | 0 | 0 |
| RC | 24205 | 6.2382 | 0.29517 | -0.10673 | 0.23219 | 0.05341 | -0.00787 |
| WL | 07303 | 1.02478 | 0.99889 | 0.19422 | 0.59423 | -0.09078 | -0.02341 |
| BC | 10201 | 7.4251 | 0.8991 | 0 | 0 | 0 | 0 |
| LM | 11301 | 4.0181 | 0.8528 | 0 | 0 | 0 | 0 |
| LP | 10805 | 6.6941 | 0.81980 | -0.36992 | 0.17722 | -0.01202 | -0.00882 |
| PI | 10602 | -5.4647 | 1.9660 | 0 | -0.0395 | 0.0427 | -0.0259 |
| PP | 12205 | 4.7762 | 0.74126 | -0.28734 | 0.17137 | -0.00602 | -0.00209 |
| WB | 10105 | 2.2354 | 0.66680 | -0.11658 | 0.16927 | 0 | 0 |
| SW | 11905 | 5.3822 | 0.57896 | -0.19579 | 0.14875 | 0 | -0.00685 |
| UJ | 06602 | -4.1599 | 1.3528 | 0 | -0.0233 | 0.0633 | -0.0423 |
| BS | 09305 | 6.7575 | 0.55048 | -0.25204 | 0.19002 | 0 | -0.00313 |
| ES | 09305 | 6.7575 | 0.55048 | -0.25204 | 0.19002 | 0 | -0.00313 |
| WS | 09305 | 6.7575 | 0.55048 | -0.25204 | 0.19002 | 0 | -0.00313 |
| AS | 74605 | 4.7961 | 0.64167 | -0.18695 | 0.18581 | 0 | 0 |
| NC | 74902 | 4.1687 | 1.5355 | 0 | 0 | 0 | 0.1275 |
| PW | 74902 | 4.1687 | 1.5355 | 0 | 0 | 0 | 0.1275 |
| GO | 81402 | 0.3309 | 0.8918 | 0 | 0 | 0.0510 | 0 |
| AW | 81402 | 0.3309 | 0.8918 | 0 | 0 | 0.0510 | 0 |
| EM | 81402 | 0.3309 | 0.8918 | 0 | 0 | 0.0510 | 0 |
| BK | 81402 | 0.3309 | 0.8918 | 0 | 0 | 0.0510 | 0 |
| SO | 81402 | 0.3309 | 0.8918 | 0 | 0 | 0.0510 | 0 |
| PB | 74605 | 4.7961 | 0.64167 | -0.18695 | 0.18581 | 0 | 0 |
| AJ | 06602 | -4.1599 | 1.3528 | 0 | -0.0233 | 0.0633 | -0.0423 |
| RM | 06602 | -4.1599 | 1.3528 | 0 | -0.0233 | 0.0633 | -0.0423 |
| OJ | 06602 | -4.1599 | 1.3528 | 0 | -0.0233 | 0.0633 | -0.0423 |
| ER | 06602 | -4.1599 | 1.3528 | 0 | -0.0233 | 0.0633 | -0.0423 |
| PM | 10602 | -5.4647 | 1.9660 | 0 | -0.0395 | 0.0427 | -0.0259 |
| PD | 10602 | -5.4647 | 1.9660 | 0 | -0.0395 | 0.0427 | -0.0259 |
| AZ | 10602 | -5.4647 | 1.9660 | 0 | -0.0395 | 0.0427 | -0.0259 |
| CI | 12205 | 4.7762 | 0.74126 | -0.28734 | 0.17137 | -0.00602 | -0.00209 |
| OS | 12205 | 4.7762 | 0.74126 | -0.28734 | 0.17137 | -0.00602 | -0.00209 |
| OH | 74902 | 4.1687 | 1.5355 | 0 | 0 | 0 | 0.1275 |

\*Equation number is a combination of the species FIA code (###) and source (##).

**Table 4.4.2 Default *MinD* values and data bounds for equations {4.4.1} – {4.4.5} in the CR variant.**

| **Species Code** | **Equation Number\*** | ***MinD*** | ***EL min*** | ***EL* max** | ***HI* min** | ***HI* max** | ***CW* max** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| AF | 01905 | 1.0 | 10 | 85 | n/a | n/a | 30 |
| CB | 01801 | 5.0 | n/a | n/a | n/a | n/a | 15 |
| DF | 20205 | 1.0 | 1 | 75 | n/a | n/a | 80 |
| GF | 01703 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| WF | 01505 | 1.0 | 2 | 75 | n/a | n/a | 35 |
| MH | 26403 | n/a | n/a | n/a | n/a | n/a | 45 |
| RC | 24205 | 1.0 | 1 | 72 | n/a | n/a | 45 |
| WL | 07303 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| BC | 10201 | 5.0 | n/a | n/a | n/a | n/a | 25 |
| LM | 11301 | 5.0 | n/a | n/a | n/a | n/a | 25 |
| LP | 10805 | 1.0 | 1 | 79 | n/a | n/a | 40 |
| PI | 10602 | 5.0 | n/a | n/a | -40 | 11 | 25 |
| PP | 12205 | 1.0 | 13 | 75 | n/a | n/a | 50 |
| WB | 10105 | 1.0 | n/a | n/a | n/a | n/a | 40 |
| SW | 11905 | 1.0 | 10 | 75 | n/a | n/a | 35 |
| UJ | 06602 | 5.0 | n/a | n/a | -37 | 19 | 29 |
| BS | 09305 | 1.0 | 1 | 85 | n/a | n/a | 40 |
| ES | 09305 | 1.0 | 1 | 85 | n/a | n/a | 40 |
| WS | 09305 | 1.0 | 1 | 85 | n/a | n/a | 40 |
| AS | 74605 | 1.0 | n/a | n/a | n/a | n/a | 45 |
| NC | 74902 | 5.0 | n/a | n/a | -26 | -2 | 35 |
| PW | 74902 | 5.0 | n/a | n/a | -26 | -2 | 35 |
| GO | 81402 | 5.0 | n/a | n/a | n/a | n/a | 19 |
| AW | 81402 | 5.0 | n/a | n/a | n/a | n/a | 19 |
| EM | 81402 | 5.0 | n/a | n/a | n/a | n/a | 19 |
| BK | 81402 | 5.0 | n/a | n/a | n/a | n/a | 19 |
| SO | 81402 | 5.0 | n/a | n/a | n/a | n/a | 19 |
| PB | 74605 | 1.0 | n/a | n/a | n/a | n/a | 45 |
| AJ | 06602 | 5.0 | n/a | n/a | -37 | 19 | 29 |
| RM | 06602 | 5.0 | n/a | n/a | -37 | 19 | 29 |
| OJ | 06602 | 5.0 | n/a | n/a | -37 | 19 | 29 |
| ER | 06602 | 5.0 | n/a | n/a | -37 | 19 | 29 |
| PM | 10602 | 5.0 | n/a | n/a | -40 | 11 | 25 |
| PD | 10602 | 5.0 | n/a | n/a | -40 | 11 | 25 |
| AZ | 10602 | 5.0 | n/a | n/a | -40 | 11 | 25 |
| CI | 12205 | 1.0 | 13 | 75 | n/a | n/a | 50 |
| OS | 12205 | 1.0 | 13 | 75 | n/a | n/a | 50 |
| OH | 74902 | 5.0 | n/a | n/a | -26 | -2 | 35 |

## 4.5 Crown Competition Factor

The CR variant uses crown competition factor (*CCF*) as a predictor variable in some growth relationships. Crown competition factor (Krajicek and others 1961) is a relative measurement of stand density that is based on tree diameters. Individual tree *CCFt* values estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open-grown. Stand *CCF* is the summation of individual tree (*CCFt*)values. A stand *CCF* value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand. Crown competition factor for an individual tree is calculated using equation {4.5.1}. For Douglas-fir and ponderosa pine greater than 1.0 inch DBH the coefficients were derived from Paine and Hann (1982). Chihuahuan pine uses the ponderosa pine coefficients. All others use the NI variant coefficients (Wykoff, et.al 1982). In the CR variant, each species uses a different “equation index” to determine the coefficients for the crown competition factor equations depending on which model type is being used. All coefficients by equation index are shown in table 4.5.1, and the corresponding species and model types are shown in table 4.5.2.

{4.5.1} CCFt equations

*DBH* <u>></u> 10.0”: *CCFt* = R1 + (R2 \* *DBH*) + (R3 \* *DBH^*2)

0.1” < *DBH* < 10.0”: *CCFt*= R4 \* *DBH*^R5

*DBH* <u><</u> 0.1”: *CCFt* = 0.001

where:

*CCFt* is crown competition factor for an individual tree

*DBH* is tree diameter at breast height

R1 – R5 are species-specific coefficients shown in table 4.5.1

**Table 4.5.1 Default coefficients (R1 – R5) for Crown Competition Factor equations {4.5.1}, {4.5.2}, and {4.5.3} in the CR variant.**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Equation Index** | **R1** | **R2** | **R3** | **R4** | **R5** |
| 1 | 0.01925 | 0.01676 | 0.00365 | 0.009187 | 1.7600 |
| 2 | 0.11 | 0.0333 | 0.00259 | 0.017299 | 1.5571 |
| 3 | 0.04 | 0.0270 | 0.00405 | 0.015248 | 1.7333 |
| 4 | 0.03 | 0.0215 | 0.00363 | 0.011109 | 1.7250 |
| 5 | 0.03 | 0.0238 | 0.00490 | 0.008915 | 1.7800 |
| 6 | 0.03 | 0.0173 | 0.00259 | 0.007875 | 1.7360 |
| 7 | 0.03 | 0.0216 | 0.00405 | 0.011402 | 1.7560 |
| 8 | 0.03 | 0.0180 | 0.00281 | 0.007813 | 1.7680 |

**Table 4.5.2 Corresponding equation index values by species and model type in the CR variant.**

| **Species Code** | **Equation Index by model type** | | | | |
| --- | --- | --- | --- | --- | --- |
| **SM** | **SP** | **BP** | **SF** | **LP** |
| AF | 7 | 3 | 1 | 7 | 7 |
| CB | 7 | 3 | 1 | 7 | 7 |
| DF | 2 | 2 | 2 | 2 | 2 |
| GF | 7 | 3 | 1 | 7 | 7 |
| WF | 3 | 3 | 1 | 7 | 7 |
| MH | 1 | 1 | 1 | 1 | 1 |
| RC | 1 | 1 | 1 | 1 | 1 |
| WL | 1 | 1 | 1 | 1 | 1 |
| BC | 1 | 1 | 1 | 1 | 1 |
| LM | 1 | 1 | 1 | 1 | 1 |
| LP | 1 | 1 | 1 | 1 | 1 |
| PI | 1 | 7 | 1 | 1 | 1 |
| PP | 8 | 8 | 8 | 1 | 8 |
| WB | 1 | 1 | 1 | 1 | 1 |
| SW | 1 | 1 | 1 | 1 | 1 |
| UJ | 1 | 1 | 1 | 1 | 1 |
| BS | 1 | 1 | 6 | 6 | 6 |
| ES | 6 | 1 | 6 | 6 | 6 |
| WS | 6 | 1 | 6 | 6 | 6 |
| AS | 5 | 5 | 5 | 5 | 5 |
| NC | 4 | 4 | 1 | 4 | 4 |
| PW | 4 | 4 | 1 | 4 | 4 |
| GO | 4 | 6 | 4 | 4 | 4 |
| AW | 4 | 6 | 4 | 4 | 4 |
| EM | 4 | 6 | 4 | 4 | 4 |
| BK | 4 | 6 | 4 | 4 | 4 |
| SO | 4 | 6 | 4 | 4 | 4 |
| PB | 5 | 5 | 5 | 5 | 5 |
| AJ | 1 | 1 | 1 | 1 | 1 |
| RM | 1 | 1 | 1 | 1 | 1 |
| OJ | 1 | 1 | 1 | 1 | 1 |
| ER | 1 | 1 | 1 | 1 | 1 |
| PM | 1 | 7 | 1 | 1 | 1 |
| PD | 1 | 7 | 1 | 1 | 1 |
| AZ | 1 | 7 | 1 | 1 | 1 |
| CI | 8 | 8 | 8 | 1 | 8 |
| OS | 1 | 1 | 1 | 1 | 1 |
| OH | 4 | 4 | 4 | 4 | 4 |

## 4.6 Small Tree Growth Relationships

Trees are considered “small trees” for FVS modeling purposes when they are smaller than some threshold diameter. The threshold diameter is set to 3.0” for grand fir, mountain hemlock, western redcedar, western larch, and whitebark pine; 2.0” for limber pine; and1.0” for subalpine fir, corkbark fir, Douglas-fir, white fir, lodgepole pine, ponderosa pine, Southwestern white pine, blue spruce, Engelmann spruce, white spruce, quaking aspen, narrowleaf cottonwood, plains cottonwood, paper birch, Chihuahuan pine, other softwood and other hardwood. Bristlecone pine, twoneedle pinyon, Utah juniper, Gambel oak, Arizona white oak, Emory oak, bur oak, silverleaf oak, alligator juniper, Rocky Mountain juniper, oneseed juniper, Eastern redcedar, singleleaf pinyon, border pinyon, and Arizona twoneedle pinyon only use the small-tree relationships to predict height and diameter growth for trees of all sizes.

The small tree model is height-growth driven, meaning height growth is estimated first and diameter growth is estimated from height growth. These relationships are discussed in the following sections.

### 4.6.1 Small Tree Height Growth

The small-tree height increment model predicts 10-year height growth (*HTG*) for small trees based on site index in the CR variant. Data was not available to fit small tree height growth models for species other than aspen. Paper birch uses the aspen equations. As a result, for all species except aspen and paper birch, the CR variant uses a blend of theoretical models and small tree height growth modifier equations from the Utah (UT) variant. Potential height growth is estimated as a function of site index and then is modified to account for density effects and tree vigor. Potential height growth is estimated using equation {4.6.1.1}.

{4.6.1.1} *POTHTG* = *SI* / [*c* \* (15.0 – (4.0 \* *RELSI*))]

where:

*POTHTG* is potential height growth

*RELSI* is the relative site index of the site species

*SI* is species site index

*c* is a species-specific constant shown, set to 1.1 for western redcedar and western larch and set to 1.0 for all other species

Potential height growth is then adjusted based on stand density (*PCTRED*) and crown ratio (*VIGOR*) as shown in equations {4.6.1.2} and {4.6.1.3} respectively, to determine an estimated height growth as shown in equation {4.6.1.5}. Bristlecone pine, twoneedle pinyon, Utah juniper, Gambel oak, Arizona white oak, Emory oak, bur oak, silverleaf oak, alligator juniper, Rocky Mountain juniper, oneseed juniper, eastern redcedar, singleleaf pinyon, border pinyon, and Arizona twoneedle pinyon use equation {4.6.1.4} to estimate *VIGOR*.

For all species, a small random error is added to the height growth estimate. The estimated height growth (*HTG*) is then adjusted to account for cycle length, user defined small-tree height growth adjustments, and adjustments due to small tree height model calibration from the input data.

Height growth for small quaking aspen and paper birch is obtained from a height-age curve from Shepperd (1995). Because Shepperd’s original curve seemed to overestimate height growth, the CR variant reduces the estimated height growth by 25 percent (shown in equation {4.6.1.6}). A height is estimated from the tree’s current age, and then its current age plus 10 years. Height growth is the difference between these two height estimates adjusted to account for cycle length and any user defined small-tree height growth adjustments for aspen, and converted from centimeters to feet. An estimate of the tree’s current age is obtained at the start of a projection using the tree’s height and solving equation {4.6.1.6} for age.

{4.6.1.2} *PCTRED* = 1.1144 – 0.0115\**Z* + 0.4301E-04 \* *Z*^2 – 0.7222E-07 \* *Z*^3 + 0.5607E-10 \* *Z*^4 – 0.1641E-13 \* *Z*^5

*Z* = *HTAvg* \* (*CCF* / 100)

{4.6.1.3} *VIGOR* = (150 \* *CR*^3 \* exp(-6 \* *CR*)) + 0.3

{4.6.1.4} *VIGOR* = 1 – [(1 – (150 \* *CR*^3 \* exp(-6 \* *CR*)) + 0.3) / 3]

{4.6.1.5} Used for all species other than quaking aspen and paper birch

*HTG* = *POTHTG* \* *PCTRED* \* *VIGOR*

{4.6.1.6} Used for quaking aspen and paper birch ; Source: Sheppherd (1995)

*HTG* = (26.9825 \* *A*^1.1752) \* 0.75

where:

*PCTRED* is reduction in height growth due to stand density (bounded to 0.01 <u><</u> *PCTRED* <u><</u> 1)

*HTAvg* is average height of the 40 largest diameter trees in the stand

*CCF* is stand crown competition factor

*VIGOR* is reduction in height growth due to tree vigor (bounded to *VIGOR* <u><</u> 1.0)

*CR* is a tree’s live crown ratio (compacted) expressed as a proportion

*HTG* is estimated height growth for the cycle

*POTHTG* is potential height growth

*A* is tree age

Height growth estimates from the small-tree model are weighted with the height growth estimates from the large tree model over a range of diameters (*Xmin* and *Xmax*) in order to smooth the transition between the two models. For example, the closer a tree’s *DBH* value is to the minimum diameter (*Xmin*), the more the growth estimate will be weighted towards the small-tree growth model. The closer a tree’s *DBH* value is to the maximum diameter (*Xmax*), the more the growth estimate will be weighted towards the large-tree growth model. If a tree’s *DBH* value falls outside of the range given by *Xmin* and *Xmax*, then the model will use only the small-tree or large-tree growth model in the growth estimate. The weight applied to the growth estimate is calculated using equation {4.6.1.7}, and applied as shown in equation {4.6.1.8}. The range of diameters for each species is shown in table 4.6.1.2.

{4.6.1.7}

*DBH* <u><</u> *Xmin : XWT* = 0

*Xmin* < *DBH* < *Xmax : XWT* = (*DBH* - *Xmin*) / (*Xmax* - *Xmin*)

*DBH* <u>></u> *Xmax : XWT* = 1

{4.6.1.8} Estimated growth = [(1 - *XWT*) \* *STGE*] + [*XWT* \* *LTGE*]

where:

*XWT* is the weight applied to the growth estimates

*DBH* is tree diameter at breast height

*Xmax* is the maximum *DBH* is the diameter range

*Xmin* is the minimum *DBH* in the diameter range

*STGE* is the growth estimate obtained using the small-tree growth model

*LTGE* is the growth estimate obtained using the large-tree growth model

**Table 4.6.1.2 Default diameter bounds by species in the CR variant.**

| **Species Code** | ***Xmin*** | ***Xmax*** |
| --- | --- | --- |
| AF | 0.5 | 2.0 |
| CB | 0.5 | 2.0 |
| DF | 0.5 | 2.0 |
| GF | 2.0 | 5.0 |
| WF | 0.5 | 2.0 |
| MH | 2.0 | 4.0 |
| RC | 2.0 | 5.0 |
| WL | 2.0 | 5.0 |
| BC | 99.0 | 199.0 |
| LM | 0.5 | 4.0 |
| LP | 0.5 | 2.0 |
| PI | 99.0 | 199.0 |
| PP | 0.5 | 2.0 |
| WB | 2.0 | 5.0 |
| SW | 0.5 | 2.0 |
| UJ | 99.0 | 199.0 |
| BS | 0.5 | 2.0 |
| ES | 0.5 | 2.0 |
| WS | 0.5 | 2.0 |
| AS | 0.5 | 2.0 |
| NC | 0.5 | 2.0 |
| PW | 0.5 | 2.0 |
| GO | 99.0 | 199.0 |
| AW | 99.0 | 199.0 |
| EM | 99.0 | 199.0 |
| BK | 99.0 | 199.0 |
| SO | 99.0 | 199.0 |
| PB | 0.5 | 2.0 |
| AJ | 99.0 | 199.0 |
| RM | 99.0 | 199.0 |
| OJ | 99.0 | 199.0 |
| ER | 99.0 | 199.0 |
| PM | 99.0 | 199.0 |
| PD | 99.0 | 199.0 |
| AZ | 99.0 | 199.0 |
| CI | 0.5 | 2.0 |
| OS | 0.5 | 2.0 |
| OH | 0.5 | 2.0 |

\*There is only one growth relationship that applies to trees of all sizes for these species. These relationships are contained in the “small” tree portion of FVS.

### ****4.6.2 Small Tree Diameter Growth****

As stated previously, for trees being projected with the small tree equations, height growth is predicted first, and then diameter growth. So both height at the beginning of the cycle and height at the end of the cycle are known when predicting diameter growth. Small tree diameter growth for trees over 4.5 feet tall is calculated as the difference of predicted diameter at the start of the projection period and the predicted diameter at the end of the projection period, adjusted for bark ratio. These two predicted diameters are estimated using the species-specific height-diameter relationships discussed in section 4.1. for all species except ponderosa pine, bristlecone pine, twoneedle pinyon, Utah juniper, Gambel oak, Arizona white oak, Emory oak, bur oak, silverleaf oak, alligator juniper, Rocky Mountain juniper, oneseed juniper, Eastern redcedar, singleleaf pinyon, border pinyon, Arizona twoneedle pinyon, and Chihuahuan pine. By definition, diameter growth is zero for trees less than 4.5 feet tall.

Ponderosa pine and Chihuahuan pine use equation {4.6.2.1} in the same manner as just described for the other species.

{4.6.2.1} *DBH* = (*HT* – 4.17085) / 3.03659

Bristlecone pine, twoneedle pinyon, Utah juniper, Gambel oak, Arizona white oak, Emory oak, bur oak, silverleaf oak, alligator juniper, Rocky Mountain juniper, oneseed juniper, Eastern redcedar, singleleaf pinyon, border pinyon, and Arizona twoneedle pinyon use equation {4.6.2.2} as previously described.

{4.6.2.2} *DBH* = 10 \* (*HT* – 4.5) / (*SI* – 4.5)

where:

*DBH* is tree diameter at breast height

*HT* is tree height

*SI* is species site index

## 4.7 Large Tree Growth Relationships

Trees are considered “large trees” for FVS modeling purposes when they are equal to or greater than some threshold diameter. The threshold diameter is set to 3.0” for grand fir, mountain hemlock, western redcedar, western larch, and whitebark pine; 2.0” for limber pine; and1.0” for subalpine fir, corkbark fir, Douglas-fir, white fir, lodgepole pine, ponderosa pine, Southwestern white pine, blue spruce, Engelmann spruce, white spruce, quaking aspen, narrowleaf cottonwood, plains cottonwood, paper birch, Chihuahuan pine, other softwood and other hardwood. Bristlecone pine, twoneedle pinyon, Utah juniper, Gambel oak, Arizona white oak, Emory oak, bur oak, silverleaf oak, alligator juniper, Rocky Mountain juniper, oneseed juniper, Eastern redcedar, singleleaf pinyon, border pinyon, and Arizona twoneedle pinyon only use the small-tree relationships to predict height and diameter growth for trees of all sizes.

The large-tree model is driven by diameter growth meaning diameter growth is estimated first and then height growth is estimated from diameter growth and other variables. These relationships are discussed in the following sections.

Most of the large tree diameter equations are from Edminster’s GENGYM growth and yield model. However, equations from other variants are used for certain species not represented very well in the data used to develop GENGYM, or in cases where the GENGYM equations did not perform satisfactorily. Species not represented well in the data, are generally found at the extreme northern range of the Central Rockies variant. These are a relatively minor component of the area covered by this variant. In GENGYM, a single equation was used to estimate the diameter growth for bristlecone pine, twoneedle pinyon, juniper species, and oak species. This equation did not perform satisfactorily for these species and is not used in this variant. However, this equation is used in both GENGYM and this variant for estimating diameter growth on trees classified as “other softwood”.

### 4.7.1 Large Tree Diameter Growth

The large tree diameter growth model used in most FVS variants is described in section 7.2.1 in Dixon (2002). For most variants, instead of predicting diameter increment directly, the natural log of the periodic change in squared inside-bark diameter (ln(*DDS*)) is predicted (Dixon 2002; Wykoff 1990; Stage 1973; and Cole and Stage 1972). For variants predicting diameter increment directly, diameter increment is converted to the *DDS* scale to keep the FVS system consistent across all variants.

Of the 38 species in this variant, 17 use the GENGYM diameter growth equations. Equations from GENGYM predict a tree’s future diameter based on stand and tree variables. The GENGYM equation form is shown in equation {4.7.1.1} and coefficients for this equation are shown in table 4.7.1.1. The species listed in table 4.7.1.1 are the 17 species that use the GENGYM diameter growth equations.

For bristlecone pine, twoneedle pinyon, Utah juniper, Gambel oak, Arizona white oak, Emory oak, bur oak, silverleaf oak, alligator juniper, Rocky Mountain juniper, oneseed juniper, Eastern redcedar, singleleaf pinyon, border pinyon, and Arizona twoneedle pinyon the equations described in the small-tree model section (section 4.6.2) are used for predicting diameter growth in trees of all sizes. Because small tree models are used for these species, diameter increment measurements will never be used to calibrate diameter growth.

{4.7.1.1} *DF* = b1 + (b2 \* *DBH*) + (b3 \* *BA*) + (b4 \* *SI*) + (b5 \* (ln(DBH))^2) + (b6 \* *BAU* / *BAT*) + (b7 \* ln(*BAT*)) + (b8 \* *DBH^*2)

where:

*DF* is tree diameter at breast height at the end of the cycle (bounded DF <u><</u> DBHMAX)

*DBH* is tree diameter at breast height

*DBHMAX* is the maximum tree diameter at breast height by species and model type (table 4.7.1.2)

*BA* is total stand basal area

*SI* is species site index

*BAU* is total basal area in trees above the diameter class of the subject tree

*BAT* is total stand basal area (subject to the following restrictions)

Southwestern Mixed Conifers model type:

If *BAT* is less than 65, then *BAU* is set to 0

*BAT* <u>></u> 1.0

Southwestern Ponderosa Pine model type:

*BAT* <u>></u> 21

Black Hills Ponderosa Pine and Spruce-Fir model types:

*BAT* <u>></u> 5

Lodgepole pine model type:

*BAT* <u>></u> 14

b1 – b8 are species specific coefficients shown in table 4.7.1.1

**Table 4.7.1.1 Default coefficients (b1 – b8) for the GENGYM equation {4.7.1.1} in the CR variant.**

| **Species Code** | **Model Type** | **b1** | **b2** | **b3** | **b4** | **b5** | **b6** | **b7** | **b8** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| AF | SM, SP | 0.50283 | 0.93999 | -0.00168 | 0.00791 | 0.16235 | 0 | 0 | 0 |
| AF | BP, SF, LP | 2.19459 | 0.94659 | 0 | 0.00615 | 0.11326 | -0.20410 | -0.35970 | 0 |
| CB | SM, SP | 0.50283 | 0.93999 | -0.00168 | 0.00791 | 0.16235 | 0 | 0 | 0 |
| CB | BP, SF, LP | 2.19459 | 0.94659 | 0 | 0.00615 | 0.11326 | -0.20410 | -0.35970 | 0 |
| DF | ALL | 0.58234 | 0.94542 | -0.00251 | 0.00705 | 0.15738 | -0.14044 | 0 | 0 |
| WF | ALL | 0.46172 | 1.04089 | -0.00200 | 0.00659 | 0 | -0.09197 | 0 | -0.00114 |
| LP | ALL | 1.32652 | 0.96279 | 0 | 0.00590 | 0.06298 | -0.17138 | -0.21827 | 0 |
| PP | SM\* | 0.26265 | 0.94001 | -0.00164 | 0.00601 | 0.16328 | 0 | 0 | 0 |
| PP | SP | 4.10552 | 0.88872 | 0 | 0.01378 | 0.23834 | -0.52784 | -0.83531 | 0 |
| PP | BP\* | 2.50428 | 0.94573 | 0 | 0.01354 | 0.05940 | -0.46350 | -0.45765 | 0 |
| PP | LP, SF | 2.50428 | 0.94573 | 0 | 0.01354 | 0.05940 | -0.46350 | -0.45765 | 0 |
| SW | ALL | 0.89451 | 0.95435 | -0.00122 | 0.00159 | 0.09987 | -0.20815 | 0 | 0 |
| BS | ALL | 0.50941 | 1.02697 | -0.00358 | 0.01022 | 0 | 0 | 0 | -0.00099 |
| ES | SM, SP | 0.67074 | 1.03068 | -0.00201 | 0.00633 | 0 | 0 | 0 | -0.00109 |
| ES | BP, SF, LP | 2.28652 | 0.94475 | 0 | 0.01295 | 0.10778 | -0.48056 | -0.41632 | 0 |
| WS | ALL | 2.94734 | 0.88423 | 0 | 0.01207 | 0.25363 | 0 | -0.64449 | 0 |
| AS | SM, SP | 0.24506 | 1.01291 | -0.00085 | 0.00631 | 0 | 0 | 0 | 0 |
| AS | BP, SF, LP | 1.55986 | 1.01825 | 0 | 0.00672 | 0 | -0.00073 | -0.29342 | 0 |
| NC | SM, SP | 0.24506 | 1.01291 | -0.00085 | 0.00631 | 0 | 0 | 0 | 0 |
| NC | BP, SF, LP | 1.55986 | 1.01825 | 0 | 0.00672 | 0 | -0.00073 | -0.29342 | 0 |
| PW | SM, SP | 0.24506 | 1.01291 | -0.00085 | 0.00631 | 0 | 0 | 0 | 0 |
| PW | BP, SF, LP | 1.55986 | 1.01825 | 0 | 0.00672 | 0 | -0.00073 | -0.29342 | 0 |
| PB | SM, SP | 0.24506 | 1.01291 | -0.00085 | 0.00631 | 0 | 0 | 0 | 0 |
| PB | BP, SF, LP | 1.55986 | 1.01825 | 0 | 0.00672 | 0 | -0.00073 | -0.29342 | 0 |
| CI | SM\* | 0.26265 | 0.94001 | -0.00164 | 0.00601 | 0.16328 | 0 | 0 | 0 |
| CI | SP | 4.10552 | 0.88872 | 0 | 0.01378 | 0.23834 | -0.52784 | -0.83531 | 0 |
| CI | BP\* | 2.50428 | 0.94573 | 0 | 0.01354 | 0.05940 | -0.46350 | -0.45765 | 0 |
| CI | LP, SF | 2.50428 | 0.94573 | 0 | 0.01354 | 0.05940 | -0.46350 | -0.45765 | 0 |
| OS | ALL | 0.25897 | 1.03129 | -0.00020 | 0.00177 | 0 | 0 | 0 | 0 |
| OH | SM, SP | 0.24506 | 1.01291 | -0.00085 | 0.00631 | 0 | 0 | 0 | 0 |
| OH | BP, SF, LP | 1.55986 | 1.01825 | 0 | 0.00672 | 0 | -0.00073 | -0.29342 | 0 |

\*See discussion below

**Table 4.7.1.2 Maximum tree diameters in inches (DBHMAX) for the GENGYM equation {4.7.1.1} in the CR variant.**

| **Species Code** | **Model Type** | | | | |
| --- | --- | --- | --- | --- | --- |
| **SM** | **SP** | **BP** | **SF** | **LP** |
| AF | 36.0 | 36.0 | 20.0 | 28.0 | 28.0 |
| CB | 36.0 | 36.0 | 20.0 | 28.0 | 28.0 |
| DF | 50.0 | 50.0 | 20.0 | 42.0 | 42.0 |
| WF | 40.0 | 40.0 | 20.0 | 30.0 | 30.0 |
| LP | 20.0 | 20.0 | 24.0 | 36.0 | 36.0 |
| PP | 50.0 | 50.0 | 32.0 | 32.0 | 32.0 |
| SW | 36.0 | 36.0 | 20.0 | 36.0 | 36.0 |
| BS | 40.0 | 40.0 | 24.0 | 36.0 | 36.0 |
| ES | 46.0 | 46.0 | 24.0 | 46.0 | 46.0 |
| WS | 20.0 | 20.0 | 30.0 | 36.0 | 36.0 |
| AS | 30.0 | 30.0 | 24.0 | 30.0 | 30.0 |
| NC | 36.0 | 36.0 | 48.0 | 24.0 | 24.0 |
| PW | 36.0 | 36.0 | 48.0 | 24.0 | 24.0 |
| PB | 30.0 | 30.0 | 24.0 | 30.0 | 30.0 |
| CI | 50.0 | 50.0 | 32.0 | 32.0 | 32.0 |
| OS | 20.0 | 20.0 | 20.0 | 20.0 | 20.0 |
| OH | 20.0 | 20.0 | 20.0 | 20.0 | 20.0 |

For quaking aspen, narrowleaf cottonwood, plains cottonwood, paper birch, and other hardwood, the estimate of DF from equation 4.7.1.1 is multiplied by 1.05 to better represent observed growth rates.

In the Southwestern Mixed Conifer (SM) model type, the estimated future diameter for ponderosa pine and Chihuahuan pine is a blend of the estimate using the equation shown for the SM model type and an estimate from the equation shown for the Southwestern Ponderosa Pine (SP) model type. This relationship is shown in equation {4.7.1.2}.

{4.7.1.2} *DF* = ((1.0 – *FACTOR*) \* *SMDF*) + (*FACTOR* \* *SPDF*)

where:

*DF* is tree diameter at breast height at the end of the cycle (blended)

*SMDF* is estimated future diameter using the SM model type equation

*SPDF* is estimated future diameter using the SP model type equation

*FACTOR* is an adjustment factor that is the maximum of *ADJB* and *ADJR*:

*ADJB* = 0.0 *BA* <u>></u> 100

= 2.5 - 0.025 \* *BA* 60 < *BA* < 100

= 1.0 *BA* <u><</u> 60

where: *BA* is the total stand basal area

*ADJR* = 0.0 *PPratio* <u><</u> 0.3

= -1.5 + (5.0 \* *PPratio*) 0.3 < *PPratio* < 0.5

= 1.0 0.5 <u><</u> *PPratio*

*PPratio* is ponderosa pine basal area divided by the stand basal area

where: *BA* is stand basal area

Similarly, in the Black Hills Ponderosa pine (BP) model type the estimated future diameter for ponderosa pine and Chihuahuan pine is a blend if certain conditions are met and a direct estimate otherwise. Those conditions are:

1. Whether the stand is considered uneven-aged. A stand is considered uneven-aged if the range in age between the 5th percentile tree and the 95th percentile tree exceeds 40 years.
2. Whether the tree exists in an overtopped condition. A tree is considered overtopped if at least 30 percent of the stand basal area is in diameter classes larger than this trees’ diameter class (1 inch classes).
3. Whether the estimated future diameter using the BP equation is greater than the estimated future diameter using the SP equation.

If all three of these conditions are met, the estimated future diameter is a blend of the estimate using equation {4.7.1.3} for the Black Hills Ponderosa Pine (BP) model type and an estimate from the equation shown for the Southwestern Ponderosa Pine (SP) model type.

{4.7.1.3}

*BAratio* <u>></u> 0.5: *DF* = *SPDF*

0.3 < *BAratio* < 0.5: *DF* = ((2.5 – 5.0 \* *BAratio*) \* *BHDF*) + ((-1.5 + 5.0 \* *BAratio*) \* *SPDF*)

*BAratio* = (*BAU* / *BA*)

where:

*DF* is tree diameter at breast height at the end of the cycle (blended)

*SPDF* is estimated future diameter using the SP model type equation

*BHDF* is estimated future diameter using the BH model type equation

*BAU* is total basal area in trees above the diameter class of the subject tree

*BA* is total stand basal area

Since the FVS large tree model logic is based on the natural logarithm of change in diameter squared (*DDS*), estimated future diameter is converted to this basis by first calculating diameter growth (inside bark) using equation {4.7.1.4}, adjusting this value to account for a stagnation effect using equation {4.7.1.5}, and then converting the result to a DDS basis using equation {4.7.1.6}. By default, the stagnation multiplier is turned off.

{4.7.1.4} *DIAGR* = (*DF* –*DBH*) \* *BRATIO*

{4.7.1.5} Stagnation effect

for species other than Black Hills ponderosa pine: *DIAGR* = *DIAGR* \* *STAG*

for ponderosa pine and Chihuahuan pine in the Black Hills model type: *DIAGR* = *DIAGR* \* *STAG* \* 0.8

{4.7.1.6} ln(*DDS*) = ln[(*DIAGR* \* {(2.0 \* *DBH* \* *BRATIO*) + *DIAGR*})]

where:

*DIAGR* is diameter growth (inside bark) of the cycle

*DDS* is the squared inside bark diameter

*DBH* is tree diameter at breast height

*DF* is tree diameter at breast height at the end of the cycle (blended)

*BRATIO* is species-specific bark ratio

*STAG* is a stagnation multiplier based on the following equation:

STAG = 3.33333\*(1-RELSDI) for 0.7 < RELSDI <u><</u> 0.85

STAG = 1.0 for RELSDI <u><</u> 0.70

STAG = 0.5 for RELSDI > 0.85

Grand fir, mountain hemlock, western redcedar, western larch, limber pine, and whitebark pine use diameter growth equations from other variants, which predict the value of *DDS* directly. The grand fir equation is from the Central Idaho (CI) variant. Equations for mountain hemlock, western redcedar, and western larch are from the North Idaho (NI) variant for elevation set at 6000 feet and habitat types set to 710 (TSME/XETE), 550 (THPL/OPHO), and 260 (PSME/PHMA) respectively. The limber pine equation is from the Utah (UT) variant. The whitebark pine equation is from the Eastern Montana (EM) variant for elevation set at 8000 feet and habitat type set to 850 (PIAL-ABLA). The equation form for all these species is shown in equation {4.7.1.7} with species-specific coefficients shown in table {4.7.1.3}

{4.7.1.7} ln(*DDS*) = b1 + (b2 \* sin(*ASP*) \* *SL*) + (b3 \* cos(*ASP*) \* *SL*) + (b4 \* *SL*) + (b5 \* *SL*^2) + (b6 \* ln(*DBH*)) + (b7 \* *DBH*^2) + (b8 \* *BAL*) + (b9 \* *CR*) + (b10 \* *CR*^2) + (b11 \* ln(*BA*)) + (b12 \* *PCCF*) + (b13 \* *BAL* / (ln(*DBH* + 1.0))) + (b14 \* *PBAL* / (ln(*DBH* + 1.0))) + (b15 \* ln(*CCF*)) + (b16 \* *CCF*) + (b17 \* *SI*)

where:

*DDS* is the squared inside bark diameter

*ASP* is stand aspect (use (ASP – 0.7854) instead of ASP for limber pine)

*SL* is stand slope

*DBH* is tree diameter at breast height

*BAL* is total basal area in trees larger than the subject tree

*CR* is crown ratio expressed as a proportion

*BA* is total stand basal area

*PCCF* is crown competition factor on the inventory point where the tree is established

*PBAL* is point basal area in trees larger than the subject tree

b1- b17 are species-specific coefficients shown in table 4.7.1.3

**Table 4.7.1.3 Default coefficients (b1- b17) for equation 4.7.1.7 in the CR variant.**

| **Coefficient** | **Species Code** | | | | | |
| --- | --- | --- | --- | --- | --- | --- |
| **GF** | **MH** | **RC** | **WL** | **LM** | **WB** |
| b1 | 0.88728 | 0.19489 | 1.26832 | 1.39215 | 1.911884 | 1.13095 |
| b2 | 0.009335 | 0.13363 | 0.05534 | 0.03430 | -0.01752 | -0.00161 |
| b3 | -0.004469 | 0.17935 | -0.06625 | -0.21337 | -0.609774 | 0.00027 |
| b4 | -0.033374 | 0.07628 | 0.11931 | 0.33523 | -2.05706 | -0.02001 |
| b5 | -0.418343 | 0 | 0 | -0.70216 | 2.113263 | 0 |
| b6 | 1.286963 | 0.89778 | 0.58705 | 0.54140 | 0.213947 | 0.80110 |
| b7 | -0.0004408 | -0.000484 | 0 | -0.000310 | -0.0006538 | 0 |
| b8 | 0 | 0 | 0.0074596 | 0.0043637 | -0.00358634 | 0.00064 |
| b9 | 1.175105 | 1.28403 | 1.29360 | 1.03478 | 1.523464 | 1.02878 |
| b10 | 0.219013 | 0 | 0 | 0.07509 | 0 | -0.45448 |
| b11 | -0.217923 | 0 | 0 | 0 | 0 | 0 |
| b12 | -0.000512 | 0 | 0 | 0 | 0 | 0 |
| b13 | 0 | -0.006611 | -0.0228375 | -0.0203256 | 0 | -0.00328 |
| b14 | -0.000578 | 0 | 0 | 0 | 0 | 0 |
| b15 | 0 | 0 | 0 | 0 | 0 | -0.25717 |
| b16 | 0 | -0.0010744 | -0.0015356 | -0.0005438 | -0.00199592 | 0 |
| b17 | 0 | 0 | 0 | 0 | 0.001766 | 0 |

Once *DDS* is estimated using equation {4.7.1.7}, it must be transformed into a real scale diameter growth using equation {4.7.1.8}, adjusted for the stagnation effect {4.7.1.9}, and then converted back to *DDS* scale using equation {4.7.1.6} for further processing.

{4.7.1.8} *DIAGR* = sqrt(exp(*DDS)* + (*DBH* \* *BRATIO*)^2) – *DBH* \* *BRATIO*

{4.7.1.9} *DIAGR* = *DIAGR* \* *STAG*

where:

*DIAGR* is diameter growth (inside bark) of the cycle

*DBH* is tree diameter at breast height

*BRATIO* is species-specific bark ratio

*STAG* is a stagnation multiplier

### 4.7.2 Large Tree Height Growth

Height growth equations for large trees in the CR variant are different by species. Equations for 18 of the species come from the GENGYM model, equations for 5 species come from other variants, and 15 species use the equations described in the small tree model section.

#### 4.7.2.1 Height Growth estimate for species using GENGYM equations

Large tree height growth for subalpine fir, corkbark fir, Douglas-fir, white fir, lodgepole pine, ponderosa pine, whitebark pine, southwestern white pine, blue spruce, Engelmann spruce, white spruce, quaking aspen, narrowleaf cottonwood, plains cottonwood, paper birch, Chihuahuan pine, other softwood, and other hardwood is estimated using equations from the Central Rockies variant. The equations predict height growth from site index curves for even-aged stands and height growth from a regression equation for uneven-aged stands. These estimates get blended when certain conditions are met, and in some instances a growth reduction due to stand stagnation may be applied. A stand is considered uneven-aged if the range in ages between the 5th percentile and 95th percentile trees in the basal area distribution exceeds 40 years.

Four tree heights are estimated: height at the beginning of the projection cycle and 10-years into the future using the equations for even-aged stands, and height at the beginning of the projection cycle and 10-years into the future using the equations for uneven-aged stands. Two 10-year height growth estimates are obtained. An even-aged height growth estimate is obtained from the difference between the two estimated heights using equations for even-aged stands, and an uneven-aged height growth estimate is obtained from the difference between the two estimated heights using equations for uneven-aged stands.

The final height growth estimate for a tree depends on whether the stand is even-aged or uneven-aged, total stand basal area, the tree’s position in the stand, and whether the stand is considered as stagnated. Equation {4.7.2.1.1} is used when the stand is even-aged, or the total stand basal area is less than 70 square feet, or when the stand is uneven-aged with total stand basal area at least 70 square feet and the tree’s percentile in the basal area distribution is at least 40. Equation {4.7.2.1.2} is used when the stand is uneven-aged with stand basal area at least 70 square feet and the tree’s percentile in the basal area distribution is less than 40. Equation {4.7.2.1.3} is used when the stand is uneven-aged with stand basal area at least 70 square feet and the tree’s percentile in the basal area distribution is at least 10 but no larger than 40. For quaking aspen and paper birch, the height growth estimate is further adjusted for site index using equation {4.7.2.1.4}. For all species, a small random increment is added and the height growth estimate is adjusted for stagnation effects using equation {4.7.2.1.5}.

{4.7.2.1.1} *HTG* = (*HHE2* - *HHE1*) \* *ADJUST*

{4.7.2.1.2} *HTG* = *HHU2* - *HHU1*

{4.7.2.1.3} *HTG* = *XWT* \* ((*HHE2* - *HHE1*) \* *ADJUST*) + (1 - *XWT*) \* (*HHU2* - *HHU1*)

{4.7.2.1.4} *HTG* = [*HTG* \* *ASPFAC*]

*ASPFAC* = 0.6253 + 0.00583 \* SI

{4.7.2.1.5} *HTG* = [*HTG* + (*ZZRAN* \* 0.1)] \* [(*DSTAG* + 1) \* 0.5]

where:

*HTG* is estimated 10-year height growth

*HHE1* is estimated tree height at the beginning of the cycle using the even-aged equations

*HHE2* is estimated tree height 10-years in the future using the even-aged equations

*HHU1* is estimated tree height at the beginning of the cycle using the uneven-aged equations

*HHU2* is estimated tree height 10-years in the future using the uneven-aged equations

*ADJUST* is a multiplier so open-grown trees will reach the site height at the index age (table 4.7.2.1.1)

*ZZRAN* is a random number in the range -2 <u><</u> *ZZRAN* <u><</u> 2 (i.e. the limits for *ZZRAN* are the number of standard deviations specified using the DGSTDEV keyword, default 2)

*DSTAG* is an adjustment for stagnated stand conditions (turned on using the SDIMAX keyword, default 1.0)

*XWT* is a weight used to blend even-aged and uneven-aged height growth estimates

(*XWT* = ((*PCT* - 10) \* (10 / 3)) / 100

*PCT* is the tree’s percentile in the basal area distribution

**Table 4.7.2.1.1 Height growth adjustment factors for equations {4.7.2.1.1}, {4.7.2.1.3} and {4.7.2.2.2} in the CR variant.**

| **Species Code** | ***MOD* values by model type** | | | | |
| --- | --- | --- | --- | --- | --- |
| **SM** | **SP** | **BP** | **SF** | **LP** |
| AF | 1.25 | 1.25 | 1.13 | 1.15 | 1.25 |
| CB | 1.25 | 1.25 | 1.13 | 1.15 | 1.25 |
| DF | 1.18 | 1.18 | 1.10 | 1.18 | 1.25 |
| GF | 1.00 | 1.00 | 1.10 | 1.00 | 1.10 |
| WF | 1.20 | 1.20 | 1.13 | 1.15 | 1.25 |
| MH | 1.00 | 1.00 | 1.10 | 1.00 | 1.10 |
| RC | 1.00 | 1.00 | 1.10 | 1.00 | 1.10 |
| WL | 1.00 | 1.00 | 1.10 | 1.00 | 1.10 |
| BC | - | - | - | - | - |
| LM | 1.00 | 1.00 | 1.07 | 1.00 | 1.07 |
| LP | 1.20 | 1.15 | 1.13 | 1.10 | 1.30 |
| PI | - | - | - | - | - |
| PP | 1.20 | 1.20 | 1.10 | 1.15 | 1.25 |
| WB | 1.20 | 1.15 | 1.10 | 1.05 | 1.20 |
| SW | 1.20 | 1.20 | 1.10 | 1.15 | 1.20 |
| UJ | - | - | - | - | - |
| BS | 1.20 | 1.20 | 1.15 | 1.10 | 1.20 |
| ES | 1.20 | 1.20 | 1.15 | 1.10 | 1.20 |
| WS | 1.20 | 1.20 | 1.15 | 1.10 | 1.20 |
| AS | 1.00 | 1.00 | 1.00 | 1.00 | 1.00 |
| NC | 1.15 | 1.15 | 1.05 | 1.05 | 1.18 |
| PW | 1.15 | 1.15 | 1.05 | 1.05 | 1.18 |
| GO | - | - | - | - | - |
| AW | - | - | - | - | - |
| EM | - | - | - | - | - |
| BK | - | - | - | - | - |
| SO | - | - | - | - | - |
| PB | 1.00 | 1.00 | 1.00 | 1.00 | 1.00 |
| AJ | - | - | - | - | - |
| RM | - | - | - | - | - |
| OJ | - | - | - | - | - |
| ER | - | - | - | - | - |
| PM | - | - | - | - | - |
| PD | - | - | - | - | - |
| AZ | - | - | - | - | - |
| CI | 1.20 | 1.20 | 1.10 | 1.15 | 1.25 |
| OS | 1.15 | 1.15 | 1.05 | 1.05 | 1.15 |
| OH | 1.15 | 1.15 | 1.15 | 1.05 | 1.20 |

##### 4.7.2.1.1 Southwestern Mixed Conifers Model Type

For the Southwestern Mixed Conifers Model Type, the even-aged height growth estimation sequence is a four-step process: (1) an age is determined; (2) heights from the guide curve and the lower 95 percent confidence interval are estimated; (3) these estimates are combined; (4) a reduction is made for a tree’s position in the canopy. A detailed description of formula derivation is contained in Edminster, Mathiasen, and Olsen (1991).

The first step is determining an age (*AGETEM*) to use in the calculation. *AGETEM* is set to the tree’s estimated age, or 210 years, whichever is less. If the site index is less than 80 and the value of (110 – Site Index) is greater than the value of *AGETEM* as just determined, then *AGETEM* is set to the value (110 – Site Index). The second step is determining total tree height on the appropriate guide curve (*HG*) using equation {4.7.2.1.1.1}. The estimated height of the lower bound of the 95 percent confidence interval (*HL*) is determined using equation {4.7.2.1.1.2}. The third step combines the estimates into a final height estimate using equation {4.7.2.1.1.3}.

{4.7.2.1.1.1} *HG* = 4.5 + 109.559129 \* (1.0 – 0.975884 \* exp(-0.014377 \* *AGETEM*))^1.289266

{4.7.2.1.1.2} *HL* = 72.512644 \* (1.0 – 0.876961 \* exp(-0.020066 \* *AGETEM*))^2.016632

{4.7.2.1.1.3} *HTE* = -1.0 \* [(*HG* - *HL*) \* ((82.488 – *SI*) / 26.279)] + *HG*

where:

*HG* is total tree height on the appropriate guide curve

*HL* is the estimated height on the lower bound of the 95%confidence interval

*AGETEM* is the tree’s estimated age, bounded at *AGETEM* <u><</u> 210

*HTE* is the even-aged height estimate

*SI* is species site index

If site index is 80, or greater, and the tree’s age is less than *AGETEM* as determined above, the height estimate is further modified using equation {4.7.2.1.1.4}. If site index is greater than or equal to 80 and *AGETEM* is less than 20, then the height estimate using equations {4.7.2.1.1.3} and {4.7.2.1.1.4}, is replaced by a height estimate using equation {4.7.2.1.1.5}. The fourth and final step is multiplying the estimated height by an adjustment factor using equation {4.7.2.1.1.6} to account for a tree’s position in the canopy.

{4.7.2.1.1.4} *HTE* = 4.5 + [(*HTE* – 4.5) / *AGETEM*] \* *A*

{4.7.2.1.1.5} *HTE* = 4.5 + [(0.02348 \* *SI*) – 0.93429] \* *AGETEM*

{4.7.2.1.1.6} *HTE* = *HT* \* *FACTOR*

*FACTOR* = (1 – (*BAL* / *BA*)), 0.768 <u><</u> *FACTOR* <u><</u> 1

where:

*HTE* is the even-aged height estimate

*AGETEM* is the tree’s estimated age, bounded at *AGETEM* <u><</u> 210

*A* is estimated tree age

*BAL* is total basal area in trees in 1-inch diameter classes larger than the diameter class of the subject tree

*BA* is total stand basal area

*FACTOR* is a reduction factor based on canopy position

*SI* is species site index

##### 4.7.2.1.2 Southwestern Ponderosa Pine Model Type

The even-aged height growth estimation sequence is similar to that for the SM model type. First, an age is determined to use in the calculation. Second, heights from the guide curve and the lower 95 percent confidence interval are estimated. Third, these estimates are combined. Finally, a reduction is made for a trees position in the canopy. A detailed description of formula derivation is contained in Minor (1964).

The first step is determining an age (*AGETEM*) to use in the calculation. *AGETEM* is set to the tree’s estimated age, or 210 years, whichever is less. If the site index is less than 80 and the value of (120 – Site Index) is greater than the value of *AGETEM* as just determined, then *AGETEM* is set to the value (120 – Site Index). The second step is determining total tree height on the appropriate guide curve (*HG*) using equation {4.7.2.1.2.1}. The estimated height of the lower bound of the 95 percent confidence interval (*HL*) is determined using equation {4.7.2.1.2.2}. The third step combines the estimates into a final height estimate using equation {4.7.2.1.2.3}.

{4.7.2.1.2.1} *HG* = 4.5 + 106.493954 \* (1.0 – 0.938775 \* exp(-0.016066 \* *AGETEM*))^1.550720

{4.7.2.1.2.2} *HL* = 78.078735 \* (1.0 – 0.843715 \* exp(-0.020412 \* *AGETEM*))^2.280435

{4.7.2.1.2.3} *HTE* = -1.0 \* [(*HG* - *HL*) \* ((81.5585 – *SI*) / 21.7149)] + *HG*

where:

*HG* is total tree height on the appropriate guide curve

*HL* is the estimated height on the lower bound of the 95%confidence interval

*AGETEM* is the tree’s estimated age, bounded at *AGETEM* <u><</u> 210

*HTE* is the even-aged height estimate

*SI* is species site index

If site index is 80, or greater, and the tree’s age is less than *AGETEM* as determined above, *HTE* is further modified using equation {4.7.2.1.2.4}. If site index is greater than or equal to 80 and *AGETEM* is less than 20, then the estimate of *HTE*, using equations {4.7.2.1.2.3} and {4.7.2.1.2.4}, is replaced by an estimate of *HTE* using equation {4.7.2.1.2.5}. The fourth and final step is multiplying the estimated *HTE* by an adjustment factor using equation {4.7.2.1.2.6} to account for a tree’s position in the canopy.

{4.7.2.1.2.4} *HTE* = 4.5 + [(*HTE* – 4.5) / *AGETEM*] \* *A*

{4.7.2.1.2.5} *HTE* = 4.5 + [(0.02463 \* *SI*) – 1.1025] \* *AGETEM*

{4.7.2.1.2.6} *HTE* = *HTE* \* *FACTOR*

*FACTOR* = (1 – (*BAL* / *BA*)), 0.768 <u><</u> *FACTOR* <u><</u> 1

where:

*HTE* is the even-aged height estimate

*AGETEM* is the tree’s estimated age, bounded at *AGETEM* <u><</u> 210

*A* is estimated tree age

*BAL* is total basal area in trees in 1-inch diameter classes larger than the diameter class of the subject tree

*BA* is total stand basal area

*FACTOR* is a reduction factor based on canopy position

*SI* is species site index

##### 4.7.2.1.3 Black Hills Ponderosa Pine Model Type

Even-aged height growth is estimated using Meyer’s (1961) ponderosa pine site curves. If the tree’s height is above the height at which the site curve flattens off (equation {4.7.2.1.3.1}), or the tree is over 165 years old, 10-year height growth is set to 0.1 foot. Otherwise, an estimated tree height at the beginning of the projection cycle is calculated using equation {4.7.2.1.3.2} using the estimated tree age at the beginning of the projection cycle and species site index. Estimated tree height 10 years in the future is estimated using equation {4.7.2.1.3.2} and the estimated tree age at the beginning of the projection cycle plus 10 years and species site index. Potential height growth is estimated by subtracting the estimated current height from the estimated height 10 years in the future as shown in equation {4.7.2.1.3.3}. Finally, the estimated height growth is multiplied by an adjustment factor in equation {4.7.2.1.3.4} to account for a tree’s position in the canopy.

{4.7.2.1.3.1} If tree height is greater than *HG*, then *HTG* = 0.1

*HG* = (*SI* + 0.3846) \* 1.2999886

{4.7.2.1.3.2} *HTE* = (*SI* + 0.3846) \* (-0.5234 + (1.8234 \* exp-(1.0989 – 0.006105 \* *A*)^2.35))

{4.7.2.1.3.3} *PHTG* = *H10* – *HTS*

{4.7.2.1.3.4} *HTG* = *PHTG* \* *FACTOR*

*FACTOR* = (1 – (*BAL* / *BA*)), 0.793 <u><</u> *FACTOR* <u><</u> 1

where:

*HG* is total tree height on the appropriate guide curve

*A* is tree age

*HTE* is estimated height of the tree

*HTS* is estimated height of the tree at the start of the projection cycle

*H10* is estimated height of the tree in ten years

*PHTG* is estimated potential 10-year height growth

*HTG* is estimated 10-year height growth

*SI* is species site index

*FACTOR* is a reduction factor based on canopy position

*BAL* is total basal area in trees in 1-inch diameter classes larger than the diameter class of the subject tree

*BA* is total stand basal area

Since the estimate in the Black Hills model type is actually a height growth estimate, rather than a height estimate, values needed to combine the even-aged and uneven-aged estimates shown above are assigned as shown in equations {4.7.2.1.3.5} and {4.7.2.1.3.6}.

{4.7.2.1.3.5} *HHE1 = HT*

{4.7.2.1.3.6} *HHE2 = HT + HTG*

where:

*HHE1* is estimated tree height at the beginning of the projection cycle using the even-aged equations (in this case set to the tree height at the beginning of the projection cycle)

*HHE2* is estimated tree height 10-years in the future using the even-aged equations

*HT* is height of the tree at the beginning of the projection cycle

*HTG* is estimated 10-year height growth

##### 4.7.2.1.4 Spruce-Fir Model Type

Even-aged height is estimated using Alexander’s (1967) site curves for Engelmann spruce and sub-alpine fir. Height is estimated using equation {4.7.2.1.4.1}. If the tree age is less than 30 years, then the height estimate is modified using equation {4.7.2.1.4.2}. Finally, the estimated height is multiplied by an adjustment factor in equation {4.7.2.1.4.3} to account for a tree’s position in the canopy.

{4.7.2.1.4.1} *HTE* = 4.5 + (2.75780 \* *SI*^0.83312) \* [1 – exp((-0.015701 \* *A*))] ^ (22.71944 \* *SI^* -0.63557)

{4.7.2.1.4.2} *HTE* = 4.5 + [(*HTE* – 4.5) / *AGETEM*] \* *A*

{4.7.2.1.4.3} *HTE* = *HTE* \* *FACTOR*

*FACTOR* = (1 – (*BAL* / *BA*)), 0.728 <u><</u> *FACTOR* <u><</u> 1

where:

*HTE* is the even-aged height estimate

*A* is estimated tree age

*SI* is species site index

*AGETEM* is the tree’s estimated age, bounded at *AGETEM* <u>></u> 30

*BAL* is total basal area in trees in 1-inch diameter classes larger than the diameter class of the subject tree

*BA* is total stand basal area

*FACTOR* is a reduction factor based on canopy position

##### 4.7.2.1.5 Lodgepole Pine Model Type

Even-aged height is estimated using Alexander, Tackle, and Dahms (1967) lodgepole pine site index curves. Height is estimated using equation {4.7.2.1.5.1} with AGETEM being the tree age constrained to the interval (30 – 200 years). If the tree age is less than 30 years, the height estimate is further modified using equation {4.7.2.1.5.2}. Finally, the estimated height is multiplied by an adjustment factor in equation {4.7.2.1.5.3} to account for a tree’s position in the canopy.

{4.7.2.1.5.1} *HTE* = 9.89331 + (-0.19177 \* *AGETEM*) + (0.00124 \* *AGETEM*^2) + (-0.00082 \* *CTEM* \* *SI*) + (0.01387 \* *AGETEM* \* *SI*) + (-0.0000455 \* *AGETEM*^2 \* *SI*)

*CTEM* = *CCF* – 125 bounded *CTEM* <u>></u> 0

{4.7.2.1.5.2} *HTE* = (*HTE* / *AGETEM*) \* *A*

{4.7.2.1.5.3} *HTE* = *HTE* \* *FACTOR*

*FACTOR* = (1 – (*BAL* / *BA*)), 0.742 <u><</u> *FACTOR* <u><</u> 1

where:

*HTE* is the even-aged height estimate

*A* is estimated tree age

*SI* is species site index

*AGETEM* is the tree’s estimated age, bounded at 30 <u><</u> *AGETEM* <u><</u> 200

*CCF* is stand crown competition factor

*CTEM* is stand crown competition factor minus 125 and bounded *CTEM* <u>></u> 0

*BAL* is total basal area in trees in 1-inch diameter classes larger than the diameter class of the subject tree

*BA* is total stand basal area

*FACTOR* is a reduction factor based on canopy position

#### 4.7.2.1.6 Height Growth estimate for Uneven-Aged Stands

Equations from GENGYM predict a tree’s future height based on stand and tree variables. For subalpine fir, corkbark fir, Engelmann spruce, quaking aspen, narrowleaf cottonwood, plains cottonwood, paper birch, and other hardwood, equation {4.7.2.1.6.1} is used for model types 1 and 2, and equation {4.7.2.1.6.2} is used for model types 3, 4, and 5. For Douglas-fir, white fir, ponderosa pine, southwestern white pine, blue spruce, white spruce, and Chihuahuan pine, equation {4.7.2.1.6.1} is used for all model types. For lodgepole pine and whitebark pine, equation {4.7.2.1.6.2} is used for all model types. For other softwood, equation {4.7.2.1.6.3} is used for all model types.

{4.7.2.1.6.1} *HTU* = 4.5 + a1 \* *SI*^a2 \* [(1 – exp(a3 \* *DBH*)) ^ (a4 \* *BAT*)^a5]

{4.7.2.1.6.2} *HTU* = 4.5 + (a1 + a2 \* *SI*) \* [(1 – exp(a3 \* *DBH*)) ^ (a4 \* *BAT*)^a5]

{4.7.2.1.6.3} *HTU* = 4.5 + a1 \* [(1 – exp(a3 \* *DBH*)) ^ a4]

where:

*HTU* is the uneven-aged height estimate

*SI* is species site index

*DBH* is tree diameter at breast height

*BAT* is total stand basal area (subject to restrictions)

*BAT* is subject to the following restrictions:

Southwestern Mixed Conifers model type:

If *BAT* is less than 80, then *BAL* is set to 0

*BAT* <u>></u> 0.8

Southwestern Ponderosa Pine model type:

*BAT* <u>></u> 21

Black Hills Ponderosa Pine and Spruce-Fir model types:

*BAT* <u>></u> 5

Lodgepole pine model type:

*BAT* <u>></u> 14

a1 – a5 are species-specific coefficients shown in table 4.7.2.1.6.1

**Table 4.7.2.1.6.1 Default coefficients (a1 – a5), by species, used in the uneven-aged height estimate equations {4.7.2.1.6.1}, {4.7.2.1.6.2}, and {4.7.2.1.6.3} in the CR variant.**

| **Species Code** | **Model Type** | **Equation**  **Number** | **a1** | **a2** | **a3** | **a4** | **a5** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| AF | SM, SP | 4.7.2.1.6.1 | 4.514294 | 0.755380 | -0.080869 | 1.409884 | 0.003919 |
| AF | BP, SF, LP | 4.7.2.1.6.2 | 15.5 | 1.1 | -0.097152 | 4.698567 | -0.252630 |
| CB | SM, SP | 4.7.2.1.6.1 | 4.514294 | 0.755380 | -0.080869 | 1.409884 | 0.003919 |
| CB | BP, SF, LP | 4.7.2.1.6.2 | 15.5 | 1.1 | -0.097152 | 4.698567 | -0.252630 |
| DF | ALL | 4.7.2.1.6.1 | 13.096420 | 0.480509 | -0.077408 | 1.237589 | -0.063297 |
| GF | \* |  | 0 | 0 | 0 | 0 | 0 |
| WF | ALL | 4.7.2.1.6.1 | 13.822088 | 0.462393 | -0.075766 | 1.312638 | -0.040708 |
| MH | \* |  | 0 | 0 | 0 | 0 | 0 |
| RC | \* |  | 0 | 0 | 0 | 0 | 0 |
| WL | \* |  | 0 | 0 | 0 | 0 | 0 |
| BC | \*\* |  | - | - | - | - | - |
| LM | \* |  | 0 | 0 | 0 | 0 | 0 |
| LP | ALL | 4.7.2.1.6.2 | 8.5 | 1.1 | -0.085004 | 1.709643 | -0.163186 |
| PI | \*\* |  | - | - | - | - | - |
| PP | SM | 4.7.2.1.6.1 | 24.244690 | 0.343864 | -0.069180 | 1.251384 | -0.272018 |
| PP | SP | 4.7.2.1.6.1 | 40.78321 | 0.332614 | -0.021471 | 0.922811 | -0.133923 |
| PP | BP, SF, LP | 4.7.2.1.6.1 | 32.108633 | 0.276926 | -0.057766 | 0.984340 | -0.169876 |
| WB | ALL | 4.7.2.1.6.2 | 8.5 | 1.1 | -0.085004 | 1.709643 | -0.163186 |
| SW | ALL | 4.7.2.1.6.1 | 18.967185 | 0.379790 | -0.071482 | 1.159608 | -0.099449 |
| UJ | \*\* |  | - | - | - | - | - |
| BS | ALL | 4.7.2.1.6.1 | 54.180173 | 0.177962 | -0.089253 | 1.533535 | -0.028852 |
| ES | SM, SP | 4.7.2.1.6.1 | 10.616238 | 0.549461 | -0.087283 | 1.488355 | -0.027226 |
| ES | BP, SF, LP | 4.7.2.1.6.2 | 15.5 | 1.1 | -0.110383 | 6.262899 | -0.286055 |
| WS | ALL | 4.7.2.1.6.1 | 54.18017 | 0.177962 | -0.089253 | 1.533535 | -0.028852 |
| AS | SM, SP | 4.7.2.1.6.1 | 14.187987 | 0.416525 | -0.126806 | 1.310744 | -0.245126 |
| AS | BP, SF, LP | 4.7.2.1.6.2 | -2.04 | 1.4534 | -0.058112 | 1.894400 | -0.192979 |
| NC | SM, SP | 4.7.2.1.6.1 | 14.187987 | 0.416525 | -0.126806 | 1.310744 | -0.245126 |
| NC | BP, SF, LP | 4.7.2.1.6.2 | -2.04 | 1.4534 | -0.058112 | 1.894400 | -0.192979 |
| PW | SM, SP | 4.7.2.1.6.1 | 14.187987 | 0.416525 | -0.126806 | 1.310744 | -0.245126 |
| PW | BP, SF, LP | 4.7.2.1.6.2 | -2.04 | 1.4534 | -0.058112 | 1.894400 | -0.192979 |
| GO | \*\* |  | - | - | - | - | - |
| AW | \*\* |  | - | - | - | - | - |
| EM | \*\* |  | - | - | - | - | - |
| BK | \*\* |  | - | - | - | - | - |
| SO | \*\* |  | - | - | - | - | - |
| PB | SM, SP | 4.7.2.1.6.1 | 14.187987 | 0.416525 | -0.126806 | 1.310744 | -0.245126 |
| PB | BP, SF, LP | 4.7.2.1.6.2 | -2.04 | 1.4534 | -0.058112 | 1.894400 | -0.192979 |
| AJ | \*\* |  | - | - | - | - | - |
| RM | \*\* |  | - | - | - | - | - |
| OJ | \*\* |  | - | - | - | - | - |
| ER | \*\* |  | - | - | - | - | - |
| PM | \*\* |  | - | - | - | - | - |
| PD | \*\* |  | - | - | - | - | - |
| AZ | \*\* |  | - | - | - | - | - |
| CI | SM | 4.7.2.1.6.1 | 24.244690 | 0.343864 | -0.069180 | 1.251384 | -0.272018 |
| CI | SP | 4.7.2.1.6.1 | 40.78321 | 0.332614 | -0.021471 | 0.922811 | -0.133923 |
| CI | BP, SF, LP | 4.7.2.1.6.1 | 32.108633 | 0.276926 | -0.057766 | 0.984340 | -0.169876 |
| OS | ALL | 4.7.2.1.6.3 | 42.269377 | 0 | -0.165687 | 1.184734 | 0 |
| OH | SM, SP | 4.7.2.1.6.1 | 14.187987 | 0.416525 | -0.126806 | 1.310744 | -0.245126 |
| OH | BP, SF, LP | 4.7.2.1.6.2 | -2.04 | 1.4534 | -0.058112 | 1.894400 | -0.192979 |

\*These species use equations from other variants, as described below

\*\*These species use small tree growth equations for all sizes of trees

#### 4.7.2.2 Height Growth Estimate for Species using Equations from Other Variants

Grand fir, mountain hemlock, western redcedar, western larch, and limber pine use large-tree height growth relationships from other variants to estimate height growth. These relationships predict height growth directly. The grand fir equation is from the Central Idaho (CI) variant. Equations for mountain hemlock, western redcedar, and western larch are from the North Idaho (NI) variant with elevation set to 6000 feet and habitat type set to 710 (TSME/XETE), 550 (THPL/OPHO), and 260 (PSME/PHMA) respectively. The limber pine equation is from the Utah (UT) variant.

Grand fir, mountain hemlock, western redcedar, and western larch use equation {4.7.2.2.1} with species-specific coefficients shown in table 4.7.2.2.1.

{4.7.2.2.1} *HTG* = exp[a1 + (a2 \* *HT*^2) + (a3 \* ln(*DBH*)) + (a4 \* ln(*HT*)) + (a5 \* ln(*DG*))] + 0.4809

where:

*HTG* is estimated 10-year height growth

*HT* is tree height at the beginning of the projection cycle

*DBH* is tree diameter at breast height at the beginning of the projection cycle

*DG* is estimated 10-year diameter growth

a1 – a5 are species-specific coefficients shown in table 4.7.2.2.1

**Table 4.7.2.2.1 Coefficients (a1 – a5) for the height-growth equation {4.7.2.2.1} used for grand fir, mountain hemlock, western redcedar, and western larch in the CR variant.**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Species Code** | **a1** | **a2** | **a3** | **a4** | **a5** |
| GF | 1.38455 | -0.0001336 | -0.09775 | 0.23315 | 0.62144 |
| MH | 1.0951 | -0.0000446 | -0.09775 | 0.23315 | 0.34003 |
| RC | 1.21694 | -0.0000363 | -0.1219 | 0.23315 | 0.37042 |
| WL | 1.96089 | -0.0000261 | -0.3899 | 0.23315 | 0.75756 |

Once height growth is estimated using equation {4.7.2.2.1}, equation {4.7.2.2.2} is used to adjust the estimate for site index and apply the adjustment factor shown in table 4.7.2.1.1. A small random increment is added and an adjustment for stagnated stands is applied if this feature has been turned on using field 7 of the SDIMAX keyword.

{4.7.2.2.2} *HTG* = [((*HTG* \* *FACTOR*) \* *ADJUST)* + (ZZRAN \* 0.1)] \* [(DSTAG + 1) \* 0.5]

*FACTOR* = a + (b \* *SI*) bounded for western redcedar *FACTOR* <u>></u> 1

where:

*HTG* is estimated 10-year height growth

*FACTOR* is an adjustment factor based on site index

*SI* is species site index (bounded by *SITELO* and *SITEHI* shown in table 4.7.2.2.2)

*ADJUST* is a multiplier so open-grown trees will reach the site height at the index age (table 4.7.2.1.1)

*ZZRAN* is a random number in the range -2 <u><</u> *ZZRAN* <u><</u> 2 (i.e. the limits for *ZZRAN* are the number of standard deviations specified using the DGSTDEV keyword, default 2)

*DSTAG* is an adjustment for stagnated stand conditions (turned on using the SDIMAX keyword, default 1.0)

a, b are species and site index specific coefficients shown in table 4.7.2.2.2

**Table 4.7.2.2.2 Coefficients (a and b), *SITELO* and *SITEHI* values for the height-growth adjustment, variable *FACTOR* in equation {4.7.2.2.2}, in the CR variant.**

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Common Name** | **a** | **b** | ***SITELO*** | ***SITEHI*** |
| grand fir; *SI* <u><</u> 80 | 0.1 | 0.0125 | 40 | 120 |
| grand fir; *SI* > 80 | -0.7 | 0.0225 | 40 | 120 |
| mountain hemlock | 0.36 | 0.012 | 40 | 70 |
| western redcedar | 0.0875 | 0.01375 | 40 | 110 |
| western larch | 0.23337 | 0.008333 | 40 | 120 |
| limber pine; *SI* < 40 | 0.2 | 0.015 | 20 | 60 |
| limber pine; *SI* <u>></u> 40 | -0.1 | 0.0225 | 20 | 60 |

The equation for limber pine predicts future height and is more complex. If the diameter at the beginning or end of the projection cycle is greater than 45.1, or the beginning of cycle height is greater than 94.5, then height growth is set to 0.1 foot. If the tree dimensions are smaller than those limits, then estimated height 10 years later is calculated using equation {4.7.2.2.3} and 10-year height growth is calculated by subtraction using equation {4.7.2.2.4} and adjusted for site index and species-specific adjustment factor using equation {4.7.2.2.2} as shown above.

{4.7.2.2.3} *H10* = [(*PSI* / (1 + *PSI*)) \* 90] + 4.5

*PSI* = 2.4648 \* [(*D10* – 0.1) / (45.1 – *D10*)]^1.00316 \* [exp(0.74842 \* *Z*)]

*Z* = [0.30546 + (0.94823 \* *FBY2*) – 7.0453 \* (1.6477 + (1.35015 \* *FBY1*))] \* 1.4091

*FBY1* = ln[*Y1* / (1 – *Y1*)]

*Y1* = (*DBH* – 0.1) / 45

*FBY2* = ln[*Y2* / (1 – *Y2*)]

*Y2* = (*HT* – 4.5) / 90

{4.7.2.2.4} Height growth

H10 > HT: HTG = H10 – HT

H10 <u><</u> HT: HTG = 0.1

where:

*H10* is estimated height of the tree in ten years

*DBH* is tree diameter at breast height at the start of the projection cycle

*HT* is tree height at the start of the projection cycle

*D10* is estimated diameter at breast height of the tree in ten years

*HTG* is estimated 10-year height growth

#### 4.7.2.3 Height growth using the Small Tree Equations

Bristlecone pine, twoneedle pinyon, Utah juniper, Gambel oak, Arizona white oak, Emory oak, bur oak, silverleaf oak, alligator juniper, Rocky Mountain juniper, oneseed juniper, Eastern redcedar, singleleaf pinyon, border pinyon, and Arizona twoneedle pinyon, use the small-tree height growth equations described in section 4.6.1 for trees of all sizes.

# 5.0 Mortality Model

The CR variant uses an SDI-based mortality model as described in Section 7.3.2 of Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002, referred to as EFVS). This SDI-based mortality model is comprised of two steps: 1) determining the amount of stand mortality (section 7.3.2.1 of EFVS) and 2) dispersing stand mortality to individual tree records (section7.3.2.2 of EFVS). In determining the amount of stand mortality, the summation of individual tree background mortality rates is used when stand density is below the minimum level for density dependent mortality (default is 55% of maximum SDI), while stand level density-related mortality rates are used when stands are above this minimum level.

The equation used to calculate individual tree background mortality rates for all species is shown in equation {5.0.1}, and this is then adjusted to the length of the cycle by using a compound interest formula as shown in equation {5.0.2}. Coefficients for these equations are shown in table 5.0.1. The overall amount of mortality calculated for the stand is the summation of the final mortality rate (*RIP*) across all live tree records.

{5.0.1} RI = [1 / (1 + exp(p0 + p1 \* DBH))] \* 0.5

{5.0.2} RIP = 1 – (1 – RI*)*^Y

where:

RI is the proportion of the tree record attributed to mortality

RIP is the final mortality rate adjusted to the length of the cycle

DBH is tree diameter at breast height

Y is length of the current projection cycle in years

p0 and p1 are species-specific coefficients shown in table 5.0.1

**Table 5.0.1 Coefficients used in the background mortality equation {5.0.1} in the CR variant.**

| **Species Code** | **p0** | **p1** |
| --- | --- | --- |
| AF | 5.1677 | -0.00777 |
| CB | 5.1677 | -0.00777 |
| DF | 7.2985 | -0.01291 |
| GF | 5.1677 | -0.00777 |
| WF | 5.1677 | -0.00777 |
| MH | 9.6943 | -0.01273 |
| RC | 5.1677 | -0.00777 |
| WL | 6.5112 | -0.00525 |
| BC | 5.1677 | -0.00777 |
| LM | 5.1677 | -0.00777 |
| LP | 5.9617 | -0.03401 |
| PI | 5.1677 | -0.00777 |
| PP | 5.5877 | -0.00535 |
| WB | 5.1677 | -0.00777 |
| SW | 6.5112 | -0.00525 |
| UJ | 5.1677 | -0.00777 |
| BS | 9.6943 | -0.01273 |
| ES | 9.6943 | -0.01273 |
| WS | 9.6943 | -0.01273 |
| AS | 5.9617 | -0.03401 |
| NC | 5.9617 | -0.03401 |
| PW | 5.9617 | -0.03401 |
| GO | 5.9617 | -0.03401 |
| AW | 5.9617 | -0.03401 |
| EM | 5.9617 | -0.03401 |
| BK | 5.9617 | -0.03401 |
| SO | 5.9617 | -0.03401 |
| PB | 5.9617 | -0.03401 |
| AJ | 5.1677 | -0.00777 |
| RM | 5.1677 | -0.00777 |
| OJ | 5.1677 | -0.00777 |
| ER | 5.1677 | -0.00777 |
| PM | 5.1677 | -0.00777 |
| PD | 5.1677 | -0.00777 |
| AZ | 5.1677 | -0.00777 |
| CI | 5.5877 | -0.00535 |
| OS | 5.1677 | -0.00777 |
| OH | 5.9617 | -0.03401 |

When stand density-related mortality is in effect, the total amount of stand mortality is determined based on the trajectory developed from the relationship between stand SDI and the maximum SDI for the stand. This is explained in section 7.3.2.1 of EFVS.

Once the amount of stand mortality is determined based on either the summation of background mortality rates or density-related mortality rates, mortality is dispersed to individual tree records i in relation to a tree’s percentile in the basal area distribution (PCT) using equation {5.0.3}. This value is then adjusted by a species-specific mortality modifier representing the species shade tolerance shown in equation {5.0.4}.

The mortality model makes multiple passes through the tree records multiplying a record’s trees-per-acre value times the final mortality rate (MORT), accumulating the results, and reducing the trees-per-acre representation until the desired mortality level has been reached. If the stand still exceeds the basal area maximum sustainable on the site the mortality rates are proportionally adjusted to reduce the stand to the specified basal area maximum.

{5.0.3} *MR* = 0.84525 – (0.01074 \* *PCT*) + (0.0000002 \* *PCT*^3)

{5.0.4} MORT = MR \* MWT \* ((100 – CR%) / 100) \* 0.01

where:

*MR* is the proportion of the tree record attributed to mortality (bounded: 0.01 <u><</u> *MR* <u><</u> 1)

*PCT* is the subject tree’s percentile in the basal area distribution of the stand

*MORT* is the final mortality rate of the tree record

*MWT* is a mortality weight value based on a species’ tolerance shown in table 5.0.2

*CR%* is crown ratio expressed as a percent

**Table 5.0.2 MWT** **values for the mortality equation {5.0.4} in the CR variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **MWT** | **Species Code** | **MWT** |
| AF | 0.1 | AS | 0.9 |
| CB | 0.1 | NC | 0.9 |
| DF | 0.5 | PW | 0.9 |
| GF | 0.3 | GO | 0.7 |
| WF | 0.3 | AW | 0.7 |
| MH | 0.3 | EM | 0.7 |
| RC | 0.1 | BK | 0.7 |
| WL | 0.9 | SO | 0.7 |
| BC | 0.9 | PB | 0.9 |
| LM | 0.9 | AJ | 0.7 |
| LP | 0.7 | RM | 0.7 |
| PI | 0.7 | OJ | 0.7 |
| PP | 0.7 | ER | 0.7 |
| WB | 0.9 | PM | 0.7 |
| SW | 0.5 | PD | 0.7 |
| UJ | 0.7 | AZ | 0.7 |
| BS | 0.5 | CI | 0.7 |
| ES | 0.3 | OS | 0.7 |
| WS | 0.3 | OH | 0.9 |

# 6.0 Regeneration

The CR variant contains a partial establishment model which may be used to input regeneration and ingrowth into simulations. A more detailed description of how the partial establishment model works can be found in section 5.4.5 of the Essential FVS Guide (Dixon 2002).

The regeneration model is used to simulate stand establishment from bare ground, or to bring seedlings and sprouts into a simulation with existing trees. Sprouts are automatically added to the simulation following harvest or burning of known sprouting species (see table 6.0.1 for sprouting species).

**Table 6.0.1 Default regeneration parameters by species in the CR variant.**

| **Species Code** | **Sprouting Species** | **Minimum Bud Width (in)** | **Minimum Tree Height (ft)** | **Maximum Tree Height (ft)** |
| --- | --- | --- | --- | --- |
| AF | No | 0.3 | 0.5 | 7.0 |
| CB | No | 0.3 | 0.5 | 7.0 |
| DF | No | 0.3 | 1.0 | 10.0 |
| GF | No | 0.3 | 0.5 | 7.0 |
| WF | No | 0.3 | 0.5 | 7.0 |
| MH | No | 0.3 | 0.5 | 10.0 |
| RC | No | 0.3 | 0.5 | 9.0 |
| WL | No | 0.3 | 1.0 | 10.0 |
| BC | No | 0.4 | 0.5 | 9.0 |
| LM | No | 0.4 | 0.5 | 9.0 |
| LP | No | 0.4 | 1.0 | 10.0 |
| PI | No | 0.4 | 0.5 | 6.0 |
| PP | No | 0.5 | 1.0 | 10.0 |
| WB | No | 0.4 | 1.0 | 9.0 |
| SW | No | 0.4 | 1.0 | 9.0 |
| UJ | No | 0.3 | 0.5 | 6.0 |
| BS | No | 0.3 | 0.5 | 7.0 |
| ES | No | 0.3 | 0.5 | 7.0 |
| WS | No | 0.3 | 0.5 | 7.0 |
| AS | Yes | 0.2 | 3.0 | 16.0 |
| NC | Yes | 0.3 | 3.0 | 16.0 |
| PW | Yes | 0.3 | 3.0 | 16.0 |
| GO | Yes | 0.3 | 0.5 | 10.0 |
| AW | Yes | 0.3 | 0.5 | 10.0 |
| EM | Yes | 0.3 | 0.5 | 10.0 |
| BK | Yes | 0.3 | 0.5 | 10.0 |
| SO | Yes | 0.3 | 0.5 | 10.0 |
| PB | Yes | 0.2 | 3.0 | 16.0 |
| AJ | Yes | 0.3 | 0.5 | 6.0 |
| RM | No | 0.3 | 0.5 | 6.0 |
| OJ | No | 0.3 | 0.5 | 6.0 |
| ER | No | 0.3 | 0.5 | 6.0 |
| PM | No | 0.4 | 0.5 | 6.0 |
| PD | No | 0.4 | 0.5 | 6.0 |
| AZ | No | 0.4 | 0.5 | 6.0 |
| CI | Yes | 0.5 | 1.0 | 10.0 |
| OS | No | 0.2 | 1.0 | 9.0 |
| OH | No | 0.2 | 0.5 | 12.0 |

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

{6.0.5} *PS =* ((97.4306 - 2.3492 \* *DSTMPi*) / 100)

where:

DSTMPi is the diameter at breast height of the parent tree

NUMSPRC is the number of sprout tree records

NINT rounds the value to the nearest integer

TPAs is the trees per acre represented by each sprout record

*TPAi* is the trees per acre removed/killed represented by the parent tree

PS is a sprouting probability (see Table 6.0.2)

ASBAR is the aspen basal area removed

ASTPAR is the aspen trees per acre removed

*RSHAG* is the age of the sprouts at the end of the cycle in which they were created

**Table 6.0.2 Sprouting algorithm parameters for sprouting species in the CR variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **Sprouting Probability** | **Number of Sprout Records** | **Source** |
| AS | {6.0.2} | 2 | Keyser 2001 |
| NC | 0.8 | [B] | Simonin 2001 |
| PW | 0.9 | [B] | Taylor 2001 |
| GO | 0.8 | [A] | Simonin 2000 |
| AW | 0.7 | [A] | Pavek 1994 |
| EM | 0.8 | [A] | Pavek 1994 |
| BK | 0.8 | [A] | Gucker 2011 |
| SO | 0.9 | [A] | Barton 2002 |
| PB | 0.7 | 1 | Hutnik and Cunningham 1965  Bjorkbom 1972 |
| AJ | {6.0.3} | 1 | Jameson and Johnson 1964 |
| CI | 0.3 | 1 | Barton 2002 |

Regeneration of seedlings must be specified by the user with the partial establishment model by using the PLANT or NATURAL keywords. Height of the seedlings is estimated in two steps. First, the height is estimated when a tree is 5 years old (or the end of the cycle – whichever comes first) by using the small-tree height growth equations found in section 4.6.1. Users may override this value by entering a height in field 6 of the PLANT or NATURAL keyword; however the height entered in field 6 is not subject to minimum height restrictions and seedlings as small as 0.05 feet may be established. The second step also uses the equations in section 4.6.1, which grow the trees in height from the point five years after establishment to the end of the cycle.

Seedlings and sprouts are passed to the main FVS model at the end of the growth cycle in which regeneration is established. Unless noted above, seedlings being passed are subject to minimum and maximum height constraints and a minimum budwidth constraint shown in table 6.0.1. After seedling height is estimated, diameter growth is estimated using equations described in section 4.6.2. Crown ratios on newly established trees are estimated as described in section 4.3.1.

Regenerated trees and sprouts can be identified in the treelist output file with tree identification numbers beginning with the letters “ES”.

# 7.0 Volume

In the CR variant, volume is calculated for four merchantability standards: total stem cubic feet, merchantable stem cubic feet, sawlog stem cubic feet, and merchantable stem board feet (Scribner Decimal C). Sawlog stem cubic foot volume is only reported when the FIAVBC keyword is in use. Volume estimation is based on methods contained in the National Volume Estimator Library maintained by the Forest Products Measurements group in the Forest Management Service Center (Volume Estimator Library Equations 2009). The default volume merchantability standards and equation numbers for the CR variant are shown in tables 7.0.1-7.0.3.

Volume computation methods used by the Forest Inventory and Analysis (FIA) program can be requested with the FIAVBC keyword. This keyword encompasses the National Scale Volume and Biomass estimators (NSVB; Westfall et al. 2024) and regional equations used for woodland species (Burrill et al. 2024). More information about the FIAVBC keyword and required input variables can be found in the Essential FVS Guide (Dixon 2002).

**Table 7.0.1 Volume merchantability standards for the CR variant.**

|  |  |  |
| --- | --- | --- |
| **Merchantable Cubic Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | Hardwoods | Softwoods |
| SM – Southwestern Mixed Conifers  SP – Southwestern Ponderosa Pine  SF – Spruce-fir  LP – Lodgepole Pine | 5.0 / 4.0 inches | 5.0 / 4.0 inches |
| BP – Black Hills Ponderosa Pine | 9.0 / 6.0 inches | 9.0 / 6.0 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| **Merchantable Board Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | Hardwoods | Softwoods |
| Region 2 Forests using these model types:  SM – Southwestern Mixed Conifers  SP – Southwestern Ponderosa Pine  SF – Spruce-fir  LP – Lodgepole Pine | 7.0 / 6.0 inches | 7.0 / 6.0 inches |
| Region 3 Forests using these model types:  SM – Southwestern Mixed Conifers  SP – Southwestern Ponderosa Pine  SF – Spruce-fir  LP – Lodgepole Pine | 9.0 / 6.0 inches | 9.0 / 6.0 inches |
| BP – Black Hills Ponderosa Pine | 9.0 / 6.0 inches | 9.0 / 6.0 inches |
| Stump Height | 1.0 foot | 1.0 foot |

**Table 7.0.2 Volume equation defaults for each species at specific location codes with model name.**

| **Common Name** | **Location Code** | **Equation Number** | **Reference** |
| --- | --- | --- | --- |
| subalpine fir | All of Region 2 | I00FW2W019 | Flewelling's 2-Point Profile Model |
| subalpine fir | All of Region 3 | 300DVEW093 | Hann and Bare Equations |
| corkbark fir | All of Region 2 | I00FW2W019 | Flewelling's 2-Point Profile Model |
| corkbark fir | All of Region 3 | NVB0000015 | National Scale Volume and Biomass Estimators |
| Douglas-fir | All of Region 2 | 200FW2W202 | Flewelling's 2-Point Profile Model |
| Douglas-fir | All of Region 3 | 300FW2W202 | Flewelling's 2-Point Profile Model |
| grand fir | All of Region 2 | I00FW2W019 | Flewelling's 2-Point Profile Model |
| grand fir | All of Region 3 | 300DVEW093 | Hann and Bare Equations |
| white fir | All of Region 2 | 200FW2W015 | Flewelling's 2-Point Profile Model |
| white fir | All of Region 3 | NVB0000015 | National Scale Volume and Biomass Estimators |
| mountain hemlock | All of Region 2 | 407FW2W093 | Flewelling's 2-Point Profile Model |
| mountain hemlock | All of Region 3 | 301DVEW015 | Hann and Bare Equations |
| western redcedar | All of Region 2 | 407FW2W093 | Flewelling's 2-Point Profile Model |
| western redcedar | All of Region 3 | 301DVEW015 | Hann and Bare Equations |
| western larch | All of Region 2 | 407FW2W093 | Flewelling's 2-Point Profile Model |
| western larch | All of Region 3 | 301DVEW015 | Hann and Bare Equations |
| bristlecone pine | All of Region 2 | 200FW2W122 | Flewelling's 2-Point Profile Model |
| bristlecone pine | All of Region 3 | 300DVEW113 | Hann and Bare Equations |
| limber pine | All of Region 2 | 200FW2W122 | Flewelling's 2-Point Profile Model |
| limber pine | All of Region 3 | 300DVEW113 | Hann and Bare Equations |
| lodgepole pine | 202, 214 | 202FW2W108 | Flewelling's 2-Point Profile Model |
| lodgepole pine | Rest of Region 2 | 200FW2W108 | Flewelling's 2-Point Profile Model |
| lodgepole pine | All of Region 3 | 301DVEW202 | Hann and Bare Equations |
| twoneedle pinyon | All of Region 2 | 200DVEW106 | Chojnacky Equations |
| twoneedle pinyon | All of Region 3 | 300DVEW106 | Chojnacky Equations |
| ponderosa pine | 203 | 203FW2W122 | Flewelling's 2-Point Profile Model |
| ponderosa pine | 213 | 213FW2W122 | Flewelling's 2-Point Profile Model |
| ponderosa pine | Rest of Region 2 | 200FW2W122 | Flewelling's 2-Point Profile Model |
| ponderosa pine | 301, 304, 307, 312 | 300FW2W122 | Flewelling's 2-Point Profile Model |
| ponderosa pine | 310 | 301FW2W122 | Flewelling's 2-Point Profile Model |
| ponderosa pine | Rest of Region 3 | 300DVEW122 | Eager Mill Study |
| whitebark pine | All of Region 2 | 200FW2W122 | Flewelling's 2-Point Profile Model |
| whitebark pine | All of Region 3 | 300DVEW113 | Hann and Bare Equations |
| southwestern white pine | All of Region 2 | 200FW2W122 | Flewelling's 2-Point Profile Model |
| southwestern white pine | All of Region 3 | NVBM240119 | National Scale Volume and Biomass Estimators |
| Utah juniper | All of Region 2 | 200DVEW065 | Chojnacky Equations |
| Utah juniper | All of Region 3 | 300DVEW060 | Chojnacky Equations |
| blue spruce | All of Region 2 | 407FW2W093 | Flewelling's 2-Point Profile Model |
| blue spruce | All of Region 3 | 300DVEW093 | Hann and Bare Equations |
| Engelmann spruce | All of Region 2 | 407FW2W093 | Flewelling's 2-Point Profile Model |
| Engelmann spruce | All of Region 3 | NVBM330093 | National Scale Volume and Biomass Estimators |
| white spruce | All of Region 2 | 407FW2W093 | Flewelling's 2-Point Profile Model |
| white spruce | All of Region 3 | 300DVEW093 | Hann and Bare Equations |
| quaking aspen | All of Region 2 | 200FW2W746 | Flewelling's 2-Point Profile Model |
| quaking aspen | All of Region 3 | NVB0000746 | National Scale Volume and Biomass Estimators |
| narrowleaf cottonwood | All | 300DVEW999 | Chojnacky Equations |
| plains cottonwood | All | 300DVEW999 | Chojnacky Equations |
| Gambel oak | All | 300DVEW800 | Chojnacky Equations |
| Arizona white oak | All | 300DVEW800 | Chojnacky Equations |
| emory oak | All | 300DVEW800 | Chojnacky Equations |
| bur oak | All of Region 2 | 200DVEW823 | Chojnacky Equations |
| bur oak | All of Region 3 | 300DVEW800 | Chojnacky Equations |
| silverleaf oak | All | 300DVEW800 | Chojnacky Equations |
| paper birch | All | 300DVEW999 | Chojnacky Equations |
| alligator juniper | All | 300DVEW060 | Chojnacky Equations |
| Rocky mountain juniper | All | 300DVEW060 | Chojnacky Equations |
| oneseed juniper | All of Region 2 | 200DVEW069 | Chojnacky Equations |
| oneseed juniper | All of Region 3 | 300DVEW060 | Chojnacky Equations |
| eastern red cedar | All | 300DVEW060 | Chojnacky Equations |
| singleleaf pinyon | All | 300DVEW106 | Chojnacky Equations |
| border pinyon | All | 300DVEW106 | Chojnacky Equations |
| Arizone twoneedle pinyon | All | 300DVEW106 | Chojnacky Equations |
| Chihuahuan pine | All of Region 2 | 200FW2W122 | Chojnacky Equations |
| Chihuahuan pine | All of Region 3 | 300DVEW122 | Chojnacky Equations |
| other softwood | All | 300DVEW060 | Chojnacky Equations |
| other hardwood | All of Region 2 | 200DVEW998 | Chojnacky Equations |
| other hardwood | All of Region 3 | 300DVEW999 | Chojnacky Equations |

**Table 7.0.3 Citations by Volume Model**

| **Model Name** | **Citation** |
| --- | --- |
| Chojnacky Equations | Chojnacky, David. 1985. Pinyon-Juniper Volume Equations for the Central Rocky Mountain States. Intermountain Research Station Research Paper INT-339. |
| Eager Mill Study | Unpublished. Timber Cruising Handbook, Region 3 Supplement. |
| Hann and Bare Equations | Hann, David W. and B. Bruce Bare 1978. Comprehensive Tree Volume Equations for Major Species of New Mexico and Arizona. Intermountain Forest and Range Experiment Station Research Paper INT-209. |
| Flewelling 2-Point Profile Model | Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II. |
| National Scale Volume and Biomass Estimators | Westfall, James A.; Coulston, John W.; Gray, Andrew N.; Shaw, John D.; Radtke, Philip J.; Walker, David M.; Weiskittel, Aaron R.; MacFarlane, David W.; Affleck, David L.R.; Zhao, Dehai; Temesgen, Hailemariam; Poudel, Krishna P.; Frank, Jereme M.; Prisley, Stephen P.; Wang, Yingfang; Sánchez Meador, Andrew J.; Auty, David; Domke, Grant M. 2024. A national-scale tree volume, biomass, and carbon modeling system for the United States. Gen. Tech. Rep. WO-104. Washington, DC: U.S. Department of Agriculture, Forest Service. 37 p. |

# 8.0 Fire and Fuels Extension (FFE-FVS)

The Fire and Fuels Extension to the Forest Vegetation Simulator (FFE-FVS) (Reinhardt and Crookston 2003) integrates FVS with models of fire behavior, fire effects, and fuel and snag dynamics. This allows users to simulate various management scenarios and compare their effect on potential fire hazard, surface fuel loading, snag levels, and stored carbon over time. Users can also simulate prescribed burns and wildfires and get estimates of the associated fire effects such as tree mortality, fuel consumption, and smoke production, as well as see their effect on future stand characteristics. FFE-FVS, like FVS, is run on individual stands, but it can be used to provide estimates of stand characteristics such as canopy base height and canopy bulk density when needed for landscape-level fire models.

For more information on FFE-FVS and how it is calibrated for the CR variant, refer to the updated FFE-FVS model documentation (Rebain, comp. 2010) available on the FVS website.

|  |
| --- |
|  |

# 9.0 Insect and Disease Extensions

FVS Insect and Pathogen models for dwarf mistletoe and western root disease have been developed for the CR variant through the participation and contribution of various organizations led by Forest Health Protection. These models are currently maintained by the Forest Management Service Center and regional Forest Health Protection specialists. Additional details regarding each model may be found in chapter 8 of the Essential FVS Users Guide (Dixon 2002).

# 10.0 Literature Cited

Alexander, R.R. 1967. Site Indices for Engelmann Spruce. Res. Pap. RM-32. Forest Service, Rocky Mountain Research Station. 7p.

Alexander, R.R., Tackle, D., and Dahms, W.G. 1967. Site Indices for Lodgepole Pine with Corrections for Stand Density Methodology. Res. Pap. RM-29. Forest Service, Rocky Mountain Research Station. 18 p.

Barton, Andrew M. 2002. Intense wildfire in southeastern Arizona: transformation of a Madrean oak-pine forest to oak woodland. Department of Natural Sciences, University of Maine at Farmington. In: Forest Ecology and Management, Volume 165: 205-212.

Bechtold, William A. 2004. Largest-crown-diameter Prediction Models for 53 Species in the Western United States. WJAF. Forest Service. 19(4): pp 241-245.

Bjorkbom, John C. 1972. Stand changes in the first 10 years after seedbed preparation for paper birch. USDA Forest Service, Research Paper NE-238. Northeastern Forest Experiment Station, Upper Darby, PA. 10 p.

Burrill, Elizabeth A.; DiTommaso, Andrea M.; Turner, Jeffery A.; Pugh, Scott A.; Christensen, Glenn; Kralicek, Karin M.; Perry, Carol J.; Lepine, Lucie C.; Walker, David M.; Conkling, Barbara L. 2024. The Forest Inventory and Analysis Database, FIADB user guides, volume: database description (version 9.3), nationwide forest inventory (NFI). U.S. Department of Agriculture, Forest Service. 1026 p. [Online].

Chojnacky, David. 1985. Pinyon-Juniper Volume Equations for the Central Rocky Mountain States. Intermountain Research Station Research Paper INT-339.

Clark, Alexander III; Souter, Ray A.; Schlaegal, Bryce E. 1991. Stem profile equations for Southern tree species. Res. Pap. SE-282. Asheville, NC: Forest Service, Southeastern Forest Experiment Station. 113 p.

Cole, D. M.; Stage, A. R. 1972. Estimating future diameters of lodgepole pine. Res. Pap. INT-131. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 20p.

Crookston, Nicholas L. 2003. Internal document on file. Data provided from Region 1. Moscow, ID: Forest Service.

Crookston, Nicholas L. 2005. Draft: Allometric Crown Width Equations for 34 Northwest United States Tree Species Estimated Using Generalized Linear Mixed Effects Models.

Dixon, Gary E. comp. 2002 (revised frequently). Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U.S. Department of Agriculture, Forest Service, Forest Management Service Center.

Dolph, Leroy K. 1984. Relationships of inside and outside bark diameters for young-growth mixed conifer species in the Sierra Nevada. Res. Note PSW-368. Berkeley, CA: Forest Service, Pacific Southwest Forest and Range Experiment Station. 4 p.

Edminster, Carleton B., Getter, James R., and Story, Donna R. 1977. Past diameters and gross volumes of plains cottonwood in Eastern Colorado. Res. Note RM-351. Fort Collins, CO: Forest Service, Rocky Mountain Forest and Range Experiment Station. 4p.

Edminster, Carleton B., Mathiasen, Robert L., and Olsen, W.K. 1991. A method for constructing site index curves from height-age measurements applied to Douglas-fir in the Southwest. Res. Pap. RM-510. Fort Collins, CO: Forest Service, Rocky Mountain Forest and Range Experiment Station. 6p.

Edminster, Carleton B., Mowrer, Todd H., and Mathiasen, Robert L. 1991. GENGYM: A variable density stand table projection system calibrated for mixed conifer and ponderosa pine stands in the Southwest. Res. Pap. RM-297. Fort Collins, CO: Forest Service, Rocky Mountain Forest and Range Experiment Station. 32p.

Unpublished. Based on work presented by Flewelling and Raynes. 1993. Variable-shape stem-profile predictions for western hemlock. Canadian Journal of Forest Research Vol 23. Part I and Part II.

Gucker, Corey L. 2011. Quercus macrocarpa. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Jameson, Donald A.; Johnsen, Thomas N., Jr. 1964. Ecology and control of alligator juniper. Weeds. 12: 140-142.

Hann, David W. and B. Bruce Bare 1978. Comprehensive Tree Volume Equations for Major Species of New Mexico and Arizona. Intermountain Forest and Range Experiment Station Research Paper INT-209.

Hutnik, Russell J., and Frank E. Cunningham. 1965. Paper birch (Betula papyrifera Marsh.). In Silvics of forest trees of the United States. p. 93-98. H. A. Fowells, comp. U.S. Department of Agriculture, Agriculture Handbook 271. Washington, DC.

Johnson, Barry C. 1987. Plant associations of Region 2: potential communities of Wyoming, South Dakota, Nebraska, Colorado, and Kansas, Edition 4. Report R2-ECOL-87-2. Forest Service.

Keyser, C.E. 2001. Quaking Aspen Sprouting in Western FVS Variants: A New Approach. Unpublished Manuscript.

Krajicek, J.; Brinkman, K.; Gingrich, S. 1961. Crown competition – a measure of density. Forest Science. 7(1):35-42

Meyer, Walter H. 1961.rev. Yield of even-aged stands of ponderosa pine. Tech. Bull. No. 630. Washington D.C.: Forest Service

Minor, C.O. 1964. Site-index curves for young-growth ponderosa pine in Northern Arizona. Res. Note RM-37. Fort Collins, CO: Forest Service, Rocky Mountain Forest and Range Experiment Station. 8p.

Myers, Clifford A.; and James L. Van Deusen. 1958. Estimating past diameters of ponderosa pine in the Black Hills. Res Note No 32. Fort Collins, CO: Forest Service Rocky Mountain Forest and Range Experiment Station. 2p.

Myers, Clifford A. 1964. Taper tables, bark thickness, and diameter relationships for lodgepole pine in Colorado and Wyoming. Res Note RM-31. Fort Collins, CO: Forest Service, Rocky Mountain Forest and Range Experiment Station. 6 p.

Myers, Clifford A.; and Robert R. Alexander. 1972. Bark thickness and past diameters of Engelmann spruce in Colorado and Wyoming. Res Note RM-217. Fort Collins, CO: Forest Service Rocky Mountain Forest and Range Experiment Station. 2p.

Paine, D.P., and Hann, D.W. 1982. Maximum Crown Width Equations for Southwestern Oregon Tree Species. Res. Pap. 46. Corvallis, OR: Oregon State University, Forest Research Laboratory. 20 p.

Pavek, Diane S. 1994. Quercus arizonica. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Pavek, Diane S. 1994. Quercus emoryi. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Rebain, Stephanie A. comp. 2010 (revised frequently). The Fire and Fuels Extension to the Forest Vegetation Simulator: Updated Model Documentation. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 379 p.

Reinhardt, Elizabeth; Crookston, Nicholas L. (Technical Editors). 2003. The Fire and Fuels Extension to the Forest Vegetation Simulator. Gen. Tech. Rep. RMRS-GTR-116. Ogden, UT: U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station. 209 p.

Schmidt, Wyman C., Raymond C. Shearer, and Arthur L. Roe. 1976. Ecology and silviculture of western larch forests. Tech. Bull. No. 1520. Forest Service. 96p.

Shepperd, Wayne D. 1995. Unpublished equation. Data on file. Fort Collins, CO: Forest Service, Rocky Mountain Research Station.

Simonin, Kevin A. 2000. Quercus gambelii. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Simonin, Kevin A. 2001. Populus angustifolia. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Stage, A. R. 1973. Prognosis Model for stand development. Res. Paper INT-137. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 32p.

Taylor, Jennifer L. 2001. Populus deltoides. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

U.S. Department of Agriculture, Forest Service. 1997. Plant associations of Arizona and New Mexico, Volume 1: forests, Volume 2: woodlands, Edition 3. Forest Service, Southwestern Region. Habitat Typing Guides. V 1: 291p, V 2: 196p.

U.S. Department of Agriculture, Forest Service. 2000. Common Stand Exam Appendices. Internal Report Version 1.4. Fort Collins, CO: Forest Service, Ecosystems Management Staff.

Van Dyck, Michael G.; Smith-Mateja, Erin E., comps. 2000 (revised frequently). Keyword reference guide for the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

Westfall, James A.; Coulston, John W.; Gray, Andrew N.; Shaw, John D.; Radtke, Philip J.; Walker, David M.; Weiskittel, Aaron R.; MacFarlane, David W.; Affleck, David L.R.; Zhao, Dehai; Temesgen, Hailemariam; Poudel, Krishna P.; Frank, Jereme M.; Prisley, Stephen P.; Wang, Yingfang; Sánchez Meador, Andrew J.; Auty, David; Domke, Grant M. 2024. A national-scale tree volume, biomass, and carbon modeling system for the United States. Gen. Tech. Rep. WO-104. Washington, DC: U.S. Department of Agriculture, Forest Service. 37 p.

Wykoff, W. R. 1990. A basal area increment model for individual conifers in the northern Rocky Mountains. For. Science 36(4): 1077-1104.

Wykoff, William R., Crookston, Nicholas L., and Stage, Albert R. 1982. User’s guide to the Stand Prognosis Model. Gen. Tech. Rep. INT-133. Ogden, UT: Forest Service, Intermountain Forest and Range Experiment Station. 112p.

# 11.0 Appendices

## 11.1 Appendix A: Plant Association Codes for Region 2 Forests

**Table 11.1.1 Plant association codes recognized in the CR variant in region 2 forests.**

| **PA FVS Sequence Number** | **Plant Association Codes** | **Plant Association Type Name** |
| --- | --- | --- |
| 1 | 00101 | White fir-Douglas-fir/Rocky Mountain maple |
| 2 | 001010 | White fir-Douglas-fir/Rocky Mountain maple/Rocky Mountain Maple |
| 3 | 001011 | White fir-Douglas-fir/Rocky Mountain maple/Oregon-grape |
| 4 | 001012 | White fir-Douglas-fir/Rocky Mountain maple/ocean spray |
| 5 | 001013 | White fir-Douglas-fir/Rocky Mountain maple/thinleaf alder |
| 6 | 00102 | White fir-Douglas-fir/sparse undergrowth |
| 7 | 00103 | White fir-Douglas-fir/forest fleabane |
| 8 | 00104 | White fir-Douglas-fir/Arizona fescue |
| 9 | 001040 | White fir-Douglas-fir/Arizona fescue/Arizona fescue |
| 10 | 001041 | White fir-Douglas-fir/Arizona fescue/Parry oatgrass |
| 11 | 00105 | White fir-Douglas-fir/Gambel oak |
| 12 | 001050 | White fir-Douglas-fir/Gambel oak/Gambel oak |
| 13 | 001052 | White fir-Douglas-fir/Gambel oak/Arizona fescue |
| 14 | 001053 | White fir-Douglas-fir/Gambel oak/fragrant bedstraw |
| 15 | 001054 | White fir-Douglas-fir/Gambel oak/mountain lover |
| 16 | 00109 | White fir-Douglas-fir/bearberry |
| 17 | 00110 | White fir-Douglas-fir/Rocky Mountain whortleberry |
| 18 | 00111 | White fir-Douglas-fir/Saskatoon serviceberry |
| 19 | 00112 | White fir-Douglas-fir/greenleaf manzanita |
| 20 | 00113 | White fir-Douglas-fir/ocean spray |
| 21 | 00114 | White fir-Douglas-fir/mountain snowberry |
| 22 | 00115 | White fir-limber pine/Arizona fescue |
| 23 | 00116 | White fir-Douglas-fir/common juniper |
| 24 | 00117 | White fir-Douglas-fir/Oregon-grape |
| 25 | 00118 | White fir-Douglas-fir/mallow ninebark |
| 26 | 00201 | Subalpine fir/elk sedge |
| 27 | 00203 | Subalpine fir/mountain lover |
| 28 | 00301 | Subalpine fir-Engelmann spruce/red baneberry |
| 29 | 00302 | Subalpine fir-Engelmann spruce/heartleaf arnica |
| 30 | 003020 | Subalpine fir-Engelmann spruce/heartleaf arnica/heartleaf arnica |
| 31 | 003021 | Subalpine fir-Engelmann spruce/heartleaf arnica/weedy milkvetch |
| 32 | 003022 | Subalpine fir-Engelmann spruce/heartleaf arnica/russet buffaloberry |
| 33 | 003023 | Subalpine fir-Engelmann spruce/heartleaf arnica/Engelmann spruce |
| 34 | 00303 | Subalpine fir-Engelmann spruce/broadleaf arnica |
| 35 | 00304 | Subalpine fir-Engelmann spruce/Oregon-grape |
| 36 | 00305 | Subalpine fir-Engelmann spruce/bluejoint reedgrass |
| 37 | 00306 | Subalpine fir-Engelmann spruce/mountain bluebells |
| 38 | 00307 | Subalpine fir-Engelmann spruce/elk sedge |
| 39 | 00308 | Subalpine fir-Engelmann spruce/forest fleabane |
| 40 | 00309 | Subalpine fir-Engelmann spruce/common juniper |
| 41 | 00310 | Subalpine fir-Engelmann spruce/American twinflower |
| 42 | 003100 | Subalpine fir-Engelmann spruce/American twinflower/American twinflower |
| 43 | 003101 | Subalpine fir-Engelmann spruce/American twinflower/broom huckleberry |
| 44 | 00311 | Subalpine fir-Engelmann spruce/moss species |
| 45 | 00313 | Subalpine fir-Engelmann spruce/mountain lover |
| 46 | 003130 | Subalpine fir-Engelmann spruce/mountain lover/mountain lover |
| 47 | 003131 | Subalpine fir-Engelmann spruce/mountain lover/Douglas-fir |
| 48 | 003132 | Subalpine fir-Engelmann spruce/mountain lover/mountain gooseberry |
| 49 | 00315 | Subalpine fir-Engelmann spruce/Wheeler bluegrass |
| 50 | 00316 | Subalpine fir-Engelmann spruce/arrowleaf groundsel |
| 51 | 00318 | Subalpine fir-Engelmann spruce/western meadow-rue |
| 52 | 00319 | Subalpine fir-Engelmann spruce/globe huckleberry |
| 53 | 003190 | Subalpine fir-Engelmann spruce/globe huckleberry/globe huckleberry |
| 54 | 003191 | Subalpine fir-Engelmann spruce/globe huckleberry/broom huckleberry |
| 55 | 00320 | Subalpine fir-Engelmann spruce/Rocky Mountain whortleberry |
| 56 | 003200 | Subalpine fir-Engelmann spruce/Rocky Mountain whortleberry/Rocky Mountain whortleberry |
| 57 | 003201 | Subalpine fir-Engelmann spruce/Rocky Mountain whortleberry/Jacob's ladder |
| 58 | 00321 | Subalpine fir-Engelmann spruce/broom huckleberry |
| 59 | 003210 | Subalpine fir-Engelmann spruce/broom huckleberry/broom huckleberry |
| 60 | 003211 | Subalpine fir-Engelmann spruce/broom huckleberry/whitebarkpine |
| 61 | 003212 | Subalpine fir-Engelmann spruce/broom huckleberry/Jacob's ladder |
| 62 | 003213 | Subalpine fir-Engelmann spruce/broom huckleberry/elk sedge |
| 63 | 003216 | Subalpine fir-Engelmann spruce/broom huckleberry/russet buffaloberry |
| 64 | 003217 | Subalpine fir-Engelmann spruce/broom huckleberry/heartleafarnica |
| 65 | 00322 | Subalpine fir-Engelmann spruce/currant species |
| 66 | 003220 | Subalpine fir-Engelmann spruce/currant species/currant species |
| 67 | 003221 | Subalpine fir-Engelmann spruce/currant species/Fendler meadow-rue |
| 68 | 00323 | Subalpine fir-Engelmann spruce/grayleaf willow |
| 69 | 00324 | Subalpine fir-Engelmann spruce/western thimbleberry |
| 70 | 003240 | Subalpine fir-Engelmann spruce/western thimbleberry/western thimbleberry |
| 71 | 003241 | Subalpine fir-Engelmann spruce/western thimbleberry/broom huckleberry |
| 72 | 00325 | Subalpine fir-Engelmann spruce/shiny-leaf spirea |
| 73 | 00326 | Subalpine fir-Engelmann spruce/Ross sedge |
| 74 | 00327 | Subalpine fir-Engelmann spruce/Rocky Mountain maple |
| 75 | 00328 | Subalpine fir-Engelmann spruce/pinegrass |
| 76 | 003280 | Subalpine fir-Engelmann spruce/pinegrass/pinegrass |
| 77 | 003281 | Subalpine fir-Engelmann spruce/pinegrass/mountain lover |
| 78 | 00329 | Subalpine fir-Engelmann spruce/dwarf bilberry |
| 79 | 00330 | Subalpine fir-Engelmann spruce/mallow ninebark |
| 80 | 00401 | Engelmann spruce/heartleaf arnica |
| 81 | 00402 | Engelmann spruce/elkslip marsh-marigold |
| 82 | 00403 | Engelmann spruce/soft leaved sedge |
| 83 | 00405 | Engelmann spruce-blue spruce/fragrant bedstraw |
| 84 | 00406 | Engelmann spruce/moss species |
| 85 | 00407 | Engelmann spruce/common juniper |
| 86 | 00408 | Engelmann spruce/American twinflower |
| 87 | 00409 | Engelmann spruce/mallow ninebark |
| 88 | 00413 | Engelmann spruce/whiproot clover |
| 89 | 00414 | Engelmann spruce/broom huckleberry |
| 90 | 004140 | Engelmann spruce/broom huckleberry/broom huckleberry |
| 91 | 004141 | Engelmann spruce/broom huckleberry/American bistort |
| 92 | 004142 | Engelmann spruce/broom huckleberry/silvery lupine |
| 93 | 004145 | Engelmann spruce/broom huckleberry/Jacob's ladder |
| 94 | 00415 | Engelmann spruce/Rocky Mountain whortleberry |
| 95 | 004150 | Engelmann spruce/Rocky Mountain whortleberry/Rocky Mountain whortleberry |
| 96 | 004151 | Engelmann spruce/Rocky Mounatin whortleberry/Jacob's ladder |
| 97 | 00416 | Engelmann spruce/Thurber fescue |
| 98 | 00417 | Engelmann spruce-Douglas-fir/common juniper |
| 99 | 00418 | Engelmann spruce/dwarf bilberry |
| 100 | 00501 | White spruce/sedge |
| 101 | 00502 | White spruce/common juniper |
| 102 | 00503 | White spruce/American twinflower |
| 103 | 005030 | White spruce/American twinflower/American twinflower |
| 104 | 005031 | White spruce/American twinflower/broom huckleberry |
| 105 | 005032 | White spruce/American twinflower/shiny-leaf spirea |
| 106 | 00601 | Blue spruce/Saskatoon serviceberry-redosier |
| 107 | 006010 | Blue spruce/Saskatoon serviceberry-redosier/Saskatoon serviceberry |
| 108 | 006011 | Blue spruce/Saskatoon serviceberry-redosier/redosier |
| 109 | 00602 | Blue spruce/heartleaf arnica |
| 110 | 00603 | Blue spruce/bluegrass species |
| 111 | 00604 | Blue spruce-Douglas-fir/American twinflower |
| 112 | 006040 | Blue spruce-Douglas-fir/American twinflower/American twinflower |
| 113 | 006043 | Blue spruce-Douglas-fir/American twinflower/common juniper |
| 114 | 00605 | Blue spruce/thinleaf alder |
| 115 | 00606 | Blue spruce-Douglas-fir/silvertop sedge |
| 116 | 00607 | Blue spruce-Douglas-fir/forest fleabane |
| 117 | 00608 | Blue spruce-Douglas-fir/bearberry |
| 118 | 00609 | Blue spruce-Douglas-fir/Arizona fescue |
| 119 | 006090 | Blue spruce-Douglas-fir/Arizona fescue/Arizona fescue |
| 120 | 006091 | Blue spruce-Douglas-fir/Arizona fescue/Parry oatgrass |
| 121 | 00610 | Blue spruce-Douglas-fir/Oregon-grape |
| 122 | 00611 | Blue spruce-Engelmann spruce/field horsetail |
| 123 | 00612 | Blue spruce-Douglas-fir/common juniper |
| 124 | 006120 | Blue spruce-Douglas-fir/common juniper/common juniper |
| 125 | 006121 | Blue spruce-Douglas-fir/common juniper/elk sedge |
| 126 | 00701 | Whitebark pine/elk sedge |
| 127 | 007010 | Whitebark pine/elk sedge/elk sedge |
| 128 | 007011 | Whitebark pine/elk sedge/lodgepole pine |
| 129 | 00702 | Whitebark pine/Ross sedge |
| 130 | 007020 | Whitebark pine/Ross sedge/Ross sedge |
| 131 | 007021 | Whitebark pine/Ross sedge/lodgepole pine |
| 132 | 00703 | Whitebark pine-limber pine/varileaf cinquefoil |
| 133 | 00704 | Whitebark pine/Idaho fescue |
| 134 | 00705 | Whitebark pine/common juniper |
| 135 | 007050 | Whitebark pine/common juniper/common juniper |
| 136 | 007051 | Whitebark pine/common juniper/buffaloberry |
| 137 | 00706 | Whitebark pine/broom huckleberry |
| 138 | 00801 | Bristlecone pine/Thurber fescue |
| 139 | 00802 | Bristlecone pine/Arizona fescue |
| 140 | 00803 | Bristlecone pine/whiproot clover |
| 141 | 00804 | Bristlecone pine/mountain gooseberry |
| 142 | 00805 | Bristlecone pine/common juniper |
| 143 | 00901 | Lodgepole pine/bearberry |
| 144 | 00903 | Lodgepole pine/elk sedge |
| 145 | 009030 | Lodgepole pine/elk sedge/elk sedge |
| 146 | 009031 | Lodgepole pine/elk sedge/mountain lover |
| 147 | 00905 | Lodgepole pine/common juniper |
| 148 | 00907 | Lodgepole pine/Wheeler bluegrass |
| 149 | 00908 | Lodgepole pine/russet buffaloberry |
| 150 | 009080 | Lodgepole pine/russet buffaloberry/russet buffaloberry |
| 151 | 009081 | Lodgepole pine/russet buffaloberry/mountain lover |
| 152 | 00909 | Lodgepole pine/Rocky Mountain whortleberry |
| 153 | 00910 | Lodgepole pine/broom huckleberry |
| 154 | 00911 | Lodgepole pine/Ross sedge |
| 155 | 00912 | Lodgepole pine/dwarf bilberry |
| 156 | 01001 | Limber pine/bluebunch wheatgrass |
| 157 | 01002 | Limber pine/purple pinegrass |
| 158 | 01003 | Limber pine/Idaho fescue |
| 159 | 01004 | Limber pine/spike-fescue |
| 160 | 010040 | Limber pine/spike-fescue/spike-fescue |
| 161 | 010041 | Limber pine/spike-fescue/American pasque-flower |
| 162 | 010042 | Limber pine/spike-fescue/prairie junegrass |
| 163 | 01005 | Limber pine/common juniper |
| 164 | 01006 | Limber pine/whiproot clover |
| 165 | 01007 | Limber pine/curlleaf mountain-mahogany |
| 166 | 01008 | Limber pine/creeping juniper |
| 167 | 01009 | Limber pine/Thurber fescue |
| 168 | 01010 | Limber pine/common chokecherry |
| 169 | 01101 | Ponderosa pine-juniper species/bluebunch wheatgrass |
| 170 | 01102 | Ponderosa pine/little bluestem-western wheatgrass |
| 171 | 01103 | Ponderosa pine-juniper species/blue grama |
| 172 | 01104 | Ponderosa pine/sideoats grama |
| 173 | 01105 | Ponderosa pine/elk sedge |
| 174 | 011050 | Ponderosa pine/elk sedge/elk sedge |
| 175 | 011051 | Ponderosa pine/elk sedge/silvery lupine |
| 176 | 011052 | Ponderosa pine/elk sedge/yellow stonecrop |
| 177 | 01106 | Ponderosa pine/Ross sedge |
| 178 | 01107 | Ponderosa pine/true mountain-mahogany |
| 179 | 01108 | Ponderosa pine/timber oatgrass |
| 180 | 01109 | Ponderosa pine/Arizona fescue |
| 181 | 011090 | Ponderosa pine/Arizona fescue/Arizona fescue |
| 182 | 011091 | Ponderosa pine/Arizona fescue/Parry oatgrass |
| 183 | 011092 | Ponderosa pine/Arizona fescue/blue grama |
| 184 | 01110 | Ponderosa pine/Idaho fescue |
| 185 | 011100 | Ponderosa pine/Idaho fescue/Idaho fescue |
| 186 | 011101 | Ponderosa pine/Idaho fescue/greenleaf manzanita |
| 187 | 01111 | Ponderosa pine/spike-fescue |
| 188 | 01112 | Ponderosa pine/common juniper |
| 189 | 01113 | Ponderosa pine/common juniper-common snowberry |
| 190 | 01115 | Ponderosa pine-juniper species/true mountain-mahogany |
| 191 | 01117 | Ponderosa pine-Douglas-fir/mountain muhly |
| 192 | 011170 | Ponderosa pine-Douglas-fir/mountian muhly/mountain muhly |
| 193 | 011171 | Ponderosa pine-Douglas-fir/mountain muhly/Fendler ceanothus |
| 194 | 011172 | Ponderosa pine-Douglas-fir/mountain muhly/thickspike wheatgrass |
| 195 | 01118 | Ponderosa pine/pinyon-Gambel oak |
| 196 | 01119 | Ponderosa pine/mountain ninebark |
| 197 | 01120 | Ponderosa pine/antelope bitterbrush |
| 198 | 01121 | Ponderosa pine/Gambel oak |
| 199 | 011210 | Ponderosa pine/Gambel oak/Gambel oak |
| 200 | 011211 | Ponderosa pine/Gambel oak/Arizona fescue |
| 201 | 011214 | Ponderosa pine/Gambel oak/mountain snowberry |
| 202 | 011215 | Ponderosa pine/Gambel oak/inland box-elder |
| 203 | 01122 | Ponderosa pine/common chokecherry |
| 204 | 011220 | Ponderosa pine/common chokecherry/common chokecherry |
| 205 | 011221 | Ponderosa pine/common chokecherry/silvertop sedge |
| 206 | 011222 | Ponderosa pine/common chokecherry/Saskatoon serviceberry |
| 207 | 011224 | Ponderosa pine/common chokecherry/Oregon-grape |
| 208 | 011225 | Ponderosa pine/common chokecherry/bur oak |
| 209 | 011226 | Ponderosa pine/common chokecherry/big bluestem |
| 210 | 01123 | Ponderosa pine/shiny spirea |
| 211 | 01124 | Ponderosa pine/common snowberry |
| 212 | 011240 | Ponderosa pine/common snowberry/common snowberry |
| 213 | 011242 | Ponderosa pine/common snowberry/roughleaf ricegrass |
| 214 | 011243 | Ponderosa pine/common snowberry/Oregon-grape |
| 215 | 01125 | Ponderosa pine/bluebunch wheatgrass |
| 216 | 011250 | Ponderosa pine/bluebunch wheatgrass/bluebunch wheatgrass |
| 217 | 011251 | Ponderosa pine/bluebunch wheatgrass/big sagebrush |
| 218 | 01126 | Ponderosa pine/sun sedge |
| 219 | 01127 | Ponderosa pine/blue grama |
| 220 | 011270 | Ponderosa pine/blue grama/blue grama |
| 221 | 011272 | Ponderosa pine/blue grama/sand bluestem |
| 222 | 011273 | Ponderosa pine/blue grama/big sagebrush |
| 223 | 011274 | Ponderosa pine/Blue grama/pinyon |
| 224 | 01128 | Ponderosa pine/little bluestem |
| 225 | 011280 | Ponderosa pine/little bluestem/little bluestem |
| 226 | 011281 | Ponderosa pine/little bluestem/wavyleaf oak |
| 227 | 01129 | Ponderosa pine/greenleaf manzanita |
| 228 | 011290 | Ponderosa pine/greenleaf manzanita/greenleaf manzanita |
| 229 | 011291 | Ponderosa pine/greenleaf manzanita/true mountain-mahogany |
| 230 | 01131 | Ponderosa pine/black sagebrush |
| 231 | 01132 | Ponderosa pine/curlleaf mountain-mahogany |
| 232 | 01140 | Ponderosa pine/bearberry |
| 233 | 01150 | Ponderosa pine-juniper species/western snowberry |
| 234 | 01151 | Ponderosa pine/bur oak |
| 235 | 01201 | Douglas-fir/Rocky Mountain maple |
| 236 | 012010 | Douglas-fir/Rocky Mountain maple/Rocky Mountain maple |
| 237 | 012011 | Douglas-fir/Rocky Mountain maple/mountain lover |
| 238 | 012012 | Douglas-fir/Rocky Moutain maple/mountain snowberry |
| 239 | 01202 | Douglas-fir/heartleaf arnica |
| 240 | 012020 | Douglas-fir/heartleaf arnica/heartleaf arnica |
| 241 | 012021 | Douglas-fir/heartleaf arnica/weedy milkvetch |
| 242 | 01203 | Douglas-fir/Oregon-grape |
| 243 | 012030 | Douglas-fir/Oregon-grape/Oregon-grape |
| 244 | 012032 | Douglas-fir/Oregon-grape/common juniper |
| 245 | 01204 | Douglas-fir/Ross sedge |
| 246 | 01205 | Douglas-fir/pinegrass |
| 247 | 012050 | Douglas-fir/pinegrass/pinegrass |
| 248 | 012052 | Douglas-fir/pinegrass/Idaho fescue |
| 249 | 012053 | Douglas-fir/pinegrass/ponderosa pine |
| 250 | 01206 | Douglas-fir/elk sedge |
| 251 | 01207 | Douglas-fir/true mountain-mahogany |
| 252 | 01208 | Douglas-fir/Idaho fescue |
| 253 | 01209 | Douglas-fir/waxflower |
| 254 | 01210 | Douglas-fir/common juniper |
| 255 | 01211 | Douglas-fir/mountain lover |
| 256 | 01212 | Douglas-fir/mallow ninebark |
| 257 | 01213 | Douglas-fir/mountain ninebark |
| 258 | 01214 | Douglas-fir/Gambel oak |
| 259 | 012140 | Douglas-fir/Gambel oak/Gambel oak |
| 260 | 012141 | Douglas-fir/Gambel oak/Arizona fescue |
| 261 | 01215 | Douglas-fir/shiny-leaf spirea |
| 262 | 012150 | Douglas-fir/shiny-leaf spirea/shiny-leaf spirea |
| 263 | 012151 | Douglas-fir/shiny-leaf spirea/pinegrass |
| 264 | 012153 | Douglas-fir/shiny-leaf spirea/ponderosa pine |
| 265 | 01216 | Douglas-fir/common snowberry |
| 266 | 01217 | Douglas-fir/mountain snowberry |
| 267 | 012170 | Douglas-fir/mountain snowberry/mountain snowberry |
| 268 | 012171 | Douglas-fir/mountain snowberry/Oregon-grape |
| 269 | 012172 | Douglas-fir/mountain snowberry/elk sedge |
| 270 | 012173 | Douglas-fir/mountain snowberry/spike-fescue |
| 271 | 012174 | Douglas-fir/mountain snowberry/bluebunch wheatgrass |
| 272 | 01218 | Douglas-fir/globe huckleberry |
| 273 | 01219 | Douglas-fir/bearberry-common juniper |
| 274 | 01220 | Douglas-fir/greenleaf manzanita |
| 275 | 01221 | Douglas-fir/antelope bitterbrush |
| 276 | 01222 | Douglas-fir/Saskatoon serviceberry |
| 277 | 01223 | Douglas-fir/curlleaf mountain-mahogany |
| 278 | 01233 | Douglas-fir/Arizona fescue |
| 279 | 01241 | Douglas-fir/ocean spray |
| 280 | 01702 | Green ash/common chokecherry |
| 281 | 10202 | Ironwood/succulent hawthorn |
| 282 | 10203 | Ironwood-bur oak/sparse understory |
| 283 | 10301 | Narrowleaf cottonwood/Saskatoon serviceberry |
| 284 | 103010 | Narrowleaf cottonwood/Saskatoon serviceberry/Saskatoon serviceberry |
| 285 | 103011 | Narrowleaf cottonwood/Saskatoon serviceberry/inland box-elder |
| 286 | 10302 | Narrowleaf cottonwood/sandbar willow-river birch |
| 287 | 10303 | Narrowleaf cottonwood/river birch-currant species |
| 288 | 10304 | Narrowleaf cottonwood/mountain ninebark-common chokecherry |
| 289 | 10305 | Narrowleaf cottonwood-Engelmann spruce/bush honeysuckle |
| 290 | 10306 | Narrowleaf cottonwood/thinleaf alder-redosier |
| 291 | 10401 | Plains cottonwood/western snowberry-giant wildrye |
| 292 | 104010 | Plains cottonwood/western snowberry-giant wildrye/western snowberry |
| 293 | 104011 | Plains cottonwood/western snowberry-giant wildrye/redosier |
| 294 | 10402 | Plains cottonwood-narrowleaf cottonwood/willow species |
| 295 | 10403 | Plains cottonwood/willow species |
| 296 | 10404 | Plains cottonwood/American black currant |
| 297 | 10405 | Plains cottonwood/western snowberry-sandbar willow |
| 298 | 10501 | Quaking aspen/elk sedge |
| 299 | 10502 | Quaking aspen/beaked hazel |
| 300 | 105020 | Quaking aspen/beaked hazel/beaked hazel |
| 301 | 105021 | Quaking aspen/beaked hazel/bracken |
| 302 | 105022 | Quaking aspen/beaked hazel/wild sarsaparilla |
| 303 | 10503 | Quaking aspen/Thurber fescue |
| 304 | 10504 | Quaking aspen/common cow-parsnip |
| 305 | 10505 | Quaking aspen/aspen peavine |
| 306 | 10507 | Quaking aspen/silvery lupine |
| 307 | 10508 | Quaking aspen/common juniper |
| 308 | 10510 | Quaking aspen/bracken |
| 309 | 10511 | Quaking aspen/mountain snowberry |
| 310 | 10512 | Quaking aspen/Fendler meadow-rue |
| 311 | 105120 | Quaking aspen/Fendler meadow-rue/Fendler meadow-rue |
| 312 | 105121 | Quaking aspen/Fendler meadow-rue/golden banner |
| 313 | 105123 | Quaking aspen/Fendler meadow-rue/stinging nettle |
| 314 | 10513 | Quaking aspen/false-hellebore |
| 315 | 10514 | Quaking aspen/big sagebrush |
| 316 | 10515 | Quaking aspen/Saskatoon serviceberry |
| 317 | 105150 | Quaking aspen/Saskatoon serviceberry/Saskatoon serviceberry |
| 318 | 105151 | Quaking aspen/Saskatoon serviceberry/Rocky Mountain maple |
| 319 | 105152 | Quaking aspen/Saskatoon serviceberry/Gambel oak |
| 320 | 105153 | Quaking aspen/Saskatoon serviceberry/Engelmann aster |
| 321 | 105154 | Quaking aspen/Saskatoon serviceberry/balsam poplar |
| 322 | 10516 | Quaking aspen/sticky-laurel |
| 323 | 10517 | Quaking aspen/pinegrass |
| 324 | 10518 | Quaking aspen/lovage species |
| 325 | 10519 | Quaking aspen/common chokecherry |
| 326 | 105190 | Quaking aspen/common chokecherry/common chokecherry |
| 327 | 105191 | Quaking aspen/common chokecherry/common snowberry |
| 328 | 10520 | Quaking aspen/Oregon-grape |
| 329 | 10521 | Quaking aspen/bearberry |
| 330 | 10522 | Quaking aspen/Arizona fescue |
| 331 | 10523 | Quaking aspen/black elderberry |
| 332 | 10601 | Bur oak/western snowberry |
| 333 | 106010 | Bur oak/western snowberry/western snowberry |
| 334 | 106011 | Bur oak/western snowberry/quaking aspen |
| 335 | 10603 | Bur oak/hazelnut species |
| 336 | 10701 | Green ash/western snowberry |
| 337 | 107010 | Green ash/western snowberry/western snowberry |
| 338 | 107011 | Green ash/western snowberry/prairie sandreed |
| 339 | 107020 | Green ash/common chokecherry/common chokecherry |
| 340 | 107021 | Green ash/common chokecherry/Sprengel's sedge |
| 341 | 10801 | Paper birch/beaked hazel |
| 342 | 10901 | Balsam poplar/redosier |
| 343 | 12051 | Douglas-fir/pinegrass/mountain lover |
| 344 | 20101 | Oneseed juniper/sideoats grama |
| 345 | 20102 | Oneseed juniper/blue grama |
| 346 | 20103 | Oneseed juniper/western wheatgrass |
| 347 | 20201 | Pinyon-Utah juniper/beardless bluebunch wheatgrass |
| 348 | 20202 | Utah juniper/big sagebrush |
| 349 | 20203 | Utah juniper/true mountain-mahogany-squaw-apple |
| 350 | 202030 | Utah juniper/true mountain-mahogany-squaw-apple/true mountain-mahogany |
| 351 | 202031 | Utah juniper/true mountain-mahogany-squaw-apple/Wyoming big sagebrush |
| 352 | 20204 | Utah juniper/Indian ricegrass |
| 353 | 20205 | Utah juniper/yellow-wood |
| 354 | 20206 | Utah juniper/Salina wildrye |
| 355 | 20301 | Rocky Mountain juniper/western wheatgrass |
| 356 | 20302 | Rocky Mountain juniper/big sagebrush |
| 357 | 20303 | Rocky Mountain juniper/bluebunch wheatgrass |
| 358 | 20304 | Rocky Mountain juniper/true mountain-mahogany |
| 359 | 20306 | Rocky Mountain juniper/antelope bitterbrush |
| 360 | 20307 | Rocky Mountain juniper/little ricegrass |
| 361 | 20401 | Pinyon-Utah juniper/big sagebrush |
| 362 | 204010 | Pinyon-Utah juniper/big sagebrush/big sagebrush |
| 363 | 204011 | Pinyon-Utah juniper/big sagebrush/blue grama |
| 364 | 20402 | Pinyon/blue grama |
| 365 | 20403 | Pinyon-Utah juniper/Utah serviceberry-true mountain-mahogany |
| 366 | 204030 | Pinyon-Utah juniper/Utah serviceberry-true mountain-mahogany/Utah serviceberry |
| 367 | 204031 | Pinyon-Utah juniper/Utah serviceberry-true mountain-mahogany/greenleaf manzanite |
| 368 | 20404 | Pinyon/Gambel oak |
| 369 | 20405 | Pinyon-Utah juniper/antelope bitterbrush |
| 370 | 20406 | Pinyon-Utah juniper/muttongrass |
| 371 | 20407 | Pinyon-oneseed juniper/true mountain-mahogany |
| 372 | 20408 | Pinyon-oneseed juniper/Nelson's needlegrass |
| 373 | 20409 | Pinyon-Utah juniper/true mountain-mahogany |
| 374 | 204090 | Pinyon-Utah juniper/true mountain-mahogany/true mountain-mahogany |
| 375 | 204091 | Pinyon-Utah juniper/true mountain-mahogany/Gambel oak |
| 376 | 20410 | Pinyon/black sagebrush |

## 11.2 Appendix B: Plant Association Codes for Region 3 Forests

**Table 11.2.1 Plant association codes recognized in the CR variant in region 3 forests.**

| **PA FVS Sequence Number** | **Plant Association Codes** | **Plant Association Type Name** |
| --- | --- | --- |
| 377 | 001010 | White fir/Rocky Mountain maple |
| 378 | 001011 | Oregongrape phase |
| 379 | 001012 | Rockspirea phase |
| 380 | 001013 | Riparian phase |
| 381 | 001020 | White fir/Oregongrape |
| 382 | 001021 | New Mexico Locust phase |
| 383 | 001022 | Common juniper phase |
| 384 | 001030 | White fir/sprucefir fleabane |
| 385 | 001040 | White fir/Arizona fescue |
| 386 | 001041 | Muttongrass phase |
| 387 | 001042 | Gambel oak phase |
| 388 | 001050 | White fir/Gambel oak |
| 389 | 001051 | Screwleaf muhly phase |
| 390 | 001052 | Arizona fescue phase |
| 391 | 001053 | Pine muhly phase |
| 392 | 001054 | Rockspirea phase |
| 393 | 001060 | White fir/Screwleaf muhly |
| 394 | 001070 | White fir/Arizona peavine |
| 395 | 001080 | White fir/Bigtooth maple |
| 396 | 001081 | Rockspirea phase |
| 397 | 001090 | White fir/Kinnikinnik |
| 398 | 001100 | White fir/Whortleberry |
| 399 | 001110 | White fir/New Mexico locust |
| 400 | 001111 | Dryspike sedge phase |
| 401 | 001120 | White fir/Beardless wildrye |
| 402 | 001130 | White fir/Arizona walnut |
| 403 | 001140 | White fir/whortleleaf snowberry ponderosa pine series |
| 404 | 001141 | Limber pine phase |
| 405 | 001150 | White fir/dryspike sedge |
| 406 | 001160 | White fir/burnet ragwort |
| 407 | 003 | Abies bifolia (corkbark fir) |
| 408 | 003060 | Corkbark fir/mountain bluebells |
| 409 | 003080 | Corkbark fir/sprucefir fleabane |
| 410 | 003090 | Subalpine fir/common juniper |
| 411 | 003110 | Corkbark fir/Moss |
| 412 | 003111 | Engelmann spruce phase |
| 413 | 003112 | Douglas-fir phase |
| 414 | 003200 | Corkbark fir/Whortleberry |
| 415 | 003201 | Twinflower phase |
| 416 | 003202 | Thimbleberry phase |
| 417 | 003203 | Cliffbrush phase |
| 418 | 003231 | Rocky Mountain maple Phase |
| 419 | 003240 | Corkbark fir/Thimbleberry |
| 420 | 003300 | Corkbark fir/Burnet ragwort |
| 421 | 003301 | Douglas-fir phase |
| 422 | 003310 | Corkbark fir/Arizona peavine |
| 423 | 003320 | Corbark fir/cliffbush |
| 424 | 003350 | Corkbark fir/scree |
| 425 | 003370 | Corkbark fir/dryspike sedge |
| 426 | 004060 | Engelmann spruce/Moss typic phase |
| 427 | 004061 | Typical phase |
| 428 | 004062 | Interior Douglas-fir phase |
| 429 | 00415 | Engelmann spruce/Whortleberry-skunkweed polemonium |
| 430 | 004151 | Engelmann spruce phase |
| 431 | 004152 | Corkbark fir phase |
| 432 | 004300 | Engelmann spruce/Rocky Mountain maple |
| 433 | 004310 | Engelmann spruce/Sprucefir fleabane |
| 434 | 004320 | Engelmann spruce/beardless wildrye |
| 435 | 004330 | Engelmann spruce/Ross avens |
| 436 | 004340 | Engelmann spruce/gooseberry currant |
| 437 | 00435 | Engelmann spruce/bittercress ragwort |
| 438 | 004350 | Corkbark phase |
| 439 | 004351 | White fir phase |
| 440 | 004360 | Engelmann spruce/Whortleberry |
| 441 | 006010 | Blue spruce/Redosier dogwood |
| 442 | 00604 | Blue spruce/Twinflower |
| 443 | 006060 | Blue spruce/Dryspike sedge |
| 444 | 006070 | Blue spruce/Sprucefir fleabane |
| 445 | 006071 | Ponderosa pine phase |
| 446 | 006080 | Blue spruce/Kinnikinnik |
| 447 | 006090 | Blue spruce/Arizona fescue |
| 448 | 006130 | Blue spruce/bittercress ragwort |
| 449 | 011 | Picea pungens (blue spruce) |
| 450 | 011030 | Ponderosa pine/blue grama |
| 451 | 011031 | Little bluestem phase |
| 452 | 011032 | Sand bluestem phase |
| 453 | 011033 | Big sagebrush phase |
| 454 | 011034 | Gray oak phase |
| 455 | 011035 | Gambel oak phase |
| 456 | 011090 | Ponderosa pine/Arizona fescue phase |
| 457 | 011091 | Parry danthonia phase |
| 458 | 011092 | Blue grama phase |
| 459 | 011093 | Gambel oak phase |
| 460 | 011130 | White fir/scree |
| 461 | 011210 | Ponderosa pine/Gambel oak |
| 462 | 011211 | Arizona fescue phase |
| 463 | 011212 | Longtongue muhly phase |
| 464 | 011213 | Twoneedle pinyon phase |
| 465 | 011214 | Mountain muhly phase |
| 466 | 011215 | Blue grama phase |
| 467 | 011216 | New Mexico locust phase |
| 468 | 011220 | Ponderosa pine/Silverleaf oak |
| 469 | 011320 | Ponderosa pine/Stansbury cliffrose |
| 470 | 011330 | Ponderosa pine/mountain muhly |
| 471 | 011340 | Ponderosa pine/screwleaf muhly |
| 472 | 011341 | Gambel oak phase |
| 473 | 011350 | Ponderosa pine/Indian ricegrass |
| 474 | 011360 | Ponderosa pine/Gray oak /mountain muhly phase |
| 475 | 011361 | Longtongue muhly phase |
| 476 | 011370 | Ponderosa pine/wavyleaf oak |
| 477 | 011380 | Ponderosa pine/black sagebrush |
| 478 | 011390 | Ponderosa pine/screwleaf muhly -Arizona fescue |
| 479 | 011391 | Blue grama phase |
| 480 | 011392 | Gambel oak phase |
| 481 | 011400 | Ponderosa pine/kinnikinnik |
| 482 | 011410 | Ponderosa pine/Arizona white oak |
| 483 | 011411 | Blue grama phase |
| 484 | 011420 | Ponderosa pine/pointleaf manzanita c. t. |
| 485 | 011430 | Ponderosa pine/netleaf oak |
| 486 | 011440 | Ponderosa pine/Emory oak |
| 487 | 011460 | Ponderosa pine/scree |
| 488 | 011470 | Ponderosa pine/Arizona walnut |
| 489 | 011500 | Ponderosa pine/rockland |
| 490 | 01203 | Douglas-fir/Oregongrape |
| 491 | 01213 | Douglas-fir/mountain ninebark |
| 492 | 012140 | Douglas-fir/Gambel oak |
| 493 | 012141 | Arizona fescue phase |
| 494 | 012142 | Screwleaf muhly phase |
| 495 | 012143 | Rockspirea phase |
| 496 | 01231 | Douglas-fir/kinnikinnik |
| 497 | 012320 | Douglas-fir/fringed brome |
| 498 | 012330 | Douglas-fir/Arizona fescue |
| 499 | 012331 | Bristlecone pine phase |
| 500 | 012332 | Limber pine phase |
| 501 | 012333 | Aspen phase |
| 502 | 012340 | Douglas-fir/Mountain muhly / twoneedle pinyon phase |
| 503 | 012341 | Limber pine phase |
| 504 | 012350 | Douglas-fir/screwleaf muhly |
| 505 | 012360 | Douglas-fir/Silverleaf oak ponderosa pine phase |
| 506 | 012361 | Chihuahuan pine phase |
| 507 | 012362 | Netleaf oak phase |
| 508 | 012380 | Douglas-fir/scree |
| 509 | 01239 | Douglas-fir/bigtooth maple |
| 510 | 01241 | Douglas-fir/rockspirea |
| 511 | 01242 | Douglas-fir/wavyleak oak |
| 512 | 012430 | Douglas-fir/Arizona white oak |
| 513 | 03101 | Arizona cypress/silverleaf oak |
| 514 | 03102 | Arizona cypress/shrub live oak |
| 515 | 032010 | Apache pine/longtongue muhly |
| 516 | 032030 | Apache pine/silverleaf oak |
| 517 | 033010 | Chihuahuan pine/pinyon ricegrass |
| 518 | 033020 | Chihuahuan pine/Arizona white oak |
| 519 | 033030 | Chihuahuan pine/Silverleaf oak |
| 520 | 103 | Populus angustifolia (narrowleaf cotonwood) |
| 521 | 104 | Populus deltoides spp. wislizeni (Rio Grande cotonwood) |
| 522 | 123 | Alnus tenuifolia (thinleaf alder) |
| 523 | 130 | Platanus wrightii (Arizona sycamore) |
| 524 | 201010 | Oneseed juniper/sideoats grama |
| 525 | 201011 | Beargrass phase |
| 526 | 201020 | Oneseed juniper/blue grama |
| 527 | 201040 | Oneseed juniper/big sagebrush |
| 528 | 201331 | Oneseed juniper/Rabbitbrush-Apacheplume |
| 529 | 201332 | Big sagebrush phase |
| 530 | 201333 | Gray oak phase |
| 531 | 201340 | Oneseed juniper/sand bluestem |
| 532 | 201350 | Oneseed juniper/Bigelow sagebrush |
| 533 | 20140 | Oneseed juniper/winterfat |
| 534 | 201400 | Oneseed juniper/wavyleaf oak |
| 535 | 201410 | Oneseed juniper/sacahuista-lecheguilla |
| 536 | 201420 | Oneseed juniper/lecheguilla |
| 537 | 201430 | Pinchot juniper/creosotebush |
| 538 | 202020 | Utah juniper/big sagebrush |
| 539 | 202320 | Utah juniper/blue grama |
| 540 | 202321 | Cliffrose phase |
| 541 | 202330 | Utah juniper/tobosagrass mesquite phase |
| 542 | 202331 | Arizona pinyon phase |
| 543 | 202500 | Utah Juniper-oneseed juniper/sparse c.t. |
| 544 | 204010 | Twoneedle pinyon/big sagebrush Utah juniper phase |
| 545 | 204011 | Oneseed juniper phase |
| 546 | 204012 | Rocky Mountain juniper phase |
| 547 | 204021 | Twoneedle pinyon/blue gama Utah juniper phase |
| 548 | 204022 | Oneseed juniper phase |
| 549 | 204023 | Alligator juniper phase |
| 550 | 204024 | Hillslope phase |
| 551 | 204031 | Twoneedle pinyon/treu mountain mahogany wavyleaf oak phase |
| 552 | 204032 | Gray oak phase |
| 553 | 204033 | Gambel oak phase |
| 554 | 20404 | Twoneedle pinyon/Gambel oak |
| 555 | 204050 | Twoneedle pinyon/antelope bitterbrush |
| 556 | 20406 | Twoneedle pinyon/Muttongrass |
| 557 | 20410 | Twoneedle pinyon/pine muhly |
| 558 | 20411 | Twoneedle pinyon/New Mexico muhly |
| 559 | 204300 | Twoneedle pinyon/sand bluestem |
| 560 | 20431 | Twoneedle pinyon/Arizona fescue |
| 561 | 204320 | Twoneedle pinyon/Stansbury cliffrose |
| 562 | 204321 | Big sagebrush phase |
| 563 | 204330 | Twoneedle pinyon/Rabbitbrush-Apacheplume |
| 564 | 204350 | Twoneedle pinyon/rockland |
| 565 | 204360 | Twoneedle pinyon/wavyleaf oak |
| 566 | 204370 | Twoneedle pinyon/Dore needlegrass |
| 567 | 204400 | Twoneedle pinyon/manzanita |
| 568 | 20441 | Twoneedle pinyon/blackbrush |
| 569 | 204500 | Twoneedle pinyon/sparse c. t. |
| 570 | 230030 | Redberry juniper/crucifixion thorn |
| 571 | 230040 | Redberry juniper/shrub live oak shrub live oak phase |
| 572 | 230041 | Mesquite phase |
| 573 | 230042 | Blue grama phase |
| 574 | 231010 | Alligator juniper/pointleal manzanita |
| 575 | 231020 | Alligator juniper/blue grama |
| 576 | 231021 | Mesquite phase |
| 577 | 231030 | Alligator juniper/desert ceanothus |
| 578 | 231040 | Alligator juniper/skunkbush sumac |
| 579 | 231050 | Alligator juniper/Bullgrass |
| 580 | 232020 | Border pinyon/Mexican orange |
| 581 | 232030 | Border pinyon/bullgrass |
| 582 | 23204 | Border pinyon/pinyon ricegrass |
| 583 | 232050 | Border pinyon/Toumey oak |
| 584 | 232060 | Border pinyon/silverleaf oak |
| 585 | 232070 | Border pinyon/evergreen sumac |
| 586 | 232330 | Border pine/Rabbitbrush-Apacheplume |
| 587 | 233010 | Arizona twoneedle pinyon/manzanita |
| 588 | 233020 | Arizona twoneedle pinyon/blue gama alligator juniper phase |
| 589 | 233021 | Utah juniper phase |
| 590 | 233022 | Cliffrose phase |
| 591 | 233030 | Arizona twoneedle pinyon/crucifixion thorn |
| 592 | 233040 | Arizona pinyon/shrub live oak vegetation |
| 593 | 233041 | Typic phase |
| 594 | 233042 | Cliffrose phase |
| 595 | 233050 | Arizona twoneedle pinyon/banana yucca |
| 596 | 233330 | Arizona pinyon/Rabbitbrush-Apacheplume |
| 597 | 238040 | Bristlecone pine/Gooseberry current |
| 598 | 238300 | Bristlecone pine/Arizona fescue |
| 599 | 238310 | Bristlecone pine/Thurber fescue |
| 600 | 240300 | Limber pine/Kinnikinnik |
| 601 | 25000 | Scarp Woodland |
| 602 | 335 | Salix bebbiana (Bebb willow) |
| 603 | 610010 | Mexican blue oak/mixed grama |
| 604 | 610020 | Mexican blue oak/common sotol |
| 605 | 620010 | Emory oak/pointleaf manzanita |
| 606 | 620020 | Emory oak/sideoats grama |
| 607 | 620021 | Sacahuista phase |
| 608 | 620030 | Emory oak/common sotol |
| 609 | 620040 | Emory oak/Arizona walnut |
| 610 | 630010 | Gray oak/sideoats grama |
| 611 | 630020 | Gray oak/true mountain mahogany |
| 612 | 630030 | Arizona white oak/bullgrass |
| 613 | 630040 | Arizona white oak/skunkbush sumac |
| 614 | 630041 | Alligator juniper phase |
| 615 | 630042 | Oneseed juniper phase |
| 616 | 630043 | Pinyon ricegrass phase |
| 617 | 630050 | Arizona white oak/pinyon ricegrass |
| 618 | 650010 | Silverleaf oak/longtongue muhly |

The U.S. Department of Agriculture (USDA) prohibits discrimination in all its programs and activities on the basis of race, color, national origin, sex, religion, age, disability, political beliefs, sexual orientation, or marital or family status. (Not all prohibited bases apply to all programs.) Persons with disabilities who require alternative means for communication of program information (Braille, large print, audiotape, etc.) should contact USDA’s TARGET Center at (202) 720-2600 (voice and TDD).

To file a complaint of discrimination, write USDA, Director, Office of Civil Rights, Room 326-W, Whitten Building, 1400 Independence Avenue, SW, Washington, DC 20250-9410 or call (202) 720-5964 (voice or TDD). USDA is an equal opportunity provider and employer.