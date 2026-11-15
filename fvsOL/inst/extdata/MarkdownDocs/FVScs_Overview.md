Central States (CS) Variant Overview of the Forest Vegetation Simulator

July 2026

![](data:image/jpeg;base64...)

![Forest%20Service%20Color](data:image/jpeg;base64...)Hoosier NF

(Bob Stone, FS-R9)

Central States (CS) Variant Overview of the Forest Vegetation Simulator

# Authors and Contributors:

The FVS staff has maintained model documentation for this variant in the form of a variant overview since its release in 1993. The original author was Renate Bush. In 2006, Gary Dixon reformulated many of the model components, created a test version of the variant and wrote this new variant overview. In 2008, the previous document was replaced with this updated variant overview. Gary Dixon, Christopher Dixon, Robert Havis, Chad Keyser, Stephanie Rebain, Erin Smith-Mateja, and Don Vandendriesche were involved with this update. Gary Dixon cross-checked information contained in this variant overview with the FVS source code.

FVS Staff. 2008 (revised July 9, 2026). Central States (CS) Variant Overview – Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 57p.

Table of Contents

[Authors and Contributors: ii](#_Toc209542271)

[1.0 Introduction 1](#_Toc209542272)

[2.0 Geographic Range 2](#_Toc209542273)

[3.0 Control Variables 3](#_Toc209542274)

[3.1 Location Codes 3](#_Toc209542275)

[3.2 Species Codes 4](#_Toc209542276)

[3.3 Habitat Type, Plant Association, and Ecological Unit Codes 7](#_Toc209542277)

[3.4 Site Index 7](#_Toc209542278)

[3.5 Maximum Density 9](#_Toc209542279)

[4.0 Growth Relationships 11](#_Toc209542280)

[4.1 Height-Diameter Relationships 11](#_Toc209542281)

[4.2 Bark Ratio Relationships 14](#_Toc209542282)

[4.3 Crown Ratio Relationships 15](#_Toc209542283)

[4.3.1 Crown Ratio Dubbing 15](#_Toc209542284)

[4.3.2 Crown Ratio Change 16](#_Toc209542285)

[4.3.3 Crown Ratio for Newly Established Trees 16](#_Toc209542286)

[4.4 Crown Width Relationships 16](#_Toc209542287)

[4.5 Crown Competition Factor 22](#_Toc209542288)

[4.6 Small Tree Growth Relationships 23](#_Toc209542289)

[4.6.1 Small Tree Height Growth 23](#_Toc209542290)

[4.6.2 Small Tree Diameter Growth 24](#_Toc209542291)

[4.7 Large Tree Growth Relationships 24](#_Toc209542292)

[4.7.1 Large Tree Diameter Growth 24](#_Toc209542293)

[4.7.2 Large Tree Height Growth 30](#_Toc209542294)

[5.0 Mortality Model 34](#_Toc209542295)

[6.0 Regeneration 39](#_Toc209542296)

[7.0 Volume 48](#_Toc209542297)

[8.0 Fire and Fuels Extension (FFE-FVS) 49](#_Toc209542298)

[9.0 Insect and Disease Extensions 50](#_Toc209542299)

[10.0 Literature Cited 51](#_Toc209542300)

[11.0 Appendices 56](#_Toc209542301)

Quick Guide to Default Settings

| **Parameter or Attribute** | | **Default Setting** | |
| --- | --- | --- | --- |
| Number of Projection Cycles | | 1 (10 if using FVS GUI) | |
| Projection Cycle Length | | 10 years | |
| Location Code (National Forest) | | 905 – Mark Twain | |
| Slope | | 5 percent | |
| Aspect | | 0 (no meaningful aspect) | |
| Elevation (default location) | | 10 (1000 feet) | |
| Latitude (default location) | | 37.95 | |
| Longitude (default location) | | 91.77 | |
| Site Species | | WO | |
| Site Index | | 65 feet (total age; 50 years) | |
| Maximum Stand Density Index | | Species specific | |
| Maximum Basal Area | | Species specific | |
| Volume Equations | | National Volume Estimator Library | |
| Pulpwood Volume Specifications: | | | |
| Minimum DBH / Top Diameter | | Hardwoods | Softwoods |
| 905 – Mark Twain | | 5.0 / 4.0 inches | 5.0 / 4.0 inches |
| 908 – Shawnee | | 6.0 / 5.0 inches | 5.0 / 4.0 inches |
| 911 – Wayne-Hoosier, 912 - Hoosier | | 6.0 / 4.0 inches | 5.0 / 4.0 inches |
| Stump Height | | 0.5 feet | 0.5 feet |
| Merchantable Sawlog Volume Specifications: | | | |
| Minimum DBH / Top Diameter | | Hardwoods | Softwoods |
| 905 – Mark Twain (eastern redcedar) | |  | 6.0 / 5.0 inches |
| 905 – Mark Twain (all other species) | | 9.0 / 7.6 inches | 9.0 / 7.6 inches |
| 908 – Shawnee | | 11.0 / 9.6 inches | 9.0 / 7.6 inches |
| 911 – Wayne-Hoosier, 912 - Hoosier | | 11.0 / 9.6 inches | 9.0 / 7.6 inches |
| Stump Height | | 1.0 foot | 1.0 foot |
| Sampling Design: | | | |
| Basal Area Factor | 40 BAF | | |
| Small-Tree Fixed Area Plot | 1/300th Acre | | |
| Breakpoint DBH | 5.0 inches | | |

# 1.0 Introduction

The Forest Vegetation Simulator (FVS) is an individual tree, distance independent growth and yield model with linkable modules called extensions, which simulate various insect and pathogen impacts, fire effects, fuel loading, snag dynamics, and development of understory tree vegetation. FVS can simulate a wide variety of forest types, stand structures, and pure or mixed species stands.

New “variants” of the FVS model are created by imbedding new tree growth, mortality, and volume equations for a particular geographic area into the FVS framework. Geographic variants of FVS have been developed for most of the forested lands in the United States.

The original Central States (CS) variant was developed in 1993 using relationships from the CS-TWIGS model (Shifley 1987; Miner and others 1988), and equations from other variants for FVS relationships not present in CS-TWIGS. The model was reformulated in 2006 to improve model estimates; the only remnant of the original CS-TWIGS formulation was in the large tree diameter growth equation. In 2017, the large tree diameter growth equations from LS-TWIGS were replaced with equations from Deo and Froese (2013).

To fully understand how to use this variant, users should also consult the following publication:

* Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002)

This publication may be downloaded from the Forest Management Service Center (FMSC), Forest Service website. Other FVS publications may be needed if one is using an extension that simulates the effects of fire, insects, or diseases.

# 2.0 Geographic Range

The CS variant covers forested areas in Illinois, Indiana, Iowa, and Missouri. This includes the Shawnee National Forest in Illinois, the Hoosier National Forest in Indiana, and the Mark Twain National Forest in Missouri. The suggested geographic range of use for the CS variant is shown in figure 2.0.1.

**![This is an image of the Central States suggested geographic range.  ](data:image/jpeg;base64...)Figure 2.0.1 Suggested geographic range of use for the CS variant.**

# 3.0 Control Variables

FVS users need to specify certain variables used by the CS variant to control a simulation. These are entered in parameter fields on various FVS keywords available in the FVS interface or they are read from an FVS input database using the Database Extension.

## 3.1 Location Codes

The location code is a 3- or 4-digit code where, in general, the first digit of the code represents the Forest Service Region Number, and the last two digits represent the Forest Number within that region. In some cases, a location code beginning with a “7” or “8” is used to indicate an administrative boundary that doesn’t use a Forest Service Region number (for example, other federal agencies, state agencies, or other lands).

If the location code is missing or incorrect in the CS variant, a default forest code of 905 (Mark Twain National Forest) will be used. Location codes recognized in the CS variant – and their associated default latitude, longitude, and elevation values – are shown in tables 3.1.1 and 3.1.2.

**Table 3.1.1 Location codes used in the CS variant.**

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Location Code** | **USFS National Forest** | **Latitude** | **Longitude** | **Elevation** |
| 905 | Mark Twain | 37.95 | 91.77 | 10 (1000 feet) |
| 908 | Shawnee | 37.74 | 88.54 | 4 (400 feet) |
| 912 | Hoosier | 38.86 | 86.49 | 6 (600 feet) |
| 911 | Wayne-Hoosier combined code (mapped to 912) | 38.86 | 86.49 | 6 (600 feet) |

**Table 3.1.2 Bureau of Indian Affairs reservation codes used in the CS variant.**

|  |  |
| --- | --- |
| **Location Code** | **Location** |
| 7110 | Omaha Reservation (mapped to 905) |
| 7111 | Santee Reservation (mapped to 905) |
| 7112 | Winnebago Reservation (mapped to 905) |
| 7202 | Iowa (Ks-Ne) Reservation (mapped to 905) |
| 7203 | Kickapoo (Ks) (mapped to 905) |
| 7204 | Prairie Band Of Potawatomi (mapped to 905) |
| 7205 | Sac And Fox Nation Reservation (mapped to 905) |
| 7210 | Kaw Otsa (mapped to 905) |
| 7509 | Sac And Fox/Meskwaki Settlement (mapped to 908) |
| 7602 | Quapaw Otsa (mapped to 905) |
| 7606 | Miami Otsa (mapped to 905) |
| 7608 | Modoc Otsa (mapped to 905) |
| 7609 | Osage Reservation (mapped to 905) |
| 7611 | Cherokee Otsa (mapped to 905) |

## 3.2 Species Codes

The CS variant recognizes 91 species, plus two other composite species categories. You may use FVS species codes, Forest Inventory and Analysis (FIA) species codes, or USDA Natural Resources Conservation Service PLANTS symbols to represent these species in FVS input data. Any valid eastern species code identifying species not recognized by the variant will be mapped to a similar species in the variant. The species mapping crosswalk is available on the FVS website variant documentation webpage. Any non-valid species code will default to the “other hardwood” category.

Either the FVS sequence number or species code must be used to specify a species in FVS keywords and Event Monitor functions. FIA codes or PLANTS symbols are only recognized during data input and may not be used in FVS keywords. Table 3.2.1 shows the complete list of species codes recognized by the CS variant.

**Table 3.2.1 Species codes used in the CS variant.**

| **Species Group** | **Species Number1** | **Species Code** | **FIA Code** | **PLANTS Symbol** | **Scientific Name2** | **Common Name2** |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | 1 | RC | 068 | JUVI | *Juniperus virginiana* | eastern redcedar |
| 1 | 2 | JU | 057 | JUNIP | *Juniperus* | juniper |
| 2 | 3 | SP | 110 | PIEC2 | *Pinus echinata* | shortleaf pine |
| 3 | 4 | VP | 132 | PIVI2 | *Pinus viginiana* | Virginia pine |
| 3 | 5 | LP | 131 | PITA | *Pinus taeda* | loblolly pine |
| 4 | 6 | OS | 299 | 2TN |  | other softwood3 |
| 4 | 7 | WP | 129 | PIST | *Pinus strobus* | eastern white pine |
| 5 | 8 | WN | 602 | JUNI | *Juglans nigra* | black walnut |
| 5 | 9 | BN | 601 | JUCI | *Juglans cinerea* | butternut |
| 6 | 10 | TL | 690 | NYSSA | *Nyssa* | tupelo |
| 6 | 11 | TS | 694 | NYBI | *Nyssa biflora* | swamp tupelo |
| 6 | 12 | WT | 691 | NYAQ2 | *Nyssa aquatica* | water tupelo |
| 6 | 13 | BG | 693 | NYSY | *Nyssa sylvatica* | blackgum |
| 7 | 15 | SH | 407 | CAOV2 | *Carya ovata* | shagbark hickory |
| 7 | 16 | SL | 405 | CALA21 | *Carya laciniosa* | shellbark hickory |
| 7 | 17 | MH | 409 | CAAL27 | *Carya tomentosa* | mockernut hickory |
| 8 | 18 | PH | 403 | CAGL8 | *Carya glabra* | pignut hickory |
| 8 | 19 | HI | 400 | CARYA | *Carya* | hybrid hickory |
| 8 | 20 | WH | 401 | CAAQ2 | *Carya aquatica* | water hickory |
| 8 | 21 | BH | 402 | CACO15 | *Carya cordiformis* | bitternut hickory |
| 8 | 22 | PE | 404 | CAIL2 | *Carya illinoinensis* | pecan |
| 8 | 23 | BI | 408 | CATE9 | *Carya texana* | black hickory |
| 9 | 24 | AB | 531 | FAGR | *Fagus grandifolia* | American beech |
| 10 | 25 | BA | 543 | FRNI | *Fraxinus nigra* | black ash |
| 10 | 26 | PA | 545 | FRPR | *Fraxinus profunda* | pumpkin ash |
| 10 | 27 | UA | 546 | FRQU | *Fraxinus quadrangulata* | blue ash |
| 11 | 28 | EC | 742 | PODE3 | *Populus deltoides* | eastern cottonwood |
| 12 | 29 | RM | 316 | ACRU | *Acer rubrum* | red maple |
| 12 | 30 | BE | 313 | ACNE2 | *Acer negundo* | boxelder |
| 12 | 31 | SV | 317 | ACSA2 | *Acer saccharinum* | silver maple |
| 13 | 32 | BC | 762 | PRSE2 | *Prunus serotina* | black cherry |
| 14 | 33 | AE | 972 | ULAM | *Ulmus americana* | American elm |
| 14 | 34 | SG | 461 | CELA | *Celtis laevigata* | sugarberry |
| 14 | 35 | HK | 462 | CEOC | *Celtis occidentalis* | common hackberry |
| 14 | 36 | WE | 971 | ULAL | *Ulmus alata* | winged elm |
| 14 | 37 | EL | 970 | ULMUS | *Ulmus* | elm |
| 14 | 38 | SI | 974 | ULPU | *Ulmus pumila* | Siberian elm |
| 14 | 39 | RL | 975 | ULRU | *Ulmus rubra* | slippery elm |
| 14 | 40 | RE | 977 | ULTH | *Ulmus thomasii* | rock elm |
| 15 | 41 | YP | 621 | LITU | *Liriodendron tulipifera* | tuliptree |
| 16 | 42 | BW | 951 | TIAM | *Tilia americana* | American basswood |
| 17 | 43 | SM | 318 | ACSA3 | *Acer saccharum* | sugar maple |
| 18 | 44 | AS | 540 | FRAXI | *Fraxinus* | ash |
| 18 | 45 | WA | 541 | FRAM2 | *Fraxinus americana* | white ash |
| 18 | 46 | GA | 544 | FRPE | *Fraxinus pennsylvanica* | green ash |
| 19 | 47 | WO | 802 | QUAL | *Quercus alba* | white oak |
| 20 | 48 | RO | 833 | QURU | *Quercus rubra* | northern red oak |
| 20 | 49 | SK | 812 | QUFA | *Quercus falcata* | southern red oak |
| 21 | 50 | BO | 837 | QUVE | *Quercus velutina* | black oak |
| 22 | 51 | SO | 806 | QUCO2 | *Quercus coccinea* | scarlet oak |
| 23 | 52 | BJ | 824 | QUMA3 | *Quercus marilandica* | blackjack oak |
| 24 | 53 | CK | 826 | QUMU | *Quercus muehlenbergii* | chinkapin oak |
| 24 | 54 | SW | 804 | QUBI | *Quercus bicolor* | swamp white oak |
| 24 | 55 | BR | 823 | QUMA2 | *Quercus macrocarpa* | bur oak |
| 24 | 56 | SN | 825 | QUMI | *Quercus michauxii* | swamp chestnut oak |
| 25 | 57 | PO | 835 | QUST | *Quercus stellata* | post oak |
| 25 | 58 | DO | 836 | QUSI2 | *Quercus similis* | bottomland post oak |
| 26 | 59 | CO | 832 | QUPR2 | *Quercus prinus* | chestnut oak |
| 27 | 60 | PN | 830 | QUPA2 | *Quercus palustris* | pin oak |
| 27 | 61 | CB | 813 | QUPA5 | *Quercus pagoda* | cherrybark oak |
| 27 | 62 | QI | 817 | QUIM | *Quercus imbricaria* | shingle oak |
| 27 | 63 | OV | 822 | QULY | *Quercus lyrata* | overcup oak |
| 27 | 64 | WK | 827 | QUNI | *Quercus nigra* | water oak |
| 27 | 65 | NK | 828 | QUTE | *Quercus texana* | Nuttall oak |
| 27 | 66 | WL | 831 | QUPH | *Quercus phellos* | willow oak |
| 27 | 67 | QS | 834 | QUSH | *Quercus shumardii* | Shumard’s oak |
| 28 | 69 | SS | 931 | SAAL5 | *Sassafras albidum* | sassafras |
| 28 | 70 | OB | 331 | AEGL | *Aesculus glabra* | Ohio buckeye |
| 28 | 71 | CA | 450 | CATAL | *Catalpa* | catalpa |
| 28 | 72 | PS | 521 | DIVI5 | *Diospyros virginiana* | common persimmon |
| 28 | 73 | HL | 552 | GLTR | *Gleditsia triacanthos* | honeylocust |
| 28 | 74 | BP | 741 | POBA2 | *Populus balsamifera* | balsam poplar |
| 28 | 75 | BT | 743 | POGR4 | *Populus grandidentata* | bigtooth aspen |
| 28 | 76 | QA | 746 | POTR5 | *Populus tremuloides* | quaking aspen |
| 28 | 77 | BK | 901 | ROPS | *Robinia pseudoacacia* | black locust |
| 29 | 79 | SY | 731 | PLOC | *Platanus occidentalis* | American sycamore |
| 29 | 80 | BY | 221 | TADI2 | *Taxodium distichum* | bald cypress |
| 29 | 81 | RB | 373 | BENI | *Betula nigra* | river birch |
| 29 | 82 | SU | 611 | LIST2 | *Liquidamber styraciflua* | sweetgum |
| 29 | 83 | WI | 920 | SALIX | *Salix* | willow |
| 29 | 84 | BL | 922 | SANI | *Salix nigra* | black willow |
| 30 | 85 | OH | 998 | 2TB |  | other hardwood3 |
| 30 | 86 | AH | 391 | CACA18 | *Carpinus caroliniana* | American hornbeam |
| 30 | 87 | RD | 471 | CECA4 | *Cercis canadensis* | eastern redbud |
| 30 | 88 | DW | 491 | COFL2 | *Cornus florida* | flowering dogwood |
| 30 | 89 | HT | 500 | CRATA | *Crataegus* | hawthorn |
| 30 | 90 | KC | 571 | GYDI | *Gymnocladus dioicus* | Kentucky coffeetree |
| 30 | 91 | OO | 641 | MAPO | *Maclura pomifera* | Osage-orange |
| 30 | 92 | CT | 651 | MAAC | *Magnolia acuminata* | cucumber tree |
| 30 | 93 | MV | 653 | MAVI2 | *Magnolia virginiana* | sweetbay |
| 30 | 94 | MB | 680 | MORUS | *Morus* | mulberry |
| 30 | 95 | HH | 701 | OSVI | *Ostrya virginiana* | hophornbeam |
| 30 | 96 | SD | 711 | OXAR | *Oxydendrum arboreum* | sourwood |

1Species numbers 14, 68, and 78 represent removed species groups.

2Set based on the USDA Forest Service NRM TAXA lists and the USDA Plants database.

3Other categories use FIA codes and NRM TAXA codes that best match the other category.

## 3.3 Habitat Type, Plant Association, and Ecological Unit Codes

Habitat type, plant association, and ecological unit codes are not used in the CS variant.

## 3.4 Site Index

Site index is used in the growth equations for the CS variant. Users should always use the site index curves from Carmean and others (1989) to estimate site index. In assigning site index, users should use site curves based on total age at an index age of 50. If site index is available, a single site index for the whole stand can be entered, a site index for each individual species in the stand can be entered, or a combination of these can be entered. If site index is missing or incorrect, the site species is set to white oak with a default site index set to 65.

Site indices for species not assigned a site index are converted from white oak site index to a species specific site index using equation {3.4.1}. If white oak is not the site species or no site index is specified for white oak, then equation {3.4.2} is used to calculate white oak’s site index from the site species site index. Coefficients for equations {3.4.1} and {3.4.2} are located in Table 3.4.1.

{3.4.1} *SIunknown* = a1 + a2 \* *SIwhite oak*

{3.4.2} *SIwhite oak* = (-1\*a1/a2) + (1/a2\**SIsite species*)

where:

*SIunknown*is site index of the species with unknown site index

*SIsite species* is site index of site species

*SIwhite oak* is site index of white oak

a1, a2 are species group specific coefficients shown in Table 3.4.1

**Table 3.4.1. Coefficients for Equation {3.4.1} and {3.4.2}.**

| **Species Code** | **a1** | **a2** | **Species Code** | **a1** | **a2** |
| --- | --- | --- | --- | --- | --- |
| RC | 0 | 0.8 | SK | -1.3344 | 1.082 |
| JU | 0 | 0.8 | BO | -2.706 | 1.106 |
| SP | -5.1489 | 1.062 | SO | 1.097 | 1.063 |
| VP | 0 | 1.25 | BJ | 0 | 0.96 |
| LP | 0 | 1.25 | CK | 0 | 0.89 |
| OS | 0 | 1.25 | SW | 0 | 0.89 |
| WP | 0 | 1.35 | BR | 0 | 0.89 |
| WN | 0 | 1.19 | SN | 0 | 0.89 |
| BN | 0 | 1.19 | PO | 0 | 0.83 |
| TL | 0 | 1.15 | DO | 0 | 0.83 |
| TS | 0 | 1.15 | CO | 2.656 | 0.965 |
| WT | 0 | 1.15 | PN | 0 | 1.2 |
| BG | 0 | 1.15 | CB | 0 | 1.2 |
| SH | 0 | 1.08 | QI | 0 | 1.2 |
| SL | 0 | 1.08 | OV | 0 | 1.2 |
| MH | 0 | 1.08 | WK | 0 | 1.2 |
| PH | 0 | 1.08 | NK | 0 | 1.2 |
| HI | 0 | 1.1 | WL | 0 | 1.2 |
| WH | 0 | 1.1 | QS | 0 | 1.2 |
| BH | 0 | 1.1 | SS | 0 | 1.35 |
| PE | 0 | 1.1 | OB | 0 | 1.35 |
| BI | 0 | 1.1 | CA | 0 | 1.35 |
| AB | 18.19 | 0.7695 | PS | 0 | 1.35 |
| BA | -35.098 | 1.729 | HL | 0 | 1.35 |
| PA | -35.098 | 1.729 | BP | 3.5434 | 1.2407 |
| UA | -35.098 | 1.729 | BT | 3.5434 | 1.2407 |
| EC | 0 | 1.3 | QA | 3.5434 | 1.2407 |
| RM | 0 | 1.32 | BK | 0 | 1.2 |
| BE | 0 | 1.32 | SY | 0 | 1.35 |
| SV | 0 | 1.32 | BY | 0 | 1.35 |
| BC | 0 | 1.25 | RB | 7.5209 | 1.0735 |
| AE | -26.067 | 1.51754 | SU | 7.5209 | 1.0735 |
| SG | -26.067 | 1.51754 | WI | 7.5209 | 1.0735 |
| HK | -26.067 | 1.51754 | BL | 7.5209 | 1.0735 |
| WE | -26.067 | 1.51754 | OH | 0 | 0.8 |
| EL | -26.067 | 1.51754 | AH | 0 | 0.8 |
| SI | -26.067 | 1.51754 | RD | 0 | 0.8 |
| RL | -26.067 | 1.51754 | DW | 0 | 0.8 |
| RE | -26.067 | 1.51754 | HT | 0 | 0.8 |
| YP | -7.01 | 1.2033 | KC | 0 | 0.9 |
| BW | 18.19 | 0.7695 | OO | 0 | 0.9 |
| SM | 0 | 1.22 | CT | 0 | 0.9 |
| AS | -36.805 | 1.6748 | MV | 0 | 0.9 |
| WA | -36.805 | 1.6748 | MB | 0 | 0.9 |
| GA | -36.805 | 1.6748 | HH | 0 | 0.9 |
| WO | 0 | 1 | SD | 0 | 0.9 |
| RO | -1.3344 | 1.082 |  |  |  |

## 3.5 Maximum Density

Maximum stand density index (SDI) and maximum basal area (BA) are important variables in determining density related mortality and crown ratio change. Maximum basal area is a stand level metric that can be set using the BAMAX or SETSITE keywords. If not set by the user, a default value is calculated from maximum stand SDI each projection cycle. Maximum stand density index can be set for each species using the SDIMAX or SETSITE keywords. If not set by the user, a default value is assigned as discussed below.

The default maximum SDI is set by species or a user specified basal area maximum. If a user specified basal area maximum is present, the maximum SDI for all species is computed using equation {3.5.1}; otherwise, species SDI maximums are assigned from the SDI maximums shown in table 3.5.1. Maximum stand density index at the stand level is a weighted average, by basal area, of the individual species SDI maximums.

Stand SDI is calculated using the Zeide calculation method (Dixon 2002).

{3.5.1} *SDIMAXi* = *BAMAX* / (0.5454154 \* *SDIU)*

where:

*SDIMAXi* is species-specific SDI maximum

*BAMAX* is the user-specified stand basal area maximum

*SDIU* is theproportion of theoretical maximum density at which the stand reaches actual maximum density (default 0.85, changed with the SDIMAX keyword)

**Table 3.5.1 Stand density index maximums by species in the CS variant.**

| **Species Code** | **SDI Maximum\*** | **Mapped to** | **Species Code** | **SDI Maximum\*** | **Mapped to** |
| --- | --- | --- | --- | --- | --- |
| RC | 354 |  | SK | 342 |  |
| JU | 354 | eastern redcedar | BO | 370 |  |
| SP | 490 |  | SO | 315 |  |
| VP | 499 |  | BJ | 326 |  |
| LP | 480 |  | CK | 336 |  |
| OS | 354 | eastern redcedar | SW | 361 | white oak |
| WP | 529 |  | BR | 423 |  |
| WN | 283 |  | SN | 417 | chestnut oak |
| BN | 283 | black walnut | PO | 311 |  |
| TL | 430 | blackgum | DO | 311 | post oak |
| TS | 704 |  | CO | 417 |  |
| WT | 726 |  | PN | 455 |  |
| BG | 430 |  | CB | 405 |  |
| SH | 302 |  | QI | 370 | black oak |
| SL | 302 | shagbark hickory | OV | 384 |  |
| MH | 230 |  | WK | 365 |  |
| PH | 276 |  | NK | 342 | southern red oak |
| HI | 302 | shagbark hickory | WL | 315 |  |
| WH | 301 | bitternut hickory | QS | 342 | southern red oak |
| BH | 301 |  | SS | 492 |  |
| PE | 338 |  | OB | 371 | sugar maple |
| BI | 289 |  | CA | 492 | sassafras |
| AB | 364 |  | PS | 147 |  |
| BA | 423 |  | HL | 338 |  |
| PA | 408 | white ash | BP | 384 |  |
| UA | 408 | white ash | BT | 520 |  |
| EC | 648 |  | QA | 562 |  |
| RM | 421 |  | BK | 343 |  |
| BE | 344 |  | SY | 499 |  |
| SV | 590 |  | BY | 692 |  |
| BC | 384 |  | RB | 400 |  |
| AE | 282 |  | SU | 430 |  |
| SG | 339 |  | WI | 447 | black willow |
| HK | 420 |  | BL | 447 |  |
| WE | 263 |  | OH | 257 | flowering dogwood |
| EL | 282 | American elm | AH | 375 |  |
| SI | 282 | American elm | RD | 422 |  |
| RL | 227 |  | DW | 257 |  |
| RE | 282 | American elm | HT | 463 |  |
| YP | 478 |  | KC | 343 | black locust |
| BW | 526 |  | OO | 404 |  |
| SM | 371 |  | CT | 415 |  |
| AS | 414 | green ash | MV | 492 |  |
| WA | 408 |  | MB | 277 | red mulberry |
| GA | 414 |  | HH | 304 |  |
| WO | 361 |  | SD | 164 |  |
| RO | 414 |  |  |  |  |

\*Source of SDI maximums is an unpublished analysis of FIA data by John Shaw.

# 4.0 Growth Relationships

This chapter describes the functional relationships used to fill in missing tree data and calculate incremental growth. In FVS, trees are grown in either the small tree sub-model or the large tree sub-model depending on the diameter.

## 4.1 Height-Diameter Relationships

Height-diameter relationships are used to estimate tree heights missing in the input data and periodic small-tree diameter growth. In the CS variant, height is estimated using either the Curtis-Arney equation (Curtis 1967, Arney 1985) or the Wykoff equation (Wykoff and others 1982). The equation used by default is indicated by a C or W, in the third column of table 4.1.1. By default, the CS variant does not calibrate the height-diameter relationship for estimating missing tree heights based on measured heights in the input data. To override this, the user must use the NOHTDREG keyword and “turn on” calibration. When calibration is turned on, FVS will use the Wykoff equation form with a calibrated B1 value, if there are at least 3 measured heights for that species over 3 inches DBH in the stand.

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

Coefficients for the height-diameter relationships in the CS variant are from equations fit to data for the Southern variant of FVS. Wykoff and Curtis-Arney coefficients for all species, are shown in table 4.1.1. Species for which there was not enough data to fit these relationships use coefficients from a similar species.

**Table 4.1.1 Coefficients, default equation used, and surrogate species for height-diameter relationships for the CS variant.**

| **Species Code** | **W or C** | **SN Variant**  **Surrogate / source** | **Curtis-Arney Coefficients** | | | | **Wykoff Coefficients** | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
|
| **P2** | **P3** | **P4** | **Dbw** | **Default**  **B1** | **B2** |
| RC | W | Virginia pine | 926.1803 | 4.4621 | -0.2005 | 0.5 | 4.4718 | -5.0078 |
| JU | W | juniper species | 212.7933 | 3.4715 | -0.3259 | 0.3 | 4.0374 | -4.2964 |
| SP | W | shortleaf pine | 444.0922 | 4.1188 | -0.3062 | 0.5 | 4.6271 | -6.4095 |
| VP | W | Virginia pine | 926.1803 | 4.4621 | -0.2005 | 0.5 | 4.4718 | -5.0078 |
| LP | W | loblolly pine | 243.8606 | 4.2846 | -0.4713 | 0.5 | 4.6897 | -6.8801 |
| OS | W | juniper species | 212.7933 | 3.4715 | -0.3259 | 0.3 | 4.0374 | -4.2964 |
| WP | C | eastern white pine | 2108.8442 | 5.6595 | -0.1856 | 0.4 | 4.6090 | -6.1896 |
| WN | W | black walnut | 93.7104 | 3.6575 | -0.8825 | 0.4 | 4.5018 | -5.6123 |
| BN | W | butternut | 285.8798 | 3.5214 | -0.3194 | 0.3 | 4.5018 | -5.6123 |
| TL | W | blackgum / black tupelo | 319.9788 | 3.6731 | -0.3065 | 0.2 | 4.3802 | -4.7903 |
| TS | W | swamp tupelo | 252.3567 | 3.2440 | -0.3334 | 0.2 | 4.4334 | -4.5709 |
| WT | W | water tupelo | 163.9728 | 2.7682 | -0.4410 | 0.2 | 4.4330 | -4.5383 |
| BG | C | blackgum / black tupelo | 319.9788 | 3.6731 | -0.3065 | 0.2 | 4.3802 | -4.7903 |
| SH | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| SL | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| MH | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| PH | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| HI | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| WH | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| BH | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| PE | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| BI | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| AB | W | American beech | 526.1393 | 3.8923 | -0.2259 | 0.1 | 4.4772 | -4.7206 |
| BA | W | black ash | 178.9308 | 4.9286 | -0.6378 | 0.2 | 4.6155 | -6.2945 |
| PA | W | ash species | 251.4043 | 3.2692 | -0.3591 | 0.2 | 4.4819 | -4.5314 |
| UA | W | ash species | 251.4043 | 3.2692 | -0.3591 | 0.2 | 4.4819 | -4.5314 |
| EC | W | cottonwood | 190.9797 | 3.6928 | -0.5273 | 0.1 | 4.9396 | -8.1838 |
| RM | W | red maple | 268.5564 | 3.1143 | -0.2941 | 0.2 | 4.3379 | -3.8214 |
| BE | W | butternut | 285.8798 | 3.5214 | -0.3194 | 0.3 | 4.5018 | -5.6123 |
| SV | C | silver maple | 80.5118 | 26.9833 | -2.0220 | 0.2 | 4.5991 | -6.6706 |
| BC | W | black cherry | 364.0248 | 3.5599 | -0.2726 | 0.1 | 4.3286 | -4.0922 |
| AE | W | American elm | 418.5942 | 3.1704 | -0.1896 | 0.1 | 4.6008 | -7.2732 |
| SG | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| HK | C | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| WE | W | winged elm | 1001.6729 | 4.5731 | -0.1890 | 0.1 | 4.5992 | -7.7428 |
| EL | W | elm species | 1005.8067 | 4.6474 | -0.2034 | 0.1 | 4.3744 | -4.5257 |
| SI | W | elm species | 1005.8067 | 4.6474 | -0.2034 | 0.1 | 4.3744 | -4.5257 |
| RL | W | slippery elm | 1337.5472 | 4.4895 | -0.1475 | 0.1 | 4.6238 | -7.4847 |
| RE | W | elm species | 1005.8067 | 4.6474 | -0.2034 | 0.1 | 4.3744 | -4.5257 |
| YP | C | yellow-poplar | 625.7697 | 3.8732 | -0.2335 | 0.2 | 4.6892 | -4.9605 |
| BW | W | basswood | 293.5715 | 3.5226 | -0.3512 | 0.1 | 4.5820 | -5.0903 |
| SM | W | sugar maple | 209.8555 | 2.9528 | -0.3679 | 0.2 | 4.4834 | -4.5431 |
| AS | W | ash species | 251.4043 | 3.2692 | -0.3591 | 0.2 | 4.4819 | -4.5314 |
| WA | W | white ash | 91.3528 | 6.9961 | -1.2294 | 0.2 | 4.5959 | -6.4497 |
| GA | W | green ash | 404.9692 | 3.3902 | -0.2551 | 0.2 | 4.6155 | -6.2945 |
| WO | W | white oak | 170.1331 | 3.2782 | -0.4874 | 0.2 | 4.5463 | -5.2287 |
| RO | W | northern red oak | 700.0636 | 4.1061 | -0.2139 | 0.2 | 4.5202 | -4.8896 |
| SK | W | southern red oak | 150.4300 | 3.1327 | -0.4993 | 0.1 | 4.5142 | -5.2205 |
| BO | W | black oak | 224.7163 | 3.1165 | -0.3598 | 0.2 | 4.4747 | -4.8698 |
| SO | W | scarlet oak | 196.0565 | 3.0067 | -0.3850 | 0.2 | 4.5225 | -4.9401 |
| BJ | W | blackjack oak | 157.4829 | 3.3892 | -0.3915 | 0.2 | 3.9191 | -4.3503 |
| CK | W | chinkapin oak | 72.7907 | 3.6707 | -1.0988 | 0.1 | 4.3420 | -5.1193 |
| SW | W | cherrybark oak | 182.6306 | 3.1290 | -0.4639 | 0.1 | 4.7342 | -6.2674 |
| BR | W | scarlet oak | 196.0565 | 3.0067 | -0.3850 | 0.2 | 4.5225 | -4.9401 |
| SN | W | swamp chestnut oak | 281.3413 | 3.5170 | -0.3336 | 0.2 | 4.6135 | -5.7613 |
| PO | W | post oak | 765.2908 | 4.2238 | -0.1897 | 0.1 | 4.2496 | -4.8061 |
| DO | W | post oak | 765.2908 | 4.2238 | -0.1897 | 0.1 | 4.2496 | -4.8061 |
| CO | W | chestnut oak | 94.5447 | 3.4203 | -0.8188 | 0.2 | 4.4618 | -4.8786 |
| PN | W | scarlet oak | 196.0565 | 3.0067 | -0.3850 | 0.2 | 4.5225 | -4.9401 |
| CB | W | cherrybark oak | 182.6306 | 3.1290 | -0.4639 | 0.1 | 4.7342 | -6.2674 |
| QI | W | chestnut oak | 94.5447 | 3.4203 | -0.8188 | 0.2 | 4.4618 | -4.8786 |
| OV | W | overcup oak | 184.0856 | 3.4954 | -0.4621 | 0.2 | 4.5710 | -6.0922 |
| WK | W | water oak | 470.0617 | 3.7889 | -0.2512 | 0.1 | 4.5577 | -4.9595 |
| NK | W | scarlet oak | 196.0565 | 3.0067 | -0.3850 | 0.2 | 4.5225 | -4.9401 |
| WL | W | cottonwood | 190.9797 | 3.6928 | -0.5273 | 0.1 | 4.9396 | -8.1838 |
| QS | W | Shumard oak | 215.0009 | 3.1420 | -0.3907 | 0.1 | 4.6106 | -5.4380 |
| SS | C | sassafras | 755.1038 | 4.3950 | -0.2178 | 0.1 | 4.3383 | -4.5018 |
| OB | W | basswood | 293.5715 | 3.5226 | -0.3512 | 0.1 | 4.5820 | -5.0903 |
| CA | W | catalpa | 190.9797 | 3.6928 | -0.5273 | 0.3 | 4.9396 | -8.1838 |
| PS | W | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| HL | W | honeylocust | 778.9357 | 4.2076 | -0.1873 | 0.1 | 4.3734 | -5.3135 |
| BP | W | white ash | 91.3528 | 6.9961 | -1.2294 | 0.2 | 4.5959 | -6.4497 |
| BT | W | white ash | 91.3528 | 6.9961 | -1.2294 | 0.2 | 4.5959 | -6.4497 |
| QA | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| BK | C | black locust | 880.2845 | 4.5964 | -0.2182 | 0.1 | 4.4299 | -4.9920 |
| SY | W | sycamore | 644.3568 | 3.9205 | -0.2144 | 0.1 | 4.6355 | -5.2776 |
| BY | W | baldcypress | 119.5749 | 4.1354 | -0.7963 | 0.2 | 4.6171 | -6.2684 |
| RB | W | birch species | 170.5253 | 2.6883 | -0.4008 | 0.1 | 4.4388 | -4.0872 |
| SU | W | sweetgum | 290.9055 | 3.6240 | -0.3720 | 0.2 | 4.5920 | -5.1719 |
| WI | W | willow | 408.2772 | 3.8181 | -0.2721 | 0.1 | 4.4911 | -5.7928 |
| BL | W | willow | 408.2772 | 3.8181 | -0.2721 | 0.1 | 4.4911 | -5.7928 |
| OH | W | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| AH | C | eastern hophornbeam | 109.7324 | 2.2503 | -0.4130 | 0.2 | 4.0322 | -3.0833 |
| RD | W | eastern redbud | 103.1768 | 2.2170 | -0.3596 | 0.2 | 3.7512 | -2.5539 |
| DW | W | flowering dogwood | 863.0501 | 4.3856 | -0.1481 | 0.1 | 3.7301 | -2.7758 |
| HT | W | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| KC | W | American beech | 526.1393 | 3.8923 | -0.2259 | 0.1 | 4.4772 | -4.7206 |
| OO | W | eastern hophornbeam | 109.7324 | 2.2503 | -0.4130 | 0.2 | 4.0322 | -3.0833 |
| CT | C | cucumbertree | 660.1997 | 3.9208 | -0.2112 | 0.2 | 4.6067 | -5.2030 |
| MV | W | sweetbay | 184.1932 | 2.8457 | -0.3695 | 0.2 | 4.3609 | -4.1423 |
| MB | W | mulberry species | 750.1823 | 4.1426 | -0.1594 | 0.2 | 3.9613 | -3.1993 |
| HH | W | eastern hophornbeam | 109.7324 | 2.2503 | -0.4130 | 0.2 | 4.0322 | -3.0833 |
| SD | W | sourwood | 690.4918 | 4.1598 | -0.1861 | 0.2 | 4.1352 | -3.7450 |

## 4.2 Bark Ratio Relationships

Bark ratio estimates are used to convert between diameter outside bark and diameter inside bark in various parts of the model. The equation is shown in equation {4.2.1} and the appropriate bark ratios by species group are given in table 4.2.1.

{4.2.1} *DIB* = *BRATIO* \* *DOB*

where:

*BRATIO* is species-specific bark ratio

*DIB* is tree diameter inside bark at breast height

*DOB* is tree diameter outside bark at breast height

**Table 4.2.1 Bark ratios by species groups for the CS variant.**

|  |  |
| --- | --- |
| **Species Groups** | **Bark Ratio** |
| 4, 5, 11, 20, 21 | .91 |
| 2, 3, 7, 8, 9, 14, 16, 17, 18, 19, 22, 23, 24, 25, 26, 27, 28, 29 | .93 |
| 1, 6, 10, 12, 13, 15, 30 | .95 |

## 4.3 Crown Ratio Relationships

Crown ratio equations are used for three purposes in FVS: (1) to estimate tree crown ratios missing from the input data for both live and dead trees; (2) to estimate change in crown ratio from cycle to cycle for live trees; and (3) to estimate initial crown ratios for regenerating trees established during a simulation.

### 4.3.1 Crown Ratio Dubbing

In the CS variant, crown ratios missing in the input data, for both live and dead trees, are predicted using equation {4.3.1.1} by Holdaway (1986) with coefficients for this equation shown in table 4.3.1.1.

{4.3.1.1} *CR* = 10 \* (b1 / (1 + b2 \* *BA*) + (b3 \* (1 – exp(-b4 \* *DBH*))))

where:

*CR* is crown ratio expressed as a percent

*BA* is total stand basal area

*DBH* is tree diameter at breast height

b1 – b4 are species-specific coefficients shown in table 4.3.1.1

**Table 4.3.1.1 Coefficients of the crown ratio equation {4.3.1.1} in the CS variant.**

| **Species Group** | **b1** | **b2** | **b3** | **b4** |
| --- | --- | --- | --- | --- |
| 1 | 4.0862 | 0.0096 | 4.2295 | -0.6554 |
| 2, 3, 4 | 3.8229 | 0.0155 | 3.6700 | -0.0931 |
| 5 | 5.3258 | 0.0059 | 187.8644 | -0.0003 |
| 6 | 3.5960 | 0.0241 | 3.3785 | -0.5607 |
| 7, 8 | 4.0007 | 0.0132 | 3.2411 | -1.0554 |
| 9 | 3.7332 | 0.0040 | 3.6321 | -0.0412 |
| 10 | 4.7419 | 0.0748 | 3.3270 | -0.8711 |
| 11 | 4.5860 | 0.0045 | 4.2754 | -0.0194 |
| 12 | 4.7334 | 0.0051 | 1.5490 | -0.1920 |
| 13 | 3.7332 | 0.0040 | 3.6321 | -0.0412 |
| 14 | 4.2114 | 0.0006 | 2.4917 | -0.0266 |
| 15,16 | 3.7332 | 0.0040 | 3.6321 | -0.0412 |
| 17 | 4.5228 | 0.0049 | 2.3243 | -0.2289 |
| 18 | 4.7419 | 0.0748 | 3.3270 | -0.8711 |
| 19 | 4.6207 | 0.0042 | 2.6272 | -0.1684 |
| 20 | 4.6941 | 0.0057 | 2.0465 | -0.2326 |
| 21 | 5.6002 | 0.0072 | 1.7133 | -0.1663 |
| 22 | 4.1573 | 0.0105 | 2.6185 | -0.4623 |
| 23 | 3.6371 | 0.0096 | 3.0584 | -0.6048 |
| 24 | 4.1897 | 0.0090 | 3.3907 | -0.1566 |
| 25 | 3.6936 | 0.0039 | 2.7332 | -0.2339 |
| 26 | 5.8825 | 0.0082 | 332.9834 | -0.0002 |
| 27 | 1.9729 | 0.0374 | 5.3150 | -1.0758 |
| 28 | 3.7332 | 0.0040 | 3.6321 | -0.0412 |
| 29 | 4.5860 | 0.0045 | 4.2754 | -0.0194 |
| 30 | 4.3510 | 0.0015 | 110.6709 | -0.0015 |

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

The CS variant calculates the maximum crown width for each individual tree based on individual tree and stand attributes. Crown width for each tree is reported in the tree list output table and used to calculate percent canopy cover (*PCC*) and crown competition factor (*CCF*) within the model. When available, forest-grown maximum crown width equations are used to compute *PCC* and open-grown maximum crown width equations are used to compute *CCF*.

The CS variant computes tree crown width using equations {4.4.1} through {4.4.5}. Species equation assignment and coefficients are shown in tables 4.4.1 and 4.4.2 for forest- and open-grown equations, respectively. Equations are numbered via the FIA species code and equation number, i.e. the forest grown equation from Bechtold (2003) assigned to Eastern white pine has the number: 12901.

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

**Table 4.4.1. Crown width equation assignment and coefficients for forest-grown trees in the CS variant.**

| **Species Code** | **Equation Number1** | **a1** | **a2** | **a3** | **a4** | **a5** | **Limits and**  **Bounds** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| RC | 06801 | 1.2359 | 1.2962 |  | 0.0545 |  | FCW <u><</u> 33 |
| JU | 06801 | 1.2359 | 1.2962 |  | 0.0545 |  | FCW <u><</u> 33 |
| SP | 11001 | -2.2564 | 1.3004 |  | 0.1031 | -0.0562 | FCW <u><</u> 34 |
| VP | 13201 | -0.1211 | 1.2319 |  | 0.1212 |  | FCW <u><</u> 34 |
| LP | 13101 | -0.8277 | 1.3946 |  | 0.0768 |  | FCW <u><</u> 55 |
| OS | 06801 | 1.2359 | 1.2962 |  | 0.0545 |  | FCW <u><</u> 33 |
| WP | 12901 | 0.3914 | 0.9923 |  | 0.1080 |  | FCW <u><</u> 45 |
| WN | 60201 | 3.6031 | 1.1472 |  | 0.1224 |  | FCW <u><</u> 37 |
| BN | 60201 | 3.6031 | 1.1472 |  | 0.1224 |  | FCW <u><</u> 37 |
| TL | 69301 | 5.5037 | 1.0567 |  | 0.0880 | 0.0610 | FCW <u><</u> 50 |
| TS | 69401 | 1.3564 | 1.0991 |  | 0.1243 |  | FCW <u><</u> 41 |
| WT | 69101 | 5.3409 | 0.7499 |  | 0.1047 |  | FCW <u><</u> 37 |
| BG | 69301 | 5.5037 | 1.0567 |  | 0.0880 | 0.0610 | FCW <u><</u> 50 |
| SH | 40701 | 4.5453 | 1.3721 |  | 0.0430 |  | FCW <u><</u> 54 |
| SL | 40701 | 4.5453 | 1.3721 |  | 0.0430 |  | FCW <u><</u> 54 |
| MH | 40901 | 1.5838 | 1.6318 |  | 0.0721 |  | FCW <u><</u> 55 |
| PH | 40301 | 3.9234 | 1.5220 |  | 0.0405 |  | FCW <u><</u> 53 |
| HI | 40701 | 4.5453 | 1.3721 |  | 0.0430 |  | FCW <u><</u> 54 |
| WH | 40201 | 8.0118 | 1.4212 |  |  |  | FCW <u><</u> 41 |
| BH | 40201 | 8.0118 | 1.4212 |  |  |  | FCW <u><</u> 41 |
| PE | 40201 | 8.0118 | 1.4212 |  |  |  | FCW <u><</u> 41 |
| BI | 40801 | -5.8749 | 4.1555 | -0.1343 |  |  | DBH <u><</u> 15 |
| AB | 53101 | 3.9361 | 1.1500 |  | 0.1237 | -0.0691 | FCW <u><</u> 80 |
| BA | 54301 | 5.2824 | 1.1184 |  |  |  | FCW <u><</u> 34 |
| PA | 54101 | 1.7625 | 1.3413 |  | 0.0957 |  | FCW <u><</u> 62 |
| UA | 54101 | 1.7625 | 1.3413 |  | 0.0957 |  | FCW <u><</u> 62 |
| EC | 74201 | 3.4375 | 1.4092 |  |  |  | FCW <u><</u> 80 |
| RM | 31601 | 2.7563 | 1.4212 | -0.0143 | 0.0993 | -0.0276 | DBH <u><</u> 50 |
| BE | 31301 | 6.4741 | 1.0778 |  | 0.0719 | -0.0637 | FCW <u><</u> 57 |
| SV | 31701 | 3.3576 | 1.1312 |  | 0.1011 | -0.1730 | FCW <u><</u> 45 |
| BC | 76201 | 3.0237 | 1.1119 |  | 0.1112 | -0.0493 | FCW <u><</u> 52 |
| AE | 97201 | 1.7296 | 2.0732 |  | 0.0590 | -0.0869 | FCW <u><</u> 50 |
| SG | 46201 | 7.1043 | 1.3041 |  | 0.0456 |  | FCW <u><</u> 51 |
| HK | 46201 | 7.1043 | 1.3041 |  | 0.0456 |  | FCW <u><</u> 51 |
| WE | 97101 | 4.3649 | 1.6612 |  | 0.0643 |  | FCW <u><</u> 40 |
| EL | 97201 | 1.7296 | 2.0732 |  | 0.0590 | -0.0869 | FCW <u><</u> 50 |
| SI | 97201 | 1.7296 | 2.0732 |  | 0.0590 | -0.0869 | FCW <u><</u> 50 |
| RL | 97501 | 9.0023 | 1.3933 |  |  | -0.0785 | FCW <u><</u> 49 |
| RE | 97201 | 1.7296 | 2.0732 |  | 0.0590 | -0.0869 | FCW <u><</u> 50 |
| YP | 62101 | 3.3543 | 1.1627 |  | 0.0857 |  | FCW <u><</u> 61 |
| BW | 95101 | 1.6871 | 1.2110 |  | 0.1194 | -0.0264 | FCW <u><</u> 61 |
| SM | 31801 | 4.9399 | 1.0727 |  | 0.1096 | -0.0493 | FCW <u><</u> 54 |
| AS | 54401 | 2.9672 | 1.3066 |  | 0.0585 |  | FCW <u><</u> 61 |
| WA | 54101 | 1.7625 | 1.3413 |  | 0.0957 |  | FCW <u><</u> 62 |
| GA | 54401 | 2.9672 | 1.3066 |  | 0.0585 |  | FCW <u><</u> 61 |
| WO | 80201 | 3.2375 | 1.5234 |  | 0.0455 | -0.0324 | FCW <u><</u> 69 |
| RO | 83301 | 2.8908 | 1.4077 |  | 0.0643 |  | FCW <u><</u> 82 |
| SK | 81201 | 2.1517 | 1.6064 |  | 0.0609 |  | FCW <u><</u> 56 |
| BO | 83701 | 2.8974 | 1.3697 |  | 0.0671 |  | FCW <u><</u> 52 |
| SO | 80601 | 0.5656 | 1.6766 |  | 0.0739 |  | FCW <u><</u> 66 |
| BJ | 82401 | 0.5443 | 1.4882 |  | 0.0565 |  | FCW <u><</u> 37 |
| CK | 82601 | 0.5189 | 1.4134 |  | 0.1365 | -0.0806 | FCW <u><</u> 45 |
| SW | 80201 | 3.2375 | 1.5234 |  | 0.0455 | -0.0324 | FCW <u><</u> 69 |
| BR | 82301 | 1.7827 | 1.6549 |  | 0.0343 |  | FCW <u><</u> 61 |
| SN | 83201 | 2.1480 | 1.6928 | -0.0176 | 0.0569 |  | DBH <u><</u> 50 |
| PO | 83501 | 1.6125 | 1.6669 |  | 0.0536 |  | FCW <u><</u> 45 |
| DO | 83501 | 1.6125 | 1.6669 |  | 0.0536 |  | FCW <u><</u> 45 |
| CO | 83201 | 2.1480 | 1.6928 | -0.0176 | 0.0569 |  | DBH <u><</u> 50 |
| PN | 83001 | -5.6268 | 1.7808 |  | 0.1231 | 0.1578 | FCW <u><</u> 63 |
| CB | 81201 | 2.1517 | 1.6064 |  | 0.0609 |  | FCW <u><</u> 56 |
| QI | 81701 | 9.8187 | 1.1343 |  |  |  | FCW <u><</u> 54 |
| OV | 82301 | 1.7827 | 1.6549 |  | 0.0343 |  | FCW <u><</u> 61 |
| WK | 82701 | 1.6349 | 1.5443 |  | 0.0637 | -0.0764 | FCW <u><</u> 57 |
| NK | 81201 | 2.1517 | 1.6064 |  | 0.0609 |  | FCW <u><</u> 56 |
| WL | 83101 | 1.6477 | 1.3672 |  | 0.0846 |  | FCW <u><</u> 74 |
| QS | 81201 | 2.1517 | 1.6064 |  | 0.0609 |  | FCW <u><</u> 56 |
| SS | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | FCW <u><</u> 29 |
| OB | 40701 | 4.5453 | 1.3721 |  | 0.0430 |  | FCW <u><</u> 54 |
| CA | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | FCW <u><</u> 29 |
| PS | 52101 | 3.5393 | 1.3939 |  | 0.0625 |  | FCW <u><</u> 36 |
| HL | 55201 | 4.1971 | 1.5567 |  | 0.0880 |  | FCW <u><</u> 46 |
| BP | 74101 | 6.2498 | 0.8655 |  |  |  | FCW <u><</u> 25 |
| BT | 74301 | 0.6847 | 1.1050 |  | 0.1420 | -0.0265 | FCW <u><</u> 43 |
| QA | 74601 | 0.7315 | 1.3180 |  | 0.0966 |  | FCW <u><</u> 39 |
| BK | 90101 | 3.0012 | 0.8165 |  | 0.1395 |  | FCW <u><</u> 48 |
| SY | 73101 | -1.3973 | 1.3756 |  | 0.1835 |  | FCW <u><</u> 66 |
| BY | 22101 | -1.0183 | 0.8856 |  | 0.1162 |  | FCW <u><</u> 37 |
| RB | 37301 | 11.6634 | 1.0028 |  |  |  | FCW <u><</u> 68 |
| SU | 61101 | 1.8853 | 1.1625 |  | 0.0656 | -0.0300 | FCW <u><</u> 50 |
| WI | 97201 | 1.7296 | 2.0732 |  | 0.0590 | -0.0869 | FCW <u><</u> 50 |
| BL | 97201 | 1.7296 | 2.0732 |  | 0.0590 | -0.0869 | FCW <u><</u> 50 |
| OH | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| AH | 39101 | 0.9219 | 1.6303 |  | 0.1150 | -0.1113 | FCW <u><</u> 42 |
| RD | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| DW | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| HT | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| KC | 90101 | 3.0012 | 0.8165 |  | 0.1395 |  | FCW <u><</u> 48 |
| OO | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | FCW <u><</u> 29 |
| CT | 65101 | 4.1711 | 1.6275 |  |  |  | FCW <u><</u> 39 |
| MV | 65301 | 8.2119 | 0.9708 |  |  |  | FCW <u><</u> 41 |
| MB | 68201 | 13.3255 | 1.0735 |  |  |  | FCW <u><</u> 46 |
| HH | 70101 | 7.8084 | 0.8129 |  | 0.0941 | -0.0817 | FCW <u><</u> 39 |
| SD | 71101 | 7.9750 | 0.8303 |  | 0.0423 | -0.0706 | FCW <u><</u> 36 |

1 Equation number is a combination of the species FIA code (###) and source (##), see equations on previous page. Maximum crown widths and DBH have been assigned to prevent poor behavior beyond the source data.

**Table 4.4.2. Crown width equation assignment and coefficients for open-grown trees for the CS variant.**

| **Species Code** | **Equation Number1** | | **a1** | **a2** | **a3** | **a4** | **a5** | **Limits and**  **Bounds** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| RC | 06801 | | 1.2359 | 1.2962 |  | 0.0545 |  | FCW <u><</u> 33 |
| JU | 06801 | | 1.2359 | 1.2962 |  | 0.0545 |  | FCW <u><</u> 33 |
| SP | 11005 | | 0.5830 | 0.2450 | 0.0009 |  |  | FCW <u><</u> 45 |
| VP | 13201 | | -0.1211 | 1.2319 |  | 0.1212 |  | FCW <u><</u> 34 |
| LP | 13105 | | 0.7380 | 0.2450 | 0.000809 |  |  | FCW <u><</u> 66 |
| OS | 06801 | | 1.2359 | 1.2962 |  | 0.0545 |  | FCW <u><</u> 33 |
| WP | 12903 | | 1.6200 | 3.1970 | 0.7981 |  |  | FCW <u><</u> 58 |
| WN | 60201 | | 3.6031 | 1.1472 |  | 0.1224 |  | FCW <u><</u> 37 |
| BN | 60201 | | 3.6031 | 1.1472 |  | 0.1224 |  | FCW <u><</u> 37 |
| TL | 69301 | | 5.5037 | 1.0567 |  | 0.0880 | 0.0610 | FCW <u><</u> 50 |
| TS | 69401 | | 1.3564 | 1.0991 |  | 0.1243 |  | FCW <u><</u> 41 |
| WT | 69101 | | 5.3409 | 0.7499 |  | 0.1047 |  | FCW <u><</u> 37 |
| BG | 69301 | | 5.5037 | 1.0567 |  | 0.0880 | 0.0610 | FCW <u><</u> 50 |
| SH | 40703 | | 2.3600 | 3.5480 | 0.7986 |  |  | FCW <u><</u> 54 |
| SL | 40703 | | 2.3600 | 3.5480 | 0.7986 |  |  | FCW <u><</u> 54 |
| MH | 40901 | | 1.5838 | 1.6318 |  | 0.0721 |  | FCW <u><</u> 55 |
| PH | 40301 | | 3.9234 | 1.5220 |  | 0.0405 |  | FCW <u><</u> 53 |
| HI | 40703 | | 2.3600 | 3.5480 | 0.7986 |  |  | FCW <u><</u> 54 |
| WH | 40201 | | 8.0118 | 1.4212 |  |  |  | FCW <u><</u> 41 |
| BH | 40201 | | 8.0118 | 1.4212 |  |  |  | FCW <u><</u> 41 |
| PE | 40201 | | 8.0118 | 1.4212 |  |  |  | FCW <u><</u> 41 |
| BI | 40801 | | -5.8749 | 4.1555 | -0.1343 |  |  | DBH <u><</u> 15 |
| AB | 53101 | | 3.9361 | 1.1500 |  | 0.1237 | -0.0691 | FCW <u><</u> 80 |
| BA | 54301 | | 5.2824 | 1.1184 |  |  |  | FCW <u><</u> 34 |
| PA | 54101 | | 1.7625 | 1.3413 |  | 0.0957 |  | FCW <u><</u> 62 |
| UA | 54101 | | 1.7625 | 1.3413 |  | 0.0957 |  | FCW <u><</u> 62 |
| EC | 74203 | | 2.9340 | 2.5380 | 0.8617 |  |  | FCW <u><</u> 80 |
| RM | 31603 | | 0.00 | 4.7760 | 0.7656 |  |  | FCW <u><</u> 55 |
| BE | 31301 | | 6.4741 | 1.0778 |  | 0.0719 | -0.0637 | FCW <u><</u> 57 |
| SV | 31701 | | 3.3576 | 1.1312 |  | 0.1011 | -0.1730 | FCW <u><</u> 45 |
| BC | 76203 | | 0.6210 | 7.0590 | 0.5441 |  |  | FCW <u><</u> 52 |
| AE | 97203 | | 2.8290 | 3.4560 | 0.8575 |  |  | FCW <u><</u> 72 |
| SG | 46201 | | 7.1043 | 1.3041 |  | 0.0456 |  | FCW <u><</u> 51 |
| HK | 46201 | | 7.1043 | 1.3041 |  | 0.0456 |  | FCW <u><</u> 51 |
| WE | 97101 | | 4.3649 | 1.6612 |  | 0.0643 |  | FCW <u><</u> 40 |
| EL | 97203 | | 2.8290 | 3.4560 | 0.8575 |  |  | FCW <u><</u> 72 |
| SI | 97203 | | 2.8290 | 3.4560 | 0.8575 |  |  | FCW <u><</u> 72 |
| RL | 97501 | | 9.0023 | 1.3933 |  |  | -0.0785 | FCW <u><</u> 49 |
| RE | 97203 | | 2.8290 | 3.4560 | 0.8575 |  |  | FCW <u><</u> 72 |
| YP | 62101 | | 3.3543 | 1.1627 |  | 0.0857 |  | FCW <u><</u> 61 |
| BW | 95101 | | 1.6871 | 1.2110 |  | 0.1194 | -0.0264 | FCW <u><</u> 61 |
| SM | 31803 | | 0.8680 | 4.1500 | 0.7514 |  |  | FCW <u><</u> 54 |
| AS | 54403 | | 0.0000 | 4.7550 | 0.7381 |  |  | FCW <u><</u> 61 |
| WA | 54101 | | 1.7625 | 1.3413 |  | 0.0957 |  | FCW <u><</u> 62 |
| GA | 54403 | | 0.0000 | 4.7550 | 0.7381 |  |  | FCW <u><</u> 61 |
| WO | 80204 | | 1.8000 | 1.8830 |  |  |  | FCW <u><</u> 69 |
| RO | 83303 | | 2.8500 | 3.7820 | 0.7968 |  |  | FCW <u><</u> 82 |
| SK | 81201 | | 2.1517 | 1.6064 |  | 0.0609 |  | FCW <u><</u> 56 |
| BO | 83704 | | 4.5100 | 1.6700 |  |  |  | FCW <u><</u> 52 |
| SO | 80601 | | 0.5656 | 1.6766 |  | 0.0739 |  | FCW <u><</u> 66 |
| BJ | 82401 | | 0.5443 | 1.4882 |  | 0.0565 |  | FCW <u><</u> 37 |
| CK | 82601 | | 0.5189 | 1.4134 |  | 0.1365 | -0.0806 | FCW <u><</u> 45 |
| SW | 80204 | | 1.8000 | 1.8830 |  |  |  | FCW <u><</u> 69 |
| BR | 82303 | | 0.9420 | 3.5390 | 0.7952 |  |  | FCW <u><</u> 78 |
| SN | 83201 | | 2.1480 | 1.6928 | -0.0176 | 0.0569 |  | DBH <u><</u> 50 |
| PO | 83501 | | 1.6125 | 1.6669 |  | 0.0536 |  | FCW <u><</u> 45 |
| DO | 83501 | | 1.6125 | 1.6669 |  | 0.0536 |  | FCW <u><</u> 45 |
| CO | 83201 | | 2.1480 | 1.6928 | -0.0176 | 0.0569 |  | DBH <u><</u> 50 |
| PN | 83001 | | -5.6268 | 1.7808 |  | 0.1231 | 0.1578 | FCW <u><</u> 63 |
| CB | 81201 | | 2.1517 | 1.6064 |  | 0.0609 |  | FCW <u><</u> 56 |
| QI | 81701 | | 9.8187 | 1.1343 |  |  |  | FCW <u><</u> 54 |
| OV | 82303 | | 0.9420 | 3.5390 | 0.7952 |  |  | FCW <u><</u> 78 |
| WK | 82701 | | 1.6349 | 1.5443 |  | 0.0637 | -0.0764 | FCW <u><</u> 57 |
| NK | 81201 | | 2.1517 | 1.6064 |  | 0.0609 |  | FCW <u><</u> 56 |
| WL | 83101 | | 1.6477 | 1.3672 |  | 0.0846 |  | FCW <u><</u> 74 |
| QS | 81201 | | 2.1517 | 1.6064 |  | 0.0609 |  | FCW <u><</u> 56 |
| SS | | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | FCW <u><</u> 29 |
| OB | | 40703 | 2.3600 | 3.5480 | 0.7986 |  |  | FCW <u><</u> 54 |
| CA | | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | FCW <u><</u> 29 |
| PS | | 52101 | 3.5393 | 1.3939 |  | 0.0625 |  | FCW <u><</u> 36 |
| HL | | 55201 | 4.1971 | 1.5567 |  | 0.0880 |  | FCW <u><</u> 46 |
| BP | | 74101 | 6.2498 | 0.8655 |  |  |  | FCW <u><</u> 25 |
| BT | | 74301 | 0.6847 | 1.1050 |  | 0.1420 | -0.0265 | FCW <u><</u> 43 |
| QA | | 74603 | 4.2030 | 2.1290 | 1.0000 |  |  | FCW <u><</u> 43 |
| BK | | 90101 | 3.0012 | 0.8165 |  | 0.1395 |  | FCW <u><</u> 48 |
| SY | | 73101 | -1.3973 | 1.3756 |  | 0.1835 |  | FCW <u><</u> 66 |
| BY | | 22101 | -1.0183 | 0.8856 |  | 0.1162 |  | FCW <u><</u> 37 |
| RB | | 37301 | 11.6634 | 1.0028 |  |  |  | FCW <u><</u> 68 |
| SU | | 61101 | 1.8853 | 1.1625 |  | 0.0656 | -0.0300 | FCW <u><</u> 50 |
| WI | | 97203 | 2.8290 | 3.4560 | 0.8575 |  |  | FCW <u><</u> 72 |
| BL | | 97203 | 2.8290 | 3.4560 | 0.8575 |  |  | FCW <u><</u> 72 |
| OH | | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| AH | | 39101 | 0.9219 | 1.6303 |  | 0.1150 | -0.1113 | FCW <u><</u> 42 |
| RD | | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| DW | | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| HT | | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| KC | | 90101 | 3.0012 | 0.8165 |  | 0.1395 |  | FCW <u><</u> 48 |
| OO | | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | FCW <u><</u> 29 |
| CT | | 65101 | 4.1711 | 1.6275 |  |  |  | FCW <u><</u> 39 |
| MV | | 65301 | 8.2119 | 0.9708 |  |  |  | FCW <u><</u> 41 |
| MB | | 68201 | 13.3255 | 1.0735 |  |  |  | FCW <u><</u> 46 |
| HH | | 70101 | 7.8084 | 0.8129 |  | 0.0941 | -0.0817 | FCW <u><</u> 39 |
| SD | | 71101 | 7.9750 | 0.8303 |  | 0.0423 | -0.0706 | FCW <u><</u> 36 |

1 Equation number is a combination of the species FIA code (###) and source (##), see equations on previous page. Maximum crown widths and DBH have been assigned to prevent poor behavior beyond the source data.

## 4.5 Crown Competition Factor

The CS variant uses crown competition factor (*CCF*) as a predictor variable in some growth relationships. Crown competition factor (Krajicek and others 1961) is a relative measurement of stand density that is based on tree diameters. Individual tree *CCFt* values estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open-grown. Stand *CCF* is the summation of individual tree (*CCFt*)values. A stand *CCF* value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand. In the CS variant, crown competition factor for an individual tree is calculated using equation {4.5.1}, and is based on crown width of open-grown trees.

{4.5.1} All species

*DBH* > 0.1”: *CCFt* = 0.001803 \* *OCWt^*2

*DBH* <u><</u> 0.1”: *CCFt* = 0.001

where:

*CCFt* is crown competition factor for an individual tree

*OCWt* is open-grown crown width for an individual tree

*DBH* is tree diameter at breast height

## 4.6 Small Tree Growth Relationships

Trees are considered “small trees” for FVS modeling purposes when they are smaller than some threshold diameter. This threshold diameter is set to 5.0” for all species in the CS variant.

The small tree model is height growth driven, meaning height growth is estimated first and diameter growth is estimated from height growth. These relationships are discussed in the following sections.

FVS blends small tree growth estimates with large tree growth estimates to assure a smooth transition between the two models. In the CS variant both height growth and diameter growth estimates use this blending technique. Small and large tree estimates are weighted over the diameter range 1.5”-5.0” *DBH* for all species. The weight is calculated using equation {4.6.1} and applied as shown in equation {4.6.2}.

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

Trees are considered “large trees” for FVS modeling purposes when they are equal to, or larger than, some threshold diameter. This threshold diameter is set to 5.0” for all species in the CS variant.

The large-tree model is driven by diameter growth meaning diameter growth is estimated first, and then height growth is estimated from diameter growth and other variables. These relationships are discussed in the following sections.

### 4.7.1 Large Tree Diameter Growth

The large tree diameter growth model used in most FVS variants is described in section 7.2.1 in Dixon (2002). For most variants, instead of predicting diameter increment directly, the natural log of the periodic change in squared inside-bark diameter (ln(*DDS*)) is predicted (Dixon 2002; Wykoff 1990; Stage 1973; and Cole and Stage 1972). For variants predicting diameter increment directly, diameter increment is converted to the *DDS* scale to keep the FVS system consistent across all variants.

The CS variant uses a large-tree diameter increment model based on Deo and Froese (2013) identified in equation {4.7.1.1}.

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

for BO: if QMD5>12, then QMD5=12

for SP, TL, TS, WT, BG: if QMD5>13, then QMD5=13

for SH. SL. MH, EC, CK, SW, BR, SN: if QMD5>25, then QMD5=25

for AB: if QMD5>40, then QMD5=40

for SO: if QMD5>11, then QMD5=11

for AS, WA, GA, CO: if QMD5>20, then QMD5=20

for RO, SK: if QMD5>30, then QMD5=30

for OO: if QMD5>17, then QMD5=17

for WP, OS: if CR>50, then CR=50

for WN, BN, TL: if CR>75, then CR=75

for EC, YP: if CR>60, then CR=60

for AS, WA, GA: if CR>80, then CR=80

for BC, SY, BY, RB, SU, WI, BL: if CR>85, then CR=85

**Table 4.7.1.1 Coefficients (b1 – b6) for the 10-year diameter growth equation in the CS variant.**

| **Species Code** | **b1** | **b2** | **b3** | **b4** | **b5** | **b6** |
| --- | --- | --- | --- | --- | --- | --- |
|
|  |
| RC | 3.09820 | -8.58440 |  |  |  |  |
| JU | 3.09820 | -8.58440 |  |  |  |  |
| SP | 0.64882 |  |  | 0.01234 | 2.87386 | -0.20916 |
| VP | 2.76330 | -10.45000 |  |  |  |  |
| LP | 2.76330 | -10.45000 |  |  |  |  |
| OS | -0.70797 |  | 0.07533 |  | 2.12877 | -0.05909 |
| WP | -0.70797 |  | 0.07533 |  | 2.12877 | -0.05909 |
| WN | 2.95910 | -9.51990 |  |  |  |  |
| BN | 2.95910 | -9.51990 |  |  |  |  |
| TL | -0.28233 |  |  | 0.01581 | 3.37463 | -0.26631 |
| TS | -0.28233 |  |  | 0.01581 | 3.37463 | -0.26631 |
| WT | -0.28233 |  |  | 0.01581 | 3.37463 | -0.26631 |
| BG | -0.28233 |  |  | 0.01581 | 3.37463 | -0.26631 |
| SH | 1.08270 | -5.46950 | 0.12337 |  | 0.40029 | -0.03136 |
| SL | 1.08270 | -5.46950 | 0.12337 |  | 0.40029 | -0.03136 |
| MH | 1.08270 | -5.46950 | 0.12337 |  | 0.40029 | -0.03136 |
| PH | -0.64747 |  | 0.26917 | -0.00342 | 0.48856 | -0.03745 |
| HI | -0.64747 |  | 0.26917 | -0.00342 | 0.48856 | -0.03745 |
| WH | -0.64747 |  | 0.26917 | -0.00342 | 0.48856 | -0.03745 |
| BH | -0.64747 |  | 0.26917 | -0.00342 | 0.48856 | -0.03745 |
| PE | -0.64747 |  | 0.26917 | -0.00342 | 0.48856 | -0.03745 |
| BI | -0.64747 |  | 0.26917 | -0.00342 | 0.48856 | -0.03745 |
| AB | -0.07129 |  | 0.14458 |  | 1.85880 | -0.08029 |
| BA | 0.89302 | -14.16700 |  |  |  |  |
| PA | 0.89302 | -14.16700 |  |  |  |  |
| UA | 0.89302 | -14.16700 |  |  |  |  |
| EC | 1.81510 |  | 0.09153 |  | 1.02090 | -0.03235 |
| RM | 2.23020 | -6.99620 | 0.11324 | -0.00186 |  |  |
| BE | 2.23020 | -6.99620 | 0.11324 | -0.00186 |  |  |
| SV | 2.23020 | -6.99620 | 0.11324 | -0.00186 |  |  |
| BC | 3.23650 | -10.26800 |  |  |  |  |
| AE | 1.23520 | -5.21440 | 0.18300 | -0.00314 |  |  |
| SG | 1.23520 | -5.21440 | 0.18300 | -0.00314 |  |  |
| HK | 1.23520 | -5.21440 | 0.18300 | -0.00314 |  |  |
| WE | 1.23520 | -5.21440 | 0.18300 | -0.00314 |  |  |
| EL | 1.23520 | -5.21440 | 0.18300 | -0.00314 |  |  |
| SI | 1.23520 | -5.21440 | 0.18300 | -0.00314 |  |  |
| RL | 1.23520 | -5.21440 | 0.18300 | -0.00314 |  |  |
| RE | 1.23520 | -5.21440 | 0.18300 | -0.00314 |  |  |
| YP | 3.42640 | -7.86590 | 0.05771 |  |  | -0.02000 |
| BW | 3.71790 | -8.96970 |  |  |  |  |
| SM | 2.97130 | -10.11500 |  |  |  |  |
| AS | -0.29734 |  | 0.20494 |  | 1.03840 | -0.08002 |
| WA | -0.29734 |  | 0.20494 |  | 1.03840 | -0.08002 |
| GA | -0.29734 |  | 0.20494 |  | 1.03840 | -0.08002 |
| WO | 1.09010 | -3.68390 | 0.11623 |  | 0.70038 | -0.04289 |
| RO | 0.02098 |  | 0.14061 |  | 1.21010 | -0.05494 |
| SK | 0.02098 |  | 0.14061 |  | 1.21010 | -0.05494 |
| BO | 1.89700 | -5.72030 |  | 0.00346 | 0.93903 | -0.05092 |
| SO | 2.03520 | -5.28840 |  | 0.00513 | 1.16850 | -0.07164 |
| BJ | 3.86780 | -11.27600 |  |  |  |  |
| CK | 0.93769 | -5.11930 | 0.09743 |  | 0.47749 | -0.02443 |
| SW | 0.93769 | -5.11930 | 0.09743 |  | 0.47749 | -0.02443 |
| BR | 0.93769 | -5.11930 | 0.09743 |  | 0.47749 | -0.02443 |
| SN | 0.93769 | -5.11930 | 0.09743 |  | 0.47749 | -0.02443 |
| PO | 1.36920 | -5.03520 | 0.12165 |  |  | -0.03038 |
| DO | 1.36920 | -5.03520 | 0.12165 |  |  | -0.03038 |
| CO | -1.73610 |  | 0.26087 |  | 1.76660 | -0.11006 |
| PN | 3.98500 | -13.51900 |  |  |  |  |
| CB | 3.98500 | -13.51900 |  |  |  |  |
| QI | 3.98500 | -13.51900 |  |  |  |  |
| OV | 0.93769 | -5.11930 | 0.09743 |  | 0.47749 | -0.02443 |
| WK | 3.98500 | -13.51900 |  |  |  |  |
| NK | 3.98500 | -13.51900 |  |  |  |  |
| WL | 3.98500 | -13.51900 |  |  |  |  |
| QS | 3.98500 | -13.51900 |  |  |  |  |
| SS | 3.38410 | -10.28200 |  |  |  |  |
| OB | 3.02200 | -13.62700 |  |  |  |  |
| CA | 3.02200 | -13.62700 |  |  |  |  |
| PS | 3.02200 | -13.62700 |  |  |  |  |
| HL | 3.21620 | -8.59700 |  |  |  |  |
| BP | 3.02200 | -13.62700 |  |  |  |  |
| BT | 3.02200 | -13.62700 |  |  |  |  |
| QA | 3.02200 | -13.62700 |  |  |  |  |
| BK | 3.02200 | -13.62700 |  |  |  |  |
| SY | 3.86690 | -8.87037 |  |  |  |  |
| BY | 3.86690 | -8.87037 |  |  |  |  |
| RB | 3.86690 | -8.87037 |  |  |  |  |
| SU | 3.86690 | -8.87037 |  |  |  |  |
| WI | 3.86690 | -8.87037 |  |  |  |  |
| BL | 3.86690 | -8.87037 |  |  |  |  |
| OH | 3.03080 | -8.10590 |  |  |  |  |
| AH | 3.03080 | -8.10590 |  |  |  |  |
| RD | 3.03080 | -8.10590 |  |  |  |  |
| DW | 3.03080 | -8.10590 |  |  |  |  |
| HT | 3.03080 | -8.10590 |  |  |  |  |
| KC | 2.95910 | -9.51990 |  |  |  |  |
| OO | -0.18599 |  | 0.20178 |  | 0.54649 | -0.04667 |
| CT | 3.03080 | -8.10590 |  |  |  |  |
| MV | 3.03080 | -8.10590 |  |  |  |  |
| MB | 3.03080 | -8.10590 |  |  |  |  |
| HH | 3.03080 | -8.10590 |  |  |  |  |
| SD | 3.03080 | -8.10590 |  |  |  |  |

**Table 4.7.1.2 Coefficients (b7 – b11) for the 10-year diameter growth equation in the CS variant.**

| **Species Code** | **b7** | **b8** | **b9** | **b10** | **b11** |
| --- | --- | --- | --- | --- | --- |
|
|  |
| RC | -0.00386 |  | 0.01628 |  |  |
| JU | -0.00386 |  | 0.01628 |  |  |
| SP | -0.00162 | -0.00318 | 0.02252 |  |  |
| VP | -0.00324 |  | 0.05754 | -0.00041 |  |
| LP | -0.00324 |  | 0.05754 | -0.00041 |  |
| OS |  |  | 0.06590 | -0.00046 |  |
| WP |  |  | 0.06590 | -0.00046 |  |
| WN |  | -0.00169 | 0.03012 |  | 0.00356 |
| BN |  | -0.00169 | 0.03012 |  | 0.00356 |
| TL |  |  | 0.01650 |  |  |
| TS |  |  | 0.01650 |  |  |
| WT |  |  | 0.01650 |  |  |
| BG |  |  | 0.01650 |  |  |
| SH | -0.00160 |  | 0.02491 | -0.00017 | 0.00543 |
| SL | -0.00160 |  | 0.02491 | -0.00017 | 0.00543 |
| MH | -0.00160 |  | 0.02491 | -0.00017 | 0.00543 |
| PH | -0.00230 |  | 0.02673 | -0.00021 | 0.00744 |
| HI | -0.00230 |  | 0.02673 | -0.00021 | 0.00744 |
| WH | -0.00230 |  | 0.02673 | -0.00021 | 0.00744 |
| BH | -0.00230 |  | 0.02673 | -0.00021 | 0.00744 |
| PE | -0.00230 |  | 0.02673 | -0.00021 | 0.00744 |
| BI | -0.00230 |  | 0.02673 | -0.00021 | 0.00744 |
| AB |  |  | 0.01373 |  |  |
| BA |  |  | 0.15110 | -0.00141 |  |
| PA |  |  | 0.15110 | -0.00141 |  |
| UA |  |  | 0.15110 | -0.00141 |  |
| EC |  | -0.00428 |  | 0.00031 |  |
| RM |  | -0.00171 | 0.03114 | -0.00014 |  |
| BE |  | -0.00171 | 0.03114 | -0.00014 |  |
| SV |  | -0.00171 | 0.03114 | -0.00014 |  |
| BC |  | -0.00150 | 0.02457 |  | 0.00235 |
| AE | -0.00439 | 0.00331 | 0.02814 | -0.00011 | 0.00447 |
| SG | -0.00439 | 0.00331 | 0.02814 | -0.00011 | 0.00447 |
| HK | -0.00439 | 0.00331 | 0.02814 | -0.00011 | 0.00447 |
| WE | -0.00439 | 0.00331 | 0.02814 | -0.00011 | 0.00447 |
| EL | -0.00439 | 0.00331 | 0.02814 | -0.00011 | 0.00447 |
| SI | -0.00439 | 0.00331 | 0.02814 | -0.00011 | 0.00447 |
| RL | -0.00439 | 0.00331 | 0.02814 | -0.00011 | 0.00447 |
| RE | -0.00439 | 0.00331 | 0.02814 | -0.00011 | 0.00447 |
| YP |  | -0.00521 | 0.04625 | -0.00023 | -0.00431 |
| BW |  | -0.00278 | 0.01517 |  |  |
| SM |  | -0.00303 | 0.02898 | -0.00013 | 0.00383 |
| AS |  | -0.00195 | 0.02569 |  | 0.00424 |
| WA |  | -0.00195 | 0.02569 |  | 0.00424 |
| GA |  | -0.00195 | 0.02569 |  | 0.00424 |
| WO |  | -0.00302 | 0.02757 | -0.00021 | 0.00351 |
| RO |  |  | 0.01366 |  | 0.00955 |
| SK |  |  | 0.01366 |  | 0.00955 |
| BO | -0.00176 |  | 0.03088 | -0.00016 | 0.00540 |
| SO |  | -0.00139 | 0.03739 | -0.00031 |  |
| BJ | -0.00537 |  | 0.00904 |  |  |
| CK |  | -0.00092 | 0.01140 |  | 0.01240 |
| SW |  | -0.00092 | 0.01140 |  | 0.01240 |
| BR |  | -0.00092 | 0.01140 |  | 0.01240 |
| SN |  | -0.00092 | 0.01140 |  | 0.01240 |
| PO |  | -0.00351 | 0.01313 |  | 0.00915 |
| DO |  | -0.00351 | 0.01313 |  | 0.00915 |
| CO |  |  | 0.01933 |  | 0.00774 |
| PN |  | -0.00233 | 0.03135 | -0.00019 |  |
| CB |  | -0.00233 | 0.03135 | -0.00019 |  |
| QI |  | -0.00233 | 0.03135 | -0.00019 |  |
| OV |  | -0.00092 | 0.01140 |  | 0.01240 |
| WK |  | -0.00233 | 0.03135 | -0.00019 |  |
| NK |  | -0.00233 | 0.03135 | -0.00019 |  |
| WL |  | -0.00233 | 0.03135 | -0.00019 |  |
| QS |  | -0.00233 | 0.03135 | -0.00019 |  |
| SS |  | -0.00170 | 0.03201 | -0.00026 |  |
| OB | -0.00288 |  | 0.04569 | -0.00037 | 0.00766 |
| CA | -0.00288 |  | 0.04569 | -0.00037 | 0.00766 |
| PS | -0.00288 |  | 0.04569 | -0.00037 | 0.00766 |
| HL |  | -0.00261 | 0.01869 |  | 0.00599 |
| BP | -0.00288 |  | 0.04569 | -0.00037 | 0.00766 |
| BT | -0.00288 |  | 0.04569 | -0.00037 | 0.00766 |
| QA | -0.00288 |  | 0.04569 | -0.00037 | 0.00766 |
| BK | -0.00288 |  | 0.04569 | -0.00037 | 0.00766 |
| SY |  | -0.00535 | 0.02034 |  |  |
| BY |  | -0.00535 | 0.02034 |  |  |
| RB |  | -0.00535 | 0.02034 |  |  |
| SU |  | -0.00535 | 0.02034 |  |  |
| WI |  | -0.00535 | 0.02034 |  |  |
| BL |  | -0.00535 | 0.02034 |  |  |
| OH | -0.00179 |  | 0.00489 |  |  |
| AH | -0.00179 |  | 0.00489 |  |  |
| RD | -0.00179 |  | 0.00489 |  |  |
| DW | -0.00179 |  | 0.00489 |  |  |
| HT | -0.00179 |  | 0.00489 |  |  |
| KC |  | -0.00169 | 0.03012 |  | 0.00356 |
| OO | -0.00704 | 0.00554 | 0.04276 | -0.00024 |  |
| CT | -0.00179 |  | 0.00489 |  |  |
| MV | -0.00179 |  | 0.00489 |  |  |
| MB | -0.00179 |  | 0.00489 |  |  |
| HH | -0.00179 |  | 0.00489 |  |  |
| SD | -0.00179 |  | 0.00489 |  |  |

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

{4.7.2.3} *PHMOD* = [1 – ((1 – *CM*) \* (1 – *RELHT*))] \* 0.8

{4.7.2.4} *HTGi* = *PHTG* \* *PHMOD*

where:

*HTGi* is estimated height growth of an individual tree

*PHTG* is potential height growth estimated as described above

*PHMOD* is potential height growth modifier

*CM* is growth modifier as described in section 4.7.1

*RELHT* is tree height divided by average height of the 40 largest diameter trees in the stand

**Table 4.7.2.1. Coefficients for site index curves used in the CS variant.**

| **Species Code** | **Carmean et al Figure** | **b1** | **b2** | **b3** | **b4** | **b5** | **b6** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| RC | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| JU | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| SP | 78 | 1.4232 | 0.9989 | -0.0285 | 1.2156 | 0.0088 | 0.0 |
| VP | 125 | 0.7716 | 1.1087 | -0.0348 | 0.1099 | 0.5274 | 0.0 |
| LP | 110 | 1.1421 | 1.0042 | -0.0374 | 0.7632 | 0.0358 | 0.0 |
| OS | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| WP | 104 | 3.2425 | 0.7980 | -0.0435 | 52.0549 | -0.7064 | 0.0 |
| WN | 16 | 1.2898 | 0.9982 | -0.0289 | 0.8546 | 0.0171 | 0.0 |
| BN | 16 | 1.2898 | 0.9982 | -0.0289 | 0.8546 | 0.0171 | 0.0 |
| TL | 27 | 1.3213 | 0.9995 | -0.0254 | 0.8549 | -0.0016 | 0.0 |
| TS | 27 | 1.3213 | 0.9995 | -0.0254 | 0.8549 | -0.0016 | 0.0 |
| WT | 26 | 1.2721 | 0.9995 | -0.0256 | 0.7447 | -0.0019 | 0.0 |
| BG | 27 | 1.3213 | 0.9995 | -0.0254 | 0.8549 | -0.0016 | 0.0 |
| SH | 10 | 1.8326 | 1.0015 | -0.0207 | 1.4080 | -0.0005 | 0.0 |
| SL | 10 | 1.8326 | 1.0015 | -0.0207 | 1.4080 | -0.0005 | 0.0 |
| MH | 10 | 1.8326 | 1.0015 | -0.0207 | 1.4080 | -0.0005 | 0.0 |
| PH | 10 | 1.8326 | 1.0015 | -0.0207 | 1.4080 | -0.0005 | 0.0 |
| HI | 10 | 1.8326 | 1.0015 | -0.0207 | 1.4080 | -0.0005 | 0.0 |
| WH | 10 | 1.8326 | 1.0015 | -0.0207 | 1.4080 | -0.0005 | 0.0 |
| BH | 10 | 1.8326 | 1.0015 | -0.0207 | 1.4080 | -0.0005 | 0.0 |
| PE | 19 | 1.5932 | 1.0124 | -0.0122 | 0.6245 | 0.0130 | 0.0 |
| BI | 10 | 1.8326 | 1.0015 | -0.0207 | 1.4080 | -0.0005 | 0.0 |
| AB | 11 | 29.7300 | 0.3631 | -0.0127 | 16.7616 | -0.6804 | 0.0 |
| BA | 14 | 4.2286 | 0.7857 | -0.0178 | 4.6219 | -0.3591 | 0.0 |
| PA | 15 | 1.6505 | 0.9096 | -0.0644 | 125.7045 | -0.8908 | 0.0 |
| UA | 12 | 1.5768 | 0.9978 | -0.0156 | 0.6705 | 0.0182 | 0.0 |
| EC | 28 | 1.3615 | 0.9813 | -0.0675 | 1.5494 | -0.0767 | 0.0 |
| RM | 1 | 2.9435 | 0.9132 | -0.0141 | 1.6580 | -0.1095 | 0.0 |
| BE | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| SV | 4 | 1.0645 | 0.9918 | -0.0812 | 1.5754 | -0.0272 | 0.0 |
| BC | 35 | 7.1846 | 0.6781 | -0.0222 | 13.9186 | -0.5268 | 0.0 |
| AE | 53 | 6.4362 | 0.6827 | -0.0194 | 10.9767 | -0.5477 | 0.0 |
| SG | 53 | 6.4362 | 0.6827 | -0.0194 | 10.9767 | -0.5477 | 0.0 |
| HK | 19 | 1.5932 | 1.0124 | -0.0122 | 0.6245 | 0.0130 | 0.0 |
| WE | 53 | 6.4362 | 0.6827 | -0.0194 | 10.9767 | -0.5477 | 0.0 |
| EL | 53 | 6.4362 | 0.6827 | -0.0194 | 10.9767 | -0.5477 | 0.0 |
| SI | 53 | 6.4362 | 0.6827 | -0.0194 | 10.9767 | -0.5477 | 0.0 |
| RL | 53 | 6.4362 | 0.6827 | -0.0194 | 10.9767 | -0.5477 | 0.0 |
| RE | 53 | 6.4362 | 0.6827 | -0.0194 | 10.9767 | -0.5477 | 0.0 |
| YP | 25 | 1.2941 | 0.9892 | -0.0315 | 1.0481 | -0.0368 | 0.0 |
| BW | 51 | 4.7633 | 0.7576 | -0.0194 | 6.5110 | -0.4156 | 0.0 |
| SM | 2 | 3.3721 | 0.8407 | -0.0150 | 2.6208 | -0.2661 | 0.0 |
| AS | 12 | 1.5768 | 0.9978 | -0.0156 | 0.6705 | 0.0182 | 0.0 |
| WA | 12 | 1.5768 | 0.9978 | -0.0156 | 0.6705 | 0.0182 | 0.0 |
| GA | 15 | 1.6505 | 0.9096 | -0.0644 | 125.7045 | -0.8908 | 0.0 |
| WO | 41 | 4.5598 | 0.8136 | -0.0132 | 2.2410 | -0.1880 | 0.0 |
| RO | 38 | 0.4737 | 1.2905 | -0.0236 | 0.0979 | 0.6121 | 0.0 |
| SK | 37 | 1.2866 | 0.9962 | -0.0355 | 1.4485 | -0.0316 | 0.0 |
| BO | 49 | 2.9989 | 0.8435 | -0.0200 | 3.4635 | -0.3020 | 0.0 |
| SO | 42 | 1.6763 | 0.9837 | -0.0220 | 0.9949 | 0.0240 | 0.0 |
| BJ | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| CK | 36 | 2.1037 | 0.9140 | -0.0275 | 3.7962 | -0.2530 | 0.0 |
| SW | 44 | 1.3466 | 0.9590 | -0.0574 | 8.9538 | -0.3454 | 0.0 |
| BR | 36 | 2.1037 | 0.9140 | -0.0275 | 3.7962 | -0.2530 | 0.0 |
| SN | 44 | 1.3466 | 0.9590 | -0.0574 | 8.9538 | -0.3454 | 0.0 |
| PO | 36 | 2.1037 | 0.9140 | -0.0275 | 3.7962 | -0.2530 | 0.0 |
| DO | 36 | 2.1037 | 0.9140 | -0.0275 | 3.7962 | -0.2530 | 0.0 |
| CO | 46 | 1.9044 | 0.9752 | -0.0162 | 0.9262 | 0.0 | 0.0 |
| PN | 36 | 2.1037 | 0.9140 | -0.0275 | 3.7962 | -0.2530 | 0.0 |
| CB | 43 | 1.0945 | 0.9938 | -0.0755 | 2.5601 | 0.0114 | 0.0 |
| QI | 36 | 2.1037 | 0.9140 | -0.0275 | 3.7962 | -0.2530 | 0.0 |
| OV | 45 | 1.3295 | 0.9565 | -0.0668 | 16.0085 | -0.4157 | 0.0 |
| WK | 44 | 1.3466 | 0.9590 | -0.0574 | 8.9538 | -0.3454 | 0.0 |
| NK | 36 | 2.1037 | 0.9140 | -0.0275 | 3.7962 | -0.2530 | 0.0 |
| WL | 36 | 2.1037 | 0.9140 | -0.0275 | 3.7962 | -0.2530 | 0.0 |
| QS | 43 | 1.0945 | 0.9938 | -0.0755 | 2.5601 | 0.0114 | 0.0 |
| SS | 50 | 0.9680 | 1.0301 | -0.0468 | 0.1639 | 0.4127 | 0.0 |
| OB | 1 | 2.9435 | 0.9132 | -0.0141 | 1.6580 | -0.1095 | 0.0 |
| CA | 14 | 4.2286 | 0.7857 | -0.0178 | 4.6219 | -0.3591 | 0.0 |
| PS | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| HL | 50 | 0.9680 | 1.0301 | -0.0468 | 0.1639 | 0.4127 | 0.0 |
| BP | 25 | 1.2941 | 0.9892 | -0.0315 | 1.0481 | -0.0368 | 0.0 |
| BT | 32 | 5.2188 | 0.6855 | -0.0301 | 50.0071 | -0.8695 | 0.0 |
| QA | 32 | 5.2188 | 0.6855 | -0.0301 | 50.0071 | -0.8695 | 0.0 |
| BK | 50 | 0.9680 | 1.0301 | -0.0468 | 0.1639 | 0.4127 | 0.0 |
| SY | 25 | 1.2941 | 0.9892 | -0.0315 | 1.0481 | -0.0368 | 0.0 |
| BY | 21 | 1.0902 | 1.0298 | -0.0354 | 0.7011 | 0.1178 | 0.0 |
| RB | 5 | 2.2835 | 0.9794 | -0.0054 | 0.5819 | -0.0281 | 0.0 |
| SU | 19 | 1.5932 | 1.0124 | -0.0122 | 0.6245 | 0.0130 | 0.0 |
| WI | 50 | 0.9680 | 1.0301 | -0.0468 | 0.1639 | 0.4127 | 0.0 |
| BL | 50 | 0.9680 | 1.0301 | -0.0468 | 0.1639 | 0.4127 | 0.0 |
| OH | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| AH | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| RD | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| DW | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| HT | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| KC | 53 | 6.4362 | 0.6827 | -0.0194 | 10.9767 | -0.5477 | 0.0 |
| OO | 50 | 0.9680 | 1.0301 | -0.0468 | 0.1639 | 0.4127 | 0.0 |
| CT | 25 | 1.2941 | 0.9892 | -0.0315 | 1.0481 | -0.0368 | 0.0 |
| MV | 27 | 1.3213 | 0.9995 | -0.0254 | 0.8549 | -0.0016 | 0.0 |
| MB | 16 | 1.2898 | 0.9982 | -0.0289 | 0.8546 | 0.0171 | 0.0 |
| HH | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| SD | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |

# 5.0 Mortality Model

The CS variant uses an SDI-based mortality model as described in Section 7.3.2 of Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002, referred to as EFVS). This SDI-based mortality model is comprised of two steps: 1) determining the amount of stand mortality (section 7.3.2.1 of EFVS) and 2) dispersing stand mortality to individual tree records (section7.3.2.2 of EFVS). In determining the amount of stand mortality, the summation of individual tree background mortality rates is used when stand density is below the minimum level for density dependent mortality (default is 55% of maximum SDI), while stand level density-related mortality rates are used when stands are above this minimum level.

The equation used to calculate individual tree background mortality rates for all species is shown in equation {5.0.1}, and this is then adjusted to the length of the cycle by using a compound interest formula as shown in equation {5.0.2}. Coefficients for these equations are shown in table 5.0.1. The overall amount of mortality calculated for the stand is the summation of the final mortality rate (*RIP*) across all live tree records.

{5.0.1} RI = [1 / (1 + exp(p0 + p1 \* DBH))] \* 0.5

{5.0.2} RIP = 1 – (1 – RI*)*^Y

where:

RI is the proportion of the tree record attributed to mortality

RIP is the final mortality rate adjusted to the length of the cycle

DBH is tree diameter at breast height

Y is length of the current projection cycle in years

p0 and p1 are species-specific coefficients shown in table 5.0.1

**Table 5.0.1 Coefficients used in the background mortality equation {5.0.1} in the CS variant.**

| **Species Code** | **p0** | **p1** |
| --- | --- | --- |
| RC | 5.5876999 | -0.0053480 |
| JU | 9.6942997 | -0.0127328 |
| SP | 5.5876999 | -0.0053480 |
| VP | 5.5876999 | -0.0053480 |
| LP | 5.5876999 | -0.0053480 |
| OS | 9.6942997 | -0.0127328 |
| WP | 5.5876999 | -0.0053480 |
| WN | 5.9617000 | -0.0340128 |
| BN | 5.9617000 | -0.0340128 |
| TL | 5.1676998 | -0.0077681 |
| TS | 5.9617000 | -0.0340128 |
| WT | 5.9617000 | -0.0340128 |
| BG | 5.1676998 | -0.0077681 |
| SH | 5.9617000 | -0.0340128 |
| SL | 5.9617000 | -0.0340128 |
| MH | 5.9617000 | -0.0340128 |
| PH | 5.9617000 | -0.0340128 |
| HI | 5.9617000 | -0.0340128 |
| WH | 5.9617000 | -0.0340128 |
| BH | 5.9617000 | -0.0340128 |
| PE | 5.9617000 | -0.0340128 |
| BI | 5.9617000 | -0.0340128 |
| AB | 5.1676998 | -0.0077681 |
| BA | 5.9617000 | -0.0340128 |
| PA | 5.1676998 | -0.0077681 |
| UA | 5.1676998 | -0.0077681 |
| EC | 5.9617000 | -0.0340128 |
| RM | 5.1676998 | -0.0077681 |
| BE | 5.9617000 | -0.0340128 |
| SV | 5.1676998 | -0.0077681 |
| BC | 5.9617000 | -0.0340128 |
| AE | 5.1676998 | -0.0077681 |
| SG | 5.9617000 | -0.0340128 |
| HK | 5.9617000 | -0.0340128 |
| WE | 5.1676998 | -0.0077681 |
| EL | 5.1676998 | -0.0077681 |
| SI | 5.1676998 | -0.0077681 |
| RL | 5.1676998 | -0.0077681 |
| RE | 5.1676998 | -0.0077681 |
| YP | 5.9617000 | -0.0340128 |
| BW | 5.1676998 | -0.0077681 |
| SM | 5.1676998 | -0.0077681 |
| AS | 5.1676998 | -0.0077681 |
| WA | 5.9617000 | -0.0340128 |
| GA | 5.1676998 | -0.0077681 |
| WO | 5.9617000 | -0.0340128 |
| RO | 5.9617000 | -0.0340128 |
| SK | 5.9617000 | -0.0340128 |
| BO | 5.9617000 | -0.0340128 |
| SO | 5.9617000 | -0.0340128 |
| BJ | 5.9617000 | -0.0340128 |
| CK | 5.9617000 | -0.0340128 |
| SW | 5.9617000 | -0.0340128 |
| BR | 5.9617000 | -0.0340128 |
| SN | 5.9617000 | -0.0340128 |
| PO | 5.9617000 | -0.0340128 |
| DO | 5.9617000 | -0.0340128 |
| CO | 5.9617000 | -0.0340128 |
| PN | 5.9617000 | -0.0340128 |
| CB | 5.9617000 | -0.0340128 |
| QI | 5.9617000 | -0.0340128 |
| OV | 5.9617000 | -0.0340128 |
| WK | 5.9617000 | -0.0340128 |
| NK | 5.9617000 | -0.0340128 |
| WL | 5.9617000 | -0.0340128 |
| QS | 5.9617000 | -0.0340128 |
| SS | 5.1676998 | -0.0077681 |
| OB | 5.1676998 | -0.0077681 |
| CA | 5.9617000 | -0.0340128 |
| PS | 5.9617000 | -0.0340128 |
| HL | 5.9617000 | -0.0340128 |
| BP | 5.9617000 | -0.0340128 |
| BT | 5.9617000 | -0.0340128 |
| QA | 5.9617000 | -0.0340128 |
| BK | 5.1676998 | -0.0077681 |
| SY | 5.9617000 | -0.0340128 |
| BY | 5.5876999 | -0.0053480 |
| RB | 5.9617000 | -0.0340128 |
| SU | 5.9617000 | -0.0340128 |
| WI | 5.1676998 | -0.0077681 |
| BL | 5.1676998 | -0.0077681 |
| OH | 5.9617000 | -0.0340128 |
| AH | 5.1676998 | -0.0077681 |
| RD | 5.1676998 | -0.0077681 |
| DW | 5.1676998 | -0.0077681 |
| HT | 5.9617000 | -0.0340128 |
| KC | 5.1676998 | -0.0077681 |
| OO | 5.1676998 | -0.0077681 |
| CT | 5.9617000 | -0.0340128 |
| MV | 5.9617000 | -0.0340128 |
| MB | 5.1676998 | -0.0077681 |
| HH | 5.1676998 | -0.0077681 |
| SD | 5.1676998 | -0.0077681 |

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

**Table 5.0.2 MWT** **values for the mortality equation {5.0.4} in the CS variant.**

| **Species Code** | ***MWT*** | **Species Code** | ***MWT*** |
| --- | --- | --- | --- |
| RC | 0.20 | SK | 0.50 |
| JU | 0.70 | BO | 0.50 |
| SP | 0.30 | SO | 0.10 |
| VP | 0.30 | BJ | 0.70 |
| LP | 0.30 | CK | 0.30 |
| OS | 0.30 | SW | 0.50 |
| WP | 0.50 | BR | 0.50 |
| WN | 0.30 | SN | 0.30 |
| BN | 0.30 | PO | 0.30 |
| TL | 0.30 | DO | 0.70 |
| TS | 0.70 | CO | 0.50 |
| WT | 0.30 | PN | 0.30 |
| BG | 0.30 | CB | 0.30 |
| SH | 0.50 | QI | 0.30 |
| SL | 0.90 | OV | 0.50 |
| MH | 0.30 | WK | 0.30 |
| PH | 0.50 | NK | 0.90 |
| HI | 0.50 | WL | 0.30 |
| WH | 0.50 | QS | 0.70 |
| BH | 0.50 | SS | 0.30 |
| PE | 0.50 | OB | 0.30 |
| BI | 0.50 | CA | 0.70 |
| AB | 0.70 | PS | 0.90 |
| BA | 0.30 | HL | 0.70 |
| PA | 0.50 | BP | 0.10 |
| UA | 0.30 | BT | 0.10 |
| EC | 0.10 | QA | 0.10 |
| RM | 0.85 | BK | 0.10 |
| BE | 0.70 | SY | 0.50 |
| SV | 0.70 | BY | 0.50 |
| BC | 0.40 | RB | 0.30 |
| AE | 0.50 | SU | 0.30 |
| SG | 0.50 | WI | 0.90 |
| HK | 0.50 | BL | 0.10 |
| WE | 0.30 | OH | 0.30 |
| EL | 0.50 | AH | 0.90 |
| SI | 0.50 | RD | 0.30 |
| RL | 0.70 | DW | 0.90 |
| RE | 0.50 | HT | 0.30 |
| YP | 0.30 | KC | 0.10 |
| BW | 0.70 | OO | 0.30 |
| SM | 0.90 | CT | 0.50 |
| AS | 0.30 | MV | 0.50 |
| WA | 0.30 | MB | 0.30 |
| GA | 0.70 | HH | 0.70 |
| WO | 0.50 | SD | 0.70 |
| RO | 0.50 |  |  |

# 6.0 Regeneration

The CS variant contains a partial establishment model which may be used to input regeneration and ingrowth into simulations. A more detailed description of how the partial establishment model works can be found in section 5.4.5 of the Essential FVS Guide (Dixon 2002).

The regeneration model is used to simulate stand establishment from bare ground, or to bring seedlings and sprouts into a simulation with existing trees. Sprouts are automatically added to the simulation following harvest or burning of known sprouting species (see table 6.0.1 for sprouting species).

**Table 6.0.1 Regeneration parameters by species in the CS variant.**

| **Species Code** | **Sprouting Species** | **Minimum Bud Width (in)** | **Minimum Tree Height (ft)** | **Maximum Tree Height (ft)** |
| --- | --- | --- | --- | --- |
| RC | No | 0.5 | 0.33 | 16.0 |
| JU | No | 0.3 | 2.10 | 27.0 |
| SP | Yes | 0.5 | 0.25 | 14.0 |
| VP | No | 0.5 | 0.42 | 14.0 |
| LP | No | 0.5 | 0.25 | 14.0 |
| OS | No | 0.3 | 0.25 | 16.0 |
| WP | No | 0.4 | 0.33 | 20.0 |
| WN | Yes | 0.4 | 0.33 | 20.0 |
| BN | Yes | 0.3 | 0.33 | 18.0 |
| TL | Yes | 0.2 | 0.33 | 16.0 |
| TS | Yes | 0.2 | 3.59 | 20.0 |
| WT | Yes | 0.2 | 0.33 | 20.0 |
| BG | Yes | 0.2 | 0.33 | 16.0 |
| SH | Yes | 0.3 | 0.33 | 14.0 |
| SL | Yes | 0.3 | 0.33 | 14.0 |
| MH | Yes | 0.3 | 0.33 | 18.0 |
| PH | Yes | 0.3 | 0.33 | 14.0 |
| HI | Yes | 0.3 | 0.33 | 14.0 |
| WH | Yes | 0.3 | 0.33 | 14.0 |
| BH | Yes | 0.3 | 0.33 | 14.0 |
| PE | Yes | 0.3 | 0.33 | 14.0 |
| BI | Yes | 0.3 | 0.33 | 14.0 |
| AB | Yes | 0.1 | 0.25 | 14.0 |
| BA | Yes | 0.2 | 0.33 | 18.0 |
| PA | Yes | 0.2 | 0.42 | 28.0 |
| UA | Yes | 0.2 | 0.50 | 20.0 |
| EC | Yes | 0.1 | 0.42 | 24.0 |
| RM | Yes | 0.2 | 1.00 | 20.0 |
| BE | Yes | 0.3 | 0.33 | 16.0 |
| SV | Yes | 0.2 | 0.42 | 18.0 |
| BC | Yes | 0.1 | 0.42 | 26.0 |
| AE | Yes | 0.1 | 0.33 | 16.0 |
| SG | Yes | 0.3 | 0.33 | 14.0 |
| HK | Yes | 0.1 | 0.25 | 12.0 |
| WE | Yes | 0.1 | 0.50 | 20.0 |
| EL | Yes | 0.1 | 0.33 | 16.0 |
| SI | Yes | 0.1 | 0.50 | 20.0 |
| RL | Yes | 0.1 | 0.33 | 12.0 |
| RE | Yes | 0.1 | 0.50 | 20.0 |
| YP | Yes | 0.2 | 0.42 | 24.0 |
| BW | Yes | 0.1 | 0.33 | 16.0 |
| SM | Yes | 0.2 | 0.25 | 16.0 |
| AS | Yes | 0.2 | 0.42 | 24.0 |
| WA | Yes | 0.2 | 0.42 | 24.0 |
| GA | Yes | 0.2 | 0.42 | 24.0 |
| WO | Yes | 0.2 | 0.33 | 16.0 |
| RO | Yes | 0.2 | 0.42 | 20.0 |
| SK | Yes | 0.1 | 0.33 | 16.0 |
| BO | Yes | 0.2 | 0.33 | 16.0 |
| SO | Yes | 0.2 | 0.33 | 16.0 |
| BJ | Yes | 0.2 | 2.80 | 20.0 |
| CK | Yes | 0.1 | 0.33 | 12.0 |
| SW | Yes | 0.1 | 0.33 | 16.0 |
| BR | Yes | 0.2 | 0.25 | 14.0 |
| SN | Yes | 0.2 | 0.33 | 12.0 |
| PO | Yes | 0.1 | 0.25 | 12.0 |
| DO | Yes | 0.1 | 2.80 | 20.0 |
| CO | Yes | 0.2 | 0.33 | 16.0 |
| PN | Yes | 0.2 | 1.40 | 20.0 |
| CB | Yes | 0.1 | 0.33 | 14.0 |
| QI | Yes | 0.2 | 0.25 | 14.0 |
| OV | Yes | 0.2 | 0.50 | 20.0 |
| WK | Yes | 0.1 | 0.33 | 16.0 |
| NK | Yes | 0.2 | 1.40 | 20.0 |
| WL | Yes | 0.1 | 0.25 | 14.0 |
| QS | Yes | 0.1 | 0.50 | 20.0 |
| SS | Yes | 0.1 | 0.50 | 18.0 |
| OB | Yes | 0.1 | 0.55 | 20.0 |
| CA | Yes | 0.3 | 0.63 | 20.0 |
| PS | Yes | 0.1 | 0.25 | 12.0 |
| HL | Yes | 0.1 | 5.00 | 20.0 |
| BP | Yes | 0.2 | 0.42 | 24.0 |
| BT | Yes | 0.2 | 0.42 | 20.0 |
| QA | Yes | 0.3 | 0.42 | 20.0 |
| BK | Yes | 0.1 | 0.58 | 24.0 |
| SY | Yes | 0.1 | 0.58 | 24.0 |
| BY | Yes | 0.2 | 1.40 | 20.0 |
| RB | Yes | 0.1 | 0.33 | 18.0 |
| SU | Yes | 0.2 | 0.33 | 18.0 |
| WI | Yes | 0.1 | 4.70 | 20.0 |
| BL | Yes | 0.1 | 1.00 | 32.0 |
| OH | No | 0.1 | 0.33 | 10.0 |
| AH | Yes | 0.2 | 0.42 | 20.0 |
| RD | Yes | 0.2 | 2.10 | 20.0 |
| DW | Yes | 0.1 | 0.25 | 18.0 |
| HT | Yes | 0.1 | 0.25 | 16.0 |
| KC | Yes | 0.1 | 0.50 | 20.0 |
| OO | Yes | 0.2 | 0.25 | 12.0 |
| CT | Yes | 0.2 | 0.33 | 20.0 |
| MV | Yes | 0.2 | 0.42 | 20.0 |
| MB | Yes | 0.2 | 2.10 | 20.0 |
| HH | Yes | 0.2 | 0.42 | 20.0 |
| SD | Yes | 0.2 | 0.33 | 16.0 |

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

{6.0.4} *PS =* exp(1.6134 - 0.0184 \* (((*DSTMPi* / 0.7788 - 0.4403) \* 2.54)))/(1 + exp(1.6134 - 0.0184 \* (((*DSTMPi* / 0.7788) - 0.4403) \* 2.54)))

{6.0.5} *PS =* exp(6.0065 - 0.0777\*((*DSTMPi* / 0.7801) \* 2.54)) / (1 + exp(6.0065 - 0.0777 \* ((*DSTMPi* / 0.7801) \* 2.54)))

{6.0.6} PS = exp(6.4205 - 0.1097 \* (((*DSTMPi* / 0.8188 - 0.23065) \* 2.54))) / (1 + exp(6.4205 - 0.1097 \* (((*DSTMPi* / 0.8188) - 0.23065) \* 2.54)))

{6.0.7} *PS =* ((57.3 - 0.0032 \* (*DSTMPi*)^3) / 100)

{6.0.8} *PS =* (1 / (1 + exp(-(2.3656 - 0.2781 \* (*DSTMPi* / 0.7801)))))

{6.0.9} *PS =* (1 / (1 + exp(-(-2.8058 + 22.6839 \* (1 / ((*DSTMPi* / 0.7788) - 0.4403))))))

{6.0.10} *PS =* (*TPAi* / (*ASTPAR* \* 2)) \* ((*ASBAR* / 198) \* (40100.45 - 3574.02 \* *RSHAG*^2 + 554.02 \* *RSHAG*^3 - 3.5208 \* *RSHAG*^5 + 0.011797 \* *RSHAG*^7))

{6.0.11} *PS =* ((89.191 - 2.611 \* *DSTMPi*) / 100)

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

**Table 6.0.2 Sprouting algorithm parameters for sprouting species in the CS variant.**

| **Species Code** | **Sprouting Probability** | **Number of Sprout Records** | **Source\*** |
| --- | --- | --- | --- |
| SP | 0.42 for DBH < 7”,  0 for DBH > 7” | 1, 0 | Wayne Clatterbuck (personal communication)  Ag. Handbook 654 |
| WN | 0.8 for DBH < 8",  0.5 for DBH > 8" | 1 | Schlesinger 1977  Schlesinger 1989  Coladonato 1991 |
| BN | 0.3 for DBH < 8",  0 for DBH > 8" | 1, 0 | Ag. Handbook 654 |
| TL | 0.9 | 1 | Ag. Handbook 654 |
| TS | 0.9 | 1 | Hook and DeBell 1970  Ag. Handbook 654 |
| WT | 0.9 | 1 | Hook and DeBell 1970  Ag. Handbook 654 |
| BG | 0.9 | 1 | Hook and DeBell 1970  Ag. Handbook 654 |
| SH | 0.95 for DBH < 24",  0.6 for DBH > 24" | 1 | Nelson 1965 |
| SL | 0.75 for DBH < 24",  0.5 for DBH > 24" | 1 | Ag. Handbook 654 |
| MH | 0.95 for DBH < 24",  0.6 for DBH > 24" | 1 | Nelson 1965 |
| PH | 0.75 for DBH < 24",  0.5 for DBH > 24" | 1 | Ag. Handbook 654 |
| HI | 0.95 for DBH < 24",  0.6 for DBH > 24" | 1 | Ag. Handbook 654 |
| WH | 0.95 for DBH < 24",  0.6 for DBH > 24" | 1 | Ag. Handbook 654 |
| BH | 0.95 for DBH < 24",  0.6 for DBH > 24" | 1 | Nelson 1965  Fayle 1966 |
| PE | 0.95 for DBH < 24",  0.6 for DBH > 24" | 1 | Wolstenholme 1976  Ag. Handbook 654 |
| BI | 0.95 for DBH < 24",  0.6 for DBH > 24" | 1 | Nelson 1965  Ag. Handbook 654 |
| AB | 0.5 for DBH < 4",  0 for DBH > 4" | 1, 0 | Ag. Handbook 654 |
| BA | 0.8 for DBH < 12",  0.5 for DBH > 12" | {6.0.1} | Curtis 1959  Lees and West 1988 |
| PA | 0.8 for DBH < 12",  0.5 for DBH > 12" | {6.0.1} | Ag. Handbook 654 |
| UA | 0.8 for DBH < 12",  0.5 for DBH > 12" | {6.0.1} | Ag. Handbook 654 |
| EC | 0.4 for DBH < 25",  0 for DBH > 25" | 1, 0 | Ag. Handbook 654 |
| RM | 0.8 for DBH < 12",  0.5 for DBH > 12" | {6.0.1} | Solomon and Barton 1967  Prager and Goldsmith 1977 |
| BE | 0.6 for DBH < 15",  0.3 for DBH > 15" | 1 | Maeglin and Ohman 1973  Eyre 1980 |
| SV | 0.8 for DBH < 12",  0.5 for DBH > 12" | {6.0.1} | Ag. Handbook 654 |
| BC | 0.8 for DBH < 12",  0.5 for DBH > 12" | 1 | Hough 1965  Powell and Tryon 1979 |
| AE | 0.7 | 1 | Ag. Handbook 654 |
| SG | 0.8 | 1 | Ag. Handbook 654 |
| HK | 0.4 for DBH < 8",  0.2 for DBH > 8" | 1 | Ag. Handbook 654 |
| WE | 0.7 | 1 | Ag. Handbook 654 |
| EL | 0.7 | 1 | Ag. Handbook 654 |
| SI | 0.7 | 1 | Ag. Handbook 654 |
| RL | 0.7 | 1 | Ag. Handbook 654 |
| RE | 0.7 | 1 | Ag. Handbook 654 |
| YP | 0.8 for DBH < 25",  0.5 for DBH > 25" | {6.0.2} | Ag. Handbook 654 |
| BW | 0.8 | {6.0.2} | Ag. Handbook 654 |
| SM | {6.0.11} | {6.0.1} | MacDonald and Powell 1983  Ag. Handbook 654 |
| AS | 0.8 for DBH < 12",  0.5 for DBH > 12" | 1 | Ag. Handbook 654 |
| WA | 0.8 for DBH < 12",  0.5 for DBH > 12" | 1 | Ag. Handbook 654 |
| GA | 0.8 for DBH < 12",  0.5 for DBH > 12" | 1 | Ag. Handbook 654 |
| WO | Eq. {6.0.4} | 1 | Sands and Abrams 2009  Westfall 2010  Ag. Handbook 654 |
| RO | Eq. {6.0.7} | {6.0.1} | Johnson 1975  Ag. Handbook 654 |
| SK | 0.8 for DBH < 10",  0.5 for DBH > 10" | 1 | Ag. Handbook 654 |
| BO | Eq. {6.0.5} | 1 | Sands and Abrams 2009  Westfall 2010  Ag. Handbook 654 |
| SO | Eq. {6.0.7} | 1 | Johnson 1975  Ag. Handbook 654 |
| BJ | Eq. {6.0.8} | 1 | Johnson 1977  Ag. Handbook 654 |
| CK | 0.7 | 1 | Ag. Handbook 654 |
| SW | 90% of Eq. {6.0.4} predictions | 1 | Ag. Handbook 654 |
| BR | 0.8 | 1 | Ag. Handbook 654 |
| SN | Eq. {6.0.6} | 1 | Sands and Abrams 2009  Westfall 2010  Ag. Handbook 654 |
| PO | Eq. {6.0.9} | 1 | Johnson 1977  Ag. Handbook 654 |
| DO | Eq. {6.0.9} | 1 | Johnson 1977  Ag. Handbook 654 |
| CO | Eq. {6.0.6} | 1 | Sands and Abrams 2009  Westfall 2010  Ag. Handbook 654 |
| PN | 0.8 | 1 | Ag. Handbook 654 |
| CB | Eq. {6.0.7} | {6.0.1} | Johnson 1975  Ag. Handbook 654 |
| QI | Eq. {6.0.7} | {6.0.1} | Johnson 1975  Ag. Handbook 654 |
| OV | 0.4 for DBH < 8",  0 for DBH > 8" | 1, 0 | Ag. Handbook 654 |
| WK | 0.7 | 1 | Carey 1992-1 |
| NK | 0.8 for DBH < 10",  0.5 for DBH > 10" | 1 | Ag. Handbook 654 |
| WL | 0.8 for DBH < 10",  0.5 for DBH > 10" | 1 | Ag. Handbook 654 |
| QS | 0.6 for DBH < 10",  0.3 for DBH > 10" | 1 | Ag. Handbook 654 |
| SS | 0.8 | {6.0.2} | Ag. Handbook 654 |
| OB | 0.4 for DBH < 8",  0 for DBH > 8" | 1, 0 | Ag. Handbook 654 |
| CA | No info available—default to 0.7 | 1 | n/a |
| PS | 0.7 | 1 | Ag. Handbook 654 |
| HL | 0.7 | 1 | Ag. Handbook 654 |
| BP | 0.8 for DBH < 25",  0.5 for DBH > 25" | {6.0.2} | Ag. Handbook 654 |
| BT | 0.8 | {6.0.2} | Ag. Handbook 654 |
| QA | Eq. {6.0.10} | 2 | Keyser 2001 |
| BK | 0.9 | {6.0.1} | Ag. Handbook 654 |
| SY | 0.7 | 1 | Steinbeck et al. 1972  Sullivan 1994 |
| BY | 0.8 for DBH < 12",  0.5 for DBH > 12" | 1 | Ag. Handbook 654 |
| RB | 0.7 | 1 | Sullivan 1993 |
| SU | 0.7 | 1 | Coladonato 1992-1  Ag. Handbook 654 |
| WI | 0.9 | 1 | Ag. Handbook 654 |
| BL | 0.9 | 1 | Ag. Handbook 654 |
| AH | No info available—default to 0.7 | 1 | n/a |
| RD | 0.8 | 1 | Armstrong 1980 |
| DW | 0.7 for DBH < 8",  0.9 for DBH > 8" | {6.0.1} | Ag. Handbook 654 |
| HT | No info available—default to 0.7 | 1 | n/a |
| KC | No info available—default to 0.7 | 1 | n/a |
| OO | 0.8 | 1 | Carey 1994-1 |
| CT | 0.7 | 1 | Ag. Handbook 654 |
| MV | 0.8 | {6.0.2} | Jones et al. 2000 |
| MB | 0.8 | 1 | Ag. Handbook 654 |
| HH | 0.8 | 1 | Ag. Handbook 654 |
| SD | 0.9 | {6.0.1} | Ag. Handbook 654 |

\*Many of the sources stemmed from those referenced in Agricultural Handbook 654, Silvics of North America. For the sake of being concise, only “Ag. Handbook 654” was listed when multiple publications were referenced from that handbook. When necessary, species-specific probabilities were based upon similarities with other species, either due to documented similarities or an assumed similarity. In the latter cases, assumptions were necessary due to a lack of previous research findings for these species.

Regeneration of seedlings must be specified by the user with the partial establishment model by using the PLANT or NATURAL keywords. Height of the seedlings is estimated in two steps. First, the height is estimated when a tree is 5 years old (or the end of the cycle – whichever comes first) by using the small-tree height growth equations found in section 4.6.1. Users may override this value by entering a height in field 6 of the PLANT or NATURAL keyword; however the height entered in field 6 is not subject to minimum height restrictions and seedlings as small as 0.05 feet may be established. The second step also uses the equations in section 4.6.1, which grow the trees in height from the point five years after establishment to the end of the cycle.

Seedlings and sprouts are passed to the main FVS model at the end of the growth cycle in which regeneration is established. Unless noted above, seedlings being passed are subject to minimum and maximum height constraints and a minimum budwidth constraint shown in table 6.0.1. After seedling height is estimated, diameter growth is estimated using equations described in section 4.6.2. Crown ratios on newly established trees are estimated as described in section 4.3.1.

Regenerated trees and sprouts can be identified in the treelist output file with tree identification numbers beginning with the letters “ES”.

# 7.0 Volume

Volume is calculated for four merchantability standards: total stem cubic feet, merchantable stem cubic feet, sawlog stem cubic feet, and sawlog stem board feet (International ¼-inch). Volume estimation is based on methods contained in the National Volume Estimator Library maintained by the Forest Products Measurements group in the Forest Management Service Center (Volume Estimator Library Equations 2009). The default merchantability standards for the CS variant are shown in table 7.0.1.

Volume computation methods used by the Forest Inventory and Analysis (FIA) program can be requested with the FIAVBC keyword. This keyword encompasses the National Scale Volume and Biomass estimators (NSVB; Westfall et al. 2024) and regional equations used for woodland species (Burrill et al. 2024). More information about the FIAVBC keyword and required input variables can be found in the Essential FVS Guide (Dixon 2002).

**Table 7.0.1 Volume merchantability standards for the CS variant. Stump height is set to 0.5 feet and 1.0 feet for pulpwood and sawtimber volume respectively.**

| **Species /** **Location Code** | **Pulpwood**  **(Minimum DBH /**  **Top Diameter Outside Bark)** | **Sawtimber**  **(Minimum DBH /**  **Top Diameter Outside Bark)** |
| --- | --- | --- |
| Softwoods Default | 5.0 / 4.0 **inches** | 9.0 / 7.6 **inches** |
| RC on 905 | 5.0 / 4.0 **inches** | 6.0 / 5.0 inches |
| BY on 908 | 6.0 / 5.0 inches | 11.0 / 9.6 inches |
| BY on 911 and 912 | 6.0 / 4.0 inches | 11.0 / 9.6 inches |
| Hardwoods on 905 | 5.0 / 4.0 inches | 9.0 / 7.6 inches |
| Hardwoods on 908 | 6.0 / 5.0 inches | 11.0 / 9.6 inches |
| Hardwoods on 911 and 912 | 6.0 / 4.0 inches | 11.0 / 9.6 inches |

For both cubic and board foot prediction, Clark’s profile models (Clark et al. 1991) are used for all species and all location codes in the CS variant. Equation number is 900CLKE\*\*\*, where \*\*\* signifies the three-digit FIA species code.

# 8.0 Fire and Fuels Extension (FFE-FVS)

The Fire and Fuels Extension to the Forest Vegetation Simulator (FFE-FVS) (Reinhardt and Crookston 2003) integrates FVS with models of fire behavior, fire effects, and fuel and snag dynamics. This allows users to simulate various management scenarios and compare their effect on potential fire hazard, surface fuel loading, snag levels, and stored carbon over time. Users can also simulate prescribed burns and wildfires and get estimates of the associated fire effects such as tree mortality, fuel consumption, and smoke production, as well as see their effect on future stand characteristics. FFE-FVS, like FVS, is run on individual stands, but it can be used to provide estimates of stand characteristics such as canopy base height and canopy bulk density when needed for landscape-level fire models.

For more information on FFE-FVS and how it is calibrated for the CS variant, refer to the updated FFE-FVS model documentation (Rebain, comp. 2010) available on the FVS website.

# 9.0 Insect and Disease Extensions

FVS Insect and Disease models have been developed through the participation and contribution of various organizations led by Forest Health Protection. The models are maintained by the Forest Management Service Center and regional Forest Health Protection specialists. There are no insect and disease models currently available for the CS variant. However, FVS addfiles that simulate the effects of known agents within the CS variant may be found in chapter 8 of the Essential FVS Users Guide (Dixon 2002).

# 10.0 Literature Cited

Armstrong, W. E. 1980. Impact of prescribed burning on wildlife. In: White, Larry D., ed. Prescribed range burning in the Edwards Plateau of Texas: Proceedings of a symposium; 1980 October 23; Junction, TX. College Station, TX: Texas Agricultural Extension Service, The Texas A&M University System: 22-26.

Arney, J.D. 1985. A modeling strategy for the growth projection of managed stands. Canadian Journal of Forest Research 15(3):511-518.

Bechtold, William A. 2003. Crown-diameter prediction models for 87 species of stand-grown trees in the eastern united states. Sjaf. 27(4):269-278.

Bragg, Don C. 2001. A local basal area adjustment for crown width prediction. Njaf. 18(1):22-28.

Burns, R. M., & Honkala, B. H. 1990. Silvics of North America: 1. Conifers; 2. Hardwoods Agriculture Handbook 654. US Department of Agriculture, Forest Service, Washington, DC.

Burrill, Elizabeth A.; DiTommaso, Andrea M.; Turner, Jeffery A.; Pugh, Scott A.; Christensen, Glenn; Kralicek, Karin M.; Perry, Carol J.; Lepine, Lucie C.; Walker, David M.; Conkling, Barbara L. 2024. The Forest Inventory and Analysis Database, FIADB user guides, volume: database description (version 9.3), nationwide forest inventory (NFI). U.S. Department of Agriculture, Forest Service. 1026 p. [Online].

Carey, Jennifer H. 1992. Quercus nigra. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Carey, Jennifer H. 1994. Maclura pomifera. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Carmean, Willard H.; Hahn, Jerold T.; Jacobs, Rodney D. 1989. Site index curves for forest tree species in the eastern United States. Gen. Tech. Report NC-128. St. Paul, MN: U.S. Department of Agriculture, North Central Forest Experiment Station. 142 p.

Clark, Alexander, Ray A. Souter, and Bryce E. Schlaegel. 1991. Stem Profile Equations for Southern Tree Species. Southeastern Forest Experiment Station Research Paper SE-282.

Clatterbuck, Wayne K., Personal Communication, July 7, 2015.

Coladonato, Milo. 1991. Juglans nigra. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory.

Coladonato, Milo. 1992. Liquidambar styraciflua. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory.

Cole, D. M.; Stage, A. R. 1972. Estimating future diameters of lodgepole pine. Res. Pap. INT-131. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 20p.

Curtis, John T. 1959. The vegetation of Wisconsin. Madison, WI: The University of Wisconsin Press. 657 p.

Curtis, Robert O. 1967. Height-diameter and height-diameter-age equations for second-growth Douglas-fir. Forest Science 13(4):365-375.

Deo, R.K.; Froese, R.E. 2013. Refitting the large-tree diameter growth equations of the Lake States and Central States variants of the Forest Vegetation Simulator. MichiganTechnological University. School of Forest Resources and Environmental Science. 62 p.

Dixon, Gary E. comp. 2002 (revised frequently). Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U.S. Department of Agriculture, Forest Service, Forest Management Service Center.

Ek, Alan. 1974. Dimensional relationships of forest and open grown trees in Wisconsin. Univ. Of Wisconsin.

Eyre, F. H., ed. 1980. Forest cover types of the United States and Canada. Washington, DC: Society of American Foresters. 148 p.

Fayle, D. C. F. 1966. Root sucker origin in bitternut hickory. Canada, Canadian Forestry Service Bi-monthly Research Notes 24. p. 2.

Holdaway, Margaret R. 1986. Modeling Tree Crown Ratio. The Forestry Chronicle.62:451-455.

Hook, D. D., and D. S. DeBell. 1970. Factors influencing stump sprouting of swamp and water tupelo seedlings. USDA Forest Service, Research Paper SE-57. Southeastern Forest Experiment Station, Asheville, NC. 9 p.

Hough, Ashbel F. 1965. Black cherry (Prunus serotina Ehrh.). In Silvics of forest trees of the United States. p. 539-545. H. A. Fowells, comp. U.S. Department of Agriculture, Agriculture Handbook 271. Washington, DC.

Johnson, Robert L. 1975. Natural regeneration and development of Nuttall oak and associated species. USDA Forest Service, Research Paper SO-104. Southern Forest Experiment Station, New Orleans, LA. 12 p.

Johnson, Paul S. 1977. Predicting oak stump sprouting and sprout development in the Missouri Ozarks. USDA Forest Service, Research Paper NC-149. North Central Forest Experiment Station, St. Paul, MN. 11 p.

Jones, R. H., Stokes, S. L., Lockaby, B. G., & Stanturf, J. A. 2000. Vegetation responses to helicopter and ground based logging in blackwater floodplain forests. Forest ecology and management, 139(1), 215-225.

Keyser, C.E. 2001. Quaking Aspen Sprouting in Western FVS Variants: A New Approach. Unpublished Manuscript.

Krajicek, J.; Brinkman, K.; Gingrich, S. 1961. Crown competition – a measure of density. For. Science 7(1):35-42.

Lees, J. C.; West, R. C. 1988. A strategy for growing black ash in the maritime provinces. Technical Note No. 201. Fredericton, NB: Canadian Forestry Service - Maritimes. 4 p.

MacDonald, J. E., & Powell, G. R. 1983. Relationships between stump sprouting and parent-tree diameter in sugar maple in the 1st year following clear-cutting. Canadian Journal of Forest Research, 13(3), 390-394.

Maeglin, R. R., and L. F. Ohmann. 1973. Boxelder (Acer negundo): a review and commentary. Bulletin of the Torrey Botanical Club 100:357-363.

Miner, Cynthia L.; Walters, Nancy R.; Monique, L. 1988. A guide to the TWIGS program for the North Central United States. Gen. Tech. Rep. NC-125. St. Paul, MN: U. S. Department of Agriculture, Forest Service, North Central Forest Experiment Station

Nelson, Thomas C. 1965. Bitternut hickory (Carya cordiformis (Wangenh.) K. Koch). In Silvics of forest trees of the United States. p. 111-114. H. A. Fowells, comp. U.S. Department of Agriculture, Agriculture Handbook 271. Washington, DC. Carya cordiformis

Powell, Douglas S., and E. H. Tryon. 1979. Sprouting ability of advance growth in undisturbed stands. Canadian Journal of Forest Research 9(1):116-120.

Prager, U. E., and F. B. Goldsmith. 1977. Stump sprout formation by red maple (Acer rubrum L.) in Nova Scotia. p.3-99. In Proceedings of the Twenty-eighth Meeting of the Nova Scotian Institute of Science. Dalhousie University, Department of Biology, Halifax.

Reineke, L. H. 1933. Perfecting a stand density index for even aged forests. J. Agric. Res. 46:627-638.

Rebain, Stephanie A. comp. 2010 (revised frequently). The Fire and Fuels Extension to the Forest Vegetation Simulator: Updated Model Documentation. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 379 p.

Reinhardt, Elizabeth; Crookston, Nicholas L. (Technical Editors). 2003. The Fire and Fuels Extension to the Forest Vegetation Simulator. Gen. Tech. Rep. RMRS-GTR-116. Ogden, UT: U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station. 209 p.

Sands, B. A., & Abrams, M. D. (2009). Field Note: Effects of Stump Diameter on Sprout Number and Size for Three Oak Species in a Pennsylvania Clearcut. Northern Journal of Applied Forestry, 26(3), 122-125.

Schlesinger, R. C., & Funk, D. T. 1977. Manager's handbook for black walnut. USDA Forest Service General Technical Report, North Central Forest Experiment Station, (NC-38).

Schlesinger, Richard C. 1989. Estimating Black Walnut Plantation Growth and Yield. In: Clark, F. Bryan, tech. ed.; Hutchinson, Jay G., ed. Central Hardwood Notes. St. Paul, MN: U.S. Department of Agriculture, Forest Service, North Central Forest Experiment Station.: Note 5.07.

Shifley, Stephen R. 1987. A generalized system of models forecasting Central States tree growth. Res. Pap. NC-279. St. Paul, MN: U. S. Department of Agriculture, Forest Service, North Central Forest Experiment Station. 10p.

Smith, w.r., r.m. Farrar, jr, p.a. Murphy, j.l. Yeiser, r.s. Meldahl,and j.s. Kush. 1992. Crown and basal area relationships of open-grown southern pines for modeling competition and growth.

Solomon, Dale S., and Barton M. Blum. 1967. Stump sprouting of four northern hardwoods. USDA Forest Service Research Paper NE-59. Northeastern Forest Experiment Station, Upper Darby, PA. 13 p.

Stage, A. R. 1973. Prognosis Model for stand development. Res. Paper INT-137. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 32p.

Steinbeck, K., R. G. McAlpine, and J. T. May. 1972. Short rotation culture of sycamore: a status report. Journal of Forestry 70(4):210-213.

Sullivan, Janet. 1994. Platanus occidentalis. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Sullivan, Janet. 1993. Betula nigra. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

U.S. Department of Agriculture, Forest Service. 1983. Biomass Energy Technology Final Report, Silvicultural Production Systems, Department of Energy, Contract DE-AI01-80CS83013, projecting future supplies of biomass for energy in the North Central United States. St. Paul, MN: U.S. Department of Agriculture, Forest Service, North Central Forest Experiment Station. 38 p.

Van Dyck, Michael G.; Smith-Mateja, Erin E., comps. 2000 (revised frequently). Keyword reference guide for the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

Westfall, J. A. (2010). New models for predicting diameter at breast height from stump dimensions. Northern journal of applied forestry, 27(1), 21-27.

Westfall, James A.; Coulston, John W.; Gray, Andrew N.; Shaw, John D.; Radtke, Philip J.; Walker, David M.; Weiskittel, Aaron R.; MacFarlane, David W.; Affleck, David L.R.; Zhao, Dehai; Temesgen, Hailemariam; Poudel, Krishna P.; Frank, Jereme M.; Prisley, Stephen P.; Wang, Yingfang; Sánchez Meador, Andrew J.; Auty, David; Domke, Grant M. 2024. A national-scale tree volume, biomass, and carbon modeling system for the United States. Gen. Tech. Rep. WO-104. Washington, DC: U.S. Department of Agriculture, Forest Service. 37 p.

Wolstenholme, B. N. 1976. A technique for producing vigorous stem cuttings and graftwood in the pecan, Carya illinoensis (Wangenh.) K. Koch. Agroplantae 8(2):47-48.

Wykoff, W.R.; Crookston, N.L.; Stage, A.R. 1982. User’s guide to the Stand Prognosis Model. Gen. Tech. Rep. INT-133. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 112p.

Wykoff, W. R. 1990. A basal area increment model for individual conifers in the northern Rocky Mountains. For. Science 36(4): 1077-1104.

# 11.0 Appendices

There are no appendices for the CS variant.

The U.S. Department of Agriculture (USDA) prohibits discrimination in all its programs and activities on the basis of race, color, national origin, sex, religion, age, disability, political beliefs, sexual orientation, or marital or family status. (Not all prohibited bases apply to all programs.) Persons with disabilities who require alternative means for communication of program information (Braille, large print, audiotape, etc.) should contact USDA’s TARGET Center at (202) 720-2600 (voice and TDD).

To file a complaint of discrimination, write USDA, Director, Office of Civil Rights, Room 326-W, Whitten Building, 1400 Independence Avenue, SW, Washington, DC 20250-9410 or call (202) 720-5964 (voice or TDD). USDA is an equal opportunity provider and employer.