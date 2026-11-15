Lake States (LS) Variant Overview of the Forest Vegetation Simulator

July 2026

**![](data:image/jpeg;base64...)**

Chequamegon-Nicolet NF

(Barbara Billings-Mattarn, FS-R9)

Lake States (LS) Variant Overview of the Forest Vegetation Simulator

# Authors and Contributors:

The FVS staff has maintained model documentation for this variant in the form of a variant overview since its release in 1993. The original authors were Renate Bush and Gary Brand. In 2006, Gary Dixon reformulated many of the model components, created a test version of the variant and wrote this new variant overview. In 2008, the previous document was replaced with this updated variant overview. Gary Dixon, Christopher Dixon, Robert Havis, Chad Keyser, Stephanie Rebain, Erin Smith-Mateja, and Don Vandendriesche were involved with this update. Gary Dixon cross-checked information contained in this variant overview with the FVS source code.

FVS Staff. 2008 (revised July 9, 2026). Lake States (LS) Variant Overview – Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 54p.

Table of Contents

[Authors and Contributors: ii](#_Toc209542532)

[1.0 Introduction 1](#_Toc209542533)

[2.0 Geographic Range 2](#_Toc209542534)

[3.0 Control Variables 3](#_Toc209542535)

[3.1 Location Codes 3](#_Toc209542536)

[3.2 Species Codes 4](#_Toc209542537)

[3.3 Habitat Type, Plant Association, and Ecological Unit Codes 7](#_Toc209542538)

[3.4 Site Index 7](#_Toc209542539)

[3.5 Maximum Density 8](#_Toc209542540)

[4.0 Growth Relationships 10](#_Toc209542541)

[4.1 Height-Diameter Relationships 10](#_Toc209542542)

[4.2 Bark Ratio Relationships 13](#_Toc209542543)

[4.3 Crown Ratio Relationships 13](#_Toc209542544)

[4.3.1 Crown Ratio Dubbing 13](#_Toc209542545)

[4.3.2 Crown Ratio Change 14](#_Toc209542546)

[4.3.3 Crown Ratio for Newly Established Trees 14](#_Toc209542547)

[4.4 Crown Width Relationships 15](#_Toc209542548)

[4.5 Crown Competition Factor 19](#_Toc209542549)

[4.6 Small Tree Growth Relationships 20](#_Toc209542550)

[4.6.1 Small Tree Height Growth 20](#_Toc209542551)

[4.6.2 Small Tree Diameter Growth 21](#_Toc209542552)

[4.7 Large Tree Growth Relationships 21](#_Toc209542553)

[4.7.1 Large Tree Diameter Growth 21](#_Toc209542554)

[4.7.2 Large Tree Height Growth 26](#_Toc209542555)

[5.0 Mortality Model 30](#_Toc209542556)

[6.0 Regeneration 34](#_Toc209542557)

[7.0 Volume 40](#_Toc209542558)

[8.0 Fire and Fuels Extension (FFE-FVS) 41](#_Toc209542559)

[9.0 Insect and Disease Extensions 42](#_Toc209542560)

[10.0 Literature Cited 43](#_Toc209542561)

[11.0 Appendices 48](#_Toc209542562)

[11.1 Appendix A. Native Plant Community (NPV) Codes 48](#_Toc209542563)

[11.2 Appendix B. Site Index Conversion Coefficients 50](#_Toc209542564)

Quick Guide to Default Settings

|  |  |  |
| --- | --- | --- |
| **Parameter or Attribute** | **Default Setting** | |
| Number of Projection Cycles | 1 (10 if using FVS GUI) | |
| Projection Cycle Length | 10 years | |
| Location Code (National Forest) | 907 – Ottawa | |
| NPV Code | FDn12 (Northern Dry-Sand Pine Woodland) | |
| Slope | 5 percent | |
| Aspect | 0 (no meaningful aspect) | |
| Elevation (default location) | 14 (1400 feet) | |
| Latitude (default location) | 46.45 | |
| Longitude (default location) | 90.17 | |
| Site Species | RN | |
| Site Index | 60 feet (total age; 50 years) | |
| Maximum Stand Density Index | Species specific | |
| Maximum Basal Area | Species specific | |
| Volume Equations | National Volume Estimator Library | |
| Pulpwood Volume Specifications: | | |
| Minimum DBH / Top Diameter | Hardwoods | Softwoods |
| 903 – Chippewa (aspen, balsam poplar) | 6.0 / 4.0 inches | 5.0 / 4.0 inches |
| 903 – Chippewa (all other species) | 5.0 / 4.0 inches | 5.0 / 4.0 inches |
| 909 – Superior | 6.0 / 4.0 inches | 5.0 / 4.0 inches |
| All other locations | 5.0 / 4.0 inches | 5.0 / 4.0 inches |
| Stump Height | 0.5 feet | 0.5 feet |
| Sawtimber Volume Specifications: | | |
| Minimum DBH / Top Diameter | Hardwoods | Softwoods |
| 903 – Chippewa (aspen, balsam poplar) | 11.0 / 9.6 inches | 9.0 / 7.6 inches |
| 903 – Chippewa (all other species) | 9.0 / 7.6 inches | 9.0 / 7.6 inches |
| 907 – Ottawa (aspen, balsam poplar) | 9.0 / 7.6 inches | 9.0 / 7.6 inches |
| 907 – Ottawa (all other species) | 11.0 / 7.6 inches | 9.0 / 7.6 inches |
| All other locations | 11.0 / 9.6 inches | 9.0 / 7.6 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| Sampling Design: | | |
| Large Trees (variable radius plot) | 40 BAF | |
| Small Trees (fixed radius plot) | 1/300th acre | |
| Breakpoint DBH | 5.0 inches | |

# 1.0 Introduction

The Forest Vegetation Simulator (FVS) is an individual tree, distance independent growth and yield model with linkable modules called extensions, which simulate various insect and pathogen impacts, fire effects, fuel loading, snag dynamics, and development of understory tree vegetation. FVS can simulate a wide variety of forest types, stand structures, and pure or mixed species stands.

New “variants” of the FVS model are created by imbedding new tree growth, mortality, and volume equations for a particular geographic area into the FVS framework. Geographic variants of FVS have been developed for most of the forested lands in the United States.

The original Lake States (LS) variant was developed in 1993 using relationships from the LS-TWIGS model (Miner and others 1988), and equations from other variants for FVS relationships not present in LS-TWIGS. The model was reformulated in 2006 to improve model estimates; the only remnant of the original LS-TWIGS formulation was in the large tree diameter growth equations. In 2017, the large tree diameter growth equations from LS-TWIGS were replaced with equations from Deo and Froese (2013).

To fully understand how to use this variant, users should also consult the following publication:

* Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002)

This publication may be downloaded from the Forest Management Service Center (FMSC), Forest Service website. Other FVS publications may be needed if one is using an extension that simulates the effects of fire, insects, or diseases.

# 2.0 Geographic Range

The LS variant covers forest areas in the Great Lake states of Michigan, Minnesota, and Wisconsin. This includes Chippewa and Superior National Forests in Minnesota. Chequamegon and Nicolet National Forests in Wisconsin are also included as well as the Hiawatha, Ottawa, Huron and Manistee National Forests in Michigan. The suggested geographic range of use for the LS variant is shown in figure 2.0.1.

![Picture of suggested geographic range of the Lakes States Variant.](data:image/jpeg;base64...)

**Figure 2.0.1 Suggested geographic range of use for the LS variant.**

# 3.0 Control Variables

FVS users need to specify certain variables used by the LS variant to control a simulation. These are entered in parameter fields on various FVS keywords available in the FVS interface or they are read from an FVS input database using the Database Extension.

## 3.1 Location Codes

The location code is a 3- or 4-digit code where, in general, the first digit of the code represents the Forest Service Region Number, and the last two digits represent the Forest Number within that region. In some cases, a location code beginning with a “7” or “8” is used to indicate an administrative boundary that doesn’t use a Forest Service Region number (for example, other federal agencies, state agencies, or other lands).

If the location code is missing or incorrect in the LS variant, a default forest code of 907 (Ottawa National Forest) will be used. Location codes recognized in the LS variant – and their associated default latitude, longitude, and elevation values – are shown in tables 3.1.1 and 3.1.2.

**Table 3.1.1 Location codes used in the LS variant.**

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Location Code** | **Location** | **Latitude** | **Longitude** | **Elevation** |
| 902 | Chequamegon National Forest | 45.93 | 90.44 | 15 (1500 feet) |
| 903 | Chippewa National Forest | 47.38 | 94.60 | 13 (1300 feet) |
| 904 | Huron-Manistee National Forest | 44.25 | 85.40 | 9 (900 feet) |
| 906 | Nicolet National Forest | 45.93 | 90.44 | 15 (1500 feet) |
| 907 | Ottawa National Forest | 46.45 | 90.17 | 14 (1400 feet) |
| 909 | Superior National Forest | 46.78 | 92.11 | 16 (1600 feet) |
| 910 | Hiawatha National Forest | 45.75 | 87.06 | 8 (800 feet) |
| 913 | Chequamegon-Nicolet National Forest | 45.93 | 90.44 | 15 (1500 feet) |
| 924 | Manistee (mapped to 904) | 44.25 | 85.40 | 9 (900 feet) |

**Table 3.1.2 Bureau of Indian Affairs reservation codes used in the LS variant.**

| **Location Code** | **Location** |
| --- | --- |
| 7107 | Lake Traverse Reservation (mapped to 903) |
| 7109 | Turtle Mountain Off-Reservation Trust Land (mapped to 903) |
| 7501 | Upper Sioux Community (mapped to 903) |
| 7502 | Lower Sioux Indian Community (mapped to 903) |
| 7506 | Prairie Island Off-Reservation Tl (mapped to 902) |
| 7507 | Shakopee Mdewakanton Sioux (mapped to 903) |
| 7508 | Menominee Reservation (mapped to 906) |
| 7510 | Red Lake Reservation (mapped to 903) |
| 7511 | Bois Forte Reservation (mapped to 909) |
| 7512 | Fond Du Lac Reservation (mapped to 909) |
| 7513 | Grand Portage Reservation (mapped to 909) |
| 7514 | Leech Lake Reservation (mapped to 903) |
| 7515 | White Earth Reservation (mapped to 903) |
| 7516 | Mille Lacs Reservation (mapped to 903) |
| 7517 | Bad River Reservation (mapped to 902) |
| 7518 | Lac Courte Oreilles Reservation (mapped to 902) |
| 7519 | Lac Du Flambeau Reservation (mapped to 902) |
| 7520 | Oneida, (Wi Reservation (mapped to 906) |
| 7521 | Forest County Potawatomi Comm. (mapped to 906) |
| 7523 | Red Cliff Reservation (mapped to 902) |
| 7524 | St. Croix Reservation (mapped to 902) |
| 7525 | Sokaogon Chippewa, (Mole Lake (mapped to 906) |
| 7526 | Stockbridge Munsee Community (mapped to 906) |
| 7527 | Grand Traverse Off-Reservation Tl (mapped to 924) |
| 7528 | Sault Ste. Marie Off-Reservation Tl (mapped to 910) |
| 7529 | Bay Mills Reservation (mapped to 910) |
| 7530 | Hannahville Indian Community (mapped to 910) |
| 7531 | Isabella Reservation (mapped to 924) |
| 7532 | L'Anse Reservation (mapped to 907) |
| 7533 | Ontonagon Reservation (mapped to 907) |
| 7534 | Lac Vieux Desert Reservation (mapped to 907) |
| 7535 | Huron Potawatomi (mapped to 924) |
| 7536 | Little River Off-Reservation Tl (mapped to 924) |
| 7537 | Little Traverse Bay Reservation (mapped to 910) |
| 7522 | Potawatomi (Pokagon Band) (mapped to 906) |

## 3.2 Species Codes

The LS variant recognizes 65 species, plus two other composite species categories. You may use FVS species codes, Forest Inventory and Analysis (FIA) species codes, or USDA Natural Resources Conservation Service PLANTS symbols to represent these species in FVS input data. Any valid eastern species code identifying species not recognized by the variant will be mapped to a similar species in the variant. The species mapping crosswalk is available on the FVS website variant documentation webpage. Any non-valid species code will default to the “other hardwood” category.

Either the FVS sequence number or species code must be used to specify a species in FVS keywords and Event Monitor functions. FIA codes or PLANTS symbols are only recognized during data input and may not be used in FVS keywords. Table 3.2.1 shows the complete list of species codes recognized by the LS variant.

**Table 3.2.1 Species codes used in the LS variant.**

| **Species Group** | **Species Number1** | **Species Code** | **FIA Code** | **PLANTS Symbol** | **Scientific Name2** | **Common Name2** |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | 1 | JP | 105 | PIBA2 | *Pinus banksiana* | jack pine |
| 1 | 2 | SC | 130 | PISY | *Pinus sylvestris* | Scots pine |
| 2 | 3 | RN | 125 | PIRE | *Pinus resinosa* | red pine (natural) |
| 2 | 4 | RP | 125 | PIRE | *Pinus resinosa* | red pine (plantation) |
| 3 | 5 | WP | 129 | PIST | *Pinus strobus* | eastern white pine |
| 4 | 6 | WS | 094 | PIGL | *Picea glauca* | white spruce |
| 4 | 7 | NS | 091 | PIAB | *Picea abies* | Norway spruce |
| 5 | 8 | BF | 012 | ABBA | *Abies balsamea* | balsam fir |
| 6 | 9 | BS | 095 | PIMA | *Picea mariana* | black spruce |
| 7 | 10 | TA | 071 | LALA | *Larix laricina* | tamarack |
| 8 | 11 | WC | 241 | THOC2 | *Thuja occidentalis* | arborvitae |
| 9 | 12 | EH | 261 | TSCA | *Tsuga canadensis* | eastern hemlock |
| 10 | 13 | OS | 299 | 2TN |  | other softwood3 |
| 10 | 14 | RC | 068 | JUVI | *Juniperus virginiana* | eastern redcedar |
| 11 | 15 | BA | 543 | FRNI | *Fraxinus nigra* | black ash |
| 11 | 16 | GA | 544 | FRPE | *Fraxinus pennsylvanica* | green ash |
| 12 | 17 | EC | 742 | PODE3 | *Populus deltoides* | eastern cottonwood |
| 13 | 18 | SV | 317 | ACSA2 | *Acer saccharinum* | silver maple |
| 14 | 19 | RM | 316 | ACRU | *Acer rubrum* | red maple |
| 14 | 20 | BC | 762 | PRSE2 | *Prunus serotina* | black cherry |
| 15 | 21 | AE | 972 | ULAM | *Ulmus americana* | American elm |
| 15 | 22 | RL | 975 | ULRU | *Ulmus rubra* | slippery elm |
| 15 | 23 | RE | 977 | ULTH | *Ulmus thomasii* | rock elm |
| 16 | 24 | YB | 371 | BEAL2 | *Betula alleghaniensis* | yellow birch |
| 17 | 25 | BW | 951 | TIAM | *Tilia americana* | American basswood |
| 18 | 26 | SM | 318 | ACSA3 | *Acer saccharum* | sugar maple |
| 18 | 27 | BM | 314 | ACNI5 | *Acer nigrum* | black maple |
| 18 | 28 | AB | 531 | FAGR | *Fagus grandifolia* | American beech |
| 19 | 29 | WA | 541 | FRAM2 | *Fraxinus americana* | white ash |
| 20 | 30 | WO | 802 | QUAL | *Quercus alba* | white oak |
| 20 | 31 | SW | 804 | QUBI | *Quercus bicolor* | swamp white oak |
| 20 | 32 | BR | 823 | QUMA2 | *Quercus macrocarpa* | bur oak |
| 20 | 33 | CK | 826 | QUMU | *Quercus muehlenbergii* | chinkapin oak |
| 21 | 34 | RO | 833 | QURU | *Quercus rubra* | northern red oak |
| 22 | 35 | BO | 837 | QUVE | *Quercus velutina* | black oak |
| 22 | 36 | NP | 809 | QUEL | *Quercus ellipsoidalis* | northern pin oak |
| 23 | 37 | BH | 402 | CACO15 | *Carya cordiformis* | bitternut hickory |
| 23 | 38 | PH | 403 | CAGL8 | *Carya glabra* | pignut hickory |
| 23 | 39 | SH | 407 | CAOV2 | *Carya ovata* | shagbark hickory |
| 24 | 40 | BT | 743 | POGR4 | *Populus grandidentata* | bigtooth aspen |
| 25 | 41 | QA | 746 | POTR5 | *Populus tremuloides* | quaking aspen |
| 25 | 42 | BP | 741 | POBA2 | *Populus balsamifera* | balsam poplar |
| 26 | 43 | PB | 375 | BEPA | *Betula papyrifera* | paper birch |
| 27 | 45 | BN | 601 | JUCI | *Juglans cinerea* | butternut |
| 27 | 46 | WN | 602 | JUNI | *Juglans nigra* | black walnut |
| 27 | 47 | HH | 701 | OSVI | *Ostrya virginiana* | hophornbeam |
| 27 | 48 | BK | 901 | ROPS | *Robinia pseudoacacia* | black locust |
| 28 | 49 | OH | 998 | 2TB |  | other hardwood3 |
| 28 | 50 | BE | 313 | ACNE2 | *Acer negundo* | boxelder |
| 28 | 51 | ST | 315 | ACPE | *Acer pensylvanicum* | striped maple |
| 28 | 52 | MM | 319 | ACSP2 | *Acer spicatum* | mountain maple |
| 28 | 53 | AH | 391 | CACA18 | *Carpinus caroliniana* | American hornbeam |
| 28 | 54 | AC | 421 | CADE12 | *Castanea dentata* | American chestnut |
| 28 | 55 | HK | 462 | CEOC | *Celtis occidentalis* | common hackberry |
| 28 | 56 | DW | 491 | COFL2 | *Cornus florida* | flowering dogwood |
| 28 | 57 | HT | 500 | CRATA | *Crataegus* | hawthorn |
| 28 | 58 | AP | 660 | MALUS | *Malus* | apple |
| 28 | 59 | BG | 693 | NYSY | *Nyssa sylvatica* | blackgum |
| 28 | 60 | SY | 731 | PLOC | *Platanus occidentalis* | American sycamore |
| 28 | 61 | PR | 761 | PRPE2 | *Prunus pensylvanica* | pin cherry |
| 28 | 62 | CC | 763 | PRVI | *Prunus virginiana* | chokecherry |
| 28 | 63 | PL | 760 | PRUNU | *Prunus* | plum |
| 28 | 64 | WI | 920 | SALIX | *Salix* | willow |
| 28 | 65 | BL | 922 | SANI | *Salix nigra* | black willow |
| 28 | 66 | DM | 9234 | SAER | *Salix eriocephala* | Missouri River willow |
| 28 | 67 | SS | 931 | SAAL5 | *Sassafras albidum* | sassafras |
| 28 | 68 | MA | 935 | SOAM3 | *Sorbus americana* | American mountain ash |

1Species number 44 represent a removed species group.

2Set based on the USDA Forest Service NRM TAXA lists and the USDA Plants database.

3Other categories use FIA codes and NRM TAXA codes that best match the other category.

4923 is no longer an active FIA code but is used here to represent the species.

## 3.3 Habitat Type, Plant Association, and Ecological Unit Codes

The native plant communities (NPV) of Minnesota (Minnesota Department of Natural Resources 2003) are used in the fuel model selection logic in the Fire and Fuels extension of the LS variant. A complete list of acceptable NPV codes is shown in Appendix A. If no NPV code or an incorrect NPV code is entered in the input data, then the default code of FDn12 (Northern Dry-Sand Pine Woodland) is used. Users may enter the plant association code or the plant association FVS sequence number on the STDINFO keyword, when entering stand information from a database, or when using the SETSITE keyword without the PARMS option. If using the PARMS option with the SETSITE keyword, users must use the FVS sequence number for the plant association.

## 3.4 Site Index

Site index is used in the growth equations for the LS variant. Users should always use that site index curves from Carmean and others (1989) to estimate site index. In assigning site index, users should use site curves based on total age at an index age of 50. If site index is available, a single site index for the whole stand can be entered, a site index for each individual species in the stand can be entered, or a combination of these can be entered. If site index is missing or incorrect, the site species is set to red pine with a default site index set to 60.

Site indices for species not assigned a site index are converted from the site species site index in one of three ways developed by Carmean and Vasilevsky (1971) and Carmean (1979). If a species is associated with the given stand site index, then equation {3.4.1} is used to compute the site index. If a species is not associated with the given site species, then a conversion through aspen is attempted utilizing equation {3.4.2}. If the aspen conversion is not available, then the site index for the site species is assigned to the remaining species for which site index was not specified. Coefficients for equations {3.4.1} and {3.4.2} are located in Appendix B.

{3.4.1} *SIunknown* = a1 + a2 \* *SIsite species*

{3.4.2} *SIunknown* = a1 + a2 \* *SIaspen*

where:

*SIunknown*is site index of the species with unknown site index

*SIsite species* is site index of site species

*SIaspen* is site index of aspen

a1, a2 are species group specific coefficients shown in Appendix B

## 3.5 Maximum Density

Maximum stand density index (SDI) and maximum basal area (BA) are important variables in determining density related mortality and crown ratio change. Maximum basal area is a stand level metric that can be set using the BAMAX or SETSITE keywords. If not set by the user, a default value is calculated from maximum stand SDI each projection cycle. Maximum stand density index can be set for each species using the SDIMAX or SETSITE keywords. If not set by the user, a default value is assigned as discussed below.

The default maximum SDI is set by species or a user specified basal area maximum. If a user specified basal area maximum is present, the maximum SDI for all species is computed using equation {3.5.1}; otherwise, species SDI maximums are assigned from the SDI maximums shown in table 3.5.1 or from user input. Maximum stand density index at the stand level is a weighted average, by basal area, of the individual species SDI maximums.

Stand SDI is calculated using the Zeide calculation method (Dixon 2002).

{3.5.1} *SDIMAXi* = *BAMAX* / (0.5454154 \* *SDIU)*

where:

*SDIMAXi* is species-specific SDI maximum

*BAMAX* is the user-specified stand basal area maximum

*SDIU* is theproportion of theoretical maximum density at which the stand reaches actual maximum density (default 0.85, changed with the SDIMAX keyword)

**Table 3.5.1 Stand density index maximums by species in the LS variant.**

| **Species Code** | **SDI Maximum\*** | **Mapped to** | **Species Code** | **SDI Maximum\*** | **Mapped to** |
| --- | --- | --- | --- | --- | --- |
| JP | 356 |  | BO | 370 |  |
| SC | 408 |  | NP | 336 |  |
| RN | 505 |  | BH | 301 |  |
| RP | 505 |  | PH | 276 |  |
| WP | 529 |  | SH | 302 |  |
| WS | 412 |  | BT | 520 |  |
| NS | 412 | white spruce | QA | 562 |  |
| BF | 655 |  | BP | 384 |  |
| BS | 500 |  | PB | 466 |  |
| TA | 387 |  | BN | 283 | black walnut |
| WC | 771 |  | WN | 283 |  |
| EH | 510 |  | HH | 304 |  |
| OS | 354 | eastern redcedar | BK | 343 |  |
| RC | 354 |  | OH | 257 | flowering dogwood |
| BA | 423 |  | BE | 344 |  |
| GA | 414 |  | ST | 243 |  |
| EC | 648 |  | MM | 243 | striped maple |
| SV | 590 |  | AH | 375 |  |
| RM | 421 |  | AC | 243 | striped maple |
| BC | 384 |  | HK | 420 |  |
| AE | 282 |  | DW | 257 |  |
| RL | 227 |  | HT | 463 |  |
| RE | 282 | American elm | AP | 422 | eastern redbud |
| YB | 369 |  | BG | 430 |  |
| BW | 526 |  | SY | 499 |  |
| SM | 371 |  | PR | 463 | hawthorn |
| BM | 371 | sugar maple | CC | 463 | hawthorn |
| AB | 364 |  | PL | 463 | hawthorn |
| WA | 408 |  | WI | 447 | black willow |
| WO | 361 |  | BL | 447 |  |
| SW | 361 | white oak | DM | 447 | black willow |
| BR | 423 |  | SS | 492 |  |
| CK | 336 |  | MA | 338 | honeylocust |
| RO | 414 |  |  |  |  |

\*Source of SDI maximums is an unpublished analysis of FIA data by John Shaw.

# 4.0 Growth Relationships

This chapter describes the functional relationships used to fill in missing tree data and calculate incremental growth. In FVS, trees are grown in either the small tree sub-model or the large tree sub-model depending on the diameter.

## 4.1 Height-Diameter Relationships

Height-diameter relationships are used to estimate tree heights missing in the input data and periodic small-tree diameter growth. In the LS variant, height is estimated using either the Curtis-Arney equation (Curtis 1967, Arney 1985) or the Wykoff equation (Wykoff and others 1982). The equation used by default is indicated by a C or W, in the third column of table 4.1.1. By default, the LS variant does not calibrate the height-diameter relationship for estimating missing tree heights based on measured heights in the input data. To override this, the user must use the NOHTDREG keyword and “turn on” calibration. When calibration is turned on, FVS will use the Wykoff equation form with a calibrated B1 value, if there are at least 3 measured heights for that species over 3 inches DBH in the stand.

The functional form of the Curtis-Arney equation for trees three inches DBH and larger is shown in equation {4.1.1}. For trees less than three inches DBH using the Curtis-Arney equation, a modified Curtis-Arney equation combined with a simple linear equation is used. The functional form of the Wykoff equation is shown in equation {4.1.2}. Equation coefficients and which equation is used for which species are shown in table 4.1.1.

**{4.1.1} Curtis-Arney equation**

*DBH* <u>></u> 3.0”*:* *HT* = 4.5 + P2 \* exp(-P3 \* *DBH* ^P4)

*DBH* < 3.0”: *HT* = ((4.5 + P2 \* exp(*-*P3 \* 3.0^ P4) – 4.51) \* (*DBH* – *Dbw*) / (3 – *Dbw*)) + 4.51

**{4.1.2}Wykoff functional form**

*HT* = 4.5 + exp (B1 + B2 / (*DBH* + 1.0))

where:

*HT* is tree height

*DBH* is tree diameter at breast height

*Dbw* is bud width diameter at 4.51 feet shown in table 4.1.1

B1 - B2 are species-specific coefficients shown in table 4.1.1

P2 - P4 are species-specific coefficients shown in table 4.1.2

Coefficients for the height-diameter relationships in the LS variant are from equations fit to data for the Southern variant of FVS. Wykoff and Curtis-Arney coefficients for all species, are shown in table 4.1.1. Species for which there was not enough data to fit these relationships use coefficients from a similar species.

**Table 4.1.1 Coefficients, default equation used, and surrogate species for height-diameter relationships for the LS variant.**

| **Species Code** | **W or C** | **SN Variant**  **Surrogate / source** | **Curtis-Arney Coefficients** | | | | **Wykoff Coefficients** | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
|
| **P2** | **P3** | **P4** | **Dbw** | **Default B1** | **B2** |
| JP | W | hemlock | 266.4562 | 3.9931 | -0.3860 | 0.1 | 4.5084 | -6.0116 |
| SC | W | pond pine | 142.7468 | 3.9726 | -0.5871 | 0.5 | 4.5457 | -6.8000 |
| RN | C | hemlock | 266.4562 | 3.9931 | -0.3860 | 0.1 | 4.5084 | -6.0116 |
| RP | C | hemlock | 266.4562 | 3.9931 | -0.3860 | 0.1 | 4.5084 | -6.0116 |
| WP | C | eastern white pine | 2108.8442 | 5.6595 | -0.1856 | 0.4 | 4.6090 | -6.1896 |
| WS | C | spruce/fir | 2163.9468 | 6.2688 | -0.2161 | 0.2 | 4.5084 | -6.0116 |
| NS | C | spruce/fir | 2163.9468 | 6.2688 | -0.2161 | 0.2 | 4.5084 | -6.0116 |
| BF | C | spruce/fir | 2163.9468 | 6.2688 | -0.2161 | 0.1 | 4.5084 | -6.0116 |
| BS | C | spruce/fir | 2163.9468 | 6.2688 | -0.2161 | 0.2 | 4.5084 | -6.0116 |
| TA | C | spruce/fir | 2163.9468 | 6.2688 | -0.2161 | 0.1 | 4.5084 | -6.0116 |
| WC | W | spruce/fir | 2163.9468 | 6.2688 | -0.2161 | 0.1 | 4.5084 | -6.0116 |
| EH | C | hemlock | 266.4562 | 3.9931 | -0.3860 | 0.1 | 4.5084 | -6.0116 |
| OS | W | misc. softwoods | 212.7933 | 3.4715 | -0.3259 | 0.3 | 4.0374 | -4.2964 |
| RC | W | Virginia pine | 926.1803 | 4.4621 | -0.2005 | 0.5 | 4.4718 | -5.0078 |
| BA | W | black ash | 178.9308 | 4.9286 | -0.6378 | 0.2 | 4.6155 | -6.2945 |
| GA | W | green ash | 404.9692 | 3.3902 | -0.2551 | 0.2 | 4.6155 | -6.2945 |
| EC | W | cottonwood spp. | 190.9797 | 3.6928 | -0.5273 | 0.1 | 4.9396 | -8.1838 |
| SV | C | silver maple | 80.5118 | 26.9833 | -2.0220 | 0.2 | 4.5991 | -6.6706 |
| RM | W | red maple | 268.5564 | 3.1143 | -0.2941 | 0.2 | 4.3379 | -3.8214 |
| BC | W | black cherry | 364.0248 | 3.5599 | -0.2726 | 0.1 | 4.3286 | -4.0922 |
| AE | W | American elm | 418.5942 | 3.1704 | -0.1896 | 0.1 | 4.6008 | -7.2732 |
| RL | W | slippery elm | 1337.5472 | 4.4895 | -0.1475 | 0.1 | 4.6238 | -7.4847 |
| RE | W | elm species | 1005.8067 | 4.6474 | -0.2034 | 0.1 | 4.3744 | -4.5257 |
| YB | W | birch species | 170.5253 | 2.6883 | -0.4008 | 0.1 | 4.4388 | -4.0872 |
| BW | W | basswood | 293.5715 | 3.5226 | -0.3512 | 0.1 | 4.5820 | -5.0903 |
| SM | W | sugar maple | 209.8555 | 2.9528 | -0.3679 | 0.2 | 4.4834 | -4.5431 |
| BM | C | sugar maple | 209.8555 | 2.9528 | -0.3679 | 0.2 | 4.4834 | -4.5431 |
| AB | W | American beech | 526.1393 | 3.8923 | -0.2259 | 0.1 | 4.4772 | -4.7206 |
| WA | W | white ash | 91.3528 | 6.9961 | -1.2294 | 0.2 | 4.5959 | -6.4497 |
| WO | W | white oak | 170.1331 | 3.2782 | -0.4874 | 0.2 | 4.5463 | -5.2287 |
| SW | W | cherrybark oak | 182.6306 | 3.1290 | -0.4639 | 0.1 | 4.7342 | -6.2674 |
| BR | W | scarlet oak | 196.0565 | 3.0067 | -0.3850 | 0.2 | 4.5225 | -4.9401 |
| CK | W | chinkapin oak | 72.7907 | 3.6707 | -1.0988 | 0.1 | 4.3420 | -5.1193 |
| RO | W | northern red oak | 700.0636 | 4.1061 | -0.2139 | 0.2 | 4.5202 | -4.8896 |
| BO | W | black oak | 224.7163 | 3.1165 | -0.3598 | 0.2 | 4.4747 | -4.8698 |
| NP | W | scarlet oak | 196.0565 | 3.0067 | -0.3850 | 0.2 | 4.5225 | -4.9401 |
| BH | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| PH | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| SH | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| BT | W | bigtooth aspen | 66.6489 | 135.4826 | -2.8862 | 0.2 | 4.9396 | -8.1838 |
| QA | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| BP | W | white ash | 91.3528 | 6.9961 | -1.2294 | 0.2 | 4.5959 | -6.4497 |
| PB | W | birch species | 170.5253 | 2.6883 | -0.4008 | 0.1 | 4.4388 | -4.0872 |
| BN | W | butternut | 285.8798 | 3.5214 | -0.3194 | 0.3 | 4.5018 | -5.6123 |
| WN | W | black walnut | 93.7104 | 3.6575 | -0.8825 | 0.4 | 4.5018 | -5.6123 |
| HH | W | eastern hophornbeam | 109.7324 | 2.2503 | -0.4130 | 0.2 | 4.0322 | -3.0833 |
| BK | C | black locust | 880.2845 | 4.5964 | -0.2182 | 0.1 | 4.4299 | -4.9920 |
| OH | W | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| BE | W | butternut | 285.8798 | 3.5214 | -0.3194 | 0.3 | 4.5018 | -5.6123 |
| ST | W | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| MM | W | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| AH | C | eastern hophornbeam | 109.7324 | 2.2503 | -0.4130 | 0.2 | 4.0322 | -3.0833 |
| AC | W | cottonwood species | 190.9797 | 3.6928 | -0.5273 | 0.1 | 4.9396 | -8.1838 |
| HK | C | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| DW | W | flowering dogwood | 863.0501 | 4.3856 | -0.1481 | 0.1 | 3.7301 | -2.7758 |
| HT | W | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| AP | W | apple species | 574.0201 | 3.8637 | -0.1632 | 0.2 | 3.9678 | -3.2510 |
| BG | C | blackgum | 319.9788 | 3.6731 | -0.3065 | 0.2 | 4.3802 | -4.7903 |
| SY | W | sycamore | 644.3568 | 3.9205 | -0.2144 | 0.1 | 4.6355 | -5.2776 |
| PR | C | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| CC | W | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| PL | W | apple species | 574.0201 | 3.8637 | -0.1632 | 0.2 | 3.9678 | -3.2510 |
| WI | W | willow species | 408.2772 | 3.8181 | -0.2721 | 0.1 | 4.4911 | -5.7928 |
| BL | W | willow species | 408.2772 | 3.8181 | -0.2721 | 0.1 | 4.4911 | -5.7928 |
| DM | W | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| SS | C | sassafras | 755.1038 | 4.3950 | -0.2178 | 0.1 | 4.3383 | -4.5018 |
| MA | W | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |

## 4.2 Bark Ratio Relationships

Bark ratio estimates are used to convert between diameter outside bark and diameter inside bark in various parts of the model. The equation is shown in equation {4.2.1} and the appropriate bark ratios by species group are given in table 4.2.1.

{4.2.1} *DIB* = *BRATIO* \* *DOB*

where:

*BRATIO* is species-specific bark ratio

*DIB* is tree diameter inside bark at breast height

*DOB* is tree diameter outside bark at breast height

**Table 4.2.1 Bark ratios by species groups for the LS variant.**

|  |  |
| --- | --- |
| **Species Group** | **Bark Ratio** |
| 1, 2, 3, 9, 10 | .91 |
| 4, 8 | .95 |
| 5, 6, 7, 11, 13, 14, 16, 18, 23, 26, 27 | .94 |
| 12, 15 | .93 |
| 17, 19, 21, 22, 24, 25, 28 | .92 |

## 4.3 Crown Ratio Relationships

Crown ratio equations are used for three purposes in FVS: (1) to estimate tree crown ratios missing from the input data for both live and dead trees; (2) to estimate change in crown ratio from cycle to cycle for live trees; and (3) to estimate initial crown ratios for regenerating trees established during a simulation.

### 4.3.1 Crown Ratio Dubbing

In the LS variant, crown ratios missing in the input data, for both live and dead trees, are predicted using equation {4.3.1.1} by Holdaway (1986) with coefficients for this equation shown in table 4.3.1.1.

{4.3.1.1} *CR* = 10 \* (b1 / (1 + b2 \* *BA*) + (b3 \* (1 – exp(b4 \* *DBH*))))

where:

*CR* is crown ratio expressed as a percent

*BA* is total stand basal area

*DBH* is tree diameter at breast height

b1 – b4 are species-specific coefficients shown in table 4.3.1.1

**Table 4.3.1.1 Coefficients of the crown ratio equation {4.3.1.1} in the LS variant.**

| **Species Group** | **b1** | **b2** | **b3** | **b4** |
| --- | --- | --- | --- | --- |
| 1 | 6.640 | 0.0135 | 3.200 | -0.0518 |
| 2 | 5.350 | 0.0053 | 1.528 | -0.0330 |
| 3 | 6.790 | 0.0058 | 7.590 | -0.0103 |
| 4 | 7.840 | 0.0057 | 1.272 | -0.1420 |
| 5 | 5.630 | 0.0047 | 3.523 | -0.0689 |
| 6 | 5.540 | 0.0072 | 4.200 | -0.0530 |
| 7 | 6.000 | 0.0053 | 0.431 | -0.0012 |
| 8, 9, 10 | 5.710 | 0.0077 | 2.290 | -0.2530 |
| 11 | 4.500 | 0.0032 | 0.0795 | -0.1050 |
| 12, 14 | 4.350 | 0.0046 | 1.820 | -0.2740 |
| 13 | 4.850 | 0.0050 | 9.810 | -0.0099 |
| 15 | 4.400 | 0.0025 | 1.000 | -0.0940 |
| 16 | 4.180 | 0.0025 | 1.410 | -0.5120 |
| 17 | 4.440 | 0.0037 | 2.090 | -0.0650 |
| 18 | 3.400 | 0.0066 | 2.870 | -0.4340 |
| 19 | 4.490 | 0.0029 | 1.210 | -0.0650 |
| 20 | 5.840 | 0.0082 | 3.260 | -0.0490 |
| 21 | 4.200 | 0.0016 | 2.760 | -0.0250 |
| 22 | 5.060 | 0.0033 | 1.730 | -0.0610 |
| 23 | 6.210 | 0.0073 | 9.990 | -0.0100 |
| 24 | 4.110 | 0.0054 | 1.650 | -0.1100 |
| 25, 27, 28 | 4.000 | 0.0024 | -2.830 | 0.0210 |
| 26 | 5.000 | 0.0066 | 4.920 | -0.0263 |

### 4.3.2 Crown Ratio Change

Crown ratio change is estimated after growth, mortality and regeneration are estimated during a projection cycle. Crown ratio change is the difference between the crown ratio at the beginning of the cycle and the predicted crown ratio at the end of the cycle. Crown ratio predicted at the end of the projection cycle is estimated for live tree records using equation {4.3.1.1} by Holdaway (1986) and the coefficients shown in Table 4.3.1.1. Crown change is checked to make sure it doesn’t exceed the change possible if all height growth produces new crown. Crown change is further bounded to 1% per year for the length of the cycle to avoid drastic changes in crown ratio.

### 4.3.3 Crown Ratio for Newly Established Trees

Crown ratios for newly established trees during regeneration are estimated using equation {4.3.3.1}. A random component is added in equation {4.3.3.1} to ensure that not all newly established trees are assigned exactly the same crown ratio.

{4.3.3.1} *CR* = 0.89722 – 0.0000461 \* *PCCF* + *RAN*

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.2 <u><</u> *CR* <u><</u> 0.9)

*PCCF* is crown competition factor on the inventory point where the tree is established

*RAN* is a small random component

## 4.4 Crown Width Relationships

The LS variant calculates the maximum crown width for each individual tree based on individual tree and stand attributes. Crown width for each tree is reported in the tree list output table and used to calculate percent canopy cover (*PCC*) and crown competition factor (CCF) within the model. When available, forest-grown maximum crown width equations are used to compute *PCC* and open-grown maximum crown width equations are used to compute *CCF*.

The LS variant computes tree crown width using equations {4.4.1} through {4.4.5}. Species equation assignment and coefficients are shown in tables 4.4.1 and 4.4.2 for forest- and open-grown equations, respectively. Equations are numbered via the FIA species code and equation number, i.e. the forest grown equation from Bechtold (2003) assigned to Eastern white pine has the number: 12901.

{4.4.1} Bechtold (2003); Equation 01

*DBH* <u>></u> 5.0: *FCW* = a1 + (a2 \* *DBH*) + (a3 \* *DBH^*2) + (a4 \* *CR*) + (a5 \* *HI*)

*DBH* < 5.0: *FCW* = [a1 + (a2 \* *5.0*) + (a3 \* *5.0^*2) + (a4 \* *CR*) + (a5 \* *HI*)] \* *(DBH* / *5.0*)

{4.4.2} Bragg (2001); Equation 02

*DBH* <u>></u> 5.0: *FCW* = a1 + (a2 \* *DBH^*a3)

*DBH* < 5.0: *FCW* = [a1 + (a2 \* 5.0^a3)] \* (*DBH* / 5.0)

{4.4.3} Ek (1974); Equation 03

*DBH* <u>></u> 3.0: *OCW* = a1 + (a2 \* *DBH^*a3)

*DBH* < 3.0: *OCW* = [a1 + (a2 \* 3.0^a3)] \* (*DBH* / 3.0)

{4.4.4} Krajicek and others (1961); Equation 04

*DBH* <u>></u> 3.0: *OCW* = a1 + (a2 \* *DBH*)

*DBH* < 3.0: *OCW* = [a1 + (a2 \* 3.0)] \* (*DBH* / 3.0)

{4.4.5} Smith and others (1992); Equation 05

*DBH* <u>></u> 3.0: *OCW* = a1 + (a2 \* *DBH* \* 2.54) + (a3 \* (*DBH* \* 2.54)^ 2) \* 3.28084

*DBH* < 3.0: *OCW* = [a1 + (a2 \* 3.0 \* 2.54) + (a3 \* (3.0 \* 2.54)^ 2) \* 3.28084] \* (*DBH* / 3.0)

where:

*FCW* is crown width of forest grown trees (used in *PCC* calculations)

*OCW* is crown width of open-grown trees (used in *CCF* calculations))

*DBH* is tree diameter at breast height, if bounded

*CR*  is crown ratio expressed as a percent

*HI* is the Hopkins Index

*HI* = (*ELEVATION* - 887) / 100) \* 1.0 + (*LATITUDE* – 39.54) \* 4.0 + (-82.52 -*LONGITUDE*) \* 1.25

a1 - a5 are the coefficients shown in tables 4.4.1 and 4.4.2

**Table 4.4.1. Crown width equation assignment and coefficients for forest-grown trees in the LS variant.**

| **Species Code** | **Equation Number1** | **a1** | **a2** | **a3** | **a4** | **a5** | **Limits and**  **Bounds** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| JP | 10501 | 0.7478 | 0.8712 |  | 0.0913 |  | FCW <u><</u> 25 |
| SC | 13001 | 3.5522 | 0.6742 |  | 0.0985 |  | FCW <u><</u> 27 |
| RN | 12501 | -3.6548 | 1.9565 | -0.0409 | 0.0577 |  | DBH <u><</u> 24 |
| RP | 12501 | -3.6548 | 1.9565 | -0.0409 | 0.0577 |  | DBH <u><</u> 24 |
| WP | 12901 | 0.3914 | 0.9923 |  | 0.1080 |  | FCW <u><</u> 45 |
| WS | 09401 | 0.3789 | 0.8658 |  | 0.0878 |  | FCW <u><</u> 30 |
| NS | 09101 | 1.8336 | 0.9932 |  | 0.0431 | 0.1012 | FCW <u><</u> 27 |
| BF | 01201 | 0.6564 | 0.8403 |  | 0.0792 |  | FCW <u><</u> 34 |
| BS | 09501 | -0.8566 | 0.9693 |  | 0.0573 |  | FCW <u><</u> 27 |
| TA | 07101 | -0.3276 | 1.3865 |  | 0.0517 |  | FCW <u><</u> 29 |
| WC | 24101 | -0.0634 | 0.7057 |  | 0.0837 |  | FCW <u><</u> 27 |
| EH | 26101 | 6.1924 | 1.4491 | -0.0178 |  | -0.0341 | DBH <u><</u> 40 |
| OS | 06801 | 1.2359 | 1.2962 |  | 0.0545 |  | FCW <u><</u> 33 |
| RC | 06801 | 1.2359 | 1.2962 |  | 0.0545 |  | FCW <u><</u> 33 |
| BA | 54301 | 5.2824 | 1.1184 |  |  |  | FCW <u><</u> 34 |
| GA | 54401 | 2.9672 | 1.3066 |  | 0.0585 |  | FCW <u><</u> 61 |
| EC | 74201 | 3.4375 | 1.4092 |  |  |  | FCW <u><</u> 80 |
| SV | 31701 | 3.3576 | 1.1312 |  | 0.1011 | -0.1730 | FCW <u><</u> 45 |
| RM | 31601 | 2.7563 | 1.4212 | -0.0143 | 0.0993 | -0.0276 | DBH <u><</u> 50 |
| BC | 76201 | 3.0237 | 1.1119 |  | 0.1112 | -0.0493 | FCW <u><</u> 52 |
| AE | 97201 | 1.7296 | 2.0732 |  | 0.0590 | -0.0869 | FCW <u><</u> 50 |
| RL | 97501 | 9.0023 | 1.3933 |  |  | -0.0785 | FCW <u><</u> 49 |
| RE | 97201 | 1.7296 | 2.0732 |  | 0.0590 | -0.0869 | FCW <u><</u> 50 |
| YB | 37101 | -1.1151 | 2.2888 | -0.0493 | 0.0985 | -0.0396 | DBH <u><</u> 24 |
| BW | 95101 | 1.6871 | 1.2110 |  | 0.1194 | -0.0264 | FCW <u><</u> 61 |
| SM | 31801 | 4.9399 | 1.0727 |  | 0.1096 | -0.0493 | FCW <u><</u> 54 |
| BM | 31801 | 4.9399 | 1.0727 |  | 0.1096 | -0.0493 | FCW <u><</u> 54 |
| AB | 53101 | 3.9361 | 1.1500 |  | 0.1237 | -0.0691 | FCW <u><</u> 80 |
| WA | 54101 | 1.7625 | 1.3413 |  | 0.0957 |  | FCW <u><</u> 62 |
| WO | 80201 | 3.2375 | 1.5234 |  | 0.0455 | -0.0324 | FCW <u><</u> 69 |
| SW | 80201 | 3.2375 | 1.5234 |  | 0.0455 | -0.0324 | FCW <u><</u> 69 |
| BR | 82301 | 1.7827 | 1.6549 |  | 0.0343 |  | FCW <u><</u> 61 |
| CK | 82601 | 0.5189 | 1.4134 |  | 0.1365 | -0.0806 | FCW <u><</u> 45 |
| RO | 83301 | 2.8908 | 1.4077 |  | 0.0643 |  | FCW <u><</u> 82 |
| BO | 83701 | 2.8974 | 1.3697 |  | 0.0671 |  | FCW <u><</u> 52 |
| NP | 80901 | 4.8935 | 1.6069 |  |  |  | FCW <u><</u> 44 |
| BH | 40201 | 8.0118 | 1.4212 |  |  |  | FCW <u><</u> 41 |
| PH | 40301 | 3.9234 | 1.5220 |  | 0.0405 |  | FCW <u><</u> 53 |
| SH | 40701 | 4.5453 | 1.3721 |  | 0.0430 |  | FCW <u><</u> 54 |
| BT | 74301 | 0.6847 | 1.1050 |  | 0.1420 | -0.0265 | FCW <u><</u> 43 |
| QA | 74601 | 0.7315 | 1.3180 |  | 0.0966 |  | FCW <u><</u> 39 |
| BP | 74101 | 6.2498 | 0.8655 |  |  |  | FCW <u><</u> 25 |
| PB | 37501 | 2.8399 | 1.2398 |  | 0.0855 | -0.0282 | FCW <u><</u> 42 |
| BN | 60201 | 3.6031 | 1.1472 |  | 0.1224 |  | FCW <u><</u> 37 |
| WN | 60201 | 3.6031 | 1.1472 |  | 0.1224 |  | FCW <u><</u> 37 |
| HH | 70101 | 7.8084 | 0.8129 |  | 0.0941 | -0.0817 | FCW <u><</u> 39 |
| BK | 90101 | 3.0012 | 0.8165 |  | 0.1395 |  | FCW <u><</u> 48 |
| OH | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| BE | 31301 | 6.4741 | 1.0778 |  | 0.0719 | -0.0637 | FCW <u><</u> 57 |
| ST | 31301 | 6.4741 | 1.0778 |  | 0.0719 | -0.0637 | FCW <u><</u> 57 |
| MM | 31301 | 6.4741 | 1.0778 |  | 0.0719 | -0.0637 | FCW <u><</u> 57 |
| AH | 39101 | 0.9219 | 1.6303 |  | 0.1150 | -0.1113 | FCW <u><</u> 42 |
| AC | 40701 | 4.5453 | 1.3721 |  | 0.0430 |  | FCW <u><</u> 54 |
| HK | 46201 | 7.1043 | 1.3041 |  | 0.0456 |  | FCW <u><</u> 51 |
| DW | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| HT | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| AP | 76102 | 4.1027 | 1.3960 | 1.0775 |  |  | FCW <u><</u> 52 |
| BG | 69301 | 5.5037 | 1.0567 |  | 0.0880 | 0.0610 | FCW <u><</u> 50 |
| SY | 73101 | -1.3973 | 1.3756 |  | 0.1835 |  | FCW <u><</u> 66 |
| PR | 76102 | 4.1027 | 1.3960 | 1.0775 |  |  | FCW <u><</u> 52 |
| CC | 76102 | 4.1027 | 1.3960 | 1.0775 |  |  | FCW <u><</u> 52 |
| PL | 76102 | 4.1027 | 1.3960 | 1.0775 |  |  | FCW <u><</u> 52 |
| WI | 97201 | 1.7296 | 2.0732 |  | 0.0590 | -0.0869 | FCW <u><</u> 50 |
| BL | 97201 | 1.7296 | 2.0732 |  | 0.0590 | -0.0869 | FCW <u><</u> 50 |
| DM | 97201 | 1.7296 | 2.0732 |  | 0.0590 | -0.0869 | FCW <u><</u> 50 |
| SS | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | FCW <u><</u> 29 |
| MA | 55201 | 4.1971 | 1.5567 |  | 0.0880 |  | FCW <u><</u> 46 |

1 Equation number is a combination of the species FIA code (###) and source (##), see equations on previous page. Maximum crown widths and DBH have been assigned to prevent poor behavior beyond the source data.

**Table 4.4.2. Crown width equation assignment and coefficients for open-grown trees for the LS variant.**

| **Species Code** | **Equation Number1** | **a1** | **a2** | **a3** | **a4** | **a5** | **Limits and**  **Bounds** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| JP | 10503 | 0.2990 | 5.6440 | 0.6036 |  |  | FCW <u><</u> 30 |
| SC | 13001 | 3.5522 | 0.6742 |  | 0.0985 |  | FCW <u><</u> 27 |
| RN | 12503 | 4.2330 | 1.4620 | 1.0000 |  |  | FCW <u><</u> 39 |
| RP | 12503 | 4.2330 | 1.4620 | 1.0000 |  |  | FCW <u><</u> 39 |
| WP | 12903 | 1.6200 | 3.1970 | 0.7981 |  |  | FCW <u><</u> 58 |
| WS | 09403 | 3.5940 | 1.9630 | 0.8820 |  |  | FCW <u><</u> 37 |
| NS | 09104 | 5.0570 | 1.1313 |  |  |  | FCW <u><</u> 47 |
| BF | 01203 | 0.3270 | 5.1160 | 0.5035 |  |  | FCW <u><</u> 34 |
| BS | 09503 | 3.6550 | 1.3980 | 1.0000 |  |  | FCW <u><</u> 27 |
| TA | 07103 | 2.2050 | 3.4750 | 0.7506 |  |  | FCW <u><</u> 29 |
| WC | 24101 | -0.0634 | 0.7057 |  | 0.0837 |  | FCW <u><</u> 27 |
| EH | 26101 | 6.1924 | 1.4491 | -0.0178 |  | -0.0341 | DBH <u><</u> 40 |
| OS | 06801 | 1.2359 | 1.2962 |  | 0.0545 |  | FCW <u><</u> 33 |
| RC | 06801 | 1.2359 | 1.2962 |  | 0.0545 |  | FCW <u><</u> 33 |
| BA | 54301 | 5.2824 | 1.1184 |  |  |  | FCW <u><</u> 34 |
| GA | 54403 |  | 4.7550 | 0.7381 |  |  | FCW <u><</u> 61 |
| EC | 74203 | 2.9340 | 2.5380 | 0.8617 |  |  | FCW <u><</u> 80 |
| SV | 31701 | 3.3576 | 1.1312 |  | 0.1011 | -0.1730 | FCW <u><</u> 45 |
| RM | 31603 |  | 4.7760 | 0.7656 |  |  | FCW <u><</u> 55 |
| BC | 76203 | 0.6210 | 7.0590 | 0.5441 |  |  | FCW <u><</u> 52 |
| AE | 97203 | 2.8290 | 3.4560 | 0.8575 |  |  | FCW <u><</u> 72 |
| RL | 97501 | 9.0023 | 1.3933 |  |  | -0.0785 | FCW <u><</u> 49 |
| RE | 97203 | 2.8290 | 3.4560 | 0.8575 |  |  | FCW <u><</u> 72 |
| YB | 37101 | -1.1151 | 2.2888 | -0.0493 | 0.0985 | -0.0396 | DBH <u><</u> 24 |
| BW | 95101 | 1.6871 | 1.2110 |  | 0.1194 | -0.0264 | FCW <u><</u> 61 |
| SM | 31803 | 0.8680 | 4.1500 | 0.7514 |  |  | FCW <u><</u> 54 |
| BM | 31803 | 0.8680 | 4.1500 | 0.7514 |  |  | FCW <u><</u> 54 |
| AB | 53101 | 3.9361 | 1.1500 |  | 0.1237 | -0.0691 | FCW <u><</u> 80 |
| WA | 54101 | 1.7625 | 1.3413 |  | 0.0957 |  | FCW <u><</u> 62 |
| WO | 80204 | 1.8000 | 1.8830 |  |  |  | FCW <u><</u> 69 |
| SW | 80204 | 1.8000 | 1.8830 |  |  |  | FCW <u><</u> 69 |
| BR | 82303 | 0.9420 | 3.5390 | 0.7952 |  |  | FCW <u><</u> 78 |
| CK | 82601 | 0.5189 | 1.4134 |  | 0.1365 | -0.0806 | FCW <u><</u> 45 |
| RO | 83303 | 2.8500 | 3.7820 | 0.7968 |  |  | FCW <u><</u> 82 |
| BO | 83704 | 4.5100 | 1.6700 |  |  |  | FCW <u><</u> 52 |
| NP | 80901 | 4.8935 | 1.6069 |  |  |  | FCW <u><</u> 44 |
| BH | 40201 | 8.0118 | 1.4212 |  |  |  | FCW <u><</u> 41 |
| PH | 40301 | 3.9234 | 1.5220 |  | 0.0405 |  | FCW <u><</u> 53 |
| SH | 40703 | 2.3600 | 3.5480 | 0.7986 |  |  | FCW <u><</u> 54 |
| BT | 74301 | 0.6847 | 1.1050 |  | 0.1420 | -0.0265 | FCW <u><</u> 43 |
| QA | 74603 | 4.2030 | 2.1290 | 1.0000 |  |  | FCW <u><</u> 43 |
| BP | 74101 | 6.2498 | 0.8655 |  |  |  | FCW <u><</u> 25 |
| PB | 37503 | 3.6390 | 1.9530 | 1.0000 |  |  | FCW <u><</u> 42 |
| BN | 60201 | 3.6031 | 1.1472 |  | 0.1224 |  | FCW <u><</u> 37 |
| WN | 60201 | 3.6031 | 1.1472 |  | 0.1224 |  | FCW <u><</u> 37 |
| HH | 70101 | 7.8084 | 0.8129 |  | 0.0941 | -0.0817 | FCW <u><</u> 39 |
| BK | 90101 | 3.0012 | 0.8165 |  | 0.1395 |  | FCW <u><</u> 48 |
| OH | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| BE | 31301 | 6.4741 | 1.0778 |  | 0.0719 | -0.0637 | FCW <u><</u> 57 |
| ST | 31301 | 6.4741 | 1.0778 |  | 0.0719 | -0.0637 | FCW <u><</u> 57 |
| MM | 31301 | 6.4741 | 1.0778 |  | 0.0719 | -0.0637 | FCW <u><</u> 57 |
| AH | 39101 | 0.9219 | 1.6303 |  | 0.1150 | -0.1113 | FCW <u><</u> 42 |
| AC | 40703 | 2.3600 | 3.5480 | 0.7986 |  |  | FCW <u><</u> 54 |
| HK | 46201 | 7.1043 | 1.3041 |  | 0.0456 |  | FCW <u><</u> 51 |
| DW | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| HT | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| AP | 76102 | 4.1027 | 1.3960 | 1.0775 |  |  | FCW <u><</u> 52 |
| BG | 69301 | 5.5037 | 1.0567 |  | 0.0880 | 0.0610 | FCW <u><</u> 50 |
| SY | 73101 | -1.3973 | 1.3756 |  | 0.1835 |  | FCW <u><</u> 66 |
| PR | 76102 | 4.1027 | 1.3960 | 1.0775 |  |  | FCW <u><</u> 52 |
| CC | 76102 | 4.1027 | 1.3960 | 1.0775 |  |  | FCW <u><</u> 52 |
| PL | 76102 | 4.1027 | 1.3960 | 1.0775 |  |  | FCW <u><</u> 52 |
| WI | 97203 | 2.8290 | 3.4560 | 0.8575 |  |  | FCW <u><</u> 72 |
| BL | 97203 | 2.8290 | 3.4560 | 0.8575 |  |  | FCW <u><</u> 72 |
| DM | 97203 | 2.8290 | 3.4560 | 0.8575 |  |  | FCW <u><</u> 72 |
| SS | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | FCW <u><</u> 29 |
| MA | 55201 | 4.1971 | 1.5567 |  | 0.0880 |  | FCW <u><</u> 46 |

1 Equation number is a combination of the species FIA code (###) and source (##), see equations on previous page. Maximum crown widths and DBH have been assigned to prevent poor behavior beyond the source data.

## 4.5 Crown Competition Factor

The LS variant uses crown competition factor (*CCF*) as a predictor variable in some growth relationships. Crown competition factor (Krajicek and others 1961) is a relative measurement of stand density that is based on tree diameters. Individual tree *CCFt* values estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open-grown. Stand *CCF* is the summation of individual tree (*CCFt*)values. A stand *CCF* value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand. In the LS variant, crown competition factor for an individual tree is calculated using equation {4.5.1}, and is based on crown width of open-grown trees.

{4.5.1} All species

*DBH* > 0.1”: *CCFt* = 0.001803 \* *OCWt^*2

*DBH* <u><</u> 0.1”: *CCFt* = 0.001

where:

*CCFt* is crown competition factor for an individual tree

*OCWt* is open-grown crown width for an individual tree

*DBH* is tree diameter at breast height

## 4.6 Small Tree Growth Relationships

Trees are considered “small trees” for FVS modeling purposes when they are smaller than some threshold diameter. This threshold diameter is set to 5.0” for all species in the LS variant.

The small tree model is height growth driven, meaning height growth is estimated first and diameter growth is estimated from height growth. These relationships are discussed in the following sections.

FVS blends small tree growth estimates with large tree growth estimates to assure a smooth transition between the two models. In the LS variant both height growth and diameter growth estimates use this blending technique. Small and large tree estimates are weighted over the diameter range 1.5”-5.0” *DBH* for all species. The weight is calculated using equation {4.6.1} and applied as shown in equation {4.6.2}.

{4.6.1}

DBH <u><</u> 1.5”*:* XWT = 0

1.5” *<* DBH < 5.0”: XWT = (DBH *–* 1.5*) / (*5.0 *–* 1.5*)*

DBH <u>></u> 5.0”*:* XWT = 1

{4.6.2} Estimated growth = [(1 - XWT) \* STGE] + [XWT \* LTGE]

where:

*XWT* is the weight applied to the growth estimates

*DBH* is tree diameter at breast height

*STGE* is the growth estimate obtained using the small-tree growth model

*LTGE* is the growth estimate obtained using the large-tree growth model

For example, the closer a tree’s *DBH* value is to the minimum diameter of 1.5”, the more the growth estimate will be weighted towards the small-tree growth model estimate. The closer a tree’s *DBH* value is to the maximum diameter of 5.0”, the more the growth estimate will be weighted towards the large-tree growth model estimate. If a tree’s *DBH* value falls outside of the range 1.5” – 5.0”, then only the small-tree or large-tree growth model estimate is used.

### 4.6.1 Small Tree Height Growth

Small tree height growth is estimated by calculating a potential height growth and modifying the estimate based on intra-stand competition. The estimate is then adjusted by cycle length, scaling factors computed by FVS based on the input small-tree height increment data, and any growth multipliers entered by the user. Potential height growth and the modifier value are estimated using the same equations described in section 4.7.2 to calculate large tree height growth. However, the scaling factor, 0.8, shown in equation {4.7.2.3} is not applied when estimating small tree height growth. Small tree height growth estimates are weighted with large tree height growth estimates as described above.

### 4.6.2 Small Tree Diameter Growth

Small tree diameter increment is estimated using the height-diameter relationships discussed in section 4.1. The functions are algebraically solved to estimate diameter as a function of height. Height at the start of the projection cycle is known. Height at the end of the projection cycle is obtained by adding the height growth (section 4.6.1) to the starting height. Diameter is predicted at the start of the projection cycle based on the height at the start of the projection cycle; diameter at the end of the projection cycle is estimated from the height at the end of the projection cycle. Small tree diameter growth is calculated as the difference between the predicted diameter at the start of the projection cycle and predicted diameter at the end of the projection cycle, and adjusted for bark ratio. Small tree diameter growth estimates are weighted with large tree diameter growth estimates as described above.

## 4.7 Large Tree Growth Relationships

Trees are considered “large trees” for FVS modeling purposes when they are equal to, or larger than, some threshold diameter. This threshold diameter is set to 5.0” for all species in the LS variant.

The large-tree model is driven by diameter growth meaning diameter growth is estimated first, and then height growth is estimated from diameter growth and other variables. These relationships are discussed in the following sections.

### 4.7.1 Large Tree Diameter Growth

The large tree diameter growth model used in most FVS variants is described in section 7.2.1 in Dixon (2002). For most variants, instead of predicting diameter increment directly, the natural log of the periodic change in squared inside-bark diameter (ln(*DDS*)) is predicted (Dixon 2002; Wykoff 1990; Stage 1973; and Cole and Stage 1972). For variants predicting diameter increment directly, diameter increment is converted to the *DDS* scale to keep the FVS system consistent across all variants.

The LS variant uses a large-tree diameter increment model based on Deo and Froese (2013) identified in equation {4.7.1.1}.

{4.7.1.1} ln(*DDS*) = b1 + (b2 \* (1/*DBH*)) + (b3 \* *DBH*) + (b4 \* *DBH*^2) (b5 \* (*DBH/QMD5))* + (b6 \* *DBH^2/QMD5*) + (b7 \* *BA5*) + (b8 \* *BAL5*) + (b9 \* *CR*) + (b10\* *CR^2*) + (b11 \* *SI*)

where:

*DDS* is the predicted 10-year periodic change in squared **outside**-bark diameter. *DDS* is converted to a squared **inside**-bark diameter before predicting diameter growth.

*DBH* is tree diameter at breast height

*QMD5* is quadratic mean diameter of trees 5 in. or greater in DBH

*CR* is crown ratio expressed as a percent

*SI* is site index of the species

*BA5* is the basal area per acre in trees over 5 in. DBH

*BAL5* is the basal area in trees larger than subject tree that are 5 in. or greater in DBH

b1- b11 are species-specific coefficients shown in tables 4.7.1.1 and 4.7.1.2

Some stand and tree values are bound based on the species:

for SC, JP, TA, BH, PH, SH, BG: if QMD5>13, then QMD5=13

for WC: if QMD5>15, then QMD5=15

for EC, WO, SW, BR, CK: if QMD5>25, then QMD5=25

for EC: if CR>60, then CR=60

for SY, BL: if CR>85, then CR=85

**Table 4.7.1.1 Coefficients (b1 – b6) for the 10-year diameter growth equation in the LS variant.**

| **Species Code** | **b1** | **b2** | **b3** | **b4** | **b5** | **b6** |
| --- | --- | --- | --- | --- | --- | --- |
|
|  |
| JP | 1.39500 | -3.93980 |  | 0.01213 | 1.37270 | -0.17735 |
| SC | 1.39500 | -3.93980 |  | 0.01213 | 1.37270 | -0.17735 |
| RN | 0.21748 |  | 0.30253 | -0.00885 |  |  |
| RP | 0.21748 |  | 0.30253 | -0.00885 |  |  |
| WP | 4.18210 | -13.91100 |  |  | -0.33396 |  |
| WS | 3.93030 | -9.39950 |  |  | -0.58596 |  |
| NS | 3.93030 | -9.39950 |  |  | -0.58596 |  |
| BF | 3.45800 | -10.10300 |  |  | -0.63924 |  |
| BS | 3.42060 | -9.49270 |  |  | -1.43830 |  |
| TA | -0.46100 |  | 0.42230 |  |  | -0.11080 |
| WC | -0.74827 |  | 0.33025 |  |  | -0.08958 |
| EH | 3.23090 | -11.81600 |  |  |  |  |
| OS | 0.21748 |  | 0.30253 | -0.00885 |  |  |
| RC | 3.09820 | -8.58440 |  |  |  |  |
| BA | 2.53130 | -10.14600 |  |  |  |  |
| GA | 2.53130 | -10.14600 |  |  |  |  |
| EC | 1.81510 |  | 0.09153 |  | 1.02090 | -0.03235 |
| SV | 2.23020 | -6.99620 | 0.11324 | -0.00186 |  |  |
| RM | -0.32580 |  | 0.33549 | -0.00703 | -0.53201 |  |
| BC | -0.32580 |  | 0.33549 | -0.00703 | -0.53201 |  |
| AE | 3.24350 | -10.73700 |  |  |  |  |
| RL | 3.24350 | -10.73700 |  |  |  |  |
| RE | 3.24350 | -10.73700 |  |  |  |  |
| YB | 2.54000 | -7.30400 |  |  |  |  |
| BW | 3.69120 | -11.03500 |  |  | -0.34599 |  |
| SM | 3.29460 | -12.69100 |  |  |  |  |
| BM | 3.29460 | -12.69100 |  |  |  |  |
| AB | 2.72840 | -12.05900 |  |  |  |  |
| WA | 2.47033 | -9.94277 |  |  |  |  |
| WO | 1.90185 | -5.69505 | 0.09625 |  |  | -0.01611 |
| SW | 1.90185 | -5.69505 | 0.09625 |  |  | -0.01611 |
| BR | 1.90185 | -5.69505 | 0.09625 |  |  | -0.01611 |
| CK | 1.90185 | -5.69505 | 0.09625 |  |  | -0.01611 |
| RO | 0.44520 |  | 0.22472 | -0.00397 |  |  |
| BO | 0.49086 |  | 0.23430 | -0.00371 |  |  |
| NP | 0.49086 |  | 0.23430 | -0.00371 |  |  |
| BH | 0.05897 |  |  | 0.01986 | 4.09180 | -0.33415 |
| PH | 0.05897 |  |  | 0.01986 | 4.09180 | -0.33415 |
| SH | 0.05897 |  |  | 0.01986 | 4.09180 | -0.33415 |
| BT | 3.44830 | -8.18780 |  |  |  |  |
| QA | 3.39040 | -7.18150 |  |  | -0.16910 |  |
| BP | 3.39040 | -7.18150 |  |  | -0.16910 |  |
| PB | 2.68840 | -7.31810 |  |  |  |  |
| BN | 2.95910 | -9.51990 |  |  |  |  |
| WN | 2.95910 | -9.51990 |  |  |  |  |
| HH | 5.38792 | -13.25910 |  |  | -2.44892 |  |
| BK | 3.02200 | -13.62700 |  |  |  |  |
| OH | 3.18760 | -10.28700 |  |  |  |  |
| BE | 3.18760 | -10.28700 |  |  |  |  |
| ST | 3.18760 | -10.28700 |  |  |  |  |
| MM | 3.18760 | -10.28700 |  |  |  |  |
| AH | 3.03080 | -8.10590 |  |  |  |  |
| AC | 3.03080 | -8.10590 |  |  |  |  |
| HK | 1.23520 | -5.21440 | 0.18300 | -0.00314 |  |  |
| DW | 3.03080 | -8.10590 |  |  |  |  |
| HT | 3.03080 | -8.10590 |  |  |  |  |
| AP | 3.03080 | -8.10590 |  |  |  |  |
| BG | -0.28233 |  |  | 0.01581 | 3.37463 | -0.26631 |
| SY | 3.86690 | -8.87037 |  |  |  |  |
| PR | 3.03080 | -8.10590 |  |  |  |  |
| CC | 3.03080 | -8.10590 |  |  |  |  |
| PL | 3.03080 | -8.10590 |  |  |  |  |
| WI | 3.86690 | -8.87037 |  |  |  |  |
| BL | 3.86690 | -8.87037 |  |  |  |  |
| DM | 3.86690 | -8.87037 |  |  |  |  |
| SS | 3.38410 | -10.28200 |  |  |  |  |
| MA | 3.03080 | -8.10590 |  |  |  |  |

**Table 4.7.1.2 Coefficients (b7 – b11) for the 10-year diameter growth equation in the LS variant.**

| **Species Code** | **b7** | **b8** | **b9** | **b10** | **b11** |
| --- | --- | --- | --- | --- | --- |
|
|  |
| JP |  | -0.00428 | 0.02997 | -0.00015 | 0.00385 |
| SC |  | -0.00428 | 0.02997 | -0.00015 | 0.00385 |
| RN | -0.00114 | -0.00306 | 0.01947 |  | 0.00581 |
| RP | -0.00114 | -0.00306 | 0.01947 |  | 0.00581 |
| WP |  | -0.00412 | 0.03382 | -0.00012 |  |
| WS |  | -0.00375 | 0.01635 |  |  |
| NS |  | -0.00375 | 0.01635 |  |  |
| BF | -0.00192 |  | 0.02677 | -0.00009 | 0.00317 |
| BS | 0.00495 | -0.00680 | 0.01839 |  | 0.00742 |
| TA |  |  |  | 0.00012 |  |
| WC | -0.00118 |  | 0.02758 | -0.00015 | 0.00537 |
| EH | -0.00166 |  | 0.01535 |  | 0.00676 |
| OS | -0.00114 | -0.00306 | 0.01947 |  | 0.00581 |
| RC | -0.00386 |  | 0.01628 |  |  |
| BA | -0.00095 |  | 0.01677 |  | 0.01285 |
| GA | -0.00095 |  | 0.01677 |  | 0.01285 |
| EC |  | -0.00428 |  | 0.00031 |  |
| SV |  | -0.00171 | 0.03114 | -0.00014 |  |
| RM | -0.00203 |  | 0.03314 | -0.00016 | 0.00520 |
| BC | -0.00203 |  | 0.03314 | -0.00016 | 0.00520 |
| AE |  |  | 0.05258 | -0.00038 |  |
| RL |  |  | 0.05258 | -0.00038 |  |
| RE |  |  | 0.05258 | -0.00038 |  |
| YB |  | -0.00223 | 0.01369 |  | 0.00647 |
| BW |  | -0.00259 | 0.01932 |  |  |
| SM | -0.00210 |  | 0.01787 |  | 0.00496 |
| BM | -0.00210 |  | 0.01787 |  | 0.00496 |
| AB |  |  | 0.01843 |  | 0.00856 |
| WA | -0.00228 |  | 0.04226 | -0.00029 | 0.01152 |
| WO |  | -0.00367 | 0.03021 | -0.00022 |  |
| SW |  | -0.00367 | 0.03021 | -0.00022 |  |
| BR |  | -0.00367 | 0.03021 | -0.00022 |  |
| CK |  | -0.00367 | 0.03021 | -0.00022 |  |
| RO |  | -0.00148 |  | 0.00009 | 0.01305 |
| BO | -0.00186 |  | 0.00770 |  | 0.00724 |
| NP | -0.00186 |  | 0.00770 |  | 0.00724 |
| BH |  | 0.00184 |  | 0.00008 |  |
| PH |  | 0.00184 |  | 0.00008 |  |
| SH |  | 0.00184 |  | 0.00008 |  |
| BT |  | -0.00134 | 0.02367 |  |  |
| QA |  | -0.00311 | 0.01543 |  | 0.00619 |
| BP |  | -0.00311 | 0.01543 |  | 0.00619 |
| PB |  |  |  | 0.00020 | 0.00350 |
| BN |  | -0.00169 | 0.03012 |  | 0.00356 |
| WN |  | -0.00169 | 0.03012 |  | 0.00356 |
| HH |  | -0.00353 |  |  |  |
| BK | -0.00288 |  | 0.04569 | -0.00037 | 0.00766 |
| OH |  |  | 0.04919 | -0.00045 |  |
| BE |  |  | 0.04919 | -0.00045 |  |
| ST |  |  | 0.04919 | -0.00045 |  |
| MM |  |  | 0.04919 | -0.00045 |  |
| AH | -0.00179 |  | 0.00489 |  |  |
| AC | -0.00179 |  | 0.00489 |  |  |
| HK | -0.00439 | 0.00331 | 0.02814 | -0.00011 | 0.00447 |
| DW | -0.00179 |  | 0.00489 |  |  |
| HT | -0.00179 |  | 0.00489 |  |  |
| AP | -0.00179 |  | 0.00489 |  |  |
| BG |  |  | 0.01650 |  |  |
| SY |  | -0.00535 | 0.02034 |  |  |
| PR | -0.00179 |  | 0.00489 |  |  |
| CC | -0.00179 |  | 0.00489 |  |  |
| PL | -0.00179 |  | 0.00489 |  |  |
| WI |  | -0.00535 | 0.02034 |  |  |
| BL |  | -0.00535 | 0.02034 |  |  |
| DM |  | -0.00535 | 0.02034 |  |  |
| SS |  | -0.00170 | 0.03201 | -0.00026 |  |
| MA | -0.00179 |  | 0.00489 |  |  |

### 4.7.2 Large Tree Height Growth

The large-tree height growth model also uses the modeling technique of estimating a potential height growth and modifying this potential growth based on tree competition. Potential height growth is estimated using site index curves from Carmean et al (1989). Surrogate curves, based on general growth form for the species, were chosen for species for which curves were not given in Carmean et al. The general form of the equation to estimate height given tree age and site index is shown in equation {4.7.2.1}. Algebraic manipulation to estimate tree age from height and site index yields the equation shown in {4.7.2.2}. Coefficients by species and which of the Carmean et al equations are used for which species are shown in table 4.7.2.1.

{4.7.2.1} *HT* = b6 + b1 \* *SI*^b2 \* (1 – exp(b3 \* *A*)) ^ (b4 \* *SI*^b5)

{4.7.2.2} *A* = 1./b3\*(ln(1-((*HT*-b6)/b1/*SI*^b2)^(1./b4/*SI*^b5)))

where:

*HT* is tree height

*SI* is species site index

*A* is tree age

b1 – b6 are coefficients shown in table 4.7.2.1

b6 = 0 for total age curves; b6 = 4.5 for breast-height age curves

First, tree age is estimated using site index and the height of the tree at the beginning of the cycle. Next, age is incremented by 10 years and a new height is estimated using the updated age and site index. The difference between the new estimated height and the tree height at the beginning of the cycle is potential height growth. A small random component is applied to insure some distribution in estimated heights.

Potential height growth gets modified by a combination of two factors. One factor is the same modifier, CM, calculated using equation {4.7.1.2} and applied to large-tree diameter growth. The other is a function of individual tree height relative to the average height of the 40-largest diameter trees in the stand. The potential height growth modifier is shown in equation {4.7.2.3}, and the resulting height growth estimate is shown in equation {4.7.2.4}. Estimated height growth is then adjusted for cycle length and user-supplied growth multipliers.

{4.7.2.3}*PHMOD* = [1 – ((1 – *CM*) \* (1 – *RELHT*))] \* 0.8

{4.7.2.4}*HTGi* = *PHTG* \* *PHMOD*

where:

*HTGi* is estimated height growth of an individual tree

*PHTG* is potential height growth estimated as described above

*PHMOD* is potential height growth modifier

*CM* is growth modifier as described in section 4.7.1

*RELHT* is tree height divided by average height of the 40 largest diameter trees in the stand

**Table 4.7.2.1. Coefficients for site index curves used in the LS variant.**

| **Species Code** | **Carmean et al Figure** | **b1** | **b2** | **b3** | **b4** | **b5** | **b6** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| JP | 74 | 1.633 | 1 | -0.0223 | 1.2419 | 0 | 0 |
| SC | 108 | 1.2096 | 1.0027 | -0.0671 | 1.2282 | 0.0335 | 0 |
| RN | 95 | 1.89 | 1 | -0.0198 | 1.3892 | 0 | 0 |
| RP | 95 | 1.89 | 1 | -0.0198 | 1.3892 | 0 | 0 |
| WP | 104 | 3.2425 | 0.798 | -0.0435 | 52.0549 | -0.7064 | 0 |
| WS | 68 | 1.3342 | 1.0008 | -0.0401 | 1.8068 | 0.0248 | 0 |
| NS | 63 | 6.7791 | 0.6876 | -0.0280 | 12.1447 | -0.4142 | 0 |
| BF | 55 | 2.077 | 0.9303 | -0.0285 | 2.8937 | -0.1414 | 0 |
| BS | 70 | 1.762 | 1 | -0.0201 | 1.2307 | 0 | 0 |
| TA | 59 | 1.1151 | 1 | -0.0504 | 1.3076 | 0.0009 | 0 |
| WC | 126 | 1.973 | 1 | -0.0154 | 1.0895 | 0 | 0 |
| EH | 127 | 2.1493 | 0.9979 | -0.0175 | 1.4086 | -0.0008 | 0 |
| OS | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0 |
| RC | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0 |
| BA | 14 | 4.2286 | 0.7857 | -0.0178 | 4.6219 | -0.3591 | 0 |
| GA | 15 | 1.6505 | 0.9096 | -0.0644 | 125.7045 | -0.8908 | 0 |
| EC | 28 | 1.3615 | 0.9813 | -0.0675 | 1.5494 | -0.0767 | 0 |
| SV | 4 | 1.0645 | 0.9918 | -0.0812 | 1.5754 | -0.0272 | 0 |
| RM | 1 | 2.9435 | 0.9132 | -0.0141 | 1.658 | -0.1095 | 0 |
| BC | 35 | 7.1846 | 0.6781 | -0.0222 | 13.9186 | -0.5268 | 0 |
| AE | 53 | 6.4362 | 0.6827 | -0.0194 | 10.9767 | -0.5477 | 0 |
| RL | 53 | 6.4362 | 0.6827 | -0.0194 | 10.9767 | -0.5477 | 0 |
| RE | 53 | 6.4362 | 0.6827 | -0.0194 | 10.9767 | -0.5477 | 0 |
| YB | 5 | 2.2835 | 0.9794 | -0.0054 | 0.5819 | -0.0281 | 0 |
| BW | 51 | 4.7633 | 0.7576 | -0.0194 | 6.511 | -0.4156 | 0 |
| SM | 2 | 3.3721 | 0.8407 | -0.015 | 2.6208 | -0.2661 | 0 |
| BM | 2 | 3.3721 | 0.8407 | -0.015 | 2.6208 | -0.2661 | 0 |
| AB | 11 | 29.73 | 0.3631 | -0.0127 | 16.7616 | -0.6804 | 0 |
| WA | 12 | 1.5768 | 0.9978 | -0.0156 | 0.6705 | 0.0182 | 0 |
| WO | 41 | 4.5598 | 0.8136 | -0.0132 | 2.241 | -0.188 | 0 |
| SW | 44 | 1.3466 | 0.959 | -0.0574 | 8.9538 | -0.3454 | 0 |
| BR | 36 | 2.1037 | 0.914 | -0.0275 | 3.7962 | -0.253 | 0 |
| CK | 36 | 2.1037 | 0.914 | -0.0275 | 3.7962 | -0.253 | 0 |
| RO | 38 | 0.4737 | 1.2905 | -0.0236 | 0.0979 | 0.6121 | 0 |
| BO | 49 | 2.9989 | 0.8435 | -0.02 | 3.4635 | -0.302 | 0 |
| NP | 36 | 2.1037 | 0.914 | -0.0275 | 3.7962 | -0.253 | 0 |
| BH | 10 | 1.8326 | 1.0015 | -0.0207 | 1.408 | -0.0005 | 0 |
| PH | 10 | 1.8326 | 1.0015 | -0.0207 | 1.408 | -0.0005 | 0 |
| SH | 10 | 1.8326 | 1.0015 | -0.0207 | 1.408 | -0.0005 | 0 |
| BT | 32 | 5.2188 | 0.6855 | -0.0301 | 50.0071 | -0.8695 | 0 |
| QA | 32 | 5.2188 | 0.6855 | -0.0301 | 50.0071 | -0.8695 | 0 |
| BP | 25 | 1.2941 | 0.9892 | -0.0315 | 1.0481 | -0.0368 | 0 |
| PB | 8 | 1.7902 | 0.9522 | -0.0173 | 1.1668 | -0.1206 | 0 |
| BN | 16 | 1.2898 | 0.9982 | -0.0289 | 0.8546 | 0.0171 | 0 |
| WN | 16 | 1.2898 | 0.9982 | -0.0289 | 0.8546 | 0.0171 | 0 |
| HH | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0 |
| BK | 50 | 0.968 | 1.0301 | -0.0468 | 0.1639 | 0.4127 | 0 |
| OH | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0 |
| BE | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0 |
| ST | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0 |
| MM | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0 |
| AH | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0 |
| AC | 53 | 6.4362 | 0.6827 | -0.0194 | 10.9767 | -0.5477 | 0 |
| HK | 19 | 1.5932 | 1.0124 | -0.0122 | 0.6245 | 0.013 | 0 |
| DW | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0 |
| HT | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0 |
| AP | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0 |
| BG | 27 | 1.3213 | 0.9995 | -0.0254 | 0.8549 | -0.0016 | 0 |
| SY | 25 | 1.2941 | 0.9892 | -0.0315 | 1.0481 | -0.0368 | 0 |
| PR | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0 |
| CC | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0 |
| PL | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0 |
| WI | 50 | 0.968 | 1.0301 | -0.0468 | 0.1639 | 0.4127 | 0 |
| BL | 50 | 0.968 | 1.0301 | -0.0468 | 0.1639 | 0.4127 | 0 |
| DM | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0 |
| SS | 50 | 0.968 | 1.0301 | -0.0468 | 0.1639 | 0.4127 | 0 |
| MA | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0 |

# 5.0 Mortality Model

The LS variant uses an SDI-based mortality model as described in Section 7.3.2 of Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002, referred to as EFVS). This SDI-based mortality model is comprised of two steps: 1) determining the amount of stand mortality (section 7.3.2.1 of EFVS) and 2) dispersing stand mortality to individual tree records (section7.3.2.2 of EFVS). In determining the amount of stand mortality, the summation of individual tree background mortality rates is used when stand density is below the minimum level for density dependent mortality (default is 55% of maximum SDI), while stand level density-related mortality rates are used when stands are above this minimum level.

The equation used to calculate individual tree background mortality rates for all species is shown in equation {5.0.1}, and this is then adjusted to the length of the cycle by using a compound interest formula as shown in equation {5.0.2}. Coefficients for these equations are shown in table 5.0.1. The overall amount of mortality calculated for the stand is the summation of the final mortality rate (*RIP*) across all live tree records.

{5.0.1} RI = [1 / (1 + exp(p0 + p1 \* DBH))] \* 0.5

{5.0.2} RIP = 1 – (1 – RI*)*^Y

where:

RI is the proportion of the tree record attributed to mortality

RIP is the final mortality rate adjusted to the length of the cycle

DBH is tree diameter at breast height

Y is length of the current projection cycle in years

p0 and p1 are species-specific coefficients shown in table 5.0.1

**Table 5.0.1 Coefficients used in the background mortality equation {5.0.1} in the LS variant.**

| **Species Code** | **p0** | **p1** |
| --- | --- | --- |
| JP | 5.1676998 | -0.0077681 |
| SC | 5.5876999 | -0.0053480 |
| RN | 5.1676998 | -0.0077681 |
| RP | 5.1676998 | -0.0077681 |
| WP | 5.5876999 | -0.0053480 |
| WS | 5.1676998 | -0.0077681 |
| NS | 5.1676998 | -0.0077681 |
| BF | 5.1676998 | -0.0077681 |
| BS | 5.1676998 | -0.0077681 |
| TA | 5.1676998 | -0.0077681 |
| WC | 5.1676998 | -0.0077681 |
| EH | 5.1676998 | -0.0077681 |
| OS | 5.5876999 | -0.0053480 |
| RC | 5.5876999 | -0.0053480 |
| BA | 5.9617000 | -0.0340128 |
| GA | 5.1676998 | -0.0077681 |
| EC | 5.9617000 | -0.0340128 |
| SV | 5.1676998 | -0.0077681 |
| RM | 5.1676998 | -0.0077681 |
| BC | 5.9617000 | -0.0340128 |
| AE | 5.1676998 | -0.0077681 |
| RL | 5.1676998 | -0.0077681 |
| RE | 5.1676998 | -0.0077681 |
| YB | 5.9617000 | -0.0340128 |
| BW | 5.1676998 | -0.0077681 |
| SM | 5.1676998 | -0.0077681 |
| BM | 5.1676998 | -0.0077681 |
| AB | 5.1676998 | -0.0077681 |
| WA | 5.9617000 | -0.0340128 |
| WO | 5.9617000 | -0.0340128 |
| SW | 5.9617000 | -0.0340128 |
| BR | 5.9617000 | -0.0340128 |
| CK | 5.9617000 | -0.0340128 |
| RO | 5.9617000 | -0.0340128 |
| BO | 5.9617000 | -0.0340128 |
| NP | 5.9617000 | -0.0340128 |
| BH | 5.9617000 | -0.0340128 |
| PH | 5.9617000 | -0.0340128 |
| SH | 5.9617000 | -0.0340128 |
| BT | 5.9617000 | -0.0340128 |
| QA | 5.9617000 | -0.0340128 |
| BP | 5.9617000 | -0.0340128 |
| PB | 5.9617000 | -0.0340128 |
| BN | 5.9617000 | -0.0340128 |
| WN | 5.9617000 | -0.0340128 |
| HH | 5.1676998 | -0.0077681 |
| BK | 5.1676998 | -0.0077681 |
| OH | 5.9617000 | -0.0340128 |
| BE | 5.9617000 | -0.0340128 |
| ST | 5.9617000 | -0.0340128 |
| MM | 5.9617000 | -0.0340128 |
| AH | 5.1676998 | -0.0077681 |
| AC | 5.9617000 | -0.0340128 |
| HK | 5.9617000 | -0.0340128 |
| DW | 5.1676998 | -0.0077681 |
| HT | 5.9617000 | -0.0340128 |
| AP | 5.9617000 | -0.0340128 |
| BG | 5.1676998 | -0.0077681 |
| SY | 5.9617000 | -0.0340128 |
| PR | 5.9617000 | -0.0340128 |
| CC | 5.9617000 | -0.0340128 |
| PL | 5.9617000 | -0.0340128 |
| WI | 5.1676998 | -0.0077681 |
| BL | 5.1676998 | -0.0077681 |
| DM | 5.9617000 | -0.0340128 |
| SS | 5.1676998 | -0.0077681 |
| MA | 5.9617000 | -0.0340128 |

When stand density-related mortality is in effect, the total amount of stand mortality is determined based on the trajectory developed from the relationship between stand SDI and the maximum SDI for the stand. This is explained in section 7.3.2.1 of EFVS.

Once the amount of stand mortality is determined based on either the summation of background mortality rates or density-related mortality rates, mortality is dispersed to individual tree records in relation to a tree’s height relative to the average stand height (RELHT) using equation {5.0.3}. This value is then adjusted by a species-specific mortality modifier representing the species shade tolerance shown in equation {5.0.4}.

The mortality model makes multiple passes through the tree records multiplying a record’s trees-per-acre value times the final mortality rate (MORT), accumulating the results, and reducing the trees-per-acre representation until the desired mortality level has been reached. If the stand still exceeds the basal area maximum sustainable on the site the mortality rates are proportionally adjusted to reduce the stand to the specified basal area maximum.

{5.0.3} MR = 0.84525 – (0.01074 \* RELHT) + (0.0000002 \* RELHT^3)

{5.0.4} MORT = MR \* (1 – MWT) \* 0.1

where:

MR is the proportion of the tree record attributed to mortality (bounded: 0.01 <u><</u> MR <u><</u> 1)

*RELHT* is tree height divided by average height of the 40 largest diameter trees in the stand

MORT is the final mortality rate of the tree record

MWT is a mortality weight value shown in Table 5.0.2

**Table 5.0.2 MWT** **values for the mortality equation {5.0.4} in the LS variant.**

| **Species Code** | **MWT** | **Species Code** | **MWT** |
| --- | --- | --- | --- |
| JP | 0.30 | BO | 0.50 |
| SC | 0.30 | NP | 0.90 |
| RN | 0.30 | BH | 0.50 |
| RP | 0.30 | PH | 0.50 |
| WP | 0.50 | SH | 0.50 |
| WS | 0.50 | BT | 0.10 |
| NS | 0.50 | QA | 0.10 |
| BF | 0.90 | BP | 0.10 |
| BS | 0.70 | PB | 0.30 |
| TA | 0.10 | BN | 0.30 |
| WC | 0.70 | WN | 0.30 |
| EH | 0.70 | HH | 0.70 |
| OS | 0.30 | BK | 0.10 |
| RC | 0.20 | OH | 0.30 |
| BA | 0.30 | BE | 0.70 |
| GA | 0.70 | ST | 0.90 |
| EC | 0.10 | MM | 0.50 |
| SV | 0.70 | AH | 0.90 |
| RM | 0.85 | AC | 0.90 |
| BC | 0.40 | HK | 0.50 |
| AE | 0.50 | DW | 0.90 |
| RL | 0.70 | HT | 0.30 |
| RE | 0.50 | AP | 0.40 |
| YB | 0.50 | BG | 0.30 |
| BW | 0.70 | SY | 0.50 |
| SM | 0.90 | PR | 0.10 |
| BM | 0.10 | CC | 0.50 |
| AB | 0.70 | PL | 0.30 |
| WA | 0.30 | WI | 0.90 |
| WO | 0.50 | BL | 0.10 |
| SW | 0.50 | DM | 0.50 |
| BR | 0.50 | SS | 0.30 |
| CK | 0.30 | MA | 0.50 |
| RO | 0.50 |  |  |

# 6.0 Regeneration

The LS variant contains a partial establishment model which may be used to input regeneration and ingrowth into simulations. A more detailed description of how the partial establishment model works can be found in section 5.4.5 of the Essential FVS Guide (Dixon 2002).

The regeneration model is used to simulate stand establishment from bare ground, or to bring seedlings and sprouts into a simulation with existing trees. Sprouts are automatically added to the simulation following harvest or burning of known sprouting species (see table 6.0.1 for sprouting species).

**Table 6.0.1 Regeneration parameters by species in the LS variant.**

| **Species Code** | **Sprouting Species** | **Minimum Bud Width (in)** | **Minimum Tree Height (ft)** | **Maximum Tree Height (ft)** |
| --- | --- | --- | --- | --- |
| JP | No | 0.1 | 0.33 | 14.0 |
| SC | No | 0.5 | 0.33 | 20.0 |
| RN | No | 0.1 | 0.25 | 18.0 |
| RP | No | 0.1 | 0.25 | 18.0 |
| WP | No | 0.4 | 0.33 | 20.0 |
| WS | No | 0.2 | 0.25 | 18.0 |
| NS | No | 0.2 | 0.25 | 18.0 |
| BF | No | 0.1 | 0.33 | 20.0 |
| BS | No | 0.2 | 0.25 | 16.0 |
| TA | No | 0.1 | 0.50 | 24.0 |
| WC | No | 0.1 | 0.33 | 16.0 |
| EH | No | 0.1 | 0.25 | 16.0 |
| OS | No | 0.3 | 0.25 | 16.0 |
| RC | No | 0.5 | 0.33 | 16.0 |
| BA | Yes | 0.2 | 0.33 | 18.0 |
| GA | Yes | 0.2 | 0.42 | 24.0 |
| EC | Yes | 0.1 | 0.42 | 24.0 |
| SV | Yes | 0.2 | 0.42 | 18.0 |
| RM | Yes | 0.2 | 1.00 | 20.0 |
| BC | Yes | 0.1 | 0.42 | 26.0 |
| AE | Yes | 0.1 | 0.33 | 16.0 |
| RL | Yes | 0.1 | 0.33 | 12.0 |
| RE | Yes | 0.1 | 0.50 | 20.0 |
| YB | Yes | 0.1 | 0.42 | 22.0 |
| BW | Yes | 0.1 | 0.33 | 16.0 |
| SM | Yes | 0.2 | 0.25 | 16.0 |
| BM | Yes | 0.2 | 0.25 | 16.0 |
| AB | Yes | 0.1 | 0.25 | 14.0 |
| WA | Yes | 0.2 | 0.42 | 24.0 |
| WO | Yes | 0.2 | 0.33 | 16.0 |
| SW | Yes | 0.1 | 0.33 | 16.0 |
| BR | Yes | 0.2 | 0.25 | 14.0 |
| CK | Yes | 0.1 | 0.33 | 12.0 |
| RO | Yes | 0.2 | 0.42 | 20.0 |
| BO | Yes | 0.2 | 0.33 | 16.0 |
| NP | Yes | 0.2 | 1.40 | 20.0 |
| BH | Yes | 0.3 | 0.50 | 20.0 |
| PH | Yes | 0.3 | 0.33 | 14.0 |
| SH | Yes | 0.3 | 0.33 | 14.0 |
| BT | Yes | 0.2 | 0.42 | 20.0 |
| QA | Yes | 0.3 | 0.42 | 20.0 |
| BP | Yes | 0.2 | 0.42 | 24.0 |
| PB | Yes | 0.1 | 0.42 | 18.0 |
| BN | Yes | 0.3 | 0.33 | 18.0 |
| WN | Yes | 0.4 | 0.33 | 20.0 |
| HH | Yes | 0.2 | 0.42 | 20.0 |
| BK | Yes | 0.1 | 0.58 | 24.0 |
| OH | No | 0.1 | 0.33 | 10.0 |
| BE | Yes | 0.3 | 0.33 | 16.0 |
| ST | Yes | 0.1 | 0.25 | 18.0 |
| MM | Yes | 0.1 | 2.10 | 20.0 |
| AH | Yes | 0.2 | 0.42 | 20.0 |
| AC | Yes | 0.1 | 0.50 | 20.0 |
| HK | Yes | 0.1 | 0.25 | 12.0 |
| DW | Yes | 0.1 | 0.25 | 18.0 |
| HT | Yes | 0.1 | 0.25 | 16.0 |
| AP | Yes | 0.2 | 0.42 | 20.0 |
| BG | Yes | 0.2 | 0.33 | 16.0 |
| SY | Yes | 0.1 | 0.58 | 24.0 |
| PR | Yes | 0.1 | 0.33 | 30.0 |
| CC | Yes | 0.1 | 2.10 | 20.0 |
| PL | Yes | 0.2 | 0.33 | 20.0 |
| WI | Yes | 0.1 | 4.70 | 20.0 |
| BL | Yes | 0.1 | 1.00 | 32.0 |
| DM | Yes | 0.1 | 2.10 | 20.0 |
| SS | Yes | 0.1 | 0.50 | 18.0 |
| MA | Yes | 0.1 | 2.10 | 20.0 |

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

{6.0.4} *PS =* exp(1.6134 - 0.0184 \* (((*DSTMPi* / 0.7788 - 0.4403) \* 2.54))) / (1 + exp(1.6134 - 0.0184 \* (((*DSTMPi* / 0.7788) - 0.4403) \* 2.54)))

{6.0.5} *PS =* exp(6.0065 - 0.0777\*((*DSTMPi* / 0.7801) \* 2.54)) / (1 + exp(6.0065 - 0.0777 \* ((*DSTMPi* / 0.7801) \* 2.54)))

{6.0.6} *PS =* ((57.3 - 0.0032 \* (*DSTMPi*)^3) / 100)

{6.0.7} *PS =* (*TPAi* / (*ASTPAR* \* 2)) \* ((*ASBAR* / 198) \* (40100.45 - 3574.02 \* *RSHAG*^2 + 554.02 \* *RSHAG*^3 - 3.5208 \* *RSHAG*^5 + 0.011797 \* *RSHAG*^7))

{6.0.8} *PS =* ((89.191 - 2.611 \* *DSTMPi*) / 100)

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

**Table 6.0.2 Sprouting algorithm parameters for sprouting species in the LS variant.**

| **Species Code** | **Sprouting Probability** | **Number of Sprout Records** | **Source\*** |
| --- | --- | --- | --- |
| BA | 0.8 for DBH < 12”,  0.5 for DBH > 12” | {6.0.1} | Curtis 1959  Lees and West 1988 |
| GA | 0.8 for DBH < 12”,  0.5 for DBH > 12” | 1 | Ag. Handbook 654 |
| EC | 0.4 for DBH < 25",  0 for DBH > 25" | 1, 0 | Ag. Handbook 654 |
| SV | 0.8 for DBH < 12”,  0.5 for DBH > 12” | {6.0.1} | Ag. Handbook 654 |
| RM | 0.8 for DBH < 12”,  0.5 for DBH > 12” | {6.0.1} | Solomon and Barton 1967  Prager and Goldsmith 1977 |
| BC | 0.8 for DBH < 12”,  0.5 for DBH > 12” | 1 | Hough 1965  Powell and Tryon 1979 |
| AE | 0.7 | 1 | Ag. Handbook 654 |
| RL | 0.7 | 1 | Ag. Handbook 654 |
| RE | 0.7 | 1 | Ag. Handbook 654 |
| YB | 0.3 | 1 | Solomon and Barton 1967  Perala 1974 |
| BW | 0.8 | {6.0.2} | Ag. Handbook 654 |
| SM | {6.0.8} | {6.0.1} | MacDonald and Powell 1983  Ag. Handbook 654 |
| BM | {6.0.8} | {6.0.1} | Tirmenstein 1991 |
| AB | 0.5 for DBH < 12",  0 for DBH > 12" | 1, 0 | Ag. Handbook 654 |
| WA | 0.8 for DBH < 12",  0.5 for DBH > 12" | 1 | Ag. Handbook 654 |
| WO | {6.0.4} | 1 | Sands and Abrams 2009  Westfall 2010  Ag. Handbook 654 |
| SW | 90% of Eq. {6.0.4} predictions | 1 | Ag. Handbook 654 |
| BR | 0.8 | 1 | Deitschmann 1965  Perala 1974 |
| CK | 0.7 | 1 | Ag. Handbook 654 |
| RO | {6.0.6} | {6.0.1} | Johnson 1975  Ag. Handbook 654 |
| BO | {6.0.5} | 1 | Sands and Abrams 2009  Westfall 2010  Ag. Handbook 654 |
| NP | 0.8 | 1 | Coladonato 1993 |
| BH | 0.95 for DBH < 24",  0.6 for DBH > 24" | 1 | Nelson 1965  Fayle 1966 |
| PH | 0.75 for DBH < 24",  0.5 for DBH > 24" | 1 | Ag. Handbook 654 |
| SH | 0.95 for DBH < 24",  0.6 for DBH > 24" | 1 | Nelson 1965 |
| BT | 0.8 | {6.0.2} | Ag. Handbook 654 |
| QA | {6.0.7} | 2 | Keyser 2001 |
| BP | 0.8 for DBH < 25",  0.5 for DBH > 25" | [B] | Ag. Handbook 654 |
| PB | 0.7 | 1 | Hutnik and Cunningham 1965  Bjorkbom 1972 |
| BN | 0.3 for DBH < 8",  0 for DBH > 8" | 1, 0 | Ag. Handbook 654 |
| WN | 0.8 for DBH < 8",  0.5 for DBH > 8" | 1 | Schlesinger 1977  Schlesinger 1989  Coladonato 1991 |
| HH | 0.8 | 1 | Ag. Handbook 654 |
| BK | 0.9 | {6.0.1} | Ag. Handbook 654 |
| BE | 0.6 for DBH < 15",  0.3 for DBH > 15" | 1 | Maeglin and Ohman 1973  Eyre 1980 |
| ST | 0.3 | 1 | Hibbs and Burnell 1979  Coladonato 1993 |
| MM | 0.7 | 1 | Sullivan 1993 |
| AH | No info available--default to 0.7 | 1 | n/a |
| AC | 0.8 | 1 | Hebard et al. 1981  Carey 1992 |
| HK | 0.4 for DBH < 8",  0.2 for DBH > 8" | 1 | Ag. Handbook 654 |
| DW | 0.7 for DBH < 8",  0.9 for DBH > 8" | {6.0.1} | Ag. Handbook 654 |
| HT | No info available--default to 0.7 | 1 | n/a |
| AP | 0.5 | 1 | See pin cherry (PR) |
| BG | 0.9 | 1 | Hook and DeBell 1970  Ag. Handbook 654 |
| SY | 0.7 | 1 | Steinbeck et al. 1972  Sullivan 1994 |
| PR | 0.7 | 1 | Ag. Handbook 654 |
| CC | 0.8 | {6.0.2} | Schier 1983  Ag. Handbook 654 |
| PL | 0.7 | 1 | See pin cherry (PR) |
| WI | 0.9 | 1 | See black willow (BL) |
| BL | 0.9 | 1 | Ag. Handbook 654 |
| DM | 0.9 | 1 | See black willow (BL) |
| SS | 0.8 | {6.0.2} | Ag. Handbook 654 |
| MA | 0.7 | {6.0.1} | Sullivan 1992 |

\*Many of the sources stemmed from those referenced in Agricultural Handbook 654, Silvics of North America. For the sake of being concise, only “Ag. Handbook 654” was listed when multiple publications were referenced from that handbook. When necessary, species-specific probabilities were based upon similarities with other species, either due to documented similarities or an assumed similarity. In the latter cases, assumptions were necessary due to a lack of previous research findings for these species.

Regeneration of seedlings must be specified by the user with the partial establishment model by using the PLANT or NATURAL keywords. Height of the seedlings is estimated in two steps. First, the height is estimated when a tree is 5 years old (or the end of the cycle – whichever comes first) by using the small-tree height growth equations found in section 4.6.1. Users may override this value by entering a height in field 6 of the PLANT or NATURAL keyword; however the height entered in field 6 is not subject to minimum height restrictions and seedlings as small as 0.05 feet may be established. The second step also uses the equations in section 4.6.1, which grow the trees in height from the point five years after establishment to the end of the cycle.

Seedlings and sprouts are passed to the main FVS model at the end of the growth cycle in which regeneration is established. Unless noted above, seedlings being passed are subject to minimum and maximum height constraints and a minimum budwidth constraint shown in table 6.0.1. After seedling height is estimated, diameter growth is estimated using equations described in section 4.6.2. Crown ratios on newly established trees are estimated as described in section 4.3.1.

Regenerated trees and sprouts can be identified in the treelist output file with tree identification numbers beginning with the letters “ES”.

# 7.0 Volume

Volume is calculated for four merchantability standards: total stem cubic feet, merchantable stem cubic feet, sawlog stem cubic feet, and sawlog stem board feet (calculated using Scribner rule on the Chippewa, Superior, Chequamegon, Nicolet, Chequamegon-Nicolet, Ottawa, and Hiawatha National Forests and calculated using the International ¼-inch on other National Forests). Volume estimation is based on methods contained in the National Volume Estimator Library maintained by the Forest Products Measurements group in the Forest Management Service Center (Volume Estimator Library Equations 2009). The default merchantability standards for the LS variant are shown in table 7.0.1.

Volume computation methods used by the Forest Inventory and Analysis (FIA) program can be requested with the FIAVBC keyword. This keyword encompasses the National Scale Volume and Biomass estimators (NSVB; Westfall et al. 2024) and regional equations used for woodland species (Burrill et al. 2024). More information about the FIAVBC keyword and required input variables can be found in the Essential FVS Guide (Dixon 2002).

**Table 7.0.1 Volume merchantability standards for the LS variant.**

|  |  |  |
| --- | --- | --- |
| **Pulpwood Volume Specifications:** | | |
| Minimum DBH / Top Diameter | Hardwoods | Softwoods |
| 903 – Chippewa (aspen, balsam poplar) | 6.0 / 4.0 inches | 5.0 / 4.0 inches |
| 903 – Chippewa (all other species) | 5.0 / 4.0 inches | 5.0 / 4.0 inches |
| 909 – Superior | 6.0 / 4.0 inches | 5.0 / 4.0 inches |
| All other locations | 5.0 / 4.0 inches | 5.0 / 4.0 inches |
| Stump Height | 0.5 feet | 0.5 feet |
| **Sawtimber Volume Specifications:** | | |
| Minimum DBH / Top Diameter | Hardwoods | Softwoods |
| 903 – Chippewa (aspen, balsam poplar) | 11.0 / 9.6 inches | 9.0 / 7.6 inches |
| 903 – Chippewa (all other species) | 9.0 / 7.6 inches | 9.0 / 7.6 inches |
| 907 – Ottawa (aspen, balsam poplar) | 9.0 / 7.6 inches | 9.0 / 7.6 inches |
| 907 – Ottawa (all other species) | 11.0 / 7.6 inches | 9.0 / 7.6 inches |
| All other locations | 11.0 / 9.6 inches | 9.0 / 7.6 inches |
| Stump Height | 1.0 foot | 1.0 foot |

For both cubic and board foot prediction, Clark’s profile models (Clark et al. 1991) are used for all species and all location codes in the LS variant. Equation number is 900CLKE\*\*\*, where \*\*\* signifies the three-digit FIA species code.

# 8.0 Fire and Fuels Extension (FFE-FVS)

The Fire and Fuels Extension to the Forest Vegetation Simulator (FFE-FVS) (Reinhardt and Crookston 2003) integrates FVS with models of fire behavior, fire effects, and fuel and snag dynamics. This allows users to simulate various management scenarios and compare their effect on potential fire hazard, surface fuel loading, snag levels, and stored carbon over time. Users can also simulate prescribed burns and wildfires and get estimates of the associated fire effects such as tree mortality, fuel consumption, and smoke production, as well as see their effect on future stand characteristics. FFE-FVS, like FVS, is run on individual stands, but it can be used to provide estimates of stand characteristics such as canopy base height and canopy bulk density when needed for landscape-level fire models.

For more information on FFE-FVS and how it is calibrated for the LS variant, refer to the updated FFE-FVS model documentation (Rebain, comp. 2010) available on the FVS website.

# 9.0 Insect and Disease Extensions

FVS Insect and Disease models have been developed through the participation and contribution of various organizations led by Forest Health Protection. The models are maintained by the Forest Management Service Center and regional Forest Health Protection specialists. There are no insect and disease models currently available for the LS variant. However, FVS addfiles that simulate the effects of known agents within the LS variant may be found in chapter 8 of the Essential FVS Users Guide (Dixon 2002).

# 10.0 Literature Cited

Arney, J.D. 1985. A modeling strategy for the growth projection of managed stands. Canadian Journal of Forest Research 15(3):511-518.

Bechtold, William A. 2003. Crown-diameter prediction models for 87 species of stand-grown trees in the eastern united states. Sjaf. 27(4):269-278.

Beukema, S.J.; Reinhardt, E.; Greenough, J.A.; Kurz, W.A.; Crookston, N.L.; Robinson, D.C.E. 1999. Fire and fuels extension: model description, working draft. Prepared by ESSA Technologies Ltd., Vancouver, BC for U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Missoula, MT. 58p.

Bjorkbom, John C. 1972. Stand changes in the first 10 years after seedbed preparation for paper birch. USDA Forest Service, Research Paper NE-238. Northeastern Forest Experiment Station, Upper Darby, PA. 10 p.

Bragg, Don C. 2001. A local basal area adjustment for crown width prediction. Njaf. 18(1):22-28.

Burrill, Elizabeth A.; DiTommaso, Andrea M.; Turner, Jeffery A.; Pugh, Scott A.; Christensen, Glenn; Kralicek, Karin M.; Perry, Carol J.; Lepine, Lucie C.; Walker, David M.; Conkling, Barbara L. 2024. The Forest Inventory and Analysis Database, FIADB user guides, volume: database description (version 9.3), nationwide forest inventory (NFI). U.S. Department of Agriculture, Forest Service. 1026 p. [Online].

Carey, Jennifer H. 1992. Quercus prinus. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Carmean, Willard H. 1979. Site Index Comparisons among Northern Hardwoods in Northern Wisconsin and Upper Michigan. Res. Pap. NC-169. St. Paul, MN: U.S. Department of Agriculture, Forest Service, North Central Forest Experiment Station. 17 p.

Carmean, Willard H.; Vasilevsky, Alexander. 1971. Site-index Comparisons for Tree Species in Northern Minnesota. Res. Pap. NC-65. St. Paul, MN: U.S. Department of Agriculture, Forest Service, North Central Forest Experiment Station. 8 p.

Carmean, Willard H.; Hahn, Jerold T.; Jacobs, Rodney D. 1989. Site index curves for forest tree species in the eastern United States. Gen. Tech. Report NC-128. St. Paul, MN: U.S. Department of Agriculture, North Central Forest Experiment Station. 142 p.

Clark, Alexander, Ray A. Souter, and Bryce E. Schlaegel. 1991. Stem Profile Equations for Southern Tree Species. Southeastern Forest Experiment Station Research Paper SE-282.

Coladonato, Milo. 1991. Juglans nigra. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Coladonato, Milo. 1993. Acer pensylvanicum. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory.

Coladonato, Milo. 1993. Quercus ellipsoidalis. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Cole, D. M.; Stage, A. R. 1972. Estimating future diameters of lodgepole pine. Res. Pap. INT-131. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 20p.

Curtis, John T. 1959. The vegetation of Wisconsin. Madison, WI: The University of Wisconsin Press. 657 p.

Curtis, Robert O. 1967. Height-diameter and height-diameter-age equations for second-growth Douglas-fir. Forest Science 13(4):365-375.

Deitschmann, Glenn H. 1965. Bur oak (Quercus macrocarpa Michx.). In Silvics of forest trees of the United States. p. 563-568. H. A. Fowells, comp. U.S. Department of Agriculture, Agriculture Handbook 271. Washington, DC.

Deo, R.K.; Froese, R.E. 2013. Refitting the large-tree diameter growth equations of the Lake States and Central States variants of the Forest Vegetation Simulator. MichiganTechnological University. School of Forest Resources and Environmental Science. 62 p.

Dixon, Gary E. comp. 2002 (revised frequently). Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U.S. Department of Agriculture, Forest Service, Forest Management Service Center.

Ek, Alan. 1974. Dimensional relationships of forest and open grown trees in Wisconsin. Univ. Of Wisconsin.

Eyre, F. H., ed. 1980. Forest cover types of the United States and Canada. Washington, DC: Society of American Foresters. 148 p.

Fayle, D. C. F. 1966. Root sucker origin in bitternut hickory. Canada, Canadian Forestry Service Bi-monthly Research Notes 24. p. 2.

Hahn, Jerold T.; Rolfe A. Leary. 1979. Potential Diameter Growth Functions. In: A Generalized Forest Growth Projection System Applied to the Lake States Region. Gen. Tech. Rep. NC-49. St. Paul, MN: U.S. Department of Agriculture, Forest Service, North Central Forest Experiment Station: 22-26.

Hebard, F.W., Griffin, G.J. & Elkins, J.R. (1981) Implications of chestnut blight incidence in recent clear-cut and mature forests for biological control of Endothia parasitica. U.S. Forest Service American Chestnut Cooperators Meeting (ed. M.C. Smith), pp. 12–13. US Forest Service Technical Report NE-64, Morgantown, WV.

Holdaway, Margaret R. 1984. Modeling the Effect of Competition on Tree Diameter Growth as Applied in STEMS. Gen. Tech. Rep. NC-94. St. Paul, MN: U.S. Department of Agriculture, Forest Service, North Central Forest Experiment Station. 9 p.

Holdaway, Margaret R. 1985. Adjusting STEMS Growth Model for Wisconsin Forests. Res. Pap. NC-267. St. Paul, MN: U.S. Department of Agriculture, Forest Service, North Central Forest Experiment Station. 8 p.

Holdaway, Margaret R. 1986. Modeling Tree Crown Ratio. The Forestry Chronicle.62:451-455.

Hook, D. D., and D. S. DeBell. 1970. Factors influencing stump sprouting of swamp and water tupelo seedlings. USDA Forest Service, Research Paper SE-57. Southeastern Forest Experiment Station, Asheville, NC. 9 p.

Hough, Ashbel F. 1965. Black cherry (Prunus serotina Ehrh.). In Silvics of forest trees of the United States. p. 539-545. H. A. Fowells, comp. U.S. Department of Agriculture, Agriculture Handbook 271. Washington, DC.

Hutnik, Russell J., and Frank E. Cunningham. 1965. Paper birch (Betula papyrifera Marsh.). In Silvics of forest trees of the United States. p. 93-98. H. A. Fowells, comp. U.S. Department of Agriculture, Agriculture Handbook 271. Washington, DC.

Johnson, Robert L. 1975. Natural regeneration and development of Nuttall oak and associated species. USDA Forest Service, Research Paper SO-104. Southern Forest Experiment Station, New Orleans, LA. 12 p.

Keyser, C.E. 2001. Quaking Aspen Sprouting in Western FVS Variants: A New Approach. Unpublished Manuscript.

Krajicek, J.; Brinkman, K.; Gingrich, S. 1961. Crown competition – a measure of density. For. Science 7(1):35-42.

Lees, J. C.; West, R. C. 1988. A strategy for growing black ash in the maritime provinces. Technical Note No. 201. Fredericton, NB: Canadian Forestry Service - Maritimes. 4 p.

MacDonald, J. E., & Powell, G. R. 1983. Relationships between stump sprouting and parent-tree diameter in sugar maple in the 1st year following clear-cutting. Canadian Journal of Forest Research, 13(3), 390-394.

Maeglin, R. R., and L. F. Ohmann. 1973. Boxelder (Acer negundo): a review and commentary. Bulletin of the Torrey Botanical Club 100:357-363.

Miner, Cynthia L., Walters, Nancy R., Belli, Monique L. 1988. A Guide to the TWIGS Program for the North Central United States. Gen. Tech. Rep. NC-125. U.S. Department of Agriculture, Forest Service, North Central Forest Experimental Station.

Minnesota Department of Natural Resources.2003. Field Guide to the Native Plant Communities of Minnesota: the Laurentian Mixed Forest Province. Ecological Land Classification Program, Minnesota County Biological Survey, and Natural Heritage and Nongame Research Program. MNDNR St. Paul, MN.

Nelson, Thomas C. 1965. Bitternut hickory (Carya cordiformis (Wangenh.) K. Koch). In Silvics of forest trees of the United States. p. 111-114. H. A. Fowells, comp. U.S. Department of Agriculture, Agriculture Handbook 271. Washington, DC. Carya cordiformis

Perala, Donald A. 1974. Growth and survival of northern hardwood sprouts after burning. USDA Forest Service, Research Note NC-176. North Central Forest Experiment Station, St. Paul, MN. 4 p.

Powell, Douglas S., and E. H. Tryon. 1979. Sprouting ability of advance growth in undisturbed stands. Canadian Journal of Forest Research 9(1):116-120.

Prager, U. E., and F. B. Goldsmith. 1977. Stump sprout formation by red maple (Acer rubrum L.) in Nova Scotia. p.3-99. In Proceedings of the Twenty-eighth Meeting of the Nova Scotian Institute of Science. Dalhousie University, Department of Biology, Halifax.

Rebain, Stephanie A. comp. 2010 (revised frequently). The Fire and Fuels Extension to the Forest Vegetation Simulator: Updated Model Documentation. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 379 p.

Reineke, L. H. 1933. Perfecting a stand density index for even aged forests. J. Agric. Res. 46:627-638.

Reinhardt, Elizabeth; Crookston, Nicholas L. (Technical Editors). 2003. The Fire and Fuels Extension to the Forest Vegetation Simulator. Gen. Tech. Rep. RMRS-GTR-116. Ogden, UT: U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station. 209 p.

Sands, B. A., & Abrams, M. D. (2009). Field Note: Effects of Stump Diameter on Sprout Number and Size for Three Oak Species in a Pennsylvania Clearcut. Northern Journal of Applied Forestry, 26(3), 122-125.

Schier, George A. 1983. Vegetative regeneration of Gambel oak and chokecherry from excised rhizomes. Forest Science. 29(30): 499-502.

Schlesinger, R. C., & Funk, D. T. 1977. Manager's handbook for black walnut. USDA Forest Service General Technical Report, North Central Forest Experiment Station, (NC-38).

Schlesinger, Richard C. 1989. Estimating Black Walnut Plantation Growth and Yield. In: Clark, F. Bryan, tech. ed.; Hutchinson, Jay G., ed. Central Hardwood Notes. St. Paul, MN: U.S. Department of Agriculture, Forest Service, North Central Forest Experiment Station.: Note 5.07.

Smith, w.r., r.m. Farrar, jr, p.a. Murphy, j.l. Yeiser, r.s. Meldahl, and j.s. Kush. 1992. Crown and basal area relationships of open-grown southern pines for modeling competition and growth.

Solomon, Dale S., and Barton M. Blum. 1967. Stump sprouting of four northern hardwoods. USDA Forest Service Research Paper NE-59. Northeastern Forest Experiment Station, Upper Darby, PA. 13 p.

Stage, A. R. 1973. Prognosis Model for stand development. Res. Paper INT-137. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 32p.

Steinbeck, K., R. G. McAlpine, and J. T. May. 1972. Short rotation culture of sycamore: a status report. Journal of Forestry 70(4):210-213.

Sullivan, Janet. 1992. Sorbus americana. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Sullivan, Janet. 1993. Acer spicatum. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Sullivan, Janet. 1994. Platanus occidentalis. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Tirmenstein, D. A. 1991. Acer saccharum. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Van Dyck, Michael G.; Smith-Mateja, Erin E., comps. 2000 (revised frequently). Keyword reference guide for the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

Westfall, J. A. (2010). New models for predicting diameter at breast height from stump dimensions. Northern journal of applied forestry, 27(1), 21-27.

Westfall, James A.; Coulston, John W.; Gray, Andrew N.; Shaw, John D.; Radtke, Philip J.; Walker, David M.; Weiskittel, Aaron R.; MacFarlane, David W.; Affleck, David L.R.; Zhao, Dehai; Temesgen, Hailemariam; Poudel, Krishna P.; Frank, Jereme M.; Prisley, Stephen P.; Wang, Yingfang; Sánchez Meador, Andrew J.; Auty, David; Domke, Grant M. 2024. A national-scale tree volume, biomass, and carbon modeling system for the United States. Gen. Tech. Rep. WO-104. Washington, DC: U.S. Department of Agriculture, Forest Service. 37 p.

Wykoff, W. R. 1990. A basal area increment model for individual conifers in the northern Rocky Mountains. For. Science 36(4): 1077-1104.

Wykoff, W.R.; Crookston, N.L.; Stage, A.R. 1982. User’s guide to the Stand Prognosis Model. Gen. Tech. Rep. INT-133. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 112p.

# 11.0 Appendices

## 11.1 Appendix A. Native Plant Community (NPV) Codes

**Table 11.1.1 NPV codes recognized in the LS variant.**

| **FVS Seq Number** | **NPV Code** | **Native Plant Community** |
| --- | --- | --- |
| 1 | FDn12 | Northern Dry-Sand Pine Woodland |
| 2 | FDn22 | Northern Dry-Bedrock Pine (Oak) Woodland |
| 3 | FDn32 | Northern Poor Dry-Mesic Mixed Woodland |
| 4 | FDn33 | Northern Dry-Mesic Mixed Woodland |
| 5 | FDn43 | Northern Mesic Mixed Forest |
| 6 | FDc12 | Central Poor Dry Pine Woodland |
| 7 | FDc23 | Central Dry Pine Woodland |
| 8 | FDc24 | Central Rich Dry Pine Woodland |
| 9 | FDc25 | Central Dry Oak-Aspen (Pine) Woodland |
| 10 | FDc34 | Central Dry-Mesic Pine-Hardwood Forest |
| 11 | MHn35 | Northern Mesic Hardwood Forest |
| 12 | MHn44 | Northern Wet-Mesic Boreal Hardwood-Conifer Forest |
| 13 | MHn45 | Northern Mesic Hardwood (Cedar) Forest |
| 14 | MHn46 | Northern Wet-Mesic Hardwood Forest |
| 15 | MHn47 | Northern Rich Mesic Hardwood Forest |
| 16 | MHc26 | Central Dry-Mesic Oak-Aspen Forest |
| 17 | MHc36 | Central Mesic Hardwood Forest (Eastern) |
| 18 | MHc37 | Central Mesic Hardwood Forest (Western) |
| 19 | MHc47 | Central Wet-Mesic Hardwood Forest |
| 20 | FFn57 | Northern Terrace Forest |
| 21 | FFn67 | Northern Floodplain Forest |
| 22 | WFn53 | Northern Wet Cedar Forest |
| 23 | WFn55 | Northern Wet Ash Swamp |
| 24 | WFn64 | Northern Very Wet Ash Swamp |
| 25 | WFs57 | Southern Wet Ash Swamp |
| 26 | WFw54 | Northwestern Wet Aspen Forest |
| 27 | FPn62 | Northern Rich Spruce Swamp (Basin) |
| 28 | FPn63 | Northern Cedar Swamp |
| 29 | FPn71 | Northern Rich Spruce Swamp (Water Track) |
| 30 | FPn72 | Northern Rich Tamarack Swamp (Eastern Basin) |
| 31 | FPn73 | Northern Alder Swamp |
| 32 | FPn81 | Northern Rich Tamarack Swamp (Water Track) |
| 33 | FPn82 | Northern Rich Tamarack Swamp (Western Basin) |
| 34 | FPs63 | Southern Rich Conifer Swamp |
| 35 | FPw63 | Northwestern Rich Conifer Swamp |
| 36 | APn80 | Northern Spruce Bog |
| 37 | APn81 | Northern Poor Conifer Swamp |
| 38 | APn90 | Northern Open Bog |
| 39 | APn91 | Northern Poor Fen |
| 40 | CTn11 | Northern Dry Cliff |
| 41 | CTn12 | Northern Open Talus |
| 42 | CTn24 | Northern Scrub Talus |
| 43 | CTn32 | Northern Mesic Cliff |
| 44 | CTn42 | Northern Wet Cliff |
| 45 | CTu22 | Lake Superior Cliff |
| 46 | ROn12 | Northern Bedrock Outcrop |
| 47 | ROn23 | Northern Bedrock Shrubland |
| 48 | LKi32 | Inland Lake Sand/Gravel/Cobble Shore |
| 49 | LKi43 | Inland Lake Rocky Shore |
| 50 | LKi54 | Inland Lake Clay/Mud Shore |
| 51 | LKu32 | Lake Superior Sand/Gravel/Cobble Shore |
| 52 | LKu43 | Lake Superior Rocky Shore |
| 53 | RVx32 | Sand/Gravel/Cobble River Shore |
| 54 | RVx43 | Rocky River Shore |
| 55 | RVx54 | Clay/Mud River Shore |
| 56 | OPn81 | Northern Shrub Shore Fen |
| 57 | OPn91 | Northern Rich Fen (Water Track) |
| 58 | OPn92 | Northern Rich Fen (Basin) |
| 59 | OPn93 | Northern Extremely Rich Fen |
| 60 | WMn82 | Northern Wet Meadow/Carr |
| 61 | MRn83 | Northern Mixed Cattail Marsh |
| 62 | MRn93 | Northern Bulrush-Spikerush Marsh |
| 63 | MRu94 | Lake Superior Coastal Marsh |

## 11.2 Appendix B. Site Index Conversion Coefficients

**Table 11.2.1 Site index a1 coefficients for species groups for the LS variant.**

|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Unknown Species Group** | **Known Species Group** | | | | | | | | | | | | | | | | | |
| **1** | | **2** | | **3** | | **4** | | **5** | | **6** | | **7** | | **8** | | **9** | **10** |
| 1 | 0 | | -0.083 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 2 | 0.081 | | 0 | | 3.926 | | 14.453 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 3 | 0 | | -4.094 | | 0 | | 10.9 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 4 | 0 | | -18.249 | | -13.974 | | 0 | | 0 | | 0 | | 0 | | -19.486 | | 0 | 0 |
| 5 | 0 | | 0 | | 0 | | 0 | | 0 | | -7.212 | | 0 | | -15.196 | | 0 | 0 |
| 6 | 0 | | 0 | | 0 | | 0 | | 6.175 | | 0 | | 2.846 | | 0 | | 0 | 0 |
| 7 | 0 | | 0 | | 0 | | 0 | | 0 | | -3.7 | | 0 | | -12.708 | | 0 | 0 |
| 8 | 0 | | 0 | | 0 | | 10.904 | | 8.205 | | 0 | | 6.434 | | 0 | | 0 | 0 |
| 9,10,12 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 13,23,27,28 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 11 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 14 | 0 | | -17.873 | | -5.606 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 15 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 16 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 17 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 18 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 19 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 20 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 21 | 0 | | 0 | | -5.576 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 22 | 0 | | 0 | | -5.576 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 24 | 4.385 | | 16.194 | | 8.276 | | 7.893 | | 1.605 | | 0 | | 0 | | 0 | | 0 | 0 |
| 25 | 4.385 | | 16.194 | | 8.276 | | 7.893 | | 1.605 | | 0 | | 0 | | 0 | | 0 | 0 |
| 26 | 9.002 | | 0 | | 0 | | 0 | | -17.109 | | 0 | | 0 | | 0 | | 0 | 0 |
| **Unknown Species Group** | **Known Species Group** | | | | | | | | | | | | | | | | | |
| **11** | | **12** | | **13** | | **14** | | **15** | | **16** | | **17** | | **18** | | **19** | **20** |
| 1 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 2 | 0 | | 0 | | 0 | | 13.601 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 3 | 0 | | 0 | | 0 | | 5.264 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 4 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 5 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 6 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 7 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 8 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 9,10,12 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 13,23,27, 28 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| 11 | 0 | | 0 | | 0 | | 8.379 | | -0.953 | | -15.228 | | 0.253 | | 7.441 | | 4.812 | 0 |
| 14 | -9.376 | | 0 | | 0 | | 0 | | 6.729 | | -2.119 | | -2.628 | | 3.4 | | 11.937 | 0 |
| 15 | 0.946 | | 0 | | 0 | | -7.973 | | 0 | | -6.136 | | -5.273 | | -1.384 | | 3.405 | 0 |
| 16 | 11.436 | | 0 | | 0 | | 2.022 | | 5.216 | | 0 | | -4.758 | | 2.045 | | 1.885 | 0 |
| 17 | -0.256 | | 0 | | 0 | | 2.652 | | 4.856 | | 4.768 | | 0 | | 4.931 | | 9.642 | 0 |
| 18 | -7.746 | | 0 | | 0 | | -3.563 | | 1.262 | | -2.119 | | -4.97 | | 0 | | 1.006 | 0 |
| 19 | -5.428 | | 0 | | 0 | | -15.895 | | -3.717 | | -2.162 | | -11.645 | | -1.143 | | 0 | 0 |
| 20 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | 0 |
| **Unknown Species Group** | **Known Species Group** | | | | | | | | | | | | | | | | | |
| **11** | | **12** | | **13** | | **14** | | **15** | | **16** | | **17** | | **18** | | **19** | **20** |
| 21 | 23.568 | | 0 | | 0 | | 10.41 | | 7.934 | | 6.247 | | 12.35 | | 10.199 | | 22.442 | 1.321 |
| 22 | 23.568 | | 0 | | 0 | | 10.41 | | 7.934 | | 6.247 | | 12.35 | | 10.199 | | 22.442 | 1.321 |
| 24 | 4.818 | | 0 | | 0 | | 16.179 | | 0.239 | | 9.945 | | -3.615 | | -11.564 | | 19.238 | 0 |
| 25 | 4.818 | | 0 | | 0 | | 16.179 | | 0.239 | | 9.945 | | -3.615 | | 2.868 | | 19.238 | 0 |
| 26 | 0 | | 0 | | 0 | | 13.612 | | 4.769 | | 9.696 | | 1.911 | | 10.199 | | 13.342 | 0 |
| **Unknown Species Group** | **Known Species Group** | | | | | | | | | | | | | | |
| **21** | **22** | | **23** | | **24** | | **25** | | **26** | | **27** | | **28** | |
| 1 | 0 | 0 | | 0 | | -4.661 | | -4.661 | | -11.774 | | 0 | | 0 | |
| 2 | 0 | 0 | | 0 | | -20.194 | | -20.194 | | 0 | | 0 | | 0 | |
| 3 | 4.678 | 4.678 | | 0 | | -9.004 | | -9.004 | | 0 | | 0 | | 0 | |
| 4 | 0 | 0 | | 0 | | -7.893 | | -7.893 | | 0 | | 0 | | 0 | |
| 5 | 0 | 0 | | 0 | | -1.366 | | -1.366 | | 12.096 | | 0 | | 0 | |
| 6 | 0 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | |
| 7 | 0 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | |
| 8 | 0 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | |
| 9,10,12 | 0 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | |
| 13,23,27,28 | 0 | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | |
| 11 | -37.214 | -37.214 | | 0 | | -4.346 | | -4.346 | | 0 | | 0 | | 0 | |
| 14 | -11.597 | -11.597 | | 0 | | -18.897 | | -18.897 | | -16.538 | | 0 | | 0 | |
| 15 | -9.013 | -9.013 | | 0 | | -0.214 | | -0.214 | | -5.084 | | 0 | | 0 | |
| 16 | -6.197 | -6.197 | | 0 | | -9.885 | | -9.885 | | -10.258 | | 0 | | 0 | |
| 17 | -15.079 | -15.079 | | 0 | | 3.165 | | 3.165 | | -1.913 | | 0 | | 0 | |
| 18 | -11.199 | -11.199 | | 0 | | 8.187 | | -2.435 | | -11.199 | | 0 | | 0 | |
| 19 | -34.762 | -34.762 | | 0 | | -23.105 | | -23.105 | | -16.344 | | 0 | | 0 | |
| 20 | -1.235 | -1.235 | | 0 | | 0 | | 0 | | 0 | | 0 | | 0 | |
| 21 | 0 | 0 | | 0 | | -8.189 | | -16.187 | | -16.401 | | 0 | | 0 | |
| 22 | 0 | 0 | | 0 | | -8.189 | | -16.187 | | -16.401 | | 0 | | 0 | |
| 24 | 7.992 | 7.992 | | 0 | | 0 | | 2.223 | | -19.532 | | 0 | | 0 | |
| 25 | 13.856 | 13.856 | | 0 | | -2.271 | | 0 | | 8.5 | | 0 | | 0 | |
| 26 | 13.069 | 13.069 | | 0 | | 13.926 | | -8.947 | | 0 | | 0 | | 0 | |

**Table 11.2.2 Site index a2 coefficients for species groups for the LS variant.**

|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Unknown Species Group** | **Known Species Group** | | | | | | | | | | | | | | | | | | | |
| **1** | **2** | | **3** | | **4** | | | **5** | | **6** | | **7** | **8** | | **9** | | **10** | | |
| 1 | 0 | 1.028 | | 0 | | 0 | | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | |
| 2 | 0.973 | 0 | | 0.959 | | 0.792 | | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | |
| 3 | 0 | 1.043 | | 0 | | 0.78 | | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | |
| 4 | 0 | 1.263 | | 1.282 | | 0 | | | 0 | | 0 | | 0 | 1.787 | | 0 | | 0 | | |
| 5 | 0 | 0 | | 0 | | 0 | | | 0 | | 1.168 | | 0 | 1.852 | | 0 | | 0 | | |
| 6 | 0 | 0 | | 0 | | 0 | | | 0.856 | | 0 | | 0.769 | 0 | | 0 | | 0 | | |
| 7 | 0 | 0 | | 0 | | 0 | | | 0 | | 1.3 | | 0 | 1.975 | | 0 | | 0 | | |
| 8 | 0 | 0 | | 0 | | 0.56 | | | 0.54 | | 0 | | 0.506 | 0 | | 0 | | 0 | | |
| 9,10,12 | 0 | 0 | | 0 | | 0 | | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | |
| 13,23,27,28 | 0 | 0 | | 0 | | 0 | | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | |
| 11 | 0 | 0 | | 0 | | 0 | | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | |
| **Unknown Species Group** | **Known Species Group** | | | | | | | | | | | | | | | | | | | |
| **1** | **2** | | **3** | | **4** | | | **5** | | **6** | | **7** | **8** | | **9** | | **10** | | |
| 14 | 0 | 1.314 | | 1.065 | | 0 | | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | |
| 15 | 0 | 0 | | 0 | | 0 | | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | |
| 16 | 0 | 0 | | 0 | | 0 | | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | |
| 17 | 0 | 0 | | 0 | | 0 | | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | |
| 18 | 0 | 0 | | 0 | | 0 | | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | |
| 19 | 0 | 0 | | 0 | | 0 | | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | |
| 20 | 0 | 0 | | 0 | | 0 | | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | |
| 21 | 0 | 0 | | 1.192 | | 0 | | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | |
| 22 | 0 | 0 | | 1.192 | | 0 | | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | |
| 24 | 0.941 | 0.802 | | 0.919 | | 1 | | | 1.175 | | 0 | | 0 | 0 | | 0 | | 0 | | |
| 25 | 0.941 | 0.802 | | 0.919 | | 1 | | | 1.175 | | 0 | | 0 | 0 | | 0 | | 0 | | |
| 26 | 0.765 | 0 | | 0 | | 0 | | | 1.414 | | 0 | | 0 | 0 | | 0 | | 0 | | |
| **Unknown Species Group** | **Known Species Group** | | | | | | | | | | | | | | | | | | |
| **11** | | **12** | | **13** | | **14** | **15** | | **16** | | **17** | | | **18** | | **19** | | **20** |
| 1 | 0 | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | | 0 | | 0 | | 0 |
| 2 | 0 | | 0 | | 0 | | 0.761 | 0 | | 0 | | 0 | | | 0 | | 0 | | 0 |
| 3 | 0 | | 0 | | 0 | | 0.939 | 0 | | 0 | | 0 | | | 0 | | 0 | | 0 |
| 4 | 0 | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | | 0 | | 0 | | 0 |
| 5 | 0 | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | | 0 | | 0 | | 0 |
| 6 | 0 | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | | 0 | | 0 | | 0 |
| 7 | 0 | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | | 0 | | 0 | | 0 |
| 8 | 0 | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | | 0 | | 0 | | 0 |
| 9,10,12 | 0 | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | | 0 | | 0 | | 0 |
| 13,23,27,28 | 0 | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | | 0 | | 0 | | 0 |
| 11 | 0 | | 0 | | 0 | | 0.894 | 1.007 | | 1.332 | | 0.99 | | | 0.961 | | 0.887 | | 0 |
| 14 | 1.119 | | 0 | | 0 | | 0 | 0.844 | | 1.048 | | 0.991 | | | 0.954 | | 0.751 | | 0 |
| 15 | 0.993 | | 0 | | 0 | | 1.185 | 0 | | 1.176 | | 1.086 | | | 1.096 | | 0.916 | | 0 |
| 16 | 0.751 | | 0 | | 0 | | 0.954 | 0.85 | | 0 | | 0.998 | | | 0.965 | | 0.872 | | 0 |
| 17 | 1.01 | | 0 | | 0 | | 1.009 | 0.921 | | 1.002 | | 0 | | | 0.992 | | 0.828 | | 0 |
| 18 | 1.041 | | 0 | | 0 | | 1.048 | 0.912 | | 1.036 | | 1.008 | | | 0 | | 0.88 | | 0 |
| 19 | 1.128 | | 0 | | 0 | | 1.332 | 1.092 | | 1.147 | | 1.208 | | | 1.136 | | 0 | | 0 |
| 20 | 0 | | 0 | | 0 | | 0 | 0 | | 0 | | 0 | | | 0 | | 0 | | 0 |
| 21 | 0.633 | | 0 | | 0 | | 0.898 | 0.88 | | 1.008 | | 0.819 | | | 0.911 | | 0.646 | | 1.07 |
| 22 | 0.633 | | 0 | | 0 | | 0.898 | 0.88 | | 1.008 | | 0.819 | | | 0.911 | | 0.646 | | 1.07 |
| 24 | 1.109 | | 0 | | 0 | | 0.856 | 1.116 | | 1.006 | | 1.142 | | | 1.412 | | 0.833 | | 0 |
| 25 | 1.109 | | 0 | | 0 | | 0.856 | 1.116 | | 1.006 | | 1.142 | | | 1.178 | | 0.833 | | 0 |
| 26 | 0 | | 0 | | 0 | | 0.823 | 0.938 | | 0.945 | | 0.999 | | | 0.911 | | 0.816 | | 0 |
| **Unknown Species Group** | **Known Species Group** | | | | | | | | | | | | | | |
| **21** | **22** | | | **23** | **24** | | | **25** | **26** | | **27** | | | **28** |
| 1 | 0 | 0 | | | 0 | 1.063 | | | 1.063 | 1.308 | | 0 | | | 0 |
| 2 | 0 | 0 | | | 0 | 1.247 | | | 1.247 | 0 | | 0 | | | 0 |
| 3 | 0.839 | 0.839 | | | 0 | 1.088 | | | 1.088 | 0 | | 0 | | | 0 |
| 4 | 0 | 0 | | | 0 | 1 | | | 0 | 0 | | 0 | | | 0 |
| 5 | 0 | 0 | | | 0 | 0.851 | | | 0.851 | 0.707 | | 0 | | | 0 |
| 6 | 0 | 0 | | | 0 | 0 | | | 0 | 0 | | 0 | | | 0 |
| 7 | 0 | 0 | | | 0 | 0 | | | 0 | 0 | | 0 | | | 0 |
| **Unknown Species Group** | **Known Species Group** | | | | | | | | | | | | | | |
| **21** | **22** | | | **23** | **24** | | | **25** | **26** | | **27** | | | **28** |
| 8 | 0 | 0 | | | 0 | 0 | | | 0 | 0 | | 0 | | | 0 |
| 9,10,12 | 0 | 0 | | | 0 | 0 | | | 0 | 0 | | 0 | | | 0 |
| 13,23,27,28 | 0 | 0 | | | 0 | 0 | | | 0 | 0 | | 0 | | | 0 |
| 11 | 1.579 | 1.579 | | | 0 | 0.902 | | | 0.902 | 0 | | 0 | | | 0 |
| 14 | 1.114 | 1.114 | | | 0 | 1.168 | | | 1.168 | 1.215 | | 0 | | | 0 |
| 15 | 1.136 | 1.136 | | | 0 | 0.896 | | | 0.896 | 1.066 | | 0 | | | 0 |
| 16 | 0.992 | 0.992 | | | 0 | 0.994 | | | 0.994 | 1.058 | | 0 | | | 0 |
| 17 | 1.221 | 1.221 | | | 0 | 0.876 | | | 0.876 | 1.001 | | 0 | | | 0 |
| 18 | 1.098 | 1.098 | | | 0 | 0.708 | | | 0.849 | 1.098 | | 0 | | | 0 |
| 19 | 1.549 | 1.549 | | | 0 | 1.201 | | | 1.201 | 1.225 | | 0 | | | 0 |
| 20 | 0.935 | 0.935 | | | 0 | 0 | | | 0 | 0 | | 0 | | | 0 |
| 21 | 0 | 1 | | | 0 | 1.025 | | | 1.168 | 1.255 | | 0 | | | 0 |
| 22 | 1 | 0 | | | 0 | 1.025 | | | 1.168 | 1.255 | | 0 | | | 0 |
| 24 | 0.976 | 0.976 | | | 0 | 0 | | | 0.979 | 1.403 | | 0 | | | 0 |
| 25 | 0.856 | 0.856 | | | 0 | 1.021 | | | 0 | 0.95 | | 0 | | | 0 |
| 26 | 0.797 | 0.797 | | | 0 | 0.713 | | | 1.053 | 0 | | 0 | | | 0 |

The U.S. Department of Agriculture (USDA) prohibits discrimination in all its programs and activities on the basis of race, color, national origin, sex, religion, age, disability, political beliefs, sexual orientation, or marital or family status. (Not all prohibited bases apply to all programs.) Persons with disabilities who require alternative means for communication of program information (Braille, large print, audiotape, etc.) should contact USDA’s TARGET Center at (202) 720-2600 (voice and TDD).

To file a complaint of discrimination, write USDA, Director, Office of Civil Rights, Room 326-W, Whitten Building, 1400 Independence Avenue, SW, Washington, DC 20250-9410 or call (202) 720-5964 (voice or TDD). USDA is an equal opportunity provider and employer.