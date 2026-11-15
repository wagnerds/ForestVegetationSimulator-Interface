Northeast (NE) Variant Overview of the Forest Vegetation Simulator

July 2026

![](data:image/jpeg;base64...)

![Forest%20Service%20Color](data:image/jpeg;base64...)White Mountain NF

(John Williams, FS-R9)

Northeast (NE) Variant Overview of the Forest Vegetation Simulator

# Authors and Contributors:

The FVS staff has maintained model documentation for this variant in the form of a variant overview since its release in 1995. The original author was Renate Bush. In 2006, Gary Dixon reformulated many of the model components, created a test version of the variant and wrote this new variant overview. In 2008, the previous document was replaced with this updated variant overview. Gary Dixon, Christopher Dixon, Robert Havis, Chad Keyser, Stephanie Rebain, Erin Smith-Mateja, and Don Vandendriesche were involved with this update. Gary Dixon cross-checked information contained in this variant overview with the FVS source code.

FVS Staff. 2008 (revised July 9, 2026). Northeast (NE) Variant Overview – Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 58p.

Table of Contents

[Authors and Contributors: ii](#_Toc209542633)

[1.0 Introduction 1](#_Toc209542634)

[2.0 Geographic Range 2](#_Toc209542635)

[3.0 Control Variables 3](#_Toc209542636)

[3.1 Location Codes 3](#_Toc209542637)

[3.2 Species Codes 4](#_Toc209542638)

[3.3 Habitat Type, Plant Association, and Ecological Unit Codes 7](#_Toc209542639)

[3.4 Site Index 7](#_Toc209542640)

[3.5 Maximum Density 8](#_Toc209542641)

[4.0 Growth Relationships 11](#_Toc209542642)

[4.1 Height-Diameter Relationships 11](#_Toc209542643)

[4.2 Bark Ratio Relationships 15](#_Toc209542644)

[4.3 Crown Ratio Relationships 16](#_Toc209542645)

[4.3.1 Crown Ratio Dubbing 16](#_Toc209542646)

[4.3.2 Crown Ratio Change 17](#_Toc209542647)

[4.3.3 Crown Ratio for Newly Established Trees 17](#_Toc209542648)

[4.4 Crown Width Relationships 18](#_Toc209542649)

[4.5 Crown Competition Factor 25](#_Toc209542650)

[4.6 Small Tree Growth Relationships 26](#_Toc209542651)

[4.6.1 Small Tree Height Growth 26](#_Toc209542652)

[4.6.2 Small Tree Diameter Growth 26](#_Toc209542653)

[4.7 Large Tree Growth Relationships 27](#_Toc209542654)

[4.7.1 Large Tree Diameter Growth 27](#_Toc209542655)

[4.7.2 Large Tree Height Growth 29](#_Toc209542656)

[5.0 Mortality Model 33](#_Toc209542657)

[6.0 Regeneration 39](#_Toc209542658)

[7.0 Volume 48](#_Toc209542659)

[8.0 Fire and Fuels Extension (FFE-FVS) 49](#_Toc209542660)

[9.0 Insect and Disease Extensions 50](#_Toc209542661)

[10.0 Literature Cited 51](#_Toc209542662)

[11.0 Appendices 57](#_Toc209542663)

Quick Guide to Default Settings

|  |  |  |
| --- | --- | --- |
| **Parameter or Attribute** | **Default Setting** | |
| Number of Projection Cycles | 1 (10 if using FVS GUI) | |
| Projection Cycle Length | 10 years | |
| Location Code (National Forest) | 922 – White Mountain | |
| Slope | 5 percent | |
| Aspect | 0 (no meaningful aspect) | |
| Elevation (default location) | 20 (2000 feet) | |
| Latitude (Default location) | 43.53 | |
| Longitude (Default location) | 71.47 | |
| Site Species | SM | |
| Site Index | 56 feet (total age; 50 years) | |
| Maximum Stand Density Index | Species specific | |
| Maximum Basal Area | Species specific | |
| Volume Equations | National Volume Estimator Library | |
| Pulpwood Volume Specifications: | | |
| Minimum DBH / Top Diameter | Hardwoods | Softwoods |
| 919 – Allegheny | 6.0 / 5.0 inches | 5.0 / 4.0 inches |
| 920 – Green Mountain-Finger Lakes | 8.0 / 4.0 inches | 5.0 / 4.0 inches |
| 921 – Monongahela | 5.0 / 4.0 inches | 5.0 / 4.0 inches |
| 914 – Wayne, 911 – Wayne-Hoosier | 6.0 / 4.0 inches | 5.0 / 4.0 inches |
| 922 – White Mountain | 5.0 / 4.0 inches | 5.0 / 4.0 inches |
| Stump Height | 0.5 feet | 0.5 feet |
| Sawtimber Volume Specifications: | | |
| Minimum DBH / Top Diameter | Hardwoods | Softwoods |
| All location codes | 11.0 / 9.6 inches | 9.0 / 7.6 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| Sampling Design: | | |
| Large Trees (variable radius plot) | 40 BAF | |
| Small Trees (fixed radius plot) | 1/300th acre | |
| Breakpoint DBH | 5.0 inches | |

# 1.0 Introduction

The Forest Vegetation Simulator (FVS) is an individual tree, distance independent growth and yield model with linkable modules called extensions, which simulate various insect and pathogen impacts, fire effects, fuel loading, snag dynamics, and development of understory tree vegetation. FVS can simulate a wide variety of forest types, stand structures, and pure or mixed species stands.

New “variants” of the FVS model are created by imbedding new tree growth, mortality, and volume equations for a particular geographic area into the FVS framework. Geographic variants of FVS have been developed for most of the forested lands in the United States.

The Northeast (NE) variant was originally developed in 1995 based on relationships in the NE-TWIGS model (Hilt and Teck 1989), and equations from other variants for FVS relationships not present in NE-TWIGS. The model was reformulated in 2006 to improve model estimates; the only remnant of the original NE-TWIGS formulation is in the large tree diameter growth equations.

To fully understand how to use this variant, users should also consult the following publication:

* Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002)

This publication may be downloaded from the Forest Management Service Center (FMSC), Forest Service website. Other FVS publications may be needed if one is using an extension that simulates the effects of fire, insects, or diseases.

# 2.0 Geographic Range

The NE variant covers forest areas in the northeastern states of Connecticut, Delaware, Massachusetts, Maryland, Maine, New Hampshire, New Jersey, New York, Ohio, Pennsylvania, Rhode Island, Vermont, and West Virginia. This includes Green Mountain, White Mountain, Allegheny, Wayne, and Monongahela National Forests. The suggested geographic range of use for the NE variant is shown in figure 2.0.1.

![Picture of suggested range of the Northeast variant.](data:image/jpeg;base64...)**Figure 2.0.1 Suggested geographic range of use for the NE variant.**

# 3.0 Control Variables

FVS users need to specify certain variables used by the NE variant to control a simulation. These are entered in parameter fields on various FVS keywords available in the FVS interface or they are read from an FVS input database using the Database Extension.

## 3.1 Location Codes

The location code is a 3- or 4-digit code where, in general, the first digit of the code represents the Forest Service Region Number, and the last two digits represent the Forest Number within that region. In some cases, a location code beginning with a “7” or “8” is used to indicate an administrative boundary that doesn’t use a Forest Service Region number (for example, other federal agencies, state agencies, or other lands).

If the location code is missing or incorrect in the NE variant, a default forest code of 922 (White Mountain National Forest) will be used. Location codes recognized in the NE variant – and their associated default latitude, longitude, and elevation values – are shown in tables 3.1.1 and 3.1.2.

**Table 3.1.1 Location codes used in the NE variant.**

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Location Code** | **Location** | **Latitude** | **Longitude** | **Elevation** |
| 914 | Wayne National Forest | 39.33 | 82.10 | 9 (900 feet) |
| 919 | Allegheny National Forest | 41.84 | 79.15 | 17 (1700 feet) |
| 920 | Green Mountain – Finger Lakes National Forest | 43.61 | 72.97 | 19 (1900 feet) |
| 921 | Monongahela National Forest | 38.93 | 79.85 | 30 (3000 feet) |
| 922 | White Mountain National Forest | 43.53 | 71.47 | 20 (2000 feet) |
| 911 | Wayne – Hoosier National Forest (Map to Wayne) | 39.33 | 82.10 | 9 (900 feet) |
| 930 | Finger Lakes National Forest (Map to Green Mountain – Finger Lakes) | 43.61 | 72.97 | 19 (1900 feet) |

**Table 3.1.2 Bureau of Indian Affairs reservation codes used in the NE variant.**

| **Location Code** | **Location** |
| --- | --- |
| 8200 | Passamaquoddy Reservation (mapped to 922) |
| 8201 | Penobscot Off-Reservation Tl (mapped to 922) |
| 8202 | Houlton Maliseet Reservation (mapped to 922) |
| 8203 | Mashantucket Pequot Reservation (mapped to 922) |
| 8204 | Paucatuck Eastern Pequot Res (mapped to 922) |
| 8206 | Narragansett Reservation (mapped to 922) |
| 8208 | Wampanoag-Aquinnah Tl (mapped to 922) |
| 8209 | Aroostook Band Of Micmac Tl (mapped to 922) |
| 8211 | Mohegan Reservation (mapped to 922) |
| 8214 | Cayuga Nation Tdsa (mapped to 930) |
| 8215 | Onondaga Nation Reservation (mapped to 930) |
| 8216 | Tonawanda Reservation (mapped to 930) |
| 8217 | Tuscarora Nation Reservation (mapped to 930) |
| 8218 | Oneida Nation Reservation (mapped to 930) |

## 3.2 Species Codes

The NE variant recognizes 105 species, plus two other composite species categories. You may use FVS species codes, Forest Inventory and Analysis (FIA) species codes, or USDA Natural Resources Conservation Service PLANTS symbols to represent these species in FVS input data. Any valid eastern species code identifying species not recognized by the variant will be mapped to a similar species in the variant. The species mapping crosswalk is available on the FVS website variant documentation webpage. Any non-valid species code will default to the “other hardwood” category.

Either the FVS sequence number or species code must be used to specify a species in FVS keywords and Event Monitor functions. FIA codes or PLANTS symbols are only recognized during data input and may not be used in FVS keywords. Table 3.2.1 shows the complete list of species codes recognized by the NE variant.

**Table 3.2.1 Species codes used in the NE variant.**

| **Species Group** | **Species Number1** | **Species Code** | **FIA Code** | **PLANTS Symbol** | **Scientific Name2** | **Common Name2** |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | 1 | BF | 012 | ABBA | *Abies balsamea* | balsam fir |
| 2 | 2 | TA | 071 | LALA | *Larix laricina* | tamarack |
| 3 | 3 | WS | 094 | PIGL | *Picea glauca* | white spruce |
| 4 | 4 | RS | 097 | PIRU | *Picea rubens* | red spruce |
| 4 | 5 | NS | 091 | PIAB | *Picea abies* | Norway spruce |
| 4 | 6 | BS | 095 | PIMA | *Picea mariana* | black spruce |
| 4 | 7 | PI | 090 | PICEA | *Picea* | spruce |
| 5 | 8 | RN | 125 | PIRE | *Pinus resinosa* | red pine |
| 6 | 9 | WP | 129 | PIST | *Pinus strobus* | eastern white pine |
| 7 | 10 | LP | 131 | PITA | *Pinus taeda* | loblolly pine |
| 8 | 11 | VP | 132 | PIVI2 | *Pinus viginiana* | Virginia pine |
| 9 | 12 | WC | 241 | THOC2 | *Thuja occidentalis* | arborvitae |
| 9 | 13 | AW | 043 | CHTH2 | *Chamaecyparis thyoides* | Atlantic white cedar |
| 9 | 14 | RC | 068 | JUVI | *Juniperus virginiana* | eastern redcedar |
| 9 | 15 | JU | 057 | JUNIP | *Juniperus* | juniper |
| 10 | 16 | EH | 261 | TSCA | *Tsuga canadensis* | eastern hemlock |
| 10 | 17 | HM | 260 | TSUGA | *Tsuga* | hemlock |
| 11 | 18 | OP | 100 | PINUS | *Pinus* | pine |
| 11 | 19 | JP | 105 | PIBA2 | *Pinus banksiana* | jack pine |
| 11 | 20 | SP | 110 | PIEC2 | *Pinus echinata* | shortleaf pine |
| 11 | 21 | TM | 123 | PIPU5 | *Pinus pungens* | Table Mountain pine |
| 11 | 22 | PP | 126 | PIRI | *Pinus rigida* | pitch pine |
| 11 | 23 | PD | 128 | PISE | *Pinus serotina* | pond pine |
| 11 | 24 | SC | 130 | PISY | *Pinus sylvestris* | Scots pine |
| 11 | 25 | OS | 299 | 2TN |  | other softwood3 |
| 12 | 26 | RM | 316 | ACRU | *Acer rubrum* | red maple |
| 13 | 27 | SM | 318 | ACSA3 | *Acer saccharum* | sugar maple |
| 13 | 28 | BM | 314 | ACNI5 | *Acer nigrum* | black maple |
| 13 | 29 | SV | 317 | ACSA2 | *Acer saccharinum* | silver maple |
| 14 | 30 | YB | 371 | BEAL2 | *Betula alleghaniensis* | yellow birch |
| 14 | 31 | SB | 372 | BELE | *Betula lenta* | sweet birch |
| 14 | 32 | RB | 373 | BENI | *Betula nigra* | river birch |
| 15 | 33 | PB | 375 | BEPA | *Betula papyrifera* | paper birch |
| 15 | 34 | GB | 379 | BEPO | *Betula populifolia* | gray birch |
| 16 | 35 | HI | 400 | CARYA | *Carya* | hybrid hickory |
| 16 | 36 | PH | 403 | CAGL8 | *Carya glabra* | pignut hickory |
| 16 | 37 | SL | 405 | CALA21 | *Carya laciniosa* | shellbark hickory |
| 16 | 38 | SH | 407 | CAOV2 | *Carya ovata* | shagbark hickory |
| 16 | 39 | MH | 409 | CAAL27 | *Carya alba* | mockernut hickory |
| 17 | 40 | AB | 531 | FAGR | *Fagus grandifolia* | American beech |
| 18 | 41 | AS | 540 | FRAXI | *Fraxinus* | ash |
| 18 | 42 | WA | 541 | FRAM2 | *Fraxinus americana* | white ash |
| 18 | 43 | BA | 543 | FRNI | *Fraxinus nigra* | black ash |
| 18 | 44 | GA | 544 | FRPE | *Fraxinus pennsylvanica* | green ash |
| 18 | 45 | PA | 545 | FRPR | *Fraxinus profunda* | pumpkin ash |
| 19 | 46 | YP | 621 | LITU | *Liriodendron tulipifera* | tuliptree |
| 19 | 47 | SU | 611 | LIST2 | *Liquidamber styraciflua* | sweetgum |
| 19 | 48 | CT | 651 | MAAC | *Magnolia acuminata* | cucumber tree |
| 20 | 49 | QA | 746 | POTR5 | *Populus tremuloides* | quaking aspen |
| 20 | 50 | BP | 741 | POBA2 | *Populus balsamifera* | balsam poplar |
| 20 | 51 | EC | 742 | PODE3 | *Populus deltoides* | eastern cottonwood |
| 20 | 52 | BT | 743 | POGR4 | *Populus grandidentata* | bigtooth aspen |
| 20 | 53 | PY | 744 | POHE4 | *Populus heterophylla* | swamp cottonwood |
| 21 | 54 | BC | 762 | PRSE2 | *Prunus serotina* | black cherry |
| 22 | 55 | WO | 802 | QUAL | *Quercus alba* | white oak |
| 22 | 56 | BR | 823 | QUMA2 | *Quercus macrocarpa* | bur oak |
| 22 | 57 | CK | 826 | QUMU | *Quercus muehlenbergii* | chinkapin oak |
| 22 | 58 | PO | 835 | QUST | *Quercus stellata* | post oak |
| 22 | 59 | OK | 800 | QUERC | *Quercus* | oak |
| 23 | 60 | SO | 806 | QUCO2 | *Quercus coccinea* | scarlet oak |
| 23 | 61 | QI | 817 | QUIM | *Quercus imbricaria* | shingle oak |
| 23 | 62 | WK | 827 | QUNI | *Quercus nigra* | water oak |
| 23 | 63 | PN | 830 | QUPA2 | *Quercus palustris* | pin oak |
| 24 | 64 | CO | 832 | QUPR2 | *Quercus prinus* | chestnut oak |
| 24 | 65 | SW | 804 | QUBI | *Quercus bicolor* | swamp white oak |
| 24 | 66 | SN | 825 | QUMI | *Quercus michauxii* | swamp chestnut oak |
| 25 | 67 | RO | 833 | QURU | *Quercus rubra* | northern red oak |
| 25 | 68 | SK | 812 | QUFA | *Quercus falcata* | southern red oak |
| 26 | 69 | BO | 837 | QUVE | *Quercus velutina* | black oak |
| 26 | 70 | CB | 813 | QUPA5 | *Quercus pagoda* | cherrybark oak |
| 27 | 72 | BU | 330 | AESCU | *Aesculus* | buckeye |
| 27 | 73 | YY | 332 | AEFL | *Aesculus flava* | yellow buckeye |
| 27 | 74 | WR | 374 | BEOC2 | *Betula occidentalis* | water birch |
| 27 | 75 | HK | 462 | CEOC | *Celtis occidentalis* | common hackberry |
| 27 | 76 | PS | 521 | DIVI5 | *Diospyros virginiana* | common persimmon |
| 27 | 77 | HY | 591 | ILOP | *Ilex opaca* | American holly |
| 27 | 78 | BN | 601 | JUCI | *Juglans cinerea* | butternut |
| 27 | 79 | WN | 602 | JUNI | *Juglans nigra* | black walnut |
| 27 | 80 | OO | 641 | MAPO | *Maclura pomifera* | Osage-orange |
| 27 | 81 | MG | 650 | MAGNO | *Magnolia* | magnolia |
| 27 | 82 | MV | 653 | MAVI2 | *Magnolia virginiana* | sweetbay |
| 27 | 83 | AP | 660 | MALUS | *Malus* | apple |
| 27 | 84 | WT | 691 | NYAQ2 | *Nyssa aquatica* | water tupelo |
| 27 | 85 | BG | 693 | NYSY | *Nyssa sylvatica* | blackgum |
| 27 | 86 | SD | 711 | OXAR | *Oxydendrum arboreum* | sourwood |
| 27 | 87 | PW | 712 | PATO2 | *Paulownia tomentosa* | princesstree |
| 27 | 88 | SY | 731 | PLOC | *Platanus occidentalis* | American sycamore |
| 27 | 89 | WL | 831 | QUPH | *Quercus phellos* | willow oak |
| 27 | 90 | BK | 901 | ROPS | *Robinia pseudoacacia* | black locust |
| 27 | 91 | BL | 922 | SANI | *Salix nigra* | black willow |
| 27 | 92 | SS | 931 | SAAL5 | *Sassafras albidum* | sassafras |
| 27 | 93 | BW | 951 | TIAM | *Tilia americana* | American basswood |
| 27 | 94 | WB | 952 | TIAMH | *Tilia americana* var. *heterophylla* | white basswood4 |
| 27 | 95 | EL | 970 | ULMUS | *Ulmus* | elm |
| 27 | 96 | AE | 972 | ULAM | *Ulmus americana* | American elm |
| 27 | 97 | RL | 975 | ULRU | *Ulmus rubra* | slippery elm |
| 28 | 98 | OH | 998 | 2TB |  | other hardwood3 |
| 28 | 99 | BE | 313 | ACNE2 | *Acer negundo* | boxelder |
| 28 | 100 | ST | 315 | ACPE | *Acer pensylvanicum* | striped maple |
| 28 | 101 | AI | 341 | AIAL | *Ailanthus altissima* | tree of heaven |
| 28 | 102 | SE | 356 | AMELA | *Amelanchier* | serviceberry |
| 28 | 103 | AH | 391 | CACA18 | *Carpinus caroliniana* | American hornbeam |
| 28 | 104 | DW | 491 | COFL2 | *Cornus florida* | flowering dogwood |
| 28 | 105 | HT | 500 | CRATA | *Crataegus* | hawthorn |
| 28 | 106 | HH | 701 | OSVI | *Ostrya virginiana* | hophornbeam |
| 28 | 107 | PL | 760 | PRUNU | *Prunus* | plum |
| 28 | 108 | PR | 761 | PRPE2 | *Prunus pensylvanica* | pin cherry |

1Species numbers 14, 68, and 78 represent removed species groups.

2Set based on the USDA Forest Service NRM TAXA lists and the USDA Plants database.

3Other categories use FIA codes and NRM TAXA codes that best match the other category.

4Common name of white basswood is used to differentiate from American basswood.

## 3.3 Habitat Type, Plant Association, and Ecological Unit Codes

Habitat type, plant association, and ecological unit codes are not used in the NE variant.

## 3.4 Site Index

Site index is used in some of the growth equations in the NE variant. Users should always use the site index curves from Carmean and others (1989) to estimate site index. In assigning site index, users should use site curves based on total age at an index age of 50. If site index is available, a single site index for the whole stand can be entered, a site index for each individual species in the stand can be entered, or a combination of these can be entered. If site index is missing or incorrect, the site species is set to sugar maple with a default site index set to 56. Site indices for other species are then estimated from this sugar maple site index as described below.

Site indices for species not assigned a site index are converted from the site species value using a site index conversion equation from Hilt (1989) and Teck & Fuller (1987) as shown in equation {3.4.1}.

Species are grouped according to similar growth rates and then ranked from fastest to slowest growing; β1 is then looked up in Table 3.4.1. If the site index of the faster growing species is known, the equation can be solved to estimate the site index of the slower growing species.

{3.4.1} *SI(FGS)* = *B1* + 1.104 \* *SI(SGS)*

where:

*SI(FGS)*is site index of the faster growing species

*SI(SGS)* is site index of the slower growing species

*Β1* is a species-specific coefficient shown in table 3.4.1

**Table 3.4.1 Coefficients for converting site index between species groups in the NE variant.**

|  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Site Index Ranking** | **Site**  **Index1** | **Species Group** | **Slower Growing Species Group** | | | | | | | | |
| **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** |
| 1 | 65 | 5,6,7,8,11 |  | -1.240 | -0.136 | 0.986 | 3.176 | 7.592 | 9.8 | 10.904 | 18.632 |
| 2 | 60 | 19,20,21 |  |  | -5.136 | -4.032 | -1.824 | 2.592 | 4.8 | 5.904 | 13.632 |
| 3 | 59 | 18 |  |  |  | -5.032 | -2.824 | 1.592 | 3.8 | 4.904 | 12.632 |
| 4 | 58 | 23,25,26 |  |  |  |  | -3.824 | 0.592 | 2.8 | 3.904 | 11.632 |
| 5 | 56 | 12-17,22,24 |  |  |  |  |  | -1.408 | 0.8 | 1.904 | 9.632 |
| 6 | 52 | 1,10 |  |  |  |  |  |  | -3.2 | -2.096 | 5.632 |
| 7 | 50 | 2,3,4,27 |  |  |  |  |  |  |  | -4.096 | 3.632 |
| 8 | 49 | None in NE |  |  |  |  |  |  |  |  | 2.632 |
| 9 | 42 | 9,28 |  |  |  |  |  |  |  |  |  |

1 Site index values assigned by species group if the default sugar maple site index of 56 is used.

## 3.5 Maximum Density

Maximum stand density index (SDI) and maximum basal area (BA) are important variables in determining density related mortality and crown ratio change. Maximum basal area is a stand level metric that can be set using the BAMAX or SETSITE keywords. If not set by the user, a default value is calculated from maximum stand SDI each projection cycle. Maximum stand density index can be set for each species using the SDIMAX or SETSITE keywords. If not set by the user, a default value is assigned as discussed below.

The default maximum SDI is set by species or a user specified basal area maximum. If a user specified basal area maximum is present, the maximum SDI for all species is computed using equation {3.5.1}; otherwise, species SDI maximums are assigned from the SDI maximums shown in table 3.5.1. Maximum stand density index at the stand level is a weighted average, by basal area proportion, of the individual species SDI maximums.

Stand SDI is calculated using the Zeide calculation method (Dixon 2002).

{3.5.1} *SDIMAXi* = *BAMAX* / (0.5454154 \* *SDIU)*

where:

*SDIMAXi* is species-specific SDI maximum

*BAMAX* is the user-specified stand basal area maximum

*SDIU* is theproportion of theoretical maximum density at which the stand reaches actual maximum density (default 0.85, changed with the SDIMAX keyword)

**Table 3.5.1 Stand density index maximums by species in the NE variant.**

| **Species Code** | **SDI Maximum\*** | **Mapped to** | **Species Code** | **SDI Maximum\*** | **Mapped to** |
| --- | --- | --- | --- | --- | --- |
| BF | 655 |  | WO | 361 |  |
| TA | 387 |  | BR | 423 |  |
| WS | 412 |  | CK | 336 |  |
| RS | 506 |  | PO | 311 |  |
| NS | 412 | white spruce | OK | 361 | white oak |
| BS | 500 |  | SO | 315 |  |
| PI | 412 | white spruce | QI | 370 | black oak |
| RN | 505 |  | WK | 365 |  |
| WP | 529 |  | PN | 455 |  |
| LP | 480 |  | CO | 417 |  |
| VP | 499 |  | SW | 361 | white oak |
| WC | 771 |  | SN | 336 | chestnut oak |
| AW | 771 | northern white-cedar | RO | 414 |  |
| RC | 354 |  | SK | 342 |  |
| JU | 354 | eastern redcedar | BO | 370 |  |
| EH | 510 |  | CB | 405 |  |
| HM | 518 | eastern hemlock | BU | 371 | sugar maple |
| OP | 529 | eastern white pine | YY | 371 | sugar maple |
| JP | 356 |  | WR | 400 | river birch |
| SP | 490 |  | HK | 420 |  |
| TM | 398 | pitch pine | PS | 147 |  |
| PP | 398 |  | HY | 155 |  |
| PD | 310 |  | BN | 283 | black walnut |
| SC | 408 |  | WN | 283 |  |
| OS | 354 | eastern redcedar | OO | 404 |  |
| RM | 421 |  | MG | 492 | sweetbay |
| SM | 371 |  | MV | 492 |  |
| BM | 371 | sugar maple | AP | 422 | eastern redbud |
| SV | 590 |  | WT | 726 |  |
| YB | 369 |  | BG | 430 |  |
| SB | 350 |  | SD | 164 |  |
| RB | 400 |  | PW | 164 | sourwood |
| PB | 466 |  | SY | 499 |  |
| GB | 466 | paper birch | WL | 315 |  |
| HI | 302 | shagbark hickory | BK | 343 |  |
| PH | 276 |  | BL | 447 |  |
| SL | 302 | shagbark hickory | SS | 492 |  |
| SH | 302 |  | BW | 526 |  |
| MH | 230 |  | WB | 526 | American basswood |
| AB | 364 |  | EL | 282 | American elm |
| AS | 414 | green ash | AE | 282 |  |
| WA | 408 |  | RL | 227 |  |
| BA | 423 |  | OH | 257 | flowering dogwood |
| GA | 414 |  | BE | 344 |  |
| PA | 408 | white ash | ST | 243 |  |
| YP | 478 |  | AI | 343 | black locust |
| SU | 430 |  | SE | 657 |  |
| CT | 415 |  | AH | 375 |  |
| QA | 562 |  | DW | 257 |  |
| BP | 384 |  | HT | 463 |  |
| EC | 648 |  | HH | 304 |  |
| BT | 520 |  | PL | 463 | hawthorn |
| PY | 648 | eastern cottonwood | PR | 463 | hawthorn |
| BC | 384 |  |  |  |  |

\*Source of SDI maximums is an unpublished analysis of FIA data by John Shaw.

# 4.0 Growth Relationships

This chapter describes the functional relationships used to fill in missing tree data and calculate incremental growth. In FVS, trees are grown in either the small tree sub-model or the large tree sub-model depending on the diameter.

## 4.1 Height-Diameter Relationships

Height-diameter relationships are used to estimate tree heights missing in the input data and periodic small-tree diameter growth. In the NE variant, height is estimated using either the Curtis-Arney equation (Curtis 1967, Arney 1985) or the Wykoff equation (Wykoff and others 1982). The equation used by default is indicated by a C or W, in the third column of table 4.1.1. By default, the NE variant does not calibrate the height-diameter relationship for estimating missing tree heights based on measured heights in the input data. To override this, the user must use the NOHTDREG keyword and “turn on” calibration. When calibration is turned on, FVS will use the Wykoff equation form with a calibrated B1 value, if there are at least 3 measured heights for that species over 3 inches DBH in the stand.

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

Coefficients for the height-diameter relationships in the NE variant are from three sources. Wykoff and Curtis-Arney coefficients for all species are shown in table 4.1.1. These are used for all forests and species with the exception of certain species on the Allegheny National Forest which are shown in Table 4.1.2. These coefficients are from equations fit to data for the Southern variant of FVS. Species for which there was not enough data to fit these relationships use coefficients from a similar species.

For the Allegheny National Forest, Wykoff coefficients for red maple, sugar maple, yellow birch, American beech, white ash, black cherry, American basswood, and hophornbeam were fit to data presented by Hough (1935) for Allegheny hardwoods. The yellow birch coefficients are also used for sweet birch and paper birch, white ash coefficients are used for ash and green ash, hophornbeam coefficients are used for the “other hardwoods” and serviceberry, and black cherry coefficients are used for pin cherry. Also, Wykoff coefficients for oaks (white, scarlet, chestnut, northern red, and black) were estimated from FIA site index data from a four county area that includes the Allegheny National Forest.

**Table 4.1.1 Coefficients, equation, and surrogate species for height-diameter relationships in the NE variant.**

| **Species Code** | **W or C** | **SN Variant**  **Surrogate / source** | **Curtis-Arney Coefficients** | | | | **Wykoff Coefficients** | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
|
| **P2** | **P3** | **P4** | **Dbw** | **Default B1** | **B2** |
| BF | C | spruce/fir | 2163.9468 | 6.2688 | -0.2161 | 0.1 | 4.5084 | -6.0116 |
| TA | C | spruce/fir | 2163.9468 | 6.2688 | -0.2161 | 0.1 | 4.5084 | -6.0116 |
| WS | C | spruce/fir | 2163.9468 | 6.2688 | -0.2161 | 0.2 | 4.5084 | -6.0116 |
| RS | C | spruce/fir | 2163.9468 | 6.2688 | -0.2161 | 0.2 | 4.5084 | -6.0116 |
| NS | C | spruce/fir | 2163.9468 | 6.2688 | -0.2161 | 0.2 | 4.5084 | -6.0116 |
| BS | C | spruce/fir | 2163.9468 | 6.2688 | -0.2161 | 0.2 | 4.5084 | -6.0116 |
| PI | C | spruce/fir | 2163.9468 | 6.2688 | -0.2161 | 0.2 | 4.5084 | -6.0116 |
| RN | C | hemlock | 266.4562 | 3.9931 | -0.3860 | 0.1 | 4.5084 | -6.0116 |
| WP | C | eastern white pine | 2108.8442 | 5.6595 | -0.1856 | 0.4 | 4.6090 | -6.1896 |
| LP | W | loblolly pine | 243.8606 | 4.2846 | -0.4713 | 0.5 | 4.6897 | -6.8801 |
| VP | W | Virginia pine | 926.1803 | 4.4621 | -0.2005 | 0.5 | 4.4718 | -5.0078 |
| WC | W | spruce/fir | 2163.9468 | 6.2688 | -0.2161 | 0.1 | 4.5084 | -6.0116 |
| AW | W | hemlock | 266.4562 | 3.9931 | -0.3860 | 0.1 | 4.5084 | -6.0116 |
| RC | W | Virginia pine | 926.1803 | 4.4621 | -0.2005 | 0.5 | 4.4718 | -5.0078 |
| JU | W | Virginia pine | 926.1803 | 4.4621 | -0.2005 | 0.5 | 4.4718 | -5.0078 |
| EH | C | hemlock | 266.4562 | 3.9931 | -0.3860 | 0.1 | 4.5084 | -6.0116 |
| HM | W | hemlock | 266.4562 | 3.9931 | -0.3860 | 0.1 | 4.5084 | -6.0116 |
| OP | W | pitch pine | 208.7773 | 3.7281 | -0.4109 | 0.5 | 4.3898 | -5.7183 |
| JP | W | hemlock | 266.4562 | 3.9931 | -0.3860 | 0.1 | 4.5084 | -6.0116 |
| SP | W | shortleaf pine | 444.0922 | 4.1188 | -0.3062 | 0.4 | 4.6271 | -6.4095 |
| TM | W | pitch pine | 208.7773 | 3.7281 | -0.4109 | 0.5 | 4.3898 | -5.7183 |
| PP | C | pitch pine | 208.7773 | 3.7281 | -0.4109 | 0.5 | 4.3898 | -5.7183 |
| PD | W | pond pine | 142.7468 | 3.9726 | -0.5871 | 0.5 | 4.5457 | -6.8000 |
| SC | W | pond pine | 142.7468 | 3.9726 | -0.5871 | 0.5 | 4.5457 | -6.8000 |
| OS | W | juniper species | 212.7933 | 3.4715 | -0.3259 | 0.3 | 4.0374 | -4.2964 |
| RM | W | red maple | 268.5564 | 3.1143 | -0.2941 | 0.2 | 4.3379 | -3.8214 |
| SM | W | sugar maple | 209.8555 | 2.9528 | -0.3679 | 0.2 | 4.4834 | -4.5431 |
| BM | C | sugar maple | 209.8555 | 2.9528 | -0.3679 | 0.2 | 4.4834 | -4.5431 |
| SV | C | silver maple | 80.5118 | 26.9833 | -2.0220 | 0.2 | 4.5991 | -6.6706 |
| YB | W | birch species | 170.5253 | 2.6883 | -0.4008 | 0.1 | 4.4388 | -4.0872 |
| SB | W | sweet birch | 68.9223 | 43.3383 | -2.4445 | 0.1 | 4.4522 | -4.5758 |
| RB | W | birch species | 170.5253 | 2.6883 | -0.4008 | 0.1 | 4.4388 | -4.0872 |
| PB | W | birch species | 170.5253 | 2.6883 | -0.4008 | 0.1 | 4.4388 | -4.0872 |
| GB | W | birch species | 170.5253 | 2.6883 | -0.4008 | 0.1 | 4.4388 | -4.0872 |
| HI | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| PH | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| SL | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| SH | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| MH | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| AB | W | American beech | 526.1393 | 3.8923 | -0.2259 | 0.1 | 4.4772 | -4.7206 |
| AS | W | ash species | 251.4043 | 3.2692 | -0.3591 | 0.2 | 4.4819 | -4.5314 |
| WA | W | white ash | 91.3528 | 6.9961 | -1.2294 | 0.2 | 4.5959 | -6.4497 |
| BA | W | black ash | 178.9308 | 4.9286 | -0.6378 | 0.2 | 4.6155 | -6.2945 |
| GA | W | green ash | 404.9692 | 3.3902 | -0.2551 | 0.2 | 4.6155 | -6.2945 |
| PA | W | ash species | 251.4043 | 3.2692 | -0.3591 | 0.2 | 4.4819 | -4.5314 |
| YP | C | yellow-poplar | 625.7697 | 3.8732 | -0.2335 | 0.2 | 4.6892 | -4.9605 |
| SU | W | sweetgum | 290.9055 | 3.6240 | -0.3720 | 0.2 | 4.5920 | -5.1719 |
| CT | C | cucumbertree | 660.1997 | 3.9208 | -0.2112 | 0.2 | 4.6067 | -5.2030 |
| QA | W | hickory species | 337.6685 | 3.6273 | -0.3208 | 0.3 | 4.5128 | -4.9918 |
| BP | W | white ash | 91.3528 | 6.9961 | -1.2294 | 0.2 | 4.5959 | -6.4497 |
| EC | W | cottonwood species | 190.9797 | 3.6928 | -0.5273 | 0.1 | 4.9396 | -8.1838 |
| BT | W | white ash | 91.3528 | 6.9961 | -1.2294 | 0.2 | 4.5959 | -6.4497 |
| PY | W | white ash | 91.3528 | 6.9961 | -1.2294 | 0.2 | 4.5959 | -6.4497 |
| BC | W | black cherry | 364.0248 | 3.5599 | -0.2726 | 0.1 | 4.3286 | -4.0922 |
| WO | W | white oak | 170.1331 | 3.2782 | -0.4874 | 0.2 | 4.5463 | -5.2287 |
| BR | W | scarlet oak | 196.0565 | 3.0067 | -0.3850 | 0.2 | 4.5225 | -4.9401 |
| CK | W | chinkapin oak | 72.7907 | 3.6707 | -1.0988 | 0.1 | 4.3420 | -5.1193 |
| PO | W | post oak | 765.2908 | 4.2238 | -0.1897 | 0.1 | 4.2496 | -4.8061 |
| OK | W | scarlet oak | 196.0565 | 3.0067 | -0.3850 | 0.2 | 4.5225 | -4.9401 |
| SO | W | scarlet oak | 196.0565 | 3.0067 | -0.3850 | 0.2 | 4.5225 | -4.9401 |
| QI | W | chestnut oak | 94.5447 | 3.4203 | -0.8188 | 0.2 | 4.4618 | -4.8786 |
| WK | W | water oak | 470.0617 | 3.7889 | -0.2512 | 0.1 | 4.5577 | -4.9595 |
| PN | W | scarlet oak | 196.0565 | 3.0067 | -0.3850 | 0.2 | 4.5225 | -4.9401 |
| CO | W | chestnut oak | 94.5447 | 3.4203 | -0.8188 | 0.2 | 4.4618 | -4.8786 |
| SW | W | cherrybark/swamp oak | 182.6306 | 3.1290 | -0.4639 | 0.1 | 4.7342 | -6.2674 |
| SN | W | swamp chestnut oak | 281.3413 | 3.5170 | -0.3336 | 0.2 | 4.6135 | -5.7613 |
| RO | W | northern red oak | 700.0636 | 4.1061 | -0.2139 | 0.2 | 4.5202 | -4.8896 |
| SK | W | southern red oak | 150.4300 | 3.1327 | -0.4993 | 0.1 | 4.5142 | -5.2205 |
| BO | W | black oak | 224.7163 | 3.1165 | -0.3598 | 0.2 | 4.4747 | -4.8698 |
| CB | W | cherrybark/swamp oak | 182.6306 | 3.1290 | -0.4639 | 0.1 | 4.7342 | -6.2674 |
| BU | W | basswood | 293.5715 | 3.5226 | -0.3512 | 0.1 | 4.5820 | -5.0903 |
| YY | W | basswood | 293.5715 | 3.5226 | -0.3512 | 0.1 | 4.5820 | -5.0903 |
| WR | W | birch species | 170.5253 | 2.6883 | -0.4008 | 0.1 | 4.4388 | -4.0872 |
| HK | C | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| PS | W | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| HY | W | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| BN | W | butternut | 285.8798 | 3.5214 | -0.3194 | 0.3 | 4.5018 | -5.6123 |
| WN | W | black walnut | 93.7104 | 3.6575 | -0.8825 | 0.4 | 4.5018 | -5.6123 |
| OO | W | misc. hardwoods | 109.7324 | 2.2503 | -0.4130 | 0.1 | 4.0322 | -3.0833 |
| MG | W | magnolia species | 585.6609 | 3.4197 | -0.1766 | 0.2 | 4.4004 | -4.7519 |
| MV | W | sweetbay | 184.1932 | 2.8457 | -0.3695 | 0.2 | 4.3609 | -4.1423 |
| AP | W | apple species | 574.0201 | 3.8637 | -0.1632 | 0.2 | 3.9678 | -3.2510 |
| WT | W | water tupelo | 163.9728 | 2.7682 | -0.4410 | 0.2 | 4.3330 | -4.5383 |
| BG | C | blackgum | 319.9788 | 3.6731 | -0.3065 | 0.2 | 4.3802 | -4.7903 |
| SD | W | sourwood | 690.4918 | 4.1598 | -0.1861 | 0.2 | 4.1352 | -3.7450 |
| PW | W | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| SY | W | sycamore | 644.3568 | 3.9205 | -0.2144 | 0.1 | 4.6355 | -5.2776 |
| WL | W | cottonwood species | 190.9797 | 3.6928 | -0.5273 | 0.1 | 4.9396 | -8.1838 |
| BK | C | black locust | 880.2845 | 4.5964 | -0.2182 | 0.1 | 4.4299 | -4.9920 |
| BL | W | willow species | 408.2772 | 3.8181 | -0.2721 | 0.1 | 4.4911 | -5.7928 |
| SS | C | sassafras | 755.1038 | 4.3950 | -0.2178 | 0.1 | 4.3383 | -4.5018 |
| BW | W | basswood | 293.5715 | 3.5226 | -0.3512 | 0.1 | 4.5820 | -5.0903 |
| WB | W | basswood | 293.5715 | 3.5226 | -0.3512 | 0.1 | 4.5820 | -5.0903 |
| EL | W | elm species | 1005.8067 | 4.6474 | -0.2034 | 0.1 | 4.3744 | -4.5257 |
| AE | W | American elm | 418.5942 | 3.1704 | -0.1896 | 0.1 | 4.6008 | -7.2732 |
| RL | W | slippery elm | 1337.5472 | 4.4895 | -0.1475 | 0.1 | 4.6238 | -7.4847 |
| OH | W | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| BE | W | butternut | 285.8798 | 3.5214 | -0.3194 | 0.3 | 4.5018 | -5.6123 |
| ST | W | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| AI | W | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| SE | W | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| AH | C | eastern hophornbeam | 109.7324 | 2.2503 | -0.4130 | 0.2 | 4.0322 | -3.0833 |
| DW | W | flowering dogwood | 863.0501 | 4.3856 | -0.1481 | 0.1 | 3.7301 | -2.7758 |
| HT | W | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |
| HH | W | eastern hophornbeam | 109.7324 | 2.2503 | -0.4130 | 0.2 | 4.0322 | -3.0833 |
| PL | W | apple species | 574.0201 | 3.8637 | -0.1632 | 0.2 | 3.9678 | -3.2510 |
| PR | W | hackberry species | 484.7530 | 3.9393 | -0.2600 | 0.1 | 4.4207 | -5.1435 |

**Table 4.1.2 Coefficients for Wykoff height-diameter relationship fit for the Allegheny National Forest in the NE variant.**

| **SpeciesCode** | **Surrogate**  **Species** | **Wykoff Coefficients** | |
| --- | --- | --- | --- |
| **B1** | **B2** |
| RM |  | 4.6839 | -4.9622 |
| SM |  | 4.6354 | -4.7168 |
| YB |  | 4.4635 | -3.6456 |
| SB | YB | 4.4635 | -3.6456 |
| PB | YB | 4.4635 | -3.6456 |
| AB |  | 4.5497 | -4.6727 |
| AS | WA | 4.6804 | -4.5561 |
| WA |  | 4.6804 | -4.5561 |
| GA | WA | 4.6804 | -4.5561 |
| BC |  | 4.7614 | -5.3776 |
| WO |  | 4.9100 | -7.2941 |
| SO |  | 4.9100 | -7.2941 |
| CO |  | 4.9100 | -7.2941 |
| RO |  | 4.9100 | -7.2941 |
| BO |  | 4.9100 | -7.2941 |
| BW |  | 4.6855 | -4.8690 |
| SE | HH | 4.4393 | -4.0711 |
| HH |  | 4.4393 | -4.0711 |
| PR | BC | 4.7614 | -5.3776 |

## 4.2 Bark Ratio Relationships

Bark ratio estimates are used to convert between diameter outside bark and diameter inside bark in various parts of the model. The equation is shown in equation {4.2.1} and the appropriate bark ratios by species group are given in Table 4.2.1 The bark ratio values in the NE variant are from three sources. Those for red maple, sugar maple, hickory, American beech, ash, yellow-poplar, black cherry, white oak, scarlet oak, chestnut oak, red oak, black oak, commercial and non-commercial hardwoods are from Hilt (1985); the value for yellow birch is from Martin (1981); and values for balsam-fir and red spruce were calculated from stand data collected by Dale Solomon in 1977 in Northern Maine and Northern New Hampshire. The yellow birch value is also used for paper birch. For other species, surrogate values from species with similar bark attributes were used.

{4.2.1} *DIB* = *BRATIO* \* *DOB*

where:

*BRATIO* is species-specific bark ratio

*DIB* is tree diameter inside bark at breast height

*DOB* is tree diameter outside bark at breast height

**Table 4.2.1 Bark ratios by species groups for the NE variant.**

|  |  |
| --- | --- |
| **Species Group** | **Bark Ratio** |
| 1, 2 | 0.9349 |
| 3 | 0.956 |
| 4 | 0.9324 |
| 5, 6, 13 | 0.920 |
| 7 | 0.890 |
| 8, 11 | 0.964 |
| 9, 12, 17 | 0.950 |
| 10 | 0.934 |
| 14, 15 | 0.948 |
| 16, 18, 19, 20, 23, 25, 26, 27, 28 | 0.900 |
| 21 | 0.940 |
| 22 | 0.910 |
| 24 | 0.880 |

## 4.3 Crown Ratio Relationships

Crown ratio equations are used for three purposes in FVS: (1) to estimate tree crown ratios missing from the input data for both live and dead trees; (2) to estimate change in crown ratio from cycle to cycle for live trees; and (3) to estimate initial crown ratios for regenerating trees established during a simulation.

### 4.3.1 Crown Ratio Dubbing

In the NE variant, crown ratios missing in the input data, for both live and dead trees, are predicted using equation {4.3.1.1} by Holdaway (1986) with coefficients for this equation shown in table 4.3.1.1.

{4.3.1.1} *CR* = 10 \* (b1 / (1 + b2 \* *BA*) + (b3 \* (1 – exp(b4 \* *DBH*))))

where:

*CR* is crown ratio expressed as a percent

*BA* is total stand basal area

*DBH* is tree diameter at breast height

b1 – b4 are species-specific coefficients shown in table 4.3.1.1

**Table 4.3.1.1 Coefficients of the crown ratio equation {4.3.1.1} in the NE variant.**

| **Species Group** | **b1** | **b2** | **b3** | **b4** |
| --- | --- | --- | --- | --- |
| 1 | 5.630 | 0.0047 | 3.523 | -0.0689 |
| 2 | 6.000 | 0.0053 | 0.431 | -0.0012 |
| 3 | 7.840 | 0.0057 | 1.272 | -0.1420 |
| 4, 5 | 5.540 | 0.0072 | 4.200 | -0.0530 |
| 6 | 6.640 | 0.0135 | 3.200 | -0.0518 |
| 7 | 5.350 | 0.0053 | 1.528 | -0.0330 |
| 8 | 6.790 | 0.0058 | 7.590 | -0.0103 |
| 9, 10 | 5.710 | 0.0077 | 2.290 | -0.2530 |
| 11 | 4.350 | 0.0046 | 1.820 | -0.2740 |
| 12 | 3.400 | 0.0066 | 2.870 | -0.4340 |
| 13, 14 | 4.180 | 0.0025 | 1.410 | -0.5120 |
| 15 | 5.000 | 0.0066 | 4.920 | -0.0263 |
| 16, 23, 27, 28 | 4.000 | 0.0024 | -2.830 | 0.0210 |
| 17 | 6.210 | 0.0073 | 9.990 | -0.0100 |
| 18, 19, 21, 24 | 3.733 | 0.0040 | 3.632 | -0.0412 |
| 20 | 4.500 | 0.0032 | 0.795 | -0.1050 |
| 22 | 4.110 | 0.0054 | 1.650 | -0.1100 |
| 25 | 5.840 | 0.0082 | 3.260 | -0.0490 |
| 26 | 4.200 | 0.0016 | 2.760 | -0.0250 |

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

The NE variant calculates the maximum crown width for each individual tree based on individual tree and stand attributes. Crown width for each tree is reported in the tree list output table and used to calculate percent canopy cover (*PCC*) and crown competition factor (CCF) within the model. When available, forest-grown maximum crown width equations are used to compute *PCC* and open-grown maximum crown width equations are used to compute *CCF*.

The NE variant computes tree crown width using equations {4.4.1} through {4.4.5}. Species equation assignment and coefficients are shown in tables 4.4.1 and 4.4.2 for forest- and open-grown equations, respectively. Equations are numbered via the FIA species code and equation number, i.e. the forest grown equation from Bechtold (2003) assigned to Eastern white pine has the number: 12901.

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

**Table 4.4.1. Crown width equation assignment and coefficients for forest-grown trees in the NE variant.**

| **Species Code** | **Equation Number1** | **a1** | **a2** | **a3** | **a4** | **a5** | **Limits and**  **Bounds** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| BF | 01201 | 0.6564 | 0.8403 |  | 0.0792 |  | FCW <u><</u> 34 |
| TA | 07101 | -0.3276 | 1.3865 |  | 0.0517 |  | FCW <u><</u> 29 |
| WS | 09401 | 0.3789 | 0.8658 |  | 0.0878 |  | FCW <u><</u> 30 |
| RS | 09701 | -1.2151 | 1.6098 | -0.0277 | 0.0674 | -0.0474 | DBH <u><</u> 30 |
| NS | 09101 | 1.8336 | 0.9932 |  | 0.0431 | 0.1012 | FCW <u><</u> 27 |
| BS | 09501 | -0.8566 | 0.9693 |  | 0.0573 |  | FCW <u><</u> 27 |
| PI | 09401 | 0.3789 | 0.8658 |  | 0.0878 |  | FCW <u><</u> 30 |
| RN | 12501 | -3.6548 | 1.9565 | -0.0409 | 0.0577 |  | DBH <u><</u> 24 |
| WP | 12901 | 0.3914 | 0.9923 |  | 0.1080 |  | FCW <u><</u> 45 |
| LP | 13101 | -0.8277 | 1.3946 |  | 0.0768 |  | FCW <u><</u> 55 |
| VP | 13201 | -0.1211 | 1.2319 |  | 0.1212 |  | FCW <u><</u> 34 |
| WC | 24101 | -0.0634 | 0.7057 |  | 0.0837 |  | FCW <u><</u> 27 |
| AW | 24101 | -0.0634 | 0.7057 |  | 0.0837 |  | FCW <u><</u> 27 |
| RC | 06801 | 1.2359 | 1.2962 |  | 0.0545 |  | FCW <u><</u> 33 |
| JU | 06801 | 1.2359 | 1.2962 |  | 0.0545 |  | FCW <u><</u> 33 |
| EH | 26101 | 6.1924 | 1.4491 | -0.0178 |  | 0.0341 | DBH <u><</u> 40 |
| HM | 26101 | 6.1924 | 1.4491 | -0.0178 |  | 0.0341 | DBH <u><</u> 40 |
| OP | 12901 | 0.3914 | 0.9923 |  | 0.1080 |  | FCW <u><</u> 45 |
| JP | 10501 | 0.7478 | 0.8712 |  | 0.0913 |  | FCW <u><</u> 25 |
| SP | 11001 | -2.2564 | 1.3004 |  | 0.1031 | -0.0562 | FCW <u><</u> 34 |
| TM | 12601 | -0.9442 | 1.4531 |  | 0.0543 | -0.1144 | FCW <u><</u> 34 |
| PP | 12601 | -0.9442 | 1.4531 |  | 0.0543 | -0.1144 | FCW <u><</u> 34 |
| PD | 12801 | -8.7711 | 3.7252 | -0.1063 |  |  | DBH <u><</u> 18 |
| SC | 13001 | 3.5522 | 0.6742 |  | 0.0985 |  | FCW <u><</u> 27 |
| OS | 06801 | 1.2359 | 1.2962 |  | 0.0545 |  | FCW <u><</u> 33 |
| RM | 31601 | 2.7563 | 1.4212 | -0.0143 | 0.0993 | -0.0276 | DBH <u><</u> 50 |
| SM | 31801 | 4.9399 | 1.0727 |  | 0.1096 | -0.0493 | FCW <u><</u> 54 |
| BM | 31801 | 4.9399 | 1.0727 |  | 0.1096 | -0.0493 | FCW <u><</u> 54 |
| SV | 31701 | 3.3576 | 1.1312 |  | 0.1011 | -0.1730 | FCW <u><</u> 45 |
| YB | 37101 | -1.1151 | 2.2888 | -0.0493 | 0.0985 | -0.0396 | DBH <u><</u> 30 |
| SB | 37201 | 4.6725 | 1.2968 |  | 0.0787 |  | FCW <u><</u> 54 |
| RB | 37301 | 11.6634 | 1.0028 |  |  |  | FCW <u><</u> 68 |
| PB | 37501 | 2.8399 | 1.2398 |  | 0.0855 | -0.0282 | FCW <u><</u> 42 |
| GB | 37501 | 2.8399 | 1.2398 |  | 0.0855 | -0.0282 | FCW <u><</u> 42 |
| HI | 40701 | 4.5453 | 1.3721 |  | 0.0430 |  | FCW <u><</u> 54 |
| PH | 40301 | 3.9234 | 1.5220 |  | 0.0405 |  | FCW <u><</u> 53 |
| SL | 40701 | 4.5453 | 1.3721 |  | 0.0430 |  | FCW <u><</u> 54 |
| SH | 40701 | 4.5453 | 1.3721 |  | 0.0430 |  | FCW <u><</u> 54 |
| MH | 40901 | 1.5838 | 1.6318 |  | 0.0721 |  | FCW <u><</u> 55 |
| AB | 53101 | 3.9361 | 1.1500 |  | 0.1237 | -0.0691 | FCW <u><</u> 80 |
| AS | 54401 | 2.9672 | 1.3066 |  | 0.0585 |  | FCW <u><</u> 61 |
| WA | 54101 | 1.7625 | 1.3413 |  | 0.0957 |  | FCW <u><</u> 62 |
| BA | 54301 | 5.2824 | 1.1184 |  |  |  | FCW <u><</u> 34 |
| GA | 54401 | 2.9672 | 1.3066 |  | 0.0585 |  | FCW <u><</u> 61 |
| PA | 54101 | 1.7625 | 1.3413 |  | 0.0957 |  | FCW <u><</u> 62 |
| YP | 62101 | 3.3543 | 1.1627 |  | 0.0857 |  | FCW <u><</u> 61 |
| SU | 61101 | 1.8853 | 1.1625 |  | 0.0656 | -0.0300 | FCW <u><</u> 50 |
| CT | 65101 | 4.1711 | 1.6275 |  |  |  | FCW <u><</u> 39 |
| QA | 74601 | 0.7315 | 1.3180 |  | 0.0966 |  | FCW <u><</u> 39 |
| BP | 74101 | 6.2498 | 0.8655 |  |  |  | FCW <u><</u> 25 |
| EC | 74201 | 3.4375 | 1.4092 |  |  |  | FCW <u><</u> 80 |
| BT | 74301 | 0.6847 | 1.1050 |  | 0.1420 | -0.0265 | FCW <u><</u> 43 |
| PY | 74201 | 3.4375 | 1.4092 |  |  |  | FCW <u><</u> 80 |
| BC | 76201 | 3.0237 | 1.1119 |  | 0.1112 | -0.0493 | FCW <u><</u> 52 |
| WO | 80201 | 3.2375 | 1.5234 |  | 0.0455 | -0.0324 | FCW <u><</u> 69 |
| BR | 82301 | 1.7827 | 1.6549 |  | 0.0343 |  | FCW <u><</u> 61 |
| CK | 82601 | 0.5189 | 1.4134 |  | 0.1365 | -0.0806 | FCW <u><</u> 45 |
| PO | 83501 | 1.6125 | 1.6669 |  | 0.0536 |  | FCW <u><</u> 45 |
| OK | 80201 | 3.2375 | 1.5234 |  | 0.0455 | -0.0324 | FCW <u><</u> 69 |
| SO | 80601 | 0.5656 | 1.6766 |  | 0.0739 |  | FCW <u><</u> 66 |
| QI | 81701 | 9.8187 | 1.1343 |  |  |  | FCW <u><</u> 54 |
| WK | 82701 | 1.6349 | 1.5443 |  | 0.0637 | -0.0764 | FCW <u><</u> 57 |
| NP | 80901 | 4.8935 | 1.6069 |  |  |  | FCW <u><</u> 44 |
| CO | 83201 | 2.1480 | 1.6928 | -0.0176 | 0.0569 |  | DBH <u><</u> 50 |
| SW | 80201 | 3.2375 | 1.5234 |  | 0.0455 | -0.0324 | FCW <u><</u> 69 |
| SN | 83201 | 2.1480 | 1.6928 | -0.0176 | 0.0569 |  | DBH <u><</u> 50 |
| RO | 83301 | 2.8908 | 1.4077 |  | 0.0643 |  | FCW <u><</u> 82 |
| SK | 81201 | 2.1517 | 1.6064 |  | 0.0609 |  | FCW <u><</u> 56 |
| BO | 83701 | 2.8974 | 1.3697 |  | 0.0671 |  | FCW <u><</u> 52 |
| CB | 81201 | 2.1517 | 1.6064 |  | 0.0609 |  | FCW <u><</u> 56 |
| BU | 40701 | 4.5453 | 1.3721 |  | 0.0430 |  | FCW <u><</u> 54 |
| YY | 40701 | 4.5453 | 1.3721 |  | 0.0430 |  | FCW <u><</u> 54 |
| WR | 37301 | 11.6634 | 1.0028 |  |  |  | FCW <u><</u> 68 |
| HK | 46201 | 7.1043 | 1.3041 |  | 0.0456 |  | FCW <u><</u> 51 |
| PS | 52101 | 3.5393 | 1.3939 |  | 0.0625 |  | FCW <u><</u> 36 |
| HY | 59101 | 4.5803 | 1.0747 |  | 0.0661 |  | FCW <u><</u> 31 |
| BN | 60201 | 3.6031 | 1.1472 |  | 0.1224 |  | FCW <u><</u> 37 |
| WN | 60201 | 3.6031 | 1.1472 |  | 0.1224 |  | FCW <u><</u> 37 |
| OO | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | FCW <u><</u> 29 |
| MG | 65301 | 8.2119 | 0.9708 |  |  |  | FCW <u><</u> 41 |
| MV | 65301 | 8.2119 | 0.9708 |  |  |  | FCW <u><</u> 41 |
| AP | 76102 | 4.1027 | 1.3960 | 1.0775 |  |  | FCW <u><</u> 52 |
| WT | 69101 | 5.3409 | 0.7499 |  | 0.1047 |  | FCW <u><</u> 37 |
| BG | 69301 | 5.5037 | 1.0567 |  | 0.0880 | 0.0610 | FCW <u><</u> 50 |
| SD | 71101 | 7.9750 | 0.8303 |  | 0.0423 | -0.0706 | DBH <u><</u> 36 |
| PW | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | FCW <u><</u> 29 |
| SY | 73101 | -1.3973 | 1.3756 |  | 0.1835 |  | FCW <u><</u> 66 |
| WL | 83101 | 1.6477 | 1.3672 |  | 0.0846 |  | FCW <u><</u> 74 |
| BK | 90101 | 3.0012 | 0.8165 |  | 0.1395 |  | FCW <u><</u> 48 |
| BL | 97201 | 1.7296 | 2.0732 |  | 0.0590 | -0.0869 | DBH <u><</u> 50 |
| SS | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | FCW <u><</u> 29 |
| BW | 95101 | 1.6871 | 1.2110 |  | 0.1194 | -0.0264 | FCW <u><</u> 61 |
| WB | 95101 | 1.6871 | 1.2110 |  | 0.1194 | -0.0264 | FCW <u><</u> 61 |
| EL | 97201 | 1.7296 | 2.0732 |  | 0.0590 | -0.0869 | FCW <u><</u> 50 |
| AE | 97201 | 1.7296 | 2.0732 |  | 0.0590 | -0.0869 | FCW <u><</u> 50 |
| RL | 97501 | 9.0023 | 1.3933 |  |  | -0.0785 | FCW <u><</u> 49 |
| OH | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | FCW <u><</u> 29 |
| BE | 31301 | 6.4741 | 1.0778 |  | 0.0719 | -0.0637 | FCW <u><</u> 57 |
| ST | 31301 | 6.4741 | 1.0778 |  | 0.0719 | -0.0637 | FCW <u><</u> 57 |
| AI | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| SE | 35601 | 6.9814 | 1.6032 |  |  |  | FCW <u><</u> 27 |
| AH | 39101 | 0.9219 | 1.6303 |  | 0.1150 | -0.1113 | FCW <u><</u> 42 |
| DW | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| HT | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| HH | 70101 | 7.8084 | 0.8129 |  | 0.0941 | -0.0817 | FCW <u><</u> 39 |
| PL | 76102 | 4.1027 | 1.3960 | 1.0775 |  |  | FCW <u><</u> 52 |
| PR | 76102 | 4.1027 | 1.3960 | 1.0775 |  |  | FCW <u><</u> 52 |

1 Equation number is a combination of the species FIA code (###) and source (##), see equations on previous page. Maximum crown widths and DBH have been assigned to prevent poor behavior beyond the source data.

**Table 4.4.2. Crown width equation assignment and coefficients for open-grown trees for the NE variant.**

| **Species Code** | **Equation Number1** | **a1** | **a2** | **a3** | **a4** | **a5** | **Limits and**  **Bounds** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| BF | 01203 | 0.3270 | 5.1160 | 0.5035 |  |  | FCW <u><</u> 34 |
| TA | 07103 | 2.2050 | 3.4750 | 0.7506 |  |  | FCW <u><</u> 29 |
| WS | 09403 | 3.5940 | 1.9630 | 0.8820 |  |  | FCW <u><</u> 37 |
| RS | 09701 | -1.2151 | 1.6098 | -0.0277 | 0.0674 | -0.0474 | DBH <u><</u> 30 |
| NS | 09104 | 5.0570 | 1.1313 |  |  |  | FCW <u><</u> 47 |
| BS | 09503 | 3.6550 | 1.3980 | 1.0000 |  |  | FCW <u><</u> 27 |
| PI | 09403 | 3.5940 | 1.9630 | 0.8820 |  |  | FCW <u><</u> 37 |
| RN | 12503 | 4.2330 | 1.4620 | 1.0000 |  |  | FCW <u><</u> 39 |
| WP | 12903 | 1.6200 | 3.1970 | 0.7981 |  |  | FCW <u><</u> 58 |
| LP | 13105 | 0.7380 | 0.2450 | 0.000809 |  |  | FCW <u><</u> 66 |
| VP | 13201 | -0.1211 | 1.2319 |  | 0.1212 |  | FCW <u><</u> 34 |
| WC | 24101 | -0.0634 | 0.7057 |  | 0.0837 |  | FCW <u><</u> 27 |
| AW | 24101 | -0.0634 | 0.7057 |  | 0.0837 |  | FCW <u><</u> 27 |
| RC | 06801 | 1.2359 | 1.2962 |  | 0.0545 |  | FCW <u><</u> 33 |
| JU | 06801 | 1.2359 | 1.2962 |  | 0.0545 |  | FCW <u><</u> 33 |
| EH | 26101 | 6.1924 | 1.4491 | -0.0178 |  | -0.0341 | DBH <u><</u> 40 |
| HM | 26101 | 6.1924 | 1.4491 | -0.0178 |  | -0.0341 | DBH <u><</u> 40 |
| OP | 12903 | 1.6200 | 3.1970 | 0.7981 |  |  | FCW <u><</u> 58 |
| JP | 10503 | 0.2990 | 5.6440 | 0.6036 |  |  | FCW <u><</u> 30 |
| SP | 11005 | 0.5830 | 0.2450 | 0.0009 |  |  | FCW <u><</u> 45 |
| TM | 12601 | -0.9442 | 1.4531 |  | 0.0543 | -0.1144 | FCW <u><</u> 34 |
| PP | 12601 | -0.9442 | 1.4531 |  | 0.0543 | -0.1144 | FCW <u><</u> 34 |
| PD | 12801 | -8.7711 | 3.7252 | -0.1063 |  |  | DBH <u><</u> 18 |
| SC | 13001 | 3.5522 | 0.6742 |  | 0.0985 |  | FCW <u><</u> 27 |
| OS | 06801 | 1.2359 | 1.2962 |  | 0.0545 |  | FCW <u><</u> 33 |
| RM | 31603 |  | 4.7760 | 0.7656 |  |  | FCW <u><</u> 55 |
| SM | 31803 | 0.8680 | 4.1500 | 0.7514 |  |  | FCW <u><</u> 54 |
| BM | 31803 | 0.8680 | 4.1500 | 0.7514 |  |  | FCW <u><</u> 54 |
| SV | 31701 | 3.3576 | 1.1312 |  | 0.1011 | -0.1730 | FCW <u><</u> 45 |
| YB | 37101 | -1.1151 | 2.2888 | -0.0493 | 0.0985 | -0.0396 | DBH <u><</u> 24 |
| SB | 37201 | 4.6725 | 1.2968 |  | 0.0787 |  | FCW <u><</u> 54 |
| RB | 37301 | 11.6634 | 1.0028 |  |  |  | FCW <u><</u> 68 |
| PB | 37503 | 3.6390 | 1.9530 | 1.0000 |  |  | FCW <u><</u> 42 |
| GB | 37503 | 3.6390 | 1.9530 | 1.0000 |  |  | FCW <u><</u> 42 |
| HI | 40703 | 2.3600 | 3.5480 | 0.7986 |  |  | FCW <u><</u> 54 |
| PH | 40301 | 3.9234 | 1.5220 |  | 0.0405 |  | FCW <u><</u> 53 |
| SL | 40703 | 2.3600 | 3.5480 | 0.7986 |  |  | FCW <u><</u> 54 |
| SH | 40703 | 2.3600 | 3.5480 | 0.7986 |  |  | FCW <u><</u> 54 |
| MH | 40901 | 1.5838 | 1.6318 |  | 0.0721 |  | FCW <u><</u> 55 |
| AB | 53101 | 3.9361 | 1.1500 |  | 0.1237 | -0.0691 | FCW <u><</u> 80 |
| AS | 54403 |  | 4.7550 | 0.7381 |  |  | FCW <u><</u> 61 |
| WA | 54101 | 1.7625 | 1.3413 |  | 0.0957 |  | FCW <u><</u> 62 |
| BA | 54301 | 5.2824 | 1.1184 |  |  |  | FCW <u><</u> 34 |
| GA | 54403 |  | 4.7550 | 0.7381 |  |  | FCW <u><</u> 61 |
| PA | 54101 | 1.7625 | 1.3413 |  | 0.0957 |  | FCW <u><</u> 62 |
| YP | 62101 | 3.3543 | 1.1627 |  | 0.0857 |  | FCW <u><</u> 61 |
| SU | 61101 | 1.8853 | 1.1625 |  | 0.0656 | -0.0300 | FCW <u><</u> 50 |
| CT | 65101 | 4.1711 | 1.6275 |  |  |  | FCW <u><</u> 39 |
| QA | 74603 | 4.2030 | 2.1290 | 1.0000 |  |  | FCW <u><</u> 43 |
| BP | 74101 | 6.2498 | 0.8655 |  |  |  | FCW <u><</u> 25 |
| EC | 74203 | 2.9340 | 2.5380 | 0.8617 |  |  | FCW <u><</u> 80 |
| BT | 74301 | 0.6847 | 1.1050 |  | 0.1420 | -0.0265 | FCW <u><</u> 43 |
| PY | 74203 | 2.9340 | 2.5380 | 0.8617 |  |  | FCW <u><</u> 80 |
| BC | 76203 | 0.6210 | 7.0590 | 0.5441 |  |  | FCW <u><</u> 52 |
| WO | 80204 | 1.8000 | 1.8830 |  |  |  | FCW <u><</u> 69 |
| BR | 82303 | 0.9420 | 3.5390 | 0.7952 |  |  | FCW <u><</u> 78 |
| CK | 82601 | 0.5189 | 1.4134 |  | 0.1365 | -0.0806 | FCW <u><</u> 45 |
| PO | 83501 | 1.6125 | 1.6669 |  | 0.0536 |  | FCW <u><</u> 45 |
| OK | 80204 | 1.8000 | 1.8830 |  |  |  | FCW <u><</u> 69 |
| SO | 80601 | 0.5656 | 1.6766 |  | 0.0739 |  | FCW <u><</u> 66 |
| QI | 81701 | 9.8187 | 1.1343 |  |  |  | FCW <u><</u> 54 |
| WK | 82701 | 1.6349 | 1.5443 |  | 0.0637 | -0.0764 | FCW <u><</u> 57 |
| NP | 80901 | 4.8935 | 1.6069 |  |  |  | FCW <u><</u> 44 |
| CO | 83201 | 2.1480 | 1.6928 | -0.0176 | 0.0569 |  | DBH <u><</u> 50 |
| SW | 80204 | 1.8000 | 1.8830 |  |  |  | FCW <u><</u> 69 |
| SN | 83201 | 2.1480 | 1.6928 | -0.0176 | 0.0569 |  | DBH <u><</u> 50 |
| RO | 83303 | 2.8500 | 3.7820 | 0.7968 |  |  | FCW <u><</u> 82 |
| SK | 81201 | 2.1517 | 1.6064 |  | 0.0609 |  | FCW <u><</u> 56 |
| BO | 83704 | 4.5100 | 1.6700 |  |  |  | FCW <u><</u> 52 |
| CB | 81201 | 2.1517 | 1.6064 |  | 0.0609 |  | FCW <u><</u> 56 |
| BU | 40703 | 2.3600 | 3.5480 | 0.7986 |  |  | DBH <u><</u> 54 |
| YY | 40703 | 2.3600 | 3.5480 | 0.7986 |  |  | FCW <u><</u> 54 |
| WR | 37301 | 11.6634 | 1.0028 |  |  |  | FCW <u><</u> 68 |
| HK | 46201 | 7.1043 | 1.3041 |  | 0.0456 |  | FCW <u><</u> 51 |
| PS | 52101 | 3.5393 | 1.3939 |  | 0.0625 |  | FCW <u><</u> 36 |
| HY | 59101 | 4.5803 | 1.0747 |  | 0.0661 |  | FCW <u><</u> 31 |
| BN | 60201 | 3.6031 | 1.1472 |  | 0.1224 |  | FCW <u><</u> 37 |
| WN | 60201 | 3.6031 | 1.1472 |  | 0.1224 |  | FCW <u><</u> 37 |
| OO | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | FCW <u><</u> 29 |
| MG | 65301 | 8.2119 | 0.9708 |  |  |  | FCW <u><</u> 41 |
| MV | 65301 | 8.2119 | 0.9708 |  |  |  | FCW <u><</u> 41 |
| AP | 76102 | 4.1027 | 1.3960 | 1.0775 |  |  | FCW <u><</u> 52 |
| WT | 69101 | 5.3409 | 0.7499 |  | 0.1047 |  | FCW <u><</u> 37 |
| BG | 69301 | 5.5037 | 1.0567 |  | 0.0880 | 0.0610 | FCW <u><</u> 50 |
| SD | 71101 | 7.9750 | 0.8303 |  | 0.0423 | -0.0706 | FCW <u><</u> 36 |
| PW | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | FCW <u><</u> 29 |
| SY | 73101 | -1.3973 | 1.3756 |  | 0.1835 |  | FCW <u><</u> 66 |
| WL | 83101 | 1.6477 | 1.3672 |  | 0.0846 |  | FCW <u><</u> 74 |
| BK | 90101 | 3.0012 | 0.8165 |  | 0.1395 |  | FCW <u><</u> 48 |
| BL | 97203 | 2.8290 | 3.4560 | 0.8575 |  |  | FCW <u><</u> 72 |
| SS | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | FCW <u><</u> 29 |
| BW | 95101 | 1.6871 | 1.2110 |  | 0.1194 | -0.0264 | FCW <u><</u> 61 |
| WB | 95101 | 1.6871 | 1.2110 |  | 0.1194 | -0.0264 | FCW <u><</u> 61 |
| EL | 97203 | 2.8290 | 3.4560 | 0.8575 |  |  | FCW <u><</u> 72 |
| AE | 97203 | 2.8290 | 3.4560 | 0.8575 |  |  | FCW <u><</u> 72 |
| RL | 97501 | 9.0023 | 1.3933 |  |  | -0.0785 | FCW <u><</u> 49 |
| OH | 93101 | 4.6311 | 1.0108 |  | 0.0564 |  | FCW <u><</u> 29 |
| NC | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| BE | 31301 | 6.4741 | 1.0778 |  | 0.0719 | -0.0637 | FCW <u><</u> 57 |
| ST | 31301 | 6.4741 | 1.0778 |  | 0.0719 | -0.0637 | FCW <u><</u> 57 |
| AI | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| SE | 35601 | 6.9814 | 1.6032 |  |  |  | FCW <u><</u> 27 |
| AH | 39101 | 0.9219 | 1.6303 |  | 0.1150 | -0.1113 | FCW <u><</u> 42 |
| DW | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| HT | 49101 | 2.9646 | 1.9917 |  | 0.0707 |  | FCW <u><</u> 36 |
| HH | 70101 | 7.8084 | 0.8129 |  | 0.0941 | -0.0817 | FCW <u><</u> 39 |
| PL | 76102 | 4.1027 | 1.3960 | 1.0775 |  |  | FCW <u><</u> 52 |
| PR | 76102 | 4.1027 | 1.3960 | 1.0775 |  |  | FCW <u><</u> 52 |

1 Equation number is a combination of the species FIA code (###) and source (##), see equations on previous page. Maximum crown widths and DBH have been assigned to prevent poor behavior beyond the source data.

## 4.5 Crown Competition Factor

The NE variant uses crown competition factor (*CCF*) as a predictor variable in some growth relationships. Crown competition factor (Krajicek and others 1961) is a relative measurement of stand density that is based on tree diameters. Individual tree *CCFt* values estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open-grown. Stand *CCF* is the summation of individual tree (*CCFt*)values. A stand *CCF* value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand. In the NE variant, crown competition factor for an individual tree is calculated using equation {4.5.1}, and is based on crown width of open-grown trees.

{4.5.1} All species

*DBH* > 0.1”: *CCFt* = 0.001803 \* *OCWt^*2

*DBH* <u><</u> 0.1”: *CCFt* = 0.001

where:

*CCFt* is crown competition factor for an individual tree

*OCWt* is open-grown crown width for an individual tree

*DBH* is tree diameter at breast height

## 4.6 Small Tree Growth Relationships

Trees are considered “small trees” for FVS modeling purposes when they are smaller than some threshold diameter. This threshold diameter is set to 5.0” for all species in the NE variant.

The small tree model is height growth driven, meaning height growth is estimated first and diameter growth is estimated from height growth. These relationships are discussed in the following sections.

FVS blends small tree growth estimates with large tree growth estimates to assure a smooth transition between the two models. In the NE variant both height growth and diameter growth estimates use this blending technique. Small and large tree estimates are weighted over the diameter range 1.5”-5.0” *DBH* for all species. The weight is calculated using equation {4.6.1} and applied as shown in equation {4.6.2}.

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

Trees are considered “large trees” for FVS modeling purposes when they are equal to, or larger than, some threshold diameter. This threshold diameter is set to 5.0” for all species in the NE variant.

The large-tree model is driven by diameter growth meaning diameter growth is estimated first, and then height growth is estimated from diameter growth and other variables. These relationships are discussed in the following sections.

### 4.7.1 Large Tree Diameter Growth

The large tree diameter growth model used in most FVS variants is described in section 7.2.1 in Dixon (2002). For most variants, instead of predicting diameter increment directly, the natural log of the periodic change in squared inside-bark diameter (ln(DDS)) is predicted (Dixon 2002; Wykoff 1990; Stage 1973; and Cole and Stage 1972). For variants predicting diameter increment directly, diameter increment is converted to the DDS scale to keep the FVS system consistent across all variants.

The large tree diameter growth model is adapted from Teck and Hilt (1991), which was used in the NE-TWIGS model. Potential annual basal area growth is computed using equation {4.7.1.1} and then, a modifier value based on basal area in trees at least as large as two 1-inch diameter classes below the subject tree is computed using equation {4.7.1.2}. Estimated annual basal area growth is given as the product of these two values as shown in equation {4.7.1.3}. Coefficients for these equations are given in table 4.7.1.1.

{4.7.1.1} *POTBAG* = B1\* *SI* \* (1 – exp (-B2\* *DBH*)) \* 0.7

{4.7.1.2} *GMOD* = exp(-B3 \* *BAL*)

{4.7.1.3} *ABAG* = *POTBAG* \* *GMOD*

where:

*POTBAG* is potential basal area growth

*SI* is species site index

*DBH* is tree diameter at breast height

*GMOD* is a growth modifier (bounded to 0.5 <u><</u> *GMOD*)

*BAL* is basal area in trees two 1-inch diameter classes below the subject tree and larger

*ABAG* is estimated annual basal area growth

B1 – B3 are species-specific coefficients

**Table 4.7.1.1. Coefficients (B1 – B3) for the large tree diameter growth model in the NE variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Group** | **B1** | **B2** | **B3** |
| 1 | 0.0008829 | 0.0602785 | 0.012785 |
| 2 | 0.0009933 | 0.0816995 | 0.018831 |
| 3 | 0.0008721 | 0.0578650 | 0.013427 |
| 4 | 0.0008236 | 0.0549439 | 0.011942 |
| 5, 7 | 0.0009252 | 0.1134195 | 0.017300 |
| 6 | 0.0011303 | 0.0934796 | 0.015496 |
| 8, 11 | 0.0006634 | 0.1083470 | 0.016835 |
| 9 | 0.0009050 | 0.0517297 | 0.012329 |
| 10 | 0.0008737 | 0.0940538 | 0.009149 |
| 12 | 0.0007906 | 0.0651982 | 0.016191 |
| 13 | 0.0007439 | 0.0706905 | 0.016240 |
| 14 | 0.0006668 | 0.0768212 | 0.019046 |
| 15 | 0.0009766 | 0.0832328 | 0.023978 |
| 16 | 0.0007993 | 0.0779654 | 0.015963 |
| 17 | 0.0006911 | 0.0730441 | 0.013029 |
| 18 | 0.0008992 | 0.0925395 | 0.015004 |
| 19 | 0.0008815 | 0.1419212 | 0.019904 |
| 20 | 0.0011885 | 0.0920050 | 0.016877 |
| 21 | 0.0007929 | 0.1568904 | 0.016537 |
| 22 | 0.0007417 | 0.0867535 | 0.014235 |
| 23 | 0.0008769 | 0.0866621 | 0.018560 |
| 24 | 0.0008238 | 0.0790660 | 0.013762 |
| 25 | 0.0008920 | 0.0979702 | 0.018024 |
| 26 | 0.0008550 | 0.0957964 | 0.020843 |
| 27 | 0.0009567 | 0.1038458 | 0.020653 |
| 28 | 0.0003604 | 0.0328767 | 0.011620 |

Basal area growth is then added to current tree basal area, and converted to a new tree diameter. These steps of calculating an estimated annual basal growth and calculating a new tree diameter are repeated for 10 years. Estimated 10-year diameter growth is then calculated as the difference between the estimated new diameter resulting from this iteration process, and the beginning of cycle tree diameter, adjusted for bark ratio. This is converted to a natural logarithm of basal area increment scale for application of calculated scale values, input user multipliers, and adjustment for cycle lengths other than 10-years.

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

Potential height growth gets modified by a combination of two factors. One factor is the same modifier, GMOD, calculated using equation {4.7.1.2} and applied to large-tree diameter growth. The other is a function of individual tree height relative to the average height of the 40-largest diameter trees in the stand. The potential height growth modifier is shown in equation {4.7.2.3}, and the resulting height growth estimate is shown in equation {4.7.2.4}. Estimated height growth is then adjusted for cycle length and user-supplied growth multipliers.

{4.7.2.3} *MOD* = [1 – ((1 – *GMOD*) \* (1 – *RELHT*))] \* 0.8

{4.7.2.4} *HTG* = *POTHTG* \* *PHMOD*

where:

*POTHTG* is potential height growth

*H10* is estimated height of the tree in ten years

*HT* is tree height

*PHMOD* is a height growth modifier

*GMOD* is a growth modifier (bounded to 0.5 <u><</u> *GMOD*; calculated in section 4.7.1)

*RELHT* is tree height divided by average height of the 40 largest diameter trees in the stand

*HTG* is estimated height growth for the cycle

**Table 4.7.2.1 Coefficients for the height growth equation by species group in the NE variant.**

| **Species Code** | **Carmean et al Figure** | **b1** | **b2** | **b3** | **b4** | **b5** | **b6** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| BF | 55 | 2.0770 | 0.9303 | -0.0285 | 2.8937 | -0.1414 | 0.0 |
| TA | 59 | 1.1151 | 1.0000 | -0.0504 | 1.3076 | 0.0009 | 0.0 |
| WS | 68 | 1.3342 | 1.0008 | -0.0401 | 1.8068 | 0.0248 | 0.0 |
| RS | 73 | 1.3307 | 1.0442 | -0.0496 | 3.5829 | 0.0945 | 0.0 |
| NS | 63 | 6.7791 | 0.6876 | -0.0280 | 12.1447 | -0.4142 | 0.0 |
| BS | 70 | 1.7620 | 1.0000 | -0.0201 | 1.2307 | 0.0000 | 0.0 |
| PI | 73 | 1.3307 | 1.0442 | -0.0496 | 3.5829 | 0.0945 | 0.0 |
| RN | 95 | 1.8900 | 1.0000 | -0.0198 | 1.3892 | 0.0000 | 0.0 |
| WP | 104 | 3.2425 | 0.7980 | -0.0435 | 52.0549 | -0.7064 | 0.0 |
| LP | 110 | 1.1421 | 1.0042 | -0.0374 | 0.7632 | 0.0358 | 0.0 |
| VP | 125 | 0.7716 | 1.1087 | -0.0348 | 0.1099 | 0.5274 | 0.0 |
| WC | 126 | 1.9730 | 1.0000 | -0.0154 | 1.0895 | 0.0000 | 0.0 |
| AW | 57 | 1.5341 | 1.0013 | -0.0208 | 0.9986 | -0.0012 | 0.0 |
| RC | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| JU | 126 | 1.9730 | 1.0000 | -0.0154 | 1.0895 | 0.0000 | 0.0 |
| EH | 127 | 2.1493 | 0.9979 | -0.0175 | 1.4086 | -0.0008 | 0.0 |
| HM | 127 | 2.1493 | 0.9979 | -0.0175 | 1.4086 | -0.0008 | 0.0 |
| OP | 95 | 1.8900 | 1.0000 | -0.0198 | 1.3892 | 0.0000 | 0.0 |
| JP | 74 | 1.6330 | 1.0000 | -0.0223 | 1.2419 | 0.0000 | 0.0 |
| SP | 78 | 1.4232 | 0.9989 | -0.0285 | 1.2156 | 0.0088 | 0.0 |
| TM | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| PP | 125 | 0.7716 | 1.1087 | -0.0348 | 0.1099 | 0.5274 | 0.0 |
| PD | 102 | 1.1266 | 1.0051 | -0.0367 | 0.6780 | 0.0404 | 0.0 |
| SC | 108 | 1.2096 | 1.0027 | -0.0671 | 1.2282 | 0.0335 | 0.0 |
| OS | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| RM | 1 | 2.9435 | 0.9132 | -0.0141 | 1.6580 | -0.1095 | 0.0 |
| SM | 2 | 3.3721 | 0.8407 | -0.0150 | 2.6208 | -0.2661 | 0.0 |
| BM | 2 | 3.3721 | 0.8407 | -0.0150 | 2.6208 | -0.2661 | 0.0 |
| SV | 4 | 1.0645 | 0.9918 | -0.0812 | 1.5754 | -0.0272 | 0.0 |
| YB | 5 | 2.2835 | 0.9794 | -0.0054 | 0.5819 | -0.0281 | 0.0 |
| SB | 5 | 2.2835 | 0.9794 | -0.0054 | 0.5819 | -0.0281 | 0.0 |
| RB | 5 | 2.2835 | 0.9794 | -0.0054 | 0.5819 | -0.0281 | 0.0 |
| PB | 8 | 1.7902 | 0.9522 | -0.0173 | 1.1668 | -0.1206 | 0.0 |
| GB | 5 | 2.2835 | 0.9794 | -0.0054 | 0.5819 | -0.0281 | 0.0 |
| HI | 10 | 1.8326 | 1.0015 | -0.0207 | 1.4080 | -0.0005 | 0.0 |
| PH | 10 | 1.8326 | 1.0015 | -0.0207 | 1.4080 | -0.0005 | 0.0 |
| SL | 10 | 1.8326 | 1.0015 | -0.0207 | 1.4080 | -0.0005 | 0.0 |
| SH | 10 | 1.8326 | 1.0015 | -0.0207 | 1.4080 | -0.0005 | 0.0 |
| MH | 10 | 1.8326 | 1.0015 | -0.0207 | 1.4080 | -0.0005 | 0.0 |
| AB | 11 | 29.7300 | 0.3631 | -0.0127 | 16.7616 | -0.6804 | 0.0 |
| AS | 12 | 1.5768 | 0.9978 | -0.0156 | 0.6705 | 0.0182 | 0.0 |
| WA | 12 | 1.5768 | 0.9978 | -0.0156 | 0.6705 | 0.0182 | 0.0 |
| BA | 14 | 4.2286 | 0.7857 | -0.0178 | 4.6219 | -0.3591 | 0.0 |
| GA | 15 | 1.6505 | 0.9096 | -0.0644 | 125.7045 | -0.8908 | 0.0 |
| PA | 15 | 1.6505 | 0.9096 | -0.0644 | 125.7045 | -0.8908 | 0.0 |
| YP | 25 | 1.2941 | 0.9892 | -0.0315 | 1.0481 | -0.0368 | 0.0 |
| SU | 19 | 1.5932 | 1.0124 | -0.0122 | 0.6245 | 0.0130 | 0.0 |
| CT | 25 | 1.2941 | 0.9892 | -0.0315 | 1.0481 | -0.0368 | 0.0 |
| QA | 32 | 5.2188 | 0.6855 | -0.0301 | 50.0071 | -0.8695 | 0.0 |
| BP | 25 | 1.2941 | 0.9892 | -0.0315 | 1.0481 | -0.0368 | 0.0 |
| EC | 28 | 1.3615 | 0.9813 | -0.0675 | 1.5494 | -0.0767 | 0.0 |
| BT | 32 | 5.2188 | 0.6855 | -0.0301 | 50.0071 | -0.8695 | 0.0 |
| PY | 30 | 1.2834 | 0.9571 | -0.0680 | 100.0000 | -0.9223 | 0.0 |
| BC | 35 | 7.1846 | 0.6781 | -0.0222 | 13.9186 | -0.5268 | 0.0 |
| WO | 41 | 4.5598 | 0.8136 | -0.0132 | 2.2410 | -0.1880 | 0.0 |
| BR | 36 | 2.1037 | 0.9140 | -0.0275 | 3.7962 | -0.2530 | 0.0 |
| CK | 36 | 2.1037 | 0.9140 | -0.0275 | 3.7962 | -0.2530 | 0.0 |
| PO | 36 | 2.1037 | 0.9140 | -0.0275 | 3.7962 | -0.2530 | 0.0 |
| OK | 36 | 2.1037 | 0.9140 | -0.0275 | 3.7962 | -0.2530 | 0.0 |
| SO | 42 | 1.6763 | 0.9837 | -0.0220 | 0.9949 | 0.0240 | 0.0 |
| QI | 36 | 2.1037 | 0.9140 | -0.0275 | 3.7962 | -0.2530 | 0.0 |
| WK | 44 | 1.3466 | 0.9590 | -0.0574 | 8.9538 | -0.3454 | 0.0 |
| PN | 36 | 2.1037 | 0.9140 | -0.0275 | 3.7962 | -0.2530 | 0.0 |
| CO | 46 | 1.9044 | 0.9752 | -0.0162 | 0.9262 | 0.0000 | 0.0 |
| SW | 44 | 1.3466 | 0.9590 | -0.0574 | 8.9538 | -0.3454 | 0.0 |
| SN | 44 | 1.3466 | 0.9590 | -0.0574 | 8.9538 | -0.3454 | 0.0 |
| RO | 38 | 0.4737 | 1.2905 | -0.0236 | 0.0979 | 0.6121 | 0.0 |
| SK | 37 | 1.2866 | 0.9962 | -0.0355 | 1.4485 | -0.0316 | 0.0 |
| BO | 49 | 2.9989 | 0.8435 | -0.0200 | 3.4635 | -0.3020 | 0.0 |
| CB | 43 | 1.0945 | 0.9938 | -0.0755 | 2.5601 | 0.0114 | 0.0 |
| BU | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| YY | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| WR | 5 | 2.2835 | 0.9794 | -0.0054 | 0.5819 | -0.0281 | 0.0 |
| HK | 19 | 1.5932 | 1.0124 | -0.0122 | 0.6245 | 0.0130 | 0.0 |
| PS | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| HY | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| BN | 16 | 1.2898 | 0.9982 | -0.0289 | 0.8546 | 0.0171 | 0.0 |
| WN | 16 | 1.2898 | 0.9982 | -0.0289 | 0.8546 | 0.0171 | 0.0 |
| OO | 50 | 0.9680 | 1.0301 | -0.0468 | 0.1639 | 0.4127 | 0.0 |
| MG | 27 | 1.3213 | 0.9995 | -0.0254 | 0.8549 | -0.0016 | 0.0 |
| MV | 27 | 1.3213 | 0.9995 | -0.0254 | 0.8549 | -0.0016 | 0.0 |
| AP | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| WT | 26 | 1.2721 | 0.9995 | -0.0256 | 0.7447 | -0.0019 | 0.0 |
| BG | 27 | 1.3213 | 0.9995 | -0.0254 | 0.8549 | -0.0016 | 0.0 |
| SD | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| PW | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| SY | 25 | 1.2941 | 0.9892 | -0.0315 | 1.0481 | -0.0368 | 0.0 |
| WL | 36 | 2.1037 | 0.9140 | -0.0275 | 3.7962 | -0.2530 | 0.0 |
| BK | 50 | 0.9680 | 1.0301 | -0.0468 | 0.1639 | 0.4127 | 0.0 |
| BL | 50 | 0.9680 | 1.0301 | -0.0468 | 0.1639 | 0.4127 | 0.0 |
| SS | 50 | 0.9680 | 1.0301 | -0.0468 | 0.1639 | 0.4127 | 0.0 |
| BW | 51 | 4.7633 | 0.7576 | -0.0194 | 6.5110 | -0.4156 | 0.0 |
| WB | 51 | 4.7633 | 0.7576 | -0.0194 | 6.5110 | -0.4156 | 0.0 |
| EL | 53 | 6.4362 | 0.6827 | -0.0194 | 10.9767 | -0.5477 | 0.0 |
| AE | 53 | 6.4362 | 0.6827 | -0.0194 | 10.9767 | -0.5477 | 0.0 |
| RL | 53 | 6.4362 | 0.6827 | -0.0194 | 10.9767 | -0.5477 | 0.0 |
| OH | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| BE | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| ST | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| AI | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| SE | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| AH | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| DW | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| HT | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| HH | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| PL | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |
| PR | 58 | 0.9276 | 1.0591 | -0.0424 | 0.3529 | 0.3114 | 0.0 |

# 5.0 Mortality Model

The NE variant uses an SDI-based mortality model as described in Section 7.3.2 of Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002, referred to as EFVS). This SDI-based mortality model is comprised of two steps: 1) determining the amount of stand mortality (section 7.3.2.1 of EFVS) and 2) dispersing stand mortality to individual tree records (section7.3.2.2 of EFVS). In determining the amount of stand mortality, the summation of individual tree background mortality rates is used when stand density is below the minimum level for density dependent mortality (default is 55% of maximum SDI), while stand level density-related mortality rates are used when stands are above this minimum level.

The equation used to calculate individual tree background mortality rates for all species is shown in equation {5.0.1}, and this is then adjusted to the length of the cycle by using a compound interest formula as shown in equation {5.0.2}. Coefficients for these equations are shown in table 5.0.1. The overall amount of mortality calculated for the stand is the summation of the final mortality rate (*RIP*) across all live tree records.

{5.0.1} RI = [1 / (1 + exp(p0 + p1 \* DBH))] \* 0.5

{5.0.2} RIP = 1 – (1 – RI*)*^Y

where:

RI is the proportion of the tree record attributed to mortality

RIP is the final mortality rate adjusted to the length of the cycle

DBH is tree diameter at breast height

Y is length of the current projection cycle in years

p0 and p1 are species-specific coefficients shown in table 5.0.1

**Table 5.0.1 Coefficients used in the background mortality equation {5.0.1} in the NE variant.**

| **Species Code** | **p0** | **p1** |
| --- | --- | --- |
| BF | 5.1676998 | -0.0077681 |
| TA | 5.1676998 | -0.0077681 |
| WS | 5.1676998 | -0.0077681 |
| RS | 5.1676998 | -0.0077681 |
| NS | 5.1676998 | -0.0077681 |
| BS | 5.1676998 | -0.0077681 |
| PI | 5.1676998 | -0.0077681 |
| RN | 5.1676998 | -0.0077681 |
| WP | 5.5876999 | -0.0053480 |
| LP | 5.5876999 | -0.0053480 |
| VP | 5.5876999 | -0.0053480 |
| WC | 5.1676998 | -0.0077681 |
| AW | 5.1676998 | -0.0077681 |
| RC | 5.5876999 | -0.0053480 |
| JU | 5.5876999 | -0.0053480 |
| EH | 5.1676998 | -0.0077681 |
| HM | 5.1676998 | -0.0077681 |
| OP | 5.5876999 | -0.0053480 |
| JP | 5.1676998 | -0.0077681 |
| SP | 5.5876999 | -0.0053480 |
| TM | 5.5876999 | -0.0053480 |
| PP | 5.5876999 | -0.0053480 |
| PD | 5.5876999 | -0.0053480 |
| SC | 5.5876999 | -0.0053480 |
| OS | 9.6942997 | -0.0127328 |
| RM | 5.1676998 | -0.0077681 |
| SM | 5.1676998 | -0.0077681 |
| BM | 5.1676998 | -0.0077681 |
| SV | 5.1676998 | -0.0077681 |
| YB | 5.9617000 | -0.0340128 |
| SB | 5.1676998 | -0.0077681 |
| RB | 5.9617000 | -0.0340128 |
| PB | 5.9617000 | -0.0340128 |
| GB | 5.9617000 | -0.0340128 |
| HI | 5.9617000 | -0.0340128 |
| PH | 5.9617000 | -0.0340128 |
| SL | 5.9617000 | -0.0340128 |
| SH | 5.9617000 | -0.0340128 |
| MH | 5.9617000 | -0.0340128 |
| AB | 5.1676998 | -0.0077681 |
| AS | 5.1676998 | -0.0077681 |
| WA | 5.9617000 | -0.0340128 |
| BA | 5.9617000 | -0.0340128 |
| GA | 5.1676998 | -0.0077681 |
| PA | 5.1676998 | -0.0077681 |
| YP | 5.9617000 | -0.0340128 |
| SU | 5.9617000 | -0.0340128 |
| CT | 5.9617000 | -0.0340128 |
| QA | 5.9617000 | -0.0340128 |
| BP | 5.9617000 | -0.0340128 |
| EC | 5.9617000 | -0.0340128 |
| BT | 5.9617000 | -0.0340128 |
| PY | 5.9617000 | -0.0340128 |
| BC | 5.9617000 | -0.0340128 |
| WO | 5.9617000 | -0.0340128 |
| BR | 5.9617000 | -0.0340128 |
| CK | 5.9617000 | -0.0340128 |
| PO | 5.9617000 | -0.0340128 |
| OK | 5.9617000 | -0.0340128 |
| SO | 5.9617000 | -0.0340128 |
| QI | 5.9617000 | -0.0340128 |
| WK | 5.9617000 | -0.0340128 |
| PN | 5.9617000 | -0.0340128 |
| CO | 5.9617000 | -0.0340128 |
| SW | 5.9617000 | -0.0340128 |
| SN | 5.9617000 | -0.0340128 |
| RO | 5.9617000 | -0.0340128 |
| SK | 5.9617000 | -0.0340128 |
| BO | 5.9617000 | -0.0340128 |
| CB | 5.9617000 | -0.0340128 |
| BU | 5.1676998 | -0.0077681 |
| YY | 5.1676998 | -0.0077681 |
| WR | 5.9617000 | -0.0340128 |
| HK | 5.9617000 | -0.0340128 |
| PS | 5.9617000 | -0.0340128 |
| HY | 5.9617000 | -0.0340128 |
| BN | 5.9617000 | -0.0340128 |
| WN | 5.9617000 | -0.0340128 |
| OO | 5.9617000 | -0.0340128 |
| MG | 5.1676998 | -0.0077681 |
| MV | 5.9617000 | -0.0340128 |
| AP | 5.9617000 | -0.0340128 |
| WT | 5.9617000 | -0.0340128 |
| BG | 5.1676998 | -0.0077681 |
| SD | 5.1676998 | -0.0077681 |
| PW | 5.9617000 | -0.0340128 |
| SY | 5.9617000 | -0.0340128 |
| WL | 5.9617000 | -0.0340128 |
| BK | 5.1676998 | -0.0077681 |
| BL | 5.1676998 | -0.0077681 |
| SS | 5.1676998 | -0.0077681 |
| BW | 5.1676998 | -0.0077681 |
| WB | 5.1676998 | -0.0077681 |
| EL | 5.1676998 | -0.0077681 |
| AE | 5.1676998 | -0.0077681 |
| RL | 5.1676998 | -0.0077681 |
| OH | 5.9617000 | -0.0340128 |
| BE | 5.9617000 | -0.0340128 |
| ST | 5.9617000 | -0.0340128 |
| AI | 5.9617000 | -0.0340128 |
| SE | 5.9617000 | -0.0340128 |
| AH | 5.1676998 | -0.0077681 |
| DW | 5.1676998 | -0.0077681 |
| HT | 5.9617000 | -0.0340128 |
| HH | 5.1676998 | -0.0077681 |
| PL | 5.9617000 | -0.0340128 |
| PR | 5.9617000 | -0.0340128 |

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

**Table 5.0.2 MWT** **values for the mortality equation {5.0.4} in the NE variant.**

| **Species Code** | ***MWT*** | **Species Code** | ***MWT*** |
| --- | --- | --- | --- |
| BF | 0.90 | WO | 0.50 |
| TA | 0.10 | BR | 0.50 |
| WS | 0.50 | CK | 0.30 |
| RS | 0.80 | PO | 0.30 |
| NS | 0.50 | OK | 0.30 |
| BS | 0.70 | SO | 0.10 |
| PI | 0.50 | QI | 0.30 |
| RN | 0.30 | WK | 0.30 |
| WP | 0.50 | PN | 0.30 |
| LP | 0.30 | CO | 0.50 |
| VP | 0.30 | SW | 0.50 |
| WC | 0.70 | SN | 0.30 |
| AW | 0.50 | RO | 0.50 |
| RC | 0.20 | SK | 0.50 |
| JU | 0.50 | BO | 0.50 |
| EH | 0.70 | CB | 0.30 |
| HM | 0.90 | BU | 0.70 |
| OP | 0.30 | YY | 0.70 |
| JP | 0.30 | WR | 0.30 |
| SP | 0.30 | HK | 0.50 |
| TM | 0.30 | PS | 0.90 |
| PP | 0.30 | HY | 0.90 |
| PD | 0.30 | BN | 0.30 |
| SC | 0.30 | WN | 0.30 |
| OS | 0.30 | OO | 0.30 |
| RM | 0.85 | MG | 0.70 |
| SM | 0.90 | MV | 0.50 |
| BM | 0.10 | AP | 0.40 |
| SV | 0.70 | WT | 0.30 |
| YB | 0.50 | BG | 0.30 |
| SB | 0.30 | SD | 0.70 |
| RB | 0.30 | PW | 0.30 |
| PB | 0.30 | SY | 0.50 |
| GB | 0.30 | WL | 0.30 |
| HI | 0.50 | BK | 0.10 |
| PH | 0.50 | BL | 0.10 |
| SL | 0.90 | SS | 0.30 |
| SH | 0.50 | BW | 0.70 |
| MH | 0.30 | WB | 0.70 |
| AB | 0.70 | EL | 0.50 |
| AS | 0.30 | AE | 0.50 |
| WA | 0.30 | RL | 0.70 |
| BA | 0.30 | OH | 0.30 |
| GA | 0.70 | BE | 0.70 |
| PA | 0.50 | ST | 0.90 |
| YP | 0.30 | AI | 0.30 |
| SU | 0.30 | SE | 0.50 |
| CT | 0.50 | AH | 0.90 |
| QA | 0.10 | DW | 0.90 |
| BP | 0.10 | HT | 0.30 |
| EC | 0.10 | HH | 0.70 |
| BT | 0.10 | PL | 0.30 |
| PY | 0.30 | PR | 0.10 |
| BC | 0.40 |  |  |

# 6.0 Regeneration

The NE variant contains a partial establishment model which may be used to input regeneration and ingrowth into simulations. A more detailed description of how the partial establishment model works can be found in section 5.4.5 of the Essential FVS Guide (Dixon 2002).

The regeneration model is used to simulate stand establishment from bare ground, or to bring seedlings and sprouts into a simulation with existing trees. Sprouts are automatically added to the simulation following harvest or burning of known sprouting species (see table 6.0.1 for sprouting species).

**Table 6.0.1 Regeneration parameters by species in the NE variant.**

| **Species Code** | **Sprouting Species** | **Minimum Bud Width (in)** | **Minimum Tree Height (ft)** | **Maximum Tree Height (ft)** |
| --- | --- | --- | --- | --- |
| BF | No | 0.1 | 0.33 | 20.0 |
| TA | No | 0.1 | 0.50 | 24.0 |
| WS | No | 0.2 | 0.25 | 18.0 |
| RS | No | 0.2 | 0.25 | 16.0 |
| NS | No | 0.2 | 0.25 | 18.0 |
| BS | No | 0.2 | 0.25 | 16.0 |
| PI | No | 0.2 | 0.25 | 16.0 |
| RN | No | 0.1 | 0.25 | 18.0 |
| WP | No | 0.4 | 0.33 | 20.0 |
| LP | No | 0.5 | 0.25 | 14.0 |
| VP | No | 0.5 | 0.42 | 14.0 |
| WC | No | 0.1 | 0.33 | 16.0 |
| AW | No | 0.1 | 0.33 | 16.0 |
| RC | No | 0.5 | 0.33 | 16.0 |
| JU | No | 0.5 | 0.33 | 16.0 |
| EH | No | 0.1 | 0.25 | 16.0 |
| HM | No | 0.1 | 0.25 | 16.0 |
| OP | No | 0.5 | 0.25 | 16.0 |
| JP | No | 0.1 | 0.33 | 14.0 |
| SP | Yes | 0.4 | 0.25 | 14.0 |
| TM | No | 0.5 | 0.25 | 16.0 |
| PP | No | 0.5 | 0.42 | 18.0 |
| PD | No | 0.5 | 0.25 | 12.0 |
| SC | No | 0.5 | 0.33 | 20.0 |
| OS | No | 0.3 | 0.25 | 16.0 |
| RM | Yes | 0.2 | 1.00 | 20.0 |
| SM | Yes | 0.2 | 0.25 | 16.0 |
| BM | Yes | 0.2 | 0.25 | 16.0 |
| SV | Yes | 0.2 | 0.42 | 18.0 |
| YB | Yes | 0.1 | 0.42 | 22.0 |
| SB | Yes | 0.1 | 0.42 | 20.0 |
| RB | Yes | 0.1 | 0.33 | 18.0 |
| PB | Yes | 0.1 | 0.42 | 18.0 |
| GB | Yes | 0.1 | 0.42 | 18.0 |
| HI | Yes | 0.3 | 0.33 | 14.0 |
| PH | Yes | 0.3 | 0.33 | 14.0 |
| SL | Yes | 0.3 | 0.33 | 14.0 |
| SH | Yes | 0.3 | 0.33 | 14.0 |
| MH | Yes | 0.3 | 0.33 | 18.0 |
| AB | Yes | 0.1 | 0.25 | 14.0 |
| AS | Yes | 0.2 | 0.42 | 24.0 |
| WA | Yes | 0.2 | 0.42 | 24.0 |
| BA | Yes | 0.2 | 0.33 | 18.0 |
| GA | Yes | 0.2 | 0.42 | 24.0 |
| PA | Yes | 0.2 | 0.42 | 28.0 |
| YP | Yes | 0.2 | 0.42 | 24.0 |
| SU | Yes | 0.2 | 0.33 | 18.0 |
| CT | Yes | 0.2 | 0.33 | 20.0 |
| QA | Yes | 0.3 | 0.42 | 20.0 |
| BP | Yes | 0.2 | 0.42 | 24.0 |
| EC | Yes | 0.1 | 0.42 | 24.0 |
| BT | Yes | 0.2 | 0.42 | 20.0 |
| PY | Yes | 0.2 | 0.42 | 20.0 |
| BC | Yes | 0.1 | 0.42 | 26.0 |
| WO | Yes | 0.2 | 0.33 | 16.0 |
| BR | Yes | 0.2 | 0.25 | 14.0 |
| CK | Yes | 0.1 | 0.33 | 12.0 |
| PO | Yes | 0.1 | 0.25 | 12.0 |
| OK | Yes | 0.2 | 0.33 | 16.0 |
| SO | Yes | 0.2 | 0.33 | 16.0 |
| QI | Yes | 0.2 | 0.25 | 14.0 |
| WK | Yes | 0.1 | 0.33 | 16.0 |
| PN | Yes | 0.2 | 0.25 | 14.0 |
| CO | Yes | 0.2 | 0.33 | 16.0 |
| SW | Yes | 0.1 | 0.33 | 16.0 |
| SN | Yes | 0.2 | 0.33 | 12.0 |
| RO | Yes | 0.2 | 0.42 | 20.0 |
| SK | Yes | 0.1 | 0.33 | 16.0 |
| BO | Yes | 0.2 | 0.33 | 16.0 |
| CB | Yes | 0.1 | 0.33 | 14.0 |
| BU | Yes | 0.1 | 0.25 | 12.0 |
| YY | Yes | 0.1 | 0.25 | 12.0 |
| WR | Yes | 0.1 | 0.25 | 12.0 |
| HK | Yes | 0.1 | 0.25 | 12.0 |
| PS | Yes | 0.1 | 0.25 | 12.0 |
| HY | Yes | 0.1 | 0.25 | 12.0 |
| BN | Yes | 0.3 | 0.33 | 18.0 |
| WN | Yes | 0.4 | 0.33 | 20.0 |
| OO | Yes | 0.1 | 0.25 | 12.0 |
| MG | Yes | 0.2 | 0.42 | 20.0 |
| MV | Yes | 0.2 | 0.42 | 20.0 |
| AP | Yes | 0.2 | 0.42 | 20.0 |
| WT | Yes | 0.2 | 0.33 | 20.0 |
| BG | Yes | 0.2 | 0.33 | 16.0 |
| SD | Yes | 0.2 | 0.33 | 16.0 |
| PW | Yes | 0.1 | 0.33 | 16.0 |
| SY | Yes | 0.1 | 0.58 | 24.0 |
| WL | Yes | 0.1 | 0.25 | 14.0 |
| BK | Yes | 0.1 | 0.58 | 24.0 |
| BL | Yes | 0.1 | 1.00 | 32.0 |
| SS | Yes | 0.1 | 0.50 | 18.0 |
| BW | Yes | 0.1 | 0.33 | 16.0 |
| WB | Yes | 0.1 | 0.33 | 16.0 |
| EL | Yes | 0.1 | 0.33 | 16.0 |
| AE | Yes | 0.1 | 0.33 | 16.0 |
| RL | Yes | 0.1 | 0.33 | 12.0 |
| OH | No | 0.1 | 0.33 | 10.0 |
| BE | Yes | 0.3 | 0.33 | 16.0 |
| ST | Yes | 0.1 | 0.25 | 18.0 |
| AI | Yes | 0.1 | 1.00 | 30.0 |
| SE | Yes | 0.1 | 0.42 | 20.0 |
| AH | Yes | 0.2 | 0.42 | 20.0 |
| DW | Yes | 0.1 | 0.25 | 18.0 |
| HT | Yes | 0.1 | 0.25 | 16.0 |
| HH | Yes | 0.2 | 0.42 | 20.0 |
| PL | Yes | 0.2 | 0.33 | 20.0 |
| PR | Yes | 0.1 | 0.33 | 30.0 |

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

{6.0.8} *PS =* (1 / (1 + exp(-(2.7386 + (-0.1076 \* *DSTMPi*)))))

{6.0.9} *PS =* (1 / (1 + exp(-(-2.8058 + 22.6839 \* (1 / ((*DSTMPi* / 0.7788) - 0.4403))))))

{6.0.10} *PS =* (*TPAi* / (*ASTPAR* \* 2)) \* ((*ASBAR* / 198) \* (40100.45 - 3574.02 \* *RSHAG*^2 + 554.02 \* *RSHAG*^3 - 3.5208 \* *RSHAG*^5 + 0.011797 \* *RSHAG*^7))

{6.0.11} *PS =* ((89.191 - 2.611 \* *DSTMPi*) / 100)

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

**Table 6.0.2 Sprouting algorithm parameters for sprouting species in the NE variant.**

| **Species Code** | **Sprouting Probability** | **Number of Sprout Records** | **Source\*** |
| --- | --- | --- | --- |
| SP | 0.42 for DBH < 7”,  0 for DBH > 7” | 1, 0 | Wayne Clatterbuck (personal communication)  Ag. Handbook 654 |
| RM | 0.8 for DBH < 12”,  0.5 for DBH > 12” | {6.0.1} | Solomon and Barton 1967  Prager and Goldsmith 1977 |
| SM | {6.0.11} | {6.0.1} | MacDonald and Powell 1983  Ag. Handbook 654 |
| BM | {6.0.11} | {6.0.1} | Tirmenstein 1991 |
| SV | 0.8 for DBH < 12”,  0.5 for DBH > 12” | {6.0.1} | Ag. Handbook 654 |
| YB | 0.3 | 1 | Solomon and Barton 1967  Perala 1974 |
| SB | 0.7 | 1 | Ag. Handbook 654 |
| RB | 0.7 | 1 | Sullivan 1993 |
| PB | 0.9 | 1 | Hutnik and Cunningham 1965  Bjorkbom 1972 |
| GB | 0.7 | 1 | Coladonato 1992 |
| HI | 0.95 for DBH < 24",  0.6 for DBH > 24" | 1 | Ag. Handbook 654 |
| PH | 0.75 for DBH < 24",  0.5 for DBH > 24" | 1 | Ag. Handbook 654 |
| SL | 0.75 for DBH < 24",  0.5 for DBH > 24" | 1 | Ag. Handbook 654 |
| SH | 0.95 for DBH < 24",  0.6 for DBH > 24" | 1 | Nelson 1965 |
| MH | 0.95 for DBH < 24",  0.6 for DBH > 24" | 1 | Nelson 1965 |
| AB | 0.93 | {6.0.2} | Keyser and Loftis 2015 |
| AS | 0.8 for DBH < 12",  0.5 for DBH > 12" | 1 | Ag. Handbook 654 |
| WA | 0.8 for DBH < 12",  0.5 for DBH > 12" | 1 | Ag. Handbook 654 |
| BA | 0.8 for DBH < 12",  0.5 for DBH > 12" | {6.0.1} | Curtis 1959  Lees and West 1988 |
| GA | 0.8 for DBH < 12",  0.5 for DBH > 12" | 1 | Ag. Handbook 654 |
| PA | 0.8 for DBH < 12",  0.5 for DBH > 12" | {6.0.1} | Ag. Handbook 654 |
| YP | 0.8 for DBH < 25",  0.5 for DBH > 25" | {6.0.2} | Ag. Handbook 654 |
| SU | 0.7 | 1 | Coladonato 1992  Ag. Handbook 654 |
| CT | 0.7 | 1 | Ag. Handbook 654 |
| QA | {6.0.10} | 2 | Keyser 2001 |
| BP | 0.8 for DBH < 25",  0.5 for DBH > 25" | {6.0.2} | Ag. Handbook 654 |
| EC | 0.4 for DBH < 25",  0 for DBH > 25" | 1, 0 | Ag. Handbook 654 |
| BT | 0.8 | {6.0.2} | Ag. Handbook 654 |
| PY | 0.4 for DBH < 12",  0 for DBH > 12" | 1, 0 | Ag. Handbook 654 |
| BC | 0.8 for DBH < 25",  0.5 for DBH > 25" | {6.0.2} | Hough 1965  Powell and Tryon 1979 |
| WO | {6.0.4} | {6.0.1} | Sands and Abrams 2009  Westfall 2010  Ag. Handbook 654 |
| BR | 0.8 | 1 | Deitschmann 1965  Perala 1974 |
| CK | 0.7 | 1 | Ag. Handbook 654 |
| PO | {6.0.9} | {6.0.1} | Johnson 1977  Ag. Handbook 654 |
| OK | {6.0.7} | {6.0.1} | See red oak (RO) |
| SO | {6.0.7} | {6.0.1} | Johnson 1975  Ag. Handbook 654 |
| QI | {6.0.7} | {6.0.1} | Johnson 1975  Ag. Handbook 654 |
| WK | 0.7 | 1 | Carey 1992 |
| PN | 0.8 | 1 | Ag. Handbook 654 |
| CO | {6.0.6} | 1 | Sands and Abrams 2009  Westfall 2010  Ag. Handbook 654 |
| SW | 90% of Eq. {6.0.1} predictions | 1 | Ag. Handbook 654 |
| SN | {6.0.6} | 1 | Sands and Abrams 2009  Westfall 2010  Ag. Handbook 654 |
| RO | {6.0.7} | {6.0.1} | Johnson 1975  Ag. Handbook 654 |
| SK | 0.8 for DBH < 10",  0.5 for DBH > 10" | {6.0.1} | Ag. Handbook 654 |
| BO | {6.0.5} | 1 | Sands and Abrams 2009  Westfall 2010  Ag. Handbook 654 |
| CB | {6.0.7} | {6.0.1} | Johnson 1975  Ag. Handbook 654 |
| BU | 0.4 for DBH < 8",  0 for DBH > 8" | 1, 0 | Ag. Handbook 654 |
| YY | 0.4 for DBH < 8",  0 for DBH > 8" | 1, 0 | Ag. Handbook 654 |
| WR | 0.5 | 1 | Gucker 2012 |
| HK | 0.4 for DBH < 8",  0 for DBH > 8" | 1, 0 | Ag. Handbook 654 |
| PS | 0.7 | 1 | Ag. Handbook 654 |
| HY | 0.5 | 1 | Coladonato 1991  Ag. Handbook 654 |
| BN | 0.3 for DBH < 8",  0 for DBH > 8" | 1, 0 | Ag. Handbook 654 |
| WN | 0.8 for DBH < 8",  0.5 for DBH > 8" | 1 | Schlesinger 1977  Schlesinger 1989  Coladonato 1991 |
| OO | 0.8 | 1 | Carey 1994-1 |
| MG | {6.0.8} | 1 | Keyser and Loftis 2015 |
| MV | 0.8 | {6.0.2} | Jones et al. 2000 |
| AP | 0.5 | 1 | See American holly (HY) |
| WT | 0.9 | 1 | Hook and DeBell 1970  Ag. Handbook 654 |
| BG | 0.9 | 1 | Coladonato 1992 |
| SD | 0.9 | {6.0.1} | Ag. Handbook 654 |
| PW | 0.8 | {6.0.2} | Tang et al. 1980 |
| SY | 0.7 | 1 | Steinbeck et al. 1972  Sullivan 1994 |
| WL | 0.8 for DBH < 10",  0.5 for DBH > 10" | 1 | Ag. Handbook 654 |
| BK | 0.9 | {6.0.1} | Ag. Handbook 654 |
| BL | 0.9 | 1 | Ag. Handbook 654 |
| SS | 0.8 | {6.0.2} | Ag. Handbook 654 |
| BW | 0.8 | {6.0.2} | Ag. Handbook 654 |
| WB | 0.8 | {6.0.2} | Ag. Handbook 654 |
| EL | 0.7 | 1 | Ag. Handbook 654 |
| AE | 0.7 | 1 | Ag. Handbook 654 |
| RL | 0.7 | 1 | Ag. Handbook 654 |
| BE | 0.6 for DBH < 15",  0.3 for DBH > 15" | 1 | Maeglin and Ohman 1973  Eyre 1980 |
| ST | 0.3 | 1 | Hibbs and Burnell 1979  Coladonato 1993 |
| AI | 0.8 | [B] | Swingle 1916  Fryer 2010 |
| SE | 0.7 | [A] | Snyder 1992 |
| AH | No info available—default to 0.7 | 1 | n/a |
| DW | 0.7 for DBH < 8",  0.9 for DBH > 8" | [A] | Ag. Handbook 654 |
| HT | No info available—default to 0.7 | 1 | n/a |
| HH | 0.8 | 1 | Ag. Handbook 654 |
| PL | 0.7 | 1 | See pin cherry (PR) |
| PR | 0.7 | 1 | Ag. Handbook 654 |

\*Many of the sources stemmed from those referenced in Agricultural Handbook 654, Silvics of North America. For the sake of being concise, only “Ag. Handbook 654” was listed when multiple publications were referenced from that handbook. When necessary, species-specific probabilities were based upon similarities with other species, either due to documented similarities or an assumed similarity. In the latter cases, assumptions were necessary due to a lack of previous research findings for these species.

Regeneration of seedlings must be specified by the user with the partial establishment model by using the PLANT or NATURAL keywords. Height of the seedlings is estimated in two steps. First, the height is estimated when a tree is 5 years old (or the end of the cycle – whichever comes first) by using the small-tree height growth equations found in section 4.6.1. Users may override this value by entering a height in field 6 of the PLANT or NATURAL keyword; however the height entered in field 6 is not subject to minimum height restrictions and seedlings as small as 0.05 feet may be established. The second step also uses the equations in section 4.6.1, which grow the trees in height from the point five years after establishment to the end of the cycle.

Seedlings and sprouts are passed to the main FVS model at the end of the growth cycle in which regeneration is established. Unless noted above, seedlings being passed are subject to minimum and maximum height constraints and a minimum budwidth constraint shown in table 6.0.1. After seedling height is estimated, diameter growth is estimated using equations described in section 4.6.2. Crown ratios on newly established trees are estimated as described in section 4.3.1.

Regenerated trees and sprouts can be identified in the treelist output file with tree identification numbers beginning with the letters “ES”.

# 7.0 Volume

Volume is calculated for four merchantability standards: total stem cubic feet, merchantable stem cubic feet, sawlog stem cubic feet, and sawlog stem board feet (International ¼-inch). Volume estimation is based on methods contained in the National Volume Estimator Library maintained by the Forest Products Measurements group in the Forest Management Service Center (Volume Estimator Library Equations 2009). The default merchantability standards for the NE variant are shown in table 7.0.1.

Volume computation methods used by the Forest Inventory and Analysis (FIA) program can be requested with the FIAVBC keyword. This keyword encompasses the National Scale Volume and Biomass estimators (NSVB; Westfall et al. 2024) and regional equations used for woodland species (Burrill et al. 2024). More information about the FIAVBC keyword and required input variables can be found in the Essential FVS Guide (Dixon 2002).

**Table 7.0.1 Volume merchantability standards for the NE variant.**

|  |  |  |
| --- | --- | --- |
| **Pulpwood Volume Specifications:** | | |
| Minimum DBH / Top Diameter | Hardwoods | Softwoods |
| 919 – Allegheny | 6.0 / 5.0 inches | 5.0 / 4.0 inches |
| 920 – Green Mountain-Finger Lakes | 8.0 / 4.0 inches | 5.0 / 4.0 inches |
| 921 – Monongahela | 5.0 / 4.0 inches | 5.0 / 4.0 inches |
| 914 – Wayne, 911 – Wayne-Hoosier | 6.0 / 4.0 inches | 5.0 / 4.0 inches |
| 922 – White Mountain | 5.0 / 4.0 inches | 5.0 / 4.0 inches |
| Stump Height | 0.5 feet | 0.5 feet |
| **Sawtimber Volume Specifications:** | | |
| Minimum DBH / Top Diameter | Hardwoods | Softwoods |
| All location codes | 11.0 / 9.6 inches | 9.0 / 7.6 inches |
| Stump Height | 1.0 foot | 1.0 foot |

For both cubic and board foot prediction, Clark’s profile models (Clark et al. 1991) are used for all species and all location codes in the NE variant. Equation number is 900CLKE\*\*\*, where \*\*\* signifies the three-digit FIA species code.

# 8.0 Fire and Fuels Extension (FFE-FVS)

The Fire and Fuels Extension to the Forest Vegetation Simulator (FFE-FVS) (Reinhardt and Crookston 2003) integrates FVS with models of fire behavior, fire effects, and fuel and snag dynamics. This allows users to simulate various management scenarios and compare their effect on potential fire hazard, surface fuel loading, snag levels, and stored carbon over time. Users can also simulate prescribed burns and wildfires and get estimates of the associated fire effects such as tree mortality, fuel consumption, and smoke production, as well as see their effect on future stand characteristics. FFE-FVS, like FVS, is run on individual stands, but it can be used to provide estimates of stand characteristics such as canopy base height and canopy bulk density when needed for landscape-level fire models.

For more information on FFE-FVS and how it is calibrated for the NE variant, refer to the updated FFE-FVS model documentation (Rebain, comp. 2010) available on the FVS website.

|  |
| --- |
|  |

# 9.0 Insect and Disease Extensions

FVS Insect and Disease models have been developed through the participation and contribution of various organizations led by Forest Health Protection. The models are maintained by the Forest Management Service Center and regional Forest Health Protection specialists. There are no insect and disease models currently available for the NE variant. However, FVS addfiles that simulate the effects of known agents within the NE variant may be found in chapter 8 of the Essential FVS Users Guide (Dixon 2002).

# 10.0 Literature Cited

Arney, J.D. 1985. A modeling strategy for the growth projection of managed stands. Canadian Journal of Forest Research 15(3):511-518.

Bechtold, William A. 2003. Crown-diameter prediction models for 87 species of stand-grown trees in the eastern united states. Sjaf. 27(4):269-278.

Burns, R. M., & Honkala, B. H. 1990. Silvics of North America: 1. Conifers; 2. Hardwoods Agriculture Handbook 654. US Department of Agriculture, Forest Service, Washington, DC.

Burrill, Elizabeth A.; DiTommaso, Andrea M.; Turner, Jeffery A.; Pugh, Scott A.; Christensen, Glenn; Kralicek, Karin M.; Perry, Carol J.; Lepine, Lucie C.; Walker, David M.; Conkling, Barbara L. 2024. The Forest Inventory and Analysis Database, FIADB user guides, volume: database description (version 9.3), nationwide forest inventory (NFI). U.S. Department of Agriculture, Forest Service. 1026 p. [Online].

Bragg, Don C. 2001. A local basal area adjustment for crown width prediction. Njaf. 18(1):22-28.

Bjorkbom, John C. 1972. Stand changes in the first 10 years after seedbed preparation for paper birch. USDA Forest Service, Research Paper NE-238. Northeastern Forest Experiment Station, Upper Darby, PA. 10 p.

Carey, Jennifer H. 1992. Quercus nigra. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Carey, Jennifer H. 1994. Maclura pomifera. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Carmean, Willard H.; Hahn, Jerold T.; Jacobs, Rodney D. 1989. Site Index Curves for Forest Tree Species in the Eastern United States. Gen. Tech. Rep. NC-128. St. Paul, MN: U.S. Department of Agriculture, Forest Service, North Central Forest Experiment Station. 142 p.

Clark, Alexander, Ray A. Souter, and Bryce E. Schlaegel. 1991. Stem Profile Equations for Southern Tree Species. Southeastern Forest Experiment Station Research Paper SE-282.

Coladonato, Milo. 1991. Ilex opaca. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Coladonato, Milo. 1991. Juglans nigra. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Coladonato, Milo. 1992. Betula populifolia. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Coladonato, Milo. 1992. Liquidambar styraciflua. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory.

Coladonato, Milo. 1992. Nyssa sylvatica. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory.

Coladonato, Milo. 1993. Acer pensylvanicum. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory.

Cole, D. M.; Stage, A. R. 1972. Estimating future diameters of lodgepole pine. Res. Pap. INT-131. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 20p.

Curtis, John T. 1959. The vegetation of Wisconsin. Madison, WI: The University of Wisconsin Press. 657 p.

Curtis, Robert O. 1967. Height-diameter and height-diameter-age equations for second-growth Douglas-fir. Forest Science 13(4):365-375.

Deitschmann, Glenn H. 1965. Bur oak (Quercus macrocarpa Michx.). In Silvics of forest trees of the United States. p. 563-568. H. A. Fowells, comp. U.S. Department of Agriculture, Agriculture Handbook 271. Washington, DC.

Dixon, Gary E. comp. 2002 (revised frequently). Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U.S. Department of Agriculture, Forest Service, Forest Management Service Center.

Ek, Alan. 1974. Dimensional relationships of forest and open grown trees in Wisconsin. Univ. Of Wisconsin.

Eyre, F. H., ed. 1980. Forest cover types of the United States and Canada. Washington, DC: Society of American Foresters. 148 p.

Fryer, Janet L. 2010. Ailanthus altissima. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Gucker, Corey. 2012. Betula occidentalis. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Hibbs, David E., and Burnell C. Fischer. 1979. Sexual and vegetative reproduction of striped maple (Acer pensylvanicum L.). Bulletin of the Torrey Botanical Club 106:222-227.

Hilt, Donald E. 1985. OAKSIM: An individual-tree growth and yield simulator for managed, even-aged, upland oak stands. Res. Pap. NE-562. U. S. Department of Agriculture, Forest Service, Northeast Experimental Station. 21p.

Hilt, Donald E.; Teck, Richard M. 1989. NE-TWIGS: An individual tree growth and yield projection system for the Northeastern United States. The COMPILER. Vol 7, No 2, pp10-16.

Holdaway, Margaret R. 1986. Modeling Tree Crown Ratio. The Forestry Chronicle. 62:451-455.

Hook, D. D., and D. S. DeBell. 1970. Factors influencing stump sprouting of swamp and water tupelo seedlings. USDA Forest Service, Research Paper SE-57. Southeastern Forest Experiment Station, Asheville, NC. 9 p.

Hough, A.F. 1935. Relative Height Growth of Allegheny Hardwoods. Tech. Note 6. Philadelphia, PA: U.S. Department of Agriculture, Forest Service, Allegheny Forest Experiment Station. 2p.

Hough, Ashbel F. 1965. Black cherry (Prunus serotina Ehrh.). In Silvics of forest trees of the United States. p. 539-545. H. A. Fowells, comp. U.S. Department of Agriculture, Agriculture Handbook 271. Washington, DC.

Hutnik, Russell J., and Frank E. Cunningham. 1965. Paper birch (Betula papyrifera Marsh.). In Silvics of forest trees of the United States. p. 93-98. H. A. Fowells, comp. U.S. Department of Agriculture, Agriculture Handbook 271. Washington, DC.

Johnson, Robert L. 1975. Natural regeneration and development of Nuttall oak and associated species. USDA Forest Service, Research Paper SO-104. Southern Forest Experiment Station, New Orleans, LA. 12 p.

Johnson, Paul S. 1977. Predicting oak stump sprouting and sprout development in the Missouri Ozarks. USDA Forest Service, Research Paper NC-149. North Central Forest Experiment Station, St. Paul, MN. 11 p.

Keyser, C.E. 2001. Quaking Aspen Sprouting in Western FVS Variants: A New Approach. Unpublished Manuscript.

Keyser, T. L., & Loftis, D. L. 2015. Stump sprouting of 19 upland hardwood species 1 year following initiation of a shelterwood with reserves silvicultural system in the southern Appalachian Mountains, USA. New Forests, 46(3), 449-464.

Krajicek, J.; Brinkman, K.; Gingrich, S. 1961. Crown competition – a measure of density. For. Science 7(1):35-42.

Lees, J. C.; West, R. C. 1988. A strategy for growing black ash in the maritime provinces. Technical Note No. 201. Fredericton, NB: Canadian Forestry Service - Maritimes. 4 p.

MacDonald, J. E., & Powell, G. R. 1983. Relationships between stump sprouting and parent-tree diameter in sugar maple in the 1st year following clear-cutting. Canadian Journal of Forest Research, 13(3), 390-394.

Maeglin, R. R., and L. F. Ohmann. 1973. Boxelder (Acer negundo): a review and commentary. Bulletin of the Torrey Botanical Club 100:357-363.

Martin, J.A. 1981. Taper and volume equations for selected Appalachian hardwood species. Res. Pap. NE-490. U. S. Department of Agriculture, Forest Service, Northeast Experimental Station. 22p.

Nelson, Thomas C. 1965. Bitternut hickory (Carya cordiformis (Wangenh.) K. Koch). In Silvics of forest trees of the United States. p. 111-114. H. A. Fowells, comp. U.S. Department of Agriculture, Agriculture Handbook 271. Washington, DC. Carya cordiformis

Perala, Donald A. 1974. Growth and survival of northern hardwood sprouts after burning. USDA Forest Service, Research Note NC-176. North Central Forest Experiment Station, St. Paul, MN. 4 p.

Powell, Douglas S., and E. H. Tryon. 1979. Sprouting ability of advance growth in undisturbed stands. Canadian Journal of Forest Research 9(1):116-120.

Prager, U. E., and F. B. Goldsmith. 1977. Stump sprout formation by red maple (Acer rubrum L.) in Nova Scotia. p.3-99. In Proceedings of the Twenty-eighth Meeting of the Nova Scotian Institute of Science. Dalhousie University, Department of Biology, Halifax.

Rebain, Stephanie A. comp. 2010 (revised frequently). The Fire and Fuels Extension to the Forest Vegetation Simulator: Updated Model Documentation. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 379 p.

Reineke, L. H. 1933. Perfecting a stand density index for even aged forests. J. Agric. Res. 46:627-638.

Reinhardt, Elizabeth; Crookston, Nicholas L. (Technical Editors). 2003. The Fire and Fuels Extension to the Forest Vegetation Simulator. Gen. Tech. Rep. RMRS-GTR-116. Ogden, UT: U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station. 209 p.

Sands, B. A., & Abrams, M. D. (2009). Field Note: Effects of Stump Diameter on Sprout Number and Size for Three Oak Species in a Pennsylvania Clearcut. Northern Journal of Applied Forestry, 26(3), 122-125.

Schlesinger, R. C., & Funk, D. T. 1977. Manager's handbook for black walnut. USDA Forest Service General Technical Report, North Central Forest Experiment Station, (NC-38).

Schlesinger, Richard C. 1989. Estimating Black Walnut Plantation Growth and Yield. In: Clark, F. Bryan, tech. ed.; Hutchinson, Jay G., ed. Central Hardwood Notes. St. Paul, MN: U.S. Department of Agriculture, Forest Service, North Central Forest Experiment Station.: Note 5.07.

Smith, w.r., r.m. Farrar, jr, p.a. Murphy, j.l. Yeiser, r.s. Meldahl,and j.s. Kush. 1992. Crown and basal area relationships of open-grown southern pines for modeling competition and growth.

Snyder, S. A. 1992. Amelanchier arborea. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Solomon, Dale S., and Barton M. Blum. 1967. Stump sprouting of four northern hardwoods. USDA Forest Service Research Paper NE-59. Northeastern Forest Experiment Station, Upper Darby, PA. 13 p.

Stage, A. R. 1973. Prognosis Model for stand development. Res. Paper INT-137. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 32p.

Steinbeck, K., R. G. McAlpine, and J. T. May. 1972. Short rotation culture of sycamore: a status report. Journal of Forestry 70(4):210-213.

Sullivan, Janet. 1993. Betula nigra. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Swingle, W. T. 1916. The early European history and the botanical name of the tree-of-heaven, Ailanthus altissima. Journal of the Washington Academy of Sciences 6:409-498.

Tang, R. C., S. B. Carpenter, R. F. Wittwer, and D. H. Graves. 1980. Paulownia-a crop tree for wood products and reclamation of surface-mined land. Southern Journal of Applied Forestry 4(l):19-24.

Teck, Richard M.; Fuller, Les. 1987. Revised by Don Hilt. 1989. Site index conversion equations for the Northeast. File Rport Number 1: Research Work Unit FS-NE-4153: U. S. Department of Agriculture, Forest Service, Northeastern Forest Experiment Station. 14p.

Teck, Richard M.; Hilt, Donald E. 1991. Individual-Tree Diameter Growth Model for the Northeastern United States. Res. Pap. NE-649. Radnor, PA: U. S. Department of Agriculture, Forest Service, Northeastern Forest Experiment Station. 11p.

Tirmenstein, D. A. 1991. Acer saccharum. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Van Dyck, Michael G.; Smith-Mateja, Erin E., comps. 2000 (revised frequently). Keyword reference guide for the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

Westfall, J. A. (2010). New models for predicting diameter at breast height from stump dimensions. Northern journal of applied forestry, 27(1), 21-27.

Westfall, James A.; Coulston, John W.; Gray, Andrew N.; Shaw, John D.; Radtke, Philip J.; Walker, David M.; Weiskittel, Aaron R.; MacFarlane, David W.; Affleck, David L.R.; Zhao, Dehai; Temesgen, Hailemariam; Poudel, Krishna P.; Frank, Jereme M.; Prisley, Stephen P.; Wang, Yingfang; Sánchez Meador, Andrew J.; Auty, David; Domke, Grant M. 2024. A national-scale tree volume, biomass, and carbon modeling system for the United States. Gen. Tech. Rep. WO-104. Washington, DC: U.S. Department of Agriculture, Forest Service. 37 p.

Wykoff, W. R. 1990. A basal area increment model for individual conifers in the northern Rocky Mountains. For. Science 36(4): 1077-1104.

Wykoff, W.R.; Crookston, N.L.; Stage, A.R. 1982. User’s guide to the Stand Prognosis Model. Gen. Tech. Rep. INT-133. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 112p.

# 11.0 Appendices

There are no appendices for the NE variant.

The U.S. Department of Agriculture (USDA) prohibits discrimination in all its programs and activities on the basis of race, color, national origin, sex, religion, age, disability, political beliefs, sexual orientation, or marital or family status. (Not all prohibited bases apply to all programs.) Persons with disabilities who require alternative means for communication of program information (Braille, large print, audiotape, etc.) should contact USDA’s TARGET Center at (202) 720-2600 (voice and TDD).

To file a complaint of discrimination, write USDA, Director, Office of Civil Rights, Room 326-W, Whitten Building, 1400 Independence Avenue, SW, Washington, DC 20250-9410 or call (202) 720-5964 (voice or TDD). USDA is an equal opportunity provider and employer.